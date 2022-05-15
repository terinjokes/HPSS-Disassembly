; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0bf", ROMX[$4000], BANK[$bf]

    cp a                                          ; $4000: $bf
    ret nz                                        ; $4001: $c0

    ld d, $e2                                     ; $4002: $16 $e2
    inc c                                         ; $4004: $0c
    ld d, [hl]                                    ; $4005: $56
    rst $38                                       ; $4006: $ff
    ld bc, $1860                                  ; $4007: $01 $60 $18
    ld [bc], a                                    ; $400a: $02
    ld h, b                                       ; $400b: $60
    nop                                           ; $400c: $00
    ld [bc], a                                    ; $400d: $02
    ld l, b                                       ; $400e: $68
    ld bc, $0130                                  ; $400f: $01 $30 $01
    add b                                         ; $4012: $80
    ld bc, $0030                                  ; $4013: $01 $30 $00
    nop                                           ; $4016: $00
    ld a, e                                       ; $4017: $7b
    ld a, e                                       ; $4018: $7b
    db $ed                                        ; $4019: $ed
    rst $38                                       ; $401a: $ff
    rst $30                                       ; $401b: $f7
    inc b                                         ; $401c: $04
    rst $38                                       ; $401d: $ff
    ld a, a                                       ; $401e: $7f
    ei                                            ; $401f: $fb
    cp a                                          ; $4020: $bf
    db $ed                                        ; $4021: $ed
    jr nz, jr_0bf_405c                            ; $4022: $20 $38

    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    ld [$0303], sp                                ; $4026: $08 $03 $03
    rlca                                          ; $4029: $07
    inc b                                         ; $402a: $04
    db $10                                        ; $402b: $10
    ld c, b                                       ; $402c: $48
    ldh [$e0], a                                  ; $402d: $e0 $e0
    ldh a, [rSCX]                                 ; $402f: $f0 $43
    ret nc                                        ; $4031: $d0

    ld b, b                                       ; $4032: $40
    ld c, b                                       ; $4033: $48
    inc bc                                        ; $4034: $03
    ld [bc], a                                    ; $4035: $02
    rlca                                          ; $4036: $07
    rlca                                          ; $4037: $07
    ld b, b                                       ; $4038: $40
    jr jr_0bf_4087                                ; $4039: $18 $4c

    ld [$d003], sp                                ; $403b: $08 $03 $d0
    ret nc                                        ; $403e: $d0

    ld hl, sp-$58                                 ; $403f: $f8 $a8
    db $fd                                        ; $4041: $fd
    ld [hl], l                                    ; $4042: $75
    ld b, b                                       ; $4043: $40
    ld c, b                                       ; $4044: $48
    ld l, h                                       ; $4045: $6c
    ld [$d001], sp                                ; $4046: $08 $01 $d0
    ldh a, [$f0]                                  ; $4049: $f0 $f0
    ldh a, [$e0]                                  ; $404b: $f0 $e0
    ldh [$c0], a                                  ; $404d: $e0 $c0
    ld bc, $0010                                  ; $404f: $01 $10 $00
    ld [$f5ea], a                                 ; $4052: $ea $ea $f5
    push af                                       ; $4055: $f5
    rst $38                                       ; $4056: $ff
    rst $38                                       ; $4057: $ff
    sbc d                                         ; $4058: $9a
    rst $38                                       ; $4059: $ff
    nop                                           ; $405a: $00
    cp l                                          ; $405b: $bd

jr_0bf_405c:
    rst $38                                       ; $405c: $ff
    db $fd                                        ; $405d: $fd
    rst $38                                       ; $405e: $ff
    sbc d                                         ; $405f: $9a
    sbc a                                         ; $4060: $9f
    sbc d                                         ; $4061: $9a
    sbc a                                         ; $4062: $9f
    ld [$bfba], sp                                ; $4063: $08 $ba $bf
    ld a, d                                       ; $4066: $7a
    ld a, a                                       ; $4067: $7f
    ld h, h                                       ; $4068: $64
    ld [$0507], sp                                ; $4069: $08 $07 $05
    ld [bc], a                                    ; $406c: $02
    db $10                                        ; $406d: $10
    inc bc                                        ; $406e: $03
    ld [bc], a                                    ; $406f: $02
    inc bc                                        ; $4070: $03
    adc d                                         ; $4071: $8a
    jr @+$01                                      ; $4072: $18 $ff

    ldh [rIE], a                                  ; $4074: $e0 $ff
    jp hl                                         ; $4076: $e9


    nop                                           ; $4077: $00
    rst $38                                       ; $4078: $ff
    rst $20                                       ; $4079: $e7
    rst $38                                       ; $407a: $ff
    di                                            ; $407b: $f3
    ld a, a                                       ; $407c: $7f
    rst $38                                       ; $407d: $ff
    ld l, e                                       ; $407e: $6b
    rst $38                                       ; $407f: $ff
    nop                                           ; $4080: $00
    dec e                                         ; $4081: $1d
    rst $38                                       ; $4082: $ff
    sbc e                                         ; $4083: $9b
    rst $38                                       ; $4084: $ff
    adc a                                         ; $4085: $8f
    adc d                                         ; $4086: $8a

jr_0bf_4087:
    rrca                                          ; $4087: $0f
    rrca                                          ; $4088: $0f
    ld [bc], a                                    ; $4089: $02
    rrca                                          ; $408a: $0f
    inc c                                         ; $408b: $0c
    rrca                                          ; $408c: $0f
    ld [$0507], sp                                ; $408d: $08 $07 $05
    ld l, [hl]                                    ; $4090: $6e
    ld [$000a], sp                                ; $4091: $08 $0a $00
    rrca                                          ; $4094: $0f
    ld hl, sp+$28                                 ; $4095: $f8 $28
    ld hl, sp+$78                                 ; $4097: $f8 $78
    ld hl, sp+$18                                 ; $4099: $f8 $18
    ld hl, sp+$00                                 ; $409b: $f8 $00
    ld [$d0f0], sp                                ; $409d: $08 $f0 $d0
    ldh [$a0], a                                  ; $40a0: $e0 $a0
    ldh a, [$f0]                                  ; $40a2: $f0 $f0
    xor b                                         ; $40a4: $a8
    ld d, [hl]                                    ; $40a5: $56
    ld hl, sp+$3e                                 ; $40a6: $f8 $3e
    nop                                           ; $40a8: $00
    rlca                                          ; $40a9: $07
    ld b, d                                       ; $40aa: $42
    nop                                           ; $40ab: $00
    inc b                                         ; $40ac: $04
    ld b, c                                       ; $40ad: $41
    nop                                           ; $40ae: $00
    adc [hl]                                      ; $40af: $8e
    nop                                           ; $40b0: $00
    dec bc                                        ; $40b1: $0b
    nop                                           ; $40b2: $00
    rrca                                          ; $40b3: $0f
    db $fd                                        ; $40b4: $fd
    sbc l                                         ; $40b5: $9d
    db $fc                                        ; $40b6: $fc
    inc c                                         ; $40b7: $0c
    db $fd                                        ; $40b8: $fd
    db $dd                                        ; $40b9: $dd
    db $fd                                        ; $40ba: $fd
    nop                                           ; $40bb: $00
    dec b                                         ; $40bc: $05
    ld sp, hl                                     ; $40bd: $f9
    adc c                                         ; $40be: $89
    ld sp, hl                                     ; $40bf: $f9
    ld a, c                                       ; $40c0: $79
    db $fc                                        ; $40c1: $fc
    inc e                                         ; $40c2: $1c
    ei                                            ; $40c3: $fb
    add b                                         ; $40c4: $80
    rra                                           ; $40c5: $1f
    ld bc, $8080                                  ; $40c6: $01 $80 $80
    sbc b                                         ; $40c9: $98
    sbc l                                         ; $40ca: $9d
    add b                                         ; $40cb: $80
    cp d                                          ; $40cc: $ba
    and h                                         ; $40cd: $a4
    nop                                           ; $40ce: $00
    cp l                                          ; $40cf: $bd
    add b                                         ; $40d0: $80
    cp [hl]                                       ; $40d1: $be
    add d                                         ; $40d2: $82
    cp a                                          ; $40d3: $bf
    add b                                         ; $40d4: $80
    cp [hl]                                       ; $40d5: $be
    rst $38                                       ; $40d6: $ff
    add b                                         ; $40d7: $80
    ld [bc], a                                    ; $40d8: $02
    ld bc, $5703                                  ; $40d9: $01 $03 $57
    nop                                           ; $40dc: $00
    xor e                                         ; $40dd: $ab
    inc b                                         ; $40de: $04
    ld d, a                                       ; $40df: $57
    nop                                           ; $40e0: $00
    inc b                                         ; $40e1: $04
    xor a                                         ; $40e2: $af
    ld [$005f], sp                                ; $40e3: $08 $5f $00
    xor a                                         ; $40e6: $af
    db $10                                        ; $40e7: $10
    ld [$5500], sp                                ; $40e8: $08 $00 $55
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    xor d                                         ; $40ed: $aa
    add b                                         ; $40ee: $80
    push de                                       ; $40ef: $d5
    nop                                           ; $40f0: $00
    xor d                                         ; $40f1: $aa
    ld b, c                                       ; $40f2: $41
    push de                                       ; $40f3: $d5
    jr nz, jr_0bf_40f6                            ; $40f4: $20 $00

Jump_0bf_40f6:
jr_0bf_40f6:
    db $eb                                        ; $40f6: $eb
    jr nz, @+$0a                                  ; $40f7: $20 $08

    ld h, b                                       ; $40f9: $60
    ld [hl], l                                    ; $40fa: $75
    nop                                           ; $40fb: $00
    ld [$0190], a                                 ; $40fc: $ea $90 $01
    push af                                       ; $40ff: $f5
    ld bc, $09fb                                  ; $4100: $01 $fb $09
    db $fd                                        ; $4103: $fd
    nop                                           ; $4104: $00
    ld a, [$0830]                                 ; $4105: $fa $30 $08
    ld [bc], a                                    ; $4108: $02
    inc c                                         ; $4109: $0c
    ld e, l                                       ; $410a: $5d
    nop                                           ; $410b: $00
    xor [hl]                                      ; $410c: $ae
    ld [de], a                                    ; $410d: $12
    ld e, a                                       ; $410e: $5f
    ld l, d                                       ; $410f: $6a
    ld bc, $20a0                                  ; $4110: $01 $a0 $20
    ld a, [$40d0]                                 ; $4113: $fa $d0 $40
    ld [$ff80], sp                                ; $4116: $08 $80 $ff
    add b                                         ; $4119: $80
    rst $38                                       ; $411a: $ff
    ret nz                                        ; $411b: $c0

    add h                                         ; $411c: $84
    ld [bc], a                                    ; $411d: $02
    nop                                           ; $411e: $00
    ldh [rIE], a                                  ; $411f: $e0 $ff
    ldh [$3f], a                                  ; $4121: $e0 $3f
    db $10                                        ; $4123: $10

jr_0bf_4124:
    jr jr_0bf_4126                                ; $4124: $18 $00

jr_0bf_4126:
    rst $38                                       ; $4126: $ff
    ld e, b                                       ; $4127: $58
    ld bc, $0002                                  ; $4128: $01 $02 $00
    inc bc                                        ; $412b: $03
    ld b, $00                                     ; $412c: $06 $00
    jr nz, jr_0bf_4168                            ; $412e: $20 $38

    ld b, b                                       ; $4130: $40
    rst $38                                       ; $4131: $ff
    ld h, b                                       ; $4132: $60
    add b                                         ; $4133: $80
    inc b                                         ; $4134: $04
    nop                                           ; $4135: $00
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    ld bc, $8101                                  ; $4138: $01 $01 $81
    db $fd                                        ; $413b: $fd
    add c                                         ; $413c: $81
    inc bc                                        ; $413d: $03
    db $fd                                        ; $413e: $fd
    pop bc                                        ; $413f: $c1
    db $fd                                        ; $4140: $fd
    ld b, c                                       ; $4141: $41
    db $fd                                        ; $4142: $fd
    ld h, c                                       ; $4143: $61
    inc b                                         ; $4144: $04
    nop                                           ; $4145: $00
    add b                                         ; $4146: $80
    ld c, c                                       ; $4147: $49
    nop                                           ; $4148: $00
    xor e                                         ; $4149: $ab
    xor e                                         ; $414a: $ab
    ld d, [hl]                                    ; $414b: $56
    ld d, a                                       ; $414c: $57
    ld e, l                                       ; $414d: $5d
    ld a, a                                       ; $414e: $7f
    cp l                                          ; $414f: $bd
    rst $38                                       ; $4150: $ff
    inc d                                         ; $4151: $14
    db $dd                                        ; $4152: $dd
    rst $38                                       ; $4153: $ff
    cp a                                          ; $4154: $bf
    rst $00                                       ; $4155: $c7
    ld bc, $82fb                                  ; $4156: $01 $fb $82
    ld bc, $ffff                                  ; $4159: $01 $ff $ff
    nop                                           ; $415c: $00
    rla                                           ; $415d: $17
    rra                                           ; $415e: $1f
    ld d, $1f                                     ; $415f: $16 $1f
    rla                                           ; $4161: $17
    rra                                           ; $4162: $1f
    cpl                                           ; $4163: $2f
    ccf                                           ; $4164: $3f
    nop                                           ; $4165: $00
    ld [hl], $3f                                  ; $4166: $36 $3f

jr_0bf_4168:
    ld a, $2f                                     ; $4168: $3e $2f
    cp [hl]                                       ; $416a: $be
    or a                                          ; $416b: $b7
    ld e, [hl]                                    ; $416c: $5e
    ld e, e                                       ; $416d: $5b
    nop                                           ; $416e: $00
    ld [hl], h                                    ; $416f: $74
    db $fc                                        ; $4170: $fc
    or h                                          ; $4171: $b4
    db $fc                                        ; $4172: $fc
    ld [hl], h                                    ; $4173: $74
    db $fc                                        ; $4174: $fc
    ld a, d                                       ; $4175: $7a
    cp $00                                        ; $4176: $fe $00
    or [hl]                                       ; $4178: $b6
    cp $be                                        ; $4179: $fe $be
    ld a, [$f6be]                                 ; $417b: $fa $be $f6
    cp l                                          ; $417e: $bd
    db $fd                                        ; $417f: $fd
    inc b                                         ; $4180: $04
    dec bc                                        ; $4181: $0b
    rrca                                          ; $4182: $0f
    rla                                           ; $4183: $17
    rra                                           ; $4184: $1f
    inc de                                        ; $4185: $13
    ld [hl+], a                                   ; $4186: $22
    nop                                           ; $4187: $00
    ccf                                           ; $4188: $3f
    inc hl                                        ; $4189: $23
    nop                                           ; $418a: $00
    rra                                           ; $418b: $1f
    rla                                           ; $418c: $17
    xor a                                         ; $418d: $af
    xor a                                         ; $418e: $af
    ld d, a                                       ; $418f: $57
    ld d, a                                       ; $4190: $57
    ld e, d                                       ; $4191: $5a
    cp $10                                        ; $4192: $fe $10
    cp l                                          ; $4194: $bd
    rst $38                                       ; $4195: $ff
    ld e, c                                       ; $4196: $59
    ld d, d                                       ; $4197: $52
    ld bc, $fcbf                                  ; $4198: $01 $bf $fc
    cp a                                          ; $419b: $bf
    db $fd                                        ; $419c: $fd
    db $10                                        ; $419d: $10
    ld e, a                                       ; $419e: $5f
    rst $38                                       ; $419f: $ff
    ld e, l                                       ; $41a0: $5d
    ld h, b                                       ; $41a1: $60
    jr nc, jr_0bf_4124                            ; $41a2: $30 $80

    add b                                         ; $41a4: $80
    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    ld a, [bc]                                    ; $41a7: $0a
    xor d                                         ; $41a8: $aa
    xor d                                         ; $41a9: $aa
    ld d, l                                       ; $41aa: $55
    ld d, l                                       ; $41ab: $55
    jr nz, jr_0bf_41b8                            ; $41ac: $20 $0a

    rst $30                                       ; $41ae: $f7
    ld [hl], b                                    ; $41af: $70
    ld bc, $00bb                                  ; $41b0: $01 $bb $00
    rst $38                                       ; $41b3: $ff
    push de                                       ; $41b4: $d5
    rst $38                                       ; $41b5: $ff
    db $eb                                        ; $41b6: $eb
    rst $38                                       ; $41b7: $ff

jr_0bf_41b8:
    call nc, $dfff                                ; $41b8: $d4 $ff $df
    adc b                                         ; $41bb: $88
    ld l, b                                       ; $41bc: $68
    nop                                           ; $41bd: $00
    cp a                                          ; $41be: $bf
    rst $38                                       ; $41bf: $ff
    db $ed                                        ; $41c0: $ed
    ld [$ae00], sp                                ; $41c1: $08 $00 $ae
    rst $38                                       ; $41c4: $ff
    ld d, l                                       ; $41c5: $55
    xor d                                         ; $41c6: $aa
    ld d, $00                                     ; $41c7: $16 $00
    rst $18                                       ; $41c9: $df
    ld a, h                                       ; $41ca: $7c
    db $10                                        ; $41cb: $10
    db $ed                                        ; $41cc: $ed
    ld a, [hl]                                    ; $41cd: $7e
    nop                                           ; $41ce: $00
    or $24                                        ; $41cf: $f6 $24
    nop                                           ; $41d1: $00
    ld d, e                                       ; $41d2: $53
    xor b                                         ; $41d3: $a8
    ld l, $10                                     ; $41d4: $2e $10
    rst $28                                       ; $41d6: $ef
    ld h, $00                                     ; $41d7: $26 $00
    rst $38                                       ; $41d9: $ff
    sub h                                         ; $41da: $94
    nop                                           ; $41db: $00
    ld a, e                                       ; $41dc: $7b
    rst $38                                       ; $41dd: $ff
    xor $0c                                       ; $41de: $ee $0c

Jump_0bf_41e0:
    rst $38                                       ; $41e0: $ff
    add c                                         ; $41e1: $81
    cp a                                          ; $41e2: $bf
    add b                                         ; $41e3: $80
    ld [bc], a                                    ; $41e4: $02
    jr nz, jr_0bf_41f1                            ; $41e5: $20 $0a

    ld [$be82], sp                                ; $41e7: $08 $82 $be
    nop                                           ; $41ea: $00
    db $10                                        ; $41eb: $10
    ld e, a                                       ; $41ec: $5f
    nop                                           ; $41ed: $00
    cp a                                          ; $41ee: $bf
    and b                                         ; $41ef: $a0
    rst $38                                       ; $41f0: $ff

jr_0bf_41f1:
    and b                                         ; $41f1: $a0
    cp a                                          ; $41f2: $bf
    stop                                          ; $41f3: $10 $00
    ld e, a                                       ; $41f5: $5f
    db $10                                        ; $41f6: $10
    inc b                                         ; $41f7: $04
    nop                                           ; $41f8: $00
    ld [$22af], sp                                ; $41f9: $08 $af $22
    rst $30                                       ; $41fc: $f7
    nop                                           ; $41fd: $00

jr_0bf_41fe:
    nop                                           ; $41fe: $00
    db $eb                                        ; $41ff: $eb
    dec d                                         ; $4200: $15
    rst $30                                       ; $4201: $f7
    rla                                           ; $4202: $17
    cp $0f                                        ; $4203: $fe $0f
    db $fd                                        ; $4205: $fd
    ld [bc], a                                    ; $4206: $02
    daa                                           ; $4207: $27
    xor $07                                       ; $4208: $ee $07
    push de                                       ; $420a: $d5
    ld c, a                                       ; $420b: $4f
    ld [$0111], a                                 ; $420c: $ea $11 $01
    ld [$ff00], a                                 ; $420f: $ea $00 $ff
    push bc                                       ; $4212: $c5
    rst $30                                       ; $4213: $f7
    add b                                         ; $4214: $80
    db $e3                                        ; $4215: $e3
    nop                                           ; $4216: $00
    rst $00                                       ; $4217: $c7
    add b                                         ; $4218: $80
    nop                                           ; $4219: $00
    xor a                                         ; $421a: $af
    dec b                                         ; $421b: $05
    sbc $82                                       ; $421c: $de $82
    db $fd                                        ; $421e: $fd
    add b                                         ; $421f: $80
    rst $18                                       ; $4220: $df
    dec b                                         ; $4221: $05

jr_0bf_4222:
    nop                                           ; $4222: $00
    cp a                                          ; $4223: $bf
    dec bc                                        ; $4224: $0b
    rst $38                                       ; $4225: $ff
    sub [hl]                                      ; $4226: $96
    db $fc                                        ; $4227: $fc
    jr c, jr_0bf_4222                             ; $4228: $38 $f8

    ldh a, [rP1]                                  ; $422a: $f0 $00
    inc d                                         ; $422c: $14
    db $10                                        ; $422d: $10
    ld a, b                                       ; $422e: $78
    ld h, b                                       ; $422f: $60
    ldh a, [$3f]                                  ; $4230: $f0 $3f
    db $fc                                        ; $4232: $fc
    ld a, a                                       ; $4233: $7f
    nop                                           ; $4234: $00
    rst $00                                       ; $4235: $c7
    add e                                         ; $4236: $83
    ld sp, hl                                     ; $4237: $f9
    nop                                           ; $4238: $00
    ld a, [hl]                                    ; $4239: $7e
    jr c, @+$41                                   ; $423a: $38 $3f

    ld e, $e0                                     ; $423c: $1e $e0
    add [hl]                                      ; $423e: $86
    ld [de], a                                    ; $423f: $12
    and d                                         ; $4240: $a2
    ld [bc], a                                    ; $4241: $02
    ld d, b                                       ; $4242: $50
    add hl, bc                                    ; $4243: $09
    ld [hl], b                                    ; $4244: $70
    ld a, a                                       ; $4245: $7f
    inc e                                         ; $4246: $1c
    rrca                                          ; $4247: $0f
    ld c, $bd                                     ; $4248: $0e $bd
    ld [bc], a                                    ; $424a: $02
    nop                                           ; $424b: $00
    ret nz                                        ; $424c: $c0

    ld c, $10                                     ; $424d: $0e $10
    ld d, b                                       ; $424f: $50
    add hl, sp                                    ; $4250: $39
    jr nz, @+$2a                                  ; $4251: $20 $28

    ld d, b                                       ; $4253: $50
    add hl, hl                                    ; $4254: $29
    pop bc                                        ; $4255: $c1
    ld c, h                                       ; $4256: $4c
    ld bc, $8110                                  ; $4257: $01 $10 $81
    db $fd                                        ; $425a: $fd
    ld bc, $3002                                  ; $425b: $01 $02 $30
    ld d, a                                       ; $425e: $57
    xor e                                         ; $425f: $ab
    rst $28                                       ; $4260: $ef
    stop                                          ; $4261: $10 $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    jr nz, @-$3c                                  ; $4265: $20 $c2

    inc d                                         ; $4267: $14
    ldh [rLCDC], a                                ; $4268: $e0 $40
    add b                                         ; $426a: $80
    nop                                           ; $426b: $00
    inc b                                         ; $426c: $04
    inc bc                                        ; $426d: $03
    ld bc, $7306                                  ; $426e: $01 $06 $73
    cp $ff                                        ; $4271: $fe $ff
    cp $08                                        ; $4273: $fe $08
    ld c, b                                       ; $4275: $48
    jr nc, jr_0bf_41fe                            ; $4276: $30 $86

    ld a, b                                       ; $4278: $78
    and [hl]                                      ; $4279: $a6
    ld bc, $0200                                  ; $427a: $01 $00 $02
    db $fc                                        ; $427d: $fc
    nop                                           ; $427e: $00
    pop de                                        ; $427f: $d1
    ld l, $5d                                     ; $4280: $2e $5d
    cp a                                          ; $4282: $bf
    rst $38                                       ; $4283: $ff
    rrca                                          ; $4284: $0f
    dec b                                         ; $4285: $05
    daa                                           ; $4286: $27
    nop                                           ; $4287: $00
    add [hl]                                      ; $4288: $86
    ld b, $41                                     ; $4289: $06 $41
    ld a, $a8                                     ; $428b: $3e $a8
    ld d, a                                       ; $428d: $57
    ld b, b                                       ; $428e: $40
    ccf                                           ; $428f: $3f
    nop                                           ; $4290: $00
    ld [$d500], sp                                ; $4291: $08 $00 $d5
    cp $ff                                        ; $4294: $fe $ff
    ld hl, sp+$52                                 ; $4296: $f8 $52
    ld [hl], b                                    ; $4298: $70
    ld bc, $3030                                  ; $4299: $01 $30 $30
    daa                                           ; $429c: $27
    nop                                           ; $429d: $00
    ld c, a                                       ; $429e: $4f
    add b                                         ; $429f: $80
    add a                                         ; $42a0: $87
    ld a, [hl-]                                   ; $42a1: $3a
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00
    ld e, [hl]                                    ; $42a4: $5e
    xor a                                         ; $42a5: $af
    rst $38                                       ; $42a6: $ff
    rrca                                          ; $42a7: $0f
    inc c                                         ; $42a8: $0c
    rlca                                          ; $42a9: $07
    inc bc                                        ; $42aa: $03
    inc bc                                        ; $42ab: $03
    nop                                           ; $42ac: $00
    ldh a, [rSC]                                  ; $42ad: $f0 $02
    ld hl, sp+$00                                 ; $42af: $f8 $00
    pop hl                                        ; $42b1: $e1
    nop                                           ; $42b2: $00
    nop                                           ; $42b3: $00
    ld [$eb00], sp                                ; $42b4: $08 $00 $eb
    cp $fe                                        ; $42b7: $fe $fe
    rst $38                                       ; $42b9: $ff
    and h                                         ; $42ba: $a4
    cp [hl]                                       ; $42bb: $be
    inc e                                         ; $42bc: $1c
    jr jr_0bf_42bf                                ; $42bd: $18 $00

jr_0bf_42bf:
    jr nz, jr_0bf_42c1                            ; $42bf: $20 $00

jr_0bf_42c1:
    add d                                         ; $42c1: $82
    ld a, h                                       ; $42c2: $7c
    ld h, c                                       ; $42c3: $61
    sbc [hl]                                      ; $42c4: $9e
    ld c, b                                       ; $42c5: $48
    jr nc, jr_0bf_42c8                            ; $42c6: $30 $00

jr_0bf_42c8:
    ld d, l                                       ; $42c8: $55
    xor d                                         ; $42c9: $aa
    rst $38                                       ; $42ca: $ff
    nop                                           ; $42cb: $00
    db $10                                        ; $42cc: $10
    rrca                                          ; $42cd: $0f
    ld h, b                                       ; $42ce: $60
    rra                                           ; $42cf: $1f
    nop                                           ; $42d0: $00
    ld [bc], a                                    ; $42d1: $02

jr_0bf_42d2:
    ld bc, $0090                                  ; $42d2: $01 $90 $00
    ld b, b                                       ; $42d5: $40
    ccf                                           ; $42d6: $3f
    sbc b                                         ; $42d7: $98
    ld h, a                                       ; $42d8: $67
    ld bc, $ffa0                                  ; $42d9: $01 $a0 $ff
    inc b                                         ; $42dc: $04
    rst $38                                       ; $42dd: $ff

jr_0bf_42de:
    add hl, bc                                    ; $42de: $09
    rst $38                                       ; $42df: $ff
    jr nz, jr_0bf_42d2                            ; $42e0: $20 $f0

    ld bc, $0810                                  ; $42e2: $01 $10 $08
    rst $38                                       ; $42e5: $ff
    ld [de], a                                    ; $42e6: $12
    ld e, [hl]                                    ; $42e7: $5e
    inc bc                                        ; $42e8: $03
    ld e, a                                       ; $42e9: $5f
    rst $38                                       ; $42ea: $ff
    or a                                          ; $42eb: $b7
    rst $38                                       ; $42ec: $ff
    ld b, b                                       ; $42ed: $40
    ld a, [bc]                                    ; $42ee: $0a
    xor d                                         ; $42ef: $aa
    ld [bc], a                                    ; $42f0: $02
    jr z, @+$01                                   ; $42f1: $28 $ff

    ld d, c                                       ; $42f3: $51
    rst $38                                       ; $42f4: $ff
    xor d                                         ; $42f5: $aa
    rst $38                                       ; $42f6: $ff
    nop                                           ; $42f7: $00
    ld b, h                                       ; $42f8: $44
    rst $38                                       ; $42f9: $ff
    and l                                         ; $42fa: $a5
    rst $38                                       ; $42fb: $ff
    ld c, d                                       ; $42fc: $4a
    rst $38                                       ; $42fd: $ff
    sub l                                         ; $42fe: $95
    rst $38                                       ; $42ff: $ff
    inc b                                         ; $4300: $04
    ld b, d                                       ; $4301: $42
    rst $38                                       ; $4302: $ff
    add h                                         ; $4303: $84
    rst $38                                       ; $4304: $ff
    db $10                                        ; $4305: $10
    inc d                                         ; $4306: $14
    ld [bc], a                                    ; $4307: $02
    ld b, b                                       ; $4308: $40
    rst $38                                       ; $4309: $ff
    ld bc, $ff7c                                  ; $430a: $01 $7c $ff
    ld a, [$54ff]                                 ; $430d: $fa $ff $54
    rst $38                                       ; $4310: $ff
    xor b                                         ; $4311: $a8
    inc l                                         ; $4312: $2c
    nop                                           ; $4313: $00
    db $10                                        ; $4314: $10
    jr nz, @+$01                                  ; $4315: $20 $ff

    ld c, b                                       ; $4317: $48
    db $ec                                        ; $4318: $ec
    ld [$a4bd], sp                                ; $4319: $08 $bd $a4
    cp [hl]                                       ; $431c: $be
    add b                                         ; $431d: $80
    inc b                                         ; $431e: $04
    sbc l                                         ; $431f: $9d
    sbc b                                         ; $4320: $98
    cp d                                          ; $4321: $ba
    add b                                         ; $4322: $80
    sub l                                         ; $4323: $95
    inc b                                         ; $4324: $04
    nop                                           ; $4325: $00
    sbc l                                         ; $4326: $9d
    and h                                         ; $4327: $a4
    nop                                           ; $4328: $00
    cp [hl]                                       ; $4329: $be
    nop                                           ; $432a: $00
    ld d, a                                       ; $432b: $57
    inc b                                         ; $432c: $04
    xor a                                         ; $432d: $af
    nop                                           ; $432e: $00
    ld d, a                                       ; $432f: $57
    inc bc                                        ; $4330: $03
    jr jr_0bf_42de                                ; $4331: $18 $ab

    nop                                           ; $4333: $00
    ld d, l                                       ; $4334: $55
    inc b                                         ; $4335: $04
    nop                                           ; $4336: $00
    inc c                                         ; $4337: $0c
    nop                                           ; $4338: $00
    rrca                                          ; $4339: $0f
    call c, Call_000_009e                         ; $433a: $dc $9e $00
    cp h                                          ; $433d: $bc
    rra                                           ; $433e: $1f
    ld e, b                                       ; $433f: $58
    ld a, $b4                                     ; $4340: $3e $b4
    ld a, a                                       ; $4342: $7f
    ld l, b                                       ; $4343: $68
    ccf                                           ; $4344: $3f
    nop                                           ; $4345: $00
    cp [hl]                                       ; $4346: $be
    rra                                           ; $4347: $1f
    ld e, l                                       ; $4348: $5d
    cp a                                          ; $4349: $bf
    or h                                          ; $434a: $b4
    ld [hl], a                                    ; $434b: $77
    ld b, $af                                     ; $434c: $06 $af
    nop                                           ; $434e: $00
    ld [bc], a                                    ; $434f: $02
    rla                                           ; $4350: $17
    inc bc                                        ; $4351: $03
    and e                                         ; $4352: $a3
    ld bc, $00d7                                  ; $4353: $01 $d7 $00
    rst $38                                       ; $4356: $ff
    nop                                           ; $4357: $00
    xor b                                         ; $4358: $a8
    db $eb                                        ; $4359: $eb
    ld b, b                                       ; $435a: $40
    or l                                          ; $435b: $b5
    nop                                           ; $435c: $00
    jr nc, jr_0bf_437f                            ; $435d: $30 $20

    add b                                         ; $435f: $80
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    ldh a, [rP1]                                  ; $4362: $f0 $00
    ld hl, sp-$10                                 ; $4364: $f8 $f0
    db $fc                                        ; $4366: $fc
    ld d, b                                       ; $4367: $50
    ld a, [$b000]                                 ; $4368: $fa $00 $b0
    db $fc                                        ; $436b: $fc
    jr @+$80                                      ; $436c: $18 $7e

    jr z, jr_0bf_4370                             ; $436e: $28 $00

jr_0bf_4370:
    nop                                           ; $4370: $00
    ld [bc], a                                    ; $4371: $02
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    rrca                                          ; $4374: $0f
    nop                                           ; $4375: $00
    rra                                           ; $4376: $1f
    rrca                                          ; $4377: $0f
    ccf                                           ; $4378: $3f
    rra                                           ; $4379: $1f
    jr jr_0bf_437c                                ; $437a: $18 $00

jr_0bf_437c:
    rra                                           ; $437c: $1f
    jr c, jr_0bf_439e                             ; $437d: $38 $1f

jr_0bf_437f:
    add hl, de                                    ; $437f: $19
    rra                                           ; $4380: $1f
    ld e, h                                       ; $4381: $5c
    rrca                                          ; $4382: $0f
    cp h                                          ; $4383: $bc
    nop                                           ; $4384: $00
    rrca                                          ; $4385: $0f
    db $fc                                        ; $4386: $fc
    rrca                                          ; $4387: $0f
    db $fc                                        ; $4388: $fc
    rst $38                                       ; $4389: $ff
    adc l                                         ; $438a: $8d
    rrca                                          ; $438b: $0f
    db $fd                                        ; $438c: $fd
    and b                                         ; $438d: $a0
    ret nz                                        ; $438e: $c0

    ld bc, $40c1                                  ; $438f: $01 $c1 $40
    ld hl, $ff81                                  ; $4392: $21 $81 $ff
    jp Jump_0bf_46fe                              ; $4395: $c3 $fe $46


    inc b                                         ; $4398: $04
    db $fc                                        ; $4399: $fc
    ld h, [hl]                                    ; $439a: $66
    db $fc                                        ; $439b: $fc
    ld b, h                                       ; $439c: $44
    db $fc                                        ; $439d: $fc

jr_0bf_439e:
    ld h, b                                       ; $439e: $60
    add hl, bc                                    ; $439f: $09
    ldh a, [rIE]                                  ; $43a0: $f0 $ff
    nop                                           ; $43a2: $00
    ld hl, sp-$71                                 ; $43a3: $f8 $8f
    dec a                                         ; $43a5: $3d
    scf                                           ; $43a6: $37
    rra                                           ; $43a7: $1f
    rlca                                          ; $43a8: $07
    ccf                                           ; $43a9: $3f
    rra                                           ; $43aa: $1f
    jr nc, jr_0bf_43cc                            ; $43ab: $30 $1f

    rlca                                          ; $43ad: $07
    ld c, d                                       ; $43ae: $4a
    add hl, bc                                    ; $43af: $09
    and b                                         ; $43b0: $a0
    ld c, d                                       ; $43b1: $4a
    adc d                                         ; $43b2: $8a
    ld [hl], c                                    ; $43b3: $71
    db $e4                                        ; $43b4: $e4
    jr jr_0bf_43b7                                ; $43b5: $18 $00

jr_0bf_43b7:
    ld [$00f1], sp                                ; $43b7: $08 $f1 $00
    ld [bc], a                                    ; $43ba: $02
    db $10                                        ; $43bb: $10
    ldh [rDIV], a                                 ; $43bc: $e0 $04
    ld hl, sp+$28                                 ; $43be: $f8 $28
    ld [bc], a                                    ; $43c0: $02
    db $fc                                        ; $43c1: $fc
    ld [bc], a                                    ; $43c2: $02
    ld [$0000], sp                                ; $43c3: $08 $00 $00

Jump_0bf_43c6:
    ld bc, $1fa0                                  ; $43c6: $01 $a0 $1f
    db $10                                        ; $43c9: $10
    inc b                                         ; $43ca: $04
    rrca                                          ; $43cb: $0f

jr_0bf_43cc:
    ld [bc], a                                    ; $43cc: $02
    ld hl, $0304                                  ; $43cd: $21 $04 $03
    ld h, d                                       ; $43d0: $62
    ld bc, $0650                                  ; $43d1: $01 $50 $06
    nop                                           ; $43d4: $00
    ld bc, $8245                                  ; $43d5: $01 $45 $82
    ld [hl+], a                                   ; $43d8: $22
    pop bc                                        ; $43d9: $c1
    add b                                         ; $43da: $80
    nop                                           ; $43db: $00
    inc b                                         ; $43dc: $04
    nop                                           ; $43dd: $00
    ld hl, sp+$01                                 ; $43de: $f8 $01
    cp $00                                        ; $43e0: $fe $00
    rst $38                                       ; $43e2: $ff
    inc b                                         ; $43e3: $04
    nop                                           ; $43e4: $00
    jr @+$06                                      ; $43e5: $18 $04

    pop hl                                        ; $43e7: $e1
    ld b, h                                       ; $43e8: $44
    cp c                                          ; $43e9: $b9
    ld de, $85e0                                  ; $43ea: $11 $e0 $85
    ld bc, $0004                                  ; $43ed: $01 $04 $00
    ld b, h                                       ; $43f0: $44

jr_0bf_43f1:
    db $10                                        ; $43f1: $10
    ld [hl], l                                    ; $43f2: $75
    ld [bc], a                                    ; $43f3: $02
    ld [bc], a                                    ; $43f4: $02
    ld [$18f0], sp                                ; $43f5: $08 $f0 $18
    ld [$7c83], sp                                ; $43f8: $08 $83 $7c
    nop                                           ; $43fb: $00
    ld [bc], a                                    ; $43fc: $02
    ld bc, $4304                                  ; $43fd: $01 $04 $43
    inc b                                         ; $4400: $04
    inc bc                                        ; $4401: $03
    add hl, bc                                    ; $4402: $09
    nop                                           ; $4403: $00
    inc bc                                        ; $4404: $03
    jr nz, jr_0bf_4407                            ; $4405: $20 $00

jr_0bf_4407:
    sub c                                         ; $4407: $91
    nop                                           ; $4408: $00
    add l                                         ; $4409: $85
    ld [bc], a                                    ; $440a: $02
    ld c, $00                                     ; $440b: $0e $00
    jr nc, jr_0bf_441f                            ; $440d: $30 $10

    nop                                           ; $440f: $00
    ld b, b                                       ; $4410: $40
    ccf                                           ; $4411: $3f
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    jr @-$1e                                      ; $4414: $18 $e0

    and l                                         ; $4416: $a5
    ld e, b                                       ; $4417: $58
    inc hl                                        ; $4418: $23
    inc d                                         ; $4419: $14
    ldh [$82], a                                  ; $441a: $e0 $82
    inc b                                         ; $441c: $04
    inc b                                         ; $441d: $04
    add c                                         ; $441e: $81

jr_0bf_441f:
    jr nz, jr_0bf_445b                            ; $441f: $20 $3a

    dec bc                                        ; $4421: $0b
    and h                                         ; $4422: $a4
    ld c, h                                       ; $4423: $4c
    halt                                          ; $4424: $76
    adc b                                         ; $4425: $88
    ld c, h                                       ; $4426: $4c
    inc hl                                        ; $4427: $23
    cp b                                          ; $4428: $b8
    inc c                                         ; $4429: $0c
    ld d, h                                       ; $442a: $54
    dec bc                                        ; $442b: $0b
    add d                                         ; $442c: $82
    ld [hl], b                                    ; $442d: $70
    ld bc, $4cc4                                  ; $442e: $01 $c4 $4c
    add b                                         ; $4431: $80
    jr jr_0bf_43f1                                ; $4432: $18 $bd

    add d                                         ; $4434: $82
    cp [hl]                                       ; $4435: $be
    adc h                                         ; $4436: $8c
    ld a, [de]                                    ; $4437: $1a
    sub h                                         ; $4438: $94
    ld a, [de]                                    ; $4439: $1a
    nop                                           ; $443a: $00
    ld d, a                                       ; $443b: $57
    ld [$af40], sp                                ; $443c: $08 $40 $af
    adc h                                         ; $443f: $8c
    ld a, [bc]                                    ; $4440: $0a
    add b                                         ; $4441: $80
    rst $18                                       ; $4442: $df
    db $e3                                        ; $4443: $e3
    rst $38                                       ; $4444: $ff
    pop hl                                        ; $4445: $e1
    cp a                                          ; $4446: $bf
    nop                                           ; $4447: $00
    ldh a, [$1f]                                  ; $4448: $f0 $1f
    ld a, a                                       ; $444a: $7f
    ld hl, sp+$7f                                 ; $444b: $f8 $7f
    db $f4                                        ; $444d: $f4
    ccf                                           ; $444e: $3f
    add sp, $08                                   ; $444f: $e8 $08
    ld a, l                                       ; $4451: $7d
    ldh a, [$fb]                                  ; $4452: $f0 $fb
    ldh [$df], a                                  ; $4454: $e0 $df
    ld [bc], a                                    ; $4456: $02
    cp $ff                                        ; $4457: $fe $ff
    db $fd                                        ; $4459: $fd
    ld b, b                                       ; $445a: $40

jr_0bf_445b:
    ld hl, sp-$23                                 ; $445b: $f8 $dd
    inc bc                                        ; $445d: $03
    and e                                         ; $445e: $a3
    nop                                           ; $445f: $00
    halt                                          ; $4460: $76
    inc b                                         ; $4461: $04
    db $fd                                        ; $4462: $fd
    jr z, jr_0bf_4485                             ; $4463: $28 $20

    rst $38                                       ; $4465: $ff
    ld d, b                                       ; $4466: $50
    sbc l                                         ; $4467: $9d
    ld bc, $bf5a                                  ; $4468: $01 $5a $bf
    inc d                                         ; $446b: $14
    cp $0c                                        ; $446c: $fe $0c
    ld b, b                                       ; $446e: $40
    ld a, a                                       ; $446f: $7f
    ld d, h                                       ; $4470: $54
    ld bc, $0357                                  ; $4471: $01 $57 $03
    rst $28                                       ; $4474: $ef
    dec b                                         ; $4475: $05
    rst $38                                       ; $4476: $ff
    ld c, b                                       ; $4477: $48
    nop                                           ; $4478: $00
    cp $f4                                        ; $4479: $fe $f4
    dec de                                        ; $447b: $1b
    ld e, $8f                                     ; $447c: $1e $8f
    rrca                                          ; $447e: $0f
    ld b, b                                       ; $447f: $40
    nop                                           ; $4480: $00
    ld b, b                                       ; $4481: $40
    and b                                         ; $4482: $a0
    daa                                           ; $4483: $27
    dec c                                         ; $4484: $0d

jr_0bf_4485:
    rst $38                                       ; $4485: $ff
    rst $38                                       ; $4486: $ff
    xor a                                         ; $4487: $af
    cp a                                          ; $4488: $bf
    rla                                           ; $4489: $17
    ld hl, $3f00                                  ; $448a: $21 $00 $3f
    ldh a, [rIE]                                  ; $448d: $f0 $ff
    ld [hl], b                                    ; $448f: $70
    ccf                                           ; $4490: $3f
    ld [hl], b                                    ; $4491: $70
    ld a, a                                       ; $4492: $7f
    ldh [$60], a                                  ; $4493: $e0 $60
    ld a, a                                       ; $4495: $7f

jr_0bf_4496:
    sbc $03                                       ; $4496: $de $03
    call nz, $c403                                ; $4498: $c4 $03 $c4
    db $fc                                        ; $449b: $fc
    adc h                                         ; $449c: $8c
    ld hl, sp-$74                                 ; $449d: $f8 $8c

jr_0bf_449f:
    jr nz, @-$06                                  ; $449f: $20 $f8

    ld [$0002], sp                                ; $44a1: $08 $02 $00
    jr jr_0bf_4496                                ; $44a4: $18 $f0

    add hl, de                                    ; $44a6: $19
    ldh a, [rNR12]                                ; $44a7: $f0 $12
    inc b                                         ; $44a9: $04
    ldh a, [$1f]                                  ; $44aa: $f0 $1f
    rrca                                          ; $44ac: $0f
    inc a                                         ; $44ad: $3c
    rrca                                          ; $44ae: $0f
    ld h, h                                       ; $44af: $64
    ld bc, $781f                                  ; $44b0: $01 $1f $78
    ld bc, $f81f                                  ; $44b3: $01 $1f $f8
    rra                                           ; $44b6: $1f
    ld a, b                                       ; $44b7: $78
    ccf                                           ; $44b8: $3f
    ldh a, [$7f]                                  ; $44b9: $f0 $7f
    or b                                          ; $44bb: $b0
    ld [$64f9], sp                                ; $44bc: $08 $f9 $64
    ld c, l                                       ; $44bf: $4d
    or b                                          ; $44c0: $b0
    ld c, b                                       ; $44c1: $48
    jp z, Jump_0bf_5112                           ; $44c2: $ca $12 $51

    ld b, l                                       ; $44c5: $45
    ld [hl], b                                    ; $44c6: $70
    dec a                                         ; $44c7: $3d
    ld bc, $7201                                  ; $44c8: $01 $01 $72
    dec l                                         ; $44cb: $2d
    sub e                                         ; $44cc: $93
    ld l, [hl]                                    ; $44cd: $6e
    ld e, l                                       ; $44ce: $5d
    rrca                                          ; $44cf: $0f
    ld a, [bc]                                    ; $44d0: $0a
    ld l, [hl]                                    ; $44d1: $6e
    ld e, l                                       ; $44d2: $5d
    ld hl, sp+$28                                 ; $44d3: $f8 $28
    ld [bc], a                                    ; $44d5: $02
    dec de                                        ; $44d6: $1b
    inc b                                         ; $44d7: $04
    jr jr_0bf_449f                                ; $44d8: $18 $c5

    ld a, [hl+]                                   ; $44da: $2a
    ld e, c                                       ; $44db: $59
    jp c, $100d                                   ; $44dc: $da $0d $10

    rst $28                                       ; $44df: $ef
    add c                                         ; $44e0: $81
    sbc b                                         ; $44e1: $98
    inc bc                                        ; $44e2: $03
    add e                                         ; $44e3: $83
    sbc h                                         ; $44e4: $9c
    inc bc                                        ; $44e5: $03
    ld [$bda5], sp                                ; $44e6: $08 $a5 $bd
    add c                                         ; $44e9: $81
    cp e                                          ; $44ea: $bb
    add sp, $04                                   ; $44eb: $e8 $04
    xor d                                         ; $44ed: $aa
    ld hl, sp-$71                                 ; $44ee: $f8 $8f
    nop                                           ; $44f0: $00
    db $fc                                        ; $44f1: $fc
    rlca                                          ; $44f2: $07
    cp $87                                        ; $44f3: $fe $87
    cp $43                                        ; $44f5: $fe $43
    rst $38                                       ; $44f7: $ff
    and a                                         ; $44f8: $a7
    nop                                           ; $44f9: $00
    rst $38                                       ; $44fa: $ff
    set 7, a                                      ; $44fb: $cb $ff
    push af                                       ; $44fd: $f5
    ld a, a                                       ; $44fe: $7f
    db $fc                                        ; $44ff: $fc
    ccf                                           ; $4500: $3f
    cp $00                                        ; $4501: $fe $00
    rrca                                          ; $4503: $0f
    rst $28                                       ; $4504: $ef
    ld b, a                                       ; $4505: $47
    rst $10                                       ; $4506: $d7
    inc bc                                        ; $4507: $03
    xor e                                         ; $4508: $ab
    add e                                         ; $4509: $83
    rst $10                                       ; $450a: $d7
    ld b, d                                       ; $450b: $42
    ld bc, $0264                                  ; $450c: $01 $64 $02
    add b                                         ; $450f: $80
    xor d                                         ; $4510: $aa
    rst $38                                       ; $4511: $ff
    push af                                       ; $4512: $f5
    rst $18                                       ; $4513: $df
    inc bc                                        ; $4514: $03
    cp a                                          ; $4515: $bf
    nop                                           ; $4516: $00
    rst $38                                       ; $4517: $ff
    sbc $ff                                       ; $4518: $de $ff
    db $fc                                        ; $451a: $fc
    rst $38                                       ; $451b: $ff
    ld a, [$fcfe]                                 ; $451c: $fa $fe $fc
    nop                                           ; $451f: $00
    ld a, [hl]                                    ; $4520: $7e
    ld hl, sp-$01                                 ; $4521: $f8 $ff
    ld hl, sp-$01                                 ; $4523: $f8 $ff
    sbc l                                         ; $4525: $9d
    rst $18                                       ; $4526: $df
    rlca                                          ; $4527: $07
    db $10                                        ; $4528: $10
    and e                                         ; $4529: $a3
    nop                                           ; $452a: $00
    ld b, b                                       ; $452b: $40
    ld [hl], $1c                                  ; $452c: $36 $1c
    nop                                           ; $452e: $00
    rst $28                                       ; $452f: $ef
    inc bc                                        ; $4530: $03
    rst $38                                       ; $4531: $ff
    nop                                           ; $4532: $00
    ld b, l                                       ; $4533: $45
    db $fd                                        ; $4534: $fd
    xor b                                         ; $4535: $a8
    rst $38                                       ; $4536: $ff
    ldh a, [$7f]                                  ; $4537: $f0 $7f
    ld a, [de]                                    ; $4539: $1a
    rra                                           ; $453a: $1f
    inc b                                         ; $453b: $04
    dec c                                         ; $453c: $0d
    rlca                                          ; $453d: $07
    rlca                                          ; $453e: $07
    inc bc                                        ; $453f: $03
    nop                                           ; $4540: $00
    add sp, $04                                   ; $4541: $e8 $04
    ld a, a                                       ; $4543: $7f
    ldh [$84], a                                  ; $4544: $e0 $84
    ld e, b                                       ; $4546: $58
    ld bc, $1ff9                                  ; $4547: $01 $f9 $1f
    ld sp, hl                                     ; $454a: $f9
    ld c, a                                       ; $454b: $4f
    rrca                                          ; $454c: $0f
    inc b                                         ; $454d: $04
    ld [hl], h                                    ; $454e: $74
    ld sp, $e000                                  ; $454f: $31 $00 $e0
    inc hl                                        ; $4552: $23
    ldh [$e7], a                                  ; $4553: $e0 $e7
    pop bc                                        ; $4555: $c1
    jp $8783                                      ; $4556: $c3 $83 $87


    nop                                           ; $4559: $00
    add e                                         ; $455a: $83
    adc a                                         ; $455b: $8f
    inc bc                                        ; $455c: $03
    rla                                           ; $455d: $17
    inc bc                                        ; $455e: $03
    cpl                                           ; $455f: $2f
    inc bc                                        ; $4560: $03
    ldh [$bf], a                                  ; $4561: $e0 $bf
    ld a, [bc]                                    ; $4563: $0a
    dec d                                         ; $4564: $15
    add b                                         ; $4565: $80
    nop                                           ; $4566: $00
    dec [hl]                                      ; $4567: $35
    inc c                                         ; $4568: $0c
    dec c                                         ; $4569: $0d
    jp nz, $021b                                  ; $456a: $c2 $1b $02

    add hl, de                                    ; $456d: $19
    ld h, [hl]                                    ; $456e: $66
    ld c, [hl]                                    ; $456f: $4e
    ld [hl], d                                    ; $4570: $72
    ld c, $20                                     ; $4571: $0e $20
    cp a                                          ; $4573: $bf
    db $ed                                        ; $4574: $ed
    ld [c], a                                     ; $4575: $e2
    dec l                                         ; $4576: $2d
    rst $38                                       ; $4577: $ff
    rst $38                                       ; $4578: $ff
    ld l, d                                       ; $4579: $6a
    cp $5d                                        ; $457a: $fe $5d
    nop                                           ; $457c: $00
    rst $38                                       ; $457d: $ff
    xor a                                         ; $457e: $af
    xor a                                         ; $457f: $af
    ld a, a                                       ; $4580: $7f
    ld e, h                                       ; $4581: $5c
    rst $38                                       ; $4582: $ff
    sbc b                                         ; $4583: $98
    rst $20                                       ; $4584: $e7
    nop                                           ; $4585: $00
    push hl                                       ; $4586: $e5
    ld e, e                                       ; $4587: $5b
    ld a, d                                       ; $4588: $7a
    ld h, a                                       ; $4589: $67
    ld a, a                                       ; $458a: $7f
    ld [hl-], a                                   ; $458b: $32
    ccf                                           ; $458c: $3f
    rrca                                          ; $458d: $0f
    db $10                                        ; $458e: $10
    rrca                                          ; $458f: $0f
    ld a, [$f77a]                                 ; $4590: $fa $7a $f7
    dec b                                         ; $4593: $05
    inc c                                         ; $4594: $0c
    di                                            ; $4595: $f3
    db $d3                                        ; $4596: $d3
    db $ed                                        ; $4597: $ed
    ld [bc], a                                    ; $4598: $02
    xor a                                         ; $4599: $af
    di                                            ; $459a: $f3
    rst $38                                       ; $459b: $ff
    and [hl]                                      ; $459c: $a6
    cp $78                                        ; $459d: $fe $78
    ldh [$15], a                                  ; $459f: $e0 $15
    add a                                         ; $45a1: $87
    nop                                           ; $45a2: $00
    add h                                         ; $45a3: $84
    rlca                                          ; $45a4: $07
    inc b                                         ; $45a5: $04
    rla                                           ; $45a6: $17
    ld d, $3b                                     ; $45a7: $16 $3b
    ld a, [hl+]                                   ; $45a9: $2a
    ld a, a                                       ; $45aa: $7f
    ld de, $3b4f                                  ; $45ab: $11 $4f $3b
    ccf                                           ; $45ae: $3f
    ldh [rKEY1], a                                ; $45af: $e0 $4d
    rst $38                                       ; $45b1: $ff
    rra                                           ; $45b2: $1f
    ld sp, hl                                     ; $45b3: $f9
    ret nc                                        ; $45b4: $d0

    ld [hl], $00                                  ; $45b5: $36 $00
    add b                                         ; $45b7: $80
    add b                                         ; $45b8: $80
    ret nz                                        ; $45b9: $c0

    ld b, b                                       ; $45ba: $40
    ldh [rNR41], a                                ; $45bb: $e0 $20
    ret nz                                        ; $45bd: $c0

    ret nz                                        ; $45be: $c0

    nop                                           ; $45bf: $00
    ld [$10f7], sp                                ; $45c0: $08 $f7 $10
    rst $28                                       ; $45c3: $ef
    ld b, c                                       ; $45c4: $41
    cp [hl]                                       ; $45c5: $be
    ld a, [bc]                                    ; $45c6: $0a
    push af                                       ; $45c7: $f5
    nop                                           ; $45c8: $00
    inc d                                         ; $45c9: $14
    db $eb                                        ; $45ca: $eb
    ld a, [hl+]                                   ; $45cb: $2a
    push de                                       ; $45cc: $d5
    ld e, l                                       ; $45cd: $5d
    and d                                         ; $45ce: $a2
    cp d                                          ; $45cf: $ba
    ld b, l                                       ; $45d0: $45
    ld [$fe01], sp                                ; $45d1: $08 $01 $fe
    inc hl                                        ; $45d4: $23
    db $dd                                        ; $45d5: $dd
    and [hl]                                      ; $45d6: $a6
    ld [bc], a                                    ; $45d7: $02
    ei                                            ; $45d8: $fb
    ld de, $00ef                                  ; $45d9: $11 $ef $00
    and c                                         ; $45dc: $a1
    ld e, a                                       ; $45dd: $5f
    ld b, l                                       ; $45de: $45
    cp e                                          ; $45df: $bb
    xor c                                         ; $45e0: $a9
    ld d, a                                       ; $45e1: $57
    ld [bc], a                                    ; $45e2: $02
    db $fd                                        ; $45e3: $fd
    add b                                         ; $45e4: $80
    ld [hl], $09                                  ; $45e5: $36 $09
    ld bc, $02fe                                  ; $45e7: $01 $fe $02
    db $fd                                        ; $45ea: $fd
    sub l                                         ; $45eb: $95
    ld l, d                                       ; $45ec: $6a
    ld a, [hl+]                                   ; $45ed: $2a
    nop                                           ; $45ee: $00
    push de                                       ; $45ef: $d5
    ld a, l                                       ; $45f0: $7d
    add d                                         ; $45f1: $82
    jr nz, @-$1f                                  ; $45f2: $20 $df

    inc b                                         ; $45f4: $04
    ei                                            ; $45f5: $fb
    jr z, jr_0bf_45f8                             ; $45f6: $28 $00

jr_0bf_45f8:
    rst $10                                       ; $45f8: $d7
    db $10                                        ; $45f9: $10
    rst $28                                       ; $45fa: $ef
    ld a, [hl+]                                   ; $45fb: $2a
    push de                                       ; $45fc: $d5
    ld d, h                                       ; $45fd: $54
    xor e                                         ; $45fe: $ab
    cp d                                          ; $45ff: $ba
    jr jr_0bf_4647                                ; $4600: $18 $45

    ld e, l                                       ; $4602: $5d
    and d                                         ; $4603: $a2
    inc l                                         ; $4604: $2c
    ld c, [hl]                                    ; $4605: $4e
    db $fc                                        ; $4606: $fc
    inc c                                         ; $4607: $0c

jr_0bf_4608:
    ccf                                           ; $4608: $3f
    ld a, [hl]                                    ; $4609: $7e
    ld bc, $ab30                                  ; $460a: $01 $30 $ab
    dec b                                         ; $460d: $05
    inc l                                         ; $460e: $2c
    ld h, $fc                                     ; $460f: $26 $fc
    inc c                                         ; $4611: $0c
    ret nz                                        ; $4612: $c0

    ld d, l                                       ; $4613: $55
    ld h, b                                       ; $4614: $60
    ld l, d                                       ; $4615: $6a
    nop                                           ; $4616: $00
    ldh [$35], a                                  ; $4617: $e0 $35
    or b                                          ; $4619: $b0
    cp d                                          ; $461a: $ba
    pop af                                        ; $461b: $f1
    sub l                                         ; $461c: $95
    ld e, b                                       ; $461d: $58
    db $db                                        ; $461e: $db
    nop                                           ; $461f: $00
    ld e, d                                       ; $4620: $5a
    rst $18                                       ; $4621: $df
    ld e, b                                       ; $4622: $58
    bit 7, [hl]                                   ; $4623: $cb $7e
    ld [hl], h                                    ; $4625: $74
    ld a, $f8                                     ; $4626: $3e $f8
    jr nc, @-$3f                                  ; $4628: $30 $bf

    db $f4                                        ; $462a: $f4
    dec c                                         ; $462b: $0d
    ld [bc], a                                    ; $462c: $02
    inc b                                         ; $462d: $04
    ld [$1ff5], sp                                ; $462e: $08 $f5 $1f
    ld sp, hl                                     ; $4631: $f9
    add b                                         ; $4632: $80
    and b                                         ; $4633: $a0
    ld a, b                                       ; $4634: $78
    inc b                                         ; $4635: $04
    ret nz                                        ; $4636: $c0

    ld [bc], a                                    ; $4637: $02
    ld [$c080], sp                                ; $4638: $08 $80 $c0
    add b                                         ; $463b: $80
    xor b                                         ; $463c: $a8
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    call nc, Call_000_1100                        ; $463f: $d4 $00 $11
    nop                                           ; $4642: $00
    jr jr_0bf_4655                                ; $4643: $18 $10

    dec [hl]                                      ; $4645: $35
    db $10                                        ; $4646: $10

jr_0bf_4647:
    ld [bc], a                                    ; $4647: $02
    ld a, $10                                     ; $4648: $3e $10
    rra                                           ; $464a: $1f
    rrca                                          ; $464b: $0f
    dec bc                                        ; $464c: $0b
    nop                                           ; $464d: $00
    ld l, c                                       ; $464e: $69
    rlca                                          ; $464f: $07
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    ld a, a                                       ; $4652: $7f
    inc e                                         ; $4653: $1c
    cp a                                          ; $4654: $bf

jr_0bf_4655:
    ld c, $5f                                     ; $4655: $0e $5f
    inc b                                         ; $4657: $04
    xor a                                         ; $4658: $af
    ld b, $00                                     ; $4659: $06 $00
    rst $18                                       ; $465b: $df
    inc bc                                        ; $465c: $03
    rst $38                                       ; $465d: $ff
    ld [c], a                                     ; $465e: $e2
    ld a, a                                       ; $465f: $7f
    rra                                           ; $4660: $1f
    dec bc                                        ; $4661: $0b
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    ld e, a                                       ; $4664: $5f
    inc bc                                        ; $4665: $03
    xor a                                         ; $4666: $af
    rlca                                          ; $4667: $07
    cp $07                                        ; $4668: $fe $07
    cp $0f                                        ; $466a: $fe $0f
    nop                                           ; $466c: $00
    rst $38                                       ; $466d: $ff
    ld e, a                                       ; $466e: $5f
    db $fd                                        ; $466f: $fd
    cp a                                          ; $4670: $bf
    ei                                            ; $4671: $fb
    rst $38                                       ; $4672: $ff
    ld sp, hl                                     ; $4673: $f9
    rst $38                                       ; $4674: $ff
    db $10                                        ; $4675: $10
    ld bc, $22fe                                  ; $4676: $01 $fe $22
    or b                                          ; $4679: $b0
    db $10                                        ; $467a: $10
    db $10                                        ; $467b: $10
    rst $28                                       ; $467c: $ef
    and b                                         ; $467d: $a0
    ld e, a                                       ; $467e: $5f
    db $10                                        ; $467f: $10
    ld b, h                                       ; $4680: $44
    cp e                                          ; $4681: $bb
    xor b                                         ; $4682: $a8
    or b                                          ; $4683: $b0
    jr nc, jr_0bf_4608                            ; $4684: $30 $82

    db $fd                                        ; $4686: $fd
    sub l                                         ; $4687: $95
    ld [$aa08], a                                 ; $4688: $ea $08 $aa
    push de                                       ; $468b: $d5
    db $fd                                        ; $468c: $fd
    add d                                         ; $468d: $82
    and b                                         ; $468e: $a0
    ld c, a                                       ; $468f: $4f
    xor e                                         ; $4690: $ab
    xor e                                         ; $4691: $ab
    ld d, l                                       ; $4692: $55
    nop                                           ; $4693: $00
    ld d, l                                       ; $4694: $55
    db $db                                        ; $4695: $db
    rst $38                                       ; $4696: $ff
    ld e, l                                       ; $4697: $5d
    ld a, a                                       ; $4698: $7f
    adc l                                         ; $4699: $8d
    rst $38                                       ; $469a: $ff
    sbc l                                         ; $469b: $9d
    ld d, h                                       ; $469c: $54
    rst $38                                       ; $469d: $ff
    inc [hl]                                      ; $469e: $34
    rlca                                          ; $469f: $07
    rst $28                                       ; $46a0: $ef
    ld b, d                                       ; $46a1: $42
    ld c, $06                                     ; $46a2: $0e $06
    rrca                                          ; $46a4: $0f
    rlca                                          ; $46a5: $07
    rlca                                          ; $46a6: $07
    rlca                                          ; $46a7: $07
    ld b, b                                       ; $46a8: $40
    ld b, $02                                     ; $46a9: $06 $02

jr_0bf_46ab:
    db $10                                        ; $46ab: $10
    xor [hl]                                      ; $46ac: $ae
    xor a                                         ; $46ad: $af
    ld e, l                                       ; $46ae: $5d
    ld e, a                                       ; $46af: $5f
    or b                                          ; $46b0: $b0
    ldh a, [$50]                                  ; $46b1: $f0 $50
    ld [hl], b                                    ; $46b3: $70
    ld [bc], a                                    ; $46b4: $02
    nop                                           ; $46b5: $00
    or b                                          ; $46b6: $b0
    ld [bc], a                                    ; $46b7: $02
    nop                                           ; $46b8: $00
    cp b                                          ; $46b9: $b8
    ld hl, sp-$46                                 ; $46ba: $f8 $ba
    ld a, [$d539]                                 ; $46bc: $fa $39 $d5
    db $fd                                        ; $46bf: $fd
    di                                            ; $46c0: $f3
    inc bc                                        ; $46c1: $03
    xor $04                                       ; $46c2: $ee $04
    ld [bc], a                                    ; $46c4: $02
    ld [$0707], sp                                ; $46c5: $08 $07 $07
    ld b, b                                       ; $46c8: $40
    ld c, $01                                     ; $46c9: $0e $01

jr_0bf_46cb:
    ld e, e                                       ; $46cb: $5b
    rst $38                                       ; $46cc: $ff
    cp l                                          ; $46cd: $bd
    db $fd                                        ; $46ce: $fd
    ld e, l                                       ; $46cf: $5d
    db $fd                                        ; $46d0: $fd
    cp l                                          ; $46d1: $bd
    ld [bc], a                                    ; $46d2: $02
    db $10                                        ; $46d3: $10
    ldh [rLCDC], a                                ; $46d4: $e0 $40
    ld c, [hl]                                    ; $46d6: $4e
    ld hl, sp+$0f                                 ; $46d7: $f8 $0f
    ld b, b                                       ; $46d9: $40
    ld c, $ef                                     ; $46da: $0e $ef

jr_0bf_46dc:
    db $10                                        ; $46dc: $10
    ld a, l                                       ; $46dd: $7d
    add d                                         ; $46de: $82
    ei                                            ; $46df: $fb
    nop                                           ; $46e0: $00
    inc b                                         ; $46e1: $04
    cp a                                          ; $46e2: $bf
    ld b, b                                       ; $46e3: $40
    rst $10                                       ; $46e4: $d7
    jr z, @+$01                                   ; $46e5: $28 $ff

    nop                                           ; $46e7: $00
    ei                                            ; $46e8: $fb
    add b                                         ; $46e9: $80
    adc e                                         ; $46ea: $8b
    inc bc                                        ; $46eb: $03
    db $d3                                        ; $46ec: $d3
    dec l                                         ; $46ed: $2d
    and h                                         ; $46ee: $a4
    ld e, e                                       ; $46ef: $5b
    ld b, c                                       ; $46f0: $41
    cp [hl]                                       ; $46f1: $be
    adc d                                         ; $46f2: $8a
    nop                                           ; $46f3: $00
    ld [hl], l                                    ; $46f4: $75
    ld d, l                                       ; $46f5: $55
    xor e                                         ; $46f6: $ab
    xor d                                         ; $46f7: $aa
    ld d, l                                       ; $46f8: $55
    rst $18                                       ; $46f9: $df
    jr nz, jr_0bf_46ab                            ; $46fa: $20 $af

    nop                                           ; $46fc: $00
    ld d, c                                       ; $46fd: $51

Jump_0bf_46fe:
    ld d, [hl]                                    ; $46fe: $56
    xor c                                         ; $46ff: $a9
    cp l                                          ; $4700: $bd
    ld b, d                                       ; $4701: $42
    ld a, e                                       ; $4702: $7b
    add h                                         ; $4703: $84
    rst $18                                       ; $4704: $df
    ld bc, $ff20                                  ; $4705: $01 $20 $ff
    nop                                           ; $4708: $00
    rst $18                                       ; $4709: $df
    jr nz, jr_0bf_46cb                            ; $470a: $20 $bf

    ld b, b                                       ; $470c: $40
    inc h                                         ; $470d: $24
    ld [$6f04], sp                                ; $470e: $08 $04 $6f
    sub b                                         ; $4711: $90
    cp $01                                        ; $4712: $fe $01
    ld [hl], a                                    ; $4714: $77
    rst $00                                       ; $4715: $c7
    inc bc                                        ; $4716: $03
    cp a                                          ; $4717: $bf
    ld b, b                                       ; $4718: $40
    ld sp, hl                                     ; $4719: $f9
    ld d, $08                                     ; $471a: $16 $08
    inc a                                         ; $471c: $3c
    ld c, [hl]                                    ; $471d: $4e
    db $fc                                        ; $471e: $fc
    inc c                                         ; $471f: $0c
    inc a                                         ; $4720: $3c
    ld c, [hl]                                    ; $4721: $4e
    db $fc                                        ; $4722: $fc
    inc c                                         ; $4723: $0c
    ld e, h                                       ; $4724: $5c
    rst $08                                       ; $4725: $cf
    ld [bc], a                                    ; $4726: $02
    ld [$5e04], sp                                ; $4727: $08 $04 $5e
    rst $08                                       ; $472a: $cf
    ld e, h                                       ; $472b: $5c
    db $dd                                        ; $472c: $dd
    ld e, l                                       ; $472d: $5d
    inc b                                         ; $472e: $04
    nop                                           ; $472f: $00
    call c, Call_000_0a8e                         ; $4730: $dc $8e $0a
    rra                                           ; $4733: $1f
    db $fd                                        ; $4734: $fd
    rrca                                          ; $4735: $0f
    ld sp, hl                                     ; $4736: $f9
    pop bc                                        ; $4737: $c1
    inc b                                         ; $4738: $04
    ld hl, sp+$04                                 ; $4739: $f8 $04
    jr jr_0bf_46dc                                ; $473b: $18 $9f

    inc b                                         ; $473d: $04
    ld hl, sp-$06                                 ; $473e: $f8 $fa
    ld b, b                                       ; $4740: $40
    rst $38                                       ; $4741: $ff
    and b                                         ; $4742: $a0
    or a                                          ; $4743: $b7
    ld b, $7e                                     ; $4744: $06 $7e
    rst $38                                       ; $4746: $ff
    ld [bc], a                                    ; $4747: $02
    cpl                                           ; $4748: $2f
    rst $38                                       ; $4749: $ff
    dec b                                         ; $474a: $05
    rst $38                                       ; $474b: $ff
    nop                                           ; $474c: $00
    xor d                                         ; $474d: $aa
    xor d                                         ; $474e: $aa
    inc bc                                        ; $474f: $03
    ld d, l                                       ; $4750: $55
    inc d                                         ; $4751: $14
    nop                                           ; $4752: $00
    ld a, [$1400]                                 ; $4753: $fa $00 $14
    nop                                           ; $4756: $00
    rst $38                                       ; $4757: $ff
    cp a                                          ; $4758: $bf
    ld b, $02                                     ; $4759: $06 $02
    cp a                                          ; $475b: $bf
    add $53                                       ; $475c: $c6 $53
    add hl, bc                                    ; $475e: $09
    ld d, $00                                     ; $475f: $16 $00
    push de                                       ; $4761: $d5
    nop                                           ; $4762: $00
    rst $38                                       ; $4763: $ff
    sbc d                                         ; $4764: $9a
    rlca                                          ; $4765: $07
    ld b, a                                       ; $4766: $47
    rlca                                          ; $4767: $07
    ld e, a                                       ; $4768: $5f
    inc l                                         ; $4769: $2c
    ld e, a                                       ; $476a: $5f
    rlca                                          ; $476b: $07
    ld h, d                                       ; $476c: $62
    rrca                                          ; $476d: $0f
    ld d, b                                       ; $476e: $50
    ld a, [hl+]                                   ; $476f: $2a
    nop                                           ; $4770: $00
    ld [de], a                                    ; $4771: $12
    nop                                           ; $4772: $00
    cp $ff                                        ; $4773: $fe $ff
    sub b                                         ; $4775: $90
    rst $20                                       ; $4776: $e7
    ld [bc], a                                    ; $4777: $02
    xor a                                         ; $4778: $af
    inc bc                                        ; $4779: $03
    ld a, b                                       ; $477a: $78
    add hl, bc                                    ; $477b: $09
    add e                                         ; $477c: $83
    ld bc, $0040                                  ; $477d: $01 $40 $00
    ld [$01eb], sp                                ; $4780: $08 $eb $01
    rst $38                                       ; $4783: $ff
    ldh [$f0], a                                  ; $4784: $e0 $f0
    inc e                                         ; $4786: $1c
    pop bc                                        ; $4787: $c1
    ld a, l                                       ; $4788: $7d
    pop hl                                        ; $4789: $e1
    nop                                           ; $478a: $00
    db $fd                                        ; $478b: $fd
    ld [hl], c                                    ; $478c: $71
    dec a                                         ; $478d: $3d
    pop af                                        ; $478e: $f1
    db $fd                                        ; $478f: $fd
    db $fd                                        ; $4790: $fd
    ld a, l                                       ; $4791: $7d
    jp nc, $d0e5                                  ; $4792: $d2 $e5 $d0

    jr z, jr_0bf_47c4                             ; $4795: $28 $2d

    rlca                                          ; $4797: $07
    ret nc                                        ; $4798: $d0

    nop                                           ; $4799: $00
    ld d, b                                       ; $479a: $50
    sub $d0                                       ; $479b: $d6 $d0
    jr c, @-$5e                                   ; $479d: $38 $a0

    ret nc                                        ; $479f: $d0

    ld [$5608], sp                                ; $47a0: $08 $08 $56
    xor e                                         ; $47a3: $ab
    rst $28                                       ; $47a4: $ef
    inc de                                        ; $47a5: $13
    ld h, b                                       ; $47a6: $60
    ld c, [hl]                                    ; $47a7: $4e
    rst $38                                       ; $47a8: $ff
    cp $73                                        ; $47a9: $fe $73
    db $10                                        ; $47ab: $10
    cp $fe                                        ; $47ac: $fe $fe
    cp $60                                        ; $47ae: $fe $60
    ld a, $5f                                     ; $47b0: $3e $5f
    xor a                                         ; $47b2: $af
    ei                                            ; $47b3: $fb
    ld c, $08                                     ; $47b4: $0e $08
    inc c                                         ; $47b6: $0c
    inc l                                         ; $47b7: $2c
    add b                                         ; $47b8: $80
    nop                                           ; $47b9: $00
    ld h, b                                       ; $47ba: $60
    ld l, $fd                                     ; $47bb: $2e $fd
    ld a, [$07ef]                                 ; $47bd: $fa $ef $07
    jr c, jr_0bf_47fc                             ; $47c0: $38 $3a

    jr jr_0bf_47c4                                ; $47c2: $18 $00

jr_0bf_47c4:
    nop                                           ; $47c4: $00
    ld h, b                                       ; $47c5: $60
    ld l, $b3                                     ; $47c6: $2e $b3
    ld [hl], e                                    ; $47c8: $73
    db $ed                                        ; $47c9: $ed
    inc l                                         ; $47ca: $2c
    add e                                         ; $47cb: $83
    db $e3                                        ; $47cc: $e3
    inc h                                         ; $47cd: $24
    cp a                                          ; $47ce: $bf
    cp a                                          ; $47cf: $bf
    add [hl]                                      ; $47d0: $86
    cp a                                          ; $47d1: $bf
    add d                                         ; $47d2: $82
    jp nz, Jump_0bf_6a13                          ; $47d3: $c2 $13 $6a

    rra                                           ; $47d6: $1f
    ld e, d                                       ; $47d7: $5a
    rst $38                                       ; $47d8: $ff
    ld [$8106], a                                 ; $47d9: $ea $06 $81
    or b                                          ; $47dc: $b0
    dec b                                         ; $47dd: $05
    cp $06                                        ; $47de: $fe $06
    cp $02                                        ; $47e0: $fe $02
    ld [$009f], sp                                ; $47e2: $08 $9f $00
    sbc a                                         ; $47e5: $9f
    cp [hl]                                       ; $47e6: $be
    sbc a                                         ; $47e7: $9f
    cp d                                          ; $47e8: $ba
    rra                                           ; $47e9: $1f
    dec sp                                        ; $47ea: $3b
    rra                                           ; $47eb: $1f
    ld a, c                                       ; $47ec: $79
    ld [$713f], sp                                ; $47ed: $08 $3f $71
    ccf                                           ; $47f0: $3f
    ld [hl], b                                    ; $47f1: $70
    inc b                                         ; $47f2: $04
    nop                                           ; $47f3: $00
    rst $38                                       ; $47f4: $ff
    ldh a, [$de]                                  ; $47f5: $f0 $de
    nop                                           ; $47f7: $00
    ldh a, [$9d]                                  ; $47f8: $f0 $9d
    ldh a, [$ba]                                  ; $47fa: $f0 $ba

jr_0bf_47fc:
    ldh [$34], a                                  ; $47fc: $e0 $34
    ldh [$60], a                                  ; $47fe: $e0 $60
    inc l                                         ; $4800: $2c
    ret nz                                        ; $4801: $c0

    ret nz                                        ; $4802: $c0

    push hl                                       ; $4803: $e5
    rlca                                          ; $4804: $07
    ld b, b                                       ; $4805: $40

Call_0bf_4806:
    add sp, $06                                   ; $4806: $e8 $06
    ld h, h                                       ; $4808: $64
    ld c, h                                       ; $4809: $4c
    rrca                                          ; $480a: $0f
    nop                                           ; $480b: $00
    inc b                                         ; $480c: $04
    rla                                           ; $480d: $17
    nop                                           ; $480e: $00
    dec bc                                        ; $480f: $0b
    nop                                           ; $4810: $00
    dec d                                         ; $4811: $15
    inc b                                         ; $4812: $04
    nop                                           ; $4813: $00
    rla                                           ; $4814: $17
    ld bc, $2f00                                  ; $4815: $01 $00 $2f
    inc bc                                        ; $4818: $03

jr_0bf_4819:
    ld e, a                                       ; $4819: $5f
    rlca                                          ; $481a: $07
    db $fd                                        ; $481b: $fd
    cp a                                          ; $481c: $bf
    ld hl, sp+$5f                                 ; $481d: $f8 $5f
    jr jr_0bf_4819                                ; $481f: $18 $f8

    cp a                                          ; $4821: $bf
    ldh a, [$ce]                                  ; $4822: $f0 $ce
    inc b                                         ; $4824: $04
    xor b                                         ; $4825: $a8
    dec bc                                        ; $4826: $0b
    ld b, b                                       ; $4827: $40
    rst $38                                       ; $4828: $ff
    ld bc, $5500                                  ; $4829: $01 $00 $55
    nop                                           ; $482c: $00
    xor e                                         ; $482d: $ab
    add d                                         ; $482e: $82
    rst $10                                       ; $482f: $d7
    nop                                           ; $4830: $00
    xor e                                         ; $4831: $ab
    ld b, h                                       ; $4832: $44
    nop                                           ; $4833: $00
    rst $10                                       ; $4834: $d7
    nop                                           ; $4835: $00
    rst $28                                       ; $4836: $ef
    jr z, @+$01                                   ; $4837: $28 $ff

    jr z, @-$0f                                   ; $4839: $28 $ef

    rst $38                                       ; $483b: $ff
    nop                                           ; $483c: $00
    cp $1f                                        ; $483d: $fe $1f
    rst $38                                       ; $483f: $ff
    ld de, $00f5                                  ; $4840: $11 $f5 $00
    ld a, [$0008]                                 ; $4843: $fa $08 $00
    db $fd                                        ; $4846: $fd
    nop                                           ; $4847: $00
    ld a, [$fd05]                                 ; $4848: $fa $05 $fd
    dec b                                         ; $484b: $05
    rst $38                                       ; $484c: $ff
    push hl                                       ; $484d: $e5
    cp a                                          ; $484e: $bf
    ld a, [de]                                    ; $484f: $1a
    ld bc, $14c1                                  ; $4850: $01 $c1 $14
    ld d, $64                                     ; $4853: $16 $64
    rra                                           ; $4855: $1f
    sbc a                                         ; $4856: $9f
    rla                                           ; $4857: $17
    and e                                         ; $4858: $a3
    rra                                           ; $4859: $1f
    sbc c                                         ; $485a: $99
    ccf                                           ; $485b: $3f
    sub e                                         ; $485c: $93
    inc a                                         ; $485d: $3c
    ld l, $00                                     ; $485e: $2e $00
    inc bc                                        ; $4860: $03
    cp l                                          ; $4861: $bd
    ld [bc], a                                    ; $4862: $02
    inc bc                                        ; $4863: $03
    xor h                                         ; $4864: $ac
    ld [$00b0], sp                                ; $4865: $08 $b0 $00
    cp $0b                                        ; $4868: $fe $0b
    inc sp                                        ; $486a: $33
    nop                                           ; $486b: $00
    ld a, $76                                     ; $486c: $3e $76
    inc a                                         ; $486e: $3c
    inc a                                         ; $486f: $3c
    jr c, @-$46                                   ; $4870: $38 $b8

    db $10                                        ; $4872: $10
    sub b                                         ; $4873: $90
    inc bc                                        ; $4874: $03
    db $10                                        ; $4875: $10
    ldh a, [$a0]                                  ; $4876: $f0 $a0
    ldh a, [$60]                                  ; $4878: $f0 $60
    ldh a, [$e6]                                  ; $487a: $f0 $e6
    dec c                                         ; $487c: $0d
    and $0f                                       ; $487d: $e6 $0f
    and b                                         ; $487f: $a0

jr_0bf_4880:
    and [hl]                                      ; $4880: $a6
    ld b, $04                                     ; $4881: $06 $04
    ld b, $10                                     ; $4883: $06 $10
    cp [hl]                                       ; $4885: $be
    rrca                                          ; $4886: $0f
    ld a, [hl]                                    ; $4887: $7e
    ld e, $f8                                     ; $4888: $1e $f8
    nop                                           ; $488a: $00
    dec e                                         ; $488b: $1d
    ld a, h                                       ; $488c: $7c
    ld a, $f0                                     ; $488d: $3e $f0
    dec a                                         ; $488f: $3d
    ld hl, sp+$7a                                 ; $4890: $f8 $7a
    ldh [rSC], a                                  ; $4892: $e0 $02
    ld [hl], l                                    ; $4894: $75
    ldh a, [$7a]                                  ; $4895: $f0 $7a
    nop                                           ; $4897: $00
    ld a, a                                       ; $4898: $7f
    jr nz, jr_0bf_48ab                            ; $4899: $20 $10

    ld [hl+], a                                   ; $489b: $22
    add hl, bc                                    ; $489c: $09
    add b                                         ; $489d: $80
    ld [$0607], sp                                ; $489e: $08 $07 $06
    xor [hl]                                      ; $48a1: $ae
    nop                                           ; $48a2: $00
    rst $10                                       ; $48a3: $d7
    ld b, h                                       ; $48a4: $44

jr_0bf_48a5:
    rst $28                                       ; $48a5: $ef
    nop                                           ; $48a6: $00
    jr c, jr_0bf_4880                             ; $48a7: $38 $d7

    add d                                         ; $48a9: $82
    db $10                                        ; $48aa: $10

jr_0bf_48ab:
    rlca                                          ; $48ab: $07
    or b                                          ; $48ac: $b0
    inc c                                         ; $48ad: $0c
    pop af                                        ; $48ae: $f1
    ld bc, $08fd                                  ; $48af: $01 $fd $08
    ld a, [$0010]                                 ; $48b2: $fa $10 $00
    push af                                       ; $48b5: $f5
    db $10                                        ; $48b6: $10
    inc b                                         ; $48b7: $04
    nop                                           ; $48b8: $00
    jr nz, jr_0bf_48a5                            ; $48b9: $20 $ea

    nop                                           ; $48bb: $00
    push de                                       ; $48bc: $d5
    ld a, $c0                                     ; $48bd: $3e $c0
    ld [$445f], a                                 ; $48bf: $ea $5f $44
    sub h                                         ; $48c2: $94
    db $10                                        ; $48c3: $10
    db $fd                                        ; $48c4: $fd
    ld d, b                                       ; $48c5: $50
    ld h, d                                       ; $48c6: $62
    dec h                                         ; $48c7: $25
    ld l, d                                       ; $48c8: $6a
    dec e                                         ; $48c9: $1d
    ld a, d                                       ; $48ca: $7a
    ld h, a                                       ; $48cb: $67
    ld a, d                                       ; $48cc: $7a
    ld h, d                                       ; $48cd: $62
    dec c                                         ; $48ce: $0d
    ld e, [hl]                                    ; $48cf: $5e
    ld e, l                                       ; $48d0: $5d
    cpl                                           ; $48d1: $2f
    cpl                                           ; $48d2: $2f
    ld e, [hl]                                    ; $48d3: $5e
    ld e, l                                       ; $48d4: $5d
    ld l, [hl]                                    ; $48d5: $6e
    inc b                                         ; $48d6: $04
    ld a, l                                       ; $48d7: $7d
    ld b, $05                                     ; $48d8: $06 $05
    rst $30                                       ; $48da: $f7
    nop                                           ; $48db: $00
    db $fd                                        ; $48dc: $fd
    nop                                           ; $48dd: $00
    cp e                                          ; $48de: $bb
    ld b, h                                       ; $48df: $44
    ld [bc], a                                    ; $48e0: $02
    db $eb                                        ; $48e1: $eb
    or b                                          ; $48e2: $b0
    inc bc                                        ; $48e3: $03
    ld bc, $01df                                  ; $48e4: $01 $df $01
    ei                                            ; $48e7: $fb
    nop                                           ; $48e8: $00
    cp a                                          ; $48e9: $bf
    nop                                           ; $48ea: $00
    db $ed                                        ; $48eb: $ed
    ld [$4500], sp                                ; $48ec: $08 $00 $45
    xor [hl]                                      ; $48ef: $ae
    ld a, [hl-]                                   ; $48f0: $3a

Call_0bf_48f1:
    ld b, $bb                                     ; $48f1: $06 $bb
    nop                                           ; $48f3: $00
    rst $18                                       ; $48f4: $df
    ld c, $00                                     ; $48f5: $0e $00
    rst $38                                       ; $48f7: $ff
    stop                                          ; $48f8: $10 $00
    dec d                                         ; $48fa: $15
    ei                                            ; $48fb: $fb
    nop                                           ; $48fc: $00
    or $24                                        ; $48fd: $f6 $24
    nop                                           ; $48ff: $00
    ld d, e                                       ; $4900: $53
    ld l, $10                                     ; $4901: $2e $10
    rst $28                                       ; $4903: $ef
    ld d, $00                                     ; $4904: $16 $00
    add b                                         ; $4906: $80
    ldh [rSC], a                                  ; $4907: $e0 $02
    nop                                           ; $4909: $00
    ld a, e                                       ; $490a: $7b
    nop                                           ; $490b: $00
    xor $00                                       ; $490c: $ee $00
    ld h, b                                       ; $490e: $60
    ldh [rOBP0], a                                ; $490f: $e0 $48
    jr nz, jr_0bf_4915                            ; $4911: $20 $02

    db $10                                        ; $4913: $10
    ld h, b                                       ; $4914: $60

jr_0bf_4915:
    ret nz                                        ; $4915: $c0

    ld [bc], a                                    ; $4916: $02
    ld [$c0c0], sp                                ; $4917: $08 $c0 $c0
    ld bc, $003a                                  ; $491a: $01 $3a $00
    inc bc                                        ; $491d: $03
    pop hl                                        ; $491e: $e1
    dec b                                         ; $491f: $05
    ldh a, [$08]                                  ; $4920: $f0 $08
    db $f4                                        ; $4922: $f4
    ld [$f405], sp                                ; $4923: $08 $05 $f4
    inc bc                                        ; $4926: $03
    add e                                         ; $4927: $83
    ld bc, $c500                                  ; $4928: $01 $00 $c5
    add b                                         ; $492b: $80
    db $eb                                        ; $492c: $eb
    add b                                         ; $492d: $80
    rst $30                                       ; $492e: $f7
    ld b, b                                       ; $492f: $40
    ld c, l                                       ; $4930: $4d
    ld b, $10                                     ; $4931: $06 $10
    ld b, c                                       ; $4933: $41
    rst $38                                       ; $4934: $ff
    jp nz, Jump_000_08f4                          ; $4935: $c2 $f4 $08

    ldh [$f5], a                                  ; $4938: $e0 $f5
    ld hl, sp+$7a                                 ; $493a: $f8 $7a
    nop                                           ; $493c: $00
    ld hl, sp-$03                                 ; $493d: $f8 $fd
    db $fc                                        ; $493f: $fc
    xor [hl]                                      ; $4940: $ae
    cp $57                                        ; $4941: $fe $57
    rst $38                                       ; $4943: $ff
    add e                                         ; $4944: $83
    cpl                                           ; $4945: $2f
    nop                                           ; $4946: $00
    ld d, l                                       ; $4947: $55
    db $f4                                        ; $4948: $f4
    nop                                           ; $4949: $00
    ld d, a                                       ; $494a: $57
    db $fc                                        ; $494b: $fc
    nop                                           ; $494c: $00
    inc d                                         ; $494d: $14
    inc de                                        ; $494e: $13
    inc c                                         ; $494f: $0c
    ld bc, $08f4                                  ; $4950: $01 $f4 $08
    rst $20                                       ; $4953: $e7
    db $fc                                        ; $4954: $fc
    db $10                                        ; $4955: $10
    inc b                                         ; $4956: $04
    ld bc, $090c                                  ; $4957: $01 $0c $09
    ld d, l                                       ; $495a: $55
    ret nz                                        ; $495b: $c0

    ld hl, sp+$00                                 ; $495c: $f8 $00
    db $fc                                        ; $495e: $fc
    nop                                           ; $495f: $00
    inc b                                         ; $4960: $04
    ld de, $0800                                  ; $4961: $11 $00 $08
    ld a, [$5501]                                 ; $4964: $fa $01 $55
    add hl, de                                    ; $4967: $19
    cp c                                          ; $4968: $b9
    ld bc, $005d                                  ; $4969: $01 $5d $00
    dec h                                         ; $496c: $25
    cp l                                          ; $496d: $bd
    ld bc, $417d                                  ; $496e: $01 $7d $41
    db $fd                                        ; $4971: $fd
    ld bc, $1a7d                                  ; $4972: $01 $7d $1a
    add c                                         ; $4975: $81
    db $fd                                        ; $4976: $fd
    rst $18                                       ; $4977: $df
    sbc d                                         ; $4978: $9a
    nop                                           ; $4979: $00
    or b                                          ; $497a: $b0
    stop                                          ; $497b: $10 $00
    or b                                          ; $497d: $b0
    ld b, b                                       ; $497e: $40
    add b                                         ; $497f: $80
    jr nz, @-$11                                  ; $4980: $20 $ed

    add b                                         ; $4982: $80
    or b                                          ; $4983: $b0
    nop                                           ; $4984: $00
    add b                                         ; $4985: $80
    cp e                                          ; $4986: $bb
    nop                                           ; $4987: $00
    db $d3                                        ; $4988: $d3
    add b                                         ; $4989: $80
    ret z                                         ; $498a: $c8

    add b                                         ; $498b: $80
    dec a                                         ; $498c: $3d
    ld a, b                                       ; $498d: $78
    ld e, $7f                                     ; $498e: $1e $7f
    ei                                            ; $4990: $fb
    add d                                         ; $4991: $82
    dec a                                         ; $4992: $3d
    cp $fe                                        ; $4993: $fe $fe
    ld l, e                                       ; $4995: $6b
    ld c, c                                       ; $4996: $49
    rst $38                                       ; $4997: $ff
    ld a, [hl]                                    ; $4998: $7e
    dec e                                         ; $4999: $1d
    db $db                                        ; $499a: $db
    ld a, [$1d7e]                                 ; $499b: $fa $7e $1d
    ld b, $07                                     ; $499e: $06 $07
    ld a, [hl]                                    ; $49a0: $7e
    ld e, l                                       ; $49a1: $5d
    nop                                           ; $49a2: $00
    or b                                          ; $49a3: $b0
    ldh a, [rTAC]                                 ; $49a4: $f0 $07
    inc b                                         ; $49a6: $04
    sub a                                         ; $49a7: $97
    sub a                                         ; $49a8: $97
    ccf                                           ; $49a9: $3f
    inc l                                         ; $49aa: $2c
    nop                                           ; $49ab: $00
    ld a, a                                       ; $49ac: $7f
    ld c, h                                       ; $49ad: $4c
    ccf                                           ; $49ae: $3f
    ld a, $17                                     ; $49af: $3e $17
    ld e, $17                                     ; $49b1: $1e $17
    rra                                           ; $49b3: $1f
    nop                                           ; $49b4: $00
    inc de                                        ; $49b5: $13
    rra                                           ; $49b6: $1f
    db $fd                                        ; $49b7: $fd
    sbc l                                         ; $49b8: $9d
    rst $38                                       ; $49b9: $ff
    ld c, $ff                                     ; $49ba: $0e $ff
    sbc $01                                       ; $49bc: $de $01
    db $fd                                        ; $49be: $fd
    dec b                                         ; $49bf: $05
    ld a, [$fa8b]                                 ; $49c0: $fa $8b $fa
    ld a, e                                       ; $49c3: $7b
    db $fd                                        ; $49c4: $fd
    add b                                         ; $49c5: $80
    dec d                                         ; $49c6: $15
    or [hl]                                       ; $49c7: $b6
    ld a, d                                       ; $49c8: $7a
    dec c                                         ; $49c9: $0d
    add b                                         ; $49ca: $80
    ld bc, $ec10                                  ; $49cb: $01 $10 $ec
    ld c, $a0                                     ; $49ce: $0e $a0
    add sp, $01                                   ; $49d0: $e8 $01
    db $f4                                        ; $49d2: $f4
    rrca                                          ; $49d3: $0f
    ld bc, $0008                                  ; $49d4: $01 $08 $00
    ld [$1200], sp                                ; $49d7: $08 $00 $12
    db $fd                                        ; $49da: $fd
    ld b, $5f                                     ; $49db: $06 $5f
    ld bc, $00b7                                  ; $49dd: $01 $b7 $00
    nop                                           ; $49e0: $00
    ld a, [bc]                                    ; $49e1: $0a
    nop                                           ; $49e2: $00
    dec e                                         ; $49e3: $1d
    nop                                           ; $49e4: $00
    add hl, hl                                    ; $49e5: $29
    ld bc, $0051                                  ; $49e6: $01 $51 $00
    ld bc, $00aa                                  ; $49e9: $01 $aa $00
    ld b, h                                       ; $49ec: $44
    nop                                           ; $49ed: $00
    and l                                         ; $49ee: $a5
    nop                                           ; $49ef: $00
    ld c, d                                       ; $49f0: $4a
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    sub l                                         ; $49f3: $95
    nop                                           ; $49f4: $00
    ld b, d                                       ; $49f5: $42
    nop                                           ; $49f6: $00
    add h                                         ; $49f7: $84
    nop                                           ; $49f8: $00
    db $10                                        ; $49f9: $10
    adc b                                         ; $49fa: $88
    db $10                                        ; $49fb: $10
    dec b                                         ; $49fc: $05
    ld b, b                                       ; $49fd: $40
    nop                                           ; $49fe: $00

Jump_0bf_49ff:
    ld a, h                                       ; $49ff: $7c
    adc $03                                       ; $4a00: $ce $03
    ld d, h                                       ; $4a02: $54
    nop                                           ; $4a03: $00
    xor b                                         ; $4a04: $a8
    adc b                                         ; $4a05: $88
    inc l                                         ; $4a06: $2c
    nop                                           ; $4a07: $00
    jr nz, jr_0bf_4a0a                            ; $4a08: $20 $00

jr_0bf_4a0a:
    ld c, b                                       ; $4a0a: $48
    dec l                                         ; $4a0b: $2d
    rlca                                          ; $4a0c: $07
    ld [bc], a                                    ; $4a0d: $02
    rst $38                                       ; $4a0e: $ff
    ld b, $80                                     ; $4a0f: $06 $80
    ld c, b                                       ; $4a11: $48
    ld b, $03                                     ; $4a12: $06 $03
    cp $06                                        ; $4a14: $fe $06
    db $fc                                        ; $4a16: $fc
    ld b, $fc                                     ; $4a17: $06 $fc
    ld c, $f0                                     ; $4a19: $0e $f0
    call Call_0bf_4806                            ; $4a1b: $cd $06 $48
    dec c                                         ; $4a1e: $0d
    ld [c], a                                     ; $4a1f: $e2
    ld a, [de]                                    ; $4a20: $1a
    ld d, b                                       ; $4a21: $50
    add hl, de                                    ; $4a22: $19
    inc bc                                        ; $4a23: $03
    nop                                           ; $4a24: $00
    rlca                                          ; $4a25: $07
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    dec bc                                        ; $4a28: $0b
    ld bc, $0017                                  ; $4a29: $01 $17 $00
    cpl                                           ; $4a2c: $2f
    ld bc, $0b5f                                  ; $4a2d: $01 $5f $0b
    ld [bc], a                                    ; $4a30: $02
    cp a                                          ; $4a31: $bf
    rla                                           ; $4a32: $17
    rst $38                                       ; $4a33: $ff
    xor a                                         ; $4a34: $af
    rst $38                                       ; $4a35: $ff
    ld d, a                                       ; $4a36: $57
    sub [hl]                                      ; $4a37: $96
    ld b, $7d                                     ; $4a38: $06 $7d
    nop                                           ; $4a3a: $00
    rst $38                                       ; $4a3b: $ff
    ld a, [$f4ff]                                 ; $4a3c: $fa $ff $f4
    sbc $f8                                       ; $4a3f: $de $f8
    sbc h                                         ; $4a41: $9c
    ldh a, [$2c]                                  ; $4a42: $f0 $2c
    ld a, [de]                                    ; $4a44: $1a
    ldh a, [$85]                                  ; $4a45: $f0 $85
    ld b, $83                                     ; $4a47: $06 $83
    adc c                                         ; $4a49: $89
    ld b, $52                                     ; $4a4a: $06 $52
    dec b                                         ; $4a4c: $05
    ld a, $16                                     ; $4a4d: $3e $16
    ld [bc], a                                    ; $4a4f: $02
    ld e, $0f                                     ; $4a50: $1e $0f
    inc a                                         ; $4a52: $3c
    ld e, $00                                     ; $4a53: $1e $00
    ld a, a                                       ; $4a55: $7f
    ld a, c                                       ; $4a56: $79
    ld bc, $187f                                  ; $4a57: $01 $7f $18
    nop                                           ; $4a5a: $00
    cp a                                          ; $4a5b: $bf
    jr nz, jr_0bf_4a62                            ; $4a5c: $20 $04

    nop                                           ; $4a5e: $00

jr_0bf_4a5f:
    ret nz                                        ; $4a5f: $c0

    dec b                                         ; $4a60: $05
    xor a                                         ; $4a61: $af

jr_0bf_4a62:
    nop                                           ; $4a62: $00
    rst $10                                       ; $4a63: $d7
    ld c, l                                       ; $4a64: $4d
    jr z, jr_0bf_4a5f                             ; $4a65: $28 $f8

    ld [bc], a                                    ; $4a67: $02
    nop                                           ; $4a68: $00
    rst $28                                       ; $4a69: $ef
    nop                                           ; $4a6a: $00
    inc bc                                        ; $4a6b: $03
    ld [$0013], sp                                ; $4a6c: $08 $13 $00
    db $f4                                        ; $4a6f: $f4
    ld [bc], a                                    ; $4a70: $02
    ld h, c                                       ; $4a71: $61
    dec b                                         ; $4a72: $05
    db $fc                                        ; $4a73: $fc
    ld [bc], a                                    ; $4a74: $02
    nop                                           ; $4a75: $00
    dec bc                                        ; $4a76: $0b
    db $10                                        ; $4a77: $10
    push af                                       ; $4a78: $f5
    nop                                           ; $4a79: $00
    ld [$1af6], a                                 ; $4a7a: $ea $f6 $1a
    add c                                         ; $4a7d: $81
    nop                                           ; $4a7e: $00
    dec de                                        ; $4a7f: $1b
    ld b, c                                       ; $4a80: $41
    ld a, l                                       ; $4a81: $7d
    ld bc, $5fbd                                  ; $4a82: $01 $bd $5f
    nop                                           ; $4a85: $00
    ret nz                                        ; $4a86: $c0

    jr jr_0bf_4aa1                                ; $4a87: $18 $18

    jr z, jr_0bf_4a8b                             ; $4a89: $28 $00

jr_0bf_4a8b:
    ld d, c                                       ; $4a8b: $51
    ld a, [hl]                                    ; $4a8c: $7e
    inc b                                         ; $4a8d: $04
    ret nz                                        ; $4a8e: $c0

    ld [$80ca], sp                                ; $4a8f: $08 $ca $80
    sub l                                         ; $4a92: $95
    ld c, [hl]                                    ; $4a93: $4e
    add b                                         ; $4a94: $80
    ret nz                                        ; $4a95: $c0

    ld [$8090], sp                                ; $4a96: $08 $90 $80
    ret nz                                        ; $4a99: $c0

    ld [$0fce], sp                                ; $4a9a: $08 $ce $0f
    jr nc, @+$4f                                  ; $4a9d: $30 $4d

    ld e, l                                       ; $4a9f: $5d
    ld h, b                                       ; $4aa0: $60

jr_0bf_4aa1:
    rst $38                                       ; $4aa1: $ff
    sub d                                         ; $4aa2: $92
    ld e, l                                       ; $4aa3: $5d
    adc [hl]                                      ; $4aa4: $8e
    dec a                                         ; $4aa5: $3d
    ld c, $0f                                     ; $4aa6: $0e $0f
    cp l                                          ; $4aa8: $bd
    cp a                                          ; $4aa9: $bf
    ld e, a                                       ; $4aaa: $5f
    ld b, b                                       ; $4aab: $40
    ld e, a                                       ; $4aac: $5f
    adc [hl]                                      ; $4aad: $8e
    dec a                                         ; $4aae: $3d
    cp b                                          ; $4aaf: $b8
    ld hl, sp-$2a                                 ; $4ab0: $f8 $d6
    cp $fd                                        ; $4ab2: $fe $fd
    db $fd                                        ; $4ab4: $fd
    daa                                           ; $4ab5: $27
    dec bc                                        ; $4ab6: $0b
    rrca                                          ; $4ab7: $0f
    sub b                                         ; $4ab8: $90
    ld e, l                                       ; $4ab9: $5d
    ld e, d                                       ; $4aba: $5a
    cp $90                                        ; $4abb: $fe $90
    ld l, l                                       ; $4abd: $6d
    ld h, c                                       ; $4abe: $61
    ld b, b                                       ; $4abf: $40
    and h                                         ; $4ac0: $a4
    rlca                                          ; $4ac1: $07
    ld l, h                                       ; $4ac2: $6c
    adc b                                         ; $4ac3: $88
    db $e4                                        ; $4ac4: $e4
    ld b, d                                       ; $4ac5: $42
    or e                                          ; $4ac6: $b3
    rrca                                          ; $4ac7: $0f
    add d                                         ; $4ac8: $82
    ld e, b                                       ; $4ac9: $58
    inc bc                                        ; $4aca: $03
    inc d                                         ; $4acb: $14
    ld c, [hl]                                    ; $4acc: $4e
    adc [hl]                                      ; $4acd: $8e
    ld hl, sp+$06                                 ; $4ace: $f8 $06
    rst $08                                       ; $4ad0: $cf
    db $fc                                        ; $4ad1: $fc
    add a                                         ; $4ad2: $87
    cp $83                                        ; $4ad3: $fe $83
    adc h                                         ; $4ad5: $8c
    inc bc                                        ; $4ad6: $03
    sub d                                         ; $4ad7: $92
    rra                                           ; $4ad8: $1f
    dec bc                                        ; $4ad9: $0b
    nop                                           ; $4ada: $00
    ld bc, $031f                                  ; $4adb: $01 $1f $03
    add a                                         ; $4ade: $87
    rlca                                          ; $4adf: $07
    ld b, e                                       ; $4ae0: $43
    ld bc, $00a1                                  ; $4ae1: $01 $a1 $00
    nop                                           ; $4ae4: $00
    ret nc                                        ; $4ae5: $d0

    add b                                         ; $4ae6: $80
    ld h, c                                       ; $4ae7: $61
    ret nz                                        ; $4ae8: $c0

    ldh a, [$c0]                                  ; $4ae9: $f0 $c0
    cp $30                                        ; $4aeb: $fe $30
    ld a, a                                       ; $4aed: $7f
    ld hl, sp-$7f                                 ; $4aee: $f8 $81
    rlca                                          ; $4af0: $07
    and d                                         ; $4af1: $a2
    rrca                                          ; $4af2: $0f
    pop bc                                        ; $4af3: $c1
    rst $38                                       ; $4af4: $ff
    pop bc                                        ; $4af5: $c1
    ld a, a                                       ; $4af6: $7f
    nop                                           ; $4af7: $00
    db $e3                                        ; $4af8: $e3
    ld a, a                                       ; $4af9: $7f
    inc a                                         ; $4afa: $3c
    ldh [$78], a                                  ; $4afb: $e0 $78
    ldh [$74], a                                  ; $4afd: $e0 $74
    ret nc                                        ; $4aff: $d0

    nop                                           ; $4b00: $00
    ld a, d                                       ; $4b01: $7a
    ldh [$3d], a                                  ; $4b02: $e0 $3d
    ldh a, [rNR34]                                ; $4b04: $f0 $1e
    ld hl, sp+$0f                                 ; $4b06: $f8 $0f
    ld a, [$8700]                                 ; $4b08: $fa $00 $87
    db $fc                                        ; $4b0b: $fc
    jr c, jr_0bf_4b4b                             ; $4b0c: $38 $3d

    ld [hl], b                                    ; $4b0e: $70
    ld a, [hl-]                                   ; $4b0f: $3a
    ld [hl], b                                    ; $4b10: $70
    dec [hl]                                      ; $4b11: $35
    nop                                           ; $4b12: $00
    ld [hl], b                                    ; $4b13: $70
    ld a, [hl-]                                   ; $4b14: $3a
    jr nc, jr_0bf_4b2c                            ; $4b15: $30 $15

    sbc b                                         ; $4b17: $98
    ld a, [bc]                                    ; $4b18: $0a
    inc c                                         ; $4b19: $0c
    dec b                                         ; $4b1a: $05
    nop                                           ; $4b1b: $00
    add [hl]                                      ; $4b1c: $86
    ld [bc], a                                    ; $4b1d: $02
    add hl, bc                                    ; $4b1e: $09
    ld e, a                                       ; $4b1f: $5f
    nop                                           ; $4b20: $00
    xor [hl]                                      ; $4b21: $ae
    ld b, $57                                     ; $4b22: $06 $57
    dec hl                                        ; $4b24: $2b
    nop                                           ; $4b25: $00
    xor d                                         ; $4b26: $aa
    inc b                                         ; $4b27: $04
    nop                                           ; $4b28: $00
    xor [hl]                                      ; $4b29: $ae
    inc c                                         ; $4b2a: $0c
    nop                                           ; $4b2b: $00

jr_0bf_4b2c:
    xor a                                         ; $4b2c: $af
    ld b, b                                       ; $4b2d: $40
    inc b                                         ; $4b2e: $04
    and b                                         ; $4b2f: $a0
    ld [bc], a                                    ; $4b30: $02
    pop de                                        ; $4b31: $d1
    inc b                                         ; $4b32: $04
    jr jr_0bf_4b81                                ; $4b33: $18 $4c

    inc c                                         ; $4b35: $0c
    adc b                                         ; $4b36: $88
    add c                                         ; $4b37: $81
    ld e, e                                       ; $4b38: $5b
    nop                                           ; $4b39: $00
    add d                                         ; $4b3a: $82
    add b                                         ; $4b3b: $80
    sub b                                         ; $4b3c: $90
    ld [$0cc0], sp                                ; $4b3d: $08 $c0 $0c
    ld a, [bc]                                    ; $4b40: $0a
    ld [de], a                                    ; $4b41: $12
    ld a, [de]                                    ; $4b42: $1a
    ld d, l                                       ; $4b43: $55
    xor e                                         ; $4b44: $ab
    xor $13                                       ; $4b45: $ee $13
    inc bc                                        ; $4b47: $03
    inc bc                                        ; $4b48: $03
    add e                                         ; $4b49: $83
    ld b, b                                       ; $4b4a: $40

jr_0bf_4b4b:
    dec a                                         ; $4b4b: $3d
    rst $30                                       ; $4b4c: $f7
    cp $ff                                        ; $4b4d: $fe $ff
    cp $72                                        ; $4b4f: $fe $72
    ld b, d                                       ; $4b51: $42
    dec b                                         ; $4b52: $05
    ld b, b                                       ; $4b53: $40
    dec l                                         ; $4b54: $2d
    ld [bc], a                                    ; $4b55: $02
    ld e, e                                       ; $4b56: $5b
    xor [hl]                                      ; $4b57: $ae
    rst $38                                       ; $4b58: $ff
    inc c                                         ; $4b59: $0c
    nop                                           ; $4b5a: $00
    inc h                                         ; $4b5b: $24
    ld b, b                                       ; $4b5c: $40
    dec a                                         ; $4b5d: $3d
    ld l, l                                       ; $4b5e: $6d
    rrca                                          ; $4b5f: $0f
    cp d                                          ; $4b60: $ba
    rst $38                                       ; $4b61: $ff
    jr jr_0bf_4b96                                ; $4b62: $18 $32

    push de                                       ; $4b64: $d5
    rlca                                          ; $4b65: $07
    ld b, b                                       ; $4b66: $40
    dec l                                         ; $4b67: $2d
    sub $1b                                       ; $4b68: $d6 $1b
    xor $28                                       ; $4b6a: $ee $28
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    cp b                                          ; $4b6f: $b8
    ldh [$f0], a                                  ; $4b70: $e0 $f0
    ldh [$b8], a                                  ; $4b72: $e0 $b8
    ldh [rP1], a                                  ; $4b74: $e0 $00
    cp h                                          ; $4b76: $bc
    ldh [rNR30], a                                ; $4b77: $e0 $1a
    ldh a, [$1f]                                  ; $4b79: $f0 $1f
    ld hl, sp+$0f                                 ; $4b7b: $f8 $0f
    db $fd                                        ; $4b7d: $fd
    nop                                           ; $4b7e: $00
    rlca                                          ; $4b7f: $07
    rst $38                                       ; $4b80: $ff

jr_0bf_4b81:
    ld h, d                                       ; $4b81: $62
    ld a, a                                       ; $4b82: $7f
    and $7f                                       ; $4b83: $e6 $7f
    ld a, [hl]                                    ; $4b85: $7e
    ccf                                           ; $4b86: $3f
    add b                                         ; $4b87: $80
    ld [hl], h                                    ; $4b88: $74
    dec bc                                        ; $4b89: $0b
    ld c, e                                       ; $4b8a: $4b
    nop                                           ; $4b8b: $00
    rst $38                                       ; $4b8c: $ff
    ld c, d                                       ; $4b8d: $4a
    rst $38                                       ; $4b8e: $ff
    ld [$2883], a                                 ; $4b8f: $ea $83 $28
    cp $c1                                        ; $4b92: $fe $c1
    ld b, b                                       ; $4b94: $40
    dec d                                         ; $4b95: $15

jr_0bf_4b96:
    add c                                         ; $4b96: $81
    ldh [$08], a                                  ; $4b97: $e0 $08
    rst $38                                       ; $4b99: $ff
    jp Jump_000_00ff                              ; $4b9a: $c3 $ff $00


    jp $e101                                      ; $4b9d: $c3 $01 $e1


    nop                                           ; $4ba0: $00
    ldh [$80], a                                  ; $4ba1: $e0 $80
    ldh a, [$80]                                  ; $4ba3: $f0 $80
    nop                                           ; $4ba5: $00
    ld l, b                                       ; $4ba6: $68
    ret nz                                        ; $4ba7: $c0

    ld [hl], l                                    ; $4ba8: $75
    ret nz                                        ; $4ba9: $c0

    ccf                                           ; $4baa: $3f
    db $f4                                        ; $4bab: $f4
    rra                                           ; $4bac: $1f
    cp $00                                        ; $4bad: $fe $00
    db $10                                        ; $4baf: $10
    ld e, a                                       ; $4bb0: $5f

jr_0bf_4bb1:
    ldh a, [rIE]                                  ; $4bb1: $f0 $ff
    jr jr_0bf_4bc4                                ; $4bb3: $18 $0f

    inc c                                         ; $4bb5: $0c
    rlca                                          ; $4bb6: $07
    nop                                           ; $4bb7: $00
    ld c, $07                                     ; $4bb8: $0e $07
    ld e, [hl]                                    ; $4bba: $5e
    rlca                                          ; $4bbb: $07
    cp $57                                        ; $4bbc: $fe $57
    cp $57                                        ; $4bbe: $fe $57
    cp $0c                                        ; $4bc0: $fe $0c

jr_0bf_4bc2:
    ld c, l                                       ; $4bc2: $4d
    ld a, h                                       ; $4bc3: $7c

jr_0bf_4bc4:
    inc d                                         ; $4bc4: $14
    cp h                                          ; $4bc5: $bc
    jr nz, @+$6a                                  ; $4bc6: $20 $68

    rrca                                          ; $4bc8: $0f
    call nc, $e21a                                ; $4bc9: $d4 $1a $e2

jr_0bf_4bcc:
    add hl, de                                    ; $4bcc: $19
    ld [hl], d                                    ; $4bcd: $72
    add hl, hl                                    ; $4bce: $29
    inc bc                                        ; $4bcf: $03

jr_0bf_4bd0:
    or h                                          ; $4bd0: $b4
    and b                                         ; $4bd1: $a0
    ld [bc], a                                    ; $4bd2: $02
    ld [bc], a                                    ; $4bd3: $02
    and d                                         ; $4bd4: $a2
    ld [bc], a                                    ; $4bd5: $02
    dec b                                         ; $4bd6: $05
    dec d                                         ; $4bd7: $15
    nop                                           ; $4bd8: $00
    add [hl]                                      ; $4bd9: $86
    ld b, $ff                                     ; $4bda: $06 $ff
    rst $18                                       ; $4bdc: $df
    add $19                                       ; $4bdd: $c6 $19
    dec [hl]                                      ; $4bdf: $35
    db $10                                        ; $4be0: $10
    ld [$ffc3], sp                                ; $4be1: $08 $c3 $ff
    add a                                         ; $4be4: $87
    ret nz                                        ; $4be5: $c0

    ld a, [bc]                                    ; $4be6: $0a
    jr nz, @+$32                                  ; $4be7: $20 $30

    rrca                                          ; $4be9: $0f
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    add h                                         ; $4bec: $84
    cp $00                                        ; $4bed: $fe $00
    ld a, l                                       ; $4bef: $7d
    ld c, b                                       ; $4bf0: $48
    ld a, [$1700]                                 ; $4bf1: $fa $00 $17
    ld [hl], l                                    ; $4bf4: $75
    jr nc, jr_0bf_4bb1                            ; $4bf5: $30 $ba

    jr nc, @+$0a                                  ; $4bf7: $30 $08

    cp $92                                        ; $4bf9: $fe $92
    ld b, $ec                                     ; $4bfb: $06 $ec
    inc [hl]                                      ; $4bfd: $34
    ld b, b                                       ; $4bfe: $40
    nop                                           ; $4bff: $00
    ldh a, [$28]                                  ; $4c00: $f0 $28
    add hl, de                                    ; $4c02: $19
    ld [hl], b                                    ; $4c03: $70
    jr c, @+$4a                                   ; $4c04: $38 $48

    dec de                                        ; $4c06: $1b
    ld d, b                                       ; $4c07: $50
    dec bc                                        ; $4c08: $0b
    ld bc, $0301                                  ; $4c09: $01 $01 $03
    inc bc                                        ; $4c0c: $03
    jr nz, @-$7d                                  ; $4c0d: $20 $81

    add c                                         ; $4c0f: $81
    ldh a, [$2f]                                  ; $4c10: $f0 $2f
    ld a, d                                       ; $4c12: $7a
    ld a, d                                       ; $4c13: $7a
    db $fd                                        ; $4c14: $fd
    db $fd                                        ; $4c15: $fd
    cp $10                                        ; $4c16: $fe $10
    cp $ff                                        ; $4c18: $fe $ff
    ld e, a                                       ; $4c1a: $5f
    rst $38                                       ; $4c1b: $ff
    cpl                                           ; $4c1c: $2f
    dec bc                                        ; $4c1d: $0b
    dec bc                                        ; $4c1e: $0b
    ld e, $17                                     ; $4c1f: $1e $17
    ld [$1e17], sp                                ; $4c21: $08 $17 $1e
    dec de                                        ; $4c24: $1b
    dec e                                         ; $4c25: $1d
    or b                                          ; $4c26: $b0
    cpl                                           ; $4c27: $2f
    add b                                         ; $4c28: $80
    add b                                         ; $4c29: $80
    ldh [rDIV], a                                 ; $4c2a: $e0 $04
    ld h, b                                       ; $4c2c: $60
    or b                                          ; $4c2d: $b0
    ld [hl], b                                    ; $4c2e: $70
    ldh a, [$f0]                                  ; $4c2f: $f0 $f0
    ld b, b                                       ; $4c31: $40
    jr z, jr_0bf_4bc2                             ; $4c32: $28 $8e

    adc [hl]                                      ; $4c34: $8e
    ld [bc], a                                    ; $4c35: $02
    rra                                           ; $4c36: $1f
    ld de, $2a3f                                  ; $4c37: $11 $3f $2a
    cp a                                          ; $4c3a: $bf
    or a                                          ; $4c3b: $b7
    jr nz, jr_0bf_4c76                            ; $4c3c: $20 $38

    ret nz                                        ; $4c3e: $c0

Jump_0bf_4c3f:
    rlca                                          ; $4c3f: $07
    ld b, b                                       ; $4c40: $40
    ldh [$a0], a                                  ; $4c41: $e0 $a0
    ldh [$60], a                                  ; $4c43: $e0 $60
    ld d, b                                       ; $4c45: $50
    add hl, hl                                    ; $4c46: $29
    ld e, b                                       ; $4c47: $58
    add hl, hl                                    ; $4c48: $29
    ld [hl], b                                    ; $4c49: $70
    jr c, jr_0bf_4bcc                             ; $4c4a: $38 $80

    ld a, [c]                                     ; $4c4c: $f2
    jr jr_0bf_4bd0                                ; $4c4d: $18 $81

    add c                                         ; $4c4f: $81
    ld bc, $8301                                  ; $4c50: $01 $01 $83
    add d                                         ; $4c53: $82
    add c                                         ; $4c54: $81
    ldh [rSB], a                                  ; $4c55: $e0 $01
    db $10                                        ; $4c57: $10
    call c, $c10b                                 ; $4c58: $dc $0b $c1
    nop                                           ; $4c5b: $00
    ld l, a                                       ; $4c5c: $6f
    cp $0a                                        ; $4c5d: $fe $0a
    db $fc                                        ; $4c5f: $fc
    ld c, h                                       ; $4c60: $4c
    nop                                           ; $4c61: $00
    ld hl, sp-$78                                 ; $4c62: $f8 $88
    db $fd                                        ; $4c64: $fd
    dec e                                         ; $4c65: $1d
    cp $fe                                        ; $4c66: $fe $fe
    xor l                                         ; $4c68: $ad
    rst $38                                       ; $4c69: $ff
    ld [$080f], sp                                ; $4c6a: $08 $0f $08
    rra                                           ; $4c6d: $1f
    dec de                                        ; $4c6e: $1b
    inc b                                         ; $4c6f: $04
    nop                                           ; $4c70: $00
    db $10                                        ; $4c71: $10
    rst $28                                       ; $4c72: $ef
    ld [$f701], a                                 ; $4c73: $ea $01 $f7

jr_0bf_4c76:
    inc [hl]                                      ; $4c76: $34
    db $eb                                        ; $4c77: $eb
    cp e                                          ; $4c78: $bb
    ld h, [hl]                                    ; $4c79: $66
    ld a, a                                       ; $4c7a: $7f
    ldh a, [rSB]                                  ; $4c7b: $f0 $01
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    ld hl, sp+$68                                 ; $4c7f: $f8 $68
    ret c                                         ; $4c81: $d8

    add sp, -$18                                  ; $4c82: $e8 $e8
    ld e, b                                       ; $4c84: $58
    ret c                                         ; $4c85: $d8

    ld hl, sp+$00                                 ; $4c86: $f8 $00
    db $fc                                        ; $4c88: $fc

jr_0bf_4c89:
    db $fc                                        ; $4c89: $fc
    cp b                                          ; $4c8a: $b8
    ld hl, sp-$01                                 ; $4c8b: $f8 $ff
    db $ec                                        ; $4c8d: $ec
    rst $38                                       ; $4c8e: $ff
    or b                                          ; $4c8f: $b0
    add d                                         ; $4c90: $82
    inc bc                                        ; $4c91: $03
    inc bc                                        ; $4c92: $03
    or b                                          ; $4c93: $b0
    rst $38                                       ; $4c94: $ff
    cp b                                          ; $4c95: $b8
    rst $38                                       ; $4c96: $ff
    sub $04                                       ; $4c97: $d6 $04
    nop                                           ; $4c99: $00
    rst $18                                       ; $4c9a: $df
    nop                                           ; $4c9b: $00
    ldh a, [$90]                                  ; $4c9c: $f0 $90
    ldh a, [rSVBK]                                ; $4c9e: $f0 $70
    ld hl, sp+$68                                 ; $4ca0: $f8 $68
    ld hl, sp+$78                                 ; $4ca2: $f8 $78
    inc hl                                        ; $4ca4: $23
    ldh a, [$50]                                  ; $4ca5: $f0 $50
    ld b, $00                                     ; $4ca7: $06 $00
    add sp, -$10                                  ; $4ca9: $e8 $f0
    ret nc                                        ; $4cab: $d0

    and [hl]                                      ; $4cac: $a6
    dec a                                         ; $4cad: $3d
    ld a, [hl-]                                   ; $4cae: $3a
    dec sp                                        ; $4caf: $3b
    db $fc                                        ; $4cb0: $fc
    inc c                                         ; $4cb1: $0c
    jr z, jr_0bf_4d00                             ; $4cb2: $28 $4c

    dec sp                                        ; $4cb4: $3b
    sub h                                         ; $4cb5: $94
    ld c, b                                       ; $4cb6: $48
    adc [hl]                                      ; $4cb7: $8e
    ld l, c                                       ; $4cb8: $69
    sbc h                                         ; $4cb9: $9c
    jr @-$5c                                      ; $4cba: $18 $a2

    ld [$abab], sp                                ; $4cbc: $08 $ab $ab
    nop                                           ; $4cbf: $00
    ld d, l                                       ; $4cc0: $55
    ld d, l                                       ; $4cc1: $55
    ld [hl], l                                    ; $4cc2: $75
    rst $38                                       ; $4cc3: $ff
    or [hl]                                       ; $4cc4: $b6
    cp $74                                        ; $4cc5: $fe $74
    db $fc                                        ; $4cc7: $fc
    ld b, b                                       ; $4cc8: $40
    ld h, d                                       ; $4cc9: $62
    ld d, h                                       ; $4cca: $54
    ld a, [bc]                                    ; $4ccb: $0a
    adc $fe                                       ; $4ccc: $ce $fe
    xor $bf                                       ; $4cce: $ee $bf
    rst $38                                       ; $4cd0: $ff
    dec e                                         ; $4cd1: $1d
    ld [$061f], sp                                ; $4cd2: $08 $1f $06
    rlca                                          ; $4cd5: $07
    dec b                                         ; $4cd6: $05
    ld [bc], a                                    ; $4cd7: $02
    jr nz, jr_0bf_4c89                            ; $4cd8: $20 $af

    xor a                                         ; $4cda: $af
    ld d, l                                       ; $4cdb: $55
    ld [bc], a                                    ; $4cdc: $02
    ld d, a                                       ; $4cdd: $57
    xor h                                         ; $4cde: $ac
    db $fc                                        ; $4cdf: $fc
    or b                                          ; $4ce0: $b0
    ldh a, [$d0]                                  ; $4ce1: $f0 $d0
    add l                                         ; $4ce3: $85
    nop                                           ; $4ce4: $00

jr_0bf_4ce5:
    ret nc                                        ; $4ce5: $d0

    nop                                           ; $4ce6: $00

jr_0bf_4ce7:
    ldh a, [$e8]                                  ; $4ce7: $f0 $e8
    jr c, jr_0bf_4ce5                             ; $4ce9: $38 $fa

    ld a, [$f5f5]                                 ; $4ceb: $fa $f5 $f5
    ld a, l                                       ; $4cee: $7d
    nop                                           ; $4cef: $00
    ld a, a                                       ; $4cf0: $7f
    jp c, $ddff                                   ; $4cf1: $da $ff $dd

    rst $38                                       ; $4cf4: $ff
    cp l                                          ; $4cf5: $bd
    rst $38                                       ; $4cf6: $ff
    jp c, $ff02                                   ; $4cf7: $da $02 $ff

    ld a, [$fabf]                                 ; $4cfa: $fa $bf $fa
    rst $18                                       ; $4cfd: $df
    ld a, d                                       ; $4cfe: $7a
    ret nz                                        ; $4cff: $c0

jr_0bf_4d00:
    nop                                           ; $4d00: $00
    ret nc                                        ; $4d01: $d0

    add b                                         ; $4d02: $80
    inc e                                         ; $4d03: $1c
    ld [$d8f8], sp                                ; $4d04: $08 $f8 $d8
    ld hl, sp-$08                                 ; $4d07: $f8 $f8
    add sp, -$06                                  ; $4d09: $e8 $fa
    jp c, $f530                                   ; $4d0b: $da $30 $f5

    push af                                       ; $4d0e: $f5
    ld l, [hl]                                    ; $4d0f: $6e
    ld a, [hl-]                                   ; $4d10: $3a
    ld c, d                                       ; $4d11: $4a
    ld e, $55                                     ; $4d12: $1e $55
    xor d                                         ; $4d14: $aa
    cp $01                                        ; $4d15: $fe $01
    nop                                           ; $4d17: $00
    adc b                                         ; $4d18: $88
    ld [bc], a                                    ; $4d19: $02
    inc b                                         ; $4d1a: $04
    db $10                                        ; $4d1b: $10
    jr nz, jr_0bf_4d1e                            ; $4d1c: $20 $00

jr_0bf_4d1e:
    add d                                         ; $4d1e: $82
    ld a, h                                       ; $4d1f: $7c
    nop                                           ; $4d20: $00
    ld h, c                                       ; $4d21: $61
    sbc [hl]                                      ; $4d22: $9e
    ld c, b                                       ; $4d23: $48
    jr nc, jr_0bf_4d7b                            ; $4d24: $30 $55

    xor d                                         ; $4d26: $aa
    rst $38                                       ; $4d27: $ff
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    db $10                                        ; $4d2a: $10
    rrca                                          ; $4d2b: $0f
    ld h, b                                       ; $4d2c: $60
    rra                                           ; $4d2d: $1f
    ld [bc], a                                    ; $4d2e: $02
    ld bc, $0090                                  ; $4d2f: $01 $90 $00
    ld e, b                                       ; $4d32: $58
    ld a, a                                       ; $4d33: $7f
    sbc $07                                       ; $4d34: $de $07
    rst $18                                       ; $4d36: $df
    jp nc, $ec01                                  ; $4d37: $d2 $01 $ec

    inc bc                                        ; $4d3a: $03
    cp $88                                        ; $4d3b: $fe $88
    inc bc                                        ; $4d3d: $03
    nop                                           ; $4d3e: $00
    ld [bc], a                                    ; $4d3f: $02
    ld bc, $00f0                                  ; $4d40: $01 $f0 $00
    ld hl, sp+$02                                 ; $4d43: $f8 $02
    ld d, [hl]                                    ; $4d45: $56
    xor a                                         ; $4d46: $af
    ld [bc], a                                    ; $4d47: $02
    rst $28                                       ; $4d48: $ef
    sub a                                         ; $4d49: $97
    add h                                         ; $4d4a: $84
    add a                                         ; $4d4b: $87
    cpl                                           ; $4d4c: $2f
    rst $08                                       ; $4d4d: $cf
    ldh a, [$2a]                                  ; $4d4e: $f0 $2a
    db $fd                                        ; $4d50: $fd
    ld bc, $77fa                                  ; $4d51: $01 $fa $77
    db $fc                                        ; $4d54: $fc
    add sp, -$08                                  ; $4d55: $e8 $f8
    or $f8                                        ; $4d57: $f6 $f8
    ldh a, [$2a]                                  ; $4d59: $f0 $2a
    nop                                           ; $4d5b: $00
    ld [hl], a                                    ; $4d5c: $77
    rst $38                                       ; $4d5d: $ff
    rst $38                                       ; $4d5e: $ff
    ccf                                           ; $4d5f: $3f
    dec d                                         ; $4d60: $15
    dec a                                         ; $4d61: $3d
    sbc b                                         ; $4d62: $98
    jr jr_0bf_4ce7                                ; $4d63: $18 $82

    ldh a, [$2a]                                  ; $4d65: $f0 $2a
    ld d, l                                       ; $4d67: $55
    ld a, [$e0ff]                                 ; $4d68: $fa $ff $e0
    ld [hl], d                                    ; $4d6b: $72
    jr c, jr_0bf_4d74                             ; $4d6c: $38 $06

    inc h                                         ; $4d6e: $24
    inc b                                         ; $4d6f: $04
    inc bc                                        ; $4d70: $03
    ld c, b                                       ; $4d71: $48
    add a                                         ; $4d72: $87
    add h                                         ; $4d73: $84

jr_0bf_4d74:
    inc de                                        ; $4d74: $13
    srl a                                         ; $4d75: $cb $3f
    ld d, $16                                     ; $4d77: $16 $16
    ld [bc], a                                    ; $4d79: $02
    dec l                                         ; $4d7a: $2d

jr_0bf_4d7b:
    ccf                                           ; $4d7b: $3f
    ld a, a                                       ; $4d7c: $7f
    ld a, a                                       ; $4d7d: $7f
    ld e, a                                       ; $4d7e: $5f
    ld [hl], d                                    ; $4d7f: $72
    ldh [$39], a                                  ; $4d80: $e0 $39
    add a                                         ; $4d82: $87
    inc b                                         ; $4d83: $04
    add a                                         ; $4d84: $87
    ld c, e                                       ; $4d85: $4b
    rst $08                                       ; $4d86: $cf
    call c, $eddf                                 ; $4d87: $dc $df $ed
    ccf                                           ; $4d8a: $3f
    ret nz                                        ; $4d8b: $c0

    ret nz                                        ; $4d8c: $c0

    ld [$e020], sp                                ; $4d8d: $08 $20 $e0
    or b                                          ; $4d90: $b0
    ldh a, [$fd]                                  ; $4d91: $f0 $fd
    ccf                                           ; $4d93: $3f
    dec a                                         ; $4d94: $3d
    dec a                                         ; $4d95: $3d
    ld a, a                                       ; $4d96: $7f
    db $10                                        ; $4d97: $10
    ld c, d                                       ; $4d98: $4a
    rst $38                                       ; $4d99: $ff
    cp [hl]                                       ; $4d9a: $be
    ld a, h                                       ; $4d9b: $7c
    dec c                                         ; $4d9c: $0d
    sub c                                         ; $4d9d: $91
    nop                                           ; $4d9e: $00
    add l                                         ; $4d9f: $85
    ld [bc], a                                    ; $4da0: $02
    ld a, [bc]                                    ; $4da1: $0a
    ld [bc], a                                    ; $4da2: $02
    ld bc, $f804                                  ; $4da3: $01 $04 $f8
    dec h                                         ; $4da6: $25
    rrca                                          ; $4da7: $0f
    ld a, a                                       ; $4da8: $7f
    ld a, [hl]                                    ; $4da9: $7e
    rlca                                          ; $4daa: $07
    jr jr_0bf_4db5                                ; $4dab: $18 $08

    ldh [$a5], a                                  ; $4dad: $e0 $a5
    ld e, b                                       ; $4daf: $58
    inc d                                         ; $4db0: $14
    adc d                                         ; $4db1: $8a
    rlca                                          ; $4db2: $07
    add c                                         ; $4db3: $81
    inc b                                         ; $4db4: $04

jr_0bf_4db5:
    add c                                         ; $4db5: $81
    jr z, jr_0bf_4dd8                             ; $4db6: $28 $20

    ret nz                                        ; $4db8: $c0

    inc e                                         ; $4db9: $1c
    nop                                           ; $4dba: $00
    ld [hl+], a                                   ; $4dbb: $22
    sub e                                         ; $4dbc: $93
    rlca                                          ; $4dbd: $07
    db $10                                        ; $4dbe: $10
    adc a                                         ; $4dbf: $8f
    add b                                         ; $4dc0: $80
    add b                                         ; $4dc1: $80
    cp a                                          ; $4dc2: $bf
    ld [$8aff], sp                                ; $4dc3: $08 $ff $8a
    ld [hl], c                                    ; $4dc6: $71
    db $e4                                        ; $4dc7: $e4
    jr @+$0a                                      ; $4dc8: $18 $08

    pop af                                        ; $4dca: $f1
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    ld [bc], a                                    ; $4dcd: $02
    db $10                                        ; $4dce: $10
    ldh [rDIV], a                                 ; $4dcf: $e0 $04
    ld hl, sp+$02                                 ; $4dd1: $f8 $02
    db $fc                                        ; $4dd3: $fc
    jr nc, jr_0bf_4dd6                            ; $4dd4: $30 $00

jr_0bf_4dd6:
    cp $04                                        ; $4dd6: $fe $04

jr_0bf_4dd8:
    nop                                           ; $4dd8: $00
    ldh [rP1], a                                  ; $4dd9: $e0 $00
    and b                                         ; $4ddb: $a0
    rra                                           ; $4ddc: $1f
    db $10                                        ; $4ddd: $10
    rrca                                          ; $4dde: $0f
    db $10                                        ; $4ddf: $10
    ld [bc], a                                    ; $4de0: $02
    ld hl, $6d04                                  ; $4de1: $21 $04 $6d
    dec b                                         ; $4de4: $05
    ld bc, $0650                                  ; $4de5: $01 $50 $06
    ld bc, $4502                                  ; $4de8: $01 $02 $45
    add d                                         ; $4deb: $82
    ld [hl+], a                                   ; $4dec: $22
    pop bc                                        ; $4ded: $c1
    add b                                         ; $4dee: $80
    nop                                           ; $4def: $00
    jr nz, jr_0bf_4dfa                            ; $4df0: $20 $08

    ld bc, $fe00                                  ; $4df2: $01 $00 $fe
    inc b                                         ; $4df5: $04
    nop                                           ; $4df6: $00
    jr @-$1d                                      ; $4df7: $18 $e1

    ld b, h                                       ; $4df9: $44

jr_0bf_4dfa:
    cp c                                          ; $4dfa: $b9
    ld de, $e059                                  ; $4dfb: $11 $59 $e0
    sbc e                                         ; $4dfe: $9b
    inc bc                                        ; $4dff: $03
    inc b                                         ; $4e00: $04
    jp Jump_0bf_7205                              ; $4e01: $c3 $05 $72


    rlca                                          ; $4e04: $07
    inc bc                                        ; $4e05: $03
    ld [bc], a                                    ; $4e06: $02
    ld [bc], a                                    ; $4e07: $02
    nop                                           ; $4e08: $00
    ldh [rTIMA], a                                ; $4e09: $e0 $05
    nop                                           ; $4e0b: $00
    ld a, h                                       ; $4e0c: $7c
    rra                                           ; $4e0d: $1f
    ld e, h                                       ; $4e0e: $5c
    ld b, $6a                                     ; $4e0f: $06 $6a
    rst $38                                       ; $4e11: $ff
    ret nz                                        ; $4e12: $c0

    cp a                                          ; $4e13: $bf
    xor [hl]                                      ; $4e14: $ae
    ld bc, $a4bf                                  ; $4e15: $01 $bf $a4
    ld e, a                                       ; $4e18: $5f
    pop de                                        ; $4e19: $d1
    ld a, a                                       ; $4e1a: $7f
    rst $38                                       ; $4e1b: $ff
    dec [hl]                                      ; $4e1c: $35
    ldh a, [rSC]                                  ; $4e1d: $f0 $02
    and b                                         ; $4e1f: $a0
    inc h                                         ; $4e20: $24
    inc bc                                        ; $4e21: $03
    ld e, a                                       ; $4e22: $5f
    ld h, $0b                                     ; $4e23: $26 $0b
    ld d, l                                       ; $4e25: $55
    ld a, a                                       ; $4e26: $7f
    call c, Call_000_2fff                         ; $4e27: $dc $ff $2f
    nop                                           ; $4e2a: $00
    rst $38                                       ; $4e2b: $ff
    pop af                                        ; $4e2c: $f1
    pop af                                        ; $4e2d: $f1
    db $db                                        ; $4e2e: $db
    ld a, [$f6ff]                                 ; $4e2f: $fa $ff $f6
    cp $81                                        ; $4e32: $fe $81
    dec e                                         ; $4e34: $1d

jr_0bf_4e35:
    ld [bc], a                                    ; $4e35: $02
    rst $10                                       ; $4e36: $d7
    rst $38                                       ; $4e37: $ff
    ld [hl], a                                    ; $4e38: $77
    rst $38                                       ; $4e39: $ff
    jp hl                                         ; $4e3a: $e9


    ld sp, hl                                     ; $4e3b: $f9
    add a                                         ; $4e3c: $87
    inc b                                         ; $4e3d: $04
    nop                                           ; $4e3e: $00
    rst $30                                       ; $4e3f: $f7
    rst $38                                       ; $4e40: $ff
    sub b                                         ; $4e41: $90
    rst $38                                       ; $4e42: $ff
    ret                                           ; $4e43: $c9


    ld a, a                                       ; $4e44: $7f
    push de                                       ; $4e45: $d5
    ld a, a                                       ; $4e46: $7f
    nop                                           ; $4e47: $00
    db $eb                                        ; $4e48: $eb
    ld e, l                                       ; $4e49: $5d
    rst $38                                       ; $4e4a: $ff
    ld l, e                                       ; $4e4b: $6b
    rst $38                                       ; $4e4c: $ff
    ret nz                                        ; $4e4d: $c0

    ret nz                                        ; $4e4e: $c0

    ldh [$08], a                                  ; $4e4f: $e0 $08
    and b                                         ; $4e51: $a0
    ldh a, [$90]                                  ; $4e52: $f0 $90
    and b                                         ; $4e54: $a0
    ld d, d                                       ; $4e55: $52
    rrca                                          ; $4e56: $0f
    ldh [rLCDC], a                                ; $4e57: $e0 $40
    ret nz                                        ; $4e59: $c0

    ld h, c                                       ; $4e5a: $61
    ld b, b                                       ; $4e5b: $40
    db $fd                                        ; $4e5c: $fd
    dec b                                         ; $4e5d: $05
    ld c, h                                       ; $4e5e: $4c
    inc a                                         ; $4e5f: $3c
    inc bc                                        ; $4e60: $03
    inc bc                                        ; $4e61: $03
    add a                                         ; $4e62: $87
    add a                                         ; $4e63: $87
    ldh a, [$3f]                                  ; $4e64: $f0 $3f
    nop                                           ; $4e66: $00
    db $f4                                        ; $4e67: $f4
    db $f4                                        ; $4e68: $f4
    ld a, [$fcfa]                                 ; $4e69: $fa $fa $fc
    db $fc                                        ; $4e6c: $fc
    cp e                                          ; $4e6d: $bb
    rst $38                                       ; $4e6e: $ff
    ld bc, $7f75                                  ; $4e6f: $01 $75 $7f
    dec sp                                        ; $4e72: $3b
    ccf                                           ; $4e73: $3f
    dec sp                                        ; $4e74: $3b
    ccf                                           ; $4e75: $3f
    dec [hl]                                      ; $4e76: $35
    ld [bc], a                                    ; $4e77: $02
    nop                                           ; $4e78: $00
    ld d, c                                       ; $4e79: $51
    push af                                       ; $4e7a: $f5
    inc c                                         ; $4e7b: $0c
    nop                                           ; $4e7c: $00
    xor h                                         ; $4e7d: $ac
    rrca                                          ; $4e7e: $0f
    ld b, $af                                     ; $4e7f: $06 $af
    cp a                                          ; $4e81: $bf
    sbc a                                         ; $4e82: $9f
    ld bc, $a410                                  ; $4e83: $01 $10 $a4
    sbc [hl]                                      ; $4e86: $9e
    dec bc                                        ; $4e87: $0b
    jr z, jr_0bf_4f01                             ; $4e88: $28 $77

    ld a, [bc]                                    ; $4e8a: $0a
    ld hl, sp-$10                                 ; $4e8b: $f8 $f0
    ld [hl], h                                    ; $4e8d: $74
    dec b                                         ; $4e8e: $05
    ldh a, [$f0]                                  ; $4e8f: $f0 $f0
    nop                                           ; $4e91: $00
    cp d                                          ; $4e92: $ba
    ld a, [$fdbd]                                 ; $4e93: $fa $bd $fd
    rst $30                                       ; $4e96: $f7
    rst $38                                       ; $4e97: $ff
    ld l, e                                       ; $4e98: $6b
    ld a, a                                       ; $4e99: $7f
    ld b, a                                       ; $4e9a: $47
    ld [hl], a                                    ; $4e9b: $77
    ld [bc], a                                    ; $4e9c: $02
    db $10                                        ; $4e9d: $10
    rst $30                                       ; $4e9e: $f7
    rst $38                                       ; $4e9f: $ff
    db $eb                                        ; $4ea0: $eb
    ld [bc], a                                    ; $4ea1: $02
    nop                                           ; $4ea2: $00
    ld h, h                                       ; $4ea3: $64
    ld a, [hl+]                                   ; $4ea4: $2a
    ret z                                         ; $4ea5: $c8

    ld c, $00                                     ; $4ea6: $0e $00
    xor d                                         ; $4ea8: $aa
    xor d                                         ; $4ea9: $aa
    push de                                       ; $4eaa: $d5
    push de                                       ; $4eab: $d5
    add e                                         ; $4eac: $83
    add d                                         ; $4ead: $82
    inc bc                                        ; $4eae: $03
    ld [bc], a                                    ; $4eaf: $02
    jr nc, jr_0bf_4e35                            ; $4eb0: $30 $83

    add d                                         ; $4eb2: $82
    ld [bc], a                                    ; $4eb3: $02
    dec de                                        ; $4eb4: $1b
    ld a, [bc]                                    ; $4eb5: $0a
    inc bc                                        ; $4eb6: $03
    add e                                         ; $4eb7: $83
    cp $be                                        ; $4eb8: $fe $be
    cp $10                                        ; $4eba: $fe $10
    ld e, $fe                                     ; $4ebc: $1e $fe
    sbc $02                                       ; $4ebe: $de $02
    dec bc                                        ; $4ec0: $0b
    db $fc                                        ; $4ec1: $fc
    adc h                                         ; $4ec2: $8c
    rst $38                                       ; $4ec3: $ff
    rra                                           ; $4ec4: $1f
    ld h, b                                       ; $4ec5: $60
    db $ed                                        ; $4ec6: $ed
    nop                                           ; $4ec7: $00
    inc bc                                        ; $4ec8: $03
    ld [bc], a                                    ; $4ec9: $02
    dec bc                                        ; $4eca: $0b
    rra                                           ; $4ecb: $1f
    db $10                                        ; $4ecc: $10
    ld l, a                                       ; $4ecd: $6f
    ld l, d                                       ; $4ece: $6a
    rst $30                                       ; $4ecf: $f7
    inc b                                         ; $4ed0: $04
    or h                                          ; $4ed1: $b4
    db $eb                                        ; $4ed2: $eb
    dec sp                                        ; $4ed3: $3b
    and $ff                                       ; $4ed4: $e6 $ff
    ldh [rWY], a                                  ; $4ed6: $e0 $4a
    or $e6                                        ; $4ed8: $f6 $e6
    ld hl, $dafe                                  ; $4eda: $21 $fe $da
    jr nz, jr_0bf_4ee9                            ; $4edd: $20 $0a

    add h                                         ; $4edf: $84
    nop                                           ; $4ee0: $00

Jump_0bf_4ee1:
    ld b, c                                       ; $4ee1: $41
    sub b                                         ; $4ee2: $90

jr_0bf_4ee3:
    db $10                                        ; $4ee3: $10
    ld a, [bc]                                    ; $4ee4: $0a
    nop                                           ; $4ee5: $00
    db $10                                        ; $4ee6: $10
    ldh [$08], a                                  ; $4ee7: $e0 $08

jr_0bf_4ee9:
    ld a, [c]                                     ; $4ee9: $f2
    xor $ff                                       ; $4eea: $ee $ff
    rst $38                                       ; $4eec: $ff
    ld a, a                                       ; $4eed: $7f
    ld a, [bc]                                    ; $4eee: $0a
    ld a, [hl+]                                   ; $4eef: $2a
    dec sp                                        ; $4ef0: $3b
    dec sp                                        ; $4ef1: $3b
    ei                                            ; $4ef2: $fb
    nop                                           ; $4ef3: $00
    dec l                                         ; $4ef4: $2d
    cp a                                          ; $4ef5: $bf
    inc sp                                        ; $4ef6: $33
    inc b                                         ; $4ef7: $04
    call c, $bf30                                 ; $4ef8: $dc $30 $bf

jr_0bf_4efb:
    adc a                                         ; $4efb: $8f
    jr c, @+$11                                   ; $4efc: $38 $0f

    nop                                           ; $4efe: $00
    dec d                                         ; $4eff: $15
    db $fd                                        ; $4f00: $fd

jr_0bf_4f01:
    ei                                            ; $4f01: $fb
    sbc a                                         ; $4f02: $9f
    ld sp, hl                                     ; $4f03: $f9
    inc c                                         ; $4f04: $0c
    jr nc, jr_0bf_4efb                            ; $4f05: $30 $f4

    ldh [$e0], a                                  ; $4f07: $e0 $e0
    and e                                         ; $4f09: $a3
    ld b, $a7                                     ; $4f0a: $06 $a7
    ld b, $08                                     ; $4f0c: $06 $08
    nop                                           ; $4f0e: $00
    ld b, b                                       ; $4f0f: $40
    db $dd                                        ; $4f10: $dd
    ld d, e                                       ; $4f11: $53
    inc b                                         ; $4f12: $04
    sub h                                         ; $4f13: $94
    rst $30                                       ; $4f14: $f7
    ld h, e                                       ; $4f15: $63
    ld h, e                                       ; $4f16: $63
    inc h                                         ; $4f17: $24
    inc bc                                        ; $4f18: $03
    jr nz, jr_0bf_4ee3                            ; $4f19: $20 $c8

    rlca                                          ; $4f1b: $07
    db $10                                        ; $4f1c: $10
    ld a, [bc]                                    ; $4f1d: $0a
    ld d, l                                       ; $4f1e: $55
    ld [$c0ff], a                                 ; $4f1f: $ea $ff $c0
    adc a                                         ; $4f22: $8f
    add b                                         ; $4f23: $80
    ld e, d                                       ; $4f24: $5a
    rlca                                          ; $4f25: $07
    db $10                                        ; $4f26: $10
    ld [c], a                                     ; $4f27: $e2
    ld [$21f0], sp                                ; $4f28: $08 $f0 $21
    ret nz                                        ; $4f2b: $c0

    nop                                           ; $4f2c: $00
    ld bc, $0708                                  ; $4f2d: $01 $08 $07
    dec b                                         ; $4f30: $05
    add e                                         ; $4f31: $83
    add e                                         ; $4f32: $83
    add a                                         ; $4f33: $87
    add h                                         ; $4f34: $84
    and d                                         ; $4f35: $a2
    dec de                                        ; $4f36: $1b
    and e                                         ; $4f37: $a3
    nop                                           ; $4f38: $00
    dec bc                                        ; $4f39: $0b
    push af                                       ; $4f3a: $f5
    xor b                                         ; $4f3b: $a8
    rlca                                          ; $4f3c: $07
    adc h                                         ; $4f3d: $8c
    db $fc                                        ; $4f3e: $fc
    cp [hl]                                       ; $4f3f: $be
    ld d, d                                       ; $4f40: $52
    dec b                                         ; $4f41: $05
    inc bc                                        ; $4f42: $03
    ld [$bf20], sp                                ; $4f43: $08 $20 $bf
    rst $38                                       ; $4f46: $ff
    ldh a, [rNR30]                                ; $4f47: $f0 $1a
    sub c                                         ; $4f49: $91
    pop af                                        ; $4f4a: $f1
    db $d3                                        ; $4f4b: $d3
    ld a, [c]                                     ; $4f4c: $f2
    jp hl                                         ; $4f4d: $e9


    ld d, b                                       ; $4f4e: $50
    add hl, sp                                    ; $4f4f: $39
    ldh a, [$2a]                                  ; $4f50: $f0 $2a
    sbc l                                         ; $4f52: $9d
    ldh a, [rSC]                                  ; $4f53: $f0 $02
    ld a, [$9a7f]                                 ; $4f55: $fa $7f $9a
    sbc a                                         ; $4f58: $9f
    ld bc, $bfba                                  ; $4f59: $01 $ba $bf
    ld a, d                                       ; $4f5c: $7a
    ld a, a                                       ; $4f5d: $7f
    cp $f2                                        ; $4f5e: $fe $f2
    call nc, $0290                                ; $4f60: $d4 $90 $02
    nop                                           ; $4f63: $00
    ld hl, sp-$08                                 ; $4f64: $f8 $f8
    ret nc                                        ; $4f66: $d0

    ret nc                                        ; $4f67: $d0

    ret nz                                        ; $4f68: $c0

    ret nz                                        ; $4f69: $c0

    ld [$02ea], a                                 ; $4f6a: $ea $ea $02
    push af                                       ; $4f6d: $f5
    push af                                       ; $4f6e: $f5
    ld b, b                                       ; $4f6f: $40
    add b                                         ; $4f70: $80
    dec b                                         ; $4f71: $05
    add d                                         ; $4f72: $82
    db $10                                        ; $4f73: $10
    ld a, [bc]                                    ; $4f74: $0a
    rra                                           ; $4f75: $1f
    rst $20                                       ; $4f76: $e7
    jp $d00c                                      ; $4f77: $c3 $0c $d0


    ld [bc], a                                    ; $4f7a: $02
    db $10                                        ; $4f7b: $10
    ld a, [hl+]                                   ; $4f7c: $2a
    ldh a, [rP1]                                  ; $4f7d: $f0 $00
    dec c                                         ; $4f7f: $0d
    ld [bc], a                                    ; $4f80: $02
    ld [bc], a                                    ; $4f81: $02
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    ld c, d                                       ; $4f84: $4a
    nop                                           ; $4f85: $00
    ld bc, $01fe                                  ; $4f86: $01 $fe $01
    cp $00                                        ; $4f89: $fe $00
    ld [bc], a                                    ; $4f8b: $02
    ld [$88f0], sp                                ; $4f8c: $08 $f0 $88
    ld b, $00                                     ; $4f8f: $06 $00
    rst $38                                       ; $4f91: $ff
    add e                                         ; $4f92: $83
    ld a, h                                       ; $4f93: $7c
    ld h, d                                       ; $4f94: $62
    ld [bc], a                                    ; $4f95: $02
    inc bc                                        ; $4f96: $03
    inc b                                         ; $4f97: $04
    ld b, e                                       ; $4f98: $43
    ld sp, hl                                     ; $4f99: $f9
    sbc l                                         ; $4f9a: $9d
    ld c, [hl]                                    ; $4f9b: $4e
    or h                                          ; $4f9c: $b4
    ld a, [bc]                                    ; $4f9d: $0a
    xor l                                         ; $4f9e: $ad
    ld c, [hl]                                    ; $4f9f: $4e
    or h                                          ; $4fa0: $b4
    ld a, [bc]                                    ; $4fa1: $0a
    rra                                           ; $4fa2: $1f
    ld e, [hl]                                    ; $4fa3: $5e
    ret nz                                        ; $4fa4: $c0

    ret nz                                        ; $4fa5: $c0

    cpl                                           ; $4fa6: $2f
    ld e, [hl]                                    ; $4fa7: $5e
    ret nz                                        ; $4fa8: $c0

    or h                                          ; $4fa9: $b4
    ld [bc], a                                    ; $4faa: $02
    db $e4                                        ; $4fab: $e4
    ld [bc], a                                    ; $4fac: $02
    ld a, a                                       ; $4fad: $7f
    ld h, b                                       ; $4fae: $60
    ld a, a                                       ; $4faf: $7f
    ld l, d                                       ; $4fb0: $6a
    ld a, a                                       ; $4fb1: $7f
    ld b, b                                       ; $4fb2: $40
    ld [bc], a                                    ; $4fb3: $02
    ccf                                           ; $4fb4: $3f
    ld l, $3f                                     ; $4fb5: $2e $3f
    inc h                                         ; $4fb7: $24
    rra                                           ; $4fb8: $1f
    ld de, $0ae4                                  ; $4fb9: $11 $e4 $0a
    sbc $53                                       ; $4fbc: $de $53
    rst $18                                       ; $4fbe: $df
    ld bc, $5f00                                  ; $4fbf: $01 $00 $5f
    call nz, Call_000_1509                        ; $4fc2: $c4 $09 $15
    rra                                           ; $4fc5: $1f
    db $e4                                        ; $4fc6: $e4
    ld a, [bc]                                    ; $4fc7: $0a
    and h                                         ; $4fc8: $a4
    dec bc                                        ; $4fc9: $0b
    ldh a, [rBCPS]                                ; $4fca: $f0 $68
    inc c                                         ; $4fcc: $0c
    xor d                                         ; $4fcd: $aa
    dec bc                                        ; $4fce: $0b
    db $e4                                        ; $4fcf: $e4
    ld a, [bc]                                    ; $4fd0: $0a
    inc [hl]                                      ; $4fd1: $34

jr_0bf_4fd2:
    ld a, [de]                                    ; $4fd2: $1a
    ld a, a                                       ; $4fd3: $7f
    ld c, c                                       ; $4fd4: $49
    ld a, a                                       ; $4fd5: $7f
    ld d, l                                       ; $4fd6: $55
    jr c, jr_0bf_5017                             ; $4fd7: $38 $3e

    ld a, [hl+]                                   ; $4fd9: $2a
    inc [hl]                                      ; $4fda: $34
    dec l                                         ; $4fdb: $2d
    inc l                                         ; $4fdc: $2c
    inc l                                         ; $4fdd: $2c
    ld c, h                                       ; $4fde: $4c
    ld c, b                                       ; $4fdf: $48
    ccf                                           ; $4fe0: $3f
    ccf                                           ; $4fe1: $3f
    ld d, l                                       ; $4fe2: $55
    ld b, d                                       ; $4fe3: $42
    ld a, a                                       ; $4fe4: $7f
    ld c, h                                       ; $4fe5: $4c
    ld c, b                                       ; $4fe6: $48
    sbc h                                         ; $4fe7: $9c
    sbc a                                         ; $4fe8: $9f
    ld l, a                                       ; $4fe9: $6f
    rst $38                                       ; $4fea: $ff
    ld c, h                                       ; $4feb: $4c
    ld c, b                                       ; $4fec: $48
    ld [hl], b                                    ; $4fed: $70
    ld l, h                                       ; $4fee: $6c

Call_0bf_4fef:
    ldh a, [$80]                                  ; $4fef: $f0 $80
    ld a, [hl+]                                   ; $4ff1: $2a
    ld c, h                                       ; $4ff2: $4c
    jr jr_0bf_4fd2                                ; $4ff3: $18 $dd

    add b                                         ; $4ff5: $80
    ld [bc], a                                    ; $4ff6: $02
    ld c, h                                       ; $4ff7: $4c
    ld c, b                                       ; $4ff8: $48
    add b                                         ; $4ff9: $80
    add b                                         ; $4ffa: $80
    ld a, b                                       ; $4ffb: $78
    ld b, b                                       ; $4ffc: $40
    or b                                          ; $4ffd: $b0
    jr nc, jr_0bf_5076                            ; $4ffe: $30 $76

    rrca                                          ; $5000: $0f
    ldh [rIF], a                                  ; $5001: $e0 $0f
    ld d, h                                       ; $5003: $54
    ld [$ffbb], sp                                ; $5004: $08 $bb $ff
    or l                                          ; $5007: $b5
    nop                                           ; $5008: $00
    rst $38                                       ; $5009: $ff
    cp e                                          ; $500a: $bb
    rst $38                                       ; $500b: $ff
    ei                                            ; $500c: $fb
    ld a, a                                       ; $500d: $7f
    push af                                       ; $500e: $f5
    cp a                                          ; $500f: $bf
    ld [hl], l                                    ; $5010: $75
    ld b, c                                       ; $5011: $41
    ld a, a                                       ; $5012: $7f
    ld d, h                                       ; $5013: $54
    ld [$ffac], sp                                ; $5014: $08 $ac $ff

jr_0bf_5017:
    xor [hl]                                      ; $5017: $ae
    rst $38                                       ; $5018: $ff
    rst $08                                       ; $5019: $cf
    ld [$0806], sp                                ; $501a: $08 $06 $08
    rst $38                                       ; $501d: $ff
    cp a                                          ; $501e: $bf
    rst $18                                       ; $501f: $df
    rst $18                                       ; $5020: $df
    ld d, h                                       ; $5021: $54
    ld [$f929], sp                                ; $5022: $08 $29 $f9
    ld l, e                                       ; $5025: $6b

jr_0bf_5026:
    inc bc                                        ; $5026: $03
    ei                                            ; $5027: $fb
    and $ff                                       ; $5028: $e6 $ff
    rst $30                                       ; $502a: $f7
    db $fc                                        ; $502b: $fc
    cp e                                          ; $502c: $bb
    ld [hl], b                                    ; $502d: $70
    inc b                                         ; $502e: $04
    ld d, h                                       ; $502f: $54
    ld [$7758], sp                                ; $5030: $08 $58 $77
    ret c                                         ; $5033: $d8

    ld [bc], a                                    ; $5034: $02
    rst $30                                       ; $5035: $f7
    ld [bc], a                                    ; $5036: $02
    jr nz, @+$56                                  ; $5037: $20 $54

    ld [$c040], sp                                ; $5039: $08 $40 $c0
    ld h, b                                       ; $503c: $60
    adc a                                         ; $503d: $8f
    ldh [rSC], a                                  ; $503e: $e0 $02
    ldh a, [$90]                                  ; $5040: $f0 $90
    ld [$0270], a                                 ; $5042: $ea $70 $02
    nop                                           ; $5045: $00
    ld c, l                                       ; $5046: $4d
    ld h, b                                       ; $5047: $60
    ld [$485c], sp                                ; $5048: $08 $5c $48
    ld e, $f5                                     ; $504b: $1e $f5
    rst $38                                       ; $504d: $ff
    push af                                       ; $504e: $f5
    ld e, h                                       ; $504f: $5c
    ld d, b                                       ; $5050: $50
    ld l, [hl]                                    ; $5051: $6e
    ld c, $5c                                     ; $5052: $0e $5c
    jr c, jr_0bf_5026                             ; $5054: $38 $d0

    ld a, [bc]                                    ; $5056: $0a
    or l                                          ; $5057: $b5
    ld [hl], b                                    ; $5058: $70
    push af                                       ; $5059: $f5
    ld e, h                                       ; $505a: $5c
    ld c, b                                       ; $505b: $48
    ret nc                                        ; $505c: $d0

    ld a, [bc]                                    ; $505d: $0a
    ld e, h                                       ; $505e: $5c
    jr z, @-$1e                                   ; $505f: $28 $e0

    and b                                         ; $5061: $a0
    ret nz                                        ; $5062: $c0

    ret nz                                        ; $5063: $c0

    add c                                         ; $5064: $81
    ret nc                                        ; $5065: $d0

    ld e, d                                       ; $5066: $5a
    adc l                                         ; $5067: $8d
    adc l                                         ; $5068: $8d
    rra                                           ; $5069: $1f
    inc de                                        ; $506a: $13
    sbc a                                         ; $506b: $9f
    sbc e                                         ; $506c: $9b
    ret nz                                        ; $506d: $c0

    dec l                                         ; $506e: $2d
    nop                                           ; $506f: $00
    rrca                                          ; $5070: $0f
    ld a, [bc]                                    ; $5071: $0a
    ld h, a                                       ; $5072: $67
    ld h, h                                       ; $5073: $64
    ei                                            ; $5074: $fb
    cp e                                          ; $5075: $bb

jr_0bf_5076:
    and $3f                                       ; $5076: $e6 $3f
    sub b                                         ; $5078: $90
    ret nz                                        ; $5079: $c0

    ld e, l                                       ; $507a: $5d
    cp c                                          ; $507b: $b9
    ld sp, hl                                     ; $507c: $f9
    ret nz                                        ; $507d: $c0

    ld d, l                                       ; $507e: $55
    or [hl]                                       ; $507f: $b6
    rst $38                                       ; $5080: $ff
    ret c                                         ; $5081: $d8

    di                                            ; $5082: $f3
    nop                                           ; $5083: $00
    sub e                                         ; $5084: $93
    rst $38                                       ; $5085: $ff
    ld a, l                                       ; $5086: $7d
    rst $38                                       ; $5087: $ff
    ld l, c                                       ; $5088: $69
    or $7e                                        ; $5089: $f6 $7e
    db $f4                                        ; $508b: $f4
    ld bc, $f85c                                  ; $508c: $01 $5c $f8
    ld a, b                                       ; $508f: $78
    add sp, $78                                   ; $5090: $e8 $78
    ret nc                                        ; $5092: $d0

    ldh a, [$f2]                                  ; $5093: $f0 $f2
    ld c, $81                                     ; $5095: $0e $81
    ret nz                                        ; $5097: $c0

    ld c, d                                       ; $5098: $4a
    inc a                                         ; $5099: $3c
    daa                                           ; $509a: $27
    sbc h                                         ; $509b: $9c
    sub a                                         ; $509c: $97
    adc a                                         ; $509d: $8f
    adc a                                         ; $509e: $8f
    sub b                                         ; $509f: $90
    dec a                                         ; $50a0: $3d
    ld b, c                                       ; $50a1: $41
    dec b                                         ; $50a2: $05
    sub b                                         ; $50a3: $90
    dec b                                         ; $50a4: $05
    db $fc                                        ; $50a5: $fc
    db $fc                                        ; $50a6: $fc
    ld a, [hl]                                    ; $50a7: $7e
    cp $7e                                        ; $50a8: $fe $7e
    sub b                                         ; $50aa: $90

jr_0bf_50ab:
    ld [hl+], a                                   ; $50ab: $22
    jr nz, jr_0bf_50ab                            ; $50ac: $20 $fd

    rst $38                                       ; $50ae: $ff
    sub b                                         ; $50af: $90
    ld e, l                                       ; $50b0: $5d
    xor a                                         ; $50b1: $af
    cp $b7                                        ; $50b2: $fe $b7
    db $f4                                        ; $50b4: $f4
    db $d3                                        ; $50b5: $d3
    ld b, b                                       ; $50b6: $40
    di                                            ; $50b7: $f3
    sub b                                         ; $50b8: $90
    dec a                                         ; $50b9: $3d

jr_0bf_50ba:
    ldh a, [$1f]                                  ; $50ba: $f0 $1f
    cp l                                          ; $50bc: $bd
    dec de                                        ; $50bd: $1b
    ld d, b                                       ; $50be: $50
    rst $38                                       ; $50bf: $ff
    ld bc, $0068                                  ; $50c0: $01 $68 $00
    ld [bc], a                                    ; $50c3: $02
    ld e, b                                       ; $50c4: $58
    inc e                                         ; $50c5: $1c
    rra                                           ; $50c6: $1f
    jr c, jr_0bf_5108                             ; $50c7: $38 $3f

    nop                                           ; $50c9: $00
    db $f4                                        ; $50ca: $f4
    ld a, a                                       ; $50cb: $7f
    ldh [rIE], a                                  ; $50cc: $e0 $ff
    jp nz, $a1ff                                  ; $50ce: $c2 $ff $a1

    rst $38                                       ; $50d1: $ff
    nop                                           ; $50d2: $00
    inc d                                         ; $50d3: $14
    rst $38                                       ; $50d4: $ff
    ld b, b                                       ; $50d5: $40
    rst $38                                       ; $50d6: $ff
    ld l, b                                       ; $50d7: $68
    sbc a                                         ; $50d8: $9f
    sbc e                                         ; $50d9: $9b
    db $fc                                        ; $50da: $fc
    nop                                           ; $50db: $00
    or a                                          ; $50dc: $b7
    ld hl, sp-$54                                 ; $50dd: $f8 $ac
    ldh a, [$f8]                                  ; $50df: $f0 $f8
    ldh [$a0], a                                  ; $50e1: $e0 $a0
    ret nz                                        ; $50e3: $c0

    nop                                           ; $50e4: $00
    ret nz                                        ; $50e5: $c0

    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    nop                                           ; $50e8: $00
    ld e, e                                       ; $50e9: $5b
    rst $20                                       ; $50ea: $e7

jr_0bf_50eb:
    adc $77                                       ; $50eb: $ce $77
    nop                                           ; $50ed: $00
    push hl                                       ; $50ee: $e5
    ld a, [hl]                                    ; $50ef: $7e
    dec hl                                        ; $50f0: $2b
    ld a, h                                       ; $50f1: $7c
    ld e, l                                       ; $50f2: $5d
    jr c, jr_0bf_512a                             ; $50f3: $38 $35

    jr jr_0bf_50f7                                ; $50f5: $18 $00

jr_0bf_50f7:
    inc a                                         ; $50f7: $3c
    nop                                           ; $50f8: $00
    jr jr_0bf_50fb                                ; $50f9: $18 $00

jr_0bf_50fb:
    sbc e                                         ; $50fb: $9b
    rst $20                                       ; $50fc: $e7
    ld [hl], d                                    ; $50fd: $72
    rst $08                                       ; $50fe: $cf
    nop                                           ; $50ff: $00
    ld d, l                                       ; $5100: $55
    xor $45                                       ; $5101: $ee $45
    cp $ce                                        ; $5103: $fe $ce
    ld a, h                                       ; $5105: $7c
    ld l, d                                       ; $5106: $6a
    db $fc                                        ; $5107: $fc

jr_0bf_5108:
    ld [$fc72], sp                                ; $5108: $08 $72 $fc
    ldh a, [$fc]                                  ; $510b: $f0 $fc
    ld c, a                                       ; $510d: $4f
    ld h, b                                       ; $510e: $60
    rst $38                                       ; $510f: $ff
    dec d                                         ; $5110: $15
    dec de                                        ; $5111: $1b

Jump_0bf_5112:
    nop                                           ; $5112: $00
    ld [hl-], a                                   ; $5113: $32
    rra                                           ; $5114: $1f
    dec c                                         ; $5115: $0d
    ld e, $0a                                     ; $5116: $1e $0a
    dec e                                         ; $5118: $1d
    ld d, $09                                     ; $5119: $16 $09
    nop                                           ; $511b: $00
    ld e, h                                       ; $511c: $5c
    inc bc                                        ; $511d: $03
    ld a, [hl+]                                   ; $511e: $2a
    dec b                                         ; $511f: $05
    ld a, h                                       ; $5120: $7c
    inc bc                                        ; $5121: $03
    ld c, b                                       ; $5122: $48
    inc a                                         ; $5123: $3c
    nop                                           ; $5124: $00
    ret z                                         ; $5125: $c8

    jr c, jr_0bf_50ba                             ; $5126: $38 $92

    ld a, b                                       ; $5128: $78
    ld e, b                                       ; $5129: $58

jr_0bf_512a:
    ldh a, [$80]                                  ; $512a: $f0 $80
    ldh a, [rP1]                                  ; $512c: $f0 $00
    ld [hl], b                                    ; $512e: $70
    and b                                         ; $512f: $a0
    add b                                         ; $5130: $80
    ld h, b                                       ; $5131: $60
    ldh [rLCDC], a                                ; $5132: $e0 $40
    db $ec                                        ; $5134: $ec
    jr jr_0bf_5137                                ; $5135: $18 $00

jr_0bf_5137:
    ret c                                         ; $5137: $d8

    jr nc, jr_0bf_50eb                            ; $5138: $30 $b1

    ld h, b                                       ; $513a: $60
    ld h, e                                       ; $513b: $63
    ret nz                                        ; $513c: $c0

    add $81                                       ; $513d: $c6 $81
    nop                                           ; $513f: $00
    adc l                                         ; $5140: $8d
    inc bc                                        ; $5141: $03
    ld a, [de]                                    ; $5142: $1a
    rlca                                          ; $5143: $07
    dec [hl]                                      ; $5144: $35
    ld c, $45                                     ; $5145: $0e $45
    rst $38                                       ; $5147: $ff
    nop                                           ; $5148: $00
    ld c, d                                       ; $5149: $4a
    rst $38                                       ; $514a: $ff
    ld d, l                                       ; $514b: $55
    rst $38                                       ; $514c: $ff
    adc e                                         ; $514d: $8b
    rst $38                                       ; $514e: $ff
    add a                                         ; $514f: $87
    rst $38                                       ; $5150: $ff
    db $10                                        ; $5151: $10

jr_0bf_5152:
    jp z, $d6ff                                   ; $5152: $ca $ff $d6

    inc c                                         ; $5155: $0c
    nop                                           ; $5156: $00
    db $ed                                        ; $5157: $ed
    ld h, [hl]                                    ; $5158: $66
    rst $30                                       ; $5159: $f7
    ld l, [hl]                                    ; $515a: $6e
    nop                                           ; $515b: $00
    ld a, a                                       ; $515c: $7f
    db $fc                                        ; $515d: $fc
    ld a, e                                       ; $515e: $7b
    db $fc                                        ; $515f: $fc
    adc a                                         ; $5160: $8f
    ld [hl], b                                    ; $5161: $70
    cp $01                                        ; $5162: $fe $01
    add b                                         ; $5164: $80
    ld [bc], a                                    ; $5165: $02
    ld [$8427], sp                                ; $5166: $08 $27 $84
    dec hl                                        ; $5169: $2b
    inc c                                         ; $516a: $0c
    cpl                                           ; $516b: $2f
    ld [$000f], sp                                ; $516c: $08 $0f $00
    ld c, b                                       ; $516f: $48
    ld b, a                                       ; $5170: $47
    jr jr_0bf_5152                                ; $5171: $18 $df

    db $10                                        ; $5173: $10
    sbc a                                         ; $5174: $9f
    jr nc, @-$3f                                  ; $5175: $30 $bf

jr_0bf_5177:
    nop                                           ; $5177: $00
    jr nz, jr_0bf_5177                            ; $5178: $20 $fd

    ld [$19e9], sp                                ; $517a: $08 $e9 $19
    ld a, c                                       ; $517d: $79
    sub b                                         ; $517e: $90
    jp nc, Jump_000_3000                          ; $517f: $d2 $00 $30

    ld h, b                                       ; $5182: $60
    or d                                          ; $5183: $b2
    or d                                          ; $5184: $b2
    ld h, h                                       ; $5185: $64
    add h                                         ; $5186: $84
    ld h, b                                       ; $5187: $60
    ld l, l                                       ; $5188: $6d
    nop                                           ; $5189: $00
    ret nz                                        ; $518a: $c0

    push bc                                       ; $518b: $c5
    ld a, [$fec1]                                 ; $518c: $fa $c1 $fe
    add d                                         ; $518f: $82
    db $fd                                        ; $5190: $fd
    add b                                         ; $5191: $80
    jr nz, @+$01                                  ; $5192: $20 $ff

    inc bc                                        ; $5194: $03
    adc d                                         ; $5195: $8a
    db $10                                        ; $5196: $10
    ld bc, $a3fe                                  ; $5197: $01 $fe $a3
    pop bc                                        ; $519a: $c1
    db $eb                                        ; $519b: $eb
    nop                                           ; $519c: $00
    rst $30                                       ; $519d: $f7
    add hl, de                                    ; $519e: $19
    rst $38                                       ; $519f: $ff

jr_0bf_51a0:
    ld [hl], c                                    ; $51a0: $71
    add c                                         ; $51a1: $81
    pop af                                        ; $51a2: $f1
    ld bc, $04e1                                  ; $51a3: $01 $e1 $04
    inc bc                                        ; $51a6: $03
    ld [c], a                                     ; $51a7: $e2
    inc bc                                        ; $51a8: $03
    and $07                                       ; $51a9: $e6 $07
    ldh a, [$08]                                  ; $51ab: $f0 $08
    xor b                                         ; $51ad: $a8
    ld d, a                                       ; $51ae: $57
    ld [bc], a                                    ; $51af: $02
    ld d, e                                       ; $51b0: $53
    xor h                                         ; $51b1: $ac
    inc b                                         ; $51b2: $04
    ei                                            ; $51b3: $fb
    ld b, b                                       ; $51b4: $40
    cp a                                          ; $51b5: $bf
    ei                                            ; $51b6: $fb
    ld [$00ff], sp                                ; $51b7: $08 $ff $00
    nop                                           ; $51ba: $00
    cp a                                          ; $51bb: $bf
    ld b, b                                       ; $51bc: $40
    ld d, a                                       ; $51bd: $57
    xor b                                         ; $51be: $a8
    jr nz, jr_0bf_51a0                            ; $51bf: $20 $df

    ld [bc], a                                    ; $51c1: $02
    ld b, b                                       ; $51c2: $40
    db $fd                                        ; $51c3: $fd
    add hl, bc                                    ; $51c4: $09
    add hl, de                                    ; $51c5: $19
    scf                                           ; $51c6: $37
    ret z                                         ; $51c7: $c8

    adc d                                         ; $51c8: $8a
    ld [hl], l                                    ; $51c9: $75
    inc h                                         ; $51ca: $24
    db $db                                        ; $51cb: $db
    ld sp, $fe01                                  ; $51cc: $31 $01 $fe
    rla                                           ; $51cf: $17
    add hl, hl                                    ; $51d0: $29
    ld c, h                                       ; $51d1: $4c
    ld [$ff80], sp                                ; $51d2: $08 $80 $ff
    ret nz                                        ; $51d5: $c0

    ld a, [bc]                                    ; $51d6: $0a
    ld bc, $0480                                  ; $51d7: $01 $80 $04
    ld [$ff48], sp                                ; $51da: $08 $48 $ff
    ld b, c                                       ; $51dd: $41
    ldh [$30], a                                  ; $51de: $e0 $30
    pop hl                                        ; $51e0: $e1
    or e                                          ; $51e1: $b3
    nop                                           ; $51e2: $00
    rst $38                                       ; $51e3: $ff
    ld a, $ff                                     ; $51e4: $3e $ff
    ld d, c                                       ; $51e6: $51
    rst $38                                       ; $51e7: $ff
    dec a                                         ; $51e8: $3d
    db $fc                                        ; $51e9: $fc
    sbc b                                         ; $51ea: $98
    nop                                           ; $51eb: $00
    rst $38                                       ; $51ec: $ff
    dec de                                        ; $51ed: $1b
    rst $38                                       ; $51ee: $ff
    ccf                                           ; $51ef: $3f
    rst $18                                       ; $51f0: $df
    db $10                                        ; $51f1: $10
    rst $38                                       ; $51f2: $ff
    ld a, [bc]                                    ; $51f3: $0a
    nop                                           ; $51f4: $00
    rst $38                                       ; $51f5: $ff
    inc c                                         ; $51f6: $0c
    rst $38                                       ; $51f7: $ff
    rrca                                          ; $51f8: $0f
    ei                                            ; $51f9: $fb
    dec bc                                        ; $51fa: $0b
    ld sp, hl                                     ; $51fb: $f9
    ld b, $20                                     ; $51fc: $06 $20
    rst $38                                       ; $51fe: $ff
    inc bc                                        ; $51ff: $03
    ld a, [hl+]                                   ; $5200: $2a
    db $10                                        ; $5201: $10
    ld b, b                                       ; $5202: $40
    rst $38                                       ; $5203: $ff
    ld h, b                                       ; $5204: $60
    ccf                                           ; $5205: $3f
    and b                                         ; $5206: $a0
    jr nz, jr_0bf_5288                            ; $5207: $20 $7f

    ld b, b                                       ; $5209: $40
    jr c, jr_0bf_520c                             ; $520a: $38 $00

jr_0bf_520c:
    nop                                           ; $520c: $00
    rst $38                                       ; $520d: $ff
    db $10                                        ; $520e: $10
    ld hl, sp-$58                                 ; $520f: $f8 $a8
    nop                                           ; $5211: $00
    ldh a, [rSVBK]                                ; $5212: $f0 $70
    ldh [$c3], a                                  ; $5214: $e0 $c3
    pop hl                                        ; $5216: $e1
    and c                                         ; $5217: $a1

Call_0bf_5218:
    jp Jump_000_00c0                              ; $5218: $c3 $c0 $00


    nop                                           ; $521b: $00
    adc e                                         ; $521c: $8b
    rlca                                          ; $521d: $07
    ld e, h                                       ; $521e: $5c
    ccf                                           ; $521f: $3f
    jr nc, jr_0bf_5261                            ; $5220: $30 $3f

    ld h, d                                       ; $5222: $62
    nop                                           ; $5223: $00
    rst $38                                       ; $5224: $ff
    call $daff                                    ; $5225: $cd $ff $da
    rst $38                                       ; $5228: $ff
    push hl                                       ; $5229: $e5
    rst $38                                       ; $522a: $ff
    cp a                                          ; $522b: $bf
    nop                                           ; $522c: $00
    rst $38                                       ; $522d: $ff
    adc $3f                                       ; $522e: $ce $3f
    xor [hl]                                      ; $5230: $ae
    ld e, a                                       ; $5231: $5f
    ld h, [hl]                                    ; $5232: $66
    add $a0                                       ; $5233: $c6 $a0
    nop                                           ; $5235: $00
    ldh a, [rHDMA1]                               ; $5236: $f0 $51
    ld sp, hl                                     ; $5238: $f9
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $28                                       ; $523b: $ef
    rst $38                                       ; $523c: $ff
    ld e, d                                       ; $523d: $5a
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    db $e3                                        ; $5240: $e3
    db $fc                                        ; $5241: $fc
    adc $f1                                       ; $5242: $ce $f1
    nop                                           ; $5244: $00
    rst $38                                       ; $5245: $ff

jr_0bf_5246:
    ld [bc], a                                    ; $5246: $02
    nop                                           ; $5247: $00
    rst $38                                       ; $5248: $ff
    add hl, bc                                    ; $5249: $09
    rst $38                                       ; $524a: $ff
    and d                                         ; $524b: $a2
    rst $38                                       ; $524c: $ff
    ld d, a                                       ; $524d: $57
    rst $38                                       ; $524e: $ff
    db $fd                                        ; $524f: $fd
    ld [$f6ff], sp                                ; $5250: $08 $ff $f6
    rst $38                                       ; $5253: $ff
    ei                                            ; $5254: $fb
    ld c, [hl]                                    ; $5255: $4e
    ld [$207f], sp                                ; $5256: $08 $7f $20
    cp a                                          ; $5259: $bf
    inc b                                         ; $525a: $04
    cp d                                          ; $525b: $ba
    sbc a                                         ; $525c: $9f
    dec e                                         ; $525d: $1d
    cp a                                          ; $525e: $bf
    ld a, a                                       ; $525f: $7f
    ld [hl-], a                                   ; $5260: $32

jr_0bf_5261:
    nop                                           ; $5261: $00
    rrca                                          ; $5262: $0f
    rst $38                                       ; $5263: $ff
    nop                                           ; $5264: $00
    dec b                                         ; $5265: $05
    ei                                            ; $5266: $fb
    xor [hl]                                      ; $5267: $ae
    ld d, a                                       ; $5268: $57
    ld c, e                                       ; $5269: $4b
    cp h                                          ; $526a: $bc
    ld [hl], a                                    ; $526b: $77
    ld hl, sp+$20                                 ; $526c: $f8 $20
    sbc a                                         ; $526e: $9f
    ldh [$ba], a                                  ; $526f: $e0 $ba
    add hl, de                                    ; $5271: $19
    add sp, $17                                   ; $5272: $e8 $17
    db $f4                                        ; $5274: $f4
    dec bc                                        ; $5275: $0b
    ld a, e                                       ; $5276: $7b
    ld [bc], a                                    ; $5277: $02
    add h                                         ; $5278: $84
    ldh a, [rIE]                                  ; $5279: $f0 $ff
    ld a, a                                       ; $527b: $7f
    sbc a                                         ; $527c: $9f
    ld a, a                                       ; $527d: $7f
    ld l, a                                       ; $527e: $6f
    ld [$0000], sp                                ; $527f: $08 $00 $00
    or e                                          ; $5282: $b3
    ret nz                                        ; $5283: $c0

    jr nc, jr_0bf_5302                            ; $5284: $30 $7c

    ld l, [hl]                                    ; $5286: $6e
    ccf                                           ; $5287: $3f

jr_0bf_5288:
    ld l, a                                       ; $5288: $6f
    ld sp, $2900                                  ; $5289: $31 $00 $29
    ld sp, $3169                                  ; $528c: $31 $69 $31
    add hl, sp                                    ; $528f: $39
    ld hl, $2351                                  ; $5290: $21 $51 $23
    nop                                           ; $5293: $00
    or d                                          ; $5294: $b2

jr_0bf_5295:
    ld b, c                                       ; $5295: $41
    ld hl, sp+$00                                 ; $5296: $f8 $00
    cp $00                                        ; $5298: $fe $00
    ld a, [c]                                     ; $529a: $f2
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    ld l, h                                       ; $529d: $6c
    add b                                         ; $529e: $80
    ld a, [c]                                     ; $529f: $f2
    nop                                           ; $52a0: $00
    jp c, $f400                                   ; $52a1: $da $00 $f4

    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    or h                                          ; $52a6: $b4
    rst $38                                       ; $52a7: $ff
    ld l, $3f                                     ; $52a8: $2e $3f
    ld e, b                                       ; $52aa: $58
    ld a, a                                       ; $52ab: $7f
    ld d, h                                       ; $52ac: $54
    ld a, a                                       ; $52ad: $7f
    ld d, b                                       ; $52ae: $50
    jr c, jr_0bf_5295                             ; $52af: $38 $e4

    ld bc, $dad0                                  ; $52b1: $01 $d0 $da
    nop                                           ; $52b4: $00
    cp h                                          ; $52b5: $bc
    inc c                                         ; $52b6: $0c
    jr nc, jr_0bf_5319                            ; $52b7: $30 $60

    nop                                           ; $52b9: $00
    db $10                                        ; $52ba: $10
    jr c, jr_0bf_5246                             ; $52bb: $38 $89

    ld a, [bc]                                    ; $52bd: $0a
    ld c, a                                       ; $52be: $4f
    dec bc                                        ; $52bf: $0b
    ld c, e                                       ; $52c0: $4b
    inc e                                         ; $52c1: $1c
    nop                                           ; $52c2: $00
    sub h                                         ; $52c3: $94
    dec bc                                        ; $52c4: $0b
    ld a, c                                       ; $52c5: $79
    rlca                                          ; $52c6: $07
    ld d, $e8                                     ; $52c7: $16 $e8
    ld l, $d0                                     ; $52c9: $2e $d0
    nop                                           ; $52cb: $00
    ld e, l                                       ; $52cc: $5d
    and b                                         ; $52cd: $a0
    xor d                                         ; $52ce: $aa
    ld b, b                                       ; $52cf: $40
    ld d, d                                       ; $52d0: $52
    add b                                         ; $52d1: $80
    xor c                                         ; $52d2: $a9
    nop                                           ; $52d3: $00
    dec b                                         ; $52d4: $05
    ld d, d                                       ; $52d5: $52
    nop                                           ; $52d6: $00
    sub l                                         ; $52d7: $95
    nop                                           ; $52d8: $00
    ld a, [bc]                                    ; $52d9: $0a
    cp $00                                        ; $52da: $fe $00
    db $10                                        ; $52dc: $10
    ld c, d                                       ; $52dd: $4a
    ld de, $0201                                  ; $52de: $11 $01 $02

jr_0bf_52e1:
    db $fd                                        ; $52e1: $fd
    dec b                                         ; $52e2: $05
    ld a, [$f40a]                                 ; $52e3: $fa $0a $f4
    ldh a, [rNR30]                                ; $52e6: $f0 $1a
    ld [bc], a                                    ; $52e8: $02
    ld b, $10                                     ; $52e9: $06 $10
    rst $38                                       ; $52eb: $ff
    ld b, h                                       ; $52ec: $44
    rst $38                                       ; $52ed: $ff
    ld bc, $0016                                  ; $52ee: $01 $16 $00
    ldh [$08], a                                  ; $52f1: $e0 $08
    rst $38                                       ; $52f3: $ff

jr_0bf_52f4:
    jr nc, jr_0bf_52f4                            ; $52f4: $30 $fe

    rst $30                                       ; $52f6: $f7
    adc h                                         ; $52f7: $8c
    jr nc, jr_0bf_5346                            ; $52f8: $30 $4c

    ld [de], a                                    ; $52fa: $12
    ldh a, [rIE]                                  ; $52fb: $f0 $ff
    ldh [$df], a                                  ; $52fd: $e0 $df
    jr jr_0bf_52e1                                ; $52ff: $18 $e0

    cp a                                          ; $5301: $bf

jr_0bf_5302:
    ret nz                                        ; $5302: $c0

    db $fd                                        ; $5303: $fd
    db $10                                        ; $5304: $10
    ld e, h                                       ; $5305: $5c
    ld [bc], a                                    ; $5306: $02
    dec d                                         ; $5307: $15
    rst $28                                       ; $5308: $ef
    rlca                                          ; $5309: $07
    ld bc, $07ff                                  ; $530a: $01 $ff $07
    rst $38                                       ; $530d: $ff
    rrca                                          ; $530e: $0f
    rst $30                                       ; $530f: $f7
    daa                                           ; $5310: $27
    rst $18                                       ; $5311: $df
    ld [$0000], sp                                ; $5312: $08 $00 $00
    cp $0f                                        ; $5315: $fe $0f
    db $fc                                        ; $5317: $fc
    inc [hl]                                      ; $5318: $34

jr_0bf_5319:
    daa                                           ; $5319: $27
    daa                                           ; $531a: $27
    ld h, d                                       ; $531b: $62
    jp nz, $e700                                  ; $531c: $c2 $00 $e7

    inc de                                        ; $531f: $13
    and $00                                       ; $5320: $e6 $00
    rst $20                                       ; $5322: $e7
    ld [de], a                                    ; $5323: $12
    rst $20                                       ; $5324: $e7
    add l                                         ; $5325: $85
    nop                                           ; $5326: $00
    ld h, [hl]                                    ; $5327: $66
    inc b                                         ; $5328: $04
    rst $20                                       ; $5329: $e7
    halt                                          ; $532a: $76
    db $fc                                        ; $532b: $fc
    cp a                                          ; $532c: $bf
    cp $d9                                        ; $532d: $fe $d9
    ld [bc], a                                    ; $532f: $02
    rst $38                                       ; $5330: $ff
    or a                                          ; $5331: $b7
    cp $6a                                        ; $5332: $fe $6a
    rst $38                                       ; $5334: $ff
    cp d                                          ; $5335: $ba
    ld d, $01                                     ; $5336: $16 $01
    xor [hl]                                      ; $5338: $ae
    nop                                           ; $5339: $00
    rst $38                                       ; $533a: $ff
    db $fd                                        ; $533b: $fd
    ld a, [hl]                                    ; $533c: $7e
    rst $30                                       ; $533d: $f7
    ld a, a                                       ; $533e: $7f
    cp $3f                                        ; $533f: $fe $3f
    db $fd                                        ; $5341: $fd
    db $10                                        ; $5342: $10
    rra                                           ; $5343: $1f
    rst $38                                       ; $5344: $ff
    rra                                           ; $5345: $1f

jr_0bf_5346:
    dec [hl]                                      ; $5346: $35
    nop                                           ; $5347: $00
    rrca                                          ; $5348: $0f
    rst $38                                       ; $5349: $ff
    rlca                                          ; $534a: $07
    xor b                                         ; $534b: $a8
    nop                                           ; $534c: $00
    ld b, b                                       ; $534d: $40
    jp $a500                                      ; $534e: $c3 $00 $a5


    ld b, d                                       ; $5351: $42
    dec bc                                        ; $5352: $0b
    add $8e                                       ; $5353: $c6 $8e
    nop                                           ; $5355: $00
    rst $00                                       ; $5356: $c7
    adc [hl]                                      ; $5357: $8e
    rst $00                                       ; $5358: $c7
    sub $8f                                       ; $5359: $d6 $8f
    push bc                                       ; $535b: $c5
    sbc a                                         ; $535c: $9f
    dec h                                         ; $535d: $25
    nop                                           ; $535e: $00
    jr jr_0bf_53d5                                ; $535f: $18 $74

    jr c, @-$56                                   ; $5361: $38 $a8

    ld [hl], b                                    ; $5363: $70
    jp hl                                         ; $5364: $e9


    ld [hl], b                                    ; $5365: $70
    ld e, d                                       ; $5366: $5a
    nop                                           ; $5367: $00
    pop hl                                        ; $5368: $e1
    jp c, $9be1                                   ; $5369: $da $e1 $9b

    pop hl                                        ; $536c: $e1
    adc l                                         ; $536d: $8d
    di                                            ; $536e: $f3
    ld [$7000], a                                 ; $536f: $ea $00 $70
    ld hl, sp+$60                                 ; $5372: $f8 $60
    ld d, b                                       ; $5374: $50
    ldh [$d5], a                                  ; $5375: $e0 $d5
    ldh [rHDMA3], a                               ; $5377: $e0 $53
    nop                                           ; $5379: $00
    ldh [$f4], a                                  ; $537a: $e0 $f4
    pop bc                                        ; $537c: $c1
    sub $e1                                       ; $537d: $d6 $e1
    cp l                                          ; $537f: $bd

jr_0bf_5380:
    jp Jump_000_0034                              ; $5380: $c3 $34 $00


    ld hl, sp+$6c                                 ; $5383: $f8 $6c
    ldh a, [$95]                                  ; $5385: $f0 $95
    ld hl, sp+$5d                                 ; $5387: $f8 $5d
    or b                                          ; $5389: $b0
    or h                                          ; $538a: $b4
    nop                                           ; $538b: $00
    add hl, de                                    ; $538c: $19
    inc a                                         ; $538d: $3c
    ld de, $1916                                  ; $538e: $11 $16 $19
    inc a                                         ; $5391: $3c
    inc de                                        ; $5392: $13
    push hl                                       ; $5393: $e5
    nop                                           ; $5394: $00
    ld [hl], $ac                                  ; $5395: $36 $ac
    ld h, a                                       ; $5397: $67
    db $ed                                        ; $5398: $ed
    ld b, a                                       ; $5399: $47
    dec b                                         ; $539a: $05
    rst $08                                       ; $539b: $cf
    sub a                                         ; $539c: $97
    ld bc, $138f                                  ; $539d: $01 $8f $13
    ld c, $20                                     ; $53a0: $0e $20
    ld e, $66                                     ; $53a2: $1e $66
    inc e                                         ; $53a4: $1c
    ldh a, [$2a]                                  ; $53a5: $f0 $2a
    nop                                           ; $53a7: $00
    cp $01                                        ; $53a8: $fe $01
    db $fd                                        ; $53aa: $fd
    inc bc                                        ; $53ab: $03
    ei                                            ; $53ac: $fb
    ld b, $f4                                     ; $53ad: $06 $f4
    ld c, $00                                     ; $53af: $0e $00
    rst $38                                       ; $53b1: $ff
    add b                                         ; $53b2: $80
    ld a, d                                       ; $53b3: $7a
    add b                                         ; $53b4: $80
    rst $28                                       ; $53b5: $ef
    nop                                           ; $53b6: $00
    ei                                            ; $53b7: $fb
    rlca                                          ; $53b8: $07
    nop                                           ; $53b9: $00
    rst $28                                       ; $53ba: $ef
    rra                                           ; $53bb: $1f
    jp c, $b53f                                   ; $53bc: $da $3f $b5

    ld a, a                                       ; $53bf: $7f
    ld [$007f], a                                 ; $53c0: $ea $7f $00
    ld l, l                                       ; $53c3: $6d
    sbc a                                         ; $53c4: $9f
    cp a                                          ; $53c5: $bf
    add e                                         ; $53c6: $83
    ld [hl], e                                    ; $53c7: $73
    add a                                         ; $53c8: $87
    rst $20                                       ; $53c9: $e7
    ld c, $00                                     ; $53ca: $0e $00
    ld a, a                                       ; $53cc: $7f
    inc c                                         ; $53cd: $0c
    db $dd                                        ; $53ce: $dd
    jr @+$01                                      ; $53cf: $18 $ff

    jr nc, jr_0bf_5380                            ; $53d1: $30 $ad

    ld [hl], b                                    ; $53d3: $70
    nop                                           ; $53d4: $00

jr_0bf_53d5:
    sub b                                         ; $53d5: $90
    add d                                         ; $53d6: $82
    dec h                                         ; $53d7: $25
    sub b                                         ; $53d8: $90
    nop                                           ; $53d9: $00
    dec h                                         ; $53da: $25
    ld h, l                                       ; $53db: $65
    add hl, bc                                    ; $53dc: $09
    nop                                           ; $53dd: $00
    ld h, e                                       ; $53de: $63
    add hl, bc                                    ; $53df: $09
    ld d, e                                       ; $53e0: $53
    ld [bc], a                                    ; $53e1: $02
    db $d3                                        ; $53e2: $d3
    ld [bc], a                                    ; $53e3: $02
    sub b                                         ; $53e4: $90
    ld b, $00                                     ; $53e5: $06 $00
    cp $09                                        ; $53e7: $fe $09
    rst $28                                       ; $53e9: $ef
    add hl, de                                    ; $53ea: $19
    db $ed                                        ; $53eb: $ed
    dec de                                        ; $53ec: $1b
    xor a                                         ; $53ed: $af
    ld e, d                                       ; $53ee: $5a
    nop                                           ; $53ef: $00
    or d                                          ; $53f0: $b2
    sbc $fc                                       ; $53f1: $de $fc
    or [hl]                                       ; $53f3: $b6
    xor $f4                                       ; $53f4: $ee $f4
    db $10                                        ; $53f6: $10
    db $ec                                        ; $53f7: $ec
    nop                                           ; $53f8: $00
    db $eb                                        ; $53f9: $eb
    ld a, a                                       ; $53fa: $7f
    ld d, l                                       ; $53fb: $55
    ld a, a                                       ; $53fc: $7f
    ld l, d                                       ; $53fd: $6a
    ld a, a                                       ; $53fe: $7f
    rst $10                                       ; $53ff: $d7
    ld a, [hl]                                    ; $5400: $7e
    nop                                           ; $5401: $00
    db $ec                                        ; $5402: $ec
    ld a, a                                       ; $5403: $7f
    ld a, a                                       ; $5404: $7f
    db $fd                                        ; $5405: $fd
    ld a, a                                       ; $5406: $7f
    ld sp, hl                                     ; $5407: $f9
    jp Jump_000_00fc                              ; $5408: $c3 $fc $00


    ld [bc], a                                    ; $540b: $02
    ld [hl+], a                                   ; $540c: $22
    ld [de], a                                    ; $540d: $12
    jr nz, jr_0bf_5476                            ; $540e: $20 $66

    jr nz, jr_0bf_5472                            ; $5410: $20 $60

    inc h                                         ; $5412: $24
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    ld h, h                                       ; $5415: $64
    db $fc                                        ; $5416: $fc

Jump_0bf_5417:
    ld b, h                                       ; $5417: $44
    add sp, $58                                   ; $5418: $e8 $58
    ld a, c                                       ; $541a: $79
    ldh a, [rP1]                                  ; $541b: $f0 $00
    cp a                                          ; $541d: $bf
    ld b, b                                       ; $541e: $40
    ld e, a                                       ; $541f: $5f
    and b                                         ; $5420: $a0
    ccf                                           ; $5421: $3f
    ret nz                                        ; $5422: $c0

    rra                                           ; $5423: $1f
    ldh [rP1], a                                  ; $5424: $e0 $00
    rrca                                          ; $5426: $0f
    ldh a, [rNR22]                                ; $5427: $f0 $17
    add sp, $0a                                   ; $5429: $e8 $0a
    push af                                       ; $542b: $f5
    dec b                                         ; $542c: $05
    ld a, [$8200]                                 ; $542d: $fa $00 $82
    rst $38                                       ; $5430: $ff
    sbc d                                         ; $5431: $9a
    rst $38                                       ; $5432: $ff
    ld l, d                                       ; $5433: $6a
    rst $20                                       ; $5434: $e7
    and h                                         ; $5435: $a4
    rst $28                                       ; $5436: $ef
    nop                                           ; $5437: $00
    jp nc, $81ff                                  ; $5438: $d2 $ff $81

    ld a, a                                       ; $543b: $7f
    cpl                                           ; $543c: $2f
    ld a, a                                       ; $543d: $7f
    cp $f1                                        ; $543e: $fe $f1
    nop                                           ; $5440: $00
    ret c                                         ; $5441: $d8

    ccf                                           ; $5442: $3f
    or b                                          ; $5443: $b0
    ld e, a                                       ; $5444: $5f
    and b                                         ; $5445: $a0
    ld a, a                                       ; $5446: $7f
    and b                                         ; $5447: $a0
    ld a, a                                       ; $5448: $7f
    ld bc, $bf67                                  ; $5449: $01 $67 $bf
    db $fd                                        ; $544c: $fd
    ld a, $30                                     ; $544d: $3e $30
    ldh [rNR10], a                                ; $544f: $e0 $10
    nop                                           ; $5451: $00
    ld [bc], a                                    ; $5452: $02
    or b                                          ; $5453: $b0
    sub c                                         ; $5454: $91
    dec bc                                        ; $5455: $0b
    add b                                         ; $5456: $80
    ld [hl], b                                    ; $5457: $70
    ld a, [bc]                                    ; $5458: $0a
    ld b, d                                       ; $5459: $42
    ld [de], a                                    ; $545a: $12
    ld [hl], $27                                  ; $545b: $36 $27
    ld [hl], d                                    ; $545d: $72
    ld h, a                                       ; $545e: $67
    nop                                           ; $545f: $00
    or e                                          ; $5460: $b3
    db $d3                                        ; $5461: $d3
    ld [hl], c                                    ; $5462: $71
    sbc c                                         ; $5463: $99
    xor e                                         ; $5464: $ab
    ld e, [hl]                                    ; $5465: $5e
    ld e, [hl]                                    ; $5466: $5e
    xor h                                         ; $5467: $ac
    nop                                           ; $5468: $00
    inc c                                         ; $5469: $0c
    ld hl, sp+$18                                 ; $546a: $f8 $18
    ld hl, sp+$65                                 ; $546c: $f8 $65
    inc c                                         ; $546e: $0c
    cp $08                                        ; $546f: $fe $08
    nop                                           ; $5471: $00

jr_0bf_5472:
    ldh a, [rNR23]                                ; $5472: $f0 $18
    ld l, c                                       ; $5474: $69
    or b                                          ; $5475: $b0

jr_0bf_5476:
    or e                                          ; $5476: $b3
    ld h, c                                       ; $5477: $61
    rst $20                                       ; $5478: $e7
    jp nz, $8c00                                  ; $5479: $c2 $00 $8c

    rst $00                                       ; $547c: $c7
    sbc b                                         ; $547d: $98
    rrca                                          ; $547e: $0f
    rst $30                                       ; $547f: $f7
    rst $38                                       ; $5480: $ff

jr_0bf_5481:
    xor e                                         ; $5481: $ab
    sbc [hl]                                      ; $5482: $9e
    nop                                           ; $5483: $00
    ldh a, [$cf]                                  ; $5484: $f0 $cf
    db $f4                                        ; $5486: $f4
    ld l, a                                       ; $5487: $6f
    ld sp, $346f                                  ; $5488: $31 $6f $34
    ccf                                           ; $548b: $3f
    nop                                           ; $548c: $00
    cp c                                          ; $548d: $b9
    rra                                           ; $548e: $1f
    rst $08                                       ; $548f: $cf
    sbc a                                         ; $5490: $9f
    ld b, e                                       ; $5491: $43
    ld h, c                                       ; $5492: $61
    ldh [$31], a                                  ; $5493: $e0 $31
    nop                                           ; $5495: $00
    ret nc                                        ; $5496: $d0

    jr jr_0bf_5481                                ; $5497: $18 $e8

    inc c                                         ; $5499: $0c
    db $fc                                        ; $549a: $fc
    ld b, $ff                                     ; $549b: $06 $ff
    ld [bc], a                                    ; $549d: $02
    ld bc, $5ba5                                  ; $549e: $01 $a5 $5b
    ld b, b                                       ; $54a1: $40
    cp a                                          ; $54a2: $bf
    sbc a                                         ; $54a3: $9f
    add b                                         ; $54a4: $80
    ld a, a                                       ; $54a5: $7f
    ld [c], a                                     ; $54a6: $e2
    inc sp                                        ; $54a7: $33
    nop                                           ; $54a8: $00
    ld a, a                                       ; $54a9: $7f
    add b                                         ; $54aa: $80
    rst $10                                       ; $54ab: $d7
    xor b                                         ; $54ac: $a8
    ld e, a                                       ; $54ad: $5f
    add sp, -$61                                  ; $54ae: $e8 $9f
    ret c                                         ; $54b0: $d8

    nop                                           ; $54b1: $00
    ld [hl], a                                    ; $54b2: $77
    sbc b                                         ; $54b3: $98
    ld e, a                                       ; $54b4: $5f
    or b                                          ; $54b5: $b0
    xor a                                         ; $54b6: $af
    ld [hl], b                                    ; $54b7: $70
    ccf                                           ; $54b8: $3f
    ldh [rSTAT], a                                ; $54b9: $e0 $41
    ld e, a                                       ; $54bb: $5f
    xor b                                         ; $54bc: $a8
    ld bc, $e0df                                  ; $54bd: $01 $df $e0
    ld [hl-], a                                   ; $54c0: $32
    db $fd                                        ; $54c1: $fd
    rrca                                          ; $54c2: $0f
    dec b                                         ; $54c3: $05
    inc [hl]                                      ; $54c4: $34
    nop                                           ; $54c5: $00
    ld bc, $aafe                                  ; $54c6: $01 $fe $aa
    add c                                         ; $54c9: $81
    cp a                                          ; $54ca: $bf
    add b                                         ; $54cb: $80
    cp l                                          ; $54cc: $bd
    ld [bc], a                                    ; $54cd: $02
    nop                                           ; $54ce: $00
    ld a, [hl]                                    ; $54cf: $7e
    ld bc, $07f8                                  ; $54d0: $01 $f8 $07
    ld a, [c]                                     ; $54d3: $f2
    dec c                                         ; $54d4: $0d
    add sp, $17                                   ; $54d5: $e8 $17
    nop                                           ; $54d7: $00
    ldh a, [rIF]                                  ; $54d8: $f0 $0f
    nop                                           ; $54da: $00
    ret nz                                        ; $54db: $c0

    add hl, hl                                    ; $54dc: $29
    ld hl, sp-$0b                                 ; $54dd: $f8 $f5
    rrca                                          ; $54df: $0f
    nop                                           ; $54e0: $00
    sub e                                         ; $54e1: $93
    inc bc                                        ; $54e2: $03
    rst $38                                       ; $54e3: $ff
    nop                                           ; $54e4: $00
    xor l                                         ; $54e5: $ad
    nop                                           ; $54e6: $00
    ld [hl], a                                    ; $54e7: $77
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    adc a                                         ; $54ea: $8f
    nop                                           ; $54eb: $00
    pop af                                        ; $54ec: $f1
    inc bc                                        ; $54ed: $03
    xor e                                         ; $54ee: $ab
    rlca                                          ; $54ef: $07
    db $dd                                        ; $54f0: $dd
    ld c, $00                                     ; $54f1: $0e $00
    or h                                          ; $54f3: $b4
    jr jr_0bf_555d                                ; $54f4: $18 $67

    nop                                           ; $54f6: $00
    xor b                                         ; $54f7: $a8
    nop                                           ; $54f8: $00
    cp c                                          ; $54f9: $b9
    cp $00                                        ; $54fa: $fe $00
    and $1f                                       ; $54fc: $e6 $1f
    or a                                          ; $54fe: $b7
    nop                                           ; $54ff: $00
    rrca                                          ; $5500: $0f
    nop                                           ; $5501: $00
    ld e, [hl]                                    ; $5502: $5e
    ld bc, $9f00                                  ; $5503: $01 $00 $9f
    ld bc, $0779                                  ; $5506: $01 $79 $07
    ccf                                           ; $5509: $3f
    inc bc                                        ; $550a: $03
    ld [hl], d                                    ; $550b: $72
    rrca                                          ; $550c: $0f
    nop                                           ; $550d: $00
    and a                                         ; $550e: $a7
    rra                                           ; $550f: $1f
    ld b, [hl]                                    ; $5510: $46
    ld hl, sp+$0d                                 ; $5511: $f8 $0d
    ldh a, [rNR30]                                ; $5513: $f0 $1a
    ldh [rP1], a                                  ; $5515: $e0 $00
    inc [hl]                                      ; $5517: $34
    ret nz                                        ; $5518: $c0

    ld l, c                                       ; $5519: $69
    add b                                         ; $551a: $80
    jp nc, $a600                                  ; $551b: $d2 $00 $a6

    inc bc                                        ; $551e: $03
    db $10                                        ; $551f: $10
    ld b, h                                       ; $5520: $44
    dec b                                         ; $5521: $05
    dec h                                         ; $5522: $25
    ld h, c                                       ; $5523: $61
    inc b                                         ; $5524: $04
    sub l                                         ; $5525: $95
    rst $38                                       ; $5526: $ff
    jr nz, @+$01                                  ; $5527: $20 $ff

    ld b, b                                       ; $5529: $40
    ld [$044c], sp                                ; $552a: $08 $4c $04
    ld bc, $4bfe                                  ; $552d: $01 $fe $4b
    db $f4                                        ; $5530: $f4
    add a                                         ; $5531: $87
    rst $38                                       ; $5532: $ff
    nop                                           ; $5533: $00
    sbc a                                         ; $5534: $9f
    ld l, a                                       ; $5535: $6f
    ld h, a                                       ; $5536: $67
    rst $08                                       ; $5537: $cf
    ld c, e                                       ; $5538: $4b
    call z, $c89f                                 ; $5539: $cc $9f $c8
    nop                                           ; $553c: $00
    rst $10                                       ; $553d: $d7
    sbc b                                         ; $553e: $98
    sbc a                                         ; $553f: $9f
    sub b                                         ; $5540: $90
    sbc a                                         ; $5541: $9f
    ret nc                                        ; $5542: $d0

    and e                                         ; $5543: $a3
    rst $00                                       ; $5544: $c7
    nop                                           ; $5545: $00
    adc h                                         ; $5546: $8c
    rra                                           ; $5547: $1f
    ld [hl], l                                    ; $5548: $75
    ld a, [hl-]                                   ; $5549: $3a
    set 6, h                                      ; $554a: $cb $f4
    dec [hl]                                      ; $554c: $35
    ret nz                                        ; $554d: $c0

    nop                                           ; $554e: $00
    ld h, d                                       ; $554f: $62
    add c                                         ; $5550: $81
    sub $01                                       ; $5551: $d6 $01
    and e                                         ; $5553: $a3
    ld bc, $ff7c                                  ; $5554: $01 $7c $ff
    nop                                           ; $5557: $00
    ld a, d                                       ; $5558: $7a
    rst $38                                       ; $5559: $ff
    ld [hl], l                                    ; $555a: $75
    cp $e2                                        ; $555b: $fe $e2

jr_0bf_555d:
    db $fd                                        ; $555d: $fd
    set 6, a                                      ; $555e: $cb $f7
    nop                                           ; $5560: $00
    sub [hl]                                      ; $5561: $96
    rst $28                                       ; $5562: $ef
    jp c, $b5bd                                   ; $5563: $da $bd $b5

    ld a, [$ff55]                                 ; $5566: $fa $55 $ff
    db $10                                        ; $5569: $10
    xor a                                         ; $556a: $af
    rst $38                                       ; $556b: $ff
    rst $10                                       ; $556c: $d7
    inc l                                         ; $556d: $2c
    inc bc                                        ; $556e: $03
    ld l, a                                       ; $556f: $6f
    cp $bd                                        ; $5570: $fe $bd
    cp $00                                        ; $5572: $fe $00
    ei                                            ; $5574: $fb
    db $fc                                        ; $5575: $fc
    ld a, a                                       ; $5576: $7f
    ld hl, sp+$5e                                 ; $5577: $f8 $5e
    rrca                                          ; $5579: $0f
    dec hl                                        ; $557a: $2b
    rra                                           ; $557b: $1f
    nop                                           ; $557c: $00
    ld a, $8f                                     ; $557d: $3e $8f
    ld b, l                                       ; $557f: $45
    adc a                                         ; $5580: $8f
    rlca                                          ; $5581: $07
    rst $08                                       ; $5582: $cf
    dec h                                         ; $5583: $25
    rst $08                                       ; $5584: $cf
    nop                                           ; $5585: $00
    ld b, $ef                                     ; $5586: $06 $ef
    rrca                                          ; $5588: $0f
    rst $20                                       ; $5589: $e7
    sbc $ac                                       ; $558a: $de $ac
    ret c                                         ; $558c: $d8

    ld a, a                                       ; $558d: $7f
    nop                                           ; $558e: $00
    jr jr_0bf_55d0                                ; $558f: $18 $3f

    call c, $e89b                                 ; $5591: $dc $9b $e8
    ld c, a                                       ; $5594: $4f
    inc h                                         ; $5595: $24
    cpl                                           ; $5596: $2f
    nop                                           ; $5597: $00
    sbc [hl]                                      ; $5598: $9e
    dec h                                         ; $5599: $25
    inc [hl]                                      ; $559a: $34
    rlca                                          ; $559b: $07
    dec hl                                        ; $559c: $2b
    pop bc                                        ; $559d: $c1
    inc d                                         ; $559e: $14
    ldh [rP1], a                                  ; $559f: $e0 $00
    ld [bc], a                                    ; $55a1: $02
    db $fc                                        ; $55a2: $fc
    add c                                         ; $55a3: $81
    rst $38                                       ; $55a4: $ff
    ld [c], a                                     ; $55a5: $e2
    rst $38                                       ; $55a6: $ff
    ld [hl], h                                    ; $55a7: $74
    cp $00                                        ; $55a8: $fe $00
    or [hl]                                       ; $55aa: $b6
    db $fc                                        ; $55ab: $fc
    ld e, l                                       ; $55ac: $5d
    db $fc                                        ; $55ad: $fc
    or h                                          ; $55ae: $b4
    ld a, a                                       ; $55af: $7f
    ld e, d                                       ; $55b0: $5a
    cp a                                          ; $55b1: $bf
    nop                                           ; $55b2: $00
    xor a                                         ; $55b3: $af
    rst $18                                       ; $55b4: $df
    ld d, a                                       ; $55b5: $57
    rst $28                                       ; $55b6: $ef
    and c                                         ; $55b7: $a1
    rst $38                                       ; $55b8: $ff
    ld sp, hl                                     ; $55b9: $f9
    rst $30                                       ; $55ba: $f7
    dec b                                         ; $55bb: $05
    ld a, [$f8fd]                                 ; $55bc: $fa $fd $f8
    rst $38                                       ; $55bf: $ff
    ld a, [$025c]                                 ; $55c0: $fa $5c $02

jr_0bf_55c3:
    cp $5a                                        ; $55c3: $fe $5a
    ld [bc], a                                    ; $55c5: $02
    jr nz, jr_0bf_55c3                            ; $55c6: $20 $fb

    rlca                                          ; $55c8: $07
    xor l                                         ; $55c9: $ad
    inc bc                                        ; $55ca: $03
    ld bc, $00ff                                  ; $55cb: $01 $ff $00
    db $ec                                        ; $55ce: $ec
    inc de                                        ; $55cf: $13

jr_0bf_55d0:
    nop                                           ; $55d0: $00
    and d                                         ; $55d1: $a2
    ld e, l                                       ; $55d2: $5d
    rst $18                                       ; $55d3: $df
    jr nz, @-$44                                  ; $55d4: $20 $ba

    ld b, l                                       ; $55d6: $45
    ld l, a                                       ; $55d7: $6f
    sub b                                         ; $55d8: $90
    inc b                                         ; $55d9: $04
    db $fd                                        ; $55da: $fd
    ld [bc], a                                    ; $55db: $02
    db $eb                                        ; $55dc: $eb
    nop                                           ; $55dd: $00
    push af                                       ; $55de: $f5
    ld c, $15                                     ; $55df: $0e $15
    xor d                                         ; $55e1: $aa
    ld d, l                                       ; $55e2: $55
    nop                                           ; $55e3: $00
    cp l                                          ; $55e4: $bd
    ld [bc], a                                    ; $55e5: $02
    rst $10                                       ; $55e6: $d7
    ld [$007f], sp                                ; $55e7: $08 $7f $00
    adc e                                         ; $55ea: $8b
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    ld e, $00                                     ; $55ed: $1e $00
    push de                                       ; $55ef: $d5
    ld a, [bc]                                    ; $55f0: $0a
    xor $01                                       ; $55f1: $ee $01
    cp e                                          ; $55f3: $bb
    inc b                                         ; $55f4: $04
    nop                                           ; $55f5: $00
    ld d, a                                       ; $55f6: $57
    ld [$1886], sp                                ; $55f7: $08 $86 $18
    ld e, l                                       ; $55fa: $5d
    jr nc, jr_0bf_5677                            ; $55fb: $30 $7a

    jr nc, jr_0bf_55ff                            ; $55fd: $30 $00

jr_0bf_55ff:
    dec l                                         ; $55ff: $2d
    ld [hl], b                                    ; $5600: $70
    adc l                                         ; $5601: $8d
    inc bc                                        ; $5602: $03
    add e                                         ; $5603: $83
    ld b, $2d                                     ; $5604: $06 $2d
    ld b, $00                                     ; $5606: $06 $00
    rra                                           ; $5608: $1f
    inc c                                         ; $5609: $0c
    ld l, b                                       ; $560a: $68
    ld e, $3b                                     ; $560b: $1e $3b
    inc e                                         ; $560d: $1c
    ld d, $78                                     ; $560e: $16 $78
    nop                                           ; $5610: $00
    or [hl]                                       ; $5611: $b6
    ld a, b                                       ; $5612: $78
    rst $38                                       ; $5613: $ff
    add hl, sp                                    ; $5614: $39
    db $f4                                        ; $5615: $f4
    dec sp                                        ; $5616: $3b
    db $db                                        ; $5617: $db
    ld a, $10                                     ; $5618: $3e $10
    db $d3                                        ; $561a: $d3
    ld a, $d5                                     ; $561b: $3e $d5
    ld [bc], a                                    ; $561d: $02
    nop                                           ; $561e: $00
    rst $18                                       ; $561f: $df
    inc [hl]                                      ; $5620: $34
    rst $28                                       ; $5621: $ef
    inc [hl]                                      ; $5622: $34
    nop                                           ; $5623: $00
    and h                                         ; $5624: $a4
    nop                                           ; $5625: $00
    jp nc, $bd00                                  ; $5626: $d2 $00 $bd

    nop                                           ; $5629: $00
    ld l, d                                       ; $562a: $6a
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    rst $18                                       ; $562d: $df
    nop                                           ; $562e: $00
    or l                                          ; $562f: $b5
    nop                                           ; $5630: $00
    ld a, [hl]                                    ; $5631: $7e
    add b                                         ; $5632: $80
    xor e                                         ; $5633: $ab
    add b                                         ; $5634: $80
    nop                                           ; $5635: $00
    ld b, $58                                     ; $5636: $06 $58
    sbc a                                         ; $5638: $9f
    db $10                                        ; $5639: $10
    xor d                                         ; $563a: $aa
    db $10                                        ; $563b: $10
    ccf                                           ; $563c: $3f
    and b                                         ; $563d: $a0
    nop                                           ; $563e: $00
    ld a, [hl+]                                   ; $563f: $2a
    jr nz, jr_0bf_56a1                            ; $5640: $20 $5f

    ld h, b                                       ; $5642: $60
    rst $28                                       ; $5643: $ef
    ld b, a                                       ; $5644: $47
    rra                                           ; $5645: $1f
    ld c, a                                       ; $5646: $4f
    nop                                           ; $5647: $00
    xor e                                         ; $5648: $ab
    ret nc                                        ; $5649: $d0

    ld [hl], b                                    ; $564a: $70
    db $10                                        ; $564b: $10
    sub h                                         ; $564c: $94
    ld [hl-], a                                   ; $564d: $32
    db $f4                                        ; $564e: $f4
    jr nz, jr_0bf_5651                            ; $564f: $20 $00

jr_0bf_5651:
    ld bc, $cd65                                  ; $5651: $01 $65 $cd
    ld c, b                                       ; $5654: $48
    ld c, b                                       ; $5655: $48
    jp nz, $c092                                  ; $5656: $c2 $92 $c0

    nop                                           ; $5659: $00
    db $e3                                        ; $565a: $e3
    pop bc                                        ; $565b: $c1
    sub l                                         ; $565c: $95
    ld c, $5b                                     ; $565d: $0e $5b
    inc a                                         ; $565f: $3c
    rst $08                                       ; $5660: $cf

jr_0bf_5661:
    cp $00                                        ; $5661: $fe $00
    ld l, a                                       ; $5663: $6f
    sbc [hl]                                      ; $5664: $9e
    ei                                            ; $5665: $fb
    ld e, $75                                     ; $5666: $1e $75
    sbc b                                         ; $5668: $98
    ld l, a                                       ; $5669: $6f
    sbc b                                         ; $566a: $98
    nop                                           ; $566b: $00
    or d                                          ; $566c: $b2
    rst $18                                       ; $566d: $df
    sbc $ff                                       ; $566e: $de $ff
    ld [hl], h                                    ; $5670: $74
    ld hl, sp+$52                                 ; $5671: $f8 $52
    pop hl                                        ; $5673: $e1
    nop                                           ; $5674: $00
    ld c, e                                       ; $5675: $4b
    add a                                         ; $5676: $87

jr_0bf_5677:
    ld l, a                                       ; $5677: $6f
    rra                                           ; $5678: $1f
    cp e                                          ; $5679: $bb
    ld a, a                                       ; $567a: $7f
    push de                                       ; $567b: $d5
    rst $38                                       ; $567c: $ff
    nop                                           ; $567d: $00
    pop de                                        ; $567e: $d1
    jr nz, jr_0bf_56f6                            ; $567f: $20 $75

    ldh [$ca], a                                  ; $5681: $e0 $ca
    ldh a, [$ac]                                  ; $5683: $f0 $ac
    ld [hl], b                                    ; $5685: $70
    nop                                           ; $5686: $00
    ld e, l                                       ; $5687: $5d
    inc sp                                        ; $5688: $33
    ld a, [bc]                                    ; $5689: $0a
    rra                                           ; $568a: $1f
    ld c, $04                                     ; $568b: $0e $04
    ld b, l                                       ; $568d: $45
    inc bc                                        ; $568e: $03
    nop                                           ; $568f: $00
    cp c                                          ; $5690: $b9
    inc bc                                        ; $5691: $03
    ld e, d                                       ; $5692: $5a
    ld b, $f0                                     ; $5693: $06 $f0
    inc c                                         ; $5695: $0c
    xor c                                         ; $5696: $a9
    ld e, h                                       ; $5697: $5c
    ld bc, $bf45                                  ; $5698: $01 $45 $bf
    add l                                         ; $569b: $85
    ld a, l                                       ; $569c: $7d
    ld e, $ff                                     ; $569d: $1e $ff
    jr c, jr_0bf_5661                             ; $569f: $38 $c0

jr_0bf_56a1:
    dec b                                         ; $56a1: $05
    ld d, c                                       ; $56a2: $51
    xor d                                         ; $56a3: $aa
    jp nz, $fd25                                  ; $56a4: $c2 $25 $fd

    ld [hl], h                                    ; $56a7: $74
    nop                                           ; $56a8: $00
    rst $38                                       ; $56a9: $ff
    nop                                           ; $56aa: $00
    ld a, [$300e]                                 ; $56ab: $fa $0e $30
    nop                                           ; $56ae: $00
    ld a, a                                       ; $56af: $7f
    add b                                         ; $56b0: $80
    cp a                                          ; $56b1: $bf
    ld b, b                                       ; $56b2: $40
    ld a, a                                       ; $56b3: $7f
    add b                                         ; $56b4: $80
    add hl, bc                                    ; $56b5: $09
    or $00                                        ; $56b6: $f6 $00
    adc h                                         ; $56b8: $8c
    ld a, a                                       ; $56b9: $7f
    push hl                                       ; $56ba: $e5
    cp $80                                        ; $56bb: $fe $80
    rst $00                                       ; $56bd: $c7
    add h                                         ; $56be: $84
    add e                                         ; $56bf: $83
    nop                                           ; $56c0: $00
    ld a, [de]                                    ; $56c1: $1a
    add a                                         ; $56c2: $87
    ld e, h                                       ; $56c3: $5c
    cp a                                          ; $56c4: $bf
    jp nz, $b9ff                                  ; $56c5: $c2 $ff $b9

    rst $38                                       ; $56c8: $ff
    nop                                           ; $56c9: $00
    and e                                         ; $56ca: $a3

jr_0bf_56cb:
    rst $00                                       ; $56cb: $c7
    add c                                         ; $56cc: $81
    add c                                         ; $56cd: $81
    add [hl]                                      ; $56ce: $86
    add c                                         ; $56cf: $81
    cp [hl]                                       ; $56d0: $be
    ret                                           ; $56d1: $c9


    nop                                           ; $56d2: $00
    ld d, l                                       ; $56d3: $55
    rst $38                                       ; $56d4: $ff
    ld h, c                                       ; $56d5: $61
    rst $38                                       ; $56d6: $ff
    or c                                          ; $56d7: $b1
    ld a, a                                       ; $56d8: $7f
    di                                            ; $56d9: $f3
    pop bc                                        ; $56da: $c1
    nop                                           ; $56db: $00
    and c                                         ; $56dc: $a1
    jp $83c6                                      ; $56dd: $c3 $c6 $83


    ld [hl+], a                                   ; $56e0: $22
    add a                                         ; $56e1: $87
    call z, Call_000_0007                         ; $56e2: $cc $07 $00
    adc b                                         ; $56e5: $88
    rrca                                          ; $56e6: $0f
    ld [$341f], sp                                ; $56e7: $08 $1f $34
    rra                                           ; $56ea: $1f
    sub $bf                                       ; $56eb: $d6 $bf
    nop                                           ; $56ed: $00
    db $db                                        ; $56ee: $db
    ld d, c                                       ; $56ef: $51
    add hl, de                                    ; $56f0: $19
    ld c, c                                       ; $56f1: $49
    ld h, l                                       ; $56f2: $65
    inc h                                         ; $56f3: $24
    ld [hl], e                                    ; $56f4: $73
    ccf                                           ; $56f5: $3f

jr_0bf_56f6:
    nop                                           ; $56f6: $00
    ld a, [hl]                                    ; $56f7: $7e
    ccf                                           ; $56f8: $3f
    db $d3                                        ; $56f9: $d3
    ld h, d                                       ; $56fa: $62
    sub h                                         ; $56fb: $94
    add $48                                       ; $56fc: $c6 $48
    ldh [rNR10], a                                ; $56fe: $e0 $10
    jr nc, jr_0bf_5722                            ; $5700: $30 $20

    db $10                                        ; $5702: $10
    ld hl, sp+$05                                 ; $5703: $f8 $05
    inc b                                         ; $5705: $04
    nop                                           ; $5706: $00
    ld a, a                                       ; $5707: $7f
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    jr @+$0a                                      ; $570a: $18 $08

    add l                                         ; $570c: $85
    rst $28                                       ; $570d: $ef
    jr nc, jr_0bf_5770                            ; $570e: $30 $60

    nop                                           ; $5710: $00
    jr nc, jr_0bf_5713                            ; $5711: $30 $00

jr_0bf_5713:
    jr c, jr_0bf_5725                             ; $5713: $38 $10

    inc c                                         ; $5715: $0c
    jr jr_0bf_571e                                ; $5716: $18 $06

    inc c                                         ; $5718: $0c

jr_0bf_5719:
    add [hl]                                      ; $5719: $86
    inc b                                         ; $571a: $04
    nop                                           ; $571b: $00
    rst $00                                       ; $571c: $c7
    add d                                         ; $571d: $82

jr_0bf_571e:
    and c                                         ; $571e: $a1
    jp $e0d8                                      ; $571f: $c3 $d8 $e0


jr_0bf_5722:
    db $fc                                        ; $5722: $fc
    or b                                          ; $5723: $b0
    nop                                           ; $5724: $00

jr_0bf_5725:
    sub [hl]                                      ; $5725: $96
    sbc b                                         ; $5726: $98
    jp c, $0d8c                                   ; $5727: $da $8c $0d

    adc $9f                                       ; $572a: $ce $9f
    rst $18                                       ; $572c: $df
    ld [$f9f3], sp                                ; $572d: $08 $f3 $f9
    push af                                       ; $5730: $f5
    ret nz                                        ; $5731: $c0

    ld d, b                                       ; $5732: $50
    ld l, $ef                                     ; $5733: $2e $ef
    db $10                                        ; $5735: $10
    rst $10                                       ; $5736: $d7
    inc b                                         ; $5737: $04
    jr c, jr_0bf_5719                             ; $5738: $38 $df

    jr z, jr_0bf_56cb                             ; $573a: $28 $8f

    ld l, b                                       ; $573c: $68
    ld h, b                                       ; $573d: $60
    ld e, [hl]                                    ; $573e: $5e
    ld a, a                                       ; $573f: $7f
    add b                                         ; $5740: $80
    nop                                           ; $5741: $00
    jp nc, $92a3                                  ; $5742: $d2 $a3 $92

    jp Jump_0bf_43c6                              ; $5745: $c3 $c6 $43


    ld [hl], $63                                  ; $5748: $36 $63
    nop                                           ; $574a: $00
    ld a, $13                                     ; $574b: $3e $13
    dec c                                         ; $574d: $0d
    dec de                                        ; $574e: $1b
    adc b                                         ; $574f: $88
    rlca                                          ; $5750: $07
    daa                                           ; $5751: $27
    add e                                         ; $5752: $83
    nop                                           ; $5753: $00
    or b                                          ; $5754: $b0
    ld bc, $00d5                                  ; $5755: $01 $d5 $00
    ld l, b                                       ; $5758: $68
    nop                                           ; $5759: $00
    call nc, RST_00                               ; $575a: $d4 $00 $00
    cp b                                          ; $575d: $b8
    nop                                           ; $575e: $00
    ld b, e                                       ; $575f: $43
    ld [bc], a                                    ; $5760: $02
    ld [hl], $0f                                  ; $5761: $36 $0f
    ld [hl], b                                    ; $5763: $70
    db $fc                                        ; $5764: $fc
    dec d                                         ; $5765: $15
    ld a, a                                       ; $5766: $7f
    ret nz                                        ; $5767: $c0

    ld a, [$0537]                                 ; $5768: $fa $37 $05
    ld [$00ce], a                                 ; $576b: $ea $ce $00
    db $eb                                        ; $576e: $eb
    ld c, b                                       ; $576f: $48

jr_0bf_5770:
    ld bc, $eb00                                  ; $5770: $01 $00 $eb
    nop                                           ; $5773: $00
    adc a                                         ; $5774: $8f
    ldh a, [$1f]                                  ; $5775: $f0 $1f
    ldh [$bd], a                                  ; $5777: $e0 $bd
    ret nz                                        ; $5779: $c0

    nop                                           ; $577a: $00
    ld a, e                                       ; $577b: $7b
    add b                                         ; $577c: $80
    sub $80                                       ; $577d: $d6 $80
    rlc b                                         ; $577f: $cb $00
    dec hl                                        ; $5781: $2b
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    ld b, a                                       ; $5784: $47
    nop                                           ; $5785: $00
    add e                                         ; $5786: $83
    ld bc, $0183                                  ; $5787: $01 $83 $01
    inc d                                         ; $578a: $14
    ld a, c                                       ; $578b: $79
    nop                                           ; $578c: $00
    call z, $02fe                                 ; $578d: $cc $fe $02
    rst $38                                       ; $5790: $ff
    ld hl, $93fe                                  ; $5791: $21 $fe $93
    db $fc                                        ; $5794: $fc
    nop                                           ; $5795: $00
    inc bc                                        ; $5796: $03
    db $fc                                        ; $5797: $fc
    add $3f                                       ; $5798: $c6 $3f
    adc l                                         ; $579a: $8d
    ld a, a                                       ; $579b: $7f
    jr @+$01                                      ; $579c: $18 $ff

    inc b                                         ; $579e: $04
    ld [hl-], a                                   ; $579f: $32
    cp $62                                        ; $57a0: $fe $62
    rst $38                                       ; $57a2: $ff
    ret z                                         ; $57a3: $c8

    sub b                                         ; $57a4: $90
    inc e                                         ; $57a5: $1c
    jr nz, jr_0bf_5817                            ; $57a6: $20 $6f

    inc b                                         ; $57a8: $04
    or b                                          ; $57a9: $b0
    rst $28                                       ; $57aa: $ef
    or b                                          ; $57ab: $b0
    rst $38                                       ; $57ac: $ff
    and b                                         ; $57ad: $a0
    add h                                         ; $57ae: $84
    inc c                                         ; $57af: $0c
    ld a, [hl]                                    ; $57b0: $7e
    add c                                         ; $57b1: $81
    nop                                           ; $57b2: $00
    cp $01                                        ; $57b3: $fe $01
    ld [$a500], sp                                ; $57b5: $08 $00 $a5
    nop                                           ; $57b8: $00
    stop                                          ; $57b9: $10 $00
    nop                                           ; $57bb: $00
    ld c, d                                       ; $57bc: $4a
    nop                                           ; $57bd: $00
    inc de                                        ; $57be: $13
    nop                                           ; $57bf: $00
    xor c                                         ; $57c0: $a9
    ld bc, $0115                                  ; $57c1: $01 $15 $01
    nop                                           ; $57c4: $00
    rst $28                                       ; $57c5: $ef
    ld bc, $30e5                                  ; $57c6: $01 $e5 $30
    jp c, $8890                                   ; $57c9: $da $90 $88

    stop                                          ; $57cc: $10 $00
    ld h, l                                       ; $57ce: $65
    ldh [$80], a                                  ; $57cf: $e0 $80
    jr nz, @+$0c                                  ; $57d1: $20 $0a

    nop                                           ; $57d3: $00
    jr nz, jr_0bf_57d6                            ; $57d4: $20 $00

jr_0bf_57d6:
    ld [$800a], sp                                ; $57d6: $08 $0a $80
    ld b, c                                       ; $57d9: $41
    cp [hl]                                       ; $57da: $be
    ld bc, $040f                                  ; $57db: $01 $0f $04
    ei                                            ; $57de: $fb
    ld hl, $df00                                  ; $57df: $21 $00 $df
    inc bc                                        ; $57e2: $03
    rst $38                                       ; $57e3: $ff
    ld b, $ff                                     ; $57e4: $06 $ff
    xor a                                         ; $57e6: $af
    ld a, a                                       ; $57e7: $7f
    nop                                           ; $57e8: $00
    ld b, b                                       ; $57e9: $40
    rst $18                                       ; $57ea: $df
    xor $0d                                       ; $57eb: $ee $0d
    jp hl                                         ; $57ed: $e9


    halt                                          ; $57ee: $76
    and b                                         ; $57ef: $a0
    ccf                                           ; $57f0: $3f
    inc [hl]                                      ; $57f1: $34
    dec sp                                        ; $57f2: $3b
    nop                                           ; $57f3: $00
    jr jr_0bf_5835                                ; $57f4: $18 $3f

    adc [hl]                                      ; $57f6: $8e
    dec a                                         ; $57f7: $3d
    sub $1b                                       ; $57f8: $d6 $1b
    rst $18                                       ; $57fa: $df
    rra                                           ; $57fb: $1f
    nop                                           ; $57fc: $00
    call c, Call_000_070f                         ; $57fd: $dc $0f $07
    dec c                                         ; $5800: $0d
    dec c                                         ; $5801: $0d
    dec de                                        ; $5802: $1b
    sub e                                         ; $5803: $93
    ccf                                           ; $5804: $3f
    nop                                           ; $5805: $00
    xor d                                         ; $5806: $aa
    ld [hl], a                                    ; $5807: $77
    ld d, [hl]                                    ; $5808: $56
    xor $63                                       ; $5809: $ee $63
    inc l                                         ; $580b: $2c
    dec l                                         ; $580c: $2d
    jr nz, jr_0bf_580f                            ; $580d: $20 $00

jr_0bf_580f:
    xor b                                         ; $580f: $a8
    inc h                                         ; $5810: $24
    ld h, h                                       ; $5811: $64
    inc h                                         ; $5812: $24
    ld b, h                                       ; $5813: $44
    call nz, $c484                                ; $5814: $c4 $84 $c4

jr_0bf_5817:
    nop                                           ; $5817: $00
    ld b, h                                       ; $5818: $44
    add [hl]                                      ; $5819: $86
    ld b, $c3                                     ; $581a: $06 $c3
    cp d                                          ; $581c: $ba
    db $fc                                        ; $581d: $fc
    db $dd                                        ; $581e: $dd
    ld hl, sp+$00                                 ; $581f: $f8 $00
    db $fc                                        ; $5821: $fc
    ld hl, sp-$27                                 ; $5822: $f8 $d9
    db $fc                                        ; $5824: $fc
    halt                                          ; $5825: $76

jr_0bf_5826:
    db $fc                                        ; $5826: $fc
    ld a, a                                       ; $5827: $7f
    rst $38                                       ; $5828: $ff
    nop                                           ; $5829: $00
    scf                                           ; $582a: $37
    db $fc                                        ; $582b: $fc
    jr c, @+$01                                   ; $582c: $38 $ff

    ld b, d                                       ; $582e: $42
    db $fc                                        ; $582f: $fc
    and c                                         ; $5830: $a1
    sbc $40                                       ; $5831: $de $40
    ret nc                                        ; $5833: $d0

    add c                                         ; $5834: $81

jr_0bf_5835:
    nop                                           ; $5835: $00
    pop af                                        ; $5836: $f1
    cp $e8                                        ; $5837: $fe $e8
    rst $38                                       ; $5839: $ff
    ld a, d                                       ; $583a: $7a
    db $fd                                        ; $583b: $fd
    nop                                           ; $583c: $00
    db $fc                                        ; $583d: $fc
    ld a, a                                       ; $583e: $7f
    daa                                           ; $583f: $27
    ret nz                                        ; $5840: $c0

    rra                                           ; $5841: $1f
    nop                                           ; $5842: $00
    cp [hl]                                       ; $5843: $be
    ld bc, $f900                                  ; $5844: $01 $00 $f9
    rlca                                          ; $5847: $07
    ld l, $ff                                     ; $5848: $2e $ff
    ldh a, [$fc]                                  ; $584a: $f0 $fc
    ld bc, $00c0                                  ; $584c: $01 $c0 $00
    rrca                                          ; $584f: $0f
    nop                                           ; $5850: $00
    or e                                          ; $5851: $b3
    db $dd                                        ; $5852: $dd
    ld l, [hl]                                    ; $5853: $6e
    rst $30                                       ; $5854: $f7
    sub d                                         ; $5855: $92
    ld h, b                                       ; $5856: $60
    nop                                           ; $5857: $00
    db $fd                                        ; $5858: $fd
    nop                                           ; $5859: $00
    sub l                                         ; $585a: $95
    ld [$ffdf], a                                 ; $585b: $ea $df $ff
    ld a, [hl+]                                   ; $585e: $2a
    dec d                                         ; $585f: $15
    nop                                           ; $5860: $00
    ld b, b                                       ; $5861: $40
    nop                                           ; $5862: $00
    pop de                                        ; $5863: $d1
    ld h, b                                       ; $5864: $60
    add sp, $40                                   ; $5865: $e8 $40
    or $c0                                        ; $5867: $f6 $c0
    ld bc, $f06f                                  ; $5869: $01 $6f $f0
    xor [hl]                                      ; $586c: $ae
    rra                                           ; $586d: $1f
    db $eb                                        ; $586e: $eb
    rlca                                          ; $586f: $07
    cp b                                          ; $5870: $b8
    or b                                          ; $5871: $b0
    ld bc, $5b00                                  ; $5872: $01 $00 $5b
    rst $20                                       ; $5875: $e7
    db $ed                                        ; $5876: $ed
    ld [hl], e                                    ; $5877: $73
    add [hl]                                      ; $5878: $86
    ld sp, hl                                     ; $5879: $f9
    sbc e                                         ; $587a: $9b
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    dec l                                         ; $587d: $2d
    ld [bc], a                                    ; $587e: $02
    ld e, e                                       ; $587f: $5b
    and b                                         ; $5880: $a0

Jump_0bf_5881:
    cpl                                           ; $5881: $2f
    ret nz                                        ; $5882: $c0

    ld d, [hl]                                    ; $5883: $56
    add c                                         ; $5884: $81
    nop                                           ; $5885: $00
    xor b                                         ; $5886: $a8
    db $10                                        ; $5887: $10
    jr nz, jr_0bf_5826                            ; $5888: $20 $9c

    ret nz                                        ; $588a: $c0

    sbc l                                         ; $588b: $9d
    cp l                                          ; $588c: $bd
    jp $7e00                                      ; $588d: $c3 $00 $7e


    call nz, Call_0bf_6cd9                        ; $5890: $c4 $d9 $6c
    xor d                                         ; $5893: $aa
    ld a, a                                       ; $5894: $7f
    or a                                          ; $5895: $b7
    ld a, c                                       ; $5896: $79
    ld e, b                                       ; $5897: $58
    db $fd                                        ; $5898: $fd
    or [hl]                                       ; $5899: $b6
    ld [bc], a                                    ; $589a: $02
    cp $b8                                        ; $589b: $fe $b8
    ld [bc], a                                    ; $589d: $02
    cp b                                          ; $589e: $b8
    cpl                                           ; $589f: $2f
    ldh a, [$60]                                  ; $58a0: $f0 $60
    ld h, b                                       ; $58a2: $60
    ld [$4080], sp                                ; $58a3: $08 $80 $40
    nop                                           ; $58a6: $00
    add b                                         ; $58a7: $80
    sbc d                                         ; $58a8: $9a
    rlca                                          ; $58a9: $07
    ld b, b                                       ; $58aa: $40
    nop                                           ; $58ab: $00
    and b                                         ; $58ac: $a0
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    ld d, b                                       ; $58af: $50
    nop                                           ; $58b0: $00
    ld [hl], b                                    ; $58b1: $70
    and b                                         ; $58b2: $a0
    and a                                         ; $58b3: $a7
    pop bc                                        ; $58b4: $c1
    sbc a                                         ; $58b5: $9f
    nop                                           ; $58b6: $00
    ld c, $5e                                     ; $58b7: $0e $5e
    inc [hl]                                      ; $58b9: $34
    or l                                          ; $58ba: $b5
    call nz, $842f                                ; $58bb: $c4 $2f $84
    xor l                                         ; $58be: $ad
    nop                                           ; $58bf: $00
    ld [$485b], sp                                ; $58c0: $08 $5b $48
    jp hl                                         ; $58c3: $e9


    inc bc                                        ; $58c4: $03
    ld d, e                                       ; $58c5: $53
    rlca                                          ; $58c6: $07
    cp l                                          ; $58c7: $bd
    nop                                           ; $58c8: $00
    ld c, $bd                                     ; $58c9: $0e $bd
    ld a, b                                       ; $58cb: $78
    db $d3                                        ; $58cc: $d3
    pop hl                                        ; $58cd: $e1
    ld b, $83                                     ; $58ce: $06 $83
    jr z, jr_0bf_58d2                             ; $58d0: $28 $00

jr_0bf_58d2:
    dec e                                         ; $58d2: $1d
    or b                                          ; $58d3: $b0
    ld a, c                                       ; $58d4: $79
    call $5772                                    ; $58d5: $cd $72 $57
    add sp, -$53                                  ; $58d8: $e8 $ad
    nop                                           ; $58da: $00
    jp nc, $f00f                                  ; $58db: $d2 $0f $f0

    cpl                                           ; $58de: $2f
    ret nc                                        ; $58df: $d0

    cp e                                          ; $58e0: $bb
    ld b, a                                       ; $58e1: $47
    ld l, c                                       ; $58e2: $69
    nop                                           ; $58e3: $00
    sbc [hl]                                      ; $58e4: $9e
    xor b                                         ; $58e5: $a8
    ld [hl], b                                    ; $58e6: $70
    dec a                                         ; $58e7: $3d
    ld a, [de]                                    ; $58e8: $1a
    ld de, $921e                                  ; $58e9: $11 $1e $92
    nop                                           ; $58ec: $00
    dec e                                         ; $58ed: $1d
    sub c                                         ; $58ee: $91
    rra                                           ; $58ef: $1f
    ld c, c                                       ; $58f0: $49
    rra                                           ; $58f1: $1f
    jp z, $fa1f                                   ; $58f2: $ca $1f $fa

    nop                                           ; $58f5: $00
    rrca                                          ; $58f6: $0f
    ld h, l                                       ; $58f7: $65
    sbc [hl]                                      ; $58f8: $9e
    ld l, d                                       ; $58f9: $6a
    nop                                           ; $58fa: $00
    db $fd                                        ; $58fb: $fd
    add b                                         ; $58fc: $80
    adc $00                                       ; $58fd: $ce $00
    ld h, b                                       ; $58ff: $60
    ld l, a                                       ; $5900: $6f
    jr nc, jr_0bf_593e                            ; $5901: $30 $3b

Call_0bf_5903:
    inc e                                         ; $5903: $1c
    dec b                                         ; $5904: $05
    ld e, $16                                     ; $5905: $1e $16
    nop                                           ; $5907: $00
    inc bc                                        ; $5908: $03
    inc hl                                        ; $5909: $23
    ld de, $8012                                  ; $590a: $11 $12 $80
    dec hl                                        ; $590d: $2b
    nop                                           ; $590e: $00
    ld d, l                                       ; $590f: $55
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    xor a                                         ; $5912: $af
    nop                                           ; $5913: $00
    sbc a                                         ; $5914: $9f
    ld b, b                                       ; $5915: $40
    ld c, [hl]                                    ; $5916: $4e
    pop hl                                        ; $5917: $e1

jr_0bf_5918:
    cp l                                          ; $5918: $bd
    ld [$ea02], sp                                ; $5919: $08 $02 $ea
    dec d                                         ; $591c: $15
    sub h                                         ; $591d: $94
    ld l, b                                       ; $591e: $68
    nop                                           ; $591f: $00
    dec d                                         ; $5920: $15
    nop                                           ; $5921: $00
    ld h, b                                       ; $5922: $60
    xor d                                         ; $5923: $aa
    ld a, [de]                                    ; $5924: $1a
    ld b, $55                                     ; $5925: $06 $55
    and [hl]                                      ; $5927: $a6
    ld bc, $ee95                                  ; $5928: $01 $95 $ee
    ld [bc], a                                    ; $592b: $02
    db $ed                                        ; $592c: $ed
    ld [$fd02], a                                 ; $592d: $ea $02 $fd
    ret nz                                        ; $5930: $c0

    or d                                          ; $5931: $b2
    ld bc, $0a7c                                  ; $5932: $01 $7c $0a
    rst $18                                       ; $5935: $df
    nop                                           ; $5936: $00
    ld [hl], b                                    ; $5937: $70
    dec bc                                        ; $5938: $0b
    sbc $ff                                       ; $5939: $de $ff
    nop                                           ; $593b: $00
    ld c, e                                       ; $593c: $4b
    or [hl]                                       ; $593d: $b6

jr_0bf_593e:
    sub d                                         ; $593e: $92
    ld l, a                                       ; $593f: $6f
    cpl                                           ; $5940: $2f
    sub $a6                                       ; $5941: $d6 $a6
    ld a, a                                       ; $5943: $7f
    nop                                           ; $5944: $00
    db $ed                                        ; $5945: $ed
    ld c, [hl]                                    ; $5946: $4e
    jr c, jr_0bf_5918                             ; $5947: $38 $cf

    ld h, [hl]                                    ; $5949: $66
    inc bc                                        ; $594a: $03

jr_0bf_594b:
    or b                                          ; $594b: $b0
    ei                                            ; $594c: $fb
    nop                                           ; $594d: $00
    ld h, l                                       ; $594e: $65
    sbc a                                         ; $594f: $9f
    res 6, a                                      ; $5950: $cb $b7
    sub [hl]                                      ; $5952: $96
    db $eb                                        ; $5953: $eb
    nop                                           ; $5954: $00
    ld a, a                                       ; $5955: $7f
    nop                                           ; $5956: $00
    push hl                                       ; $5957: $e5
    db $db                                        ; $5958: $db
    xor c                                         ; $5959: $a9
    rst $10                                       ; $595a: $d7
    jr nz, jr_0bf_599c                            ; $595b: $20 $3f

    ld h, b                                       ; $595d: $60
    ccf                                           ; $595e: $3f
    ld [$7f40], sp                                ; $595f: $08 $40 $7f
    ld b, b                                       ; $5962: $40
    ld a, a                                       ; $5963: $7f
    sbc $1c                                       ; $5964: $de $1c
    add b                                         ; $5966: $80
    rst $38                                       ; $5967: $ff
    inc d                                         ; $5968: $14
    nop                                           ; $5969: $00
    ld hl, sp+$1e                                 ; $596a: $f8 $1e
    ldh a, [rNR50]                                ; $596c: $f0 $24
    ld hl, sp+$2c                                 ; $596e: $f8 $2c
    ldh a, [$2c]                                  ; $5970: $f0 $2c
    nop                                           ; $5972: $00
    ldh a, [$38]                                  ; $5973: $f0 $38
    ldh [$59], a                                  ; $5975: $e0 $59
    ldh [rSVBK], a                                ; $5977: $e0 $70
    pop bc                                        ; $5979: $c1
    ld a, b                                       ; $597a: $78
    nop                                           ; $597b: $00
    rst $18                                       ; $597c: $df
    ld a, h                                       ; $597d: $7c
    cpl                                           ; $597e: $2f
    or h                                          ; $597f: $b4
    rra                                           ; $5980: $1f
    sbc $0f                                       ; $5981: $de $0f
    adc $00                                       ; $5983: $ce $00
    rrca                                          ; $5985: $0f
    res 1, a                                      ; $5986: $cb $8f
    ld l, b                                       ; $5988: $68
    rst $08                                       ; $5989: $cf
    jr c, jr_0bf_594b                             ; $598a: $38 $bf

    stop                                          ; $598c: $10 $00
    ld a, $19                                     ; $598e: $3e $19
    ld e, $38                                     ; $5990: $1e $38
    rra                                           ; $5992: $1f
    inc d                                         ; $5993: $14
    rra                                           ; $5994: $1f
    jr c, jr_0bf_5997                             ; $5995: $38 $00

jr_0bf_5997:
    rra                                           ; $5997: $1f
    sub a                                         ; $5998: $97
    rra                                           ; $5999: $1f
    rra                                           ; $599a: $1f
    sub e                                         ; $599b: $93

jr_0bf_599c:
    jp nz, $dcc9                                  ; $599c: $c2 $c9 $dc

    nop                                           ; $599f: $00
    add sp, $7e                                   ; $59a0: $e8 $7e
    ld h, h                                       ; $59a2: $64
    db $f4                                        ; $59a3: $f4
    ld [hl], $37                                  ; $59a4: $36 $37
    ld a, [de]                                    ; $59a6: $1a
    add hl, bc                                    ; $59a7: $09
    nop                                           ; $59a8: $00
    rrca                                          ; $59a9: $0f
    add l                                         ; $59aa: $85
    rlca                                          ; $59ab: $07
    jp $e183                                      ; $59ac: $c3 $83 $e1


    ld b, b                                       ; $59af: $40
    ld a, $00                                     ; $59b0: $3e $00
    inc e                                         ; $59b2: $1c
    add hl, de                                    ; $59b3: $19
    inc c                                         ; $59b4: $0c
    ld c, $04                                     ; $59b5: $0e $04
    ld [bc], a                                    ; $59b7: $02
    ld b, $80                                     ; $59b8: $06 $80
    nop                                           ; $59ba: $00
    inc bc                                        ; $59bb: $03
    pop bc                                        ; $59bc: $c1
    ld bc, $8061                                  ; $59bd: $01 $61 $80
    or b                                          ; $59c0: $b0
    ret nz                                        ; $59c1: $c0

    ld a, a                                       ; $59c2: $7f
    inc c                                         ; $59c3: $0c
    jr nz, @-$1f                                  ; $59c4: $20 $df

    ld h, b                                       ; $59c6: $60
    ccf                                           ; $59c7: $3f
    ld a, [hl]                                    ; $59c8: $7e
    ld b, $0e                                     ; $59c9: $06 $0e
    rra                                           ; $59cb: $1f
    rst $38                                       ; $59cc: $ff
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    call z, Call_0bf_5218                         ; $59cf: $cc $18 $52
    sbc h                                         ; $59d2: $9c
    add h                                         ; $59d3: $84
    jr c, jr_0bf_5a3b                             ; $59d4: $38 $65

    jr c, jr_0bf_59d8                             ; $59d6: $38 $00

jr_0bf_59d8:
    ld d, h                                       ; $59d8: $54
    ld l, c                                       ; $59d9: $69
    jp hl                                         ; $59da: $e9


    ld d, c                                       ; $59db: $51
    dec bc                                        ; $59dc: $0b
    pop af                                        ; $59dd: $f1
    sub e                                         ; $59de: $93
    pop hl                                        ; $59df: $e1
    nop                                           ; $59e0: $00
    ld h, $c3                                     ; $59e1: $26 $c3
    ld [hl], $c3                                  ; $59e3: $36 $c3
    rst $20                                       ; $59e5: $e7
    ld [bc], a                                    ; $59e6: $02
    rst $00                                       ; $59e7: $c7
    ld [bc], a                                    ; $59e8: $02
    nop                                           ; $59e9: $00
    rst $30                                       ; $59ea: $f7
    ld [bc], a                                    ; $59eb: $02
    sub d                                         ; $59ec: $92
    inc bc                                        ; $59ed: $03
    ld h, c                                       ; $59ee: $61
    inc bc                                        ; $59ef: $03
    db $d3                                        ; $59f0: $d3
    ld bc, $2600                                  ; $59f1: $01 $00 $26
    inc bc                                        ; $59f4: $03
    ld a, [bc]                                    ; $59f5: $0a
    rlca                                          ; $59f6: $07
    rla                                           ; $59f7: $17
    inc b                                         ; $59f8: $04
    ld a, [hl+]                                   ; $59f9: $2a
    dec b                                         ; $59fa: $05
    nop                                           ; $59fb: $00
    ld e, a                                       ; $59fc: $5f
    ld [$1ab5], sp                                ; $59fd: $08 $b5 $1a
    ld c, a                                       ; $5a00: $4f
    jr nc, @-$48                                  ; $5a01: $30 $b6

    ld l, b                                       ; $5a03: $68
    ld de, $ff00                                  ; $5a04: $11 $00 $ff
    sub h                                         ; $5a07: $94
    db $ec                                        ; $5a08: $ec
    ld b, $51                                     ; $5a09: $06 $51
    cp $03                                        ; $5a0b: $fe $03
    ld e, h                                       ; $5a0d: $5c
    ld [bc], a                                    ; $5a0e: $02
    nop                                           ; $5a0f: $00
    ld h, a                                       ; $5a10: $67
    ld hl, sp-$39                                 ; $5a11: $f8 $c7
    ld a, b                                       ; $5a13: $78
    add $ff                                       ; $5a14: $c6 $ff
    call z, Call_000_003f                         ; $5a16: $cc $3f $00

jr_0bf_5a19:
    sbc d                                         ; $5a19: $9a
    ld a, a                                       ; $5a1a: $7f
    inc a                                         ; $5a1b: $3c
    rst $38                                       ; $5a1c: $ff
    ld [hl], b                                    ; $5a1d: $70
    rst $38                                       ; $5a1e: $ff
    db $e3                                        ; $5a1f: $e3
    rst $30                                       ; $5a20: $f7
    nop                                           ; $5a21: $00
    and h                                         ; $5a22: $a4
    jp RST_00                                     ; $5a23: $c3 $00 $00


    ret nc                                        ; $5a26: $d0

    cpl                                           ; $5a27: $2f
    add e                                         ; $5a28: $83
    ld a, a                                       ; $5a29: $7f
    inc d                                         ; $5a2a: $14
    ld b, $ff                                     ; $5a2b: $06 $ff
    dec e                                         ; $5a2d: $1d
    stop                                          ; $5a2e: $10 $00
    ret nz                                        ; $5a30: $c0

    ld a, [hl+]                                   ; $5a31: $2a
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    rst $38                                       ; $5a34: $ff
    inc b                                         ; $5a35: $04
    rst $30                                       ; $5a36: $f7
    inc bc                                        ; $5a37: $03
    ld l, a                                       ; $5a38: $6f
    nop                                           ; $5a39: $00
    ret c                                         ; $5a3a: $d8

jr_0bf_5a3b:
    ld a, d                                       ; $5a3b: $7a
    ld bc, $032e                                  ; $5a3c: $01 $2e $03
    nop                                           ; $5a3f: $00
    ld b, l                                       ; $5a40: $45
    rlca                                          ; $5a41: $07
    daa                                           ; $5a42: $27
    dec b                                         ; $5a43: $05
    adc [hl]                                      ; $5a44: $8e
    ld [bc], a                                    ; $5a45: $02
    add a                                         ; $5a46: $87
    ld hl, sp+$0a                                 ; $5a47: $f8 $0a
    rra                                           ; $5a49: $1f
    ldh [$7e], a                                  ; $5a4a: $e0 $7e
    add b                                         ; $5a4c: $80
    db $10                                        ; $5a4d: $10
    add hl, bc                                    ; $5a4e: $09
    ld d, l                                       ; $5a4f: $55
    ld [hl+], a                                   ; $5a50: $22
    dec b                                         ; $5a51: $05
    and d                                         ; $5a52: $a2
    nop                                           ; $5a53: $00
    nop                                           ; $5a54: $00
    ldh [rIE], a                                  ; $5a55: $e0 $ff
    ld d, l                                       ; $5a57: $55
    rst $38                                       ; $5a58: $ff
    db $eb                                        ; $5a59: $eb
    rst $38                                       ; $5a5a: $ff
    db $fc                                        ; $5a5b: $fc
    nop                                           ; $5a5c: $00
    rst $38                                       ; $5a5d: $ff
    ei                                            ; $5a5e: $fb
    db $fc                                        ; $5a5f: $fc
    rst $30                                       ; $5a60: $f7
    ld hl, sp+$5f                                 ; $5a61: $f8 $5f
    ldh a, [$df]                                  ; $5a63: $f0 $df
    db $10                                        ; $5a65: $10
    jr nc, jr_0bf_5aaa                            ; $5a66: $30 $42

    dec a                                         ; $5a68: $3d
    ld c, c                                       ; $5a69: $49
    inc bc                                        ; $5a6a: $03
    ld a, a                                       ; $5a6b: $7f
    ld [$01f7], sp                                ; $5a6c: $08 $f7 $01
    ld b, b                                       ; $5a6f: $40
    cp $bf                                        ; $5a70: $fe $bf
    rrca                                          ; $5a72: $0f
    ld [$40f7], sp                                ; $5a73: $08 $f7 $40
    sub c                                         ; $5a76: $91
    ld a, e                                       ; $5a77: $7b
    or a                                          ; $5a78: $b7
    nop                                           ; $5a79: $00
    db $d3                                        ; $5a7a: $d3
    ld c, l                                       ; $5a7b: $4d
    ldh [$9e], a                                  ; $5a7c: $e0 $9e
    or [hl]                                       ; $5a7e: $b6
    sbc c                                         ; $5a7f: $99
    jr nz, jr_0bf_5a19                            ; $5a80: $20 $97

    nop                                           ; $5a82: $00
    jr c, @-$57                                   ; $5a83: $38 $a7

    ld b, b                                       ; $5a85: $40
    ld l, a                                       ; $5a86: $6f
    ld [bc], a                                    ; $5a87: $02
    nop                                           ; $5a88: $00
    ld bc, $0003                                  ; $5a89: $01 $03 $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    jr nc, jr_0bf_5ab0                            ; $5a8e: $30 $20

    dec e                                         ; $5a90: $1d
    rrca                                          ; $5a91: $0f
    inc bc                                        ; $5a92: $03
    inc bc                                        ; $5a93: $03
    nop                                           ; $5a94: $00
    add e                                         ; $5a95: $83
    rlca                                          ; $5a96: $07
    ld e, l                                       ; $5a97: $5d
    rst $28                                       ; $5a98: $ef
    call Call_0bf_776f                            ; $5a99: $cd $6f $77
    ld h, e                                       ; $5a9c: $63
    nop                                           ; $5a9d: $00
    ld [hl], d                                    ; $5a9e: $72
    inc hl                                        ; $5a9f: $23
    inc [hl]                                      ; $5aa0: $34
    ld e, $3a                                     ; $5aa1: $1e $3a
    inc e                                         ; $5aa3: $1c
    add l                                         ; $5aa4: $85
    ld e, $00                                     ; $5aa5: $1e $00
    sub e                                         ; $5aa7: $93
    adc a                                         ; $5aa8: $8f
    sbc a                                         ; $5aa9: $9f

jr_0bf_5aaa:
    ld c, b                                       ; $5aaa: $48
    jp hl                                         ; $5aab: $e9


    cp $70                                        ; $5aac: $fe $70
    cp $00                                        ; $5aae: $fe $00

jr_0bf_5ab0:
    ld a, c                                       ; $5ab0: $79
    cp $d0                                        ; $5ab1: $fe $d0
    cp $b9                                        ; $5ab3: $fe $b9
    cp $d8                                        ; $5ab5: $fe $d8
    rst $38                                       ; $5ab7: $ff
    nop                                           ; $5ab8: $00
    ei                                            ; $5ab9: $fb
    rst $38                                       ; $5aba: $ff
    push de                                       ; $5abb: $d5
    cp $04                                        ; $5abc: $fe $04
    ld hl, sp+$0e                                 ; $5abe: $f8 $0e
    ldh a, [rP1]                                  ; $5ac0: $f0 $00
    inc b                                         ; $5ac2: $04
    ld hl, sp-$80                                 ; $5ac3: $f8 $80
    ld a, h                                       ; $5ac5: $7c
    dec b                                         ; $5ac6: $05
    ld hl, sp-$7f                                 ; $5ac7: $f8 $81
    db $fc                                        ; $5ac9: $fc
    nop                                           ; $5aca: $00
    dec h                                         ; $5acb: $25
    ret c                                         ; $5acc: $d8

    add d                                         ; $5acd: $82
    db $fc                                        ; $5ace: $fc
    pop af                                        ; $5acf: $f1
    ld a, [bc]                                    ; $5ad0: $0a
    ld [c], a                                     ; $5ad1: $e2
    ld e, $00                                     ; $5ad2: $1e $00
    ld [$fc14], a                                 ; $5ad4: $ea $14 $fc
    ld l, b                                       ; $5ad7: $68
    ld d, b                                       ; $5ad8: $50
    cp b                                          ; $5ad9: $b8
    sbc d                                         ; $5ada: $9a
    stop                                          ; $5adb: $10 $00
    ld h, b                                       ; $5add: $60
    or b                                          ; $5ade: $b0
    di                                            ; $5adf: $f3
    ldh [rHDMA3], a                               ; $5ae0: $e0 $53
    call c, $fa45                                 ; $5ae2: $dc $45 $fa
    nop                                           ; $5ae5: $00
    dec d                                         ; $5ae6: $15
    sbc d                                         ; $5ae7: $9a
    or e                                          ; $5ae8: $b3
    db $fc                                        ; $5ae9: $fc
    ld l, a                                       ; $5aea: $6f
    ld c, b                                       ; $5aeb: $48
    rrca                                          ; $5aec: $0f
    ld c, c                                       ; $5aed: $49
    nop                                           ; $5aee: $00
    call Call_0bf_688f                            ; $5aef: $cd $8f $68
    sbc c                                         ; $5af2: $99
    add [hl]                                      ; $5af3: $86
    ld a, a                                       ; $5af4: $7f
    adc b                                         ; $5af5: $88
    ld a, a                                       ; $5af6: $7f
    nop                                           ; $5af7: $00
    sub e                                         ; $5af8: $93
    ld a, h                                       ; $5af9: $7c
    ld h, $f9                                     ; $5afa: $26 $f9
    rst $18                                       ; $5afc: $df
    ld h, c                                       ; $5afd: $61
    ld a, e                                       ; $5afe: $7b
    pop bc                                        ; $5aff: $c1
    nop                                           ; $5b00: $00
    or d                                          ; $5b01: $b2
    pop bc                                        ; $5b02: $c1
    ret                                           ; $5b03: $c9


    and b                                         ; $5b04: $a0
    or a                                          ; $5b05: $b7
    sub $95                                       ; $5b06: $d6 $95
    jp nc, $fc00                                  ; $5b08: $d2 $00 $fc

    db $d3                                        ; $5b0b: $d3
    halt                                          ; $5b0c: $76
    pop af                                        ; $5b0d: $f1
    inc d                                         ; $5b0e: $14
    dec sp                                        ; $5b0f: $3b
    ld e, $01                                     ; $5b10: $1e $01
    nop                                           ; $5b12: $00
    cp d                                          ; $5b13: $ba
    dec b                                         ; $5b14: $05
    db $dd                                        ; $5b15: $dd
    add e                                         ; $5b16: $83
    db $10                                        ; $5b17: $10
    ld hl, $0021                                  ; $5b18: $21 $21 $00
    nop                                           ; $5b1b: $00
    inc b                                         ; $5b1c: $04
    inc bc                                        ; $5b1d: $03
    ld b, $03                                     ; $5b1e: $06 $03
    ld bc, $6202                                  ; $5b20: $01 $02 $62
    ld bc, $5301                                  ; $5b23: $01 $01 $53
    ld hl, $3089                                  ; $5b26: $21 $89 $30
    db $f4                                        ; $5b29: $f4
    inc c                                         ; $5b2a: $0c
    or $02                                        ; $5b2b: $f6 $02
    nop                                           ; $5b2d: $00
    inc b                                         ; $5b2e: $04
    db $fc                                        ; $5b2f: $fc
    ld b, $fc                                     ; $5b30: $06 $fc
    ld b, $fb                                     ; $5b32: $06 $fb
    ld [bc], a                                    ; $5b34: $02
    nop                                           ; $5b35: $00
    cp $03                                        ; $5b36: $fe $03
    nop                                           ; $5b38: $00
    ld a, [hl]                                    ; $5b39: $7e
    daa                                           ; $5b3a: $27
    dec h                                         ; $5b3b: $25
    ld h, e                                       ; $5b3c: $63
    ld d, e                                       ; $5b3d: $53

jr_0bf_5b3e:
    ld b, [hl]                                    ; $5b3e: $46
    ld e, $4c                                     ; $5b3f: $1e $4c
    nop                                           ; $5b41: $00
    jp hl                                         ; $5b42: $e9


    ld [hl], b                                    ; $5b43: $70
    and d                                         ; $5b44: $a2
    pop bc                                        ; $5b45: $c1
    adc d                                         ; $5b46: $8a
    rlca                                          ; $5b47: $07
    ld d, h                                       ; $5b48: $54
    jr c, jr_0bf_5b4b                             ; $5b49: $38 $00

jr_0bf_5b4b:
    pop bc                                        ; $5b4b: $c1
    jr nc, jr_0bf_5b3e                            ; $5b4c: $30 $f0

    dec h                                         ; $5b4e: $25
    and [hl]                                      ; $5b4f: $a6
    ld l, c                                       ; $5b50: $69
    ld [c], a                                     ; $5b51: $e2
    ld c, d                                       ; $5b52: $4a
    nop                                           ; $5b53: $00
    ld e, d                                       ; $5b54: $5a
    ret nz                                        ; $5b55: $c0

    jp nc, $8b81                                  ; $5b56: $d2 $81 $8b

    add a                                         ; $5b59: $87
    ld a, $98                                     ; $5b5a: $3e $98
    ld bc, $f54a                                  ; $5b5c: $01 $4a $f5
    sub a                                         ; $5b5f: $97
    add sp, -$51                                  ; $5b60: $e8 $af
    ld d, b                                       ; $5b62: $50
    ld a, a                                       ; $5b63: $7f
    ld [bc], a                                    ; $5b64: $02
    ld bc, $7b00                                  ; $5b65: $01 $00 $7b
    add b                                         ; $5b68: $80
    cp $01                                        ; $5b69: $fe $01
    or l                                          ; $5b6b: $b5
    ld bc, $84c5                                  ; $5b6c: $01 $c5 $84
    nop                                           ; $5b6f: $00
    adc l                                         ; $5b70: $8d
    rlca                                          ; $5b71: $07
    ld l, $07                                     ; $5b72: $2e $07
    ld c, l                                       ; $5b74: $4d
    ld b, $9a                                     ; $5b75: $06 $9a
    dec c                                         ; $5b77: $0d
    nop                                           ; $5b78: $00
    dec l                                         ; $5b79: $2d
    ld a, [de]                                    ; $5b7a: $1a
    db $d3                                        ; $5b7b: $d3
    inc a                                         ; $5b7c: $3c
    and [hl]                                      ; $5b7d: $a6
    ld a, c                                       ; $5b7e: $79
    and $c3                                       ; $5b7f: $e6 $c3
    nop                                           ; $5b81: $00
    ld h, e                                       ; $5b82: $63
    rst $00                                       ; $5b83: $c7
    add $e7                                       ; $5b84: $c6 $e7
    db $eb                                        ; $5b86: $eb
    xor $ea                                       ; $5b87: $ee $ea
    ld a, [hl]                                    ; $5b89: $7e
    nop                                           ; $5b8a: $00
    ld [hl], a                                    ; $5b8b: $77
    inc a                                         ; $5b8c: $3c
    ld [hl-], a                                   ; $5b8d: $32
    inc a                                         ; $5b8e: $3c
    rra                                           ; $5b8f: $1f
    jr c, @+$7c                                   ; $5b90: $38 $7a

    rlca                                          ; $5b92: $07
    dec b                                         ; $5b93: $05
    adc l                                         ; $5b94: $8d
    inc bc                                        ; $5b95: $03
    ld d, $01                                     ; $5b96: $16 $01
    ld c, e                                       ; $5b98: $4b
    jp nz, $f002                                  ; $5b99: $c2 $02 $f0

    ld d, d                                       ; $5b9c: $52
    ld b, $00                                     ; $5b9d: $06 $00
    db $fd                                        ; $5b9f: $fd
    nop                                           ; $5ba0: $00
    ret c                                         ; $5ba1: $d8

    ldh [$ef], a                                  ; $5ba2: $e0 $ef
    ldh a, [$f7]                                  ; $5ba4: $f0 $f7
    ld hl, sp+$00                                 ; $5ba6: $f8 $00
    ei                                            ; $5ba8: $fb
    db $fc                                        ; $5ba9: $fc
    sbc [hl]                                      ; $5baa: $9e
    ld a, a                                       ; $5bab: $7f
    rst $20                                       ; $5bac: $e7
    rra                                           ; $5bad: $1f
    ei                                            ; $5bae: $fb
    rlca                                          ; $5baf: $07
    nop                                           ; $5bb0: $00
    db $fd                                        ; $5bb1: $fd
    inc bc                                        ; $5bb2: $03
    ld c, d                                       ; $5bb3: $4a
    nop                                           ; $5bb4: $00
    inc h                                         ; $5bb5: $24
    nop                                           ; $5bb6: $00
    sub d                                         ; $5bb7: $92
    nop                                           ; $5bb8: $00
    ld b, h                                       ; $5bb9: $44
    ld c, c                                       ; $5bba: $49
    xor h                                         ; $5bbb: $ac
    inc bc                                        ; $5bbc: $03
    adc d                                         ; $5bbd: $8a
    nop                                           ; $5bbe: $00
    ld hl, $02e4                                  ; $5bbf: $21 $e4 $02
    sbc d                                         ; $5bc2: $9a
    add b                                         ; $5bc3: $80
    nop                                           ; $5bc4: $00
    ld l, c                                       ; $5bc5: $69
    add b                                         ; $5bc6: $80
    ld d, $80                                     ; $5bc7: $16 $80
    xor c                                         ; $5bc9: $a9
    nop                                           ; $5bca: $00
    or $00                                        ; $5bcb: $f6 $00
    nop                                           ; $5bcd: $00
    ld e, c                                       ; $5bce: $59
    nop                                           ; $5bcf: $00
    and [hl]                                      ; $5bd0: $a6
    nop                                           ; $5bd1: $00
    ld a, l                                       ; $5bd2: $7d
    nop                                           ; $5bd3: $00
    ld a, [hl]                                    ; $5bd4: $7e
    add c                                         ; $5bd5: $81
    nop                                           ; $5bd6: $00
    or $19                                        ; $5bd7: $f6 $19
    db $e4                                        ; $5bd9: $e4
    daa                                           ; $5bda: $27
    adc $25                                       ; $5bdb: $ce $25
    call Call_000_003b                            ; $5bdd: $cd $3b $00
    adc l                                         ; $5be0: $8d
    ld [hl], e                                    ; $5be1: $73
    adc d                                         ; $5be2: $8a
    rst $00                                       ; $5be3: $c7
    add d                                         ; $5be4: $82
    inc bc                                        ; $5be5: $03
    rst $38                                       ; $5be6: $ff
    jp $9d00                                      ; $5be7: $c3 $00 $9d


    db $e3                                        ; $5bea: $e3
    cp [hl]                                       ; $5beb: $be
    jp $83fc                                      ; $5bec: $c3 $fc $83


    xor [hl]                                      ; $5bef: $ae
    pop af                                        ; $5bf0: $f1
    nop                                           ; $5bf1: $00
    cp d                                          ; $5bf2: $ba
    sbc l                                         ; $5bf3: $9d
    dec b                                         ; $5bf4: $05
    rlca                                          ; $5bf5: $07
    rlca                                          ; $5bf6: $07
    inc bc                                        ; $5bf7: $03
    ld [$410f], sp                                ; $5bf8: $08 $0f $41
    jr @+$04                                      ; $5bfb: $18 $02

    nop                                           ; $5bfd: $00
    ld [$101f], sp                                ; $5bfe: $08 $1f $10
    rra                                           ; $5c01: $1f
    jr nc, jr_0bf_5c06                            ; $5c02: $30 $02

    nop                                           ; $5c04: $00
    ld [bc], a                                    ; $5c05: $02

jr_0bf_5c06:
    db $10                                        ; $5c06: $10
    ccf                                           ; $5c07: $3f
    dec bc                                        ; $5c08: $0b
    db $fc                                        ; $5c09: $fc
    inc c                                         ; $5c0a: $0c
    ld a, [$0804]                                 ; $5c0b: $fa $04 $08
    dec de                                        ; $5c0e: $1b
    ld [$1efc], sp                                ; $5c0f: $08 $fc $1e
    ld hl, sp+$12                                 ; $5c12: $f8 $12
    inc b                                         ; $5c14: $04
    nop                                           ; $5c15: $00
    dec c                                         ; $5c16: $0d
    ld l, a                                       ; $5c17: $6f
    ld l, [hl]                                    ; $5c18: $6e
    nop                                           ; $5c19: $00
    cpl                                           ; $5c1a: $2f
    xor $2f                                       ; $5c1b: $ee $2f
    db $fc                                        ; $5c1d: $fc
    cpl                                           ; $5c1e: $2f
    ld a, b                                       ; $5c1f: $78
    cp a                                          ; $5c20: $bf
    ld a, b                                       ; $5c21: $78
    nop                                           ; $5c22: $00
    cp a                                          ; $5c23: $bf
    ld hl, sp-$41                                 ; $5c24: $f8 $bf
    sbc b                                         ; $5c26: $98
    rst $38                                       ; $5c27: $ff
    ld d, a                                       ; $5c28: $57
    dec a                                         ; $5c29: $3d
    dec e                                         ; $5c2a: $1d
    add b                                         ; $5c2b: $80
    cp $00                                        ; $5c2c: $fe $00
    ld b, $03                                     ; $5c2e: $06 $03
    cp $07                                        ; $5c30: $fe $07
    db $eb                                        ; $5c32: $eb
    rst $38                                       ; $5c33: $ff
    ld [hl], l                                    ; $5c34: $75
    nop                                           ; $5c35: $00
    dec sp                                        ; $5c36: $3b
    ld [hl-], a                                   ; $5c37: $32
    dec e                                         ; $5c38: $1d
    or b                                          ; $5c39: $b0
    ld b, b                                       ; $5c3a: $40
    ld e, b                                       ; $5c3b: $58
    ld h, b                                       ; $5c3c: $60
    ld l, h                                       ; $5c3d: $6c
    nop                                           ; $5c3e: $00
    ld [hl], b                                    ; $5c3f: $70
    rst $30                                       ; $5c40: $f7
    ld a, b                                       ; $5c41: $78
    ld l, [hl]                                    ; $5c42: $6e
    cp a                                          ; $5c43: $bf
    ld e, h                                       ; $5c44: $5c
    or e                                          ; $5c45: $b3
    jr c, jr_0bf_5c48                             ; $5c46: $38 $00

jr_0bf_5c48:
    ret nc                                        ; $5c48: $d0

    xor b                                         ; $5c49: $a8
    ret c                                         ; $5c4a: $d8

    sub c                                         ; $5c4b: $91
    ld a, [hl]                                    ; $5c4c: $7e
    dec sp                                        ; $5c4d: $3b
    db $fc                                        ; $5c4e: $fc
    ld c, l                                       ; $5c4f: $4d
    ld [$3efe], sp                                ; $5c50: $08 $fe $3e
    rst $38                                       ; $5c53: $ff
    xor h                                         ; $5c54: $ac
    sub [hl]                                      ; $5c55: $96
    ld b, $ef                                     ; $5c56: $06 $ef
    ld a, a                                       ; $5c58: $7f
    halt                                          ; $5c59: $76
    nop                                           ; $5c5a: $00
    ccf                                           ; $5c5b: $3f
    call c, Call_0bf_6638                         ; $5c5c: $dc $38 $66

jr_0bf_5c5f:
    inc e                                         ; $5c5f: $1c
    inc sp                                        ; $5c60: $33
    ld c, $c9                                     ; $5c61: $0e $c9
    nop                                           ; $5c63: $00
    add a                                         ; $5c64: $87
    ld d, h                                       ; $5c65: $54
    db $e3                                        ; $5c66: $e3
    push de                                       ; $5c67: $d5

jr_0bf_5c68:
    jr c, jr_0bf_5c5f                             ; $5c68: $38 $f5

    ld c, $fe                                     ; $5c6a: $0e $fe
    ld bc, $aa03                                  ; $5c6c: $01 $03 $aa
    ld [hl], b                                    ; $5c6f: $70
    db $ed                                        ; $5c70: $ed
    jr jr_0bf_5c68                                ; $5c71: $18 $f5

    ld c, $a6                                     ; $5c73: $0e $a6
    inc bc                                        ; $5c75: $03
    add b                                         ; $5c76: $80
    halt                                          ; $5c77: $76
    daa                                           ; $5c78: $27
    sub a                                         ; $5c79: $97
    ld [$ecf3], sp                                ; $5c7a: $08 $f3 $ec
    reti                                          ; $5c7d: $d9


    cp $d7                                        ; $5c7e: $fe $d7
    ld [bc], a                                    ; $5c80: $02
    xor $7f                                       ; $5c81: $ee $7f
    ld h, b                                       ; $5c83: $60
    ccf                                           ; $5c84: $3f
    ld h, b                                       ; $5c85: $60
    ld a, a                                       ; $5c86: $7f
    db $fd                                        ; $5c87: $fd
    ld [bc], a                                    ; $5c88: $02
    ld h, a                                       ; $5c89: $67
    nop                                           ; $5c8a: $00
    jr c, jr_0bf_5ccc                             ; $5c8b: $38 $3f

    ccf                                           ; $5c8d: $3f
    ld a, b                                       ; $5c8e: $78
    cpl                                           ; $5c8f: $2f
    rst $00                                       ; $5c90: $c7
    ld l, h                                       ; $5c91: $6c
    ld l, $00                                     ; $5c92: $2e $00
    call nz, $8c66                                ; $5c94: $c4 $66 $8c
    ld l, d                                       ; $5c97: $6a
    adc h                                         ; $5c98: $8c
    ld e, d                                       ; $5c99: $5a
    adc h                                         ; $5c9a: $8c
    ld a, [$3300]                                 ; $5c9b: $fa $00 $33
    ei                                            ; $5c9e: $fb
    ld [hl], d                                    ; $5c9f: $72
    ld h, b                                       ; $5ca0: $60
    di                                            ; $5ca1: $f3
    jp $93f2                                      ; $5ca2: $c3 $f2 $93


    nop                                           ; $5ca5: $00
    db $e3                                        ; $5ca6: $e3
    sbc $a3                                       ; $5ca7: $de $a3
    rla                                           ; $5ca9: $17
    db $e3                                        ; $5caa: $e3
    or [hl]                                       ; $5cab: $b6
    ld b, e                                       ; $5cac: $43
    ld d, h                                       ; $5cad: $54
    nop                                           ; $5cae: $00
    add b                                         ; $5caf: $80
    add hl, sp                                    ; $5cb0: $39
    ret nz                                        ; $5cb1: $c0

jr_0bf_5cb2:
    dec h                                         ; $5cb2: $25
    ret nz                                        ; $5cb3: $c0

    adc e                                         ; $5cb4: $8b
    ld h, b                                       ; $5cb5: $60
    ld [bc], a                                    ; $5cb6: $02
    nop                                           ; $5cb7: $00
    ld h, c                                       ; $5cb8: $61
    ld d, e                                       ; $5cb9: $53
    ld hl, $2143                                  ; $5cba: $21 $43 $21
    daa                                           ; $5cbd: $27
    ld bc, $001a                                  ; $5cbe: $01 $1a $00
    rst $38                                       ; $5cc1: $ff
    jr nc, @+$01                                  ; $5cc2: $30 $ff

    dec a                                         ; $5cc4: $3d
    rst $38                                       ; $5cc5: $ff
    ld h, h                                       ; $5cc6: $64
    rst $38                                       ; $5cc7: $ff
    ld a, [c]                                     ; $5cc8: $f2
    nop                                           ; $5cc9: $00
    db $e3                                        ; $5cca: $e3
    sbc d                                         ; $5ccb: $9a

jr_0bf_5ccc:
    rst $30                                       ; $5ccc: $f7
    ld c, h                                       ; $5ccd: $4c
    rst $38                                       ; $5cce: $ff
    db $10                                        ; $5ccf: $10
    rst $38                                       ; $5cd0: $ff
    ei                                            ; $5cd1: $fb
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    cpl                                           ; $5cd4: $2f
    nop                                           ; $5cd5: $00
    ld [hl], $01                                  ; $5cd6: $36 $01
    ld a, h                                       ; $5cd8: $7c
    inc bc                                        ; $5cd9: $03
    ld e, h                                       ; $5cda: $5c
    nop                                           ; $5cdb: $00
    inc bc                                        ; $5cdc: $03
    add hl, de                                    ; $5cdd: $19
    rlca                                          ; $5cde: $07
    pop de                                        ; $5cdf: $d1
    rst $28                                       ; $5ce0: $ef
    ld [hl], e                                    ; $5ce1: $73
    ccf                                           ; $5ce2: $3f
    dec e                                         ; $5ce3: $1d
    nop                                           ; $5ce4: $00
    pop hl                                        ; $5ce5: $e1
    db $d3                                        ; $5ce6: $d3
    db $e3                                        ; $5ce7: $e3
    cp l                                          ; $5ce8: $bd
    sub l                                         ; $5ce9: $95
    ld e, c                                       ; $5cea: $59
    ret                                           ; $5ceb: $c9


    ld b, e                                       ; $5cec: $43

jr_0bf_5ced:
    nop                                           ; $5ced: $00
    ld b, c                                       ; $5cee: $41
    jp $c041                                      ; $5cef: $c3 $41 $c0


    add c                                         ; $5cf2: $81
    add h                                         ; $5cf3: $84
    nop                                           ; $5cf4: $00
    rla                                           ; $5cf5: $17
    jr nz, @+$01                                  ; $5cf6: $20 $ff

    cp h                                          ; $5cf8: $bc
    xor h                                         ; $5cf9: $ac
    ld [bc], a                                    ; $5cfa: $02
    pop bc                                        ; $5cfb: $c1
    cp $07                                        ; $5cfc: $fe $07
    ld hl, sp+$1e                                 ; $5cfe: $f8 $1e
    nop                                           ; $5d00: $00
    ldh [$7c], a                                  ; $5d01: $e0 $7c
    add b                                         ; $5d03: $80
    ei                                            ; $5d04: $fb
    ld bc, $ff95                                  ; $5d05: $01 $95 $ff
    ld b, d                                       ; $5d08: $42
    nop                                           ; $5d09: $00
    rst $38                                       ; $5d0a: $ff
    dec l                                         ; $5d0b: $2d
    rst $38                                       ; $5d0c: $ff
    sub d                                         ; $5d0d: $92
    rst $38                                       ; $5d0e: $ff
    ld d, e                                       ; $5d0f: $53
    ei                                            ; $5d10: $fb
    ld a, $00                                     ; $5d11: $3e $00
    rst $38                                       ; $5d13: $ff
    ld e, b                                       ; $5d14: $58
    rst $38                                       ; $5d15: $ff
    ldh a, [rIE]                                  ; $5d16: $f0 $ff
    sbc a                                         ; $5d18: $9f
    jr nc, jr_0bf_5cb2                            ; $5d19: $30 $97

    nop                                           ; $5d1b: $00
    jr jr_0bf_5ced                                ; $5d1c: $18 $cf

    jr jr_0bf_5d8f                                ; $5d1e: $18 $6f

    adc h                                         ; $5d20: $8c
    and e                                         ; $5d21: $a3
    add $03                                       ; $5d22: $c6 $03
    nop                                           ; $5d24: $00
    inc bc                                        ; $5d25: $03
    jp hl                                         ; $5d26: $e9


    db $fd                                        ; $5d27: $fd
    push af                                       ; $5d28: $f5
    rst $38                                       ; $5d29: $ff
    ld l, e                                       ; $5d2a: $6b
    ld h, b                                       ; $5d2b: $60
    ld c, d                                       ; $5d2c: $4a
    nop                                           ; $5d2d: $00
    pop bc                                        ; $5d2e: $c1
    sub l                                         ; $5d2f: $95
    add d                                         ; $5d30: $82
    ld a, [hl+]                                   ; $5d31: $2a
    dec b                                         ; $5d32: $05
    ld c, h                                       ; $5d33: $4c
    inc bc                                        ; $5d34: $03
    sub b                                         ; $5d35: $90
    nop                                           ; $5d36: $00
    rrca                                          ; $5d37: $0f
    jr z, jr_0bf_5d51                             ; $5d38: $28 $17

    ret nc                                        ; $5d3a: $d0

    cpl                                           ; $5d3b: $2f
    ld e, d                                       ; $5d3c: $5a
    sub d                                         ; $5d3d: $92
    ld l, d                                       ; $5d3e: $6a
    nop                                           ; $5d3f: $00
    sub $25                                       ; $5d40: $d6 $25
    inc a                                         ; $5d42: $3c
    rr c                                          ; $5d43: $cb $19
    ld a, [hl]                                    ; $5d45: $7e
    ld [hl], d                                    ; $5d46: $72
    ld c, [hl]                                    ; $5d47: $4e
    nop                                           ; $5d48: $00
    ld [hl], h                                    ; $5d49: $74
    db $fd                                        ; $5d4a: $fd
    ld a, b                                       ; $5d4b: $78
    ld a, [$f190]                                 ; $5d4c: $fa $90 $f1
    db $e3                                        ; $5d4f: $e3
    ld e, b                                       ; $5d50: $58

jr_0bf_5d51:
    nop                                           ; $5d51: $00
    db $fc                                        ; $5d52: $fc
    ld b, $0f                                     ; $5d53: $06 $0f
    rlca                                          ; $5d55: $07
    inc de                                        ; $5d56: $13
    sub b                                         ; $5d57: $90
    cp d                                          ; $5d58: $ba
    ld a, $20                                     ; $5d59: $3e $20
    ld [hl], d                                    ; $5d5b: $72
    inc c                                         ; $5d5c: $0c
    ld l, b                                       ; $5d5d: $68
    inc b                                         ; $5d5e: $04
    jp nz, $c5e7                                  ; $5d5f: $c2 $e7 $c5

    call nc, Call_000_00f5                        ; $5d62: $d4 $f5 $00
    sbc e                                         ; $5d65: $9b
    ld l, d                                       ; $5d66: $6a
    cp e                                          ; $5d67: $bb
    ldh [$39], a                                  ; $5d68: $e0 $39
    ld [hl], b                                    ; $5d6a: $70
    ld l, b                                       ; $5d6b: $68
    call nc, Call_0bf_6800                        ; $5d6c: $d4 $00 $68
    add sp, -$17                                  ; $5d6f: $e8 $e9
    or b                                          ; $5d71: $b0
    ld a, e                                       ; $5d72: $7b
    sbc c                                         ; $5d73: $99
    dec de                                        ; $5d74: $1b
    add hl, bc                                    ; $5d75: $09
    nop                                           ; $5d76: $00
    sbc e                                         ; $5d77: $9b
    dec e                                         ; $5d78: $1d
    ld sp, hl                                     ; $5d79: $f9
    rst $38                                       ; $5d7a: $ff
    db $fd                                        ; $5d7b: $fd
    rst $30                                       ; $5d7c: $f7
    rst $38                                       ; $5d7d: $ff
    ld sp, hl                                     ; $5d7e: $f9
    nop                                           ; $5d7f: $00
    rst $38                                       ; $5d80: $ff
    ret nc                                        ; $5d81: $d0

    rst $38                                       ; $5d82: $ff
    add hl, bc                                    ; $5d83: $09
    ldh a, [rNR14]                                ; $5d84: $f0 $14
    jp hl                                         ; $5d86: $e9


    adc b                                         ; $5d87: $88
    nop                                           ; $5d88: $00
    ld [hl], c                                    ; $5d89: $71
    inc b                                         ; $5d8a: $04
    ld sp, hl                                     ; $5d8b: $f9
    inc c                                         ; $5d8c: $0c
    ldh a, [rTIMA]                                ; $5d8d: $f0 $05

jr_0bf_5d8f:
    ld hl, sp+$0c                                 ; $5d8f: $f8 $0c
    ld [$48f0], sp                                ; $5d91: $08 $f0 $48
    or h                                          ; $5d94: $b4
    inc bc                                        ; $5d95: $03
    or b                                          ; $5d96: $b0
    dec b                                         ; $5d97: $05
    ld b, a                                       ; $5d98: $47
    ld bc, $0024                                  ; $5d99: $01 $24 $00
    inc bc                                        ; $5d9c: $03
    adc h                                         ; $5d9d: $8c
    ld [bc], a                                    ; $5d9e: $02
    db $ec                                        ; $5d9f: $ec
    ld [bc], a                                    ; $5da0: $02
    sbc a                                         ; $5da1: $9f
    dec b                                         ; $5da2: $05
    ld a, l                                       ; $5da3: $7d
    nop                                           ; $5da4: $00
    dec b                                         ; $5da5: $05
    sub l                                         ; $5da6: $95
    add sp, $4e                                   ; $5da7: $e8 $4e
    ldh a, [$6f]                                  ; $5da9: $f0 $6f
    ldh a, [rPCM12]                               ; $5dab: $f0 $76
    nop                                           ; $5dad: $00
    add sp, $2f                                   ; $5dae: $e8 $2f
    ldh a, [$66]                                  ; $5db0: $f0 $66
    ld hl, sp-$15                                 ; $5db2: $f8 $eb
    db $f4                                        ; $5db4: $f4
    rst $10                                       ; $5db5: $d7
    nop                                           ; $5db6: $00
    ret c                                         ; $5db7: $d8

    ld e, d                                       ; $5db8: $5a
    rst $38                                       ; $5db9: $ff
    reti                                          ; $5dba: $d9


    rst $38                                       ; $5dbb: $ff
    inc sp                                        ; $5dbc: $33
    rst $38                                       ; $5dbd: $ff
    xor a                                         ; $5dbe: $af
    nop                                           ; $5dbf: $00
    ld a, l                                       ; $5dc0: $7d
    ld a, a                                       ; $5dc1: $7f
    ld a, c                                       ; $5dc2: $79
    xor c                                         ; $5dc3: $a9
    ld [hl], a                                    ; $5dc4: $77
    ld sp, $036f                                  ; $5dc5: $31 $6f $03
    nop                                           ; $5dc8: $00
    ld a, a                                       ; $5dc9: $7f
    call nc, $fee3                                ; $5dca: $d4 $e3 $fe
    pop bc                                        ; $5dcd: $c1
    or a                                          ; $5dce: $b7
    pop bc                                        ; $5dcf: $c1
    or e                                          ; $5dd0: $b3
    nop                                           ; $5dd1: $00
    pop bc                                        ; $5dd2: $c1
    ret nc                                        ; $5dd3: $d0

    sub e                                         ; $5dd4: $93
    db $db                                        ; $5dd5: $db
    sub d                                         ; $5dd6: $92
    rst $38                                       ; $5dd7: $ff
    sbc d                                         ; $5dd8: $9a
    sub $00                                       ; $5dd9: $d6 $00
    sbc [hl]                                      ; $5ddb: $9e
    jp c, $a227                                   ; $5ddc: $da $27 $a2

    ld b, a                                       ; $5ddf: $47
    add d                                         ; $5de0: $82
    ld h, a                                       ; $5de1: $67
    sub a                                         ; $5de2: $97
    nop                                           ; $5de3: $00
    ld h, e                                       ; $5de4: $63
    add a                                         ; $5de5: $87
    ld h, e                                       ; $5de6: $63
    ld de, $5163                                  ; $5de7: $11 $63 $51
    inc hl                                        ; $5dea: $23
    ld b, c                                       ; $5deb: $41
    nop                                           ; $5dec: $00
    ld hl, $0efd                                  ; $5ded: $21 $fd $0e
    add sp, $1e                                   ; $5df0: $e8 $1e
    db $eb                                        ; $5df2: $eb
    inc e                                         ; $5df3: $1c
    ld [$1c20], a                                 ; $5df4: $ea $20 $1c
    add sp, $02                                   ; $5df7: $e8 $02
    nop                                           ; $5df9: $00
    ld hl, sp+$0c                                 ; $5dfa: $f8 $0c
    ld a, [$000c]                                 ; $5dfc: $fa $0c $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    ld h, b                                       ; $5e01: $60
    ret nz                                        ; $5e02: $c0

    add sp, -$10                                  ; $5e03: $e8 $f0
    xor d                                         ; $5e05: $aa
    inc e                                         ; $5e06: $1c
    sbc a                                         ; $5e07: $9f
    nop                                           ; $5e08: $00
    rst $08                                       ; $5e09: $cf
    sub d                                         ; $5e0a: $92
    sbc a                                         ; $5e0b: $9f
    ld d, e                                       ; $5e0c: $53
    sbc [hl]                                      ; $5e0d: $9e
    cp c                                          ; $5e0e: $b9
    rra                                           ; $5e0f: $1f
    ld b, d                                       ; $5e10: $42
    nop                                           ; $5e11: $00
    db $e4                                        ; $5e12: $e4
    ld e, [hl]                                    ; $5e13: $5e
    db $e4                                        ; $5e14: $e4
    add hl, sp                                    ; $5e15: $39
    db $fc                                        ; $5e16: $fc
    ld [$7cfd], sp                                ; $5e17: $08 $fd $7c
    nop                                           ; $5e1a: $00
    cp $91                                        ; $5e1b: $fe $91
    ei                                            ; $5e1d: $fb
    cp b                                          ; $5e1e: $b8
    ld d, d                                       ; $5e1f: $52
    halt                                          ; $5e20: $76

jr_0bf_5e21:
    sub b                                         ; $5e21: $90
    ld l, a                                       ; $5e22: $6f
    nop                                           ; $5e23: $00
    rst $08                                       ; $5e24: $cf
    ld e, e                                       ; $5e25: $5b
    rst $08                                       ; $5e26: $cf
    add l                                         ; $5e27: $85
    sbc e                                         ; $5e28: $9b
    cp l                                          ; $5e29: $bd
    inc de                                        ; $5e2a: $13
    dec e                                         ; $5e2b: $1d
    nop                                           ; $5e2c: $00
    inc sp                                        ; $5e2d: $33
    ld l, e                                       ; $5e2e: $6b
    rlca                                          ; $5e2f: $07
    xor h                                         ; $5e30: $ac
    rra                                           ; $5e31: $1f
    or l                                          ; $5e32: $b5
    ld a, d                                       ; $5e33: $7a
    ld [hl+], a                                   ; $5e34: $22
    nop                                           ; $5e35: $00
    jr nc, jr_0bf_5ea9                            ; $5e36: $30 $71

    jr nz, jr_0bf_5e5b                            ; $5e38: $20 $21

    jr nz, jr_0bf_5e8c                            ; $5e3a: $20 $50

    ld hl, $0023                                  ; $5e3c: $21 $23 $00
    ld b, c                                       ; $5e3f: $41
    ld b, d                                       ; $5e40: $42
    ld b, d                                       ; $5e41: $42
    and $42                                       ; $5e42: $e6 $42
    nop                                           ; $5e44: $00
    add $9a                                       ; $5e45: $c6 $9a
    nop                                           ; $5e47: $00
    and $a2                                       ; $5e48: $e6 $a2
    sub $86                                       ; $5e4a: $d6 $86
    cp $eb                                        ; $5e4c: $fe $eb
    and $c2                                       ; $5e4e: $e6 $c2
    nop                                           ; $5e50: $00
    and $67                                       ; $5e51: $e6 $67
    jp nz, $c3e2                                  ; $5e53: $c2 $e2 $c3

    ld h, e                                       ; $5e56: $63
    jp nz, Jump_000_0078                          ; $5e57: $c2 $78 $00

    rlca                                          ; $5e5a: $07

jr_0bf_5e5b:
    dec e                                         ; $5e5b: $1d
    inc bc                                        ; $5e5c: $03
    jr z, @+$19                                   ; $5e5d: $28 $17

    ld d, h                                       ; $5e5f: $54
    dec hl                                        ; $5e60: $2b
    jr z, jr_0bf_5e63                             ; $5e61: $28 $00

jr_0bf_5e63:
    rla                                           ; $5e63: $17
    adc d                                         ; $5e64: $8a
    dec e                                         ; $5e65: $1d
    ld [hl], h                                    ; $5e66: $74
    rrca                                          ; $5e67: $0f
    ld e, $07                                     ; $5e68: $1e $07
    sbc $00                                       ; $5e6a: $de $00
    pop hl                                        ; $5e6c: $e1
    ld c, l                                       ; $5e6d: $4d
    ldh a, [$ee]                                  ; $5e6e: $f0 $ee
    jr nc, jr_0bf_5ec8                            ; $5e70: $30 $56

    jr c, jr_0bf_5e21                             ; $5e72: $38 $ad

    ld bc, $5e18                                  ; $5e74: $01 $18 $5e
    inc c                                         ; $5e77: $0c
    ld e, [hl]                                    ; $5e78: $5e
    inc b                                         ; $5e79: $04
    ld d, e                                       ; $5e7a: $53
    inc b                                         ; $5e7b: $04
    ld a, h                                       ; $5e7c: $7c
    dec c                                         ; $5e7d: $0d
    nop                                           ; $5e7e: $00
    ld d, l                                       ; $5e7f: $55
    nop                                           ; $5e80: $00
    xor e                                         ; $5e81: $ab
    nop                                           ; $5e82: $00
    jp c, Jump_000_2a00                           ; $5e83: $da $00 $2a

    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    push de                                       ; $5e88: $d5
    nop                                           ; $5e89: $00
    dec h                                         ; $5e8a: $25
    nop                                           ; $5e8b: $00

jr_0bf_5e8c:
    sub l                                         ; $5e8c: $95
    ld e, d                                       ; $5e8d: $5a
    xor a                                         ; $5e8e: $af
    stop                                          ; $5e8f: $10 $00
    scf                                           ; $5e91: $37
    and b                                         ; $5e92: $a0
    ld c, [hl]                                    ; $5e93: $4e
    ldh [$fd], a                                  ; $5e94: $e0 $fd
    ld b, b                                       ; $5e96: $40
    ld [hl], $40                                  ; $5e97: $36 $40
    nop                                           ; $5e99: $00
    sbc d                                         ; $5e9a: $9a
    ret nz                                        ; $5e9b: $c0

    push af                                       ; $5e9c: $f5
    add b                                         ; $5e9d: $80
    jr z, @+$64                                   ; $5e9e: $28 $62

    jp c, Jump_000_0065                           ; $5ea0: $da $65 $00

    ld l, d                                       ; $5ea3: $6a
    ld [hl], c                                    ; $5ea4: $71
    ld h, b                                       ; $5ea5: $60
    ld b, b                                       ; $5ea6: $40
    ret nz                                        ; $5ea7: $c0

    add b                                         ; $5ea8: $80

jr_0bf_5ea9:
    xor [hl]                                      ; $5ea9: $ae
    cp a                                          ; $5eaa: $bf
    nop                                           ; $5eab: $00
    db $dd                                        ; $5eac: $dd
    db $e3                                        ; $5ead: $e3
    cp [hl]                                       ; $5eae: $be
    pop bc                                        ; $5eaf: $c1
    cp l                                          ; $5eb0: $bd
    jr jr_0bf_5ecd                                ; $5eb1: $18 $1a

    jr nc, jr_0bf_5eb5                            ; $5eb3: $30 $00

jr_0bf_5eb5:
    ld h, [hl]                                    ; $5eb5: $66
    inc a                                         ; $5eb6: $3c
    ld [de], a                                    ; $5eb7: $12
    ld h, e                                       ; $5eb8: $63
    ld d, c                                       ; $5eb9: $51
    ld h, c                                       ; $5eba: $61
    db $fc                                        ; $5ebb: $fc
    ld a, c                                       ; $5ebc: $79
    ld [bc], a                                    ; $5ebd: $02
    or $4c                                        ; $5ebe: $f6 $4c
    sub e                                         ; $5ec0: $93
    add $04                                       ; $5ec1: $c6 $04
    rrca                                          ; $5ec3: $0f
    ld [bc], a                                    ; $5ec4: $02
    jr z, @+$0a                                   ; $5ec5: $28 $08

    add b                                         ; $5ec7: $80

jr_0bf_5ec8:
    ld [bc], a                                    ; $5ec8: $02
    db $10                                        ; $5ec9: $10
    sbc [hl]                                      ; $5eca: $9e
    ldh a, [rNR14]                                ; $5ecb: $f0 $14

jr_0bf_5ecd:
    ld a, [$bc53]                                 ; $5ecd: $fa $53 $bc
    or b                                          ; $5ed0: $b0
    nop                                           ; $5ed1: $00
    ld a, [hl]                                    ; $5ed2: $7e
    ld [hl], e                                    ; $5ed3: $73
    db $fc                                        ; $5ed4: $fc
    ld hl, sp-$02                                 ; $5ed5: $f8 $fe
    set 7, h                                      ; $5ed7: $cb $fc
    adc b                                         ; $5ed9: $88
    nop                                           ; $5eda: $00
    cp $b9                                        ; $5edb: $fe $b9
    ld d, b                                       ; $5edd: $50
    ld [hl], d                                    ; $5ede: $72
    ld d, c                                       ; $5edf: $51
    dec h                                         ; $5ee0: $25
    ld [hl], e                                    ; $5ee1: $73
    ld a, [$6700]                                 ; $5ee2: $fa $00 $67
    rst $28                                       ; $5ee5: $ef
    ld a, [hl]                                    ; $5ee6: $7e
    push hl                                       ; $5ee7: $e5
    ld a, [hl]                                    ; $5ee8: $7e
    xor $a5                                       ; $5ee9: $ee $a5
    call Call_000_2700                            ; $5eeb: $cd $00 $27
    ld hl, $00c1                                  ; $5eee: $21 $c1 $00
    ld bc, $0e0f                                  ; $5ef1: $01 $0f $0e
    inc b                                         ; $5ef4: $04
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    sbc b                                         ; $5ef7: $98
    nop                                           ; $5ef8: $00
    jp nz, $befd                                  ; $5ef9: $c2 $fd $be

    rst $38                                       ; $5efc: $ff
    jp Jump_0bf_7e28                              ; $5efd: $c3 $28 $7e


    inc c                                         ; $5f00: $0c
    ld e, $04                                     ; $5f01: $1e $04
    add b                                         ; $5f03: $80
    ldh a, [rTIMA]                                ; $5f04: $f0 $05
    ld bc, $8180                                  ; $5f06: $01 $80 $81
    nop                                           ; $5f09: $00
    add b                                         ; $5f0a: $80
    ret nz                                        ; $5f0b: $c0

    add b                                         ; $5f0c: $80
    ldh [$80], a                                  ; $5f0d: $e0 $80
    ret z                                         ; $5f0f: $c8

    rst $30                                       ; $5f10: $f7
    ld a, l                                       ; $5f11: $7d
    nop                                           ; $5f12: $00
    db $e3                                        ; $5f13: $e3
    ld l, l                                       ; $5f14: $6d
    ld [hl], c                                    ; $5f15: $71
    ld h, l                                       ; $5f16: $65
    add hl, sp                                    ; $5f17: $39
    ld [hl], c                                    ; $5f18: $71
    dec a                                         ; $5f19: $3d
    push de                                       ; $5f1a: $d5
    nop                                           ; $5f1b: $00
    add hl, sp                                    ; $5f1c: $39
    sub e                                         ; $5f1d: $93
    ld a, h                                       ; $5f1e: $7c
    ld e, d                                       ; $5f1f: $5a
    cp h                                          ; $5f20: $bc
    ld e, a                                       ; $5f21: $5f
    jr nz, @+$31                                  ; $5f22: $20 $2f

    nop                                           ; $5f24: $00
    db $10                                        ; $5f25: $10
    rla                                           ; $5f26: $17
    ld [$048b], sp                                ; $5f27: $08 $8b $04
    ld b, l                                       ; $5f2a: $45
    add d                                         ; $5f2b: $82
    and d                                         ; $5f2c: $a2
    nop                                           ; $5f2d: $00
    pop bc                                        ; $5f2e: $c1
    ld d, c                                       ; $5f2f: $51
    pop hl                                        ; $5f30: $e1
    xor c                                         ; $5f31: $a9
    ld [hl], b                                    ; $5f32: $70
    ld e, h                                       ; $5f33: $5c
    ld hl, sp-$76                                 ; $5f34: $f8 $8a
    nop                                           ; $5f36: $00
    ld a, h                                       ; $5f37: $7c
    ld b, l                                       ; $5f38: $45
    cp [hl]                                       ; $5f39: $be
    and d                                         ; $5f3a: $a2
    ld e, a                                       ; $5f3b: $5f
    push de                                       ; $5f3c: $d5
    dec hl                                        ; $5f3d: $2b
    ld a, d                                       ; $5f3e: $7a
    nop                                           ; $5f3f: $00
    dec b                                         ; $5f40: $05
    sbc l                                         ; $5f41: $9d
    ld [bc], a                                    ; $5f42: $02
    and [hl]                                      ; $5f43: $a6
    pop bc                                        ; $5f44: $c1
    db $f4                                        ; $5f45: $f4
    ei                                            ; $5f46: $fb
    ld [hl-], a                                   ; $5f47: $32
    nop                                           ; $5f48: $00
    dec e                                         ; $5f49: $1d
    db $ed                                        ; $5f4a: $ed
    ld e, $be                                     ; $5f4b: $1e $be
    ld a, a                                       ; $5f4d: $7f
    dec de                                        ; $5f4e: $1b
    db $fc                                        ; $5f4f: $fc
    sub l                                         ; $5f50: $95
    nop                                           ; $5f51: $00
    xor $bd                                       ; $5f52: $ee $bd
    ld h, e                                       ; $5f54: $63
    ld e, $31                                     ; $5f55: $1e $31
    ld bc, $7300                                  ; $5f57: $01 $00 $73
    nop                                           ; $5f5a: $00
    adc [hl]                                      ; $5f5b: $8e
    dec de                                        ; $5f5c: $1b
    db $fc                                        ; $5f5d: $fc
    dec l                                         ; $5f5e: $2d
    di                                            ; $5f5f: $f3
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    jp nc, $e100                                  ; $5f62: $d2 $00 $e1

    cp b                                          ; $5f65: $b8
    ret nz                                        ; $5f66: $c0

    call c, $8b60                                 ; $5f67: $dc $60 $8b
    inc e                                         ; $5f6a: $1c
    ld b, h                                       ; $5f6b: $44
    nop                                           ; $5f6c: $00
    rrca                                          ; $5f6d: $0f
    adc h                                         ; $5f6e: $8c
    rlca                                          ; $5f6f: $07
    ld b, d                                       ; $5f70: $42
    rlca                                          ; $5f71: $07
    inc de                                        ; $5f72: $13
    inc bc                                        ; $5f73: $03
    add c                                         ; $5f74: $81
    ld [bc], a                                    ; $5f75: $02
    inc bc                                        ; $5f76: $03
    ld sp, $5a03                                  ; $5f77: $31 $03 $5a
    inc hl                                        ; $5f7a: $23
    ld [$05de], a                                 ; $5f7b: $ea $de $05
    ld l, d                                       ; $5f7e: $6a
    jr z, jr_0bf_5f81                             ; $5f7f: $28 $00

jr_0bf_5f81:
    rst $10                                       ; $5f81: $d7
    adc h                                         ; $5f82: $8c
    rlca                                          ; $5f83: $07
    ld l, d                                       ; $5f84: $6a
    inc b                                         ; $5f85: $04
    ld [$7980], sp                                ; $5f86: $08 $80 $79
    inc b                                         ; $5f89: $04
    nop                                           ; $5f8a: $00
    sbc $05                                       ; $5f8b: $de $05
    ld [hl], d                                    ; $5f8d: $72
    ld c, $c7                                     ; $5f8e: $0e $c7
    ld e, $a7                                     ; $5f90: $1e $a7
    rra                                           ; $5f92: $1f
    nop                                           ; $5f93: $00
    call nz, $cd3f                                ; $5f94: $c4 $3f $cd
    ccf                                           ; $5f97: $3f
    adc h                                         ; $5f98: $8c
    ld a, a                                       ; $5f99: $7f
    rla                                           ; $5f9a: $17
    ld hl, sp+$00                                 ; $5f9b: $f8 $00
    ld l, a                                       ; $5f9d: $6f
    ldh a, [$ad]                                  ; $5f9e: $f0 $ad
    call c, $f401                                 ; $5fa0: $dc $01 $f4
    ld [hl], d                                    ; $5fa3: $72
    sbc h                                         ; $5fa4: $9c
    db $10                                        ; $5fa5: $10
    db $d3                                        ; $5fa6: $d3
    ld [$9cf6], sp                                ; $5fa7: $08 $f6 $9c
    ld [bc], a                                    ; $5faa: $02
    ld c, e                                       ; $5fab: $4b
    rst $38                                       ; $5fac: $ff
    ld d, e                                       ; $5fad: $53
    ld a, a                                       ; $5fae: $7f
    nop                                           ; $5faf: $00
    adc l                                         ; $5fb0: $8d
    rst $38                                       ; $5fb1: $ff
    dec hl                                        ; $5fb2: $2b
    rst $38                                       ; $5fb3: $ff
    ld e, h                                       ; $5fb4: $5c
    rst $38                                       ; $5fb5: $ff
    ld a, b                                       ; $5fb6: $78
    rst $38                                       ; $5fb7: $ff
    nop                                           ; $5fb8: $00
    or e                                          ; $5fb9: $b3
    db $fc                                        ; $5fba: $fc
    add $f8                                       ; $5fbb: $c6 $f8
    adc c                                         ; $5fbd: $89
    rst $38                                       ; $5fbe: $ff
    and d                                         ; $5fbf: $a2
    rst $38                                       ; $5fc0: $ff
    nop                                           ; $5fc1: $00
    sub [hl]                                      ; $5fc2: $96
    db $fd                                        ; $5fc3: $fd
    daa                                           ; $5fc4: $27
    db $fd                                        ; $5fc5: $fd
    adc a                                         ; $5fc6: $8f
    rst $38                                       ; $5fc7: $ff
    ld c, b                                       ; $5fc8: $48
    rst $38                                       ; $5fc9: $ff
    db $10                                        ; $5fca: $10
    ld a, [hl+]                                   ; $5fcb: $2a
    rst $38                                       ; $5fcc: $ff
    ld e, l                                       ; $5fcd: $5d
    cp l                                          ; $5fce: $bd
    ld c, $fe                                     ; $5fcf: $0e $fe
    ld d, h                                       ; $5fd1: $54
    xor e                                         ; $5fd2: $ab
    xor d                                         ; $5fd3: $aa
    nop                                           ; $5fd4: $00
    ld d, l                                       ; $5fd5: $55
    rla                                           ; $5fd6: $17
    rst $28                                       ; $5fd7: $ef
    ld [hl], h                                    ; $5fd8: $74
    ld hl, sp+$09                                 ; $5fd9: $f8 $09
    rlca                                          ; $5fdb: $07
    ld a, a                                       ; $5fdc: $7f
    jr nz, @+$01                                  ; $5fdd: $20 $ff

    ld d, h                                       ; $5fdf: $54
    or h                                          ; $5fe0: $b4
    rlca                                          ; $5fe1: $07
    ld bc, $aafe                                  ; $5fe2: $01 $fe $aa
    ld d, l                                       ; $5fe5: $55
    ld d, l                                       ; $5fe6: $55
    ld bc, $a0aa                                  ; $5fe7: $01 $aa $a0
    ld e, a                                       ; $5fea: $5f
    dec c                                         ; $5feb: $0d
    cp $69                                        ; $5fec: $fe $69
    ldh a, [$de]                                  ; $5fee: $f0 $de
    ld d, $00                                     ; $5ff0: $16 $00
    ld bc, $03fd                                  ; $5ff2: $01 $fd $03
    ei                                            ; $5ff5: $fb
    add a                                         ; $5ff6: $87
    di                                            ; $5ff7: $f3
    adc l                                         ; $5ff8: $8d
    cp c                                          ; $5ff9: $b9
    nop                                           ; $5ffa: $00
    ret c                                         ; $5ffb: $d8

    push bc                                       ; $5ffc: $c5
    ldh a, [$f7]                                  ; $5ffd: $f0 $f7
    db $fc                                        ; $5fff: $fc
    ld d, a                                       ; $6000: $57
    xor $14                                       ; $6001: $ee $14
    nop                                           ; $6003: $00
    inc hl                                        ; $6004: $23
    ld sp, $0121                                  ; $6005: $31 $21 $01
    jr nc, jr_0bf_602a                            ; $6008: $30 $20

    db $10                                        ; $600a: $10
    jr nz, @+$0a                                  ; $600b: $20 $08

    ld de, $1113                                  ; $600d: $11 $13 $11
    rrca                                          ; $6010: $0f
    db $e4                                        ; $6011: $e4
    rlca                                          ; $6012: $07
    jp $8cfc                                      ; $6013: $c3 $fc $8c


    nop                                           ; $6016: $00
    ldh a, [$90]                                  ; $6017: $f0 $90
    ldh [$e8], a                                  ; $6019: $e0 $e8
    ldh a, [rWY]                                  ; $601b: $f0 $4a
    cp h                                          ; $601d: $bc
    dec b                                         ; $601e: $05
    jr nz, jr_0bf_602f                            ; $601f: $20 $0e

    add b                                         ; $6021: $80
    rrca                                          ; $6022: $0f
    rlca                                          ; $6023: $07
    dec bc                                        ; $6024: $0b
    push af                                       ; $6025: $f5
    ld b, a                                       ; $6026: $47
    cp e                                          ; $6027: $bb
    ld a, a                                       ; $6028: $7f
    nop                                           ; $6029: $00

jr_0bf_602a:
    rst $38                                       ; $602a: $ff
    db $f4                                        ; $602b: $f4
    cp b                                          ; $602c: $b8
    ldh [$71], a                                  ; $602d: $e0 $71

Jump_0bf_602f:
jr_0bf_602f:
    ld [hl], e                                    ; $602f: $73

jr_0bf_6030:
    db $e3                                        ; $6030: $e3
    db $fc                                        ; $6031: $fc
    ld [$d10f], sp                                ; $6032: $08 $0f $d1
    ccf                                           ; $6035: $3f
    and h                                         ; $6036: $a4
    ld e, h                                       ; $6037: $5c
    ld b, $9f                                     ; $6038: $06 $9f
    rst $38                                       ; $603a: $ff
    ld a, c                                       ; $603b: $79
    nop                                           ; $603c: $00
    rst $38                                       ; $603d: $ff
    sbc l                                         ; $603e: $9d
    rst $38                                       ; $603f: $ff
    ei                                            ; $6040: $fb
    ld a, [$3407]                                 ; $6041: $fa $07 $34
    ld b, l                                       ; $6044: $45
    nop                                           ; $6045: $00
    ld [hl+], a                                   ; $6046: $22
    ld c, c                                       ; $6047: $49
    ld h, d                                       ; $6048: $62
    db $d3                                        ; $6049: $d3
    ld [c], a                                     ; $604a: $e2
    and c                                         ; $604b: $a1
    db $d3                                        ; $604c: $d3
    ld de, $e300                                  ; $604d: $11 $00 $e3
    dec h                                         ; $6050: $25
    pop de                                        ; $6051: $d1
    sbc c                                         ; $6052: $99
    ld h, c                                       ; $6053: $61
    ld d, l                                       ; $6054: $55
    add hl, sp                                    ; $6055: $39
    ldh a, [rP1]                                  ; $6056: $f0 $00
    jr @+$2a                                      ; $6058: $18 $28

    jr @-$58                                      ; $605a: $18 $a6

    inc e                                         ; $605c: $1c
    ld d, $0f                                     ; $605d: $16 $0f
    sbc c                                         ; $605f: $99

jr_0bf_6060:
    nop                                           ; $6060: $00
    rlca                                          ; $6061: $07
    inc c                                         ; $6062: $0c
    inc bc                                        ; $6063: $03
    ld b, a                                       ; $6064: $47
    ld bc, $0c19                                  ; $6065: $01 $19 $0c
    scf                                           ; $6068: $37
    nop                                           ; $6069: $00
    jr @+$51                                      ; $606a: $18 $4f

    jr nc, jr_0bf_6060                            ; $606c: $30 $f2

    ld l, h                                       ; $606e: $6c
    rst $28                                       ; $606f: $ef
    ret nc                                        ; $6070: $d0

    sub [hl]                                      ; $6071: $96
    nop                                           ; $6072: $00
    add sp, -$71                                  ; $6073: $e8 $8f
    ldh a, [$ce]                                  ; $6075: $f0 $ce
    ldh a, [rOCPS]                                ; $6077: $f0 $6a
    db $e4                                        ; $6079: $e4
    ld b, $00                                     ; $607a: $06 $00
    jr @-$39                                      ; $607c: $18 $c5

    jr c, jr_0bf_6030                             ; $607e: $38 $b0

    ld b, b                                       ; $6080: $40
    ld [$7381], a                                 ; $6081: $ea $81 $73
    nop                                           ; $6084: $00
    rst $08                                       ; $6085: $cf
    ld a, $ff                                     ; $6086: $3e $ff
    inc d                                         ; $6088: $14
    rst $38                                       ; $6089: $ff
    or [hl]                                       ; $608a: $b6
    ret c                                         ; $608b: $d8

jr_0bf_608c:
    add hl, bc                                    ; $608c: $09
    nop                                           ; $608d: $00
    cp $45                                        ; $608e: $fe $45
    cp [hl]                                       ; $6090: $be
    ld a, [c]                                     ; $6091: $f2
    ccf                                           ; $6092: $3f
    pop hl                                        ; $6093: $e1
    ld a, a                                       ; $6094: $7f
    ret z                                         ; $6095: $c8

    nop                                           ; $6096: $00
    ld [hl], a                                    ; $6097: $77
    ld e, [hl]                                    ; $6098: $5e
    pop hl                                        ; $6099: $e1
    sbc $e1                                       ; $609a: $de $e1
    sub e                                         ; $609c: $93
    rst $20                                       ; $609d: $e7
    cp e                                          ; $609e: $bb
    nop                                           ; $609f: $00
    rst $00                                       ; $60a0: $c7
    ld c, c                                       ; $60a1: $49
    sub a                                         ; $60a2: $97
    ld a, a                                       ; $60a3: $7f
    add a                                         ; $60a4: $87
    ld [c], a                                     ; $60a5: $e2
    rra                                           ; $60a6: $1f
    ld h, [hl]                                    ; $60a7: $66
    inc b                                         ; $60a8: $04
    rra                                           ; $60a9: $1f
    db $d3                                        ; $60aa: $d3
    ld l, $f6                                     ; $60ab: $2e $f6
    rrca                                          ; $60ad: $0f
    xor h                                         ; $60ae: $ac
    ld [$03ff], sp                                ; $60af: $08 $ff $03
    nop                                           ; $60b2: $00
    ei                                            ; $60b3: $fb
    rlca                                          ; $60b4: $07
    db $fc                                        ; $60b5: $fc
    rlca                                          ; $60b6: $07
    or $0f                                        ; $60b7: $f6 $0f
    push af                                       ; $60b9: $f5
    ld c, $00                                     ; $60ba: $0e $00
    db $fc                                        ; $60bc: $fc
    ld c, $4f                                     ; $60bd: $0e $4f
    add h                                         ; $60bf: $84
    jp nc, $f8e2                                  ; $60c0: $d2 $e2 $f8

    jr nc, jr_0bf_60c5                            ; $60c3: $30 $00

jr_0bf_60c5:
    inc e                                         ; $60c5: $1c
    ld [$0400], sp                                ; $60c6: $08 $00 $04
    ldh [$c0], a                                  ; $60c9: $e0 $c0
    ld e, h                                       ; $60cb: $5c
    jr c, jr_0bf_60ce                             ; $60cc: $38 $00

jr_0bf_60ce:
    inc c                                         ; $60ce: $0c
    inc b                                         ; $60cf: $04
    ld e, [hl]                                    ; $60d0: $5e
    db $e3                                        ; $60d1: $e3
    ld l, a                                       ; $60d2: $6f
    inc e                                         ; $60d3: $1c
    rst $28                                       ; $60d4: $ef
    ld [hl], e                                    ; $60d5: $73
    nop                                           ; $60d6: $00
    and a                                         ; $60d7: $a7
    jp nz, $82c3                                  ; $60d8: $c2 $c3 $82

    ld bc, $a2c2                                  ; $60db: $01 $c2 $a2
    jp $e600                                      ; $60de: $c3 $00 $e6


    jp nz, Jump_000_1834                          ; $60e1: $c2 $34 $18

    ld a, [hl+]                                   ; $60e4: $2a
    inc e                                         ; $60e5: $1c
    dec d                                         ; $60e6: $15
    ld c, $00                                     ; $60e7: $0e $00
    scf                                           ; $60e9: $37
    add hl, de                                    ; $60ea: $19
    db $dd                                        ; $60eb: $dd
    jr nc, jr_0bf_6152                            ; $60ec: $30 $64

    cp h                                          ; $60ee: $bc
    sub a                                         ; $60ef: $97
    cp $00                                        ; $60f0: $fe $00
    db $ec                                        ; $60f2: $ec
    rst $30                                       ; $60f3: $f7
    or e                                          ; $60f4: $b3
    ld a, [hl]                                    ; $60f5: $7e
    ei                                            ; $60f6: $fb
    or $37                                        ; $60f7: $f6 $37
    sbc d                                         ; $60f9: $9a
    nop                                           ; $60fa: $00
    dec de                                        ; $60fb: $1b
    ld [de], a                                    ; $60fc: $12
    inc a                                         ; $60fd: $3c
    inc de                                        ; $60fe: $13
    dec bc                                        ; $60ff: $0b
    ld de, $1031                                  ; $6100: $11 $31 $10
    nop                                           ; $6103: $00
    inc b                                         ; $6104: $04
    jr nc, jr_0bf_608c                            ; $6105: $30 $85

    ld c, $ce                                     ; $6107: $0e $ce
    rlca                                          ; $6109: $07
    ld l, e                                       ; $610a: $6b
    add a                                         ; $610b: $87
    nop                                           ; $610c: $00
    and d                                         ; $610d: $a2
    ld b, a                                       ; $610e: $47
    ld [hl], e                                    ; $610f: $73
    add [hl]                                      ; $6110: $86
    ld [hl-], a                                   ; $6111: $32
    add $51                                       ; $6112: $c6 $51
    and [hl]                                      ; $6114: $a6
    nop                                           ; $6115: $00
    or d                                          ; $6116: $b2
    add $1b                                       ; $6117: $c6 $1b
    di                                            ; $6119: $f3
    dec c                                         ; $611a: $0d
    ei                                            ; $611b: $fb
    and l                                         ; $611c: $a5
    ld e, [hl]                                    ; $611d: $5e
    nop                                           ; $611e: $00
    ld d, d                                       ; $611f: $52
    xor a                                         ; $6120: $af
    db $eb                                        ; $6121: $eb
    rla                                           ; $6122: $17
    ld [hl], c                                    ; $6123: $71
    rrca                                          ; $6124: $0f
    ld a, c                                       ; $6125: $79
    rlca                                          ; $6126: $07
    nop                                           ; $6127: $00
    dec [hl]                                      ; $6128: $35
    dec bc                                        ; $6129: $0b
    ld e, d                                       ; $612a: $5a
    ldh [$a5], a                                  ; $612b: $e0 $a5
    ld hl, sp-$01                                 ; $612d: $f8 $ff
    nop                                           ; $612f: $00
    ld b, b                                       ; $6130: $40
    xor d                                         ; $6131: $aa
    ld a, h                                       ; $6132: $7c
    ld [bc], a                                    ; $6133: $02
    ld l, d                                       ; $6134: $6a
    add b                                         ; $6135: $80
    ld l, d                                       ; $6136: $6a
    add b                                         ; $6137: $80
    dec [hl]                                      ; $6138: $35
    ret nz                                        ; $6139: $c0

    db $10                                        ; $613a: $10
    ld b, c                                       ; $613b: $41
    rst $38                                       ; $613c: $ff
    ld c, a                                       ; $613d: $4f
    ld e, h                                       ; $613e: $5c
    ld b, $e1                                     ; $613f: $06 $e1
    cp $e0                                        ; $6141: $fe $e0
    rst $38                                       ; $6143: $ff
    nop                                           ; $6144: $00
    jr @+$01                                      ; $6145: $18 $ff

    ld b, [hl]                                    ; $6147: $46
    cp a                                          ; $6148: $bf
    ld a, l                                       ; $6149: $7d
    add e                                         ; $614a: $83
    dec hl                                        ; $614b: $2b
    jr nc, jr_0bf_614e                            ; $614c: $30 $00

jr_0bf_614e:
    sbc $61                                       ; $614e: $de $61
    or b                                          ; $6150: $b0
    rst $08                                       ; $6151: $cf

jr_0bf_6152:
    ld b, c                                       ; $6152: $41
    cp a                                          ; $6153: $bf
    ld h, a                                       ; $6154: $67
    rst $38                                       ; $6155: $ff
    nop                                           ; $6156: $00
    ld e, $ff                                     ; $6157: $1e $ff
    ld b, $ff                                     ; $6159: $06 $ff
    xor c                                         ; $615b: $a9
    ld d, a                                       ; $615c: $57
    ld l, [hl]                                    ; $615d: $6e
    db $fc                                        ; $615e: $fc
    nop                                           ; $615f: $00
    db $eb                                        ; $6160: $eb
    db $fc                                        ; $6161: $fc
    ld a, c                                       ; $6162: $79
    sbc h                                         ; $6163: $9c
    add hl, de                                    ; $6164: $19
    rrca                                          ; $6165: $0f
    adc $e7                                       ; $6166: $ce $e7
    nop                                           ; $6168: $00
    inc [hl]                                      ; $6169: $34
    ccf                                           ; $616a: $3f
    ld e, b                                       ; $616b: $58
    sbc a                                         ; $616c: $9f
    ld d, d                                       ; $616d: $52
    ld c, l                                       ; $616e: $4d
    dec b                                         ; $616f: $05
    rla                                           ; $6170: $17
    nop                                           ; $6171: $00
    dec d                                         ; $6172: $15
    cp a                                          ; $6173: $bf
    rst $30                                       ; $6174: $f7
    rst $28                                       ; $6175: $ef
    ld h, $22                                     ; $6176: $26 $22
    dec a                                         ; $6178: $3d
    rla                                           ; $6179: $17
    nop                                           ; $617a: $00
    ret c                                         ; $617b: $d8

    sbc b                                         ; $617c: $98
    ld [hl], d                                    ; $617d: $72
    pop de                                        ; $617e: $d1
    ld [hl], c                                    ; $617f: $71
    ld h, d                                       ; $6180: $62
    xor $c7                                       ; $6181: $ee $c7
    nop                                           ; $6183: $00
    and a                                         ; $6184: $a7

jr_0bf_6185:
    add hl, de                                    ; $6185: $19
    ld b, l                                       ; $6186: $45
    ccf                                           ; $6187: $3f
    jp nc, $bb2f                                  ; $6188: $d2 $2f $bb

    rlca                                          ; $618b: $07
    nop                                           ; $618c: $00
    ld c, c                                       ; $618d: $49
    inc c                                         ; $618e: $0c
    inc e                                         ; $618f: $1c
    ld [$1445], sp                                ; $6190: $08 $45 $14
    db $10                                        ; $6193: $10
    ccf                                           ; $6194: $3f
    adc h                                         ; $6195: $8c
    ld h, $05                                     ; $6196: $26 $05
    rra                                           ; $6198: $1f
    ld [$361f], sp                                ; $6199: $08 $1f $36
    dec d                                         ; $619c: $15
    xor h                                         ; $619d: $ac
    ld [bc], a                                    ; $619e: $02
    ld h, h                                       ; $619f: $64
    ret z                                         ; $61a0: $c8

    nop                                           ; $61a1: $00
    adc h                                         ; $61a2: $8c
    ret z                                         ; $61a3: $c8

    ld e, b                                       ; $61a4: $58
    adc b                                         ; $61a5: $88
    sbc h                                         ; $61a6: $9c
    db $10                                        ; $61a7: $10
    ld a, [hl-]                                   ; $61a8: $3a
    stop                                          ; $61a9: $10 $00
    inc l                                         ; $61ab: $2c
    jr nc, @+$7c                                  ; $61ac: $30 $7a

    jr nz, jr_0bf_6185                            ; $61ae: $20 $d5

    ld l, b                                       ; $61b0: $68
    add hl, hl                                    ; $61b1: $29
    pop af                                        ; $61b2: $f1
    nop                                           ; $61b3: $00
    ld l, c                                       ; $61b4: $69
    ld sp, $e33b                                  ; $61b5: $31 $3b $e3
    ld h, $f3                                     ; $61b8: $26 $f3
    push de                                       ; $61ba: $d5
    ld h, [hl]                                    ; $61bb: $66
    nop                                           ; $61bc: $00
    ld a, [hl]                                    ; $61bd: $7e
    and h                                         ; $61be: $a4
    ld e, h                                       ; $61bf: $5c
    xor b                                         ; $61c0: $a8
    add sp, -$28                                  ; $61c1: $e8 $d8
    dec de                                        ; $61c3: $1b
    rrca                                          ; $61c4: $0f
    nop                                           ; $61c5: $00
    cp $e0                                        ; $61c6: $fe $e0
    ld c, d                                       ; $61c8: $4a
    or e                                          ; $61c9: $b3
    pop bc                                        ; $61ca: $c1
    add b                                         ; $61cb: $80
    ld [hl], c                                    ; $61cc: $71
    ldh [rP1], a                                  ; $61cd: $e0 $00
    inc hl                                        ; $61cf: $23
    ld sp, $1301                                  ; $61d0: $31 $01 $13
    ld b, c                                       ; $61d3: $41
    inc sp                                        ; $61d4: $33
    xor b                                         ; $61d5: $a8
    ret nz                                        ; $61d6: $c0

    nop                                           ; $61d7: $00
    ld b, c                                       ; $61d8: $41
    add e                                         ; $61d9: $83
    sub a                                         ; $61da: $97
    ld c, $23                                     ; $61db: $0e $23
    rst $38                                       ; $61dd: $ff
    ld e, c                                       ; $61de: $59
    adc a                                         ; $61df: $8f
    nop                                           ; $61e0: $00
    rst $38                                       ; $61e1: $ff
    db $fc                                        ; $61e2: $fc
    ld hl, sp+$5f                                 ; $61e3: $f8 $5f
    ld e, e                                       ; $61e5: $5b
    ld a, $a7                                     ; $61e6: $3e $a7
    sbc a                                         ; $61e8: $9f
    nop                                           ; $61e9: $00
    pop af                                        ; $61ea: $f1
    adc a                                         ; $61eb: $8f
    xor e                                         ; $61ec: $ab
    sub a                                         ; $61ed: $97
    rst $30                                       ; $61ee: $f7
    adc a                                         ; $61ef: $8f
    cp d                                          ; $61f0: $ba
    rst $00                                       ; $61f1: $c7
    inc bc                                        ; $61f2: $03
    or a                                          ; $61f3: $b7
    rst $08                                       ; $61f4: $cf
    sbc d                                         ; $61f5: $9a
    rst $20                                       ; $61f6: $e7
    jp c, Jump_000_18e7                           ; $61f7: $da $e7 $18

    dec l                                         ; $61fa: $2d
    sbc [hl]                                      ; $61fb: $9e
    rla                                           ; $61fc: $17
    nop                                           ; $61fd: $00
    add b                                         ; $61fe: $80
    rst $38                                       ; $61ff: $ff
    ld b, b                                       ; $6200: $40
    scf                                           ; $6201: $37
    sbc b                                         ; $6202: $98
    adc a                                         ; $6203: $8f
    sbc b                                         ; $6204: $98
    inc bc                                        ; $6205: $03
    nop                                           ; $6206: $00
    adc h                                         ; $6207: $8c
    call $e686                                    ; $6208: $cd $86 $e6
    jp $e1e3                                      ; $620b: $c3 $e3 $e1


    ld [hl], c                                    ; $620e: $71
    nop                                           ; $620f: $00
    ldh [$b0], a                                  ; $6210: $e0 $b0
    ld hl, sp+$51                                 ; $6212: $f8 $51
    cpl                                           ; $6214: $2f
    rst $28                                       ; $6215: $ef
    ld c, h                                       ; $6216: $4c
    rst $10                                       ; $6217: $d7
    nop                                           ; $6218: $00
    sbc [hl]                                      ; $6219: $9e
    rla                                           ; $621a: $17
    dec de                                        ; $621b: $1b

Call_0bf_621c:
    sbc a                                         ; $621c: $9f
    cpl                                           ; $621d: $2f
    adc d                                         ; $621e: $8a
    cpl                                           ; $621f: $2f
    dec a                                         ; $6220: $3d
    ld [$18df], sp                                ; $6221: $08 $df $18
    cp a                                          ; $6224: $bf
    dec bc                                        ; $6225: $0b

jr_0bf_6226:
    adc e                                         ; $6226: $8b
    ld b, $01                                     ; $6227: $06 $01
    nop                                           ; $6229: $00
    ld bc, $0000                                  ; $622a: $01 $00 $00
    rst $00                                       ; $622d: $c7
    add d                                         ; $622e: $82
    cp e                                          ; $622f: $bb
    ld [hl], e                                    ; $6230: $73
    dec l                                         ; $6231: $2d
    ld e, $0d                                     ; $6232: $1e $0d
    nop                                           ; $6234: $00
    inc bc                                        ; $6235: $03
    add e                                         ; $6236: $83
    add $e7                                       ; $6237: $c6 $e7
    jp nz, $f26e                                  ; $6239: $c2 $6e $f2

    ld l, $00                                     ; $623c: $2e $00
    inc e                                         ; $623e: $1c
    add l                                         ; $623f: $85
    inc bc                                        ; $6240: $03
    ldh [$c0], a                                  ; $6241: $e0 $c0
    or b                                          ; $6243: $b0
    ld h, b                                       ; $6244: $60
    inc d                                         ; $6245: $14
    nop                                           ; $6246: $00
    jr c, jr_0bf_6226                             ; $6247: $38 $dd

    adc [hl]                                      ; $6249: $8e
    push hl                                       ; $624a: $e5
    jp $e099                                      ; $624b: $c3 $99 $e0


    ld a, [hl-]                                   ; $624e: $3a
    nop                                           ; $624f: $00
    db $fc                                        ; $6250: $fc
    rst $00                                       ; $6251: $c7
    rst $38                                       ; $6252: $ff
    ld [de], a                                    ; $6253: $12
    db $ed                                        ; $6254: $ed
    ld l, $d0                                     ; $6255: $2e $d0
    ld a, l                                       ; $6257: $7d
    nop                                           ; $6258: $00
    add b                                         ; $6259: $80
    sub l                                         ; $625a: $95
    jr c, @+$31                                   ; $625b: $38 $2f

    ld [hl], b                                    ; $625d: $70
    rst $08                                       ; $625e: $cf
    ld [hl], b                                    ; $625f: $70
    sbc e                                         ; $6260: $9b
    nop                                           ; $6261: $00
    ldh [$36], a                                  ; $6262: $e0 $36
    pop bc                                        ; $6264: $c1

jr_0bf_6265:
    ld a, [hl]                                    ; $6265: $7e
    add c                                         ; $6266: $81
    ld [$d307], a                                 ; $6267: $ea $07 $d3
    nop                                           ; $626a: $00
    dec b                                         ; $626b: $05
    ld b, a                                       ; $626c: $47
    ret nz                                        ; $626d: $c0

    db $eb                                        ; $626e: $eb
    ld c, h                                       ; $626f: $4c
    ld sp, hl                                     ; $6270: $f9
    ld [hl+], a                                   ; $6271: $22
    sbc $00                                       ; $6272: $de $00
    cp c                                          ; $6274: $b9
    ld a, l                                       ; $6275: $7d
    jp Jump_0bf_67ba                              ; $6276: $c3 $ba $67


    inc e                                         ; $6279: $1c
    rst $38                                       ; $627a: $ff
    dec bc                                        ; $627b: $0b
    nop                                           ; $627c: $00
    db $fc                                        ; $627d: $fc
    db $fd                                        ; $627e: $fd
    rrca                                          ; $627f: $0f
    dec sp                                        ; $6280: $3b
    ld b, $5c                                     ; $6281: $06 $5c
    add e                                         ; $6283: $83
    rst $38                                       ; $6284: $ff
    nop                                           ; $6285: $00
    pop bc                                        ; $6286: $c1
    cpl                                           ; $6287: $2f
    ldh a, [$5a]                                  ; $6288: $f0 $5a
    db $fd                                        ; $628a: $fd
    call $a2fe                                    ; $628b: $cd $fe $a2
    nop                                           ; $628e: $00
    rst $38                                       ; $628f: $ff
    rra                                           ; $6290: $1f
    rrca                                          ; $6291: $0f
    ld e, d                                       ; $6292: $5a
    ccf                                           ; $6293: $3f
    inc [hl]                                      ; $6294: $34
    rst $38                                       ; $6295: $ff
    add sp, $00                                   ; $6296: $e8 $00
    rst $38                                       ; $6298: $ff
    push af                                       ; $6299: $f5
    cp $f8                                        ; $629a: $fe $f8
    rst $38                                       ; $629c: $ff
    ld a, h                                       ; $629d: $7c
    rst $38                                       ; $629e: $ff
    ld a, d                                       ; $629f: $7a
    nop                                           ; $62a0: $00
    rst $38                                       ; $62a1: $ff
    ld l, d                                       ; $62a2: $6a
    inc e                                         ; $62a3: $1c
    adc d                                         ; $62a4: $8a
    ld a, h                                       ; $62a5: $7c
    sbc l                                         ; $62a6: $9d
    ld a, [hl]                                    ; $62a7: $7e
    dec sp                                        ; $62a8: $3b
    ld [bc], a                                    ; $62a9: $02
    rst $38                                       ; $62aa: $ff
    or $f9                                        ; $62ab: $f6 $f9
    ld l, a                                       ; $62ad: $6f
    ldh a, [rIE]                                  ; $62ae: $f0 $ff
    or h                                          ; $62b0: $b4
    dec b                                         ; $62b1: $05
    sub [hl]                                      ; $62b2: $96
    nop                                           ; $62b3: $00

jr_0bf_62b4:
    add b                                         ; $62b4: $80
    cp c                                          ; $62b5: $b9
    nop                                           ; $62b6: $00
    xor e                                         ; $62b7: $ab
    rlca                                          ; $62b8: $07
    ld d, h                                       ; $62b9: $54
    rrca                                          ; $62ba: $0f
    jr c, jr_0bf_62bd                             ; $62bb: $38 $00

jr_0bf_62bd:
    rra                                           ; $62bd: $1f
    ld h, b                                       ; $62be: $60
    ccf                                           ; $62bf: $3f
    ret nz                                        ; $62c0: $c0

    ld a, a                                       ; $62c1: $7f
    add b                                         ; $62c2: $80
    rst $38                                       ; $62c3: $ff
    add a                                         ; $62c4: $87
    nop                                           ; $62c5: $00
    inc l                                         ; $62c6: $2c
    ld b, a                                       ; $62c7: $47
    inc l                                         ; $62c8: $2c
    rlca                                          ; $62c9: $07
    inc c                                         ; $62ca: $0c
    rlca                                          ; $62cb: $07
    inc c                                         ; $62cc: $0c
    ld b, a                                       ; $62cd: $47
    nop                                           ; $62ce: $00
    inc c                                         ; $62cf: $0c
    and a                                         ; $62d0: $a7
    ld c, h                                       ; $62d1: $4c
    ld b, a                                       ; $62d2: $47
    ld c, h                                       ; $62d3: $4c
    bit 3, h                                      ; $62d4: $cb $5c
    ld d, b                                       ; $62d6: $50
    jr jr_0bf_6265                                ; $62d7: $18 $8c

    adc b                                         ; $62d9: $88
    nop                                           ; $62da: $00
    sub d                                         ; $62db: $92
    dec bc                                        ; $62dc: $0b
    pop bc                                        ; $62dd: $c1
    ld b, $c0                                     ; $62de: $06 $c0
    ld hl, sp-$20                                 ; $62e0: $f8 $e0
    nop                                           ; $62e2: $00
    ld [hl], c                                    ; $62e3: $71
    cp $f4                                        ; $62e4: $fe $f4
    rrca                                          ; $62e6: $0f
    jp hl                                         ; $62e7: $e9


    rra                                           ; $62e8: $1f
    db $f4                                        ; $62e9: $f4
    ccf                                           ; $62ea: $3f
    nop                                           ; $62eb: $00
    ld [c], a                                     ; $62ec: $e2
    ld a, a                                       ; $62ed: $7f
    ld d, c                                       ; $62ee: $51
    rst $38                                       ; $62ef: $ff
    ld hl, sp-$01                                 ; $62f0: $f8 $ff
    rrca                                          ; $62f2: $0f
    rst $38                                       ; $62f3: $ff
    jr c, jr_0bf_6337                             ; $62f4: $38 $41

    rst $38                                       ; $62f6: $ff
    ldh a, [$38]                                  ; $62f7: $f0 $38
    ld a, [hl-]                                   ; $62f9: $3a
    inc b                                         ; $62fa: $04
    ld d, [hl]                                    ; $62fb: $56
    ld b, $9f                                     ; $62fc: $06 $9f
    ldh [$3f], a                                  ; $62fe: $e0 $3f
    ld b, b                                       ; $6300: $40
    jr nz, @+$04                                  ; $6301: $20 $02

    nop                                           ; $6303: $00
    jr nc, jr_0bf_630d                            ; $6304: $30 $07

    ld e, b                                       ; $6306: $58
    ld c, a                                       ; $6307: $4f
    ret z                                         ; $6308: $c8

    xor e                                         ; $6309: $ab

jr_0bf_630a:
    nop                                           ; $630a: $00
    add h                                         ; $630b: $84
    rla                                           ; $630c: $17

jr_0bf_630d:
    add h                                         ; $630d: $84
    ld a, [c]                                     ; $630e: $f2
    dec a                                         ; $630f: $3d
    and a                                         ; $6310: $a7
    ld a, h                                       ; $6311: $7c
    cp l                                          ; $6312: $bd
    nop                                           ; $6313: $00
    halt                                          ; $6314: $76
    xor a                                         ; $6315: $af
    ld [hl], h                                    ; $6316: $74
    cp a                                          ; $6317: $bf
    halt                                          ; $6318: $76
    xor [hl]                                      ; $6319: $ae
    ld [hl], d                                    ; $631a: $72
    and e                                         ; $631b: $a3
    jr jr_0bf_6398                                ; $631c: $18 $7a

    ld a, l                                       ; $631e: $7d
    inc sp                                        ; $631f: $33
    ld c, l                                       ; $6320: $4d
    nop                                           ; $6321: $00
    xor $00                                       ; $6322: $ee $00
    inc bc                                        ; $6324: $03
    nop                                           ; $6325: $00
    dec b                                         ; $6326: $05
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    dec bc                                        ; $6329: $0b
    nop                                           ; $632a: $00
    dec d                                         ; $632b: $15
    ld [bc], a                                    ; $632c: $02
    dec c                                         ; $632d: $0d
    ld b, $40                                     ; $632e: $06 $40
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    jr nz, jr_0bf_62b4                            ; $6332: $20 $80

    call nc, $e980                                ; $6334: $d4 $80 $e9

jr_0bf_6337:
    add b                                         ; $6337: $80
    ld d, h                                       ; $6338: $54
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    ld [c], a                                     ; $633b: $e2
    nop                                           ; $633c: $00
    sbc b                                         ; $633d: $98
    db $10                                        ; $633e: $10
    ld [hl], h                                    ; $633f: $74
    jr nz, jr_0bf_630a                            ; $6340: $20 $c8

    nop                                           ; $6342: $00
    ldh [rVBK], a                                 ; $6343: $e0 $4f
    sub b                                         ; $6345: $90
    ld b, d                                       ; $6346: $42
    dec e                                         ; $6347: $1d
    db $fc                                        ; $6348: $fc
    rrca                                          ; $6349: $0f
    ld a, b                                       ; $634a: $78
    nop                                           ; $634b: $00
    add a                                         ; $634c: $87
    cp l                                          ; $634d: $bd
    ret nz                                        ; $634e: $c0

    rst $38                                       ; $634f: $ff
    ldh [$bf], a                                  ; $6350: $e0 $bf

jr_0bf_6352:
    ldh a, [$98]                                  ; $6352: $f0 $98
    ld [bc], a                                    ; $6354: $02
    db $dd                                        ; $6355: $dd
    ld a, a                                       ; $6356: $7f
    rst $28                                       ; $6357: $ef
    scf                                           ; $6358: $37
    cp $9e                                        ; $6359: $fe $9e
    ld a, h                                       ; $635b: $7c
    dec b                                         ; $635c: $05
    cp c                                          ; $635d: $b9
    nop                                           ; $635e: $00
    ld a, l                                       ; $635f: $7d
    ld l, a                                       ; $6360: $6f
    pop af                                        ; $6361: $f1
    db $dd                                        ; $6362: $dd
    db $e3                                        ; $6363: $e3
    ld d, h                                       ; $6364: $54
    rst $30                                       ; $6365: $f7
    ld [$7f04], a                                 ; $6366: $ea $04 $7f
    di                                            ; $6369: $f3
    ccf                                           ; $636a: $3f
    ei                                            ; $636b: $fb
    rra                                           ; $636c: $1f
    add d                                         ; $636d: $82
    ld e, $fe                                     ; $636e: $1e $fe
    ld bc, $7c00                                  ; $6370: $01 $00 $7c
    ret nc                                        ; $6373: $d0

    sub l                                         ; $6374: $95
    jr c, jr_0bf_6352                             ; $6375: $38 $db

    ld [hl], c                                    ; $6377: $71
    and a                                         ; $6378: $a7
    sub e                                         ; $6379: $93
    nop                                           ; $637a: $00
    ld d, $2f                                     ; $637b: $16 $2f
    ld a, c                                       ; $637d: $79
    ld a, $fa                                     ; $637e: $3e $fa
    ld [hl], a                                    ; $6380: $77
    xor l                                         ; $6381: $ad
    db $db                                        ; $6382: $db
    nop                                           ; $6383: $00
    ld de, $1498                                  ; $6384: $11 $98 $14
    dec de                                        ; $6387: $1b
    dec de                                        ; $6388: $1b
    inc c                                         ; $6389: $0c
    rrca                                          ; $638a: $0f
    rst $00                                       ; $638b: $c7
    ld b, b                                       ; $638c: $40
    ret nz                                        ; $638d: $c0

    or [hl]                                       ; $638e: $b6
    nop                                           ; $638f: $00

jr_0bf_6390:
    ld a, b                                       ; $6390: $78
    ldh a, [$a1]                                  ; $6391: $f0 $a1
    db $10                                        ; $6393: $10
    dec a                                         ; $6394: $3d
    ld d, b                                       ; $6395: $50
    nop                                           ; $6396: $00
    ld [c], a                                     ; $6397: $e2

jr_0bf_6398:
    ld d, c                                       ; $6398: $51
    ld d, c                                       ; $6399: $51
    ld [c], a                                     ; $639a: $e2
    di                                            ; $639b: $f3
    ld hl, $2070                                  ; $639c: $21 $70 $20
    nop                                           ; $639f: $00
    or b                                          ; $63a0: $b0
    ld h, b                                       ; $63a1: $60
    db $e4                                        ; $63a2: $e4
    inc sp                                        ; $63a3: $33
    ld e, d                                       ; $63a4: $5a

jr_0bf_63a5:
    ld sp, $7e44                                  ; $63a5: $31 $44 $7e
    nop                                           ; $63a8: $00
    ld h, [hl]                                    ; $63a9: $66
    inc a                                         ; $63aa: $3c
    ld a, h                                       ; $63ab: $7c
    ccf                                           ; $63ac: $3f
    ld d, $3f                                     ; $63ad: $16 $3f
    inc d                                         ; $63af: $14
    ld a, $00                                     ; $63b0: $3e $00
    or l                                          ; $63b2: $b5
    ld e, $b2                                     ; $63b3: $1e $b2
    rra                                           ; $63b5: $1f
    jp nc, $b43f                                  ; $63b6: $d2 $3f $b4

    ret nz                                        ; $63b9: $c0

    nop                                           ; $63ba: $00
    ld e, d                                       ; $63bb: $5a
    ldh [$3d], a                                  ; $63bc: $e0 $3d
    ld h, b                                       ; $63be: $60
    ld l, [hl]                                    ; $63bf: $6e
    jr nc, jr_0bf_6419                            ; $63c0: $30 $57

    jr c, jr_0bf_63c7                             ; $63c2: $38 $03

    or e                                          ; $63c4: $b3
    ld a, h                                       ; $63c5: $7c
    xor l                                         ; $63c6: $ad

jr_0bf_63c7:
    jp c, $8d5a                                   ; $63c7: $da $5a $8d

    adc e                                         ; $63ca: $8b
    ld bc, $00f0                                  ; $63cb: $01 $f0 $00
    jr nz, jr_0bf_6390                            ; $63ce: $20 $c0

    nop                                           ; $63d0: $00
    add b                                         ; $63d1: $80
    dec bc                                        ; $63d2: $0b
    ld e, l                                       ; $63d3: $5d
    add sp, -$0a                                  ; $63d4: $e8 $f6
    push hl                                       ; $63d6: $e5
    sub c                                         ; $63d7: $91
    nop                                           ; $63d8: $00
    rrca                                          ; $63d9: $0f
    sbc h                                         ; $63da: $9c
    rlca                                          ; $63db: $07
    jr jr_0bf_63e5                                ; $63dc: $18 $07

    add hl, sp                                    ; $63de: $39
    rlca                                          ; $63df: $07
    jr z, jr_0bf_63e2                             ; $63e0: $28 $00

jr_0bf_63e2:
    rlca                                          ; $63e2: $07
    ld e, l                                       ; $63e3: $5d
    ld [bc], a                                    ; $63e4: $02

jr_0bf_63e5:
    ld l, a                                       ; $63e5: $6f
    nop                                           ; $63e6: $00
    push af                                       ; $63e7: $f5
    nop                                           ; $63e8: $00
    ret                                           ; $63e9: $c9


    nop                                           ; $63ea: $00
    add a                                         ; $63eb: $87
    ld a, [bc]                                    ; $63ec: $0a
    add a                                         ; $63ed: $87
    add c                                         ; $63ee: $81
    ld c, $15                                     ; $63ef: $0e $15
    ld c, $0a                                     ; $63f1: $0e $0a
    nop                                           ; $63f3: $00
    inc e                                         ; $63f4: $1c
    ld [hl-], a                                   ; $63f5: $32
    inc e                                         ; $63f6: $1c
    ld d, l                                       ; $63f7: $55
    jr c, jr_0bf_63a5                             ; $63f8: $38 $ab

    ld [hl], h                                    ; $63fa: $74
    ld e, e                                       ; $63fb: $5b
    nop                                           ; $63fc: $00
    ld a, a                                       ; $63fd: $7f
    ld h, l                                       ; $63fe: $65
    ld a, a                                       ; $63ff: $7f
    ld [hl], e                                    ; $6400: $73
    cp a                                          ; $6401: $bf
    cp $7f                                        ; $6402: $fe $7f
    db $fc                                        ; $6404: $fc
    nop                                           ; $6405: $00
    adc $9e                                       ; $6406: $ce $9e
    inc h                                         ; $6408: $24
    jr @+$0e                                      ; $6409: $18 $0c

    sub c                                         ; $640b: $91
    jr jr_0bf_6448                                ; $640c: $18 $3a

    nop                                           ; $640e: $00
    call z, $dca7                                 ; $640f: $cc $a7 $dc
    push hl                                       ; $6412: $e5
    sbc [hl]                                      ; $6413: $9e
    db $e4                                        ; $6414: $e4
    sbc a                                         ; $6415: $9f
    ld bc, $ff00                                  ; $6416: $01 $00 $ff

jr_0bf_6419:
    daa                                           ; $6419: $27
    rst $38                                       ; $641a: $ff
    add $fc                                       ; $641b: $c6 $fc
    and a                                         ; $641d: $a7
    db $fc                                        ; $641e: $fc
    call z, $7e00                                 ; $641f: $cc $00 $7e
    ld h, d                                       ; $6422: $62
    db $fd                                        ; $6423: $fd
    rst $38                                       ; $6424: $ff
    sbc h                                         ; $6425: $9c
    rst $20                                       ; $6426: $e7
    dec c                                         ; $6427: $0d
    ld c, l                                       ; $6428: $4d
    ld bc, $0f07                                  ; $6429: $01 $07 $0f
    add l                                         ; $642c: $85
    dec b                                         ; $642d: $05
    add a                                         ; $642e: $87
    adc [hl]                                      ; $642f: $8e
    rla                                           ; $6430: $17
    jr c, jr_0bf_645a                             ; $6431: $38 $27

    nop                                           ; $6433: $00
    ld bc, $03fe                                  ; $6434: $01 $fe $03
    rst $38                                       ; $6437: $ff
    ld b, $ec                                     ; $6438: $06 $ec
    ld a, [de]                                    ; $643a: $1a
    or a                                          ; $643b: $b7
    ld b, b                                       ; $643c: $40
    ld [hl], d                                    ; $643d: $72
    cpl                                           ; $643e: $2f
    ld c, d                                       ; $643f: $4a
    ret nz                                        ; $6440: $c0

    rst $38                                       ; $6441: $ff
    and b                                         ; $6442: $a0
    ld a, a                                       ; $6443: $7f
    jr nz, jr_0bf_64c5                            ; $6444: $20 $7f

    ld b, b                                       ; $6446: $40
    ret z                                         ; $6447: $c8

jr_0bf_6448:
    ld [bc], a                                    ; $6448: $02
    nop                                           ; $6449: $00
    add sp, $5f                                   ; $644a: $e8 $5f
    ld [hl], b                                    ; $644c: $70
    rst $18                                       ; $644d: $df
    ret nc                                        ; $644e: $d0

    cp a                                          ; $644f: $bf
    nop                                           ; $6450: $00
    db $e3                                        ; $6451: $e3
    or a                                          ; $6452: $b7
    dec a                                         ; $6453: $3d
    and $ea                                       ; $6454: $e6 $ea
    call nz, $c8b6                                ; $6456: $c4 $b6 $c8
    nop                                           ; $6459: $00

jr_0bf_645a:
    ld d, b                                       ; $645a: $50
    xor [hl]                                      ; $645b: $ae
    adc $3f                                       ; $645c: $ce $3f
    ld a, [hl-]                                   ; $645e: $3a
    db $fc                                        ; $645f: $fc
    ld b, b                                       ; $6460: $40
    db $fc                                        ; $6461: $fc
    nop                                           ; $6462: $00
    ld hl, sp-$04                                 ; $6463: $f8 $fc
    ld hl, sp-$03                                 ; $6465: $f8 $fd
    ld l, e                                       ; $6467: $6b
    inc [hl]                                      ; $6468: $34
    inc [hl]                                      ; $6469: $34
    dec de                                        ; $646a: $1b
    nop                                           ; $646b: $00
    adc a                                         ; $646c: $8f
    rra                                           ; $646d: $1f
    ld e, [hl]                                    ; $646e: $5e
    adc a                                         ; $646f: $8f
    xor h                                         ; $6470: $ac
    rst $00                                       ; $6471: $c7
    ld c, h                                       ; $6472: $4c
    rst $20                                       ; $6473: $e7
    nop                                           ; $6474: $00
    ldh [$f7], a                                  ; $6475: $e0 $f7
    ld [hl], a                                    ; $6477: $77
    dec de                                        ; $6478: $1b

jr_0bf_6479:
    ld d, $e8                                     ; $6479: $16 $e8
    ld b, c                                       ; $647b: $41
    cp $01                                        ; $647c: $fe $01
    db $fc                                        ; $647e: $fc
    rst $38                                       ; $647f: $ff
    cpl                                           ; $6480: $2f
    rst $38                                       ; $6481: $ff
    ld a, e                                       ; $6482: $7b
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    cp $06                                        ; $6485: $fe $06
    nop                                           ; $6487: $00
    db $dd                                        ; $6488: $dd
    ldh [rSCY], a                                 ; $6489: $e0 $42
    pop hl                                        ; $648b: $e1
    ld b, a                                       ; $648c: $47
    jp $c74c                                      ; $648d: $c3 $4c $c7


    nop                                           ; $6490: $00
    sub c                                         ; $6491: $91
    rst $08                                       ; $6492: $cf
    ret nc                                        ; $6493: $d0

    adc a                                         ; $6494: $8f
    or c                                          ; $6495: $b1
    adc a                                         ; $6496: $8f
    and d                                         ; $6497: $a2
    sbc a                                         ; $6498: $9f
    db $10                                        ; $6499: $10
    or c                                          ; $649a: $b1
    adc a                                         ; $649b: $8f
    rra                                           ; $649c: $1f
    add a                                         ; $649d: $87
    dec e                                         ; $649e: $1d
    ld [$8897], sp                                ; $649f: $08 $97 $88
    adc a                                         ; $64a2: $8f
    nop                                           ; $64a3: $00
    ld d, b                                       ; $64a4: $50
    ld a, a                                       ; $64a5: $7f
    ld d, b                                       ; $64a6: $50
    ccf                                           ; $64a7: $3f
    jr nc, jr_0bf_6479                            ; $64a8: $30 $cf

    sbc b                                         ; $64aa: $98
    rst $28                                       ; $64ab: $ef
    nop                                           ; $64ac: $00
    call nz, $f287                                ; $64ad: $c4 $87 $f2
    sub c                                         ; $64b0: $91
    db $db                                        ; $64b1: $db
    ld c, l                                       ; $64b2: $4d
    ret z                                         ; $64b3: $c8

    ld h, [hl]                                    ; $64b4: $66
    nop                                           ; $64b5: $00
    call nz, $e2b6                                ; $64b6: $c4 $b6 $e2
    reti                                          ; $64b9: $d9


    ld a, e                                       ; $64ba: $7b
    ld e, [hl]                                    ; $64bb: $5e
    reti                                          ; $64bc: $d9


    rlca                                          ; $64bd: $07
    nop                                           ; $64be: $00
    adc h                                         ; $64bf: $8c
    add a                                         ; $64c0: $87
    sbc h                                         ; $64c1: $9c
    dec a                                         ; $64c2: $3d
    cp $22                                        ; $64c3: $fe $22

jr_0bf_64c5:
    daa                                           ; $64c5: $27
    dec de                                        ; $64c6: $1b
    nop                                           ; $64c7: $00
    add hl, sp                                    ; $64c8: $39
    inc sp                                        ; $64c9: $33
    dec d                                         ; $64ca: $15
    inc e                                         ; $64cb: $1c
    rrca                                          ; $64cc: $0f
    ld a, $16                                     ; $64cd: $3e $16
    xor c                                         ; $64cf: $a9
    nop                                           ; $64d0: $00
    ld l, $12                                     ; $64d1: $2e $12
    ld h, l                                       ; $64d3: $65
    ld b, l                                       ; $64d4: $45
    ld e, l                                       ; $64d5: $5d
    ld d, a                                       ; $64d6: $57
    add hl, bc                                    ; $64d7: $09
    reti                                          ; $64d8: $d9


    nop                                           ; $64d9: $00
    inc de                                        ; $64da: $13
    ld a, [c]                                     ; $64db: $f2
    ld a, e                                       ; $64dc: $7b
    ld e, [hl]                                    ; $64dd: $5e
    rst $28                                       ; $64de: $ef
    rst $38                                       ; $64df: $ff
    ld a, $fc                                     ; $64e0: $3e $fc
    nop                                           ; $64e2: $00
    ld a, $7d                                     ; $64e3: $3e $7d
    sbc h                                         ; $64e5: $9c
    ld a, l                                       ; $64e6: $7d
    dec sp                                        ; $64e7: $3b
    rst $38                                       ; $64e8: $ff
    ld a, [hl]                                    ; $64e9: $7e
    ld a, h                                       ; $64ea: $7c
    nop                                           ; $64eb: $00
    cp $2d                                        ; $64ec: $fe $2d
    ld a, h                                       ; $64ee: $7c
    dec de                                        ; $64ef: $1b
    cp h                                          ; $64f0: $bc
    ld [de], a                                    ; $64f1: $12
    ld h, c                                       ; $64f2: $61
    ld l, [hl]                                    ; $64f3: $6e
    nop                                           ; $64f4: $00
    pop bc                                        ; $64f5: $c1
    jp $88c1                                      ; $64f6: $c3 $c1 $88


    add e                                         ; $64f9: $83
    rst $10                                       ; $64fa: $d7
    inc bc                                        ; $64fb: $03
    add $00                                       ; $64fc: $c6 $00
    rlca                                          ; $64fe: $07
    adc l                                         ; $64ff: $8d
    rrca                                          ; $6500: $0f
    ld [$251e], sp                                ; $6501: $08 $1e $25
    cp $85                                        ; $6504: $fe $85
    nop                                           ; $6506: $00
    ld a, [hl]                                    ; $6507: $7e
    cpl                                           ; $6508: $2f
    rst $38                                       ; $6509: $ff
    rst $10                                       ; $650a: $d7
    cp e                                          ; $650b: $bb
    ld d, a                                       ; $650c: $57
    inc sp                                        ; $650d: $33
    db $d3                                        ; $650e: $d3
    nop                                           ; $650f: $00
    inc [hl]                                      ; $6510: $34
    ccf                                           ; $6511: $3f
    add b                                         ; $6512: $80
    add a                                         ; $6513: $87
    ret nz                                        ; $6514: $c0

    ld h, h                                       ; $6515: $64
    ccf                                           ; $6516: $3f
    ld a, h                                       ; $6517: $7c
    nop                                           ; $6518: $00
    sbc e                                         ; $6519: $9b
    sub [hl]                                      ; $651a: $96
    ld l, l                                       ; $651b: $6d
    ld a, $ff                                     ; $651c: $3e $ff
    cp $ff                                        ; $651e: $fe $ff
    and a                                         ; $6520: $a7
    nop                                           ; $6521: $00
    ld l, a                                       ; $6522: $6f
    sub $37                                       ; $6523: $d6 $37
    halt                                          ; $6525: $76
    ld a, [de]                                    ; $6526: $1a
    ld l, e                                       ; $6527: $6b
    inc h                                         ; $6528: $24
    db $d3                                        ; $6529: $d3
    nop                                           ; $652a: $00
    ld h, b                                       ; $652b: $60
    ld [hl], d                                    ; $652c: $72
    add hl, sp                                    ; $652d: $39
    db $10                                        ; $652e: $10
    inc de                                        ; $652f: $13
    db $d3                                        ; $6530: $d3
    rra                                           ; $6531: $1f
    ld c, l                                       ; $6532: $4d
    nop                                           ; $6533: $00
    ld c, $f1                                     ; $6534: $0e $f1
    nop                                           ; $6536: $00
    rlca                                          ; $6537: $07
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    ld [bc], a                                    ; $653a: $02
    ld bc, $0400                                  ; $653b: $01 $00 $04
    nop                                           ; $653e: $00
    ld a, [bc]                                    ; $653f: $0a
    ld d, $08                                     ; $6540: $16 $08
    ld e, l                                       ; $6542: $5d
    inc d                                         ; $6543: $14
    or c                                          ; $6544: $b1
    nop                                           ; $6545: $00
    ld [$0877], sp                                ; $6546: $08 $77 $08
    ret nz                                        ; $6549: $c0

    nop                                           ; $654a: $00
    ld [$14fc], sp                                ; $654b: $08 $fc $14
    nop                                           ; $654e: $00
    ld hl, sp+$18                                 ; $654f: $f8 $18
    ldh a, [rNR41]                                ; $6551: $f0 $20
    ldh a, [rNR41]                                ; $6553: $f0 $20
    ldh [$61], a                                  ; $6555: $e0 $61
    nop                                           ; $6557: $00
    ret nz                                        ; $6558: $c0

    ld h, l                                       ; $6559: $65
    ret nz                                        ; $655a: $c0

    res 0, b                                      ; $655b: $cb $80
    ccf                                           ; $655d: $3f
    ld d, b                                       ; $655e: $50
    scf                                           ; $655f: $37
    ld b, b                                       ; $6560: $40
    ld e, b                                       ; $6561: $58

jr_0bf_6562:
    or d                                          ; $6562: $b2
    inc b                                         ; $6563: $04
    jr z, jr_0bf_6595                             ; $6564: $28 $2f

    ld [$0c0b], sp                                ; $6566: $08 $0b $0c
    dec bc                                        ; $6569: $0b
    nop                                           ; $656a: $00
    inc c                                         ; $656b: $0c
    ld h, a                                       ; $656c: $67
    inc c                                         ; $656d: $0c
    cp h                                          ; $656e: $bc
    ret c                                         ; $656f: $d8

jr_0bf_6570:
    jr c, jr_0bf_6562                             ; $6570: $38 $f0

    jr z, jr_0bf_6574                             ; $6572: $28 $00

jr_0bf_6574:
    ldh a, [$78]                                  ; $6574: $f0 $78
    ldh a, [$0c]                                  ; $6576: $f0 $0c
    ld hl, sp+$2c                                 ; $6578: $f8 $2c

jr_0bf_657a:
    ld hl, sp-$18                                 ; $657a: $f8 $e8
    jr jr_0bf_657a                                ; $657c: $18 $fc

    ldh a, [$fc]                                  ; $657e: $f0 $fc
    ld a, $0d                                     ; $6580: $3e $0d
    ld b, b                                       ; $6582: $40
    dec c                                         ; $6583: $0d
    db $fd                                        ; $6584: $fd
    inc bc                                        ; $6585: $03
    db $fc                                        ; $6586: $fc
    add h                                         ; $6587: $84
    sbc b                                         ; $6588: $98
    inc b                                         ; $6589: $04
    ld a, [$ff07]                                 ; $658a: $fa $07 $ff
    ld b, b                                       ; $658d: $40
    ld [bc], a                                    ; $658e: $02
    nop                                           ; $658f: $00
    ret nz                                        ; $6590: $c0

    rst $18                                       ; $6591: $df
    ld [$df60], sp                                ; $6592: $08 $60 $df

jr_0bf_6595:
    ld h, b                                       ; $6595: $60
    cp a                                          ; $6596: $bf
    ld [bc], a                                    ; $6597: $02
    db $10                                        ; $6598: $10
    and [hl]                                      ; $6599: $a6
    ld a, a                                       ; $659a: $7f
    xor [hl]                                      ; $659b: $ae
    nop                                           ; $659c: $00
    ld [hl], a                                    ; $659d: $77
    sub a                                         ; $659e: $97
    ld a, e                                       ; $659f: $7b
    ld d, a                                       ; $65a0: $57
    dec sp                                        ; $65a1: $3b
    push de                                       ; $65a2: $d5
    dec sp                                        ; $65a3: $3b
    ld [hl], a                                    ; $65a4: $77
    nop                                           ; $65a5: $00
    add hl, sp                                    ; $65a6: $39
    jp c, $303d                                   ; $65a7: $da $3d $30

    ld a, a                                       ; $65aa: $7f
    or a                                          ; $65ab: $b7
    ldh [$e1], a                                  ; $65ac: $e0 $e1
    jr nc, jr_0bf_6570                            ; $65ae: $30 $c0

    ld b, b                                       ; $65b0: $40
    cp a                                          ; $65b1: $bf
    ld [bc], a                                    ; $65b2: $02
    ld [bc], a                                    ; $65b3: $02
    jr z, jr_0bf_65c5                             ; $65b4: $28 $0f

    add h                                         ; $65b6: $84
    adc l                                         ; $65b7: $8d
    dec bc                                        ; $65b8: $0b
    ld bc, $0b03                                  ; $65b9: $01 $03 $0b
    adc e                                         ; $65bc: $8b
    ld c, $d4                                     ; $65bd: $0e $d4
    ld hl, sp+$30                                 ; $65bf: $f8 $30
    inc hl                                        ; $65c1: $23
    ld a, [bc]                                    ; $65c2: $0a
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00

jr_0bf_65c5:
    ld h, a                                       ; $65c5: $67
    add hl, bc                                    ; $65c6: $09
    ld h, b                                       ; $65c7: $60
    jp $c7c2                                      ; $65c8: $c3 $c2 $c7


    rst $38                                       ; $65cb: $ff
    nop                                           ; $65cc: $00
    db $e3                                        ; $65cd: $e3
    ld de, $7bb3                                  ; $65ce: $11 $b3 $7b
    jr nc, jr_0bf_660f                            ; $65d1: $30 $3c

    ld d, b                                       ; $65d3: $50
    jr z, jr_0bf_65d6                             ; $65d4: $28 $00

jr_0bf_65d6:
    ld [hl], b                                    ; $65d6: $70
    db $db                                        ; $65d7: $db
    adc [hl]                                      ; $65d8: $8e
    adc [hl]                                      ; $65d9: $8e
    adc $cc                                       ; $65da: $ce $cc
    rst $08                                       ; $65dc: $cf
    rst $38                                       ; $65dd: $ff
    nop                                           ; $65de: $00
    call $ef5b                                    ; $65df: $cd $5b $ef
    or $67                                        ; $65e2: $f6 $67
    ld l, l                                       ; $65e4: $6d
    ld [hl], $34                                  ; $65e5: $36 $34
    nop                                           ; $65e7: $00
    cp d                                          ; $65e8: $ba
    ld d, l                                       ; $65e9: $55
    dec bc                                        ; $65ea: $0b
    ld [c], a                                     ; $65eb: $e2
    ld e, l                                       ; $65ec: $5d
    ld [$f9dd], sp                                ; $65ed: $08 $dd $f9
    nop                                           ; $65f0: $00
    ld c, h                                       ; $65f1: $4c
    inc [hl]                                      ; $65f2: $34
    adc $86                                       ; $65f3: $ce $86
    xor $b6                                       ; $65f5: $ee $b6
    rst $20                                       ; $65f7: $e7
    and c                                         ; $65f8: $a1
    nop                                           ; $65f9: $00
    rst $30                                       ; $65fa: $f7
    ld e, c                                       ; $65fb: $59
    and e                                         ; $65fc: $a3
    or b                                          ; $65fd: $b0
    sub $da                                       ; $65fe: $d6 $da
    ld a, $7d                                     ; $6600: $3e $7d
    nop                                           ; $6602: $00
    adc d                                         ; $6603: $8a
    db $f4                                        ; $6604: $f4

Call_0bf_6605:
    ret z                                         ; $6605: $c8

    scf                                           ; $6606: $37
    ld l, b                                       ; $6607: $68
    ld d, h                                       ; $6608: $54
    sbc b                                         ; $6609: $98
    ld e, [hl]                                    ; $660a: $5e
    nop                                           ; $660b: $00
    jr c, @-$79                                   ; $660c: $38 $85

    inc bc                                        ; $660e: $03

jr_0bf_660f:
    pop bc                                        ; $660f: $c1
    add b                                         ; $6610: $80
    ld b, b                                       ; $6611: $40
    ld b, b                                       ; $6612: $40
    rst $08                                       ; $6613: $cf
    nop                                           ; $6614: $00
    ld b, a                                       ; $6615: $47
    ld e, e                                       ; $6616: $5b
    call z, $d0bb                                 ; $6617: $cc $bb $d0
    ld d, a                                       ; $661a: $57
    or b                                          ; $661b: $b0
    ld [hl], d                                    ; $661c: $72
    nop                                           ; $661d: $00
    sbc h                                         ; $661e: $9c
    xor e                                         ; $661f: $ab
    dec e                                         ; $6620: $1d
    ld e, e                                       ; $6621: $5b
    db $10                                        ; $6622: $10
    sub b                                         ; $6623: $90
    ld l, $38                                     ; $6624: $2e $38
    nop                                           ; $6626: $00
    and b                                         ; $6627: $a0
    inc l                                         ; $6628: $2c
    or e                                          ; $6629: $b3
    and a                                         ; $662a: $a7
    cp b                                          ; $662b: $b8
    pop de                                        ; $662c: $d1
    cp a                                          ; $662d: $bf
    rst $18                                       ; $662e: $df
    inc c                                         ; $662f: $0c
    cp [hl]                                       ; $6630: $be
    rlca                                          ; $6631: $07
    rst $38                                       ; $6632: $ff
    inc bc                                        ; $6633: $03
    or c                                          ; $6634: $b1

jr_0bf_6635:
    ld [$1004], sp                                ; $6635: $08 $04 $10

Call_0bf_6638:
    add c                                         ; $6638: $81
    rst $38                                       ; $6639: $ff
    nop                                           ; $663a: $00
    ld b, e                                       ; $663b: $43
    cp $00                                        ; $663c: $fe $00
    rst $38                                       ; $663e: $ff
    ldh [rIE], a                                  ; $663f: $e0 $ff
    ld e, b                                       ; $6641: $58
    rst $38                                       ; $6642: $ff
    nop                                           ; $6643: $00
    sub h                                         ; $6644: $94
    adc a                                         ; $6645: $8f
    ld b, [hl]                                    ; $6646: $46
    add e                                         ; $6647: $83
    db $e3                                        ; $6648: $e3
    ld bc, $00f1                                  ; $6649: $01 $f1 $00
    inc b                                         ; $664c: $04
    ld a, b                                       ; $664d: $78
    add b                                         ; $664e: $80
    db $e3                                        ; $664f: $e3
    rst $38                                       ; $6650: $ff
    add d                                         ; $6651: $82
    nop                                           ; $6652: $00
    inc d                                         ; $6653: $14
    sbc l                                         ; $6654: $9d
    ld h, e                                       ; $6655: $63
    nop                                           ; $6656: $00
    ei                                            ; $6657: $fb
    rst $30                                       ; $6658: $f7
    ld h, [hl]                                    ; $6659: $66
    sbc a                                         ; $665a: $9f
    dec c                                         ; $665b: $0d
    inc bc                                        ; $665c: $03
    push af                                       ; $665d: $f5
    rst $20                                       ; $665e: $e7
    nop                                           ; $665f: $00
    rst $18                                       ; $6660: $df
    cp l                                          ; $6661: $bd
    add hl, bc                                    ; $6662: $09
    rst $38                                       ; $6663: $ff
    jr nc, jr_0bf_6635                            ; $6664: $30 $cf

    inc [hl]                                      ; $6666: $34
    rst $08                                       ; $6667: $cf
    nop                                           ; $6668: $00
    ld [hl-], a                                   ; $6669: $32
    rst $08                                       ; $666a: $cf
    ld [hl], d                                    ; $666b: $72
    adc a                                         ; $666c: $8f
    ld c, c                                       ; $666d: $49
    add a                                         ; $666e: $87
    rst $38                                       ; $666f: $ff
    pop hl                                        ; $6670: $e1
    nop                                           ; $6671: $00
    ld d, [hl]                                    ; $6672: $56
    pop hl                                        ; $6673: $e1
    ld [hl], e                                    ; $6674: $73
    pop hl                                        ; $6675: $e1
    ld b, h                                       ; $6676: $44
    db $e3                                        ; $6677: $e3
    db $d3                                        ; $6678: $d3
    pop hl                                        ; $6679: $e1

jr_0bf_667a:
    nop                                           ; $667a: $00
    add h                                         ; $667b: $84
    db $e3                                        ; $667c: $e3
    and c                                         ; $667d: $a1
    jp $83c5                                      ; $667e: $c3 $c5 $83


    ld e, $c1                                     ; $6681: $1e $c1
    nop                                           ; $6683: $00
    ld e, h                                       ; $6684: $5c
    db $e3                                        ; $6685: $e3
    sbc b                                         ; $6686: $98
    ld h, a                                       ; $6687: $67
    or h                                          ; $6688: $b4
    ld l, e                                       ; $6689: $6b
    cp b                                          ; $668a: $b8
    ld h, a                                       ; $668b: $67
    nop                                           ; $668c: $00
    add b                                         ; $668d: $80
    ld a, a                                       ; $668e: $7f
    ld c, d                                       ; $668f: $4a
    ld a, a                                       ; $6690: $7f
    ld b, [hl]                                    ; $6691: $46
    ld a, a                                       ; $6692: $7f
    ld c, l                                       ; $6693: $4d
    ld [hl], d                                    ; $6694: $72
    nop                                           ; $6695: $00
    ld [hl], c                                    ; $6696: $71
    ld h, b                                       ; $6697: $60
    or b                                          ; $6698: $b0
    ld h, b                                       ; $6699: $60
    ld hl, sp+$60                                 ; $669a: $f8 $60
    ld [hl], b                                    ; $669c: $70
    ldh [rP1], a                                  ; $669d: $e0 $00
    ret c                                         ; $669f: $d8

    or b                                          ; $66a0: $b0
    inc a                                         ; $66a1: $3c
    sub b                                         ; $66a2: $90
    db $f4                                        ; $66a3: $f4
    jr jr_0bf_6712                                ; $66a4: $18 $6c

    ret z                                         ; $66a6: $c8

    nop                                           ; $66a7: $00
    sub b                                         ; $66a8: $90
    ld a, b                                       ; $66a9: $78
    ldh a, [$30]                                  ; $66aa: $f0 $30
    push af                                       ; $66ac: $f5
    jr nz, jr_0bf_667a                            ; $66ad: $20 $cb

    jr nz, jr_0bf_66b3                            ; $66af: $20 $02

    or $21                                        ; $66b1: $f6 $21

jr_0bf_66b3:
    cp h                                          ; $66b3: $bc
    ld h, e                                       ; $66b4: $63
    or e                                          ; $66b5: $b3
    ld a, a                                       ; $66b6: $7f
    adc l                                         ; $66b7: $8d
    ld c, h                                       ; $66b8: $4c
    ret nz                                        ; $66b9: $c0

    ret nz                                        ; $66ba: $c0

    ld e, [hl]                                    ; $66bb: $5e
    ld [bc], a                                    ; $66bc: $02
    dec l                                         ; $66bd: $2d
    ld bc, $60ff                                  ; $66be: $01 $ff $60
    rst $38                                       ; $66c1: $ff
    ld d, b                                       ; $66c2: $50
    ccf                                           ; $66c3: $3f

jr_0bf_66c4:
    scf                                           ; $66c4: $37
    nop                                           ; $66c5: $00
    rra                                           ; $66c6: $1f
    ld a, [de]                                    ; $66c7: $1a
    inc e                                         ; $66c8: $1c
    sbc b                                         ; $66c9: $98
    db $10                                        ; $66ca: $10
    call nc, $87a0                                ; $66cb: $d4 $a0 $87
    nop                                           ; $66ce: $00
    inc bc                                        ; $66cf: $03
    rrca                                          ; $66d0: $0f
    rlca                                          ; $66d1: $07
    inc e                                         ; $66d2: $1c
    ld [$1830], sp                                ; $66d3: $08 $30 $18
    ld hl, sp+$00                                 ; $66d6: $f8 $00
    inc a                                         ; $66d8: $3c
    and [hl]                                      ; $66d9: $a6
    ld l, [hl]                                    ; $66da: $6e
    rst $08                                       ; $66db: $cf
    di                                            ; $66dc: $f3
    or $69                                        ; $66dd: $f6 $69
    ld e, a                                       ; $66df: $5f
    nop                                           ; $66e0: $00
    cp a                                          ; $66e1: $bf
    ld [hl], a                                    ; $66e2: $77
    adc [hl]                                      ; $66e3: $8e
    ld l, [hl]                                    ; $66e4: $6e
    sbc h                                         ; $66e5: $9c
    ei                                            ; $66e6: $fb
    db $fc                                        ; $66e7: $fc
    ld e, [hl]                                    ; $66e8: $5e
    nop                                           ; $66e9: $00
    add a                                         ; $66ea: $87
    ld bc, $7103                                  ; $66eb: $01 $03 $71
    nop                                           ; $66ee: $00
    xor h                                         ; $66ef: $ac
    ld d, b                                       ; $66f0: $50

jr_0bf_66f1:
    dec sp                                        ; $66f1: $3b
    nop                                           ; $66f2: $00
    rst $30                                       ; $66f3: $f7
    ld [hl], $ff                                  ; $66f4: $36 $ff
    inc e                                         ; $66f6: $1c
    rst $38                                       ; $66f7: $ff
    add hl, de                                    ; $66f8: $19
    rst $38                                       ; $66f9: $ff
    ld c, $00                                     ; $66fa: $0e $00
    rst $38                                       ; $66fc: $ff
    ld a, [de]                                    ; $66fd: $1a
    db $fc                                        ; $66fe: $fc
    jr jr_0bf_66f1                                ; $66ff: $18 $f0

    ld sp, $e7e0                                  ; $6701: $31 $e0 $e7
    nop                                           ; $6704: $00
    ld hl, sp+$1b                                 ; $6705: $f8 $1b
    inc b                                         ; $6707: $04
    ld bc, $6502                                  ; $6708: $01 $02 $65
    ld a, [c]                                     ; $670b: $f2
    ld a, a                                       ; $670c: $7f
    ld b, b                                       ; $670d: $40
    sbc h                                         ; $670e: $9c
    ld [$4b1c], a                                 ; $670f: $ea $1c $4b

jr_0bf_6712:
    daa                                           ; $6712: $27
    ld h, b                                       ; $6713: $60
    jr nz, jr_0bf_6746                            ; $6714: $20 $30

    jr nz, jr_0bf_6718                            ; $6716: $20 $00

jr_0bf_6718:
    adc $31                                       ; $6718: $ce $31
    or a                                          ; $671a: $b7
    rst $18                                       ; $671b: $df
    rst $38                                       ; $671c: $ff
    ld a, b                                       ; $671d: $78
    ld e, a                                       ; $671e: $5f
    jr c, jr_0bf_6721                             ; $671f: $38 $00

jr_0bf_6721:
    cpl                                           ; $6721: $2f
    jr jr_0bf_66c4                                ; $6722: $18 $a0

    ret nz                                        ; $6724: $c0

    jr c, @-$0e                                   ; $6725: $38 $f0

    ld a, e                                       ; $6727: $7b
    adc h                                         ; $6728: $8c
    nop                                           ; $6729: $00
    xor [hl]                                      ; $672a: $ae
    ld b, e                                       ; $672b: $43
    ld e, d                                       ; $672c: $5a
    and c                                         ; $672d: $a1
    xor [hl]                                      ; $672e: $ae
    ret nc                                        ; $672f: $d0

    ld e, a                                       ; $6730: $5f
    ld h, b                                       ; $6731: $60
    nop                                           ; $6732: $00
    cp a                                          ; $6733: $bf
    jr nc, jr_0bf_6757                            ; $6734: $30 $21

    ld a, a                                       ; $6736: $7f
    sbc l                                         ; $6737: $9d
    sbc d                                         ; $6738: $9a
    and $cd                                       ; $6739: $e6 $cd
    nop                                           ; $673b: $00
    ld [hl], $e3                                  ; $673c: $36 $e3
    sbc c                                         ; $673e: $99
    ld [hl], e                                    ; $673f: $73
    adc c                                         ; $6740: $89
    ld a, h                                       ; $6741: $7c
    and $7e                                       ; $6742: $e6 $7e
    db $10                                        ; $6744: $10
    ld l, e                                       ; $6745: $6b

jr_0bf_6746:
    ld [hl], a                                    ; $6746: $77
    ld c, $4c                                     ; $6747: $0e $4c
    nop                                           ; $6749: $00
    db $fd                                        ; $674a: $fd
    ld a, [c]                                     ; $674b: $f2
    sbc e                                         ; $674c: $9b
    push bc                                       ; $674d: $c5
    nop                                           ; $674e: $00
    dec l                                         ; $674f: $2d
    ld c, $c1                                     ; $6750: $0e $c1
    ld d, e                                       ; $6752: $53
    call nc, $a48d                                ; $6753: $d4 $8d $a4
    rla                                           ; $6756: $17

jr_0bf_6757:
    add b                                         ; $6757: $80
    ld e, $07                                     ; $6758: $1e $07
    rst $38                                       ; $675a: $ff
    inc b                                         ; $675b: $04
    rst $38                                       ; $675c: $ff
    cp l                                          ; $675d: $bd
    rst $38                                       ; $675e: $ff
    ld b, e                                       ; $675f: $43
    rst $38                                       ; $6760: $ff
    db $10                                        ; $6761: $10
    cp [hl]                                       ; $6762: $be
    rst $38                                       ; $6763: $ff
    rst $00                                       ; $6764: $c7
    and b                                         ; $6765: $a0
    inc b                                         ; $6766: $04
    inc d                                         ; $6767: $14
    dec hl                                        ; $6768: $2b
    ld l, l                                       ; $6769: $6d
    ld c, d                                       ; $676a: $4a
    nop                                           ; $676b: $00
    di                                            ; $676c: $f3
    inc c                                         ; $676d: $0c
    or $34                                        ; $676e: $f6 $34
    sbc $b2                                       ; $6770: $de $b2
    ld d, h                                       ; $6772: $54
    ld [$6b00], a                                 ; $6773: $ea $00 $6b
    or h                                          ; $6776: $b4
    and l                                         ; $6777: $a5
    inc bc                                        ; $6778: $03
    add h                                         ; $6779: $84
    inc [hl]                                      ; $677a: $34
    add sp, $20                                   ; $677b: $e8 $20
    nop                                           ; $677d: $00
    jp Jump_000_0fe0                              ; $677e: $c3 $e0 $0f


    jr nz, jr_0bf_6786                            ; $6781: $20 $03

    cpl                                           ; $6783: $2f
    sbc a                                         ; $6784: $9f
    ld h, a                                       ; $6785: $67

jr_0bf_6786:
    nop                                           ; $6786: $00
    rst $18                                       ; $6787: $df
    rst $28                                       ; $6788: $ef
    ld e, d                                       ; $6789: $5a
    cp a                                          ; $678a: $bf
    rst $18                                       ; $678b: $df
    ld a, [hl+]                                   ; $678c: $2a
    ld a, e                                       ; $678d: $7b
    ld sp, hl                                     ; $678e: $f9
    nop                                           ; $678f: $00
    pop af                                        ; $6790: $f1
    add b                                         ; $6791: $80
    add b                                         ; $6792: $80
    ret nz                                        ; $6793: $c0

    ld h, b                                       ; $6794: $60
    ret nz                                        ; $6795: $c0

    ld b, d                                       ; $6796: $42
    ldh [rSB], a                                  ; $6797: $e0 $01
    ldh [$c0], a                                  ; $6799: $e0 $c0
    push bc                                       ; $679b: $c5
    ld b, e                                       ; $679c: $43
    and c                                         ; $679d: $a1
    cp $d0                                        ; $679e: $fe $d0
    sbc $04                                       ; $67a0: $de $04
    nop                                           ; $67a2: $00
    ret nc                                        ; $67a3: $d0

    rst $38                                       ; $67a4: $ff
    db $ec                                        ; $67a5: $ec
    ld a, a                                       ; $67a6: $7f
    ld a, e                                       ; $67a7: $7b
    ld a, a                                       ; $67a8: $7f
    ldh a, [$b9]                                  ; $67a9: $f0 $b9
    nop                                           ; $67ab: $00
    inc e                                         ; $67ac: $1c
    inc e                                         ; $67ad: $1c
    rst $08                                       ; $67ae: $cf
    inc sp                                        ; $67af: $33
    pop hl                                        ; $67b0: $e1
    rra                                           ; $67b1: $1f
    ld [hl+], a                                   ; $67b2: $22

jr_0bf_67b3:
    ld e, l                                       ; $67b3: $5d
    nop                                           ; $67b4: $00
    inc a                                         ; $67b5: $3c
    dec de                                        ; $67b6: $1b
    or a                                          ; $67b7: $b7
    adc h                                         ; $67b8: $8c
    xor a                                         ; $67b9: $af

Jump_0bf_67ba:
    ld e, d                                       ; $67ba: $5a
    jr jr_0bf_67ee                                ; $67bb: $18 $31

    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    ld [bc], a                                    ; $67bf: $02
    db $10                                        ; $67c0: $10
    ld hl, sp+$13                                 ; $67c1: $f8 $13
    ld hl, sp+$13                                 ; $67c3: $f8 $13
    rst $38                                       ; $67c5: $ff
    ld l, c                                       ; $67c6: $69
    dec e                                         ; $67c7: $1d
    add [hl]                                      ; $67c8: $86
    rrca                                          ; $67c9: $0f
    sbc a                                         ; $67ca: $9f
    inc b                                         ; $67cb: $04
    ld b, $20                                     ; $67cc: $06 $20
    dec b                                         ; $67ce: $05
    ei                                            ; $67cf: $fb
    rlca                                          ; $67d0: $07
    jp nc, $f106                                  ; $67d1: $d2 $06 $f1

    add h                                         ; $67d4: $84
    rlca                                          ; $67d5: $07
    adc b                                         ; $67d6: $88

jr_0bf_67d7:
    rlca                                          ; $67d7: $07
    and h                                         ; $67d8: $a4
    dec e                                         ; $67d9: $1d

jr_0bf_67da:
    ld [bc], a                                    ; $67da: $02
    nop                                           ; $67db: $00
    cp a                                          ; $67dc: $bf
    ret nz                                        ; $67dd: $c0

    ld a, a                                       ; $67de: $7f
    ld b, h                                       ; $67df: $44
    ld [bc], a                                    ; $67e0: $02
    nop                                           ; $67e1: $00
    cpl                                           ; $67e2: $2f
    ld [hl], b                                    ; $67e3: $70
    ld a, a                                       ; $67e4: $7f
    ld d, b                                       ; $67e5: $50
    db $ed                                        ; $67e6: $ed
    jr jr_0bf_67da                                ; $67e7: $18 $f1

    inc e                                         ; $67e9: $1c
    nop                                           ; $67ea: $00
    pop de                                        ; $67eb: $d1
    jr c, jr_0bf_67d7                             ; $67ec: $38 $e9

jr_0bf_67ee:
    jr nc, jr_0bf_67b3                            ; $67ee: $30 $c3

    ld [hl], c                                    ; $67f0: $71
    ld b, d                                       ; $67f1: $42
    di                                            ; $67f2: $f3
    nop                                           ; $67f3: $00
    add l                                         ; $67f4: $85
    or $8e                                        ; $67f5: $f6 $8e
    db $fc                                        ; $67f7: $fc
    dec bc                                        ; $67f8: $0b
    inc c                                         ; $67f9: $0c
    rst $00                                       ; $67fa: $c7
    add h                                         ; $67fb: $84
    ld [$e45b], sp                                ; $67fc: $08 $5b $e4
    rst $18                                       ; $67ff: $df

Call_0bf_6800:
    jr c, jr_0bf_67da                             ; $6800: $38 $d8

    dec l                                         ; $6802: $2d
    or b                                          ; $6803: $b0
    nop                                           ; $6804: $00
    ccf                                           ; $6805: $3f
    ld b, $07                                     ; $6806: $06 $07
    ld a, d                                       ; $6808: $7a
    dec a                                         ; $6809: $3d
    sbc a                                         ; $680a: $9f

jr_0bf_680b:
    ld h, b                                       ; $680b: $60
    halt                                          ; $680c: $76
    ld a, [bc]                                    ; $680d: $0a
    ld c, l                                       ; $680e: $4d
    add hl, bc                                    ; $680f: $09
    ld [hl], a                                    ; $6810: $77
    jr z, jr_0bf_680b                             ; $6811: $28 $f8

    ldh [$7a], a                                  ; $6813: $e0 $7a
    inc bc                                        ; $6815: $03
    rra                                           ; $6816: $1f
    cp h                                          ; $6817: $bc
    inc bc                                        ; $6818: $03
    and c                                         ; $6819: $a1
    cp $60                                        ; $681a: $fe $60
    ld b, b                                       ; $681c: $40
    rst $38                                       ; $681d: $ff
    daa                                           ; $681e: $27
    ld [$ffdf], sp                                ; $681f: $08 $df $ff
    rlca                                          ; $6822: $07
    rst $38                                       ; $6823: $ff
    add hl, hl                                    ; $6824: $29
    rra                                           ; $6825: $1f
    nop                                           ; $6826: $00
    dec a                                         ; $6827: $3d
    di                                            ; $6828: $f3
    ldh [$f7], a                                  ; $6829: $e0 $f7
    ld e, a                                       ; $682b: $5f
    jr c, jr_0bf_6848                             ; $682c: $38 $1a

    or c                                          ; $682e: $b1
    nop                                           ; $682f: $00
    ld hl, sp-$01                                 ; $6830: $f8 $ff
    ld a, a                                       ; $6832: $7f
    adc a                                         ; $6833: $8f
    add c                                         ; $6834: $81
    ld a, [hl]                                    ; $6835: $7e
    rst $30                                       ; $6836: $f7
    rst $38                                       ; $6837: $ff
    nop                                           ; $6838: $00
    inc bc                                        ; $6839: $03
    nop                                           ; $683a: $00
    ld c, a                                       ; $683b: $4f
    ccf                                           ; $683c: $3f
    ld [hl], e                                    ; $683d: $73
    db $fc                                        ; $683e: $fc
    and l                                         ; $683f: $a5
    jp Jump_0bf_7300                              ; $6840: $c3 $00 $73


    ld sp, $c76f                                  ; $6843: $31 $6f $c7
    db $db                                        ; $6846: $db
    inc a                                         ; $6847: $3c

jr_0bf_6848:
    ld a, e                                       ; $6848: $7b
    rst $20                                       ; $6849: $e7
    nop                                           ; $684a: $00
    xor $9c                                       ; $684b: $ee $9c
    ldh [rNR10], a                                ; $684d: $e0 $10
    add e                                         ; $684f: $83
    nop                                           ; $6850: $00
    adc [hl]                                      ; $6851: $8e
    dec b                                         ; $6852: $05
    nop                                           ; $6853: $00
    jr nc, jr_0bf_686e                            ; $6854: $30 $18

    ld de, $1310                                  ; $6856: $11 $10 $13
    ld de, $1013                                  ; $6859: $11 $13 $10
    nop                                           ; $685c: $00
    ld de, $8a11                                  ; $685d: $11 $11 $8a
    inc de                                        ; $6860: $13
    adc l                                         ; $6861: $8d
    ld e, $89                                     ; $6862: $1e $89
    sbc a                                         ; $6864: $9f
    nop                                           ; $6865: $00
    or e                                          ; $6866: $b3
    add [hl]                                      ; $6867: $86
    scf                                           ; $6868: $37
    add d                                         ; $6869: $82
    and d                                         ; $686a: $a2
    rlca                                          ; $686b: $07
    add a                                         ; $686c: $87
    ld [bc], a                                    ; $686d: $02

jr_0bf_686e:
    nop                                           ; $686e: $00
    dec bc                                        ; $686f: $0b
    rlca                                          ; $6870: $07
    dec bc                                        ; $6871: $0b
    rlca                                          ; $6872: $07
    add hl, bc                                    ; $6873: $09
    rlca                                          ; $6874: $07
    dec b                                         ; $6875: $05
    dec bc                                        ; $6876: $0b
    nop                                           ; $6877: $00
    or e                                          ; $6878: $b3
    ret nz                                        ; $6879: $c0

    ld sp, hl                                     ; $687a: $f9
    ld hl, sp+$16                                 ; $687b: $f8 $16
    rst $28                                       ; $687d: $ef
    pop bc                                        ; $687e: $c1
    inc bc                                        ; $687f: $03
    nop                                           ; $6880: $00
    sbc c                                         ; $6881: $99
    ld de, $0e9b                                  ; $6882: $11 $9b $0e
    and d                                         ; $6885: $a2
    jp z, $e97d                                   ; $6886: $ca $7d $e9

    nop                                           ; $6889: $00
    ld c, l                                       ; $688a: $4d
    adc b                                         ; $688b: $88
    rst $10                                       ; $688c: $d7
    inc b                                         ; $688d: $04
    cp e                                          ; $688e: $bb

Call_0bf_688f:
    ld h, l                                       ; $688f: $65
    sbc [hl]                                      ; $6890: $9e
    rst $30                                       ; $6891: $f7
    nop                                           ; $6892: $00
    xor l                                         ; $6893: $ad
    ld d, $3c                                     ; $6894: $16 $3c
    rst $08                                       ; $6896: $cf
    rst $28                                       ; $6897: $ef
    rst $38                                       ; $6898: $ff
    dec [hl]                                      ; $6899: $35
    ld c, $00                                     ; $689a: $0e $00
    ld b, $fd                                     ; $689c: $06 $fd
    inc c                                         ; $689e: $0c
    ld hl, sp+$14                                 ; $689f: $f8 $14
    ld hl, sp+$79                                 ; $68a1: $f8 $79
    db $fc                                        ; $68a3: $fc
    nop                                           ; $68a4: $00
    xor l                                         ; $68a5: $ad
    db $d3                                        ; $68a6: $d3
    and e                                         ; $68a7: $a3
    inc bc                                        ; $68a8: $03
    add e                                         ; $68a9: $83
    ld b, a                                       ; $68aa: $47
    ld d, a                                       ; $68ab: $57
    adc [hl]                                      ; $68ac: $8e
    add b                                         ; $68ad: $80
    ld a, a                                       ; $68ae: $7f
    ld e, $04                                     ; $68af: $1e $04
    rst $38                                       ; $68b1: $ff
    inc c                                         ; $68b2: $0c
    rst $38                                       ; $68b3: $ff
    inc de                                        ; $68b4: $13
    rst $30                                       ; $68b5: $f7
    ld a, [de]                                    ; $68b6: $1a
    inc d                                         ; $68b7: $14
    ldh a, [rIF]                                  ; $68b8: $f0 $0f
    ld sp, hl                                     ; $68ba: $f9
    adc a                                         ; $68bb: $8f
    ld c, [hl]                                    ; $68bc: $4e
    nop                                           ; $68bd: $00
    jp z, Jump_000_3f01                           ; $68be: $ca $01 $3f

    ldh [rP1], a                                  ; $68c1: $e0 $00
    rst $28                                       ; $68c3: $ef
    ldh a, [$5f]                                  ; $68c4: $f0 $5f
    xor b                                         ; $68c6: $a8
    ld b, a                                       ; $68c7: $47
    and h                                         ; $68c8: $a4
    pop de                                        ; $68c9: $d1
    sub [hl]                                      ; $68ca: $96
    nop                                           ; $68cb: $00
    rst $20                                       ; $68cc: $e7
    sub d                                         ; $68cd: $92
    ld d, [hl]                                    ; $68ce: $56
    or e                                          ; $68cf: $b3
    daa                                           ; $68d0: $27
    db $e3                                        ; $68d1: $e3
    ld l, d                                       ; $68d2: $6a
    cpl                                           ; $68d3: $2f
    nop                                           ; $68d4: $00
    ld h, l                                       ; $68d5: $65
    cpl                                           ; $68d6: $2f
    dec hl                                        ; $68d7: $2b
    sbc a                                         ; $68d8: $9f
    push af                                       ; $68d9: $f5
    sbc a                                         ; $68da: $9f
    ld l, l                                       ; $68db: $6d
    ld a, a                                       ; $68dc: $7f
    nop                                           ; $68dd: $00
    and d                                         ; $68de: $a2
    rst $38                                       ; $68df: $ff
    ld e, a                                       ; $68e0: $5f
    db $e3                                        ; $68e1: $e3
    or a                                          ; $68e2: $b7
    pop hl                                        ; $68e3: $e1
    ld c, c                                       ; $68e4: $49
    or c                                          ; $68e5: $b1
    nop                                           ; $68e6: $00
    dec h                                         ; $68e7: $25
    ld sp, $6001                                  ; $68e8: $31 $01 $60
    ret nz                                        ; $68eb: $c0

    add b                                         ; $68ec: $80
    ld [$0006], sp                                ; $68ed: $08 $06 $00
    add hl, hl                                    ; $68f0: $29
    ld [hl], a                                    ; $68f1: $77
    ld b, b                                       ; $68f2: $40
    add b                                         ; $68f3: $80
    sbc h                                         ; $68f4: $9c
    add e                                         ; $68f5: $83
    ld b, a                                       ; $68f6: $47
    sub e                                         ; $68f7: $93
    nop                                           ; $68f8: $00
    inc e                                         ; $68f9: $1c
    ld d, h                                       ; $68fa: $54
    call z, $cede                                 ; $68fb: $cc $de $ce
    ld c, $43                                     ; $68fe: $0e $43
    add $00                                       ; $6900: $c6 $00
    nop                                           ; $6902: $00
    ret nz                                        ; $6903: $c0

    sbc c                                         ; $6904: $99
    adc b                                         ; $6905: $88
    rra                                           ; $6906: $1f
    sbc a                                         ; $6907: $9f
    jr c, jr_0bf_6982                             ; $6908: $38 $78

    nop                                           ; $690a: $00
    xor b                                         ; $690b: $a8
    ld a, e                                       ; $690c: $7b
    ld [hl], a                                    ; $690d: $77
    ccf                                           ; $690e: $3f
    and a                                         ; $690f: $a7
    ld a, a                                       ; $6910: $7f
    jp nc, Jump_000_033f                          ; $6911: $d2 $3f $03

    xor e                                         ; $6914: $ab
    sbc a                                         ; $6915: $9f
    and $9f                                       ; $6916: $e6 $9f
    sub [hl]                                      ; $6918: $96
    call z, $0b8a                                 ; $6919: $cc $8a $0b
    adc [hl]                                      ; $691c: $8e
    dec bc                                        ; $691d: $0b
    ldh [$50], a                                  ; $691e: $e0 $50
    add hl, hl                                    ; $6920: $29

jr_0bf_6921:
    ei                                            ; $6921: $fb
    ld b, [hl]                                    ; $6922: $46
    sbc c                                         ; $6923: $99
    dec bc                                        ; $6924: $0b
    rst $38                                       ; $6925: $ff
    inc c                                         ; $6926: $0c
    rlca                                          ; $6927: $07
    inc d                                         ; $6928: $14
    rrca                                          ; $6929: $0f
    nop                                           ; $692a: $00
    cp $ff                                        ; $692b: $fe $ff
    sbc c                                         ; $692d: $99
    rst $38                                       ; $692e: $ff
    cp c                                          ; $692f: $b9
    ldh a, [$c0]                                  ; $6930: $f0 $c0
    ldh [rP1], a                                  ; $6932: $e0 $00
    ret nz                                        ; $6934: $c0

    add b                                         ; $6935: $80
    inc bc                                        ; $6936: $03
    add b                                         ; $6937: $80
    ld e, a                                       ; $6938: $5f
    inc a                                         ; $6939: $3c
    ld [hl], b                                    ; $693a: $70
    ldh [rP1], a                                  ; $693b: $e0 $00
    jp nz, $1781                                  ; $693d: $c2 $81 $17

    rrca                                          ; $6940: $0f
    ld a, c                                       ; $6941: $79
    ccf                                           ; $6942: $3f
    pop de                                        ; $6943: $d1
    ld h, b                                       ; $6944: $60
    nop                                           ; $6945: $00
    and d                                         ; $6946: $a2
    ret nz                                        ; $6947: $c0

    ld l, e                                       ; $6948: $6b
    pop af                                        ; $6949: $f1
    db $fc                                        ; $694a: $fc
    jr c, jr_0bf_6921                             ; $694b: $38 $d4

    ld a, b                                       ; $694d: $78
    nop                                           ; $694e: $00
    push de                                       ; $694f: $d5
    ei                                            ; $6950: $fb
    sbc e                                         ; $6951: $9b
    cp $0e                                        ; $6952: $fe $0e
    db $fc                                        ; $6954: $fc
    dec c                                         ; $6955: $0d
    ld a, [$1300]                                 ; $6956: $fa $00 $13
    db $fc                                        ; $6959: $fc
    dec [hl]                                      ; $695a: $35
    ei                                            ; $695b: $fb
    ld h, a                                       ; $695c: $67
    inc [hl]                                      ; $695d: $34
    dec hl                                        ; $695e: $2b
    ld h, h                                       ; $695f: $64
    nop                                           ; $6960: $00
    ld l, a                                       ; $6961: $6f
    ld c, b                                       ; $6962: $48
    sub a                                         ; $6963: $97
    ret c                                         ; $6964: $d8

    xor a                                         ; $6965: $af
    jr nc, @+$61                                  ; $6966: $30 $5f

    jr nz, @-$7e                                  ; $6968: $20 $80

    call c, $8003                                 ; $696a: $dc $03 $80
    sra c                                         ; $696d: $cb $29
    add sp, $2b                                   ; $696f: $e8 $2b
    sra d                                         ; $6971: $cb $2a
    nop                                           ; $6973: $00
    ld d, $ca                                     ; $6974: $16 $ca
    or c                                          ; $6976: $b1
    push de                                       ; $6977: $d5
    pop bc                                        ; $6978: $c1
    ld b, b                                       ; $6979: $40
    ldh [rLCDC], a                                ; $697a: $e0 $40
    inc bc                                        ; $697c: $03
    inc hl                                        ; $697d: $23
    ld b, b                                       ; $697e: $40
    inc bc                                        ; $697f: $03
    ld [bc], a                                    ; $6980: $02
    ld [bc], a                                    ; $6981: $02

jr_0bf_6982:
    ld bc, $0001                                  ; $6982: $01 $01 $00
    pop de                                        ; $6985: $d1
    inc hl                                        ; $6986: $23
    ld bc, $0080                                  ; $6987: $01 $80 $00
    ld a, [de]                                    ; $698a: $1a
    ldh [$0d], a                                  ; $698b: $e0 $0d
    ldh a, [rNR34]                                ; $698d: $f0 $1e
    inc b                                         ; $698f: $04
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    ld a, [hl-]                                   ; $6992: $3a
    ret nz                                        ; $6993: $c0

    sub l                                         ; $6994: $95
    ldh [$fa], a                                  ; $6995: $e0 $fa
    db $fc                                        ; $6997: $fc
    add $ff                                       ; $6998: $c6 $ff
    add b                                         ; $699a: $80
    ld a, [de]                                    ; $699b: $1a
    inc c                                         ; $699c: $0c
    cp $07                                        ; $699d: $fe $07
    sbc h                                         ; $699f: $9c

jr_0bf_69a0:
    rst $38                                       ; $69a0: $ff
    adc $ff                                       ; $69a1: $ce $ff
    db $e3                                        ; $69a3: $e3
    nop                                           ; $69a4: $00
    ld a, a                                       ; $69a5: $7f
    push de                                       ; $69a6: $d5
    dec sp                                        ; $69a7: $3b
    ld l, $dc                                     ; $69a8: $2e $dc
    ld e, a                                       ; $69aa: $5f
    ldh [$db], a                                  ; $69ab: $e0 $db
    ld [bc], a                                    ; $69ad: $02
    inc a                                         ; $69ae: $3c
    ld b, $0f                                     ; $69af: $06 $0f
    di                                            ; $69b1: $f3
    rlca                                          ; $69b2: $07
    db $dd                                        ; $69b3: $dd
    sbc b                                         ; $69b4: $98
    rla                                           ; $69b5: $17
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    rst $38                                       ; $69b8: $ff
    ld d, h                                       ; $69b9: $54
    jr nz, @-$32                                  ; $69ba: $20 $cc

    ld e, $7c                                     ; $69bc: $1e $7c
    rlca                                          ; $69be: $07
    push hl                                       ; $69bf: $e5
    nop                                           ; $69c0: $00
    ld a, [bc]                                    ; $69c1: $0a
    add b                                         ; $69c2: $80
    add hl, de                                    ; $69c3: $19
    ld [hl+], a                                   ; $69c4: $22
    ld de, $e7e2                                  ; $69c5: $11 $e2 $e7
    inc e                                         ; $69c8: $1c
    jr nz, @+$1b                                  ; $69c9: $20 $19

    rst $10                                       ; $69cb: $d7
    or b                                          ; $69cc: $b0
    rlca                                          ; $69cd: $07
    xor l                                         ; $69ce: $ad
    nop                                           ; $69cf: $00
    ei                                            ; $69d0: $fb
    nop                                           ; $69d1: $00
    ld h, [hl]                                    ; $69d2: $66
    nop                                           ; $69d3: $00
    inc b                                         ; $69d4: $04
    or h                                          ; $69d5: $b4
    inc c                                         ; $69d6: $0c
    call nz, $e111                                ; $69d7: $c4 $11 $e1

jr_0bf_69da:
    ld d, $3e                                     ; $69da: $16 $3e
    nop                                           ; $69dc: $00
    ld e, $bc                                     ; $69dd: $1e $bc
    and d                                         ; $69df: $a2
    xor c                                         ; $69e0: $a9
    and b                                         ; $69e1: $a0
    ld c, a                                       ; $69e2: $4f
    ldh [$fd], a                                  ; $69e3: $e0 $fd
    ld bc, $7b40                                  ; $69e5: $01 $40 $7b
    add b                                         ; $69e8: $80
    sbc l                                         ; $69e9: $9d
    ld h, h                                       ; $69ea: $64
    inc l                                         ; $69eb: $2c
    sub $d0                                       ; $69ec: $d6 $d0
    cpl                                           ; $69ee: $2f
    nop                                           ; $69ef: $00
    rst $08                                       ; $69f0: $cf
    jr nc, jr_0bf_69da                            ; $69f1: $30 $e7

    jr z, jr_0bf_69a0                             ; $69f3: $28 $ab

    db $ec                                        ; $69f5: $ec
    jp $846c                                      ; $69f6: $c3 $6c $84


    ldh [rVBK], a                                 ; $69f9: $e0 $4f
    ei                                            ; $69fb: $fb
    inc b                                         ; $69fc: $04
    push af                                       ; $69fd: $f5
    ld c, $ef                                     ; $69fe: $0e $ef
    ccf                                           ; $6a00: $3f
    ld bc, $08ff                                  ; $6a01: $01 $ff $08
    ld e, $ff                                     ; $6a04: $1e $ff
    inc hl                                        ; $6a06: $23

Jump_0bf_6a07:
    ldh a, [rIE]                                  ; $6a07: $f0 $ff
    ccf                                           ; $6a09: $3f
    ldh a, [rIE]                                  ; $6a0a: $f0 $ff
    xor a                                         ; $6a0c: $af
    ld de, $405f                                  ; $6a0d: $11 $5f $40
    sub e                                         ; $6a10: $93
    ldh [rKEY1], a                                ; $6a11: $e0 $4d

Jump_0bf_6a13:
    add b                                         ; $6a13: $80
    rst $38                                       ; $6a14: $ff
    ld [hl], b                                    ; $6a15: $70
    jr nc, @+$19                                  ; $6a16: $30 $17

    ld b, b                                       ; $6a18: $40
    cp $c0                                        ; $6a19: $fe $c0
    inc b                                         ; $6a1b: $04
    rst $30                                       ; $6a1c: $f7
    ld c, $ea                                     ; $6a1d: $0e $ea
    inc e                                         ; $6a1f: $1c
    db $d3                                        ; $6a20: $d3
    jr c, jr_0bf_6a43                             ; $6a21: $38 $20

    db $eb                                        ; $6a23: $eb
    ld [hl], h                                    ; $6a24: $74
    ld b, b                                       ; $6a25: $40
    rrca                                          ; $6a26: $0f
    ld [hl], e                                    ; $6a27: $73
    db $fc                                        ; $6a28: $fc
    or l                                          ; $6a29: $b5
    adc $06                                       ; $6a2a: $ce $06
    ld [bc], a                                    ; $6a2c: $02
    inc bc                                        ; $6a2d: $03
    ld bc, $4001                                  ; $6a2e: $01 $01 $40
    nop                                           ; $6a31: $00
    ldh [rIF], a                                  ; $6a32: $e0 $0f
    ld b, [hl]                                    ; $6a34: $46
    ld a, a                                       ; $6a35: $7f
    sub a                                         ; $6a36: $97
    sub [hl]                                      ; $6a37: $96
    ld [bc], a                                    ; $6a38: $02
    rst $38                                       ; $6a39: $ff
    ld b, b                                       ; $6a3a: $40
    ld e, h                                       ; $6a3b: $5c
    jr z, jr_0bf_6a40                             ; $6a3c: $28 $02

    cp [hl]                                       ; $6a3e: $be
    ld a, [bc]                                    ; $6a3f: $0a

jr_0bf_6a40:
    ld [hl], d                                    ; $6a40: $72
    rlca                                          ; $6a41: $07
    ld l, a                                       ; $6a42: $6f

jr_0bf_6a43:
    rrca                                          ; $6a43: $0f
    nop                                           ; $6a44: $00
    ldh [rIE], a                                  ; $6a45: $e0 $ff
    sub b                                         ; $6a47: $90
    ccf                                           ; $6a48: $3f
    db $10                                        ; $6a49: $10
    rra                                           ; $6a4a: $1f
    jr @+$11                                      ; $6a4b: $18 $0f

    db $10                                        ; $6a4d: $10
    adc b                                         ; $6a4e: $88
    rra                                           ; $6a4f: $1f
    cp h                                          ; $6a50: $bc

jr_0bf_6a51:
    add b                                         ; $6a51: $80
    scf                                           ; $6a52: $37
    db $fd                                        ; $6a53: $fd
    inc bc                                        ; $6a54: $03
    or $0c                                        ; $6a55: $f6 $0c
    ld [$18e1], sp                                ; $6a57: $08 $e1 $18
    di                                            ; $6a5a: $f3
    jr nz, @-$6e                                  ; $6a5b: $20 $90

    rra                                           ; $6a5d: $1f
    ld bc, $befe                                  ; $6a5e: $01 $fe $be
    ld bc, $00c1                                  ; $6a61: $01 $c1 $00
    nop                                           ; $6a64: $00
    ld e, a                                       ; $6a65: $5f

jr_0bf_6a66:
    nop                                           ; $6a66: $00
    jp nc, $a02d                                  ; $6a67: $d2 $2d $a0

    cpl                                           ; $6a6a: $2f
    nop                                           ; $6a6b: $00
    ld a, [hl+]                                   ; $6a6c: $2a
    rst $18                                       ; $6a6d: $df
    or c                                          ; $6a6e: $b1
    ld [hl], b                                    ; $6a6f: $70
    jr nc, jr_0bf_6a8a                            ; $6a70: $30 $18

    ret                                           ; $6a72: $c9


    inc c                                         ; $6a73: $0c
    add c                                         ; $6a74: $81
    or b                                          ; $6a75: $b0
    ccf                                           ; $6a76: $3f
    ccf                                           ; $6a77: $3f
    ret nz                                        ; $6a78: $c0

    ld c, a                                       ; $6a79: $4f
    jr nc, jr_0bf_6a83                            ; $6a7a: $30 $07

    jr @+$21                                      ; $6a7c: $18 $1f

    ld c, d                                       ; $6a7e: $4a
    ld [$01fe], sp                                ; $6a7f: $08 $fe $01
    ei                                            ; $6a82: $fb

jr_0bf_6a83:
    rlca                                          ; $6a83: $07
    rst $08                                       ; $6a84: $cf
    jr c, jr_0bf_6a66                             ; $6a85: $38 $df

    ccf                                           ; $6a87: $3f
    ld l, a                                       ; $6a88: $6f
    nop                                           ; $6a89: $00

jr_0bf_6a8a:
    rst $38                                       ; $6a8a: $ff
    cp d                                          ; $6a8b: $ba
    rst $00                                       ; $6a8c: $c7
    rst $38                                       ; $6a8d: $ff
    nop                                           ; $6a8e: $00
    di                                            ; $6a8f: $f3
    rrca                                          ; $6a90: $0f
    sbc b                                         ; $6a91: $98
    nop                                           ; $6a92: $00
    ld a, [hl]                                    ; $6a93: $7e
    ld h, c                                       ; $6a94: $61
    ldh a, [$97]                                  ; $6a95: $f0 $97
    rst $28                                       ; $6a97: $ef
    dec a                                         ; $6a98: $3d
    jp c, RST_28                                  ; $6a99: $da $28 $00

    ldh a, [rHDMA3]                               ; $6a9c: $f0 $53
    db $ec                                        ; $6a9e: $ec
    ld a, h                                       ; $6a9f: $7c
    rst $38                                       ; $6aa0: $ff
    sbc l                                         ; $6aa1: $9d
    db $e3                                        ; $6aa2: $e3
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    xor $10                                       ; $6aa6: $ee $10
    ld h, d                                       ; $6aa8: $62
    sbc h                                         ; $6aa9: $9c
    or $cb                                        ; $6aaa: $f6 $cb
    dec [hl]                                      ; $6aac: $35
    nop                                           ; $6aad: $00
    ld h, e                                       ; $6aae: $63
    jr jr_0bf_6ac1                                ; $6aaf: $18 $10

    ld a, a                                       ; $6ab1: $7f
    add b                                         ; $6ab2: $80
    rst $38                                       ; $6ab3: $ff
    ldh a, [$0b]                                  ; $6ab4: $f0 $0b
    nop                                           ; $6ab6: $00
    inc e                                         ; $6ab7: $1c
    rlca                                          ; $6ab8: $07
    ld b, $c3                                     ; $6ab9: $06 $c3
    inc bc                                        ; $6abb: $03
    and c                                         ; $6abc: $a1
    ld h, c                                       ; $6abd: $61
    db $db                                        ; $6abe: $db
    jr nz, jr_0bf_6a51                            ; $6abf: $20 $90

jr_0bf_6ac1:
    rst $08                                       ; $6ac1: $cf
    rst $28                                       ; $6ac2: $ef
    ld d, b                                       ; $6ac3: $50
    cp a                                          ; $6ac4: $bf
    ret nz                                        ; $6ac5: $c0

    ld e, a                                       ; $6ac6: $5f
    ldh [$67], a                                  ; $6ac7: $e0 $67
    nop                                           ; $6ac9: $00
    ld b, h                                       ; $6aca: $44
    ld h, a                                       ; $6acb: $67
    inc b                                         ; $6acc: $04
    inc bc                                        ; $6acd: $03
    ld h, h                                       ; $6ace: $64
    rlca                                          ; $6acf: $07
    ld h, h                                       ; $6ad0: $64
    dec hl                                        ; $6ad1: $2b
    nop                                           ; $6ad2: $00
    ld b, h                                       ; $6ad3: $44
    inc hl                                        ; $6ad4: $23
    inc c                                         ; $6ad5: $0c
    ld h, a                                       ; $6ad6: $67
    inc l                                         ; $6ad7: $2c
    daa                                           ; $6ad8: $27
    inc l                                         ; $6ad9: $2c
    jp hl                                         ; $6ada: $e9


    nop                                           ; $6adb: $00
    ld a, [de]                                    ; $6adc: $1a
    ld a, [c]                                     ; $6add: $f2
    ld a, [de]                                    ; $6ade: $1a
    ret nc                                        ; $6adf: $d0

    ld [hl], $b3                                  ; $6ae0: $36 $b3
    ld h, l                                       ; $6ae2: $65
    pop bc                                        ; $6ae3: $c1
    ld bc, $476e                                  ; $6ae4: $01 $6e $47
    jp z, $ce46                                   ; $6ae7: $ca $46 $ce

    adc $44                                       ; $6aea: $ce $44
    ld a, [hl-]                                   ; $6aec: $3a
    add hl, de                                    ; $6aed: $19
    ret nz                                        ; $6aee: $c0

    call Call_000_2a17                            ; $6aef: $cd $17 $2a
    dec b                                         ; $6af2: $05
    ld b, $fc                                     ; $6af3: $06 $fc
    ld [hl], l                                    ; $6af5: $75
    ld [$fb74], a                                 ; $6af6: $ea $74 $fb
    nop                                           ; $6af9: $00
    jp hl                                         ; $6afa: $e9


    rst $38                                       ; $6afb: $ff
    xor d                                         ; $6afc: $aa
    ld a, a                                       ; $6afd: $7f
    cp c                                          ; $6afe: $b9
    rst $38                                       ; $6aff: $ff
    sbc b                                         ; $6b00: $98
    rst $38                                       ; $6b01: $ff
    nop                                           ; $6b02: $00
    sub h                                         ; $6b03: $94
    rst $38                                       ; $6b04: $ff
    ld e, h                                       ; $6b05: $5c
    rst $38                                       ; $6b06: $ff
    ld b, d                                       ; $6b07: $42
    cp h                                          ; $6b08: $bc
    xor c                                         ; $6b09: $a9
    ld e, b                                       ; $6b0a: $58
    nop                                           ; $6b0b: $00
    ld c, [hl]                                    ; $6b0c: $4e
    cp h                                          ; $6b0d: $bc
    sub l                                         ; $6b0e: $95
    ld l, a                                       ; $6b0f: $6f
    or h                                          ; $6b10: $b4
    ld c, l                                       ; $6b11: $4d
    ld d, h                                       ; $6b12: $54
    xor h                                         ; $6b13: $ac
    nop                                           ; $6b14: $00
    inc l                                         ; $6b15: $2c
    ret c                                         ; $6b16: $d8

    inc de                                        ; $6b17: $13
    ldh a, [$2e]                                  ; $6b18: $f0 $2e
    rra                                           ; $6b1a: $1f
    pop bc                                        ; $6b1b: $c1
    inc bc                                        ; $6b1c: $03
    nop                                           ; $6b1d: $00
    cp d                                          ; $6b1e: $ba
    nop                                           ; $6b1f: $00
    di                                            ; $6b20: $f3
    ld [hl-], a                                   ; $6b21: $32
    rst $38                                       ; $6b22: $ff
    ret nc                                        ; $6b23: $d0

    dec [hl]                                      ; $6b24: $35
    db $10                                        ; $6b25: $10
    ld [$103b], sp                                ; $6b26: $08 $3b $10
    add hl, bc                                    ; $6b29: $09
    inc c                                         ; $6b2a: $0c
    ret c                                         ; $6b2b: $d8

    inc c                                         ; $6b2c: $0c
    ld h, b                                       ; $6b2d: $60
    ld a, a                                       ; $6b2e: $7f
    cp b                                          ; $6b2f: $b8
    nop                                           ; $6b30: $00
    ld a, a                                       ; $6b31: $7f
    sub h                                         ; $6b32: $94
    rrca                                          ; $6b33: $0f
    rst $00                                       ; $6b34: $c7
    inc de                                        ; $6b35: $13
    ld l, b                                       ; $6b36: $68
    dec c                                         ; $6b37: $0d
    db $e4                                        ; $6b38: $e4
    ld d, b                                       ; $6b39: $50
    ld [$2f50], sp                                ; $6b3a: $08 $50 $2f
    rra                                           ; $6b3d: $1f
    ld l, b                                       ; $6b3e: $68
    dec b                                         ; $6b3f: $05
    nop                                           ; $6b40: $00
    add b                                         ; $6b41: $80
    ret nz                                        ; $6b42: $c0

    ld b, b                                       ; $6b43: $40
    add h                                         ; $6b44: $84
    ld l, [hl]                                    ; $6b45: $6e
    add hl, de                                    ; $6b46: $19
    rst $38                                       ; $6b47: $ff
    inc bc                                        ; $6b48: $03
    ei                                            ; $6b49: $fb
    ld b, $7a                                     ; $6b4a: $06 $7a
    rra                                           ; $6b4c: $1f
    ld b, l                                       ; $6b4d: $45
    ld a, [$e916]                                 ; $6b4e: $fa $16 $e9
    cp $ff                                        ; $6b51: $fe $ff
    ld h, $02                                     ; $6b53: $26 $02
    cp $00                                        ; $6b55: $fe $00
    inc b                                         ; $6b57: $04
    ld c, h                                       ; $6b58: $4c
    ld c, $30                                     ; $6b59: $0e $30
    nop                                           ; $6b5b: $00
    ret nz                                        ; $6b5c: $c0

    ld d, b                                       ; $6b5d: $50
    ldh [$f8], a                                  ; $6b5e: $e0 $f8
    ret nz                                        ; $6b60: $c0

    call c, $dae0                                 ; $6b61: $dc $e0 $da
    nop                                           ; $6b64: $00
    ldh [$8c], a                                  ; $6b65: $e0 $8c
    ldh a, [$8e]                                  ; $6b67: $f0 $8e
    ldh a, [$8d]                                  ; $6b69: $f0 $8d
    ldh a, [$5f]                                  ; $6b6b: $f0 $5f
    nop                                           ; $6b6d: $00
    jr nz, jr_0bf_6baf                            ; $6b6e: $20 $3f

    jr nz, jr_0bf_6ba1                            ; $6b70: $20 $2f

    db $10                                        ; $6b72: $10
    rra                                           ; $6b73: $1f
    db $10                                        ; $6b74: $10
    rlca                                          ; $6b75: $07
    ld bc, $0b08                                  ; $6b76: $01 $08 $0b
    inc b                                         ; $6b79: $04
    rlca                                          ; $6b7a: $07
    inc b                                         ; $6b7b: $04
    dec b                                         ; $6b7c: $05
    ld [bc], a                                    ; $6b7d: $02
    ccf                                           ; $6b7e: $3f
    ld c, e                                       ; $6b7f: $4b
    ld [$06fd], sp                                ; $6b80: $08 $fd $06
    db $e3                                        ; $6b83: $e3
    add hl, de                                    ; $6b84: $19
    xor a                                         ; $6b85: $af
    cpl                                           ; $6b86: $2f
    and a                                         ; $6b87: $a7
    ld a, b                                       ; $6b88: $78
    ld a, a                                       ; $6b89: $7f
    nop                                           ; $6b8a: $00

jr_0bf_6b8b:
    sub h                                         ; $6b8b: $94
    ld sp, $1592                                  ; $6b8c: $31 $92 $15
    ld [hl-], a                                   ; $6b8f: $32
    add hl, de                                    ; $6b90: $19
    rst $38                                       ; $6b91: $ff
    ld a, [hl+]                                   ; $6b92: $2a
    nop                                           ; $6b93: $00
    rst $38                                       ; $6b94: $ff
    ld d, e                                       ; $6b95: $53
    cp $bc                                        ; $6b96: $fe $bc
    rst $30                                       ; $6b98: $f7
    or a                                          ; $6b99: $b7
    ld l, l                                       ; $6b9a: $6d
    ld l, a                                       ; $6b9b: $6f
    nop                                           ; $6b9c: $00
    rst $08                                       ; $6b9d: $cf
    sbc a                                         ; $6b9e: $9f
    rst $18                                       ; $6b9f: $df
    cp l                                          ; $6ba0: $bd

jr_0bf_6ba1:
    ld a, $62                                     ; $6ba1: $3e $62
    rst $38                                       ; $6ba3: $ff
    jp nc, $5300                                  ; $6ba4: $d2 $00 $53

    ld sp, hl                                     ; $6ba7: $f9
    sub c                                         ; $6ba8: $91
    di                                            ; $6ba9: $f3
    sub c                                         ; $6baa: $91
    ccf                                           ; $6bab: $3f
    cp $78                                        ; $6bac: $fe $78
    inc b                                         ; $6bae: $04

jr_0bf_6baf:
    ldh [rSTAT], a                                ; $6baf: $e0 $41
    add b                                         ; $6bb1: $80
    rla                                           ; $6bb2: $17
    rrca                                          ; $6bb3: $0f
    jp c, Jump_0bf_602f                           ; $6bb4: $da $2f $60

    rst $38                                       ; $6bb7: $ff
    rlca                                          ; $6bb8: $07
    db $10                                        ; $6bb9: $10
    ccf                                           ; $6bba: $3f
    sub b                                         ; $6bbb: $90
    ld a, a                                       ; $6bbc: $7f
    ld [$21b0], sp                                ; $6bbd: $08 $b0 $21
    ld a, h                                       ; $6bc0: $7c
    jr jr_0bf_6b8b                                ; $6bc1: $18 $c8

    ld c, $00                                     ; $6bc3: $0e $00
    and $41                                       ; $6bc5: $e6 $41
    inc c                                         ; $6bc7: $0c
    jp $87da                                      ; $6bc8: $c3 $da $87


    or h                                          ; $6bcb: $b4
    adc [hl]                                      ; $6bcc: $8e
    nop                                           ; $6bcd: $00
    adc h                                         ; $6bce: $8c
    ld a, $ed                                     ; $6bcf: $3e $ed
    ld e, $57                                     ; $6bd1: $1e $57
    ccf                                           ; $6bd3: $3f
    jp c, $083d                                   ; $6bd4: $da $3d $08

    inc a                                         ; $6bd7: $3c
    rst $38                                       ; $6bd8: $ff
    or c                                          ; $6bd9: $b1
    rst $00                                       ; $6bda: $c7
    xor [hl]                                      ; $6bdb: $ae
    ld b, $03                                     ; $6bdc: $06 $03
    ld a, [hl]                                    ; $6bde: $7e
    inc b                                         ; $6bdf: $04
    nop                                           ; $6be0: $00
    ld l, h                                       ; $6be1: $6c
    ld hl, sp-$67                                 ; $6be2: $f8 $99
    ld [$910b], sp                                ; $6be4: $08 $0b $91
    ld d, h                                       ; $6be7: $54
    and [hl]                                      ; $6be8: $a6
    nop                                           ; $6be9: $00
    cp d                                          ; $6bea: $ba
    jp Jump_0bf_79e7                              ; $6beb: $c3 $e7 $79


    ret nc                                        ; $6bee: $d0

    ccf                                           ; $6bef: $3f
    ld e, l                                       ; $6bf0: $5d
    ld l, a                                       ; $6bf1: $6f
    nop                                           ; $6bf2: $00
    ld e, $33                                     ; $6bf3: $1e $33
    sbc $fe                                       ; $6bf5: $de $fe
    rrca                                          ; $6bf7: $0f
    adc d                                         ; $6bf8: $8a
    rrc h                                         ; $6bf9: $cb $0c
    nop                                           ; $6bfb: $00
    db $ed                                        ; $6bfc: $ed
    ld b, $72                                     ; $6bfd: $06 $72
    add a                                         ; $6bff: $87
    db $fd                                        ; $6c00: $fd
    add e                                         ; $6c01: $83
    add $f9                                       ; $6c02: $c6 $f9
    inc bc                                        ; $6c04: $03
    ld a, b                                       ; $6c05: $78
    ccf                                           ; $6c06: $3f
    ld h, h                                       ; $6c07: $64
    rra                                           ; $6c08: $1f
    ld d, [hl]                                    ; $6c09: $56

jr_0bf_6c0a:
    ccf                                           ; $6c0a: $3f
    inc l                                         ; $6c0b: $2c
    ld a, [hl+]                                   ; $6c0c: $2a
    call nz, Call_0bf_621c                        ; $6c0d: $c4 $1c $62
    ld e, a                                       ; $6c10: $5f
    ld b, c                                       ; $6c11: $41
    ld [hl-], a                                   ; $6c12: $32
    ld [hl-], a                                   ; $6c13: $32
    ld a, [bc]                                    ; $6c14: $0a
    ld [bc], a                                    ; $6c15: $02
    rst $38                                       ; $6c16: $ff
    dec b                                         ; $6c17: $05
    inc c                                         ; $6c18: $0c
    ld hl, $00e9                                  ; $6c19: $21 $e9 $00
    rst $30                                       ; $6c1c: $f7
    ld b, $a1                                     ; $6c1d: $06 $a1
    ld d, c                                       ; $6c1f: $51
    jr nz, jr_0bf_6c0a                            ; $6c20: $20 $e8

    ldh a, [$d9]                                  ; $6c22: $f0 $d9

jr_0bf_6c24:
    add b                                         ; $6c24: $80
    jr nz, jr_0bf_6c38                            ; $6c25: $20 $11

    db $fc                                        ; $6c27: $fc
    rst $38                                       ; $6c28: $ff
    ld l, e                                       ; $6c29: $6b
    add a                                         ; $6c2a: $87
    xor e                                         ; $6c2b: $ab
    jp nz, $00a1                                  ; $6c2c: $c2 $a1 $00

    rst $18                                       ; $6c2f: $df
    db $f4                                        ; $6c30: $f4
    ld a, b                                       ; $6c31: $78
    ld e, c                                       ; $6c32: $59
    ldh [$f5], a                                  ; $6c33: $e0 $f5
    ld c, $e8                                     ; $6c35: $0e $e8
    nop                                           ; $6c37: $00

jr_0bf_6c38:
    inc e                                         ; $6c38: $1c
    ret nc                                        ; $6c39: $d0

    jr c, jr_0bf_6c24                             ; $6c3a: $38 $e8

    ld sp, $61bb                                  ; $6c3c: $31 $bb $61
    db $eb                                        ; $6c3f: $eb
    nop                                           ; $6c40: $00
    ld b, e                                       ; $6c41: $43
    ld c, e                                       ; $6c42: $4b
    db $d3                                        ; $6c43: $d3
    sub e                                         ; $6c44: $93
    add d                                         ; $6c45: $82
    scf                                           ; $6c46: $37
    inc bc                                        ; $6c47: $03
    ld e, [hl]                                    ; $6c48: $5e
    nop                                           ; $6c49: $00
    ccf                                           ; $6c4a: $3f
    db $e3                                        ; $6c4b: $e3
    ld a, a                                       ; $6c4c: $7f
    and d                                         ; $6c4d: $a2
    rst $18                                       ; $6c4e: $df
    dec c                                         ; $6c4f: $0d
    cp a                                          ; $6c50: $bf
    rra                                           ; $6c51: $1f
    nop                                           ; $6c52: $00
    ld a, a                                       ; $6c53: $7f
    ld c, l                                       ; $6c54: $4d
    ld a, $58                                     ; $6c55: $3e $58
    inc a                                         ; $6c57: $3c
    xor [hl]                                      ; $6c58: $ae
    pop bc                                        ; $6c59: $c1
    pop hl                                        ; $6c5a: $e1
    nop                                           ; $6c5b: $00
    add b                                         ; $6c5c: $80
    sub b                                         ; $6c5d: $90
    ldh [$bc], a                                  ; $6c5e: $e0 $bc
    ldh a, [$fd]                                  ; $6c60: $f0 $fd
    cp $ef                                        ; $6c62: $fe $ef
    nop                                           ; $6c64: $00
    rra                                           ; $6c65: $1f
    add hl, de                                    ; $6c66: $19
    ld a, a                                       ; $6c67: $7f
    jp nc, Jump_0bf_4ee1                          ; $6c68: $d2 $e1 $4e

    add h                                         ; $6c6b: $84
    or d                                          ; $6c6c: $b2
    nop                                           ; $6c6d: $00
    ld b, e                                       ; $6c6e: $43
    jr z, jr_0bf_6c82                             ; $6c6f: $28 $11

    inc c                                         ; $6c71: $0c
    inc b                                         ; $6c72: $04
    inc bc                                        ; $6c73: $03
    inc bc                                        ; $6c74: $03
    ld b, b                                       ; $6c75: $40
    inc c                                         ; $6c76: $0c
    add b                                         ; $6c77: $80
    sub h                                         ; $6c78: $94
    ldh [$f0], a                                  ; $6c79: $e0 $f0
    ret c                                         ; $6c7b: $d8

    inc b                                         ; $6c7c: $04
    add [hl]                                      ; $6c7d: $86
    inc bc                                        ; $6c7e: $03
    ret nz                                        ; $6c7f: $c0

    ld [hl], a                                    ; $6c80: $77
    nop                                           ; $6c81: $00

jr_0bf_6c82:
    ld l, b                                       ; $6c82: $68
    sbc c                                         ; $6c83: $99
    rlca                                          ; $6c84: $07
    or e                                          ; $6c85: $b3
    ld e, h                                       ; $6c86: $5c
    rlca                                          ; $6c87: $07
    inc c                                         ; $6c88: $0c
    cp $00                                        ; $6c89: $fe $00
    ld bc, $7eb8                                  ; $6c8b: $01 $b8 $7e
    rst $28                                       ; $6c8e: $ef
    rra                                           ; $6c8f: $1f
    inc sp                                        ; $6c90: $33
    rrca                                          ; $6c91: $0f
    ld e, h                                       ; $6c92: $5c
    nop                                           ; $6c93: $00
    inc hl                                        ; $6c94: $23
    db $fd                                        ; $6c95: $fd
    rst $20                                       ; $6c96: $e7
    di                                            ; $6c97: $f3
    rlca                                          ; $6c98: $07
    db $f4                                        ; $6c99: $f4
    ld c, $1c                                     ; $6c9a: $0e $1c
    nop                                           ; $6c9c: $00
    ld hl, sp+$27                                 ; $6c9d: $f8 $27
    inc l                                         ; $6c9f: $2c
    adc a                                         ; $6ca0: $8f
    inc h                                         ; $6ca1: $24
    xor a                                         ; $6ca2: $af
    inc b                                         ; $6ca3: $04
    inc bc                                        ; $6ca4: $03
    nop                                           ; $6ca5: $00
    adc h                                         ; $6ca6: $8c
    adc e                                         ; $6ca7: $8b
    adc h                                         ; $6ca8: $8c
    rst $08                                       ; $6ca9: $cf
    adc a                                         ; $6caa: $8f
    nop                                           ; $6cab: $00
    add b                                         ; $6cac: $80
    add b                                         ; $6cad: $80
    adc h                                         ; $6cae: $8c
    ldh [rHDMA2], a                               ; $6caf: $e0 $52
    ld e, a                                       ; $6cb1: $5f
    ldh [$37], a                                  ; $6cb2: $e0 $37
    add b                                         ; $6cb4: $80
    ld [de], a                                    ; $6cb5: $12
    and d                                         ; $6cb6: $a2
    ld de, $fa02                                  ; $6cb7: $11 $02 $fa
    ld [$f406], sp                                ; $6cba: $08 $06 $f4
    inc c                                         ; $6cbd: $0c

jr_0bf_6cbe:
    ld hl, sp-$60                                 ; $6cbe: $f8 $a0
    ld [bc], a                                    ; $6cc0: $02
    rst $30                                       ; $6cc1: $f7
    rrca                                          ; $6cc2: $0f
    reti                                          ; $6cc3: $d9


    ld bc, $15ec                                  ; $6cc4: $01 $ec $15
    ld l, [hl]                                    ; $6cc7: $6e
    ld a, l                                       ; $6cc8: $7d
    ld b, e                                       ; $6cc9: $43
    cp a                                          ; $6cca: $bf
    ld b, b                                       ; $6ccb: $40
    sub $08                                       ; $6ccc: $d6 $08
    nop                                           ; $6cce: $00
    ldh [rLCDC], a                                ; $6ccf: $e0 $40
    add b                                         ; $6cd1: $80
    ld h, b                                       ; $6cd2: $60
    ret nz                                        ; $6cd3: $c0

    ldh [$74], a                                  ; $6cd4: $e0 $74
    jr c, jr_0bf_6cd8                             ; $6cd6: $38 $00

jr_0bf_6cd8:
    adc h                                         ; $6cd8: $8c

Call_0bf_6cd9:
    add [hl]                                      ; $6cd9: $86
    ld b, b                                       ; $6cda: $40
    ldh [$e0], a                                  ; $6cdb: $e0 $e0
    jr nc, @-$06                                  ; $6cdd: $30 $f8

    stop                                          ; $6cdf: $10 $00
    ld [$10fc], sp                                ; $6ce1: $08 $fc $10
    ld hl, sp+$10                                 ; $6ce4: $f8 $10
    ldh a, [rNR32]                                ; $6ce6: $f0 $1c
    ldh a, [rP1]                                  ; $6ce8: $f0 $00
    inc e                                         ; $6cea: $1c
    db $fc                                        ; $6ceb: $fc
    ld [$08fc], sp                                ; $6cec: $08 $fc $08
    ld hl, sp+$08                                 ; $6cef: $f8 $08
    ld hl, sp+$00                                 ; $6cf1: $f8 $00
    ld c, d                                       ; $6cf3: $4a
    rst $38                                       ; $6cf4: $ff
    inc l                                         ; $6cf5: $2c
    rst $38                                       ; $6cf6: $ff
    adc $7f                                       ; $6cf7: $ce $7f
    adc l                                         ; $6cf9: $8d
    ld a, a                                       ; $6cfa: $7f
    nop                                           ; $6cfb: $00
    sbc $2f                                       ; $6cfc: $de $2f

jr_0bf_6cfe:
    ld b, a                                       ; $6cfe: $47
    ccf                                           ; $6cff: $3f
    cp $07                                        ; $6d00: $fe $07
    di                                            ; $6d02: $f3
    rrca                                          ; $6d03: $0f
    nop                                           ; $6d04: $00
    ccf                                           ; $6d05: $3f
    rst $38                                       ; $6d06: $ff
    ld h, $d9                                     ; $6d07: $26 $d9
    inc de                                        ; $6d09: $13
    db $ec                                        ; $6d0a: $ec
    dec b                                         ; $6d0b: $05
    ld a, [$8800]                                 ; $6d0c: $fa $00 $88
    rst $30                                       ; $6d0f: $f7
    ld b, l                                       ; $6d10: $45
    ld a, [$fd82]                                 ; $6d11: $fa $82 $fd
    ld b, h                                       ; $6d14: $44
    ei                                            ; $6d15: $fb
    pop bc                                        ; $6d16: $c1
    rst $38                                       ; $6d17: $ff
    ld d, h                                       ; $6d18: $54
    ld a, [bc]                                    ; $6d19: $0a
    ld a, [bc]                                    ; $6d1a: $0a
    nop                                           ; $6d1b: $00
    rst $18                                       ; $6d1c: $df
    jr nz, jr_0bf_6cbe                            ; $6d1d: $20 $9f

    ld h, b                                       ; $6d1f: $60
    db $ec                                        ; $6d20: $ec
    dec b                                         ; $6d21: $05
    ld bc, $9ff0                                  ; $6d22: $01 $f0 $9f
    or b                                          ; $6d25: $b0
    ld l, a                                       ; $6d26: $6f
    sbc b                                         ; $6d27: $98
    scf                                           ; $6d28: $37
    ld e, b                                       ; $6d29: $58
    dec de                                        ; $6d2a: $1b
    rra                                           ; $6d2b: $1f
    nop                                           ; $6d2c: $00
    ld a, a                                       ; $6d2d: $7f
    ret nz                                        ; $6d2e: $c0

    ld a, a                                       ; $6d2f: $7f
    ld h, b                                       ; $6d30: $60
    sbc a                                         ; $6d31: $9f
    jr nc, jr_0bf_6d7f                            ; $6d32: $30 $4b

    inc e                                         ; $6d34: $1c
    ld h, h                                       ; $6d35: $64
    xor d                                         ; $6d36: $aa
    nop                                           ; $6d37: $00
    dec sp                                        ; $6d38: $3b
    ld d, h                                       ; $6d39: $54
    inc de                                        ; $6d3a: $13
    ld a, d                                       ; $6d3b: $7a
    add a                                         ; $6d3c: $87
    and $03                                       ; $6d3d: $e6 $03
    rlca                                          ; $6d3f: $07
    ld hl, sp+$00                                 ; $6d40: $f8 $00
    inc c                                         ; $6d42: $0c
    db $f4                                        ; $6d43: $f4
    jr jr_0bf_6cfe                                ; $6d44: $18 $b8

    ld [hl], b                                    ; $6d46: $70
    ldh [$f1], a                                  ; $6d47: $e0 $f1
    inc sp                                        ; $6d49: $33
    nop                                           ; $6d4a: $00
    and c                                         ; $6d4b: $a1
    ld b, $63                                     ; $6d4c: $06 $63
    ld a, [$ac06]                                 ; $6d4e: $fa $06 $ac
    rst $18                                       ; $6d51: $df
    cp a                                          ; $6d52: $bf
    nop                                           ; $6d53: $00
    ld a, a                                       ; $6d54: $7f
    ld d, [hl]                                    ; $6d55: $56
    ld [hl], $b6                                  ; $6d56: $36 $b6
    inc b                                         ; $6d58: $04
    sbc b                                         ; $6d59: $98
    call c, Call_000_00dc                         ; $6d5a: $dc $dc $00
    ret c                                         ; $6d5d: $d8

    reti                                          ; $6d5e: $d9


    ld l, c                                       ; $6d5f: $69
    ld a, a                                       ; $6d60: $7f
    ld d, b                                       ; $6d61: $50
    rst $20                                       ; $6d62: $e7
    ld hl, sp-$41                                 ; $6d63: $f8 $bf
    nop                                           ; $6d65: $00
    jr z, jr_0bf_6d87                             ; $6d66: $28 $1f

    jr c, jr_0bf_6da1                             ; $6d68: $38 $37

    ld e, h                                       ; $6d6a: $5c
    ld e, a                                       ; $6d6b: $5f
    jp c, Jump_000_109f                           ; $6d6c: $da $9f $10

    rst $18                                       ; $6d6f: $df
    sbc c                                         ; $6d70: $99
    cp l                                          ; $6d71: $bd
    ld l, a                                       ; $6d72: $6f
    dec a                                         ; $6d73: $3d
    sbc a                                         ; $6d74: $9f
    ld h, b                                       ; $6d75: $60
    rst $28                                       ; $6d76: $ef
    ldh a, [rP1]                                  ; $6d77: $f0 $00
    dec a                                         ; $6d79: $3d
    cp [hl]                                       ; $6d7a: $be
    xor l                                         ; $6d7b: $ad
    db $d3                                        ; $6d7c: $d3
    ld a, [c]                                     ; $6d7d: $f2
    ld l, l                                       ; $6d7e: $6d

jr_0bf_6d7f:
    ld d, h                                       ; $6d7f: $54
    dec sp                                        ; $6d80: $3b
    nop                                           ; $6d81: $00
    adc b                                         ; $6d82: $88
    rra                                           ; $6d83: $1f
    ei                                            ; $6d84: $fb
    rst $00                                       ; $6d85: $c7
    ld l, [hl]                                    ; $6d86: $6e

jr_0bf_6d87:
    pop af                                        ; $6d87: $f1
    db $db                                        ; $6d88: $db
    inc a                                         ; $6d89: $3c
    nop                                           ; $6d8a: $00
    rst $20                                       ; $6d8b: $e7
    rra                                           ; $6d8c: $1f
    db $fc                                        ; $6d8d: $fc
    db $fc                                        ; $6d8e: $fc
    ld e, a                                       ; $6d8f: $5f
    rst $38                                       ; $6d90: $ff
    cpl                                           ; $6d91: $2f
    rst $38                                       ; $6d92: $ff
    nop                                           ; $6d93: $00
    dec d                                         ; $6d94: $15
    rst $38                                       ; $6d95: $ff
    xor d                                         ; $6d96: $aa
    rst $38                                       ; $6d97: $ff
    ld a, a                                       ; $6d98: $7f
    cp $14                                        ; $6d99: $fe $14
    cp $00                                        ; $6d9b: $fe $00
    ld h, $fc                                     ; $6d9d: $26 $fc
    ld [c], a                                     ; $6d9f: $e2
    ld b, [hl]                                    ; $6da0: $46

jr_0bf_6da1:
    adc l                                         ; $6da1: $8d
    add $47                                       ; $6da2: $c6 $47
    adc l                                         ; $6da4: $8d
    nop                                           ; $6da5: $00
    sbc h                                         ; $6da6: $9c
    add hl, bc                                    ; $6da7: $09
    ld [bc], a                                    ; $6da8: $02
    jr jr_0bf_6dde                                ; $6da9: $18 $33

    inc e                                         ; $6dab: $1c
    dec e                                         ; $6dac: $1d
    ld a, $00                                     ; $6dad: $3e $00
    ld a, e                                       ; $6daf: $7b
    daa                                           ; $6db0: $27
    ld a, e                                       ; $6db1: $7b
    add hl, hl                                    ; $6db2: $29
    jr jr_0bf_6dd0                                ; $6db3: $18 $1b

    sbc c                                         ; $6db5: $99
    ld c, $00                                     ; $6db6: $0e $00
    jp Jump_0bf_6e8c                              ; $6db8: $c3 $8c $6e


    call nz, Call_0bf_6605                        ; $6dbb: $c4 $05 $66
    ld [hl], l                                    ; $6dbe: $75
    daa                                           ; $6dbf: $27
    nop                                           ; $6dc0: $00
    cp c                                          ; $6dc1: $b9
    rla                                           ; $6dc2: $17
    jp hl                                         ; $6dc3: $e9


    ld [hl-], a                                   ; $6dc4: $32
    ld h, d                                       ; $6dc5: $62
    ld b, $b5                                     ; $6dc6: $06 $b5
    ld c, a                                       ; $6dc8: $4f
    nop                                           ; $6dc9: $00
    ld e, c                                       ; $6dca: $59
    ld c, a                                       ; $6dcb: $4f
    jp z, $afed                                   ; $6dcc: $ca $ed $af

    xor d                                         ; $6dcf: $aa

jr_0bf_6dd0:
    xor d                                         ; $6dd0: $aa

jr_0bf_6dd1:
    ld a, [hl+]                                   ; $6dd1: $2a
    nop                                           ; $6dd2: $00
    inc de                                        ; $6dd3: $13
    inc a                                         ; $6dd4: $3c
    dec bc                                        ; $6dd5: $0b
    ld [hl], d                                    ; $6dd6: $72
    ld b, l                                       ; $6dd7: $45
    ld b, [hl]                                    ; $6dd8: $46
    xor e                                         ; $6dd9: $ab
    sbc h                                         ; $6dda: $9c
    nop                                           ; $6ddb: $00
    rst $30                                       ; $6ddc: $f7
    ld a, b                                       ; $6ddd: $78

jr_0bf_6dde:
    ld e, a                                       ; $6dde: $5f
    ld h, b                                       ; $6ddf: $60
    ld e, a                                       ; $6de0: $5f
    ld h, b                                       ; $6de1: $60
    ld a, a                                       ; $6de2: $7f
    ldh [rP1], a                                  ; $6de3: $e0 $00
    rra                                           ; $6de5: $1f
    or b                                          ; $6de6: $b0
    ld b, c                                       ; $6de7: $41
    cp a                                          ; $6de8: $bf
    ret nc                                        ; $6de9: $d0

    rst $28                                       ; $6dea: $ef
    jr jr_0bf_6e6c                                ; $6deb: $18 $7f

    nop                                           ; $6ded: $00
    or a                                          ; $6dee: $b7
    rrca                                          ; $6def: $0f
    cp l                                          ; $6df0: $bd
    jp $f9a6                                      ; $6df1: $c3 $a6 $f9


    ld e, a                                       ; $6df4: $5f
    rst $38                                       ; $6df5: $ff
    nop                                           ; $6df6: $00
    inc hl                                        ; $6df7: $23
    ld a, a                                       ; $6df8: $7f
    add sp, -$04                                  ; $6df9: $e8 $fc
    ld a, h                                       ; $6dfb: $7c
    ld hl, sp+$31                                 ; $6dfc: $f8 $31
    ld hl, sp+$00                                 ; $6dfe: $f8 $00
    ei                                            ; $6e00: $fb
    pop af                                        ; $6e01: $f1
    pop hl                                        ; $6e02: $e1
    di                                            ; $6e03: $f3
    ld b, a                                       ; $6e04: $47
    db $e3                                        ; $6e05: $e3
    adc l                                         ; $6e06: $8d
    rst $00                                       ; $6e07: $c7
    nop                                           ; $6e08: $00
    reti                                          ; $6e09: $d9


    adc a                                         ; $6e0a: $8f
    jp z, Jump_0bf_7f61                           ; $6e0b: $ca $61 $7f

    cp $87                                        ; $6e0e: $fe $87
    ld sp, hl                                     ; $6e10: $f9
    nop                                           ; $6e11: $00
    ld a, $87                                     ; $6e12: $3e $87
    ld c, e                                       ; $6e14: $4b
    jr nc, @+$81                                  ; $6e15: $30 $7f

    ret nz                                        ; $6e17: $c0

    adc e                                         ; $6e18: $8b
    rlca                                          ; $6e19: $07
    nop                                           ; $6e1a: $00
    xor d                                         ; $6e1b: $aa
    inc e                                         ; $6e1c: $1c
    db $dd                                        ; $6e1d: $dd
    sbc a                                         ; $6e1e: $9f
    cp $7f                                        ; $6e1f: $fe $7f
    dec b                                         ; $6e21: $05
    ei                                            ; $6e22: $fb
    nop                                           ; $6e23: $00
    ei                                            ; $6e24: $fb
    dec c                                         ; $6e25: $0d
    xor h                                         ; $6e26: $ac
    ld [hl], c                                    ; $6e27: $71
    add c                                         ; $6e28: $81
    nop                                           ; $6e29: $00
    ret nc                                        ; $6e2a: $d0

    ldh [rP1], a                                  ; $6e2b: $e0 $00
    db $f4                                        ; $6e2d: $f4
    cp c                                          ; $6e2e: $b9
    ld [hl], e                                    ; $6e2f: $73
    ld [hl], b                                    ; $6e30: $70
    xor d                                         ; $6e31: $aa
    ld h, a                                       ; $6e32: $67
    or h                                          ; $6e33: $b4
    inc a                                         ; $6e34: $3c
    nop                                           ; $6e35: $00
    or [hl]                                       ; $6e36: $b6
    and h                                         ; $6e37: $a4
    ldh [rDMA], a                                 ; $6e38: $e0 $46
    ld l, b                                       ; $6e3a: $68
    or d                                          ; $6e3b: $b2
    ei                                            ; $6e3c: $fb
    ld a, $00                                     ; $6e3d: $3e $00

Call_0bf_6e3f:
    ld l, $ff                                     ; $6e3f: $2e $ff
    cpl                                           ; $6e41: $2f
    jr jr_0bf_6dd1                                ; $6e42: $18 $8d

    ld e, $85                                     ; $6e44: $1e $85
    sub e                                         ; $6e46: $93
    nop                                           ; $6e47: $00
    ldh [rLCDC], a                                ; $6e48: $e0 $40
    jr nc, jr_0bf_6eac                            ; $6e4a: $30 $60

    ld a, d                                       ; $6e4c: $7a
    inc a                                         ; $6e4d: $3c
    inc l                                         ; $6e4e: $2c
    stop                                          ; $6e4f: $10 $00
    add b                                         ; $6e51: $80
    nop                                           ; $6e52: $00
    cp l                                          ; $6e53: $bd
    rra                                           ; $6e54: $1f
    ld [de], a                                    ; $6e55: $12
    rrca                                          ; $6e56: $0f
    inc l                                         ; $6e57: $2c
    ld b, $00                                     ; $6e58: $06 $00
    jp nc, $ad0c                                  ; $6e5a: $d2 $0c $ad

    ld e, b                                       ; $6e5d: $58
    ld e, d                                       ; $6e5e: $5a
    or c                                          ; $6e5f: $b1
    dec [hl]                                      ; $6e60: $35
    ld h, d                                       ; $6e61: $62
    nop                                           ; $6e62: $00
    ld [$9a44], a                                 ; $6e63: $ea $44 $9a
    dec e                                         ; $6e66: $1d
    ld d, $39                                     ; $6e67: $16 $39
    dec [hl]                                      ; $6e69: $35
    ld a, b                                       ; $6e6a: $78
    nop                                           ; $6e6b: $00

jr_0bf_6e6c:
    push de                                       ; $6e6c: $d5
    ld a, b                                       ; $6e6d: $78
    ld l, h                                       ; $6e6e: $6c
    sbc b                                         ; $6e6f: $98
    xor c                                         ; $6e70: $a9
    inc e                                         ; $6e71: $1c
    ld a, [hl-]                                   ; $6e72: $3a
    inc c                                         ; $6e73: $0c
    nop                                           ; $6e74: $00
    halt                                          ; $6e75: $76
    inc c                                         ; $6e76: $0c
    or h                                          ; $6e77: $b4
    ld hl, sp-$2e                                 ; $6e78: $f8 $d2
    cp a                                          ; $6e7a: $bf
    res 3, a                                      ; $6e7b: $cb $9f
    nop                                           ; $6e7d: $00
    db $ec                                        ; $6e7e: $ec
    sbc a                                         ; $6e7f: $9f
    nop                                           ; $6e80: $00
    ret nz                                        ; $6e81: $c0

    ret nz                                        ; $6e82: $c0

    add b                                         ; $6e83: $80
    nop                                           ; $6e84: $00
    ret nz                                        ; $6e85: $c0

    nop                                           ; $6e86: $00
    ld b, b                                       ; $6e87: $40
    ret nz                                        ; $6e88: $c0

    or c                                          ; $6e89: $b1
    and e                                         ; $6e8a: $a3
    or [hl]                                       ; $6e8b: $b6

Jump_0bf_6e8c:
    and d                                         ; $6e8c: $a2
    and l                                         ; $6e8d: $a5
    and d                                         ; $6e8e: $a2
    nop                                           ; $6e8f: $00
    pop bc                                        ; $6e90: $c1
    db $e3                                        ; $6e91: $e3
    ld bc, $0303                                  ; $6e92: $01 $03 $03
    ld bc, $0111                                  ; $6e95: $01 $11 $01
    nop                                           ; $6e98: $00
    rra                                           ; $6e99: $1f
    dec c                                         ; $6e9a: $0d
    rst $20                                       ; $6e9b: $e7
    rst $28                                       ; $6e9c: $ef
    cp a                                          ; $6e9d: $bf
    ld [hl], a                                    ; $6e9e: $77
    cp [hl]                                       ; $6e9f: $be
    ld l, a                                       ; $6ea0: $6f
    nop                                           ; $6ea1: $00
    sbc d                                         ; $6ea2: $9a
    xor a                                         ; $6ea3: $af
    jp z, Jump_000_2def                           ; $6ea4: $ca $ef $2d

    sra l                                         ; $6ea7: $cb $2d
    rlc b                                         ; $6ea9: $cb $00
    xor e                                         ; $6eab: $ab

jr_0bf_6eac:
    ld c, c                                       ; $6eac: $49
    add b                                         ; $6ead: $80
    nop                                           ; $6eae: $00
    ld l, d                                       ; $6eaf: $6a
    add b                                         ; $6eb0: $80
    sub h                                         ; $6eb1: $94
    db $eb                                        ; $6eb2: $eb
    nop                                           ; $6eb3: $00
    and e                                         ; $6eb4: $a3
    ld a, a                                       ; $6eb5: $7f
    xor $1c                                       ; $6eb6: $ee $1c
    push af                                       ; $6eb8: $f5
    ld c, $7b                                     ; $6eb9: $0e $7b
    add [hl]                                      ; $6ebb: $86
    ld b, $7d                                     ; $6ebc: $06 $7d
    add e                                         ; $6ebe: $83
    dec [hl]                                      ; $6ebf: $35
    rrca                                          ; $6ec0: $0f
    ld a, a                                       ; $6ec1: $7f
    add e                                         ; $6ec2: $83
    rlca                                          ; $6ec3: $07
    ld e, l                                       ; $6ec4: $5d
    rra                                           ; $6ec5: $1f
    inc bc                                        ; $6ec6: $03
    add d                                         ; $6ec7: $82

jr_0bf_6ec8:
    or b                                          ; $6ec8: $b0
    ld [bc], a                                    ; $6ec9: $02
    ld e, b                                       ; $6eca: $58
    ldh [$fd], a                                  ; $6ecb: $e0 $fd
    cp $07                                        ; $6ecd: $fe $07
    ld d, b                                       ; $6ecf: $50
    rlca                                          ; $6ed0: $07
    ccf                                           ; $6ed1: $3f
    add b                                         ; $6ed2: $80
    and [hl]                                      ; $6ed3: $a6
    ld [bc], a                                    ; $6ed4: $02
    jp nc, $a4ff                                  ; $6ed5: $d2 $ff $a4

    rst $38                                       ; $6ed8: $ff
    call nc, $a988                                ; $6ed9: $d4 $88 $a9
    nop                                           ; $6edc: $00
    db $10                                        ; $6edd: $10
    sub a                                         ; $6ede: $97
    ld h, b                                       ; $6edf: $60
    ld c, a                                       ; $6ee0: $4f
    add b                                         ; $6ee1: $80
    cp a                                          ; $6ee2: $bf
    nop                                           ; $6ee3: $00
    ld a, b                                       ; $6ee4: $78
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    jr nz, jr_0bf_6f08                            ; $6ee7: $20 $1f

    rla                                           ; $6ee9: $17
    rst $38                                       ; $6eea: $ff
    or $0c                                        ; $6eeb: $f6 $0c
    db $ec                                        ; $6eed: $ec
    nop                                           ; $6eee: $00
    ld b, $dc                                     ; $6eef: $06 $dc
    ld b, $ab                                     ; $6ef1: $06 $ab
    ld b, $56                                     ; $6ef3: $06 $56
    rrca                                          ; $6ef5: $0f
    cp a                                          ; $6ef6: $bf
    nop                                           ; $6ef7: $00
    dec e                                         ; $6ef8: $1d
    ccf                                           ; $6ef9: $3f
    rst $38                                       ; $6efa: $ff
    db $ed                                        ; $6efb: $ed
    di                                            ; $6efc: $f3
    ldh [rLCDC], a                                ; $6efd: $e0 $40
    jr nz, jr_0bf_6f01                            ; $6eff: $20 $00

jr_0bf_6f01:
    ld b, b                                       ; $6f01: $40
    ld b, c                                       ; $6f02: $41
    ld [hl+], a                                   ; $6f03: $22
    ld [hl], d                                    ; $6f04: $72
    inc hl                                        ; $6f05: $23
    inc sp                                        ; $6f06: $33
    inc hl                                        ; $6f07: $23

jr_0bf_6f08:
    add d                                         ; $6f08: $82
    nop                                           ; $6f09: $00
    ld sp, $9138                                  ; $6f0a: $31 $38 $91
    push de                                       ; $6f0d: $d5
    sbc b                                         ; $6f0e: $98
    rra                                           ; $6f0f: $1f
    ld b, $0a                                     ; $6f10: $06 $0a
    add b                                         ; $6f12: $80
    jr jr_0bf_6f2b                                ; $6f13: $18 $16

    pop af                                        ; $6f15: $f1
    rst $38                                       ; $6f16: $ff
    and a                                         ; $6f17: $a7
    ld a, a                                       ; $6f18: $7f
    sub e                                         ; $6f19: $93
    bit 4, a                                      ; $6f1a: $cb $67
    nop                                           ; $6f1c: $00
    rst $38                                       ; $6f1d: $ff
    cp d                                          ; $6f1e: $ba
    ld c, c                                       ; $6f1f: $49
    cp c                                          ; $6f20: $b9
    ld c, b                                       ; $6f21: $48
    db $dd                                        ; $6f22: $dd
    ld c, b                                       ; $6f23: $48
    ld e, b                                       ; $6f24: $58
    nop                                           ; $6f25: $00
    ret z                                         ; $6f26: $c8

    adc h                                         ; $6f27: $8c
    ret z                                         ; $6f28: $c8

    sbc $88                                       ; $6f29: $de $88

jr_0bf_6f2b:
    adc c                                         ; $6f2b: $89
    call z, Call_000_02db                         ; $6f2c: $cc $db $02
    call z, $81fe                                 ; $6f2f: $cc $fe $81
    rst $38                                       ; $6f32: $ff
    add b                                         ; $6f33: $80
    ccf                                           ; $6f34: $3f
    ld e, b                                       ; $6f35: $58
    dec b                                         ; $6f36: $05
    sbc a                                         ; $6f37: $9f
    add [hl]                                      ; $6f38: $86
    xor $07                                       ; $6f39: $ee $07
    ld d, a                                       ; $6f3b: $57
    jr c, jr_0bf_6f6d                             ; $6f3c: $38 $2f

    rra                                           ; $6f3e: $1f
    ld a, h                                       ; $6f3f: $7c
    jr z, jr_0bf_6ec8                             ; $6f40: $28 $86

    inc e                                         ; $6f42: $1c
    rlca                                          ; $6f43: $07
    nop                                           ; $6f44: $00
    rst $38                                       ; $6f45: $ff
    inc c                                         ; $6f46: $0c
    ld sp, hl                                     ; $6f47: $f9
    dec de                                        ; $6f48: $1b
    ldh a, [$27]                                  ; $6f49: $f0 $27
    rst $20                                       ; $6f4b: $e7
    ld c, b                                       ; $6f4c: $48
    ld [hl+], a                                   ; $6f4d: $22
    rst $28                                       ; $6f4e: $ef
    jp z, $05c0                                   ; $6f4f: $ca $c0 $05

    set 7, a                                      ; $6f52: $cb $ff
    and b                                         ; $6f54: $a0
    inc l                                         ; $6f55: $2c
    inc bc                                        ; $6f56: $03
    and $00                                       ; $6f57: $e6 $00
    rra                                           ; $6f59: $1f
    inc bc                                        ; $6f5a: $03
    rst $00                                       ; $6f5b: $c7
    ret c                                         ; $6f5c: $d8

    di                                            ; $6f5d: $f3
    db $fc                                        ; $6f5e: $fc
    ld hl, sp-$62                                 ; $6f5f: $f8 $9e
    nop                                           ; $6f61: $00
    ld h, b                                       ; $6f62: $60
    dec a                                         ; $6f63: $3d
    ret nz                                        ; $6f64: $c0

    or e                                          ; $6f65: $b3
    nop                                           ; $6f66: $00
    ld a, [hl-]                                   ; $6f67: $3a
    push af                                       ; $6f68: $f5
    ld c, e                                       ; $6f69: $4b
    nop                                           ; $6f6a: $00
    cp b                                          ; $6f6b: $b8
    ld l, c                                       ; $6f6c: $69

jr_0bf_6f6d:
    adc h                                         ; $6f6d: $8c
    cp [hl]                                       ; $6f6e: $be
    call nz, $e25b                                ; $6f6f: $c4 $5b $e2
    cpl                                           ; $6f72: $2f
    nop                                           ; $6f73: $00
    ld [hl], c                                    ; $6f74: $71
    jp nc, $0a39                                  ; $6f75: $d2 $39 $0a

    inc e                                         ; $6f78: $1c
    adc [hl]                                      ; $6f79: $8e
    ret c                                         ; $6f7a: $d8

    ei                                            ; $6f7b: $fb
    nop                                           ; $6f7c: $00
    call z, Call_0bf_6fc6                         ; $6f7d: $cc $c6 $6f
    db $fd                                        ; $6f80: $fd
    daa                                           ; $6f81: $27
    ld b, d                                       ; $6f82: $42
    scf                                           ; $6f83: $37
    scf                                           ; $6f84: $37
    nop                                           ; $6f85: $00
    ld a, [de]                                    ; $6f86: $1a
    xor c                                         ; $6f87: $a9
    sbc d                                         ; $6f88: $9a
    rst $10                                       ; $6f89: $d7
    call Call_000_0702                            ; $6f8a: $cd $02 $07
    add h                                         ; $6f8d: $84
    nop                                           ; $6f8e: $00
    rrca                                          ; $6f8f: $0f
    db $ec                                        ; $6f90: $ec
    rra                                           ; $6f91: $1f
    ld [hl], l                                    ; $6f92: $75
    cp $d7                                        ; $6f93: $fe $d7
    ld a, [hl-]                                   ; $6f95: $3a
    ldh a, [rP1]                                  ; $6f96: $f0 $00

jr_0bf_6f98:
    dec de                                        ; $6f98: $1b
    ld l, l                                       ; $6f99: $6d
    dec de                                        ; $6f9a: $1b
    add hl, bc                                    ; $6f9b: $09
    dec e                                         ; $6f9c: $1d
    call $5ece                                    ; $6f9d: $cd $ce $5e
    nop                                           ; $6fa0: $00
    rst $08                                       ; $6fa1: $cf
    ld c, c                                       ; $6fa2: $49
    rst $08                                       ; $6fa3: $cf

jr_0bf_6fa4:
    xor $4d                                       ; $6fa4: $ee $4d
    xor c                                         ; $6fa6: $a9
    ld l, h                                       ; $6fa7: $6c
    inc a                                         ; $6fa8: $3c
    nop                                           ; $6fa9: $00
    inc l                                         ; $6faa: $2c
    cp d                                          ; $6fab: $ba
    inc a                                         ; $6fac: $3c
    ld e, [hl]                                    ; $6fad: $5e
    dec e                                         ; $6fae: $1d
    ld e, l                                       ; $6faf: $5d
    ld a, $6c                                     ; $6fb0: $3e $6c
    jr nz, jr_0bf_6fa4                            ; $6fb2: $20 $f0

    and b                                         ; $6fb4: $a0
    inc l                                         ; $6fb5: $2c
    ld bc, $8067                                  ; $6fb6: $01 $67 $80
    db $e4                                        ; $6fb9: $e4
    ld a, e                                       ; $6fba: $7b
    sbc $08                                       ; $6fbb: $de $08
    ld a, a                                       ; $6fbd: $7f
    rst $38                                       ; $6fbe: $ff
    ld a, a                                       ; $6fbf: $7f
    rrca                                          ; $6fc0: $0f
    call nc, $1a05                                ; $6fc1: $d4 $05 $1a
    rst $38                                       ; $6fc4: $ff
    ld [de], a                                    ; $6fc5: $12

Call_0bf_6fc6:
    nop                                           ; $6fc6: $00
    rst $30                                       ; $6fc7: $f7
    inc [hl]                                      ; $6fc8: $34
    rst $38                                       ; $6fc9: $ff
    add hl, sp                                    ; $6fca: $39
    rst $38                                       ; $6fcb: $ff
    ld [hl-], a                                   ; $6fcc: $32
    rst $38                                       ; $6fcd: $ff
    ld [hl], h                                    ; $6fce: $74
    nop                                           ; $6fcf: $00
    rst $38                                       ; $6fd0: $ff
    ld b, l                                       ; $6fd1: $45
    add b                                         ; $6fd2: $80
    sub c                                         ; $6fd3: $91
    ld h, b                                       ; $6fd4: $60
    inc h                                         ; $6fd5: $24
    jr jr_0bf_701d                                ; $6fd6: $18 $45

    nop                                           ; $6fd8: $00
    ld c, $72                                     ; $6fd9: $0e $72
    rlca                                          ; $6fdb: $07
    dec c                                         ; $6fdc: $0d
    inc bc                                        ; $6fdd: $03
    add $f9                                       ; $6fde: $c6 $f9
    rst $10                                       ; $6fe0: $d7
    nop                                           ; $6fe1: $00
    db $ec                                        ; $6fe2: $ec
    push hl                                       ; $6fe3: $e5
    ld c, $02                                     ; $6fe4: $0e $02
    ld a, a                                       ; $6fe6: $7f
    and c                                         ; $6fe7: $a1
    ld a, a                                       ; $6fe8: $7f
    sub b                                         ; $6fe9: $90
    nop                                           ; $6fea: $00
    ld a, a                                       ; $6feb: $7f
    ret z                                         ; $6fec: $c8

    ccf                                           ; $6fed: $3f
    ld l, b                                       ; $6fee: $68
    sbc a                                         ; $6fef: $9f
    add l                                         ; $6ff0: $85
    cp $c4                                        ; $6ff1: $fe $c4
    nop                                           ; $6ff3: $00
    ld a, a                                       ; $6ff4: $7f
    bit 4, a                                      ; $6ff5: $cb $67
    push hl                                       ; $6ff7: $e5
    inc sp                                        ; $6ff8: $33
    or $19                                        ; $6ff9: $f6 $19
    adc d                                         ; $6ffb: $8a
    nop                                           ; $6ffc: $00
    rst $18                                       ; $6ffd: $df
    jp z, Jump_0bf_70fd                           ; $6ffe: $ca $fd $70

    ldh [$e0], a                                  ; $7001: $e0 $e0
    ret nz                                        ; $7003: $c0

    ret nz                                        ; $7004: $c0

    nop                                           ; $7005: $00
    ld h, b                                       ; $7006: $60
    sbc l                                         ; $7007: $9d
    add hl, bc                                    ; $7008: $09
    jr jr_0bf_6f98                                ; $7009: $18 $8d

    sub $8c                                       ; $700b: $d6 $8c
    adc d                                         ; $700d: $8a
    nop                                           ; $700e: $00
    call z, $fcea                                 ; $700f: $cc $ea $fc
    reti                                          ; $7012: $d9


    ccf                                           ; $7013: $3f
    dec d                                         ; $7014: $15
    ld c, $2a                                     ; $7015: $0e $2a
    nop                                           ; $7017: $00
    rlca                                          ; $7018: $07
    ld a, l                                       ; $7019: $7d
    adc [hl]                                      ; $701a: $8e
    adc $ad                                       ; $701b: $ce $ad

jr_0bf_701d:
    sub l                                         ; $701d: $95
    and $48                                       ; $701e: $e6 $48
    nop                                           ; $7020: $00
    rst $30                                       ; $7021: $f7
    ld l, h                                       ; $7022: $6c
    ld [hl], e                                    ; $7023: $73
    cp d                                          ; $7024: $ba
    ld [hl], l                                    ; $7025: $75
    xor h                                         ; $7026: $ac
    dec de                                        ; $7027: $1b
    call $0700                                    ; $7028: $cd $00 $07
    rst $38                                       ; $702b: $ff
    ld h, b                                       ; $702c: $60
    ld d, e                                       ; $702d: $53
    rst $20                                       ; $702e: $e7
    ld c, [hl]                                    ; $702f: $4e
    db $ec                                        ; $7030: $ec
    ld [hl], b                                    ; $7031: $70
    nop                                           ; $7032: $00
    ret c                                         ; $7033: $d8

    ld a, b                                       ; $7034: $78
    ldh a, [rSVBK]                                ; $7035: $f0 $70
    ldh a, [$db]                                  ; $7037: $f0 $db
    ldh a, [$6f]                                  ; $7039: $f0 $6f
    nop                                           ; $703b: $00
    ret c                                         ; $703c: $d8

    ld l, e                                       ; $703d: $6b
    rst $38                                       ; $703e: $ff
    ld a, [hl]                                    ; $703f: $7e
    rst $38                                       ; $7040: $ff
    or $fb                                        ; $7041: $f6 $fb
    db $e4                                        ; $7043: $e4
    inc c                                         ; $7044: $0c
    rst $38                                       ; $7045: $ff
    add a                                         ; $7046: $87
    ld a, b                                       ; $7047: $78
    sbc a                                         ; $7048: $9f
    ld hl, $4a05                                  ; $7049: $21 $05 $4a
    dec b                                         ; $704c: $05
    pop af                                        ; $704d: $f1
    ld a, [de]                                    ; $704e: $1a
    nop                                           ; $704f: $00
    inc de                                        ; $7050: $13
    sbc [hl]                                      ; $7051: $9e
    ld [de], a                                    ; $7052: $12
    ld e, [hl]                                    ; $7053: $5e
    dec d                                         ; $7054: $15
    ld c, [hl]                                    ; $7055: $4e
    add hl, de                                    ; $7056: $19
    jr nz, jr_0bf_7059                            ; $7057: $20 $00

jr_0bf_7059:
    rra                                           ; $7059: $1f
    and c                                         ; $705a: $a1
    rrca                                          ; $705b: $0f
    ld h, e                                       ; $705c: $63
    ld e, $4b                                     ; $705d: $1e $4b
    add [hl]                                      ; $705f: $86
    add a                                         ; $7060: $87
    add b                                         ; $7061: $80

jr_0bf_7062:
    cp d                                          ; $7062: $ba
    ld bc, $0105                                  ; $7063: $01 $05 $01
    inc bc                                        ; $7066: $03
    ld bc, $0107                                  ; $7067: $01 $07 $01
    add hl, bc                                    ; $706a: $09
    nop                                           ; $706b: $00
    inc bc                                        ; $706c: $03
    rla                                           ; $706d: $17
    inc bc                                        ; $706e: $03
    ld h, $ff                                     ; $706f: $26 $ff
    inc sp                                        ; $7071: $33
    ld e, a                                       ; $7072: $5f
    ld b, l                                       ; $7073: $45
    ld [bc], a                                    ; $7074: $02
    cp a                                          ; $7075: $bf
    and l                                         ; $7076: $a5
    rst $18                                       ; $7077: $df
    db $db                                        ; $7078: $db
    rst $20                                       ; $7079: $e7
    ldh a, [$94]                                  ; $707a: $f0 $94
    ld bc, $007b                                  ; $707c: $01 $7b $00
    pop af                                        ; $707f: $f1
    jr z, jr_0bf_7062                             ; $7080: $28 $e0

    ld a, [hl-]                                   ; $7082: $3a
    db $e4                                        ; $7083: $e4
    ld h, l                                       ; $7084: $65
    cp d                                          ; $7085: $ba
    xor c                                         ; $7086: $a9
    nop                                           ; $7087: $00
    or $22                                        ; $7088: $f6 $22
    db $fd                                        ; $708a: $fd
    and c                                         ; $708b: $a1
    cp $a4                                        ; $708c: $fe $a4
    ei                                            ; $708e: $fb
    ldh [rSC], a                                  ; $708f: $e0 $02
    rst $38                                       ; $7091: $ff
    dec e                                         ; $7092: $1d
    inc bc                                        ; $7093: $03
    xor h                                         ; $7094: $ac
    inc bc                                        ; $7095: $03
    ld e, [hl]                                    ; $7096: $5e
    db $fc                                        ; $7097: $fc
    rlca                                          ; $7098: $07
    xor d                                         ; $7099: $aa
    nop                                           ; $709a: $00
    ld d, l                                       ; $709b: $55
    db $10                                        ; $709c: $10
    rst $28                                       ; $709d: $ef
    ld b, h                                       ; $709e: $44
    cp e                                          ; $709f: $bb
    sub b                                         ; $70a0: $90
    ld l, a                                       ; $70a1: $6f
    ld h, a                                       ; $70a2: $67
    ld bc, $bb83                                  ; $70a3: $01 $83 $bb
    pop bc                                        ; $70a6: $c1
    call z, Call_0bf_48f1                         ; $70a7: $cc $f1 $48
    rst $30                                       ; $70aa: $f7
    ld l, a                                       ; $70ab: $6f
    rrca                                          ; $70ac: $0f
    nop                                           ; $70ad: $00
    ld d, b                                       ; $70ae: $50
    rst $28                                       ; $70af: $ef
    ld b, b                                       ; $70b0: $40
    rst $38                                       ; $70b1: $ff
    call c, Call_0bf_4fef                         ; $70b2: $dc $ef $4f
    rst $30                                       ; $70b5: $f7
    inc b                                         ; $70b6: $04
    rst $28                                       ; $70b7: $ef
    rst $38                                       ; $70b8: $ff
    jp c, $eff5                                   ; $70b9: $da $f5 $ef

    or [hl]                                       ; $70bc: $b6
    ld b, $e1                                     ; $70bd: $06 $e1
    ret nz                                        ; $70bf: $c0

    nop                                           ; $70c0: $00
    ret nz                                        ; $70c1: $c0

    ret nz                                        ; $70c2: $c0

    ld d, e                                       ; $70c3: $53
    nop                                           ; $70c4: $00
    dec l                                         ; $70c5: $2d
    nop                                           ; $70c6: $00
    push de                                       ; $70c7: $d5
    ld [bc], a                                    ; $70c8: $02
    nop                                           ; $70c9: $00
    ld a, [hl-]                                   ; $70ca: $3a
    dec b                                         ; $70cb: $05
    ld [hl], b                                    ; $70cc: $70
    rrca                                          ; $70cd: $0f
    and b                                         ; $70ce: $a0
    rra                                           ; $70cf: $1f
    jp $00bf                                      ; $70d0: $c3 $bf $00


    rst $00                                       ; $70d3: $c7
    ld a, a                                       ; $70d4: $7f
    dec hl                                        ; $70d5: $2b
    rlca                                          ; $70d6: $07
    rst $10                                       ; $70d7: $d7
    rrca                                          ; $70d8: $0f
    ld l, [hl]                                    ; $70d9: $6e
    sbc a                                         ; $70da: $9f
    nop                                           ; $70db: $00
    sub l                                         ; $70dc: $95
    ld a, d                                       ; $70dd: $7a
    ld [$88f4], a                                 ; $70de: $ea $f4 $88
    push hl                                       ; $70e1: $e5
    sub l                                         ; $70e2: $95
    ld a, [bc]                                    ; $70e3: $0a
    nop                                           ; $70e4: $00
    db $fc                                        ; $70e5: $fc
    ld a, [bc]                                    ; $70e6: $0a
    xor h                                         ; $70e7: $ac
    rst $00                                       ; $70e8: $c7
    ld h, a                                       ; $70e9: $67
    sbc b                                         ; $70ea: $98
    or c                                          ; $70eb: $b1
    jr nz, jr_0bf_70f6                            ; $70ec: $20 $08

    ld b, c                                       ; $70ee: $41
    ld b, b                                       ; $70ef: $40
    add d                                         ; $70f0: $82
    add c                                         ; $70f1: $81
    add d                                         ; $70f2: $82
    nop                                           ; $70f3: $00
    inc bc                                        ; $70f4: $03
    rrca                                          ; $70f5: $0f

jr_0bf_70f6:
    rlca                                          ; $70f6: $07
    nop                                           ; $70f7: $00
    and b                                         ; $70f8: $a0
    rst $38                                       ; $70f9: $ff
    cp d                                          ; $70fa: $ba
    rst $38                                       ; $70fb: $ff
    or l                                          ; $70fc: $b5

Jump_0bf_70fd:
    rst $38                                       ; $70fd: $ff
    ld a, [$a0ff]                                 ; $70fe: $fa $ff $a0
    ld bc, $d708                                  ; $7101: $01 $08 $d7
    ld [hl], $03                                  ; $7104: $36 $03

jr_0bf_7106:
    nop                                           ; $7106: $00
    rst $38                                       ; $7107: $ff
    dec bc                                        ; $7108: $0b
    rst $38                                       ; $7109: $ff
    ld d, a                                       ; $710a: $57
    jr z, @+$01                                   ; $710b: $28 $ff

    cp a                                          ; $710d: $bf
    db $10                                        ; $710e: $10
    db $10                                        ; $710f: $10
    push de                                       ; $7110: $d5
    ld b, [hl]                                    ; $7111: $46
    inc bc                                        ; $7112: $03
    ldh [rNR10], a                                ; $7113: $e0 $10

jr_0bf_7115:
    add hl, sp                                    ; $7115: $39
    dec bc                                        ; $7116: $0b
    dec c                                         ; $7117: $0d
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    ld a, a                                       ; $711a: $7f
    rst $38                                       ; $711b: $ff
    inc b                                         ; $711c: $04
    ld e, b                                       ; $711d: $58
    inc bc                                        ; $711e: $03
    ld e, b                                       ; $711f: $58
    db $fc                                        ; $7120: $fc
    ld [de], a                                    ; $7121: $12
    ld h, b                                       ; $7122: $60
    ld de, $ffe3                                  ; $7123: $11 $e3 $ff
    di                                            ; $7126: $f3

jr_0bf_7127:
    inc h                                         ; $7127: $24
    jr nc, jr_0bf_7127                            ; $7128: $30 $fd

    rst $38                                       ; $712a: $ff
    cp $20                                        ; $712b: $fe $20
    nop                                           ; $712d: $00
    ld b, b                                       ; $712e: $40
    db $fc                                        ; $712f: $fc
    ld b, $00                                     ; $7130: $06 $00
    ld a, [$d4ff]                                 ; $7132: $fa $ff $d4
    rst $38                                       ; $7135: $ff
    and e                                         ; $7136: $a3
    rst $38                                       ; $7137: $ff
    nop                                           ; $7138: $00
    rrca                                          ; $7139: $0f
    rst $38                                       ; $713a: $ff
    ccf                                           ; $713b: $3f
    rst $38                                       ; $713c: $ff
    jr c, jr_0bf_7106                             ; $713d: $38 $c7

    dec de                                        ; $713f: $1b
    rst $20                                       ; $7140: $e7
    nop                                           ; $7141: $00
    dec bc                                        ; $7142: $0b
    rst $30                                       ; $7143: $f7
    dec de                                        ; $7144: $1b
    rst $20                                       ; $7145: $e7

jr_0bf_7146:
    ld h, e                                       ; $7146: $63
    sbc a                                         ; $7147: $9f
    inc bc                                        ; $7148: $03
    rst $38                                       ; $7149: $ff
    ld c, h                                       ; $714a: $4c
    add a                                         ; $714b: $87
    ld [bc], a                                    ; $714c: $02
    nop                                           ; $714d: $00
    rst $38                                       ; $714e: $ff
    nop                                           ; $714f: $00
    ld [bc], a                                    ; $7150: $02
    ld h, b                                       ; $7151: $60
    ld e, b                                       ; $7152: $58
    jr nc, jr_0bf_7146                            ; $7153: $30 $f1

    rst $38                                       ; $7155: $ff
    nop                                           ; $7156: $00
    jp nz, $05ff                                  ; $7157: $c2 $ff $05

    rst $38                                       ; $715a: $ff
    db $fc                                        ; $715b: $fc
    inc bc                                        ; $715c: $03
    pop af                                        ; $715d: $f1
    rrca                                          ; $715e: $0f
    ld bc, $3fc2                                  ; $715f: $01 $c2 $3f
    rlca                                          ; $7162: $07
    rst $38                                       ; $7163: $ff
    xor a                                         ; $7164: $af
    rst $38                                       ; $7165: $ff
    ld e, a                                       ; $7166: $5f
    ld a, h                                       ; $7167: $7c
    db $10                                        ; $7168: $10
    ld l, e                                       ; $7169: $6b
    cp a                                          ; $716a: $bf
    add h                                         ; $716b: $84
    add b                                         ; $716c: $80
    sub l                                         ; $716d: $95
    ld [$187f], sp                                ; $716e: $08 $7f $18
    sub b                                         ; $7171: $90
    ld a, [$2088]                                 ; $7172: $fa $88 $20
    add b                                         ; $7175: $80
    jr jr_0bf_71d8                                ; $7176: $18 $60

    ld c, a                                       ; $7178: $4f
    add b                                         ; $7179: $80
    nop                                           ; $717a: $00
    adc b                                         ; $717b: $88
    nop                                           ; $717c: $00
    db $fc                                        ; $717d: $fc
    ld c, a                                       ; $717e: $4f
    ldh a, [$3f]                                  ; $717f: $f0 $3f
    ret nz                                        ; $7181: $c0

    add b                                         ; $7182: $80
    ld a, b                                       ; $7183: $78
    jr z, jr_0bf_7115                             ; $7184: $28 $8f

    cp $8f                                        ; $7186: $fe $8f
    db $fc                                        ; $7188: $fc
    rra                                           ; $7189: $1f
    ld hl, sp-$01                                 ; $718a: $f8 $ff
    ld de, $fff8                                  ; $718c: $11 $f8 $ff
    ld h, b                                       ; $718f: $60
    add b                                         ; $7190: $80
    ld a, b                                       ; $7191: $78
    jp z, $17ff                                   ; $7192: $ca $ff $17

    add b                                         ; $7195: $80
    jr nz, @+$72                                  ; $7196: $20 $70

    rra                                           ; $7198: $1f
    ld a, b                                       ; $7199: $78
    jr nc, @-$76                                  ; $719a: $30 $88

    jr z, jr_0bf_71a7                             ; $719c: $28 $09

    add hl, hl                                    ; $719e: $29
    ld hl, sp-$01                                 ; $719f: $f8 $ff
    sub h                                         ; $71a1: $94
    add sp, $00                                   ; $71a2: $e8 $00
    ld d, b                                       ; $71a4: $50
    add b                                         ; $71a5: $80
    ld a, [hl+]                                   ; $71a6: $2a

jr_0bf_71a7:
    push de                                       ; $71a7: $d5
    ld d, h                                       ; $71a8: $54
    xor e                                         ; $71a9: $ab
    ld bc, $40ff                                  ; $71aa: $01 $ff $40
    xor d                                         ; $71ad: $aa
    and h                                         ; $71ae: $a4
    nop                                           ; $71af: $00
    ld d, c                                       ; $71b0: $51
    xor a                                         ; $71b1: $af
    ld e, d                                       ; $71b2: $5a
    dec b                                         ; $71b3: $05
    ret nc                                        ; $71b4: $d0

    cpl                                           ; $71b5: $2f
    inc b                                         ; $71b6: $04
    and c                                         ; $71b7: $a1
    ld e, a                                       ; $71b8: $5f
    ld a, [bc]                                    ; $71b9: $0a
    rst $38                                       ; $71ba: $ff
    ld d, l                                       ; $71bb: $55
    xor h                                         ; $71bc: $ac
    nop                                           ; $71bd: $00
    cp $ff                                        ; $71be: $fe $ff
    nop                                           ; $71c0: $00
    and h                                         ; $71c1: $a4
    ei                                            ; $71c2: $fb

jr_0bf_71c3:
    ld [c], a                                     ; $71c3: $e2
    db $fd                                        ; $71c4: $fd
    ld sp, hl                                     ; $71c5: $f9
    rst $38                                       ; $71c6: $ff
    xor [hl]                                      ; $71c7: $ae
    rst $38                                       ; $71c8: $ff
    nop                                           ; $71c9: $00
    reti                                          ; $71ca: $d9


    cp [hl]                                       ; $71cb: $be
    scf                                           ; $71cc: $37
    ld hl, sp-$28                                 ; $71cd: $f8 $d8
    ldh [$a3], a                                  ; $71cf: $e0 $a3
    ret nz                                        ; $71d1: $c0

    ld b, b                                       ; $71d2: $40
    add b                                         ; $71d3: $80
    inc b                                         ; $71d4: $04
    ld bc, $ffc0                                  ; $71d5: $01 $c0 $ff

jr_0bf_71d8:
    dec hl                                        ; $71d8: $2b
    call nc, $8065                                ; $71d9: $d4 $65 $80
    ld bc, $0b15                                  ; $71dc: $01 $15 $0b
    ld l, d                                       ; $71df: $6a
    rla                                           ; $71e0: $17
    push bc                                       ; $71e1: $c5
    ccf                                           ; $71e2: $3f
    nop                                           ; $71e3: $00
    inc h                                         ; $71e4: $24
    ld bc, $5501                                  ; $71e5: $01 $01 $55
    rst $38                                       ; $71e8: $ff
    ld e, e                                       ; $71e9: $5b
    nop                                           ; $71ea: $00
    xor d                                         ; $71eb: $aa
    ld d, h                                       ; $71ec: $54
    ld d, l                                       ; $71ed: $55
    db $e4                                        ; $71ee: $e4
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    push af                                       ; $71f1: $f5
    rst $38                                       ; $71f2: $ff
    sub b                                         ; $71f3: $90
    rst $38                                       ; $71f4: $ff
    add hl, bc                                    ; $71f5: $09
    or $c2                                        ; $71f6: $f6 $c2
    db $fd                                        ; $71f8: $fd
    ld bc, $ff70                                  ; $71f9: $01 $70 $ff
    call c, Call_0bf_6e3f                         ; $71fc: $dc $3f $6e
    sbc a                                         ; $71ff: $9f
    rst $10                                       ; $7200: $d7
    ld a, d                                       ; $7201: $7a
    ld bc, $4a00                                  ; $7202: $01 $00 $4a

Jump_0bf_7205:
    rst $38                                       ; $7205: $ff
    ld [$31f7], sp                                ; $7206: $08 $f7 $31
    rst $28                                       ; $7209: $ef
    ld b, $ff                                     ; $720a: $06 $ff
    ld a, [hl+]                                   ; $720c: $2a
    adc c                                         ; $720d: $89
    ld a, [hl]                                    ; $720e: $7e
    ld b, b                                       ; $720f: $40
    jr @+$0b                                      ; $7210: $18 $09

    ld b, b                                       ; $7212: $40
    ld h, b                                       ; $7213: $60
    db $10                                        ; $7214: $10
    ld b, b                                       ; $7215: $40
    jr nz, jr_0bf_71c3                            ; $7216: $20 $ab

    add c                                         ; $7218: $81
    ld b, b                                       ; $7219: $40
    jr nz, jr_0bf_7270                            ; $721a: $20 $54

    rst $38                                       ; $721c: $ff
    db $10                                        ; $721d: $10
    rst $28                                       ; $721e: $ef
    jp $40fe                                      ; $721f: $c3 $fe $40


    jr c, jr_0bf_7229                             ; $7222: $38 $05

    and h                                         ; $7224: $a4
    ei                                            ; $7225: $fb
    add d                                         ; $7226: $82
    ld a, l                                       ; $7227: $7d
    ld d, c                                       ; $7228: $51

jr_0bf_7229:
    ld b, b                                       ; $7229: $40
    nop                                           ; $722a: $00
    ld c, c                                       ; $722b: $49
    add b                                         ; $722c: $80
    jr nz, jr_0bf_722f                            ; $722d: $20 $00

jr_0bf_722f:
    rlca                                          ; $722f: $07
    rst $38                                       ; $7230: $ff
    jr @+$01                                      ; $7231: $18 $ff

    dec h                                         ; $7233: $25
    ld hl, sp+$58                                 ; $7234: $f8 $58
    ldh [rSB], a                                  ; $7236: $e0 $01
    xor l                                         ; $7238: $ad
    ret nz                                        ; $7239: $c0

    cp d                                          ; $723a: $ba
    push bc                                       ; $723b: $c5
    sub h                                         ; $723c: $94
    db $eb                                        ; $723d: $eb
    ld b, l                                       ; $723e: $45
    adc h                                         ; $723f: $8c
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    ld a, $ff                                     ; $7242: $3e $ff
    ld h, e                                       ; $7244: $63
    rra                                           ; $7245: $1f
    xor e                                         ; $7246: $ab
    ld d, a                                       ; $7247: $57
    ld b, l                                       ; $7248: $45
    cp a                                          ; $7249: $bf
    db $10                                        ; $724a: $10
    dec bc                                        ; $724b: $0b
    rst $38                                       ; $724c: $ff
    or a                                          ; $724d: $b7
    db $ec                                        ; $724e: $ec
    ld de, $79c2                                  ; $724f: $11 $c2 $79
    ld l, l                                       ; $7252: $6d
    ldh a, [rP1]                                  ; $7253: $f0 $00
    ld d, [hl]                                    ; $7255: $56
    ld hl, sp+$60                                 ; $7256: $f8 $60
    db $fc                                        ; $7258: $fc
    ld d, [hl]                                    ; $7259: $56
    ld hl, sp+$6b                                 ; $725a: $f8 $6b
    db $fc                                        ; $725c: $fc
    nop                                           ; $725d: $00
    ld sp, $9bfe                                  ; $725e: $31 $fe $9b
    cp $bc                                        ; $7261: $fe $bc
    rst $18                                       ; $7263: $df
    ld c, [hl]                                    ; $7264: $4e
    rst $38                                       ; $7265: $ff
    nop                                           ; $7266: $00
    rst $08                                       ; $7267: $cf
    ld [hl], a                                    ; $7268: $77
    and e                                         ; $7269: $a3
    ld a, a                                       ; $726a: $7f
    ld d, d                                       ; $726b: $52
    dec a                                         ; $726c: $3d
    ld d, h                                       ; $726d: $54
    dec sp                                        ; $726e: $3b
    nop                                           ; $726f: $00

jr_0bf_7270:
    ld l, b                                       ; $7270: $68
    rra                                           ; $7271: $1f
    ld d, [hl]                                    ; $7272: $56
    add c                                         ; $7273: $81
    db $f4                                        ; $7274: $f4
    dec bc                                        ; $7275: $0b
    ld [hl+], a                                   ; $7276: $22
    rst $18                                       ; $7277: $df
    jr @+$57                                      ; $7278: $18 $55

    rst $38                                       ; $727a: $ff
    xor e                                         ; $727b: $ab
    call c, Call_000_1a01                         ; $727c: $dc $01 $1a
    ld a, [bc]                                    ; $727f: $0a
    xor e                                         ; $7280: $ab
    ld a, a                                       ; $7281: $7f
    ld e, h                                       ; $7282: $5c
    ld [hl+], a                                   ; $7283: $22
    rst $38                                       ; $7284: $ff
    cp c                                          ; $7285: $b9
    ld [hl], b                                    ; $7286: $70
    nop                                           ; $7287: $00
    jp nz, Jump_000_09fd                          ; $7288: $c2 $fd $09

    inc e                                         ; $728b: $1c
    ld [de], a                                    ; $728c: $12
    ld a, [hl+]                                   ; $728d: $2a
    nop                                           ; $728e: $00
    db $fd                                        ; $728f: $fd
    dec d                                         ; $7290: $15
    ld hl, sp+$4a                                 ; $7291: $f8 $4a
    cp h                                          ; $7293: $bc
    ld h, $df                                     ; $7294: $26 $df
    add c                                         ; $7296: $81
    db $10                                        ; $7297: $10
    rst $38                                       ; $7298: $ff
    ld d, h                                       ; $7299: $54
    cp e                                          ; $729a: $bb
    dec l                                         ; $729b: $2d
    ld a, [bc]                                    ; $729c: $0a
    ld d, h                                       ; $729d: $54
    ei                                            ; $729e: $fb
    ld d, d                                       ; $729f: $52
    xor l                                         ; $72a0: $ad
    ld bc, $00aa                                  ; $72a1: $01 $aa $00
    ld d, l                                       ; $72a4: $55
    add d                                         ; $72a5: $82
    ldh [rIE], a                                  ; $72a6: $e0 $ff
    rra                                           ; $72a8: $1f
    inc a                                         ; $72a9: $3c
    ld [de], a                                    ; $72aa: $12
    ld bc, $8156                                  ; $72ab: $01 $56 $81
    or h                                          ; $72ae: $b4
    dec bc                                        ; $72af: $0b
    and d                                         ; $72b0: $a2
    ld e, a                                       ; $72b1: $5f
    dec d                                         ; $72b2: $15
    ld b, b                                       ; $72b3: $40
    db $10                                        ; $72b4: $10
    ret nz                                        ; $72b5: $c0

    ld c, l                                       ; $72b6: $4d
    ld a, [bc]                                    ; $72b7: $0a
    ld b, b                                       ; $72b8: $40
    ld [$ffb8], sp                                ; $72b9: $08 $b8 $ff
    ld [hl], d                                    ; $72bc: $72
    rst $38                                       ; $72bd: $ff
    pop bc                                        ; $72be: $c1
    cp $20                                        ; $72bf: $fe $20
    inc b                                         ; $72c1: $04
    ei                                            ; $72c2: $fb
    ld b, b                                       ; $72c3: $40
    jr z, @-$74                                   ; $72c4: $28 $8a

    ld a, h                                       ; $72c6: $7c
    ld h, $ff                                     ; $72c7: $26 $ff
    ld de, $ef21                                  ; $72c9: $11 $21 $ef
    add b                                         ; $72cc: $80
    ld d, b                                       ; $72cd: $50
    jr z, @-$04                                   ; $72ce: $28 $fa

    adc d                                         ; $72d0: $8a
    ld a, l                                       ; $72d1: $7d
    daa                                           ; $72d2: $27
    db $10                                        ; $72d3: $10
    jr nc, jr_0bf_7318                            ; $72d4: $30 $42

    ld d, l                                       ; $72d6: $55
    ld d, b                                       ; $72d7: $50
    ld [$5541], sp                                ; $72d8: $08 $41 $55
    ld [$50ea], a                                 ; $72db: $ea $ea $50
    jr nz, @-$54                                  ; $72de: $20 $aa

    ld [bc], a                                    ; $72e0: $02
    rst $38                                       ; $72e1: $ff
    db $dd                                        ; $72e2: $dd
    rst $38                                       ; $72e3: $ff
    ld l, a                                       ; $72e4: $6f
    rst $38                                       ; $72e5: $ff
    ld a, l                                       ; $72e6: $7d
    inc l                                         ; $72e7: $2c
    ld [bc], a                                    ; $72e8: $02
    dec h                                         ; $72e9: $25
    ld [$15de], sp                                ; $72ea: $08 $de $15
    xor $8b                                       ; $72ed: $ee $8b
    adc a                                         ; $72ef: $8f
    ld [bc], a                                    ; $72f0: $02
    pop hl                                        ; $72f1: $e1
    rst $38                                       ; $72f2: $ff
    xor e                                         ; $72f3: $ab
    nop                                           ; $72f4: $00
    rst $10                                       ; $72f5: $d7
    ld [hl], l                                    ; $72f6: $75
    adc a                                         ; $72f7: $8f
    add e                                         ; $72f8: $83
    rra                                           ; $72f9: $1f
    dec [hl]                                      ; $72fa: $35
    rrca                                          ; $72fb: $0f
    ld l, e                                       ; $72fc: $6b
    nop                                           ; $72fd: $00
    rra                                           ; $72fe: $1f
    ld b, [hl]                                    ; $72ff: $46

Jump_0bf_7300:
    ccf                                           ; $7300: $3f
    xor e                                         ; $7301: $ab
    ld a, h                                       ; $7302: $7c
    dec [hl]                                      ; $7303: $35
    cp $1a                                        ; $7304: $fe $1a
    ld [$9cff], sp                                ; $7306: $08 $ff $9c
    ld a, a                                       ; $7309: $7f
    ld c, [hl]                                    ; $730a: $4e
    ld c, h                                       ; $730b: $4c
    ld [bc], a                                    ; $730c: $02
    ld [hl+], a                                   ; $730d: $22
    rst $18                                       ; $730e: $df
    ld c, e                                       ; $730f: $4b
    nop                                           ; $7310: $00
    rst $30                                       ; $7311: $f7
    ld a, [bc]                                    ; $7312: $0a
    ccf                                           ; $7313: $3f
    xor b                                         ; $7314: $a8
    rra                                           ; $7315: $1f
    or h                                          ; $7316: $b4
    rrca                                          ; $7317: $0f

jr_0bf_7318:
    ld b, h                                       ; $7318: $44
    nop                                           ; $7319: $00
    sbc a                                         ; $731a: $9f
    sub h                                         ; $731b: $94
    ld c, a                                       ; $731c: $4f
    ld h, h                                       ; $731d: $64
    sbc a                                         ; $731e: $9f
    sub h                                         ; $731f: $94
    rst $08                                       ; $7320: $cf
    ld [hl], l                                    ; $7321: $75
    inc bc                                        ; $7322: $03
    adc $81                                       ; $7323: $ce $81
    nop                                           ; $7325: $00
    pop bc                                        ; $7326: $c1
    nop                                           ; $7327: $00
    add c                                         ; $7328: $81
    ld [bc], a                                    ; $7329: $02
    nop                                           ; $732a: $00
    ld b, $28                                     ; $732b: $06 $28
    or b                                          ; $732d: $b0
    dec bc                                        ; $732e: $0b
    ld a, [bc]                                    ; $732f: $0a
    ld hl, sp-$4a                                 ; $7330: $f8 $b6
    ld [de], a                                    ; $7332: $12
    cp b                                          ; $7333: $b8
    ld a, [bc]                                    ; $7334: $0a
    cp $ff                                        ; $7335: $fe $ff
    dec h                                         ; $7337: $25
    ret nz                                        ; $7338: $c0

    nop                                           ; $7339: $00
    inc hl                                        ; $733a: $23
    ret nz                                        ; $733b: $c0

    ld de, $92e0                                  ; $733c: $11 $e0 $92
    ld h, b                                       ; $733f: $60
    sub c                                         ; $7340: $91
    ld h, b                                       ; $7341: $60
    nop                                           ; $7342: $00
    ld [$49f0], sp                                ; $7343: $08 $f0 $49
    or b                                          ; $7346: $b0
    ld c, b                                       ; $7347: $48
    or b                                          ; $7348: $b0
    ldh [$1f], a                                  ; $7349: $e0 $1f
    ld bc, $1ee1                                  ; $734b: $01 $e1 $1e
    db $e3                                        ; $734e: $e3
    inc e                                         ; $734f: $1c
    ld a, [c]                                     ; $7350: $f2
    inc c                                         ; $7351: $0c
    di                                            ; $7352: $f3
    ld [bc], a                                    ; $7353: $02
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    ld [hl], b                                    ; $7356: $70
    rrca                                          ; $7357: $0f
    pop af                                        ; $7358: $f1
    ld c, $c5                                     ; $7359: $0e $c5
    nop                                           ; $735b: $00
    adc e                                         ; $735c: $8b
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    ld e, [hl]                                    ; $735f: $5e
    ld bc, $0ff0                                  ; $7360: $01 $f0 $0f
    ldh [$1f], a                                  ; $7363: $e0 $1f
    inc bc                                        ; $7365: $03
    db $fc                                        ; $7366: $fc
    nop                                           ; $7367: $00
    ld e, $e0                                     ; $7368: $1e $e0
    db $eb                                        ; $736a: $eb
    nop                                           ; $736b: $00
    and b                                         ; $736c: $a0
    ld e, a                                       ; $736d: $5f
    ld b, e                                       ; $736e: $43
    cp h                                          ; $736f: $bc
    nop                                           ; $7370: $00
    ld b, $f8                                     ; $7371: $06 $f8
    inc l                                         ; $7373: $2c
    ret nc                                        ; $7374: $d0

    ld b, a                                       ; $7375: $47
    cp b                                          ; $7376: $b8
    and b                                         ; $7377: $a0
    ld e, a                                       ; $7378: $5f
    nop                                           ; $7379: $00
    ret nz                                        ; $737a: $c0

    ccf                                           ; $737b: $3f
    add a                                         ; $737c: $87
    ld a, b                                       ; $737d: $78
    ret nz                                        ; $737e: $c0

    nop                                           ; $737f: $00
    ld a, [bc]                                    ; $7380: $0a
    nop                                           ; $7381: $00
    add b                                         ; $7382: $80
    push hl                                       ; $7383: $e5
    ld bc, $f000                                  ; $7384: $01 $00 $f0
    rrca                                          ; $7387: $0f
    nop                                           ; $7388: $00
    rst $38                                       ; $7389: $ff
    inc bc                                        ; $738a: $03
    db $fc                                        ; $738b: $fc
    ld [de], a                                    ; $738c: $12
    rst $38                                       ; $738d: $ff
    nop                                           ; $738e: $00
    ld d, l                                       ; $738f: $55
    ldh a, [rNR12]                                ; $7390: $f0 $12
    add sp, $17                                   ; $7392: $e8 $17
    rst $30                                       ; $7394: $f7
    ld a, [bc]                                    ; $7395: $0a
    ld d, l                                       ; $7396: $55
    ld [bc], a                                    ; $7397: $02
    xor d                                         ; $7398: $aa
    cp $01                                        ; $7399: $fe $01
    ldh [$1f], a                                  ; $739b: $e0 $1f
    ret nz                                        ; $739d: $c0

    rra                                           ; $739e: $1f
    ld [$00ff], sp                                ; $739f: $08 $ff $00
    dec b                                         ; $73a2: $05
    ld a, [$f40b]                                 ; $73a3: $fa $0b $f4
    rra                                           ; $73a6: $1f
    ldh [$2c], a                                  ; $73a7: $e0 $2c
    jp $0f80                                      ; $73a9: $c3 $80 $0f


    dec bc                                        ; $73ac: $0b
    add hl, bc                                    ; $73ad: $09
    rst $30                                       ; $73ae: $f7
    and e                                         ; $73af: $a3
    ld e, a                                       ; $73b0: $5f
    ld d, e                                       ; $73b1: $53
    xor a                                         ; $73b2: $af
    ei                                            ; $73b3: $fb
    ld [bc], a                                    ; $73b4: $02
    rlca                                          ; $73b5: $07
    or d                                          ; $73b6: $b2
    ld c, a                                       ; $73b7: $4f
    ld b, l                                       ; $73b8: $45
    cp a                                          ; $73b9: $bf
    rst $38                                       ; $73ba: $ff
    ld b, h                                       ; $73bb: $44
    inc bc                                        ; $73bc: $03
    ei                                            ; $73bd: $fb
    nop                                           ; $73be: $00
    rst $38                                       ; $73bf: $ff
    db $f4                                        ; $73c0: $f4
    rst $38                                       ; $73c1: $ff
    add sp, -$01                                  ; $73c2: $e8 $ff
    db $d3                                        ; $73c4: $d3
    rst $38                                       ; $73c5: $ff
    adc a                                         ; $73c6: $8f
    and c                                         ; $73c7: $a1
    ld b, b                                       ; $73c8: $40
    inc bc                                        ; $73c9: $03
    ret nc                                        ; $73ca: $d0

    ret nz                                        ; $73cb: $c0

    ld [bc], a                                    ; $73cc: $02
    ld c, c                                       ; $73cd: $49
    ldh a, [rNR44]                                ; $73ce: $f0 $23
    ret nz                                        ; $73d0: $c0

    or h                                          ; $73d1: $b4
    ld [$c368], sp                                ; $73d2: $08 $68 $c3
    cp d                                          ; $73d5: $ba
    db $10                                        ; $73d6: $10
    ld b, $08                                     ; $73d7: $06 $08
    add e                                         ; $73d9: $83
    add $20                                       ; $73da: $c6 $20
    jp $a800                                      ; $73dc: $c3 $00 $a8


    nop                                           ; $73df: $00
    cp $8a                                        ; $73e0: $fe $8a
    db $fc                                        ; $73e2: $fc

jr_0bf_73e3:
    sub [hl]                                      ; $73e3: $96
    ld hl, sp-$6f                                 ; $73e4: $f8 $91
    db $fc                                        ; $73e6: $fc
    sub h                                         ; $73e7: $94
    jr nz, jr_0bf_73e3                            ; $73e8: $20 $f9

    sub e                                         ; $73ea: $93
    inc b                                         ; $73eb: $04
    nop                                           ; $73ec: $00
    rst $10                                       ; $73ed: $d7
    cp c                                          ; $73ee: $b9
    ld l, d                                       ; $73ef: $6a
    rra                                           ; $73f0: $1f
    sub $00                                       ; $73f1: $d6 $00
    ccf                                           ; $73f3: $3f
    xor h                                         ; $73f4: $ac
    ld a, a                                       ; $73f5: $7f
    inc e                                         ; $73f6: $1c
    rst $38                                       ; $73f7: $ff
    cp c                                          ; $73f8: $b9
    ld a, a                                       ; $73f9: $7f
    ld d, b                                       ; $73fa: $50
    nop                                           ; $73fb: $00
    rst $38                                       ; $73fc: $ff
    and d                                         ; $73fd: $a2
    db $fd                                        ; $73fe: $fd
    ld l, c                                       ; $73ff: $69
    rst $30                                       ; $7400: $f7
    ld hl, $49ff                                  ; $7401: $21 $ff $49
    inc b                                         ; $7404: $04
    or a                                          ; $7405: $b7
    inc de                                        ; $7406: $13
    rst $28                                       ; $7407: $ef
    ld b, l                                       ; $7408: $45
    rst $38                                       ; $7409: $ff
    and b                                         ; $740a: $a0
    ld [bc], a                                    ; $740b: $02
    cp e                                          ; $740c: $bb
    ld a, [de]                                    ; $740d: $1a
    ld bc, $a5f1                                  ; $740e: $01 $f1 $a5
    di                                            ; $7411: $f3
    and h                                         ; $7412: $a4
    rst $08                                       ; $7413: $cf
    ld e, l                                       ; $7414: $5d
    xor $04                                       ; $7415: $ee $04
    ld [$b401], sp                                ; $7417: $08 $01 $b4
    rst $08                                       ; $741a: $cf
    call z, $b4ef                                 ; $741b: $cc $ef $b4
    rst $08                                       ; $741e: $cf
    reti                                          ; $741f: $d9


    db $10                                        ; $7420: $10
    ld bc, $56e0                                  ; $7421: $01 $e0 $56
    jr c, @+$62                                   ; $7424: $38 $60

    ld [$3be8], sp                                ; $7426: $08 $e8 $3b
    ld a, [c]                                     ; $7429: $f2
    rst $38                                       ; $742a: $ff
    push bc                                       ; $742b: $c5
    rst $38                                       ; $742c: $ff
    cpl                                           ; $742d: $2f
    nop                                           ; $742e: $00
    rst $38                                       ; $742f: $ff
    ld [$04f0], sp                                ; $7430: $08 $f0 $04
    ld hl, sp+$02                                 ; $7433: $f8 $02
    ld hl, sp+$44                                 ; $7435: $f8 $44
    nop                                           ; $7437: $00
    cp b                                          ; $7438: $b8
    ld b, $d8                                     ; $7439: $06 $d8
    ld h, $d8                                     ; $743b: $26 $d8
    daa                                           ; $743d: $27
    ret c                                         ; $743e: $d8

    ld [hl+], a                                   ; $743f: $22
    nop                                           ; $7440: $00
    call c, Call_000_0c72                         ; $7441: $dc $72 $0c
    ldh a, [$0c]                                  ; $7444: $f0 $0c
    ld [hl], a                                    ; $7446: $77
    ld [$003a], sp                                ; $7447: $08 $3a $00
    dec b                                         ; $744a: $05
    ld a, b                                       ; $744b: $78
    rlca                                          ; $744c: $07
    jr c, jr_0bf_7456                             ; $744d: $38 $07

    ld a, b                                       ; $744f: $78
    rlca                                          ; $7450: $07
    inc a                                         ; $7451: $3c
    nop                                           ; $7452: $00
    inc bc                                        ; $7453: $03
    add a                                         ; $7454: $87
    nop                                           ; $7455: $00

jr_0bf_7456:
    jr z, jr_0bf_745f                             ; $7456: $28 $07

    ld [hl], b                                    ; $7458: $70
    rrca                                          ; $7459: $0f
    ldh [rP1], a                                  ; $745a: $e0 $00
    ld e, $65                                     ; $745c: $1e $65
    sbc b                                         ; $745e: $98

jr_0bf_745f:
    jr nc, @-$7e                                  ; $745f: $30 $80

    inc bc                                        ; $7461: $03
    add b                                         ; $7462: $80
    add e                                         ; $7463: $83
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    inc e                                         ; $7466: $1c
    ldh [$28], a                                  ; $7467: $e0 $28
    ret nc                                        ; $7469: $d0

    rrca                                          ; $746a: $0f
    ldh a, [$f3]                                  ; $746b: $f0 $f3
    nop                                           ; $746d: $00
    inc c                                         ; $746e: $0c
    ldh [$1f], a                                  ; $746f: $e0 $1f
    jp $c63c                                      ; $7471: $c3 $3c $c6


    jr c, jr_0bf_7483                             ; $7474: $38 $0d

    ld [$15f0], sp                                ; $7476: $08 $f0 $15
    nop                                           ; $7479: $00
    xor a                                         ; $747a: $af
    nop                                           ; $747b: $00
    ld hl, $00ff                                  ; $747c: $21 $ff $00
    ld a, [hl+]                                   ; $747f: $2a
    jr nz, jr_0bf_7487                            ; $7480: $20 $05

    ld [hl], e                                    ; $7482: $73

jr_0bf_7483:
    ld b, h                                       ; $7483: $44
    ld bc, $1ce3                                  ; $7484: $01 $e3 $1c

jr_0bf_7487:
    ld b, $f8                                     ; $7487: $06 $f8
    dec c                                         ; $7489: $0d
    nop                                           ; $748a: $00
    ldh a, [rIF]                                  ; $748b: $f0 $0f
    ldh a, [$0a]                                  ; $748d: $f0 $0a
    push af                                       ; $748f: $f5
    ld b, l                                       ; $7490: $45
    cp d                                          ; $7491: $ba
    dec bc                                        ; $7492: $0b
    nop                                           ; $7493: $00
    db $f4                                        ; $7494: $f4
    sbc c                                         ; $7495: $99
    ld b, $3f                                     ; $7496: $06 $3f
    nop                                           ; $7498: $00
    or $09                                        ; $7499: $f6 $09
    add sp, $00                                   ; $749b: $e8 $00
    rla                                           ; $749d: $17
    pop de                                        ; $749e: $d1
    ld l, $07                                     ; $749f: $2e $07
    ld hl, sp-$0c                                 ; $74a1: $f8 $f4
    inc bc                                        ; $74a3: $03
    cp b                                          ; $74a4: $b8
    ld a, [bc]                                    ; $74a5: $0a
    rlca                                          ; $74a6: $07
    ld [$03ff], sp                                ; $74a7: $08 $ff $03
    ld [bc], a                                    ; $74aa: $02
    nop                                           ; $74ab: $00
    ld bc, $0427                                  ; $74ac: $01 $27 $04
    ld bc, $0a9e                                  ; $74af: $01 $9e $0a
    nop                                           ; $74b2: $00
    rrca                                          ; $74b3: $0f
    rst $38                                       ; $74b4: $ff
    sbc b                                         ; $74b5: $98
    jr z, @-$4a                                   ; $74b6: $28 $b4

    add hl, bc                                    ; $74b8: $09
    or $18                                        ; $74b9: $f6 $18
    ld b, $09                                     ; $74bb: $06 $09
    pop bc                                        ; $74bd: $c1
    add c                                         ; $74be: $81
    inc c                                         ; $74bf: $0c
    ld hl, $0083                                  ; $74c0: $21 $83 $00
    sub d                                         ; $74c3: $92
    ld sp, hl                                     ; $74c4: $f9
    db $dd                                        ; $74c5: $dd
    cp e                                          ; $74c6: $bb
    inc b                                         ; $74c7: $04
    ld [$9600], sp                                ; $74c8: $08 $00 $96
    ld sp, hl                                     ; $74cb: $f9
    sbc c                                         ; $74cc: $99
    ei                                            ; $74cd: $fb
    sub [hl]                                      ; $74ce: $96
    ld sp, hl                                     ; $74cf: $f9
    call Call_000_00b9                            ; $74d0: $cd $b9 $00
    jp nz, Jump_0bf_49ff                          ; $74d3: $c2 $ff $49

    or $e4                                        ; $74d6: $f6 $e4
    ei                                            ; $74d8: $fb
    ld d, c                                       ; $74d9: $51
    rst $38                                       ; $74da: $ff
    nop                                           ; $74db: $00
    xor b                                         ; $74dc: $a8
    rst $38                                       ; $74dd: $ff
    push de                                       ; $74de: $d5
    xor $ac                                       ; $74df: $ee $ac
    rst $00                                       ; $74e1: $c7
    jp nc, $00e7                                  ; $74e2: $d2 $e7 $00

    add hl, hl                                    ; $74e5: $29
    rst $30                                       ; $74e6: $f7
    scf                                           ; $74e7: $37
    db $e3                                        ; $74e8: $e3
    add hl, hl                                    ; $74e9: $29
    rst $20                                       ; $74ea: $e7
    ld d, a                                       ; $74eb: $57
    db $e3                                        ; $74ec: $e3
    nop                                           ; $74ed: $00
    ld c, c                                       ; $74ee: $49
    rst $20                                       ; $74ef: $e7
    db $d3                                        ; $74f0: $d3
    ld h, l                                       ; $74f1: $65
    ld c, l                                       ; $74f2: $4d
    di                                            ; $74f3: $f3
    ld d, c                                       ; $74f4: $51
    rst $20                                       ; $74f5: $e7
    nop                                           ; $74f6: $00
    xor d                                         ; $74f7: $aa
    rst $18                                       ; $74f8: $df
    ld sp, hl                                     ; $74f9: $f9
    sbc [hl]                                      ; $74fa: $9e
    ld d, b                                       ; $74fb: $50
    cp a                                          ; $74fc: $bf
    or d                                          ; $74fd: $b2
    rst $38                                       ; $74fe: $ff
    ld bc, $fb64                                  ; $74ff: $01 $64 $fb
    ldh [rIE], a                                  ; $7502: $e0 $ff
    ret                                           ; $7504: $c9


    or $84                                        ; $7505: $f6 $84
    add h                                         ; $7507: $84
    ld [de], a                                    ; $7508: $12
    add b                                         ; $7509: $80
    add b                                         ; $750a: $80
    inc a                                         ; $750b: $3c
    xor l                                         ; $750c: $ad
    rst $38                                       ; $750d: $ff
    call nz, $9203                                ; $750e: $c4 $03 $92
    rrca                                          ; $7511: $0f
    push bc                                       ; $7512: $c5
    inc [hl]                                      ; $7513: $34
    ccf                                           ; $7514: $3f
    rla                                           ; $7515: $17
    add b                                         ; $7516: $80
    inc b                                         ; $7517: $04
    ld [$f80d], sp                                ; $7518: $08 $0d $f8
    cp $43                                        ; $751b: $fe $43

jr_0bf_751d:
    ld hl, sp-$01                                 ; $751d: $f8 $ff
    db $10                                        ; $751f: $10
    rlca                                          ; $7520: $07
    ld hl, sp-$40                                 ; $7521: $f8 $c0
    or b                                          ; $7523: $b0
    inc h                                         ; $7524: $24
    cp $ff                                        ; $7525: $fe $ff
    inc e                                         ; $7527: $1c
    rst $38                                       ; $7528: $ff
    nop                                           ; $7529: $00
    add b                                         ; $752a: $80
    ld a, a                                       ; $752b: $7f
    ldh [$1f], a                                  ; $752c: $e0 $1f
    ld [bc], a                                    ; $752e: $02
    nop                                           ; $752f: $00
    rlca                                          ; $7530: $07
    ld hl, sp+$00                                 ; $7531: $f8 $00
    and a                                         ; $7533: $a7
    ret c                                         ; $7534: $d8

    add e                                         ; $7535: $83
    db $fc                                        ; $7536: $fc
    add b                                         ; $7537: $80
    cp $03                                        ; $7538: $fe $03
    db $fc                                        ; $753a: $fc
    nop                                           ; $753b: $00
    ld [bc], a                                    ; $753c: $02
    db $fc                                        ; $753d: $fc
    rlca                                          ; $753e: $07
    ld hl, sp-$3a                                 ; $753f: $f8 $c6
    jr c, jr_0bf_757f                             ; $7541: $38 $3c

    inc bc                                        ; $7543: $03
    nop                                           ; $7544: $00
    ld l, h                                       ; $7545: $6c
    inc de                                        ; $7546: $13
    jr c, jr_0bf_7550                             ; $7547: $38 $07

    rra                                           ; $7549: $1f

jr_0bf_754a:
    nop                                           ; $754a: $00
    ld a, $01                                     ; $754b: $3e $01
    nop                                           ; $754d: $00
    ld e, $01                                     ; $754e: $1e $01

jr_0bf_7550:
    ld a, $01                                     ; $7550: $3e $01
    ld e, b                                       ; $7552: $58
    inc bc                                        ; $7553: $03
    sub $01                                       ; $7554: $d6 $01
    nop                                           ; $7556: $00
    db $fc                                        ; $7557: $fc
    inc bc                                        ; $7558: $03
    ld sp, $04ce                                  ; $7559: $31 $ce $04
    ld hl, sp+$41                                 ; $755c: $f8 $41
    or b                                          ; $755e: $b0
    nop                                           ; $755f: $00
    ld b, a                                       ; $7560: $47
    add b                                         ; $7561: $80
    call z, $dc03                                 ; $7562: $cc $03 $dc
    inc bc                                        ; $7565: $03
    inc c                                         ; $7566: $0c
    di                                            ; $7567: $f3
    nop                                           ; $7568: $00
    jr nz, jr_0bf_754a                            ; $7569: $20 $df

    rst $00                                       ; $756b: $c7
    jr c, jr_0bf_751d                             ; $756c: $38 $af

    ld d, b                                       ; $756e: $50
    ld b, e                                       ; $756f: $43
    cp h                                          ; $7570: $bc
    nop                                           ; $7571: $00
    add hl, bc                                    ; $7572: $09
    or $bc                                        ; $7573: $f6 $bc
    ld b, b                                       ; $7575: $40
    ld [de], a                                    ; $7576: $12
    ldh [$8d], a                                  ; $7577: $e0 $8d
    ld [hl], d                                    ; $7579: $72
    nop                                           ; $757a: $00
    ccf                                           ; $757b: $3f
    ret nz                                        ; $757c: $c0

    db $fc                                        ; $757d: $fc
    inc bc                                        ; $757e: $03

jr_0bf_757f:
    ldh [$1f], a                                  ; $757f: $e0 $1f
    ld [$00f7], sp                                ; $7581: $08 $f7 $00
    db $fd                                        ; $7584: $fd
    ld [bc], a                                    ; $7585: $02
    ld e, e                                       ; $7586: $5b
    inc b                                         ; $7587: $04
    cp $01                                        ; $7588: $fe $01
    sub [hl]                                      ; $758a: $96
    ld l, b                                       ; $758b: $68
    nop                                           ; $758c: $00
    rrca                                          ; $758d: $0f
    ldh a, [rTAC]                                 ; $758e: $f0 $07
    ld hl, sp+$10                                 ; $7590: $f8 $10
    rst $28                                       ; $7592: $ef
    add a                                         ; $7593: $87
    ld a, b                                       ; $7594: $78
    db $10                                        ; $7595: $10
    ld c, a                                       ; $7596: $4f
    or b                                          ; $7597: $b0
    nop                                           ; $7598: $00
    inc c                                         ; $7599: $0c
    inc b                                         ; $759a: $04
    ld hl, sp+$07                                 ; $759b: $f8 $07
    ldh [$1f], a                                  ; $759d: $e0 $1f
    nop                                           ; $759f: $00
    ld b, l                                       ; $75a0: $45
    cp d                                          ; $75a1: $ba
    cp e                                          ; $75a2: $bb
    ld b, h                                       ; $75a3: $44
    db $f4                                        ; $75a4: $f4
    dec bc                                        ; $75a5: $0b
    ld b, b                                       ; $75a6: $40
    cp a                                          ; $75a7: $bf
    and b                                         ; $75a8: $a0
    ld d, d                                       ; $75a9: $52
    ld a, [bc]                                    ; $75aa: $0a
    ccf                                           ; $75ab: $3f
    ld e, b                                       ; $75ac: $58
    inc bc                                        ; $75ad: $03
    ld b, e                                       ; $75ae: $43
    cp a                                          ; $75af: $bf
    add a                                         ; $75b0: $87
    ld a, a                                       ; $75b1: $7f
    rlca                                          ; $75b2: $07
    add [hl]                                      ; $75b3: $86
    ld e, [hl]                                    ; $75b4: $5e
    dec b                                         ; $75b5: $05
    sbc a                                         ; $75b6: $9f
    ld a, a                                       ; $75b7: $7f
    ccf                                           ; $75b8: $3f
    rst $38                                       ; $75b9: $ff
    ret nc                                        ; $75ba: $d0

    ld a, [de]                                    ; $75bb: $1a
    inc b                                         ; $75bc: $04
    jr @-$7b                                      ; $75bd: $18 $83

    ret nz                                        ; $75bf: $c0

    jr z, jr_0bf_75e3                             ; $75c0: $28 $21

    jr z, @+$3c                                   ; $75c2: $28 $3a

    pop bc                                        ; $75c4: $c1
    nop                                           ; $75c5: $00
    xor d                                         ; $75c6: $aa
    db $fd                                        ; $75c7: $fd
    rst $08                                       ; $75c8: $cf
    cp h                                          ; $75c9: $bc
    nop                                           ; $75ca: $00
    add l                                         ; $75cb: $85
    cp $a6                                        ; $75cc: $fe $a6
    rst $38                                       ; $75ce: $ff
    sub e                                         ; $75cf: $93
    rst $28                                       ; $75d0: $ef
    add e                                         ; $75d1: $83
    rst $38                                       ; $75d2: $ff
    nop                                           ; $75d3: $00
    ret                                           ; $75d4: $c9


    or a                                          ; $75d5: $b7
    sub b                                         ; $75d6: $90
    rst $28                                       ; $75d7: $ef
    jp z, $f6f7                                   ; $75d8: $ca $f7 $f6

    db $e3                                        ; $75db: $e3
    nop                                           ; $75dc: $00
    ld c, d                                       ; $75dd: $4a
    di                                            ; $75de: $f3
    push af                                       ; $75df: $f5
    db $e3                                        ; $75e0: $e3
    ld c, c                                       ; $75e1: $49
    di                                            ; $75e2: $f3

jr_0bf_75e3:
    push hl                                       ; $75e3: $e5
    db $d3                                        ; $75e4: $d3
    ld [bc], a                                    ; $75e5: $02
    reti                                          ; $75e6: $d9


    rst $20                                       ; $75e7: $e7
    push bc                                       ; $75e8: $c5
    di                                            ; $75e9: $f3
    ld l, l                                       ; $75ea: $6d
    di                                            ; $75eb: $f3
    nop                                           ; $75ec: $00
    ld e, h                                       ; $75ed: $5c
    and c                                         ; $75ee: $a1
    nop                                           ; $75ef: $00
    sbc $83                                       ; $75f0: $de $83
    cp $48                                        ; $75f2: $fe $48
    rst $38                                       ; $75f4: $ff
    ret z                                         ; $75f5: $c8

    ld [hl], a                                    ; $75f6: $77
    and [hl]                                      ; $75f7: $a6
    nop                                           ; $75f8: $00
    ld a, e                                       ; $75f9: $7b
    ld d, b                                       ; $75fa: $50
    ccf                                           ; $75fb: $3f
    ld d, e                                       ; $75fc: $53
    ld a, $68                                     ; $75fd: $3e $68
    rra                                           ; $75ff: $1f
    rst $18                                       ; $7600: $df
    add b                                         ; $7601: $80
    ld [bc], a                                    ; $7602: $02
    ld [hl], $fe                                  ; $7603: $36 $fe
    rst $38                                       ; $7605: $ff
    db $fd                                        ; $7606: $fd
    cp $fa                                        ; $7607: $fe $fa
    db $fc                                        ; $7609: $fc
    db $e4                                        ; $760a: $e4
    nop                                           ; $760b: $00
    ld hl, sp-$2f                                 ; $760c: $f8 $d1
    ldh [$84], a                                  ; $760e: $e0 $84
    jp $832c                                      ; $7610: $c3 $2c $83


    sub d                                         ; $7613: $92
    nop                                           ; $7614: $00
    dec c                                         ; $7615: $0d
    ld h, c                                       ; $7616: $61
    sbc [hl]                                      ; $7617: $9e
    ld l, h                                       ; $7618: $6c
    sub b                                         ; $7619: $90
    sbc d                                         ; $761a: $9a
    ld h, c                                       ; $761b: $61
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    and [hl]                                      ; $761f: $a6
    nop                                           ; $7620: $00
    add l                                         ; $7621: $85
    ld a, b                                       ; $7622: $78
    inc b                                         ; $7623: $04
    ei                                            ; $7624: $fb
    cp c                                          ; $7625: $b9
    ld b, $06                                     ; $7626: $06 $06
    inc sp                                        ; $7628: $33
    inc c                                         ; $7629: $0c
    ld e, l                                       ; $762a: $5d
    ld [hl+], a                                   ; $762b: $22
    db $dd                                        ; $762c: $dd
    dec b                                         ; $762d: $05
    ld bc, $e000                                  ; $762e: $01 $00 $e0
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    and [hl]                                      ; $7633: $a6
    ld b, b                                       ; $7634: $40
    sbc $20                                       ; $7635: $de $20
    dec a                                         ; $7637: $3d
    nop                                           ; $7638: $00
    db $db                                        ; $7639: $db
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    rst $20                                       ; $763c: $e7
    nop                                           ; $763d: $00
    dec [hl]                                      ; $763e: $35
    ld [$1802], sp                                ; $763f: $08 $02 $18
    db $ec                                        ; $7642: $ec
    nop                                           ; $7643: $00
    db $10                                        ; $7644: $10
    jr z, jr_0bf_7657                             ; $7645: $28 $10

    inc c                                         ; $7647: $0c
    db $10                                        ; $7648: $10
    add sp, $10                                   ; $7649: $e8 $10
    db $ec                                        ; $764b: $ec
    inc b                                         ; $764c: $04
    db $10                                        ; $764d: $10
    ret z                                         ; $764e: $c8

    jr nc, @+$3e                                  ; $764f: $30 $3c

    inc bc                                        ; $7651: $03
    ld a, [hl-]                                   ; $7652: $3a
    ld a, [bc]                                    ; $7653: $0a
    ld a, h                                       ; $7654: $7c
    inc bc                                        ; $7655: $03
    nop                                           ; $7656: $00

jr_0bf_7657:
    ld sp, hl                                     ; $7657: $f9
    ld b, $7b                                     ; $7658: $06 $7b
    inc b                                         ; $765a: $04
    ldh a, [rIF]                                  ; $765b: $f0 $0f
    db $f4                                        ; $765d: $f4
    dec bc                                        ; $765e: $0b
    nop                                           ; $765f: $00
    pop af                                        ; $7660: $f1
    ld c, $4e                                     ; $7661: $0e $4e
    or c                                          ; $7663: $b1
    inc l                                         ; $7664: $2c
    jp $8718                                      ; $7665: $c3 $18 $87


    nop                                           ; $7668: $00
    ld hl, sp+$07                                 ; $7669: $f8 $07
    pop af                                        ; $766b: $f1
    ld c, $e3                                     ; $766c: $0e $e3
    inc e                                         ; $766e: $1c
    ld [bc], a                                    ; $766f: $02
    db $fd                                        ; $7670: $fd
    nop                                           ; $7671: $00
    ccf                                           ; $7672: $3f
    ret nz                                        ; $7673: $c0

    inc bc                                        ; $7674: $03
    db $fc                                        ; $7675: $fc
    jr nz, jr_0bf_7657                            ; $7676: $20 $df

    ld c, b                                       ; $7678: $48
    or a                                          ; $7679: $b7
    db $10                                        ; $767a: $10
    add $01                                       ; $767b: $c6 $01
    dec hl                                        ; $767d: $2b
    ld a, [hl+]                                   ; $767e: $2a
    ld b, $b6                                     ; $767f: $06 $b6
    ld c, c                                       ; $7681: $49
    db $fc                                        ; $7682: $fc
    inc bc                                        ; $7683: $03
    ld hl, $07f8                                  ; $7684: $21 $f8 $07
    inc sp                                        ; $7687: $33
    ld c, $83                                     ; $7688: $0e $83
    ld a, h                                       ; $768a: $7c
    dec l                                         ; $768b: $2d
    jp nc, $0b52                                  ; $768c: $d2 $52 $0b

    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    rst $38                                       ; $7691: $ff
    ld c, a                                       ; $7692: $4f
    or b                                          ; $7693: $b0
    ld e, $e1                                     ; $7694: $1e $e1
    nop                                           ; $7696: $00
    rst $38                                       ; $7697: $ff
    ld [$3fc0], sp                                ; $7698: $08 $c0 $3f
    ld a, [$4c05]                                 ; $769b: $fa $05 $4c
    ld c, $10                                     ; $769e: $0e $10
    rst $28                                       ; $76a0: $ef
    db $ec                                        ; $76a1: $ec
    jr jr_0bf_76b7                                ; $76a2: $18 $13

    sub b                                         ; $76a4: $90
    ld l, a                                       ; $76a5: $6f
    inc e                                         ; $76a6: $1c
    ld de, $0472                                  ; $76a7: $11 $72 $04
    sbc a                                         ; $76aa: $9f
    ld a, a                                       ; $76ab: $7f
    rst $38                                       ; $76ac: $ff
    nop                                           ; $76ad: $00
    ei                                            ; $76ae: $fb
    ld a, a                                       ; $76af: $7f
    push af                                       ; $76b0: $f5
    ccf                                           ; $76b1: $3f
    ld [$c02f], a                                 ; $76b2: $ea $2f $c0
    ld c, l                                       ; $76b5: $4d
    rrca                                          ; $76b6: $0f

jr_0bf_76b7:
    add b                                         ; $76b7: $80
    xor c                                         ; $76b8: $a9
    nop                                           ; $76b9: $00
    push bc                                       ; $76ba: $c5
    ld a, [hl+]                                   ; $76bb: $2a
    inc sp                                        ; $76bc: $33
    ld a, [de]                                    ; $76bd: $1a
    add hl, bc                                    ; $76be: $09
    inc [hl]                                      ; $76bf: $34
    ld a, [de]                                    ; $76c0: $1a
    ldh [$5a], a                                  ; $76c1: $e0 $5a
    rla                                           ; $76c3: $17
    dec bc                                        ; $76c4: $0b
    rst $38                                       ; $76c5: $ff
    add h                                         ; $76c6: $84
    ldh a, [rNR11]                                ; $76c7: $f0 $11
    dec hl                                        ; $76c9: $2b
    ld l, [hl]                                    ; $76ca: $6e
    ld b, $7b                                     ; $76cb: $06 $7b
    inc bc                                        ; $76cd: $03
    ld c, $0d                                     ; $76ce: $0e $0d
    nop                                           ; $76d0: $00
    cp l                                          ; $76d1: $bd
    ldh [$bf], a                                  ; $76d2: $e0 $bf
    adc c                                         ; $76d4: $89
    rst $38                                       ; $76d5: $ff
    adc c                                         ; $76d6: $89
    rst $30                                       ; $76d7: $f7
    or d                                          ; $76d8: $b2
    nop                                           ; $76d9: $00
    rst $28                                       ; $76da: $ef
    add l                                         ; $76db: $85
    cp $e5                                        ; $76dc: $fe $e5
    cp [hl]                                       ; $76de: $be
    adc e                                         ; $76df: $8b
    db $fc                                        ; $76e0: $fc
    db $db                                        ; $76e1: $db
    ld bc, $a1e7                                  ; $76e2: $01 $e7 $a1
    rst $08                                       ; $76e5: $cf
    ld e, e                                       ; $76e6: $5b
    add a                                         ; $76e7: $87
    or l                                          ; $76e8: $b5
    rrca                                          ; $76e9: $0f
    ld h, b                                       ; $76ea: $60
    inc l                                         ; $76eb: $2c
    inc b                                         ; $76ec: $04
    dec hl                                        ; $76ed: $2b
    db $fc                                        ; $76ee: $fc
    dec [hl]                                      ; $76ef: $35
    cp $9a                                        ; $76f0: $fe $9a
    cp $01                                        ; $76f2: $fe $01
    ld c, $ff                                     ; $76f4: $0e $ff
    nop                                           ; $76f6: $00
    ld b, l                                       ; $76f7: $45
    cp a                                          ; $76f8: $bf
    ld [de], a                                    ; $76f9: $12
    rst $38                                       ; $76fa: $ff
    inc hl                                        ; $76fb: $23
    rst $18                                       ; $76fc: $df
    add hl, bc                                    ; $76fd: $09
    ld a, $90                                     ; $76fe: $3e $90
    ld h, b                                       ; $7700: $60
    inc e                                         ; $7701: $1c
    sub a                                         ; $7702: $97
    ld c, [hl]                                    ; $7703: $4e
    ld h, b                                       ; $7704: $60
    inc c                                         ; $7705: $0c
    ld [hl], a                                    ; $7706: $77
    adc $74                                       ; $7707: $ce $74
    ld hl, sp+$00                                 ; $7709: $f8 $00
    ldh a, [$f8]                                  ; $770b: $f0 $f8
    ld l, b                                       ; $770d: $68
    ldh a, [$e0]                                  ; $770e: $f0 $e0
    ldh a, [$d1]                                  ; $7710: $f0 $d1
    ldh [rNR10], a                                ; $7712: $e0 $10
    jp Jump_0bf_41e0                              ; $7714: $c3 $e0 $41


    inc b                                         ; $7717: $04
    nop                                           ; $7718: $00
    ld b, b                                       ; $7719: $40
    ccf                                           ; $771a: $3f
    jr nc, @+$11                                  ; $771b: $30 $0f

    ld b, b                                       ; $771d: $40
    ld e, h                                       ; $771e: $5c
    call nz, $e200                                ; $771f: $c4 $00 $e2
    inc c                                         ; $7722: $0c
    add b                                         ; $7723: $80
    add hl, de                                    ; $7724: $19
    adc h                                         ; $7725: $8c
    inc sp                                        ; $7726: $33
    ld hl, $730c                                  ; $7727: $21 $0c $73
    rst $38                                       ; $772a: $ff
    ld e, $80                                     ; $772b: $1e $80
    ld a, a                                       ; $772d: $7f
    add b                                         ; $772e: $80
    ld a, a                                       ; $772f: $7f
    add hl, bc                                    ; $7730: $09
    rra                                           ; $7731: $1f
    ld [$807f], sp                                ; $7732: $08 $7f $80
    rrca                                          ; $7735: $0f
    ldh a, [rNR13]                                ; $7736: $f0 $13

jr_0bf_7738:
    rra                                           ; $7738: $1f
    ld bc, $01fe                                  ; $7739: $01 $fe $01
    nop                                           ; $773c: $00
    cp $21                                        ; $773d: $fe $21
    sbc $85                                       ; $773f: $de $85
    ld [hl], b                                    ; $7741: $70
    jp hl                                         ; $7742: $e9


jr_0bf_7743:
    db $10                                        ; $7743: $10
    call Call_000_3000                            ; $7744: $cd $00 $30
    xor $10                                       ; $7747: $ee $10
    xor [hl]                                      ; $7749: $ae
    ld d, b                                       ; $774a: $50
    rrca                                          ; $774b: $0f
    ldh a, [$c6]                                  ; $774c: $f0 $c6
    inc b                                         ; $774e: $04
    jr c, jr_0bf_7738                             ; $774f: $38 $e7

    jr jr_0bf_7743                                ; $7751: $18 $f0

    rrca                                          ; $7753: $0f
    ld [bc], a                                    ; $7754: $02
    add hl, bc                                    ; $7755: $09
    ldh a, [rIF]                                  ; $7756: $f0 $0f
    nop                                           ; $7758: $00
    jp hl                                         ; $7759: $e9


    ld d, $f3                                     ; $775a: $16 $f3
    inc c                                         ; $775c: $0c
    or e                                          ; $775d: $b3
    inc c                                         ; $775e: $0c
    cp h                                          ; $775f: $bc
    inc bc                                        ; $7760: $03
    add b                                         ; $7761: $80
    ccf                                           ; $7762: $3f
    rrca                                          ; $7763: $0f
    ld c, b                                       ; $7764: $48
    or a                                          ; $7765: $b7
    ldh a, [rIF]                                  ; $7766: $f0 $0f
    and b                                         ; $7768: $a0
    rra                                           ; $7769: $1f
    ld bc, $7e00                                  ; $776a: $01 $00 $7e
    inc bc                                        ; $776d: $03
    db $fc                                        ; $776e: $fc

Call_0bf_776f:
    inc b                                         ; $776f: $04
    ei                                            ; $7770: $fb
    nop                                           ; $7771: $00
    rst $38                                       ; $7772: $ff
    add a                                         ; $7773: $87
    nop                                           ; $7774: $00
    ld a, b                                       ; $7775: $78
    rra                                           ; $7776: $1f
    ldh [$57], a                                  ; $7777: $e0 $57
    xor b                                         ; $7779: $a8
    dec [hl]                                      ; $777a: $35
    jp z, Jump_0bf_40f6                           ; $777b: $ca $f6 $40

    add hl, bc                                    ; $777e: $09
    ld c, h                                       ; $777f: $4c
    inc d                                         ; $7780: $14
    or $c5                                        ; $7781: $f6 $c5
    ld a, [hl-]                                   ; $7783: $3a
    add b                                         ; $7784: $80
    ld a, a                                       ; $7785: $7f
    adc b                                         ; $7786: $88
    nop                                           ; $7787: $00
    ld [hl], a                                    ; $7788: $77
    sub b                                         ; $7789: $90
    ld l, a                                       ; $778a: $6f
    ld c, c                                       ; $778b: $49
    or [hl]                                       ; $778c: $b6
    ld b, $f9                                     ; $778d: $06 $f9
    add hl, hl                                    ; $778f: $29
    nop                                           ; $7790: $00
    sub $79                                       ; $7791: $d6 $79
    add [hl]                                      ; $7793: $86
    ld e, $e1                                     ; $7794: $1e $e1
    ld [bc], a                                    ; $7796: $02
    db $fd                                        ; $7797: $fd
    ld bc, $fe00                                  ; $7798: $01 $00 $fe
    nop                                           ; $779b: $00
    rst $38                                       ; $779c: $ff
    ld b, b                                       ; $779d: $40
    cp a                                          ; $779e: $bf
    ld a, h                                       ; $779f: $7c
    add e                                         ; $77a0: $83
    ld d, $00                                     ; $77a1: $16 $00
    jp hl                                         ; $77a3: $e9


    rst $08                                       ; $77a4: $cf
    ccf                                           ; $77a5: $3f
    rst $20                                       ; $77a6: $e7
    rra                                           ; $77a7: $1f
    ld d, e                                       ; $77a8: $53
    xor a                                         ; $77a9: $af
    ld [hl], e                                    ; $77aa: $73
    cpl                                           ; $77ab: $2f
    adc a                                         ; $77ac: $8f
    ld bc, $0364                                  ; $77ad: $01 $64 $03
    rra                                           ; $77b0: $1f
    and h                                         ; $77b1: $a4
    dec b                                         ; $77b2: $05
    ld [hl], $0a                                  ; $77b3: $36 $0a
    ld a, [hl-]                                   ; $77b5: $3a
    ld a, [de]                                    ; $77b6: $1a
    ld a, [bc]                                    ; $77b7: $0a
    jr @+$07                                      ; $77b8: $18 $05

    call nz, $9103                                ; $77ba: $c4 $03 $91
    rrca                                          ; $77bd: $0f
    jp z, Jump_000_3300                           ; $77be: $ca $00 $33

    rst $38                                       ; $77c1: $ff
    add $05                                       ; $77c2: $c6 $05
    add d                                         ; $77c4: $82
    add b                                         ; $77c5: $80
    ld e, a                                       ; $77c6: $5f
    ld c, b                                       ; $77c7: $48
    cp [hl]                                       ; $77c8: $be
    adc d                                         ; $77c9: $8a
    db $fc                                        ; $77ca: $fc
    ld d, $70                                     ; $77cb: $16 $70
    inc b                                         ; $77cd: $04
    db $f4                                        ; $77ce: $f4
    ld [bc], a                                    ; $77cf: $02
    cp c                                          ; $77d0: $b9
    sub e                                         ; $77d1: $93
    db $fc                                        ; $77d2: $fc
    inc d                                         ; $77d3: $14
    ld sp, hl                                     ; $77d4: $f9
    rst $30                                       ; $77d5: $f7
    ld [hl], b                                    ; $77d6: $70
    inc [hl]                                      ; $77d7: $34
    cp b                                          ; $77d8: $b8
    nop                                           ; $77d9: $00
    ld a, a                                       ; $77da: $7f
    ld d, c                                       ; $77db: $51
    cp $a4                                        ; $77dc: $fe $a4
    rst $38                                       ; $77de: $ff
    ld h, d                                       ; $77df: $62
    db $fd                                        ; $77e0: $fd
    ld c, c                                       ; $77e1: $49
    nop                                           ; $77e2: $00
    rst $30                                       ; $77e3: $f7
    ld bc, $93ff                                  ; $77e4: $01 $ff $93
    ld a, a                                       ; $77e7: $7f
    dec h                                         ; $77e8: $25
    rst $18                                       ; $77e9: $df
    ld a, [bc]                                    ; $77ea: $0a
    dec d                                         ; $77eb: $15
    rst $38                                       ; $77ec: $ff
    sub l                                         ; $77ed: $95
    ei                                            ; $77ee: $fb
    ld [hl], b                                    ; $77ef: $70
    inc b                                         ; $77f0: $04
    ld [hl], e                                    ; $77f1: $73
    ld [hl], b                                    ; $77f2: $70
    inc e                                         ; $77f3: $1c
    ld e, a                                       ; $77f4: $5f
    ld [hl], b                                    ; $77f5: $70
    inc b                                         ; $77f6: $04
    nop                                           ; $77f7: $00
    call $b5ee                                    ; $77f8: $cd $ee $b5
    adc $f9                                       ; $77fb: $ce $f9
    adc $c7                                       ; $77fd: $ce $c7
    ldh [rP1], a                                  ; $77ff: $e0 $00
    ld d, d                                       ; $7801: $52
    ldh [$e7], a                                  ; $7802: $e0 $e7
    ldh a, [$ef]                                  ; $7804: $f0 $ef
    ldh a, [rPCM12]                               ; $7806: $f0 $76
    ld sp, hl                                     ; $7808: $f9
    nop                                           ; $7809: $00
    ld a, d                                       ; $780a: $7a
    db $fd                                        ; $780b: $fd
    db $fc                                        ; $780c: $fc

jr_0bf_780d:
    rst $38                                       ; $780d: $ff
    ld a, [hl]                                    ; $780e: $7e
    rst $38                                       ; $780f: $ff
    or c                                          ; $7810: $b1
    ld c, a                                       ; $7811: $4f
    dec b                                         ; $7812: $05
    daa                                           ; $7813: $27
    rst $18                                       ; $7814: $df
    ld c, a                                       ; $7815: $4f
    cp a                                          ; $7816: $bf
    rra                                           ; $7817: $1f
    xor d                                         ; $7818: $aa
    rlca                                          ; $7819: $07
    ld a, a                                       ; $781a: $7f

jr_0bf_781b:
    ld c, $00                                     ; $781b: $0e $00
    ld h, e                                       ; $781d: $63
    ld a, l                                       ; $781e: $7d
    adc b                                         ; $781f: $88
    rlca                                          ; $7820: $07
    ld [bc], a                                    ; $7821: $02
    dec c                                         ; $7822: $0d
    push af                                       ; $7823: $f5
    rst $38                                       ; $7824: $ff
    ldh [rP1], a                                  ; $7825: $e0 $00
    dec h                                         ; $7827: $25
    ld l, $11                                     ; $7828: $2e $11
    nop                                           ; $782a: $00
    rst $38                                       ; $782b: $ff

jr_0bf_782c:
    jr nz, jr_0bf_780d                            ; $782c: $20 $df

    ret nc                                        ; $782e: $d0

    rrca                                          ; $782f: $0f
    adc b                                         ; $7830: $88
    rlca                                          ; $7831: $07
    call nz, $0300                                ; $7832: $c4 $00 $03
    add d                                         ; $7835: $82
    ld bc, $0cf3                                  ; $7836: $01 $f3 $0c
    jp $093c                                      ; $7839: $c3 $3c $09


    ld b, b                                       ; $783c: $40
    or $3e                                        ; $783d: $f6 $3e
    add hl, bc                                    ; $783f: $09
    ld h, c                                       ; $7840: $61
    sbc [hl]                                      ; $7841: $9e
    jr z, jr_0bf_781b                             ; $7842: $28 $d7

    ld b, b                                       ; $7844: $40
    cp a                                          ; $7845: $bf
    db $10                                        ; $7846: $10
    ld [hl], c                                    ; $7847: $71
    ld c, $fb                                     ; $7848: $0e $fb
    ld [hl], $03                                  ; $784a: $36 $03
    or [hl]                                       ; $784c: $b6
    ld c, c                                       ; $784d: $49
    ld [hl], d                                    ; $784e: $72
    adc l                                         ; $784f: $8d
    ld [bc], a                                    ; $7850: $02
    ld c, l                                       ; $7851: $4d
    or d                                          ; $7852: $b2
    jr z, jr_0bf_782c                             ; $7853: $28 $d7

    ld [de], a                                    ; $7855: $12
    db $ed                                        ; $7856: $ed
    ld e, b                                       ; $7857: $58
    add hl, de                                    ; $7858: $19
    ld bc, $5ee0                                  ; $7859: $01 $e0 $5e
    ld b, $f1                                     ; $785c: $06 $f1

jr_0bf_785e:
    daa                                           ; $785e: $27
    ld l, d                                       ; $785f: $6a
    dec b                                         ; $7860: $05
    ld a, [hl+]                                   ; $7861: $2a
    push de                                       ; $7862: $d5
    add h                                         ; $7863: $84
    ld a, e                                       ; $7864: $7b
    ld de, $ee01                                  ; $7865: $11 $01 $ee
    nop                                           ; $7868: $00
    rst $38                                       ; $7869: $ff
    ld [bc], a                                    ; $786a: $02
    db $fd                                        ; $786b: $fd
    ld a, [de]                                    ; $786c: $1a
    ldh [$7a], a                                  ; $786d: $e0 $7a
    add hl, bc                                    ; $786f: $09
    ld [bc], a                                    ; $7870: $02
    ld c, b                                       ; $7871: $48
    or a                                          ; $7872: $b7
    ld [de], a                                    ; $7873: $12
    db $ed                                        ; $7874: $ed
    db $eb                                        ; $7875: $eb
    inc d                                         ; $7876: $14
    inc a                                         ; $7877: $3c
    add hl, bc                                    ; $7878: $09
    or h                                          ; $7879: $b4
    db $10                                        ; $787a: $10
    inc bc                                        ; $787b: $03
    add e                                         ; $787c: $83
    ld a, h                                       ; $787d: $7c
    and c                                         ; $787e: $a1
    dec c                                         ; $787f: $0d
    ld b, b                                       ; $7880: $40
    cp a                                          ; $7881: $bf
    xor d                                         ; $7882: $aa
    ld d, l                                       ; $7883: $55
    nop                                           ; $7884: $00
    jr z, jr_0bf_785e                             ; $7885: $28 $d7

    add b                                         ; $7887: $80
    ld a, a                                       ; $7888: $7f
    inc bc                                        ; $7889: $03
    rst $38                                       ; $788a: $ff
    adc a                                         ; $788b: $8f
    ld a, a                                       ; $788c: $7f
    ld b, b                                       ; $788d: $40
    rrca                                          ; $788e: $0f
    cp d                                          ; $788f: $ba
    ld d, $7c                                     ; $7890: $16 $7c
    rst $38                                       ; $7892: $ff
    ld [hl], c                                    ; $7893: $71
    rst $38                                       ; $7894: $ff
    set 7, a                                      ; $7895: $cb $ff
    ld l, [hl]                                    ; $7897: $6e
    rla                                           ; $7898: $17
    jr nz, jr_0bf_789d                            ; $7899: $20 $02

    db $10                                        ; $789b: $10
    add hl, de                                    ; $789c: $19

jr_0bf_789d:
    cpl                                           ; $789d: $2f
    db $10                                        ; $789e: $10
    ld hl, $2918                                  ; $789f: $21 $18 $29
    jr z, jr_0bf_78d1                             ; $78a2: $28 $2d

    sub d                                         ; $78a4: $92
    jr nz, @-$05                                  ; $78a5: $20 $f9

    ld e, l                                       ; $78a7: $5d
    add b                                         ; $78a8: $80
    inc b                                         ; $78a9: $04
    db $fd                                        ; $78aa: $fd
    cp e                                          ; $78ab: $bb
    ld d, $f9                                     ; $78ac: $16 $f9
    ld e, c                                       ; $78ae: $59
    nop                                           ; $78af: $00
    cp e                                          ; $78b0: $bb
    sub $b9                                       ; $78b1: $d6 $b9
    ld c, a                                       ; $78b3: $4f
    cp c                                          ; $78b4: $b9
    ret                                           ; $78b5: $c9


    rst $30                                       ; $78b6: $f7
    ld b, b                                       ; $78b7: $40
    nop                                           ; $78b8: $00
    rst $38                                       ; $78b9: $ff
    db $e4                                        ; $78ba: $e4
    rst $38                                       ; $78bb: $ff
    ld d, d                                       ; $78bc: $52
    db $fd                                        ; $78bd: $fd
    xor b                                         ; $78be: $a8
    rst $38                                       ; $78bf: $ff
    call nc, $ef40                                ; $78c0: $d4 $40 $ef
    add b                                         ; $78c3: $80
    inc c                                         ; $78c4: $0c
    xor b                                         ; $78c5: $a8
    sbc $fb                                       ; $78c6: $de $fb
    sbc [hl]                                      ; $78c8: $9e
    ld d, c                                       ; $78c9: $51
    cp [hl]                                       ; $78ca: $be
    nop                                           ; $78cb: $00
    or [hl]                                       ; $78cc: $b6
    ld a, [$fe61]                                 ; $78cd: $fa $61 $fe
    ld [c], a                                     ; $78d0: $e2

jr_0bf_78d1:
    cp $c9                                        ; $78d1: $fe $c9

jr_0bf_78d3:
    cp $2d                                        ; $78d3: $fe $2d
    adc b                                         ; $78d5: $88
    or $35                                        ; $78d6: $f6 $35
    rrca                                          ; $78d8: $0f
    ld a, [hl]                                    ; $78d9: $7e
    ld hl, sp+$07                                 ; $78da: $f8 $07
    ldh [$0d], a                                  ; $78dc: $e0 $0d
    rrca                                          ; $78de: $0f
    ld [hl], h                                    ; $78df: $74
    ld [bc], a                                    ; $78e0: $02
    add e                                         ; $78e1: $83
    add sp, $05                                   ; $78e2: $e8 $05
    db $fc                                        ; $78e4: $fc
    adc e                                         ; $78e5: $8b
    ldh a, [rNR42]                                ; $78e6: $f0 $21
    ret nz                                        ; $78e8: $c0

    cp h                                          ; $78e9: $bc
    dec bc                                        ; $78ea: $0b
    ldh [rNR33], a                                ; $78eb: $e0 $1d

jr_0bf_78ed:
    call nc, Call_000_1ab0                        ; $78ed: $d4 $b0 $1a
    sbc b                                         ; $78f0: $98
    add hl, de                                    ; $78f1: $19
    add c                                         ; $78f2: $81
    ldh [rSC], a                                  ; $78f3: $e0 $02
    add b                                         ; $78f5: $80
    ld l, h                                       ; $78f6: $6c
    rlca                                          ; $78f7: $07
    ldh [rIE], a                                  ; $78f8: $e0 $ff
    ld a, b                                       ; $78fa: $78
    ldh a, [rSC]                                  ; $78fb: $f0 $02
    nop                                           ; $78fd: $00
    xor h                                         ; $78fe: $ac
    ld c, $d6                                     ; $78ff: $0e $d6
    jr z, jr_0bf_78d3                             ; $7901: $28 $d0

    add hl, bc                                    ; $7903: $09
    jr jr_0bf_78ed                                ; $7904: $18 $e7

    db $10                                        ; $7906: $10
    ld h, b                                       ; $7907: $60

jr_0bf_7908:
    rst $28                                       ; $7908: $ef
    db $10                                        ; $7909: $10
    jr c, jr_0bf_7908                             ; $790a: $38 $fc

    add hl, bc                                    ; $790c: $09
    ccf                                           ; $790d: $3f

jr_0bf_790e:
    ret nz                                        ; $790e: $c0

    rrca                                          ; $790f: $0f
    ldh a, [$1f]                                  ; $7910: $f0 $1f
    ld bc, $0de0                                  ; $7912: $01 $e0 $0d
    ld a, [c]                                     ; $7915: $f2
    ld b, $f9                                     ; $7916: $06 $f9
    ld b, a                                       ; $7918: $47
    cp b                                          ; $7919: $b8
    db $f4                                        ; $791a: $f4
    add hl, bc                                    ; $791b: $09
    nop                                           ; $791c: $00
    ld bc, $dafe                                  ; $791d: $01 $fe $da
    nop                                           ; $7920: $00
    ld l, [hl]                                    ; $7921: $6e
    add b                                         ; $7922: $80
    xor l                                         ; $7923: $ad
    ld b, b                                       ; $7924: $40
    jr nz, jr_0bf_7964                            ; $7925: $20 $3d

    jp nz, Jump_000_0814                          ; $7927: $c2 $14 $08

    sub e                                         ; $792a: $93
    ld l, h                                       ; $792b: $6c
    ld bc, $a8fe                                  ; $792c: $01 $fe $a8
    ld [bc], a                                    ; $792f: $02
    rlca                                          ; $7930: $07
    dec d                                         ; $7931: $15
    inc bc                                        ; $7932: $03
    ld [bc], a                                    ; $7933: $02
    ld bc, $a480                                  ; $7934: $01 $80 $a4
    inc bc                                        ; $7937: $03
    sbc b                                         ; $7938: $98
    inc b                                         ; $7939: $04
    nop                                           ; $793a: $00
    ret z                                         ; $793b: $c8

    jr nz, jr_0bf_790e                            ; $793c: $20 $d0

    jr nz, @-$16                                  ; $793e: $20 $e8

    inc e                                         ; $7940: $1c
    ccf                                           ; $7941: $3f
    rst $38                                       ; $7942: $ff
    nop                                           ; $7943: $00
    ld e, a                                       ; $7944: $5f
    ccf                                           ; $7945: $3f
    cpl                                           ; $7946: $2f
    rra                                           ; $7947: $1f
    inc de                                        ; $7948: $13
    rrca                                          ; $7949: $0f
    dec b                                         ; $794a: $05
    inc bc                                        ; $794b: $03
    add b                                         ; $794c: $80
    db $ed                                        ; $794d: $ed
    ld d, c                                       ; $794e: $51
    rst $38                                       ; $794f: $ff
    ld [$8aff], a                                 ; $7950: $ea $ff $8a
    cp l                                          ; $7953: $bd
    rst $28                                       ; $7954: $ef
    cp h                                          ; $7955: $bc
    nop                                           ; $7956: $00
    ld b, l                                       ; $7957: $45
    cp [hl]                                       ; $7958: $be
    or [hl]                                       ; $7959: $b6
    xor a                                         ; $795a: $af
    jp $a3bf                                      ; $795b: $c3 $bf $a3


    cp a                                          ; $795e: $bf
    nop                                           ; $795f: $00
    ld c, c                                       ; $7960: $49
    cp a                                          ; $7961: $bf
    adc b                                         ; $7962: $88
    or a                                          ; $7963: $b7

jr_0bf_7964:
    add a                                         ; $7964: $87
    ld a, [$dea8]                                 ; $7965: $fa $a8 $de
    nop                                           ; $7968: $00
    ld b, d                                       ; $7969: $42
    cp $c8                                        ; $796a: $fe $c8
    halt                                          ; $796c: $76
    and c                                         ; $796d: $a1
    ld a, [hl]                                    ; $796e: $7e

jr_0bf_796f:
    ld d, e                                       ; $796f: $53
    inc a                                         ; $7970: $3c
    rlca                                          ; $7971: $07
    ld d, l                                       ; $7972: $55
    ld a, [hl-]                                   ; $7973: $3a
    ld l, c                                       ; $7974: $69
    ld e, $ff                                     ; $7975: $1e $ff
    jr z, jr_0bf_799b                             ; $7977: $28 $22

    ld h, $2a                                     ; $7979: $26 $2a
    ld c, h                                       ; $797b: $4c
    ld a, [hl+]                                   ; $797c: $2a
    sbc h                                         ; $797d: $9c
    or d                                          ; $797e: $b2
    dec e                                         ; $797f: $1d
    add c                                         ; $7980: $81
    nop                                           ; $7981: $00
    ld e, d                                       ; $7982: $5a
    ccf                                           ; $7983: $3f
    inc b                                         ; $7984: $04
    jr jr_0bf_796f                                ; $7985: $18 $e8

    ld a, [de]                                    ; $7987: $1a
    ld [bc], a                                    ; $7988: $02
    db $fd                                        ; $7989: $fd
    add b                                         ; $798a: $80
    rla                                           ; $798b: $17
    rrca                                          ; $798c: $0f
    inc bc                                        ; $798d: $03
    db $fc                                        ; $798e: $fc
    inc bc                                        ; $798f: $03
    db $fc                                        ; $7990: $fc
    sbc [hl]                                      ; $7991: $9e
    ld h, b                                       ; $7992: $60
    dec e                                         ; $7993: $1d
    nop                                           ; $7994: $00
    ldh [$33], a                                  ; $7995: $e0 $33

jr_0bf_7997:
    ret nz                                        ; $7997: $c0

    ld sp, $72c0                                  ; $7998: $31 $c0 $72

jr_0bf_799b:
    add b                                         ; $799b: $80
    pop hl                                        ; $799c: $e1
    add b                                         ; $799d: $80
    ldh [rTMA], a                                 ; $799e: $e0 $06
    adc d                                         ; $79a0: $8a
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    rst $38                                       ; $79a3: $ff
    add c                                         ; $79a4: $81
    ld a, [hl]                                    ; $79a5: $7e
    ret nz                                        ; $79a6: $c0

    ld bc, $e13f                                  ; $79a7: $01 $3f $e1
    ld e, $e0                                     ; $79aa: $1e $e0
    rra                                           ; $79ac: $1f
    ret nc                                        ; $79ad: $d0

    cpl                                           ; $79ae: $2f
    inc b                                         ; $79af: $04
    ld [$ba90], sp                                ; $79b0: $08 $90 $ba
    ld a, [bc]                                    ; $79b3: $0a
    ld b, h                                       ; $79b4: $44
    cp e                                          ; $79b5: $bb
    jr nc, jr_0bf_79c0                            ; $79b6: $30 $08

    ld b, b                                       ; $79b8: $40
    cp a                                          ; $79b9: $bf
    ld [de], a                                    ; $79ba: $12
    db $ed                                        ; $79bb: $ed
    nop                                           ; $79bc: $00
    jr z, @-$27                                   ; $79bd: $28 $d7

    rst $28                                       ; $79bf: $ef

jr_0bf_79c0:
    db $10                                        ; $79c0: $10
    and $19                                       ; $79c1: $e6 $19
    ld a, l                                       ; $79c3: $7d
    add b                                         ; $79c4: $80
    nop                                           ; $79c5: $00
    inc hl                                        ; $79c6: $23
    call c, $e619                                 ; $79c7: $dc $19 $e6
    inc c                                         ; $79ca: $0c
    di                                            ; $79cb: $f3
    ld b, $f9                                     ; $79cc: $06 $f9
    nop                                           ; $79ce: $00
    inc bc                                        ; $79cf: $03
    db $fc                                        ; $79d0: $fc
    and d                                         ; $79d1: $a2
    ld bc, $00d1                                  ; $79d2: $01 $d1 $00
    jr c, jr_0bf_7997                             ; $79d5: $38 $c0

    nop                                           ; $79d7: $00
    dec a                                         ; $79d8: $3d
    nop                                           ; $79d9: $00
    ld d, c                                       ; $79da: $51
    ld c, $e8                                     ; $79db: $0e $e8
    rlca                                          ; $79dd: $07
    ld d, h                                       ; $79de: $54
    add e                                         ; $79df: $83

jr_0bf_79e0:
    jr nz, jr_0bf_7a1c                            ; $79e0: $20 $3a

    pop bc                                        ; $79e2: $c1
    sub b                                         ; $79e3: $90
    ld [$7f1f], sp                                ; $79e4: $08 $1f $7f

Jump_0bf_79e7:
    daa                                           ; $79e7: $27
    rra                                           ; $79e8: $1f
    adc c                                         ; $79e9: $89
    dec c                                         ; $79ea: $0d
    rlca                                          ; $79eb: $07
    ld [c], a                                     ; $79ec: $e2
    ld bc, $0e3d                                  ; $79ed: $01 $3d $0e
    ld bc, $3abd                                  ; $79f0: $01 $bd $3a
    ld a, a                                       ; $79f3: $7f
    jr nc, jr_0bf_79fb                            ; $79f4: $30 $05

    ld b, d                                       ; $79f6: $42
    daa                                           ; $79f7: $27
    db $db                                        ; $79f8: $db
    add hl, bc                                    ; $79f9: $09
    rst $38                                       ; $79fa: $ff

jr_0bf_79fb:
    db $fd                                        ; $79fb: $fd
    rst $38                                       ; $79fc: $ff
    ld a, [$0762]                                 ; $79fd: $fa $62 $07
    and e                                         ; $7a00: $a3
    jr z, @+$01                                   ; $7a01: $28 $ff

    ld c, a                                       ; $7a03: $4f
    ld h, b                                       ; $7a04: $60
    rlca                                          ; $7a05: $07
    call nc, Call_000_1760                        ; $7a06: $d4 $60 $17
    ld hl, $81c0                                  ; $7a09: $21 $c0 $81
    nop                                           ; $7a0c: $00
    ld bc, $00a3                                  ; $7a0d: $01 $a3 $00
    rlc c                                         ; $7a10: $cb $01
    rst $30                                       ; $7a12: $f7
    jp $00f0                                      ; $7a13: $c3 $f0 $00


    xor a                                         ; $7a16: $af
    ld a, [bc]                                    ; $7a17: $0a
    cp l                                          ; $7a18: $bd
    and c                                         ; $7a19: $a1
    cp a                                          ; $7a1a: $bf
    adc c                                         ; $7a1b: $89

jr_0bf_7a1c:
    or a                                          ; $7a1c: $b7
    ld b, d                                       ; $7a1d: $42
    nop                                           ; $7a1e: $00
    cp a                                          ; $7a1f: $bf
    push hl                                       ; $7a20: $e5
    sbc [hl]                                      ; $7a21: $9e
    push de                                       ; $7a22: $d5
    xor [hl]                                      ; $7a23: $ae
    res 7, h                                      ; $7a24: $cb $bc
    dec bc                                        ; $7a26: $0b
    nop                                           ; $7a27: $00
    ld a, $a8                                     ; $7a28: $3e $a8
    ld e, $b5                                     ; $7a2a: $1e $b5
    ld c, $44                                     ; $7a2c: $0e $44
    sbc [hl]                                      ; $7a2e: $9e
    sub l                                         ; $7a2f: $95
    ld bc, $654e                                  ; $7a30: $01 $4e $65
    sbc [hl]                                      ; $7a33: $9e
    sub h                                         ; $7a34: $94
    adc $74                                       ; $7a35: $ce $74
    adc $ee                                       ; $7a37: $ce $ee
    ld c, b                                       ; $7a39: $48
    db $fd                                        ; $7a3a: $fd
    ld [hl+], a                                   ; $7a3b: $22
    ld c, $e8                                     ; $7a3c: $0e $e8
    jr z, jr_0bf_79e0                             ; $7a3e: $28 $a0

    ld e, $a0                                     ; $7a40: $1e $a0
    ld e, a                                       ; $7a42: $5f
    or b                                          ; $7a43: $b0
    rrca                                          ; $7a44: $0f
    ld a, [$fc28]                                 ; $7a45: $fa $28 $fc
    jp nz, $1001                                  ; $7a48: $c2 $01 $10

    ret                                           ; $7a4b: $c9


    cp $15                                        ; $7a4c: $fe $15
    db $e4                                        ; $7a4e: $e4
    inc bc                                        ; $7a4f: $03
    ld b, $f8                                     ; $7a50: $06 $f8
    jp Jump_000_003c                              ; $7a52: $c3 $3c $00


    pop bc                                        ; $7a55: $c1
    ld a, $a3                                     ; $7a56: $3e $a3
    inc e                                         ; $7a58: $1c
    ld b, c                                       ; $7a59: $41
    ld a, $e3                                     ; $7a5a: $3e $e3
    inc e                                         ; $7a5c: $1c
    db $10                                        ; $7a5d: $10
    ld h, e                                       ; $7a5e: $63
    inc e                                         ; $7a5f: $1c
    ld c, a                                       ; $7a60: $4f
    call z, $8707                                 ; $7a61: $cc $07 $87
    nop                                           ; $7a64: $00
    rrca                                          ; $7a65: $0f
    nop                                           ; $7a66: $00
    ld [de], a                                    ; $7a67: $12
    sub a                                         ; $7a68: $97
    nop                                           ; $7a69: $00
    dec c                                         ; $7a6a: $0d
    inc b                                         ; $7a6b: $04
    nop                                           ; $7a6c: $00
    dec bc                                        ; $7a6d: $0b
    inc b                                         ; $7a6e: $04
    ld hl, sp+$08                                 ; $7a6f: $f8 $08
    call nz, Call_000_3b00                        ; $7a71: $c4 $00 $3b
    call nc, Call_000_382b                        ; $7a74: $d4 $2b $38

jr_0bf_7a77:
    rst $00                                       ; $7a77: $c7
    call nz, $183b                                ; $7a78: $c4 $3b $18
    nop                                           ; $7a7b: $00
    rst $20                                       ; $7a7c: $e7
    or b                                          ; $7a7d: $b0
    ld c, a                                       ; $7a7e: $4f
    db $10                                        ; $7a7f: $10
    rst $28                                       ; $7a80: $ef
    ld d, d                                       ; $7a81: $52
    xor l                                         ; $7a82: $ad
    add b                                         ; $7a83: $80
    ld [bc], a                                    ; $7a84: $02
    ld a, a                                       ; $7a85: $7f
    inc h                                         ; $7a86: $24
    db $db                                        ; $7a87: $db

jr_0bf_7a88:
    add b                                         ; $7a88: $80
    ld a, a                                       ; $7a89: $7f
    ld [hl], b                                    ; $7a8a: $70
    ld l, $03                                     ; $7a8b: $2e $03
    ld a, a                                       ; $7a8d: $7f
    sub b                                         ; $7a8e: $90
    inc a                                         ; $7a8f: $3c
    inc d                                         ; $7a90: $14
    inc b                                         ; $7a91: $04
    ei                                            ; $7a92: $fb
    db $10                                        ; $7a93: $10
    add hl, de                                    ; $7a94: $19
    ld [$8cff], sp                                ; $7a95: $08 $ff $8c
    rst $38                                       ; $7a98: $ff
    ld [$e11e], sp                                ; $7a99: $08 $1e $e1
    add l                                         ; $7a9c: $85
    ld a, d                                       ; $7a9d: $7a
    ld a, [de]                                    ; $7a9e: $1a
    ld c, $01                                     ; $7a9f: $0e $01
    cp $80                                        ; $7aa1: $fe $80
    nop                                           ; $7aa3: $00

jr_0bf_7aa4:
    ld a, a                                       ; $7aa4: $7f
    ld b, d                                       ; $7aa5: $42
    cp l                                          ; $7aa6: $bd
    jr nz, jr_0bf_7a88                            ; $7aa7: $20 $df

    inc bc                                        ; $7aa9: $03
    db $fc                                        ; $7aaa: $fc
    ld de, $ee00                                  ; $7aab: $11 $00 $ee
    jr z, jr_0bf_7a77                             ; $7aae: $28 $c7

    ld sp, $18c0                                  ; $7ab0: $31 $c0 $18
    ldh [$8e], a                                  ; $7ab3: $e0 $8e
    nop                                           ; $7ab5: $00
    ld [hl], b                                    ; $7ab6: $70
    ld b, a                                       ; $7ab7: $47
    cp b                                          ; $7ab8: $b8
    ld h, c                                       ; $7ab9: $61
    sbc [hl]                                      ; $7aba: $9e
    ret nz                                        ; $7abb: $c0

    rlca                                          ; $7abc: $07
    di                                            ; $7abd: $f3
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    ld a, l                                       ; $7ac0: $7d
    add b                                         ; $7ac1: $80
    ccf                                           ; $7ac2: $3f
    ret nz                                        ; $7ac3: $c0

    add a                                         ; $7ac4: $87
    ld a, b                                       ; $7ac5: $78
    inc hl                                        ; $7ac6: $23
    ld [bc], a                                    ; $7ac7: $02
    inc e                                         ; $7ac8: $1c
    sub b                                         ; $7ac9: $90
    rrca                                          ; $7aca: $0f
    call nz, $f403                                ; $7acb: $c4 $03 $f4
    ld h, b                                       ; $7ace: $60
    rlca                                          ; $7acf: $07
    jr nc, jr_0bf_7ad3                            ; $7ad0: $30 $01

    rrca                                          ; $7ad2: $0f

jr_0bf_7ad3:
    jp $fd00                                      ; $7ad3: $c3 $00 $fd


    nop                                           ; $7ad6: $00
    sbc $20                                       ; $7ad7: $de $20
    inc d                                         ; $7ad9: $14
    nop                                           ; $7ada: $00
    ld b, b                                       ; $7adb: $40
    call c, Call_000_0ff0                         ; $7adc: $dc $f0 $0f
    ld bc, $a8ff                                  ; $7adf: $01 $ff $a8
    ld d, a                                       ; $7ae2: $57
    dec c                                         ; $7ae3: $0d
    nop                                           ; $7ae4: $00
    inc c                                         ; $7ae5: $0c
    and b                                         ; $7ae6: $a0
    nop                                           ; $7ae7: $00
    push de                                       ; $7ae8: $d5
    nop                                           ; $7ae9: $00
    daa                                           ; $7aea: $27
    inc b                                         ; $7aeb: $04
    rst $38                                       ; $7aec: $ff
    rla                                           ; $7aed: $17
    rlca                                          ; $7aee: $07
    rst $38                                       ; $7aef: $ff
    nop                                           ; $7af0: $00
    ld sp, hl                                     ; $7af1: $f9
    rlca                                          ; $7af2: $07
    nop                                           ; $7af3: $00
    inc bc                                        ; $7af4: $03
    db $10                                        ; $7af5: $10
    inc bc                                        ; $7af6: $03
    xor h                                         ; $7af7: $ac
    inc bc                                        ; $7af8: $03
    nop                                           ; $7af9: $00
    ld l, b                                       ; $7afa: $68
    cp [hl]                                       ; $7afb: $be
    adc d                                         ; $7afc: $8a
    cp h                                          ; $7afd: $bc
    sub $b8                                       ; $7afe: $d6 $b8
    ld de, $00bc                                  ; $7b00: $11 $bc $00
    call nc, $d3b9                                ; $7b03: $d4 $b9 $d3
    cp h                                          ; $7b06: $bc
    inc d                                         ; $7b07: $14
    cp c                                          ; $7b08: $b9
    sub a                                         ; $7b09: $97
    cp c                                          ; $7b0a: $b9
    ld h, $a5                                     ; $7b0b: $26 $a5
    adc $d0                                       ; $7b0d: $ce $d0
    inc bc                                        ; $7b0f: $03
    adc $5c                                       ; $7b10: $ce $5c
    call z, $d003                                 ; $7b12: $cc $03 $d0
    dec bc                                        ; $7b15: $0b
    ret c                                         ; $7b16: $d8

    ld a, [$2110]                                 ; $7b17: $fa $10 $21
    ld [bc], a                                    ; $7b1a: $02
    ld a, [de]                                    ; $7b1b: $1a
    ld [bc], a                                    ; $7b1c: $02
    ld [$1d6c], sp                                ; $7b1d: $08 $6c $1d
    inc b                                         ; $7b20: $04
    jr z, jr_0bf_7aa4                             ; $7b21: $28 $81

    ld d, b                                       ; $7b23: $50
    inc b                                         ; $7b24: $04
    sub e                                         ; $7b25: $93
    ld [$c70f], sp                                ; $7b26: $08 $0f $c7
    ccf                                           ; $7b29: $3f
    rrca                                          ; $7b2a: $0f
    ld c, b                                       ; $7b2b: $48
    scf                                           ; $7b2c: $37
    cp l                                          ; $7b2d: $bd
    cp $78                                        ; $7b2e: $fe $78
    nop                                           ; $7b30: $00
    cp $f9                                        ; $7b31: $fe $f9
    db $fc                                        ; $7b33: $fc
    or $f8                                        ; $7b34: $f6 $f8
    push hl                                       ; $7b36: $e5
    ld hl, sp-$15                                 ; $7b37: $f8 $eb
    nop                                           ; $7b39: $00
    ldh a, [$d7]                                  ; $7b3a: $f0 $d7
    ldh [$ae], a                                  ; $7b3c: $e0 $ae
    pop bc                                        ; $7b3e: $c1
    ld h, a                                       ; $7b3f: $67
    jr @-$3b                                      ; $7b40: $18 $c3

    nop                                           ; $7b42: $00
    inc a                                         ; $7b43: $3c
    add $38                                       ; $7b44: $c6 $38
    and $18                                       ; $7b46: $e6 $18
    jp nz, $8c3c                                  ; $7b48: $c2 $3c $8c

    nop                                           ; $7b4b: $00
    ld [hl], b                                    ; $7b4c: $70
    ld [$53f0], sp                                ; $7b4d: $08 $f0 $53
    and b                                         ; $7b50: $a0
    sbc a                                         ; $7b51: $9f
    nop                                           ; $7b52: $00
    ld a, [hl-]                                   ; $7b53: $3a
    nop                                           ; $7b54: $00
    dec b                                         ; $7b55: $05
    ld d, d                                       ; $7b56: $52
    add hl, bc                                    ; $7b57: $09
    cp a                                          ; $7b58: $bf
    nop                                           ; $7b59: $00
    ld l, [hl]                                    ; $7b5a: $6e
    ld de, $00cc                                  ; $7b5b: $11 $cc $00
    inc sp                                        ; $7b5e: $33
    jp c, $d525                                   ; $7b5f: $da $25 $d5

    ld a, [hl+]                                   ; $7b62: $2a
    ld d, h                                       ; $7b63: $54
    xor e                                         ; $7b64: $ab
    add b                                         ; $7b65: $80
    ld [bc], a                                    ; $7b66: $02
    ld a, a                                       ; $7b67: $7f
    add hl, de                                    ; $7b68: $19
    rst $20                                       ; $7b69: $e7
    ld bc, $83ff                                  ; $7b6a: $01 $ff $83
    sbc h                                         ; $7b6d: $9c
    inc de                                        ; $7b6e: $13
    rra                                           ; $7b6f: $1f
    add d                                         ; $7b70: $82
    ld a, [bc]                                    ; $7b71: $0a
    ld b, $c0                                     ; $7b72: $06 $c0
    rst $38                                       ; $7b74: $ff
    pop af                                        ; $7b75: $f1
    cp $f8                                        ; $7b76: $fe $f8
    ld b, b                                       ; $7b78: $40
    inc bc                                        ; $7b79: $03
    ld d, e                                       ; $7b7a: $53
    add b                                         ; $7b7b: $80
    jr nz, jr_0bf_7b92                            ; $7b7c: $20 $14

    jr c, @-$37                                   ; $7b7e: $38 $c7

    rra                                           ; $7b80: $1f
    ldh [$87], a                                  ; $7b81: $e0 $87
    ld a, b                                       ; $7b83: $78
    ld b, d                                       ; $7b84: $42
    ld [bc], a                                    ; $7b85: $02
    cp l                                          ; $7b86: $bd
    ld h, c                                       ; $7b87: $61
    sbc [hl]                                      ; $7b88: $9e
    sbc b                                         ; $7b89: $98
    rst $20                                       ; $7b8a: $e7
    call nz, $07d4                                ; $7b8b: $c4 $d4 $07
    ld [hl], d                                    ; $7b8e: $72
    nop                                           ; $7b8f: $00
    add c                                         ; $7b90: $81
    rra                                           ; $7b91: $1f

jr_0bf_7b92:
    ldh [$8d], a                                  ; $7b92: $e0 $8d
    ld [hl], b                                    ; $7b94: $70
    ldh [$1f], a                                  ; $7b95: $e0 $1f
    ld b, b                                       ; $7b97: $40
    nop                                           ; $7b98: $00
    cp a                                          ; $7b99: $bf
    ld de, $01ee                                  ; $7b9a: $11 $ee $01
    cp $58                                        ; $7b9d: $fe $58
    and a                                         ; $7b9f: $a7
    ld bc, $fe00                                  ; $7ba0: $01 $00 $fe
    cp h                                          ; $7ba3: $bc
    ld b, e                                       ; $7ba4: $43
    call c, $0c20                                 ; $7ba5: $dc $20 $0c
    ldh a, [$03]                                  ; $7ba8: $f0 $03
    nop                                           ; $7baa: $00
    db $fc                                        ; $7bab: $fc
    pop hl                                        ; $7bac: $e1
    ld e, $74                                     ; $7bad: $1e $74
    adc e                                         ; $7baf: $8b
    ld a, c                                       ; $7bb0: $79
    add [hl]                                      ; $7bb1: $86
    or l                                          ; $7bb2: $b5
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    cpl                                           ; $7bb5: $2f
    ret nc                                        ; $7bb6: $d0

    add c                                         ; $7bb7: $81
    ld a, [hl]                                    ; $7bb8: $7e
    ld a, $01                                     ; $7bb9: $3e $01
    ld e, a                                       ; $7bbb: $5f
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    xor b                                         ; $7bbe: $a8
    inc bc                                        ; $7bbf: $03
    ld hl, $47df                                  ; $7bc0: $21 $df $47
    cp a                                          ; $7bc3: $bf
    ld [hl], c                                    ; $7bc4: $71
    inc c                                         ; $7bc5: $0c
    rrca                                          ; $7bc6: $0f
    db $e3                                        ; $7bc7: $e3
    rra                                           ; $7bc8: $1f
    rlca                                          ; $7bc9: $07
    cp h                                          ; $7bca: $bc
    db $10                                        ; $7bcb: $10
    jp hl                                         ; $7bcc: $e9


    rra                                           ; $7bcd: $1f
    ld d, d                                       ; $7bce: $52
    cp c                                          ; $7bcf: $b9
    inc b                                         ; $7bd0: $04
    db $dd                                        ; $7bd1: $dd
    cp e                                          ; $7bd2: $bb
    sub d                                         ; $7bd3: $92
    cp c                                          ; $7bd4: $b9
    sbc l                                         ; $7bd5: $9d
    call z, Call_0bf_5903                         ; $7bd6: $cc $03 $59
    cp e                                          ; $7bd9: $bb
    ld bc, $b956                                  ; $7bda: $01 $56 $b9
    dec c                                         ; $7bdd: $0d
    cp c                                          ; $7bde: $b9
    xor d                                         ; $7bdf: $aa
    sbc $f9                                       ; $7be0: $de $f9
    ret nz                                        ; $7be2: $c0

    inc bc                                        ; $7be3: $03
    nop                                           ; $7be4: $00
    or e                                          ; $7be5: $b3
    cp $65                                        ; $7be6: $fe $65
    ld a, [$fee0]                                 ; $7be8: $fa $e0 $fe
    ret z                                         ; $7beb: $c8

    or $2a                                        ; $7bec: $f6 $2a
    add l                                         ; $7bee: $85
    ld a, [$2f0f]                                 ; $7bef: $fa $0f $2f
    ld a, h                                       ; $7bf2: $7c
    ld b, b                                       ; $7bf3: $40
    ld d, $af                                     ; $7bf4: $16 $af
    ld b, b                                       ; $7bf6: $40
    ld d, $c4                                     ; $7bf7: $16 $c4
    ld [bc], a                                    ; $7bf9: $02
    ccf                                           ; $7bfa: $3f
    jr z, @+$01                                   ; $7bfb: $28 $ff

    ld d, b                                       ; $7bfd: $50
    rst $38                                       ; $7bfe: $ff
    or b                                          ; $7bff: $b0
    and h                                         ; $7c00: $a4
    inc de                                        ; $7c01: $13
    sbc a                                         ; $7c02: $9f
    nop                                           ; $7c03: $00
    rst $38                                       ; $7c04: $ff
    jp Jump_0bf_4c3f                              ; $7c05: $c3 $3f $4c


    inc sp                                        ; $7c08: $33
    add c                                         ; $7c09: $81
    ld h, b                                       ; $7c0a: $60
    xor [hl]                                      ; $7c0b: $ae
    inc d                                         ; $7c0c: $14
    ld b, b                                       ; $7c0d: $40
    inc [hl]                                      ; $7c0e: $34
    res 3, [hl]                                   ; $7c0f: $cb $9e
    inc bc                                        ; $7c11: $03
    cp $38                                        ; $7c12: $fe $38
    rra                                           ; $7c14: $1f
    ld a, c                                       ; $7c15: $79
    cp $00                                        ; $7c16: $fe $00
    add d                                         ; $7c18: $82
    ld a, l                                       ; $7c19: $7d
    dec d                                         ; $7c1a: $15
    ld [c], a                                     ; $7c1b: $e2
    ld b, b                                       ; $7c1c: $40
    ccf                                           ; $7c1d: $3f
    add hl, bc                                    ; $7c1e: $09
    ld [hl], b                                    ; $7c1f: $70
    nop                                           ; $7c20: $00
    ld c, c                                       ; $7c21: $49
    add [hl]                                      ; $7c22: $86
    sbc a                                         ; $7c23: $9f
    nop                                           ; $7c24: $00
    inc [hl]                                      ; $7c25: $34
    inc bc                                        ; $7c26: $03
    and b                                         ; $7c27: $a0
    ld c, a                                       ; $7c28: $4f
    inc b                                         ; $7c29: $04
    daa                                           ; $7c2a: $27
    sbc a                                         ; $7c2b: $9f
    rra                                           ; $7c2c: $1f
    rst $38                                       ; $7c2d: $ff
    ld e, $02                                     ; $7c2e: $1e $02
    nop                                           ; $7c30: $00
    push de                                       ; $7c31: $d5
    jr nz, jr_0bf_7c34                            ; $7c32: $20 $00

jr_0bf_7c34:
    inc bc                                        ; $7c34: $03
    ldh [$2f], a                                  ; $7c35: $e0 $2f
    ret nz                                        ; $7c37: $c0

    inc e                                         ; $7c38: $1c
    jp $c52a                                      ; $7c39: $c3 $2a $c5


    nop                                           ; $7c3c: $00
    add hl, bc                                    ; $7c3d: $09
    or $44                                        ; $7c3e: $f6 $44
    cp e                                          ; $7c40: $bb
    inc h                                         ; $7c41: $24
    dec de                                        ; $7c42: $1b
    adc d                                         ; $7c43: $8a
    ld [hl], l                                    ; $7c44: $75
    nop                                           ; $7c45: $00
    sub b                                         ; $7c46: $90
    ld l, a                                       ; $7c47: $6f
    add hl, bc                                    ; $7c48: $09
    or $14                                        ; $7c49: $f6 $14
    db $eb                                        ; $7c4b: $eb
    ld c, c                                       ; $7c4c: $49
    or a                                          ; $7c4d: $b7
    ld bc, $df23                                  ; $7c4e: $01 $23 $df
    ld d, e                                       ; $7c51: $53
    xor a                                         ; $7c52: $af
    xor e                                         ; $7c53: $ab
    ld d, a                                       ; $7c54: $57
    ccf                                           ; $7c55: $3f
    ld a, [de]                                    ; $7c56: $1a
    dec b                                         ; $7c57: $05
    ldh a, [rNR32]                                ; $7c58: $f0 $1c
    dec c                                         ; $7c5a: $0d
    or h                                          ; $7c5b: $b4
    ld e, $7f                                     ; $7c5c: $1e $7f
    jr @-$74                                      ; $7c5e: $18 $8a

    rlca                                          ; $7c60: $07
    rst $38                                       ; $7c61: $ff
    xor b                                         ; $7c62: $a8
    rst $38                                       ; $7c63: $ff
    inc de                                        ; $7c64: $13
    add b                                         ; $7c65: $80
    jr nz, jr_0bf_7c7d                            ; $7c66: $20 $15

    add sp, -$01                                  ; $7c68: $e8 $ff
    jp $89fc                                      ; $7c6a: $c3 $fc $89


    ldh a, [rNR44]                                ; $7c6d: $f0 $23
    ld b, b                                       ; $7c6f: $40
    ret nz                                        ; $7c70: $c0

    ld [$f02e], a                                 ; $7c71: $ea $2e $f0
    rst $18                                       ; $7c74: $df
    ld hl, sp-$71                                 ; $7c75: $f8 $8f
    sbc $03                                       ; $7c77: $de $03
    ld bc, $00af                                  ; $7c79: $01 $af $00
    sbc e                                         ; $7c7c: $9b

jr_0bf_7c7d:
    nop                                           ; $7c7d: $00
    ret                                           ; $7c7e: $c9


    nop                                           ; $7c7f: $00
    sub c                                         ; $7c80: $91
    cp $06                                        ; $7c81: $fe $06
    dec bc                                        ; $7c83: $0b
    ld c, $f1                                     ; $7c84: $0e $f1
    ld b, $f9                                     ; $7c86: $06 $f9
    ld b, b                                       ; $7c88: $40
    rrca                                          ; $7c89: $0f
    ret nz                                        ; $7c8a: $c0

    ld b, d                                       ; $7c8b: $42
    inc b                                         ; $7c8c: $04
    rrc a                                         ; $7c8d: $cb $0f
    nop                                           ; $7c8f: $00
    inc c                                         ; $7c90: $0c
    di                                            ; $7c91: $f3
    add b                                         ; $7c92: $80
    ld a, a                                       ; $7c93: $7f
    db $d3                                        ; $7c94: $d3
    inc l                                         ; $7c95: $2c
    nop                                           ; $7c96: $00
    rst $38                                       ; $7c97: $ff
    inc e                                         ; $7c98: $1c
    inc de                                        ; $7c99: $13
    rst $28                                       ; $7c9a: $ef
    rrca                                          ; $7c9b: $0f
    jp c, Jump_0bf_5417                           ; $7c9c: $da $17 $54

    add hl, bc                                    ; $7c9f: $09
    ld [c], a                                     ; $7ca0: $e2
    ld d, l                                       ; $7ca1: $55
    push hl                                       ; $7ca2: $e5
    db $eb                                        ; $7ca3: $eb
    inc b                                         ; $7ca4: $04
    add b                                         ; $7ca5: $80
    push de                                       ; $7ca6: $d5
    nop                                           ; $7ca7: $00
    pop hl                                        ; $7ca8: $e1
    add b                                         ; $7ca9: $80
    jp nz, $aa2b                                  ; $7caa: $c2 $2b $aa

    cp l                                          ; $7cad: $bd
    nop                                           ; $7cae: $00
    rst $08                                       ; $7caf: $cf
    cp h                                          ; $7cb0: $bc
    push bc                                       ; $7cb1: $c5
    cp [hl]                                       ; $7cb2: $be
    and $bf                                       ; $7cb3: $e6 $bf
    ld d, e                                       ; $7cb5: $53
    xor a                                         ; $7cb6: $af
    ld b, b                                       ; $7cb7: $40
    add e                                         ; $7cb8: $83
    ld d, $03                                     ; $7cb9: $16 $03
    ret nc                                        ; $7cbb: $d0

    xor a                                         ; $7cbc: $af
    and b                                         ; $7cbd: $a0
    sbc $83                                       ; $7cbe: $de $83
    cp $00                                        ; $7cc0: $fe $00
    ld c, b                                       ; $7cc2: $48
    cp $c9                                        ; $7cc3: $fe $c9
    halt                                          ; $7cc5: $76
    and [hl]                                      ; $7cc6: $a6
    ld a, d                                       ; $7cc7: $7a
    ld d, c                                       ; $7cc8: $51
    ld a, $06                                     ; $7cc9: $3e $06
    ld d, e                                       ; $7ccb: $53
    ld a, $69                                     ; $7ccc: $3e $69
    ld e, $df                                     ; $7cce: $1e $df
    cp d                                          ; $7cd0: $ba
    dec d                                         ; $7cd1: $15
    ld b, b                                       ; $7cd2: $40
    add hl, sp                                    ; $7cd3: $39
    ldh a, [$08]                                  ; $7cd4: $f0 $08
    rst $38                                       ; $7cd6: $ff
    di                                            ; $7cd7: $f3
    rst $38                                       ; $7cd8: $ff
    rst $30                                       ; $7cd9: $f7
    ld [hl-], a                                   ; $7cda: $32
    ld b, [hl]                                    ; $7cdb: $46
    inc bc                                        ; $7cdc: $03
    db $fc                                        ; $7cdd: $fc

jr_0bf_7cde:
    ld [de], a                                    ; $7cde: $12
    jr nc, jr_0bf_7cde                            ; $7cdf: $30 $fd

    jr nc, jr_0bf_7cff                            ; $7ce1: $30 $1c

    ld hl, $0cc2                                  ; $7ce3: $21 $c2 $0c
    inc d                                         ; $7ce6: $14
    ldh [$3d], a                                  ; $7ce7: $e0 $3d
    jp nz, $0309                                  ; $7ce9: $c2 $09 $03

    db $fc                                        ; $7cec: $fc
    inc c                                         ; $7ced: $0c
    di                                            ; $7cee: $f3
    ldh a, [rTMA]                                 ; $7cef: $f0 $06
    rst $38                                       ; $7cf1: $ff
    jp $0002                                      ; $7cf2: $c3 $02 $00


    nop                                           ; $7cf5: $00
    ld h, c                                       ; $7cf6: $61
    ld e, $a4                                     ; $7cf7: $1e $a4
    nop                                           ; $7cf9: $00
    ld a, [hl-]                                   ; $7cfa: $3a
    ret nz                                        ; $7cfb: $c0

    rst $10                                       ; $7cfc: $d7
    jr z, jr_0bf_7d03                             ; $7cfd: $28 $04

jr_0bf_7cff:
    inc bc                                        ; $7cff: $03
    db $fc                                        ; $7d00: $fc
    ret nz                                        ; $7d01: $c0

    rst $38                                       ; $7d02: $ff

jr_0bf_7d03:
    ld sp, hl                                     ; $7d03: $f9
    ret c                                         ; $7d04: $d8

    ld bc, $3f00                                  ; $7d05: $01 $00 $3f
    inc b                                         ; $7d08: $04
    ld h, b                                       ; $7d09: $60
    rra                                           ; $7d0a: $1f
    db $e3                                        ; $7d0b: $e3
    rra                                           ; $7d0c: $1f
    ld h, e                                       ; $7d0d: $63
    inc b                                         ; $7d0e: $04
    nop                                           ; $7d0f: $00
    sub e                                         ; $7d10: $93
    rrca                                          ; $7d11: $0f
    ld bc, $8f42                                  ; $7d12: $01 $42 $8f
    ld h, b                                       ; $7d15: $60
    adc a                                         ; $7d16: $8f
    ld b, e                                       ; $7d17: $43
    cp a                                          ; $7d18: $bf
    inc bc                                        ; $7d19: $03
    adc [hl]                                      ; $7d1a: $8e
    ld [bc], a                                    ; $7d1b: $02
    ld l, a                                       ; $7d1c: $6f
    add d                                         ; $7d1d: $82
    ld d, h                                       ; $7d1e: $54
    dec b                                         ; $7d1f: $05
    ldh a, [rNR24]                                ; $7d20: $f0 $19
    ret nc                                        ; $7d22: $d0

    or b                                          ; $7d23: $b0
    dec hl                                        ; $7d24: $2b
    ret c                                         ; $7d25: $d8

    rlca                                          ; $7d26: $07
    cp b                                          ; $7d27: $b8
    ld c, [hl]                                    ; $7d28: $4e
    add sp, $2f                                   ; $7d29: $e8 $2f
    ldh [$ee], a                                  ; $7d2b: $e0 $ee
    rrca                                          ; $7d2d: $0f
    ret nc                                        ; $7d2e: $d0

    ld e, $ee                                     ; $7d2f: $1e $ee
    rrca                                          ; $7d31: $0f
    jp $ff00                                      ; $7d32: $c3 $00 $ff


    push bc                                       ; $7d35: $c5
    rst $20                                       ; $7d36: $e7
    rra                                           ; $7d37: $1f
    add c                                         ; $7d38: $81
    jp Jump_0bf_5881                              ; $7d39: $c3 $81 $58


    dec b                                         ; $7d3c: $05
    inc b                                         ; $7d3d: $04
    ld [$06e6], sp                                ; $7d3e: $08 $e6 $06
    call $902e                                    ; $7d41: $cd $2e $90
    dec bc                                        ; $7d44: $0b
    ld b, c                                       ; $7d45: $41
    jp nz, Jump_000_15e0                          ; $7d46: $c2 $e0 $15

    sub d                                         ; $7d49: $92
    rrca                                          ; $7d4a: $0f
    push bc                                       ; $7d4b: $c5
    ccf                                           ; $7d4c: $3f
    cpl                                           ; $7d4d: $2f
    and b                                         ; $7d4e: $a0
    ld [bc], a                                    ; $7d4f: $02
    ld b, b                                       ; $7d50: $40
    ccf                                           ; $7d51: $3f
    ldh a, [rNR21]                                ; $7d52: $f0 $16
    add d                                         ; $7d54: $82
    cp l                                          ; $7d55: $bd
    ld h, b                                       ; $7d56: $60
    cp a                                          ; $7d57: $bf
    add hl, bc                                    ; $7d58: $09
    cp a                                          ; $7d59: $bf
    nop                                           ; $7d5a: $00
    ld c, c                                       ; $7d5b: $49
    or a                                          ; $7d5c: $b7
    ld [hl-], a                                   ; $7d5d: $32
    xor a                                         ; $7d5e: $af
    push bc                                       ; $7d5f: $c5
    cp [hl]                                       ; $7d60: $be
    push hl                                       ; $7d61: $e5
    cp [hl]                                       ; $7d62: $be
    jr nc, @-$33                                  ; $7d63: $30 $cb

    cp h                                          ; $7d65: $bc
    ldh [rTAC], a                                 ; $7d66: $e0 $07
    nop                                           ; $7d68: $00
    inc d                                         ; $7d69: $14
    sub [hl]                                      ; $7d6a: $96
    ld c, [hl]                                    ; $7d6b: $4e
    ld h, h                                       ; $7d6c: $64
    sbc [hl]                                      ; $7d6d: $9e
    ld bc, $ce95                                  ; $7d6e: $01 $95 $ce
    ld [hl], a                                    ; $7d71: $77
    adc $c8                                       ; $7d72: $ce $c8
    cp [hl]                                       ; $7d74: $be
    ld a, [bc]                                    ; $7d75: $0a
    db $10                                        ; $7d76: $10
    inc de                                        ; $7d77: $13
    ld de, $b9b4                                  ; $7d78: $11 $b4 $b9
    inc de                                        ; $7d7b: $13
    inc d                                         ; $7d7c: $14
    inc bc                                        ; $7d7d: $03
    ld [hl], a                                    ; $7d7e: $77
    cp c                                          ; $7d7f: $b9
    and h                                         ; $7d80: $a4
    db $10                                        ; $7d81: $10
    inc bc                                        ; $7d82: $03
    inc h                                         ; $7d83: $24
    and l                                         ; $7d84: $a5
    adc $e0                                       ; $7d85: $ce $e0
    ld b, $ce                                     ; $7d87: $06 $ce
    call z, Call_000_0004                         ; $7d89: $cc $04 $00
    ld hl, sp-$32                                 ; $7d8c: $f8 $ce
    ld c, b                                       ; $7d8e: $48
    sub d                                         ; $7d8f: $92
    ld b, b                                       ; $7d90: $40
    ld [bc], a                                    ; $7d91: $02
    jp nc, Jump_000_10b9                          ; $7d92: $d2 $b9 $10

    ld b, $b9                                     ; $7d95: $06 $b9
    add hl, de                                    ; $7d97: $19
    cp e                                          ; $7d98: $bb
    nop                                           ; $7d99: $00
    sub [hl]                                      ; $7d9a: $96
    cp c                                          ; $7d9b: $b9
    adc a                                         ; $7d9c: $8f
    cp c                                          ; $7d9d: $b9
    add hl, hl                                    ; $7d9e: $29
    rst $30                                       ; $7d9f: $f7
    scf                                           ; $7da0: $37
    db $e3                                        ; $7da1: $e3
    nop                                           ; $7da2: $00
    add hl, hl                                    ; $7da3: $29
    rst $20                                       ; $7da4: $e7
    ld d, a                                       ; $7da5: $57
    db $e3                                        ; $7da6: $e3
    ld c, c                                       ; $7da7: $49
    rst $20                                       ; $7da8: $e7
    db $d3                                        ; $7da9: $d3
    ld h, l                                       ; $7daa: $65
    nop                                           ; $7dab: $00
    ld c, l                                       ; $7dac: $4d
    di                                            ; $7dad: $f3
    ld e, a                                       ; $7dae: $5f
    rst $28                                       ; $7daf: $ef
    xor c                                         ; $7db0: $a9
    sbc $fa                                       ; $7db1: $de $fa
    sbc a                                         ; $7db3: $9f
    nop                                           ; $7db4: $00
    ld d, b                                       ; $7db5: $50
    cp a                                          ; $7db6: $bf
    or [hl]                                       ; $7db7: $b6
    ei                                            ; $7db8: $fb
    ld h, b                                       ; $7db9: $60
    rst $38                                       ; $7dba: $ff
    ld [c], a                                     ; $7dbb: $e2
    rst $38                                       ; $7dbc: $ff
    ld b, c                                       ; $7dbd: $41
    ret z                                         ; $7dbe: $c8

    jp nc, $ad05                                  ; $7dbf: $d2 $05 $ad

    rst $38                                       ; $7dc2: $ff
    ld a, b                                       ; $7dc3: $78
    add b                                         ; $7dc4: $80
    inc h                                         ; $7dc5: $24
    ret nc                                        ; $7dc6: $d0

    inc bc                                        ; $7dc7: $03
    nop                                           ; $7dc8: $00
    ld d, c                                       ; $7dc9: $51
    rst $28                                       ; $7dca: $ef
    ld b, $ff                                     ; $7dcb: $06 $ff
    ld c, c                                       ; $7dcd: $49
    cp [hl]                                       ; $7dce: $be
    scf                                           ; $7dcf: $37

jr_0bf_7dd0:
    ld hl, sp+$04                                 ; $7dd0: $f8 $04
    ld e, l                                       ; $7dd2: $5d
    rst $38                                       ; $7dd3: $ff
    ld b, b                                       ; $7dd4: $40
    nop                                           ; $7dd5: $00
    add b                                         ; $7dd6: $80
    ld c, $07                                     ; $7dd7: $0e $07
    ret nz                                        ; $7dd9: $c0

    rst $38                                       ; $7dda: $ff
    nop                                           ; $7ddb: $00
    dec hl                                        ; $7ddc: $2b
    call nc, $8065                                ; $7ddd: $d4 $65 $80
    dec d                                         ; $7de0: $15
    dec bc                                        ; $7de1: $0b
    xor l                                         ; $7de2: $ad
    rst $38                                       ; $7de3: $ff
    ld b, b                                       ; $7de4: $40
    rst $00                                       ; $7de5: $c7
    inc d                                         ; $7de6: $14
    dec b                                         ; $7de7: $05
    cp $ff                                        ; $7de8: $fe $ff
    ld d, l                                       ; $7dea: $55
    rst $38                                       ; $7deb: $ff
    ld e, e                                       ; $7dec: $5b
    nop                                           ; $7ded: $00
    nop                                           ; $7dee: $00
    xor d                                         ; $7def: $aa
    ld d, h                                       ; $7df0: $54
    ld d, l                                       ; $7df1: $55
    rst $38                                       ; $7df2: $ff
    ld c, l                                       ; $7df3: $4d
    rst $38                                       ; $7df4: $ff
    ld h, e                                       ; $7df5: $63
    nop                                           ; $7df6: $00
    ld b, b                                       ; $7df7: $40
    sub b                                         ; $7df8: $90
    and $07                                       ; $7df9: $e6 $07
    jp nz, Jump_0bf_70fd                          ; $7dfb: $c2 $fd $70

    rst $38                                       ; $7dfe: $ff
    call c, Call_000_003f                         ; $7dff: $dc $3f $00
    ld l, [hl]                                    ; $7e02: $6e
    sbc a                                         ; $7e03: $9f
    db $dd                                        ; $7e04: $dd
    rst $38                                       ; $7e05: $ff
    adc h                                         ; $7e06: $8c
    nop                                           ; $7e07: $00
    ld c, d                                       ; $7e08: $4a
    rst $38                                       ; $7e09: $ff
    db $10                                        ; $7e0a: $10
    ld [$31f7], sp                                ; $7e0b: $08 $f7 $31
    ld b, b                                       ; $7e0e: $40
    nop                                           ; $7e0f: $00
    adc c                                         ; $7e10: $89
    ld a, [hl]                                    ; $7e11: $7e
    scf                                           ; $7e12: $37
    ld hl, sp+$04                                 ; $7e13: $f8 $04
    sub $ff                                       ; $7e15: $d6 $ff
    inc b                                         ; $7e17: $04
    nop                                           ; $7e18: $00
    add hl, bc                                    ; $7e19: $09
    ld b, b                                       ; $7e1a: $40
    ld b, b                                       ; $7e1b: $40
    or $ff                                        ; $7e1c: $f6 $ff
    inc d                                         ; $7e1e: $14
    ld a, [de]                                    ; $7e1f: $1a
    nop                                           ; $7e20: $00
    db $10                                        ; $7e21: $10
    ld b, b                                       ; $7e22: $40
    jr nz, jr_0bf_7dd0                            ; $7e23: $20 $ab

    ld b, b                                       ; $7e25: $40
    nop                                           ; $7e26: $00
    xor l                                         ; $7e27: $ad

Jump_0bf_7e28:
    rst $38                                       ; $7e28: $ff
    ld [bc], a                                    ; $7e29: $02
    ld hl, sp+$00                                 ; $7e2a: $f8 $00
    and h                                         ; $7e2c: $a4
    ei                                            ; $7e2d: $fb
    add d                                         ; $7e2e: $82
    ld a, l                                       ; $7e2f: $7d
    ld [hl], b                                    ; $7e30: $70
    jr z, @-$25                                   ; $7e31: $28 $d9

    nop                                           ; $7e33: $00
    rst $38                                       ; $7e34: $ff
    add b                                         ; $7e35: $80
    nop                                           ; $7e36: $00
    ld d, h                                       ; $7e37: $54
    rst $38                                       ; $7e38: $ff
    db $10                                        ; $7e39: $10
    rst $28                                       ; $7e3a: $ef
    jp $fe45                                      ; $7e3b: $c3 $45 $fe


    ld d, b                                       ; $7e3e: $50
    jr @-$1b                                      ; $7e3f: $18 $e3

    rst $38                                       ; $7e41: $ff
    scf                                           ; $7e42: $37
    jr nz, jr_0bf_7e55                            ; $7e43: $20 $10

    ld d, b                                       ; $7e45: $50
    ld e, d                                       ; $7e46: $5a
    ld b, $00                                     ; $7e47: $06 $00
    ld b, c                                       ; $7e49: $41
    cp [hl]                                       ; $7e4a: $be
    ccf                                           ; $7e4b: $3f
    rst $38                                       ; $7e4c: $ff
    sub l                                         ; $7e4d: $95
    ld a, e                                       ; $7e4e: $7b
    ld e, a                                       ; $7e4f: $5f
    ld sp, hl                                     ; $7e50: $f9
    ld bc, $fd0a                                  ; $7e51: $01 $0a $fd
    ld l, l                                       ; $7e54: $6d

jr_0bf_7e55:
    rst $18                                       ; $7e55: $df
    ld b, $ff                                     ; $7e56: $06 $ff
    ld b, a                                       ; $7e58: $47
    ld [hl], d                                    ; $7e59: $72
    ld [bc], a                                    ; $7e5a: $02
    nop                                           ; $7e5b: $00
    rst $18                                       ; $7e5c: $df
    rst $38                                       ; $7e5d: $ff
    sub h                                         ; $7e5e: $94
    rst $28                                       ; $7e5f: $ef
    db $ec                                        ; $7e60: $ec
    rst $00                                       ; $7e61: $c7
    sub h                                         ; $7e62: $94
    rst $20                                       ; $7e63: $e7
    nop                                           ; $7e64: $00
    ld [$92c7], a                                 ; $7e65: $ea $c7 $92
    rst $20                                       ; $7e68: $e7
    res 4, [hl]                                   ; $7e69: $cb $a6
    or d                                          ; $7e6b: $b2
    rst $08                                       ; $7e6c: $cf
    nop                                           ; $7e6d: $00
    ld a, [c]                                     ; $7e6e: $f2
    rst $38                                       ; $7e6f: $ff
    ld a, c                                       ; $7e70: $79
    cp $de                                        ; $7e71: $fe $de
    ldh [$34], a                                  ; $7e73: $e0 $34
    ret nz                                        ; $7e75: $c0

jr_0bf_7e76:
    ld bc, $806a                                  ; $7e76: $01 $6a $80
    scf                                           ; $7e79: $37
    ret nz                                        ; $7e7a: $c0

    dec d                                         ; $7e7b: $15
    ld [$4ea0], a                                 ; $7e7c: $ea $a0 $4e
    dec b                                         ; $7e7f: $05
    nop                                           ; $7e80: $00
    rst $00                                       ; $7e81: $c7
    ccf                                           ; $7e82: $3f
    xor c                                         ; $7e83: $a9
    rla                                           ; $7e84: $17
    dec d                                         ; $7e85: $15
    dec bc                                        ; $7e86: $0b
    cp d                                          ; $7e87: $ba
    dec b                                         ; $7e88: $05
    nop                                           ; $7e89: $00
    add sp, $17                                   ; $7e8a: $e8 $17
    ld b, d                                       ; $7e8c: $42
    cp a                                          ; $7e8d: $bf
    dec d                                         ; $7e8e: $15
    rst $38                                       ; $7e8f: $ff
    xor e                                         ; $7e90: $ab
    rst $38                                       ; $7e91: $ff
    nop                                           ; $7e92: $00
    ret c                                         ; $7e93: $d8

    ldh [$a3], a                                  ; $7e94: $e0 $a3
    ret nz                                        ; $7e96: $c0

    or $c1                                        ; $7e97: $f6 $c1
    sub h                                         ; $7e99: $94
    db $eb                                        ; $7e9a: $eb
    inc b                                         ; $7e9b: $04
    ld [c], a                                     ; $7e9c: $e2
    rst $18                                       ; $7e9d: $df
    sub l                                         ; $7e9e: $95
    rst $38                                       ; $7e9f: $ff
    db $eb                                        ; $7ea0: $eb
    jp c, Jump_0bf_6a07                           ; $7ea1: $da $07 $6a

    rla                                           ; $7ea4: $17
    ld bc, $3fc5                                  ; $7ea5: $01 $c5 $3f
    xor e                                         ; $7ea8: $ab
    ld a, a                                       ; $7ea9: $7f
    ld e, h                                       ; $7eaa: $5c
    rst $38                                       ; $7eab: $ff
    cp c                                          ; $7eac: $b9
    ld [hl], b                                    ; $7ead: $70
    nop                                           ; $7eae: $00
    db $10                                        ; $7eaf: $10
    jp nz, Jump_000_09fd                          ; $7eb0: $c2 $fd $09

    ld d, b                                       ; $7eb3: $50
    rlca                                          ; $7eb4: $07
    push af                                       ; $7eb5: $f5
    rst $38                                       ; $7eb6: $ff
    ld a, [hl+]                                   ; $7eb7: $2a
    db $fd                                        ; $7eb8: $fd
    nop                                           ; $7eb9: $00
    dec d                                         ; $7eba: $15
    ld hl, sp+$4a                                 ; $7ebb: $f8 $4a
    cp h                                          ; $7ebd: $bc
    ld h, $df                                     ; $7ebe: $26 $df
    add c                                         ; $7ec0: $81
    rst $38                                       ; $7ec1: $ff
    db $10                                        ; $7ec2: $10
    ld d, h                                       ; $7ec3: $54
    cp e                                          ; $7ec4: $bb
    rst $10                                       ; $7ec5: $d7
    ld a, h                                       ; $7ec6: $7c
    rlca                                          ; $7ec7: $07
    ld d, h                                       ; $7ec8: $54
    ei                                            ; $7ec9: $fb
    ld d, d                                       ; $7eca: $52
    xor l                                         ; $7ecb: $ad
    ld b, $aa                                     ; $7ecc: $06 $aa
    nop                                           ; $7ece: $00
    ld d, l                                       ; $7ecf: $55
    add d                                         ; $7ed0: $82
    ldh [$8a], a                                  ; $7ed1: $e0 $8a
    rlca                                          ; $7ed3: $07
    ld b, b                                       ; $7ed4: $40
    ld [$0656], sp                                ; $7ed5: $08 $56 $06
    add c                                         ; $7ed8: $81
    or h                                          ; $7ed9: $b4
    dec bc                                        ; $7eda: $0b
    and d                                         ; $7edb: $a2
    ld e, a                                       ; $7edc: $5f
    ld c, [hl]                                    ; $7edd: $4e
    ld [$3840], sp                                ; $7ede: $08 $40 $38
    cp b                                          ; $7ee1: $b8
    inc c                                         ; $7ee2: $0c
    rst $38                                       ; $7ee3: $ff
    ld [hl], d                                    ; $7ee4: $72
    rst $38                                       ; $7ee5: $ff
    pop bc                                        ; $7ee6: $c1
    and $07                                       ; $7ee7: $e6 $07
    ld b, b                                       ; $7ee9: $40
    jr z, jr_0bf_7e76                             ; $7eea: $28 $8a

    ld a, h                                       ; $7eec: $7c
    ld [de], a                                    ; $7eed: $12
    ld h, $ff                                     ; $7eee: $26 $ff
    ld de, $072c                                  ; $7ef0: $11 $2c $07
    call c, $30e3                                 ; $7ef3: $dc $e3 $30
    ld [$20b5], sp                                ; $7ef6: $08 $b5 $20
    dec bc                                        ; $7ef9: $0b
    and e                                         ; $7efa: $a3
    jr nc, jr_0bf_7f1d                            ; $7efb: $30 $20

    ld h, e                                       ; $7efd: $63
    db $fc                                        ; $7efe: $fc
    sub l                                         ; $7eff: $95
    add sp, -$58                                  ; $7f00: $e8 $a8
    ld [bc], a                                    ; $7f02: $02
    ret nc                                        ; $7f03: $d0

    ld e, l                                       ; $7f04: $5d
    and b                                         ; $7f05: $a0
    rla                                           ; $7f06: $17
    add sp, $42                                   ; $7f07: $e8 $42
    sub h                                         ; $7f09: $94
    rlca                                          ; $7f0a: $07
    push de                                       ; $7f0b: $d5
    nop                                           ; $7f0c: $00
    rst $38                                       ; $7f0d: $ff
    stop                                          ; $7f0e: $10 $00
    ld [bc], a                                    ; $7f10: $02
    nop                                           ; $7f11: $00
    db $f4                                        ; $7f12: $f4
    xor $ef                                       ; $7f13: $ee $ef
    ldh a, [$f1]                                  ; $7f15: $f0 $f1
    ld a, [c]                                     ; $7f17: $f2
    di                                            ; $7f18: $f3
    db $ed                                        ; $7f19: $ed
    db $ed                                        ; $7f1a: $ed
    db $ed                                        ; $7f1b: $ed
    db $ed                                        ; $7f1c: $ed

jr_0bf_7f1d:
    db $ed                                        ; $7f1d: $ed
    db $ed                                        ; $7f1e: $ed
    db $ed                                        ; $7f1f: $ed
    db $ed                                        ; $7f20: $ed
    db $ed                                        ; $7f21: $ed
    push af                                       ; $7f22: $f5
    or $f7                                        ; $7f23: $f6 $f7
    ld hl, sp-$07                                 ; $7f25: $f8 $f9
    ld a, [$edfb]                                 ; $7f27: $fa $fb $ed
    db $ed                                        ; $7f2a: $ed
    db $ed                                        ; $7f2b: $ed
    db $ed                                        ; $7f2c: $ed
    db $ed                                        ; $7f2d: $ed
    db $ed                                        ; $7f2e: $ed
    db $ed                                        ; $7f2f: $ed
    db $ed                                        ; $7f30: $ed
    db $ed                                        ; $7f31: $ed
    ld [$0808], sp                                ; $7f32: $08 $08 $08
    ld [$0808], sp                                ; $7f35: $08 $08 $08
    ld [$0808], sp                                ; $7f38: $08 $08 $08
    ld [$0808], sp                                ; $7f3b: $08 $08 $08
    ld [$0808], sp                                ; $7f3e: $08 $08 $08
    ld [$0808], sp                                ; $7f41: $08 $08 $08
    ld [$0808], sp                                ; $7f44: $08 $08 $08
    ld [$0808], sp                                ; $7f47: $08 $08 $08
    ld [$0808], sp                                ; $7f4a: $08 $08 $08
    ld [$0808], sp                                ; $7f4d: $08 $08 $08
    ld [$1008], sp                                ; $7f50: $08 $08 $10
    nop                                           ; $7f53: $00
    ld [bc], a                                    ; $7f54: $02
    nop                                           ; $7f55: $00
    db $f4                                        ; $7f56: $f4
    xor $ef                                       ; $7f57: $ee $ef
    ldh a, [$f1]                                  ; $7f59: $f0 $f1
    ld a, [c]                                     ; $7f5b: $f2
    di                                            ; $7f5c: $f3
    db $ed                                        ; $7f5d: $ed
    db $ed                                        ; $7f5e: $ed
    db $ed                                        ; $7f5f: $ed
    db $ed                                        ; $7f60: $ed

Jump_0bf_7f61:
    db $ed                                        ; $7f61: $ed
    db $ed                                        ; $7f62: $ed
    db $ed                                        ; $7f63: $ed
    db $ed                                        ; $7f64: $ed
    db $ed                                        ; $7f65: $ed
    push af                                       ; $7f66: $f5
    or $f7                                        ; $7f67: $f6 $f7
    ld hl, sp-$07                                 ; $7f69: $f8 $f9
    ld a, [$edfb]                                 ; $7f6b: $fa $fb $ed
    db $ed                                        ; $7f6e: $ed
    db $ed                                        ; $7f6f: $ed
    db $ed                                        ; $7f70: $ed
    db $ed                                        ; $7f71: $ed
    db $ed                                        ; $7f72: $ed
    db $ed                                        ; $7f73: $ed
    db $ed                                        ; $7f74: $ed
    db $ed                                        ; $7f75: $ed
    ld [$0808], sp                                ; $7f76: $08 $08 $08
    ld [$0808], sp                                ; $7f79: $08 $08 $08
    ld [$0808], sp                                ; $7f7c: $08 $08 $08
    ld [$0808], sp                                ; $7f7f: $08 $08 $08
    ld [$0808], sp                                ; $7f82: $08 $08 $08
    ld [$0808], sp                                ; $7f85: $08 $08 $08
    ld [$0808], sp                                ; $7f88: $08 $08 $08
    ld [$0808], sp                                ; $7f8b: $08 $08 $08
    ld [$0808], sp                                ; $7f8e: $08 $08 $08
    ld [$0808], sp                                ; $7f91: $08 $08 $08
    ld [$1008], sp                                ; $7f94: $08 $08 $10
    nop                                           ; $7f97: $00
    ld [bc], a                                    ; $7f98: $02
    nop                                           ; $7f99: $00
    db $f4                                        ; $7f9a: $f4
    xor $ef                                       ; $7f9b: $ee $ef
    ldh a, [$f1]                                  ; $7f9d: $f0 $f1
    db $fc                                        ; $7f9f: $fc
    ei                                            ; $7fa0: $fb
    ld a, [$eded]                                 ; $7fa1: $fa $ed $ed
    db $ed                                        ; $7fa4: $ed
    db $ed                                        ; $7fa5: $ed
    db $ed                                        ; $7fa6: $ed
    db $ed                                        ; $7fa7: $ed
    db $ed                                        ; $7fa8: $ed
    db $ed                                        ; $7fa9: $ed
    push af                                       ; $7faa: $f5
    or $f7                                        ; $7fab: $f6 $f7
    ld hl, sp-$07                                 ; $7fad: $f8 $f9
    di                                            ; $7faf: $f3
    ld a, [c]                                     ; $7fb0: $f2
    db $ed                                        ; $7fb1: $ed
    db $ed                                        ; $7fb2: $ed
    db $ed                                        ; $7fb3: $ed
    db $ed                                        ; $7fb4: $ed
    db $ed                                        ; $7fb5: $ed
    db $ed                                        ; $7fb6: $ed
    db $ed                                        ; $7fb7: $ed
    db $ed                                        ; $7fb8: $ed
    db $ed                                        ; $7fb9: $ed
    ld [$0808], sp                                ; $7fba: $08 $08 $08
    ld [$0808], sp                                ; $7fbd: $08 $08 $08
    ld [$0808], sp                                ; $7fc0: $08 $08 $08
    ld [$0808], sp                                ; $7fc3: $08 $08 $08
    ld [$0808], sp                                ; $7fc6: $08 $08 $08
    ld [$0808], sp                                ; $7fc9: $08 $08 $08
    ld [$0808], sp                                ; $7fcc: $08 $08 $08
    ld [$0808], sp                                ; $7fcf: $08 $08 $08
    ld [$0808], sp                                ; $7fd2: $08 $08 $08
    ld [$0808], sp                                ; $7fd5: $08 $08 $08
    ld [$7308], sp                                ; $7fd8: $08 $08 $73
    ld c, [hl]                                    ; $7fdb: $4e
    ld b, b                                       ; $7fdc: $40
    ld [hl], a                                    ; $7fdd: $77
    ret nz                                        ; $7fde: $c0

    ld sp, $0c80                                  ; $7fdf: $31 $80 $0c
    rst $38                                       ; $7fe2: $ff
    ld a, a                                       ; $7fe3: $7f
    jp c, $0d7e                                   ; $7fe4: $da $7e $0d

    ld b, c                                       ; $7fe7: $41
    inc hl                                        ; $7fe8: $23
    inc d                                         ; $7fe9: $14
    rst $38                                       ; $7fea: $ff
    ld a, a                                       ; $7feb: $7f
    sbc c                                         ; $7fec: $99
    ld c, [hl]                                    ; $7fed: $4e
    ld l, a                                       ; $7fee: $6f
    dec e                                         ; $7fef: $1d
    ld b, h                                       ; $7ff0: $44
    db $10                                        ; $7ff1: $10
    rst $38                                       ; $7ff2: $ff
    ld a, a                                       ; $7ff3: $7f
    rst $38                                       ; $7ff4: $ff
    ld h, $6a                                     ; $7ff5: $26 $6a
    dec a                                         ; $7ff7: $3d
    dec h                                         ; $7ff8: $25
    inc c                                         ; $7ff9: $0c
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
