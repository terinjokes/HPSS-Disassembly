; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0df", ROMX[$4000], BANK[$df]

    db $df

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld hl, sp+$07                                 ; $4003: $f8 $07
    ld a, [c]                                     ; $4005: $f2
    ld bc, $faea                                  ; $4006: $01 $ea $fa
    ld [$faff], a                                 ; $4009: $ea $ff $fa
    ld a, [$fffa]                                 ; $400c: $fa $fa $ff
    call Call_000_000f                            ; $400f: $cd $0f $00
    dec e                                         ; $4012: $1d
    nop                                           ; $4013: $00
    ccf                                           ; $4014: $3f
    nop                                           ; $4015: $00
    add hl, sp                                    ; $4016: $39
    nop                                           ; $4017: $00
    ld h, $00                                     ; $4018: $26 $00
    ld [hl-], a                                   ; $401a: $32
    nop                                           ; $401b: $00
    dec sp                                        ; $401c: $3b
    nop                                           ; $401d: $00
    dec e                                         ; $401e: $1d
    nop                                           ; $401f: $00
    jr jr_0df_4022                                ; $4020: $18 $00

jr_0df_4022:
    rla                                           ; $4022: $17
    nop                                           ; $4023: $00
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    ld h, d                                       ; $4026: $62
    nop                                           ; $4027: $00
    ld h, l                                       ; $4028: $65
    nop                                           ; $4029: $00
    jp nz, $8200                                  ; $402a: $c2 $00 $82

    nop                                           ; $402d: $00
    jp nz, Jump_000_1000                          ; $402e: $c2 $00 $10

    nop                                           ; $4031: $00
    jr jr_0df_4034                                ; $4032: $18 $00

jr_0df_4034:
    inc e                                         ; $4034: $1c
    nop                                           ; $4035: $00
    inc c                                         ; $4036: $0c
    nop                                           ; $4037: $00
    inc d                                         ; $4038: $14
    nop                                           ; $4039: $00
    inc c                                         ; $403a: $0c
    nop                                           ; $403b: $00
    inc e                                         ; $403c: $1c
    nop                                           ; $403d: $00
    jr jr_0df_4040                                ; $403e: $18 $00

jr_0df_4040:
    jr jr_0df_4042                                ; $4040: $18 $00

jr_0df_4042:
    ld [$0400], sp                                ; $4042: $08 $00 $04
    nop                                           ; $4045: $00
    ld b, $00                                     ; $4046: $06 $00
    ld b, $00                                     ; $4048: $06 $00
    inc bc                                        ; $404a: $03
    nop                                           ; $404b: $00
    ld bc, $0300                                  ; $404c: $01 $00 $03
    nop                                           ; $404f: $00
    push hl                                       ; $4050: $e5
    nop                                           ; $4051: $00
    db $dd                                        ; $4052: $dd
    nop                                           ; $4053: $00
    ld b, l                                       ; $4054: $45
    nop                                           ; $4055: $00
    jr z, jr_0df_4058                             ; $4056: $28 $00

jr_0df_4058:
    ld [hl+], a                                   ; $4058: $22
    nop                                           ; $4059: $00
    dec a                                         ; $405a: $3d
    nop                                           ; $405b: $00
    inc a                                         ; $405c: $3c
    inc de                                        ; $405d: $13
    nop                                           ; $405e: $00
    adc l                                         ; $405f: $8d
    rlca                                          ; $4060: $07
    nop                                           ; $4061: $00
    inc bc                                        ; $4062: $03
    nop                                           ; $4063: $00
    ld [bc], a                                    ; $4064: $02
    nop                                           ; $4065: $00
    inc d                                         ; $4066: $14
    nop                                           ; $4067: $00
    inc b                                         ; $4068: $04
    nop                                           ; $4069: $00
    inc d                                         ; $406a: $14
    nop                                           ; $406b: $00
    jr jr_0df_4081                                ; $406c: $18 $13

    nop                                           ; $406e: $00
    rst $38                                       ; $406f: $ff
    dec c                                         ; $4070: $0d
    inc b                                         ; $4071: $04
    ld hl, sp+$07                                 ; $4072: $f8 $07
    ld a, [c]                                     ; $4074: $f2
    ld bc, $fbea                                  ; $4075: $01 $ea $fb
    db $eb                                        ; $4078: $eb
    db $fd                                        ; $4079: $fd
    ld a, [$fafb]                                 ; $407a: $fa $fb $fa
    db $fc                                        ; $407d: $fc
    xor a                                         ; $407e: $af
    rra                                           ; $407f: $1f
    nop                                           ; $4080: $00

jr_0df_4081:
    rst $38                                       ; $4081: $ff
    nop                                           ; $4082: $00
    ld a, [hl]                                    ; $4083: $7e
    nop                                           ; $4084: $00
    ld a, [$f500]                                 ; $4085: $fa $00 $f5
    nop                                           ; $4088: $00
    xor c                                         ; $4089: $a9
    nop                                           ; $408a: $00
    ld c, a                                       ; $408b: $4f
    nop                                           ; $408c: $00
    ld l, a                                       ; $408d: $6f
    nop                                           ; $408e: $00
    inc l                                         ; $408f: $2c
    nop                                           ; $4090: $00
    daa                                           ; $4091: $27
    nop                                           ; $4092: $00
    ld l, [hl]                                    ; $4093: $6e
    nop                                           ; $4094: $00
    db $d3                                        ; $4095: $d3
    nop                                           ; $4096: $00
    sub l                                         ; $4097: $95
    nop                                           ; $4098: $00
    ld [hl], e                                    ; $4099: $73
    nop                                           ; $409a: $00
    ld h, e                                       ; $409b: $63
    nop                                           ; $409c: $00
    ld d, e                                       ; $409d: $53
    nop                                           ; $409e: $00
    ld [bc], a                                    ; $409f: $02
    nop                                           ; $40a0: $00
    inc bc                                        ; $40a1: $03
    nop                                           ; $40a2: $00
    ld [bc], a                                    ; $40a3: $02
    nop                                           ; $40a4: $00
    ld [bc], a                                    ; $40a5: $02
    nop                                           ; $40a6: $00
    ld [bc], a                                    ; $40a7: $02
    nop                                           ; $40a8: $00
    inc bc                                        ; $40a9: $03
    nop                                           ; $40aa: $00
    ld [bc], a                                    ; $40ab: $02
    nop                                           ; $40ac: $00
    ld [bc], a                                    ; $40ad: $02
    rrca                                          ; $40ae: $0f
    nop                                           ; $40af: $00
    sub c                                         ; $40b0: $91
    ld h, h                                       ; $40b1: $64
    nop                                           ; $40b2: $00
    ld b, b                                       ; $40b3: $40
    nop                                           ; $40b4: $00
    sub a                                         ; $40b5: $97
    nop                                           ; $40b6: $00
    push bc                                       ; $40b7: $c5
    nop                                           ; $40b8: $00
    adc c                                         ; $40b9: $89
    nop                                           ; $40ba: $00
    add d                                         ; $40bb: $82
    nop                                           ; $40bc: $00
    ld b, d                                       ; $40bd: $42
    nop                                           ; $40be: $00
    scf                                           ; $40bf: $37
    nop                                           ; $40c0: $00
    ccf                                           ; $40c1: $3f
    inc de                                        ; $40c2: $13
    nop                                           ; $40c3: $00
    add c                                         ; $40c4: $81
    ld bc, $001d                                  ; $40c5: $01 $1d $00
    rst $38                                       ; $40c8: $ff
    dec c                                         ; $40c9: $0d
    inc b                                         ; $40ca: $04
    ld hl, sp+$07                                 ; $40cb: $f8 $07
    ld a, [c]                                     ; $40cd: $f2
    ld bc, $fbea                                  ; $40ce: $01 $ea $fb
    db $eb                                        ; $40d1: $eb
    db $fd                                        ; $40d2: $fd
    ld a, [$fafa]                                 ; $40d3: $fa $fa $fa
    rst $38                                       ; $40d6: $ff
    xor a                                         ; $40d7: $af
    rra                                           ; $40d8: $1f
    nop                                           ; $40d9: $00
    rst $38                                       ; $40da: $ff
    nop                                           ; $40db: $00
    ld a, l                                       ; $40dc: $7d
    nop                                           ; $40dd: $00
    db $f4                                        ; $40de: $f4
    nop                                           ; $40df: $00
    di                                            ; $40e0: $f3
    nop                                           ; $40e1: $00
    jp hl                                         ; $40e2: $e9


    nop                                           ; $40e3: $00
    ld c, a                                       ; $40e4: $4f
    nop                                           ; $40e5: $00
    ld l, a                                       ; $40e6: $6f
    nop                                           ; $40e7: $00
    inc l                                         ; $40e8: $2c
    nop                                           ; $40e9: $00
    daa                                           ; $40ea: $27
    nop                                           ; $40eb: $00
    ld l, [hl]                                    ; $40ec: $6e
    nop                                           ; $40ed: $00
    db $d3                                        ; $40ee: $d3
    nop                                           ; $40ef: $00
    push de                                       ; $40f0: $d5
    nop                                           ; $40f1: $00
    ld [hl-], a                                   ; $40f2: $32
    nop                                           ; $40f3: $00
    ld a, d                                       ; $40f4: $7a
    nop                                           ; $40f5: $00
    ld e, c                                       ; $40f6: $59
    nop                                           ; $40f7: $00
    ld [bc], a                                    ; $40f8: $02
    nop                                           ; $40f9: $00
    inc bc                                        ; $40fa: $03
    nop                                           ; $40fb: $00
    ld bc, $0200                                  ; $40fc: $01 $00 $02
    nop                                           ; $40ff: $00
    ld [bc], a                                    ; $4100: $02
    nop                                           ; $4101: $00
    inc bc                                        ; $4102: $03
    nop                                           ; $4103: $00
    ld [bc], a                                    ; $4104: $02
    nop                                           ; $4105: $00
    ld [bc], a                                    ; $4106: $02
    add hl, bc                                    ; $4107: $09
    nop                                           ; $4108: $00
    sub a                                         ; $4109: $97
    ld [bc], a                                    ; $410a: $02
    nop                                           ; $410b: $00
    inc bc                                        ; $410c: $03
    nop                                           ; $410d: $00
    ld [bc], a                                    ; $410e: $02
    nop                                           ; $410f: $00
    inc e                                         ; $4110: $1c
    nop                                           ; $4111: $00
    jr nz, jr_0df_4114                            ; $4112: $20 $00

jr_0df_4114:
    ld b, d                                       ; $4114: $42
    nop                                           ; $4115: $00
    ld h, d                                       ; $4116: $62
    nop                                           ; $4117: $00
    ld d, h                                       ; $4118: $54
    nop                                           ; $4119: $00
    add d                                         ; $411a: $82
    nop                                           ; $411b: $00
    add l                                         ; $411c: $85
    nop                                           ; $411d: $00
    ld a, l                                       ; $411e: $7d
    nop                                           ; $411f: $00
    inc e                                         ; $4120: $1c
    inc de                                        ; $4121: $13
    nop                                           ; $4122: $00
    adc e                                         ; $4123: $8b
    ld [$1800], sp                                ; $4124: $08 $00 $18
    nop                                           ; $4127: $00
    ld c, $00                                     ; $4128: $0e $00
    rlca                                          ; $412a: $07
    nop                                           ; $412b: $00
    ld c, $00                                     ; $412c: $0e $00
    jr jr_0df_4143                                ; $412e: $18 $13

    nop                                           ; $4130: $00
    rst $38                                       ; $4131: $ff
    dec c                                         ; $4132: $0d
    inc b                                         ; $4133: $04
    ld hl, sp+$07                                 ; $4134: $f8 $07
    ld a, [c]                                     ; $4136: $f2
    ld bc, $fbeb                                  ; $4137: $01 $eb $fb
    db $ec                                        ; $413a: $ec
    db $fd                                        ; $413b: $fd
    ei                                            ; $413c: $fb
    ld a, [$fdfb]                                 ; $413d: $fa $fb $fd
    xor a                                         ; $4140: $af
    ccf                                           ; $4141: $3f
    nop                                           ; $4142: $00

jr_0df_4143:
    rst $38                                       ; $4143: $ff
    nop                                           ; $4144: $00
    ld a, l                                       ; $4145: $7d
    nop                                           ; $4146: $00
    db $f4                                        ; $4147: $f4
    nop                                           ; $4148: $00
    di                                            ; $4149: $f3
    nop                                           ; $414a: $00
    jp hl                                         ; $414b: $e9


    nop                                           ; $414c: $00
    ld c, a                                       ; $414d: $4f
    nop                                           ; $414e: $00
    ld l, a                                       ; $414f: $6f
    nop                                           ; $4150: $00
    inc l                                         ; $4151: $2c
    nop                                           ; $4152: $00
    ld b, a                                       ; $4153: $47
    nop                                           ; $4154: $00
    xor $00                                       ; $4155: $ee $00
    db $d3                                        ; $4157: $d3
    nop                                           ; $4158: $00
    dec [hl]                                      ; $4159: $35
    nop                                           ; $415a: $00
    ld d, e                                       ; $415b: $53
    nop                                           ; $415c: $00
    ld a, e                                       ; $415d: $7b
    nop                                           ; $415e: $00
    ld e, e                                       ; $415f: $5b
    nop                                           ; $4160: $00
    ld [bc], a                                    ; $4161: $02
    nop                                           ; $4162: $00
    inc bc                                        ; $4163: $03
    nop                                           ; $4164: $00
    ld bc, $0200                                  ; $4165: $01 $00 $02
    nop                                           ; $4168: $00
    ld [bc], a                                    ; $4169: $02
    nop                                           ; $416a: $00
    inc bc                                        ; $416b: $03
    nop                                           ; $416c: $00
    ld [bc], a                                    ; $416d: $02
    nop                                           ; $416e: $00
    ld [bc], a                                    ; $416f: $02
    dec c                                         ; $4170: $0d
    nop                                           ; $4171: $00
    sub c                                         ; $4172: $91
    ld [bc], a                                    ; $4173: $02
    nop                                           ; $4174: $00
    inc [hl]                                      ; $4175: $34
    nop                                           ; $4176: $00
    jr nz, jr_0df_4179                            ; $4177: $20 $00

jr_0df_4179:
    ld h, h                                       ; $4179: $64
    nop                                           ; $417a: $00
    and d                                         ; $417b: $a2
    nop                                           ; $417c: $00
    add h                                         ; $417d: $84
    nop                                           ; $417e: $00
    ld b, h                                       ; $417f: $44
    nop                                           ; $4180: $00
    ld e, e                                       ; $4181: $5b
    nop                                           ; $4182: $00
    jr nc, @+$17                                  ; $4183: $30 $15

    nop                                           ; $4185: $00
    adc c                                         ; $4186: $89
    inc b                                         ; $4187: $04
    nop                                           ; $4188: $00
    ld b, $00                                     ; $4189: $06 $00
    ld [bc], a                                    ; $418b: $02
    nop                                           ; $418c: $00
    rlca                                          ; $418d: $07
    nop                                           ; $418e: $00
    rlca                                          ; $418f: $07
    dec d                                         ; $4190: $15
    nop                                           ; $4191: $00
    rst $38                                       ; $4192: $ff
    dec bc                                        ; $4193: $0b
    inc bc                                        ; $4194: $03
    ld hl, sp+$07                                 ; $4195: $f8 $07
    ld a, [c]                                     ; $4197: $f2
    ld bc, $fbea                                  ; $4198: $01 $ea $fb
    db $eb                                        ; $419b: $eb
    db $fd                                        ; $419c: $fd
    ld a, [$affc]                                 ; $419d: $fa $fc $af
    rra                                           ; $41a0: $1f
    nop                                           ; $41a1: $00
    ld a, a                                       ; $41a2: $7f
    nop                                           ; $41a3: $00
    cp [hl]                                       ; $41a4: $be
    nop                                           ; $41a5: $00
    ld a, [$f500]                                 ; $41a6: $fa $00 $f5
    nop                                           ; $41a9: $00
    xor c                                         ; $41aa: $a9
    nop                                           ; $41ab: $00
    ld c, a                                       ; $41ac: $4f
    nop                                           ; $41ad: $00
    ld l, a                                       ; $41ae: $6f
    nop                                           ; $41af: $00
    inc l                                         ; $41b0: $2c
    nop                                           ; $41b1: $00
    daa                                           ; $41b2: $27
    nop                                           ; $41b3: $00
    xor $00                                       ; $41b4: $ee $00
    db $d3                                        ; $41b6: $d3
    nop                                           ; $41b7: $00
    ld d, l                                       ; $41b8: $55
    nop                                           ; $41b9: $00
    ld h, e                                       ; $41ba: $63
    nop                                           ; $41bb: $00
    ld [hl], e                                    ; $41bc: $73
    nop                                           ; $41bd: $00
    ld h, e                                       ; $41be: $63
    nop                                           ; $41bf: $00
    ld [bc], a                                    ; $41c0: $02
    nop                                           ; $41c1: $00
    inc bc                                        ; $41c2: $03
    nop                                           ; $41c3: $00
    ld [bc], a                                    ; $41c4: $02
    nop                                           ; $41c5: $00
    ld [bc], a                                    ; $41c6: $02
    nop                                           ; $41c7: $00
    ld [bc], a                                    ; $41c8: $02
    nop                                           ; $41c9: $00
    inc bc                                        ; $41ca: $03
    nop                                           ; $41cb: $00
    ld [bc], a                                    ; $41cc: $02
    nop                                           ; $41cd: $00
    ld [bc], a                                    ; $41ce: $02
    rrca                                          ; $41cf: $0f
    nop                                           ; $41d0: $00
    adc a                                         ; $41d1: $8f
    ld c, h                                       ; $41d2: $4c
    nop                                           ; $41d3: $00
    add b                                         ; $41d4: $80
    nop                                           ; $41d5: $00
    rst $28                                       ; $41d6: $ef
    nop                                           ; $41d7: $00
    rst $08                                       ; $41d8: $cf
    nop                                           ; $41d9: $00
    ld b, e                                       ; $41da: $43
    nop                                           ; $41db: $00
    sub d                                         ; $41dc: $92
    nop                                           ; $41dd: $00
    adc l                                         ; $41de: $8d
    nop                                           ; $41df: $00
    ld a, [hl]                                    ; $41e0: $7e
    inc de                                        ; $41e1: $13
    nop                                           ; $41e2: $00
    rst $38                                       ; $41e3: $ff
    dec c                                         ; $41e4: $0d
    inc b                                         ; $41e5: $04
    ld hl, sp+$07                                 ; $41e6: $f8 $07
    ld a, [c]                                     ; $41e8: $f2
    ld bc, $fbea                                  ; $41e9: $01 $ea $fb
    db $eb                                        ; $41ec: $eb
    db $fd                                        ; $41ed: $fd
    ld a, [$fafa]                                 ; $41ee: $fa $fa $fa
    rst $38                                       ; $41f1: $ff
    xor a                                         ; $41f2: $af
    rra                                           ; $41f3: $1f
    nop                                           ; $41f4: $00
    rst $38                                       ; $41f5: $ff
    nop                                           ; $41f6: $00
    ld a, a                                       ; $41f7: $7f
    nop                                           ; $41f8: $00
    ld a, [$f100]                                 ; $41f9: $fa $00 $f1
    nop                                           ; $41fc: $00
    or h                                          ; $41fd: $b4
    nop                                           ; $41fe: $00
    ld c, a                                       ; $41ff: $4f
    nop                                           ; $4200: $00
    ld l, a                                       ; $4201: $6f
    nop                                           ; $4202: $00
    ld l, $00                                     ; $4203: $2e $00
    daa                                           ; $4205: $27
    nop                                           ; $4206: $00
    ld l, [hl]                                    ; $4207: $6e
    nop                                           ; $4208: $00
    db $d3                                        ; $4209: $d3
    nop                                           ; $420a: $00
    or l                                          ; $420b: $b5
    nop                                           ; $420c: $00
    ld h, e                                       ; $420d: $63
    nop                                           ; $420e: $00
    and e                                         ; $420f: $a3
    nop                                           ; $4210: $00
    and e                                         ; $4211: $a3
    nop                                           ; $4212: $00
    ld [bc], a                                    ; $4213: $02
    nop                                           ; $4214: $00
    inc bc                                        ; $4215: $03
    nop                                           ; $4216: $00
    ld [bc], a                                    ; $4217: $02
    nop                                           ; $4218: $00
    ld [bc], a                                    ; $4219: $02
    nop                                           ; $421a: $00
    ld [bc], a                                    ; $421b: $02
    nop                                           ; $421c: $00
    inc bc                                        ; $421d: $03
    nop                                           ; $421e: $00
    ld [bc], a                                    ; $421f: $02
    nop                                           ; $4220: $00
    ld [bc], a                                    ; $4221: $02
    rrca                                          ; $4222: $0f
    nop                                           ; $4223: $00
    sub c                                         ; $4224: $91
    adc h                                         ; $4225: $8c
    nop                                           ; $4226: $00
    ld h, b                                       ; $4227: $60
    nop                                           ; $4228: $00
    ld a, c                                       ; $4229: $79
    nop                                           ; $422a: $00
    ld h, [hl]                                    ; $422b: $66
    nop                                           ; $422c: $00
    sub d                                         ; $422d: $92
    nop                                           ; $422e: $00
    add b                                         ; $422f: $80
    nop                                           ; $4230: $00
    ld l, h                                       ; $4231: $6c
    nop                                           ; $4232: $00
    ld a, [de]                                    ; $4233: $1a
    nop                                           ; $4234: $00
    ld bc, $0013                                  ; $4235: $01 $13 $00
    adc l                                         ; $4238: $8d
    stop                                          ; $4239: $10 $00
    jr jr_0df_423d                                ; $423b: $18 $00

jr_0df_423d:
    jr jr_0df_423f                                ; $423d: $18 $00

jr_0df_423f:
    ld c, $00                                     ; $423f: $0e $00
    rlca                                          ; $4241: $07
    nop                                           ; $4242: $00
    ld e, $00                                     ; $4243: $1e $00
    jr jr_0df_4258                                ; $4245: $18 $11

    nop                                           ; $4247: $00
    rst $38                                       ; $4248: $ff
    dec c                                         ; $4249: $0d
    inc b                                         ; $424a: $04
    ld hl, sp+$07                                 ; $424b: $f8 $07
    ld a, [c]                                     ; $424d: $f2
    ld bc, $fbeb                                  ; $424e: $01 $eb $fb
    db $ec                                        ; $4251: $ec
    db $fd                                        ; $4252: $fd
    ei                                            ; $4253: $fb
    ld a, [$fdfb]                                 ; $4254: $fa $fb $fd
    xor a                                         ; $4257: $af

jr_0df_4258:
    ccf                                           ; $4258: $3f
    nop                                           ; $4259: $00
    rst $38                                       ; $425a: $ff
    nop                                           ; $425b: $00
    ld a, a                                       ; $425c: $7f
    nop                                           ; $425d: $00
    ld a, [$f100]                                 ; $425e: $fa $00 $f1
    nop                                           ; $4261: $00
    or h                                          ; $4262: $b4
    nop                                           ; $4263: $00
    ld c, a                                       ; $4264: $4f
    nop                                           ; $4265: $00
    ld l, a                                       ; $4266: $6f
    nop                                           ; $4267: $00
    ld l, $00                                     ; $4268: $2e $00
    ld b, a                                       ; $426a: $47
    nop                                           ; $426b: $00
    xor $00                                       ; $426c: $ee $00
    db $d3                                        ; $426e: $d3
    nop                                           ; $426f: $00
    dec [hl]                                      ; $4270: $35
    nop                                           ; $4271: $00
    ld [hl], e                                    ; $4272: $73
    nop                                           ; $4273: $00
    ld h, e                                       ; $4274: $63
    nop                                           ; $4275: $00
    ld d, e                                       ; $4276: $53
    nop                                           ; $4277: $00
    ld [bc], a                                    ; $4278: $02
    nop                                           ; $4279: $00
    inc bc                                        ; $427a: $03
    nop                                           ; $427b: $00
    ld [bc], a                                    ; $427c: $02
    nop                                           ; $427d: $00
    ld [bc], a                                    ; $427e: $02
    nop                                           ; $427f: $00
    ld [bc], a                                    ; $4280: $02
    nop                                           ; $4281: $00
    inc bc                                        ; $4282: $03
    nop                                           ; $4283: $00
    ld [bc], a                                    ; $4284: $02
    nop                                           ; $4285: $00
    ld [bc], a                                    ; $4286: $02
    rrca                                          ; $4287: $0f
    nop                                           ; $4288: $00
    adc a                                         ; $4289: $8f
    call z, $4000                                 ; $428a: $cc $00 $40
    nop                                           ; $428d: $00
    sbc c                                         ; $428e: $99
    nop                                           ; $428f: $00
    or l                                          ; $4290: $b5
    nop                                           ; $4291: $00
    ld b, d                                       ; $4292: $42
    nop                                           ; $4293: $00
    ld e, b                                       ; $4294: $58
    nop                                           ; $4295: $00
    dec [hl]                                      ; $4296: $35
    nop                                           ; $4297: $00
    rlca                                          ; $4298: $07
    dec d                                         ; $4299: $15
    nop                                           ; $429a: $00
    adc e                                         ; $429b: $8b
    inc b                                         ; $429c: $04
    nop                                           ; $429d: $00
    inc b                                         ; $429e: $04
    nop                                           ; $429f: $00
    ld b, $00                                     ; $42a0: $06 $00
    ld [bc], a                                    ; $42a2: $02
    nop                                           ; $42a3: $00
    rlca                                          ; $42a4: $07
    nop                                           ; $42a5: $00
    rlca                                          ; $42a6: $07
    inc de                                        ; $42a7: $13
    nop                                           ; $42a8: $00
    rst $38                                       ; $42a9: $ff
    dec c                                         ; $42aa: $0d
    inc b                                         ; $42ab: $04
    ld hl, sp+$07                                 ; $42ac: $f8 $07
    ld a, [c]                                     ; $42ae: $f2
    ld bc, $fbea                                  ; $42af: $01 $ea $fb
    db $eb                                        ; $42b2: $eb
    db $fd                                        ; $42b3: $fd
    ld a, [$fafb]                                 ; $42b4: $fa $fb $fa
    db $fc                                        ; $42b7: $fc
    xor a                                         ; $42b8: $af
    rra                                           ; $42b9: $1f
    nop                                           ; $42ba: $00
    ld a, a                                       ; $42bb: $7f
    nop                                           ; $42bc: $00
    cp [hl]                                       ; $42bd: $be
    nop                                           ; $42be: $00
    ld a, [$f500]                                 ; $42bf: $fa $00 $f5
    nop                                           ; $42c2: $00
    xor c                                         ; $42c3: $a9
    nop                                           ; $42c4: $00
    ld c, a                                       ; $42c5: $4f
    nop                                           ; $42c6: $00
    ld l, a                                       ; $42c7: $6f
    nop                                           ; $42c8: $00
    inc l                                         ; $42c9: $2c
    nop                                           ; $42ca: $00
    daa                                           ; $42cb: $27
    nop                                           ; $42cc: $00
    xor $00                                       ; $42cd: $ee $00
    db $d3                                        ; $42cf: $d3
    nop                                           ; $42d0: $00
    ld d, l                                       ; $42d1: $55
    nop                                           ; $42d2: $00
    ld h, e                                       ; $42d3: $63
    nop                                           ; $42d4: $00
    ld [hl], e                                    ; $42d5: $73
    nop                                           ; $42d6: $00
    ld [hl], e                                    ; $42d7: $73
    nop                                           ; $42d8: $00
    ld [bc], a                                    ; $42d9: $02
    nop                                           ; $42da: $00
    inc bc                                        ; $42db: $03
    nop                                           ; $42dc: $00
    ld [bc], a                                    ; $42dd: $02
    nop                                           ; $42de: $00
    ld [bc], a                                    ; $42df: $02
    nop                                           ; $42e0: $00
    ld [bc], a                                    ; $42e1: $02
    nop                                           ; $42e2: $00
    inc bc                                        ; $42e3: $03
    nop                                           ; $42e4: $00

jr_0df_42e5:
    ld [bc], a                                    ; $42e5: $02
    nop                                           ; $42e6: $00
    ld [bc], a                                    ; $42e7: $02
    rrca                                          ; $42e8: $0f
    nop                                           ; $42e9: $00
    sub c                                         ; $42ea: $91
    ld a, [hl+]                                   ; $42eb: $2a
    nop                                           ; $42ec: $00
    ld b, b                                       ; $42ed: $40
    nop                                           ; $42ee: $00
    ld e, d                                       ; $42ef: $5a
    nop                                           ; $42f0: $00
    add d                                         ; $42f1: $82
    nop                                           ; $42f2: $00
    push bc                                       ; $42f3: $c5
    nop                                           ; $42f4: $00
    ld b, e                                       ; $42f5: $43
    nop                                           ; $42f6: $00
    ld hl, $2f00                                  ; $42f7: $21 $00 $2f
    nop                                           ; $42fa: $00
    ccf                                           ; $42fb: $3f
    inc de                                        ; $42fc: $13
    nop                                           ; $42fd: $00
    add e                                         ; $42fe: $83
    ld bc, $0100                                  ; $42ff: $01 $00 $01
    dec de                                        ; $4302: $1b
    nop                                           ; $4303: $00
    rst $38                                       ; $4304: $ff
    rrca                                          ; $4305: $0f
    dec b                                         ; $4306: $05
    ld hl, sp+$07                                 ; $4307: $f8 $07
    ld a, [c]                                     ; $4309: $f2
    ld bc, $fceb                                  ; $430a: $01 $eb $fc
    db $ec                                        ; $430d: $ec
    cp $fb                                        ; $430e: $fe $fb
    di                                            ; $4310: $f3
    ei                                            ; $4311: $fb
    ei                                            ; $4312: $fb
    ei                                            ; $4313: $fb
    inc bc                                        ; $4314: $03
    ld [bc], a                                    ; $4315: $02
    ccf                                           ; $4316: $3f
    ld [bc], a                                    ; $4317: $02
    ld b, [hl]                                    ; $4318: $46
    ld [bc], a                                    ; $4319: $02
    sub e                                         ; $431a: $93
    adc h                                         ; $431b: $8c
    xor a                                         ; $431c: $af
    xor l                                         ; $431d: $ad
    rst $18                                       ; $431e: $df
    sub $7f                                       ; $431f: $d6 $7f
    ld [hl], b                                    ; $4321: $70
    ld a, a                                       ; $4322: $7f
    ld d, b                                       ; $4323: $50
    ccf                                           ; $4324: $3f
    ld sp, $383f                                  ; $4325: $31 $3f $38
    ld [bc], a                                    ; $4328: $02
    ld a, a                                       ; $4329: $7f
    adc h                                         ; $432a: $8c
    and l                                         ; $432b: $a5
    db $fd                                        ; $432c: $fd
    xor [hl]                                      ; $432d: $ae
    cp $6d                                        ; $432e: $fe $6d
    ld a, a                                       ; $4330: $7f
    ld l, $3f                                     ; $4331: $2e $3f
    ld b, [hl]                                    ; $4333: $46
    ld a, a                                       ; $4334: $7f
    ld c, [hl]                                    ; $4335: $4e
    ld a, a                                       ; $4336: $7f
    inc b                                         ; $4337: $04
    ld [bc], a                                    ; $4338: $02
    ld [bc], a                                    ; $4339: $02
    nop                                           ; $433a: $00
    ld [bc], a                                    ; $433b: $02
    ld [bc], a                                    ; $433c: $02
    add d                                         ; $433d: $82
    inc bc                                        ; $433e: $03
    ld bc, $0206                                  ; $433f: $01 $06 $02
    inc b                                         ; $4342: $04
    nop                                           ; $4343: $00
    ld a, [bc]                                    ; $4344: $0a
    ld [bc], a                                    ; $4345: $02
    add d                                         ; $4346: $82
    ld a, [$0e9e]                                 ; $4347: $fa $9e $0e
    nop                                           ; $434a: $00
    ld [bc], a                                    ; $434b: $02
    ld l, b                                       ; $434c: $68
    add [hl]                                      ; $434d: $86
    rst $18                                       ; $434e: $df
    or a                                          ; $434f: $b7
    ld h, l                                       ; $4350: $65
    ld e, e                                       ; $4351: $5b
    sbc $ae                                       ; $4352: $de $ae
    ld [bc], a                                    ; $4354: $02
    ld d, b                                       ; $4355: $50
    ld [$0200], sp                                ; $4356: $08 $00 $02
    jr nz, jr_0df_42e5                            ; $4359: $20 $8a

    ld a, $37                                     ; $435b: $3e $37
    ld a, [hl]                                    ; $435d: $7e
    ld a, a                                       ; $435e: $7f
    ld a, l                                       ; $435f: $7d
    ld a, a                                       ; $4360: $7f
    cp a                                          ; $4361: $bf
    rst $38                                       ; $4362: $ff
    call c, Call_000_02ff                         ; $4363: $dc $ff $02
    ccf                                           ; $4366: $3f
    ld [bc], a                                    ; $4367: $02
    ld [bc], a                                    ; $4368: $02
    add h                                         ; $4369: $84
    cp l                                          ; $436a: $bd
    rst $38                                       ; $436b: $ff
    rst $20                                       ; $436c: $e7
    rst $38                                       ; $436d: $ff
    ld [bc], a                                    ; $436e: $02
    jr jr_0df_437d                                ; $436f: $18 $0c

    nop                                           ; $4371: $00
    ld [bc], a                                    ; $4372: $02
    ret nz                                        ; $4373: $c0

    ld a, [bc]                                    ; $4374: $0a
    add b                                         ; $4375: $80
    ld [bc], a                                    ; $4376: $02
    ld [bc], a                                    ; $4377: $02
    add h                                         ; $4378: $84
    db $dd                                        ; $4379: $dd
    rst $18                                       ; $437a: $df
    and a                                         ; $437b: $a7
    rst $38                                       ; $437c: $ff

jr_0df_437d:
    ld [bc], a                                    ; $437d: $02
    ld a, b                                       ; $437e: $78
    ld a, [bc]                                    ; $437f: $0a
    nop                                           ; $4380: $00
    rst $38                                       ; $4381: $ff
    rrca                                          ; $4382: $0f
    dec b                                         ; $4383: $05
    ld hl, sp+$07                                 ; $4384: $f8 $07
    ld a, [c]                                     ; $4386: $f2
    ld bc, $fdec                                  ; $4387: $01 $ec $fd
    db $ec                                        ; $438a: $ec
    nop                                           ; $438b: $00
    db $fc                                        ; $438c: $fc
    di                                            ; $438d: $f3
    db $fc                                        ; $438e: $fc
    ei                                            ; $438f: $fb
    db $fc                                        ; $4390: $fc
    inc bc                                        ; $4391: $03
    ld [bc], a                                    ; $4392: $02
    rra                                           ; $4393: $1f
    ld [bc], a                                    ; $4394: $02
    inc hl                                        ; $4395: $23
    ld [bc], a                                    ; $4396: $02
    ld d, e                                       ; $4397: $53
    sbc d                                         ; $4398: $9a
    ld l, a                                       ; $4399: $6f
    ld l, h                                       ; $439a: $6c
    ld e, a                                       ; $439b: $5f
    ld e, e                                       ; $439c: $5b
    ccf                                           ; $439d: $3f
    jr z, jr_0df_43df                             ; $439e: $28 $3f

    jr nc, @+$21                                  ; $43a0: $30 $1f

    jr jr_0df_43e3                                ; $43a2: $18 $3f

    jr c, jr_0df_4405                             ; $43a4: $38 $5f

    ld a, a                                       ; $43a6: $7f
    ld h, l                                       ; $43a7: $65
    ld a, l                                       ; $43a8: $7d
    ld l, $3e                                     ; $43a9: $2e $3e
    ld c, l                                       ; $43ab: $4d
    ld a, a                                       ; $43ac: $7f
    ld e, [hl]                                    ; $43ad: $5e
    ld a, a                                       ; $43ae: $7f
    adc l                                         ; $43af: $8d
    rst $38                                       ; $43b0: $ff
    db $fd                                        ; $43b1: $fd
    sbc a                                         ; $43b2: $9f
    ld [bc], a                                    ; $43b3: $02
    inc b                                         ; $43b4: $04
    ld [bc], a                                    ; $43b5: $02
    ld [bc], a                                    ; $43b6: $02
    dec b                                         ; $43b7: $05
    ld b, $85                                     ; $43b8: $06 $85
    ld [bc], a                                    ; $43ba: $02
    rlca                                          ; $43bb: $07
    ld bc, $0206                                  ; $43bc: $01 $06 $02
    inc bc                                        ; $43bf: $03
    ld b, $81                                     ; $43c0: $06 $81
    ld [bc], a                                    ; $43c2: $02
    ld c, $04                                     ; $43c3: $0e $04
    inc c                                         ; $43c5: $0c
    nop                                           ; $43c6: $00
    ld [bc], a                                    ; $43c7: $02
    ld l, b                                       ; $43c8: $68
    add [hl]                                      ; $43c9: $86
    rst $18                                       ; $43ca: $df
    or a                                          ; $43cb: $b7
    ld h, l                                       ; $43cc: $65
    ld e, e                                       ; $43cd: $5b
    sbc $ae                                       ; $43ce: $de $ae
    ld [bc], a                                    ; $43d0: $02
    ld d, b                                       ; $43d1: $50
    ld a, [bc]                                    ; $43d2: $0a
    nop                                           ; $43d3: $00
    adc d                                         ; $43d4: $8a
    ccf                                           ; $43d5: $3f
    scf                                           ; $43d6: $37
    ld a, [hl]                                    ; $43d7: $7e
    ld a, a                                       ; $43d8: $7f
    cp l                                          ; $43d9: $bd
    rst $38                                       ; $43da: $ff
    or a                                          ; $43db: $b7
    rst $38                                       ; $43dc: $ff
    ld a, c                                       ; $43dd: $79
    ld a, a                                       ; $43de: $7f

jr_0df_43df:
    ld [bc], a                                    ; $43df: $02
    rrca                                          ; $43e0: $0f
    ld [bc], a                                    ; $43e1: $02
    ld [bc], a                                    ; $43e2: $02

jr_0df_43e3:
    add h                                         ; $43e3: $84
    cp l                                          ; $43e4: $bd
    rst $38                                       ; $43e5: $ff
    rst $20                                       ; $43e6: $e7
    rst $38                                       ; $43e7: $ff
    ld [bc], a                                    ; $43e8: $02
    jr jr_0df_43f7                                ; $43e9: $18 $0c

    nop                                           ; $43eb: $00
    add c                                         ; $43ec: $81
    ld h, b                                       ; $43ed: $60
    inc bc                                        ; $43ee: $03
    ldh [$81], a                                  ; $43ef: $e0 $81
    and b                                         ; $43f1: $a0
    inc bc                                        ; $43f2: $03
    ldh [rSC], a                                  ; $43f3: $e0 $02
    add b                                         ; $43f5: $80
    ld [bc], a                                    ; $43f6: $02

jr_0df_43f7:
    nop                                           ; $43f7: $00
    ld [bc], a                                    ; $43f8: $02
    ld [bc], a                                    ; $43f9: $02
    add h                                         ; $43fa: $84
    db $dd                                        ; $43fb: $dd
    rst $18                                       ; $43fc: $df
    and a                                         ; $43fd: $a7
    rst $38                                       ; $43fe: $ff
    ld [bc], a                                    ; $43ff: $02
    ld a, b                                       ; $4400: $78
    inc c                                         ; $4401: $0c
    nop                                           ; $4402: $00
    rst $38                                       ; $4403: $ff
    rrca                                          ; $4404: $0f

jr_0df_4405:
    dec b                                         ; $4405: $05
    ld hl, sp+$07                                 ; $4406: $f8 $07
    ld a, [c]                                     ; $4408: $f2
    ld bc, $fdeb                                  ; $4409: $01 $eb $fd
    db $eb                                        ; $440c: $eb
    nop                                           ; $440d: $00
    ei                                            ; $440e: $fb
    di                                            ; $440f: $f3
    ei                                            ; $4410: $fb
    ei                                            ; $4411: $fb
    ei                                            ; $4412: $fb
    inc bc                                        ; $4413: $03
    ld [bc], a                                    ; $4414: $02
    dec c                                         ; $4415: $0d
    ld [bc], a                                    ; $4416: $02
    ld [de], a                                    ; $4417: $12
    ld [bc], a                                    ; $4418: $02
    ld l, $8c                                     ; $4419: $2e $8c
    ccf                                           ; $441b: $3f
    ld sp, $2e3f                                  ; $441c: $31 $3f $2e
    ccf                                           ; $441f: $3f
    ld [hl-], a                                   ; $4420: $32
    ccf                                           ; $4421: $3f
    ld sp, $131f                                  ; $4422: $31 $1f $13
    rrca                                          ; $4425: $0f
    ld [$1f02], sp                                ; $4426: $08 $02 $1f
    adc h                                         ; $4429: $8c
    dec l                                         ; $442a: $2d
    dec a                                         ; $442b: $3d
    ld [hl], $3e                                  ; $442c: $36 $3e
    dec l                                         ; $442e: $2d
    ccf                                           ; $442f: $3f
    ld c, [hl]                                    ; $4430: $4e
    ld a, a                                       ; $4431: $7f
    sbc [hl]                                      ; $4432: $9e
    rst $38                                       ; $4433: $ff
    sbc $bf                                       ; $4434: $de $bf
    ld [bc], a                                    ; $4436: $02
    inc b                                         ; $4437: $04
    ld [bc], a                                    ; $4438: $02
    ld [bc], a                                    ; $4439: $02
    ld [bc], a                                    ; $443a: $02
    dec b                                         ; $443b: $05
    add d                                         ; $443c: $82
    rlca                                          ; $443d: $07
    inc bc                                        ; $443e: $03
    inc bc                                        ; $443f: $03
    rlca                                          ; $4440: $07
    add l                                         ; $4441: $85
    ld bc, $0307                                  ; $4442: $01 $07 $03
    ld b, $02                                     ; $4445: $06 $02
    inc b                                         ; $4447: $04
    ld b, $02                                     ; $4448: $06 $02
    ld [bc], a                                    ; $444a: $02
    ld [bc], a                                    ; $444b: $02
    ld b, $81                                     ; $444c: $06 $81
    ld [bc], a                                    ; $444e: $02
    dec b                                         ; $444f: $05
    ld b, $02                                     ; $4450: $06 $02
    rlca                                          ; $4452: $07
    ld c, $00                                     ; $4453: $0e $00
    ld [bc], a                                    ; $4455: $02
    ld l, b                                       ; $4456: $68
    add [hl]                                      ; $4457: $86
    rst $18                                       ; $4458: $df
    or a                                          ; $4459: $b7
    ld h, l                                       ; $445a: $65
    ld e, e                                       ; $445b: $5b
    sbc $ae                                       ; $445c: $de $ae
    ld [bc], a                                    ; $445e: $02
    ld d, b                                       ; $445f: $50
    ld [$8c00], sp                                ; $4460: $08 $00 $8c
    ccf                                           ; $4463: $3f
    daa                                           ; $4464: $27
    ld e, $1f                                     ; $4465: $1e $1f
    ld a, $3f                                     ; $4467: $3e $3f
    dec a                                         ; $4469: $3d
    ccf                                           ; $446a: $3f
    ld e, e                                       ; $446b: $5b
    ld a, a                                       ; $446c: $7f
    dec a                                         ; $446d: $3d
    ccf                                           ; $446e: $3f
    ld [bc], a                                    ; $446f: $02
    rrca                                          ; $4470: $0f
    ld [bc], a                                    ; $4471: $02
    ld [bc], a                                    ; $4472: $02
    add h                                         ; $4473: $84
    cp l                                          ; $4474: $bd
    rst $38                                       ; $4475: $ff
    rst $20                                       ; $4476: $e7
    rst $38                                       ; $4477: $ff
    ld [bc], a                                    ; $4478: $02
    jr jr_0df_4485                                ; $4479: $18 $0a

    nop                                           ; $447b: $00
    add d                                         ; $447c: $82
    ld e, b                                       ; $447d: $58
    ld hl, sp+$02                                 ; $447e: $f8 $02
    ldh a, [rDIV]                                 ; $4480: $f0 $04
    ldh [$82], a                                  ; $4482: $e0 $82
    ret nc                                        ; $4484: $d0

jr_0df_4485:
    ldh a, [rSC]                                  ; $4485: $f0 $02
    ldh [rSC], a                                  ; $4487: $e0 $02
    nop                                           ; $4489: $00
    ld [bc], a                                    ; $448a: $02
    ld [bc], a                                    ; $448b: $02
    add h                                         ; $448c: $84
    db $dd                                        ; $448d: $dd
    rst $18                                       ; $448e: $df
    and a                                         ; $448f: $a7
    rst $38                                       ; $4490: $ff
    ld [bc], a                                    ; $4491: $02
    ld a, b                                       ; $4492: $78
    ld a, [bc]                                    ; $4493: $0a
    nop                                           ; $4494: $00
    rst $38                                       ; $4495: $ff
    rlca                                          ; $4496: $07
    ld bc, $07f8                                  ; $4497: $01 $f8 $07
    ld a, [c]                                     ; $449a: $f2
    ld bc, $ffec                                  ; $449b: $01 $ec $ff
    add e                                         ; $449e: $83
    ld [hl], $00                                  ; $449f: $36 $00
    ld b, l                                       ; $44a1: $45
    stop                                          ; $44a2: $10 $00
    add e                                         ; $44a4: $83
    ld a, [bc]                                    ; $44a5: $0a
    nop                                           ; $44a6: $00
    inc b                                         ; $44a7: $04
    ld a, [bc]                                    ; $44a8: $0a
    nop                                           ; $44a9: $00
    rst $38                                       ; $44aa: $ff
    rrca                                          ; $44ab: $0f
    dec b                                         ; $44ac: $05
    ld hl, sp+$07                                 ; $44ad: $f8 $07
    ld a, [c]                                     ; $44af: $f2
    ld bc, $fbeb                                  ; $44b0: $01 $eb $fb
    db $eb                                        ; $44b3: $eb
    nop                                           ; $44b4: $00
    ei                                            ; $44b5: $fb
    di                                            ; $44b6: $f3
    ei                                            ; $44b7: $fb
    ei                                            ; $44b8: $fb
    ei                                            ; $44b9: $fb
    inc bc                                        ; $44ba: $03
    ld [bc], a                                    ; $44bb: $02
    inc bc                                        ; $44bc: $03
    ld [bc], a                                    ; $44bd: $02
    inc b                                         ; $44be: $04
    ld [bc], a                                    ; $44bf: $02
    dec bc                                        ; $44c0: $0b
    adc h                                         ; $44c1: $8c
    rrca                                          ; $44c2: $0f
    inc c                                         ; $44c3: $0c
    rrca                                          ; $44c4: $0f
    dec bc                                        ; $44c5: $0b
    rrca                                          ; $44c6: $0f
    inc c                                         ; $44c7: $0c
    rrca                                          ; $44c8: $0f
    inc c                                         ; $44c9: $0c
    rlca                                          ; $44ca: $07
    inc b                                         ; $44cb: $04
    inc bc                                        ; $44cc: $03
    ld [bc], a                                    ; $44cd: $02
    ld [bc], a                                    ; $44ce: $02
    rlca                                          ; $44cf: $07
    ld [bc], a                                    ; $44d0: $02
    rrca                                          ; $44d1: $0f
    adc d                                         ; $44d2: $8a
    add hl, bc                                    ; $44d3: $09
    rrca                                          ; $44d4: $0f
    inc sp                                        ; $44d5: $33
    ccf                                           ; $44d6: $3f
    ld c, a                                       ; $44d7: $4f
    ld a, a                                       ; $44d8: $7f
    ld l, a                                       ; $44d9: $6f
    ld e, a                                       ; $44da: $5f
    rst $38                                       ; $44db: $ff
    cp a                                          ; $44dc: $bf
    ld [bc], a                                    ; $44dd: $02
    inc c                                         ; $44de: $0c
    ld [bc], a                                    ; $44df: $02
    ld [de], a                                    ; $44e0: $12
    ld [bc], a                                    ; $44e1: $02
    dec d                                         ; $44e2: $15
    adc h                                         ; $44e3: $8c
    rra                                           ; $44e4: $1f
    dec bc                                        ; $44e5: $0b
    rra                                           ; $44e6: $1f
    rla                                           ; $44e7: $17
    rra                                           ; $44e8: $1f
    ld de, $0b1f                                  ; $44e9: $11 $1f $0b
    ld e, $1a                                     ; $44ec: $1e $1a
    ld e, $06                                     ; $44ee: $1e $06
    ld [bc], a                                    ; $44f0: $02
    ld e, $02                                     ; $44f1: $1e $02
    ld a, [bc]                                    ; $44f3: $0a
    ld [bc], a                                    ; $44f4: $02
    ld d, $88                                     ; $44f5: $16 $88
    ld a, [bc]                                    ; $44f7: $0a
    ld e, $16                                     ; $44f8: $1e $16
    ld e, $17                                     ; $44fa: $1e $17
    rra                                           ; $44fc: $1f
    rla                                           ; $44fd: $17
    rra                                           ; $44fe: $1f
    ld c, $00                                     ; $44ff: $0e $00
    ld [bc], a                                    ; $4501: $02
    ld l, b                                       ; $4502: $68
    add [hl]                                      ; $4503: $86
    rst $18                                       ; $4504: $df
    or a                                          ; $4505: $b7
    ld h, l                                       ; $4506: $65
    ld e, e                                       ; $4507: $5b
    sbc $ae                                       ; $4508: $de $ae
    ld [bc], a                                    ; $450a: $02
    ld d, b                                       ; $450b: $50
    ld [$0200], sp                                ; $450c: $08 $00 $02
    ld c, a                                       ; $450f: $4f
    ld [bc], a                                    ; $4510: $02
    rra                                           ; $4511: $1f
    adc b                                         ; $4512: $88
    ld e, $1f                                     ; $4513: $1e $1f
    ld a, $3f                                     ; $4515: $3e $3f
    ld e, e                                       ; $4517: $5b
    ld a, a                                       ; $4518: $7f
    dec a                                         ; $4519: $3d
    ccf                                           ; $451a: $3f
    ld [bc], a                                    ; $451b: $02
    rrca                                          ; $451c: $0f
    ld [bc], a                                    ; $451d: $02
    ld [bc], a                                    ; $451e: $02
    add h                                         ; $451f: $84
    cp l                                          ; $4520: $bd
    rst $38                                       ; $4521: $ff
    rst $20                                       ; $4522: $e7
    rst $38                                       ; $4523: $ff
    ld [bc], a                                    ; $4524: $02
    jr @+$0c                                      ; $4525: $18 $0a

    nop                                           ; $4527: $00
    add h                                         ; $4528: $84
    ld e, h                                       ; $4529: $5c
    db $f4                                        ; $452a: $f4
    ld e, b                                       ; $452b: $58
    ld hl, sp+$02                                 ; $452c: $f8 $02
    ldh a, [rSC]                                  ; $452e: $f0 $02
    ldh [$82], a                                  ; $4530: $e0 $82
    ret nc                                        ; $4532: $d0

    ldh a, [rSC]                                  ; $4533: $f0 $02
    ldh [rSC], a                                  ; $4535: $e0 $02
    nop                                           ; $4537: $00
    ld [bc], a                                    ; $4538: $02
    ld [bc], a                                    ; $4539: $02
    add h                                         ; $453a: $84
    db $dd                                        ; $453b: $dd
    rst $18                                       ; $453c: $df
    and a                                         ; $453d: $a7
    rst $38                                       ; $453e: $ff
    ld [bc], a                                    ; $453f: $02
    ld a, b                                       ; $4540: $78
    ld a, [bc]                                    ; $4541: $0a
    nop                                           ; $4542: $00
    rst $38                                       ; $4543: $ff
    rlca                                          ; $4544: $07
    ld bc, $07f8                                  ; $4545: $01 $f8 $07
    ld a, [c]                                     ; $4548: $f2
    ld bc, $ffec                                  ; $4549: $01 $ec $ff
    add e                                         ; $454c: $83
    ld [hl], $00                                  ; $454d: $36 $00
    ld b, l                                       ; $454f: $45
    stop                                          ; $4550: $10 $00
    add e                                         ; $4552: $83
    ld a, [bc]                                    ; $4553: $0a
    nop                                           ; $4554: $00
    inc b                                         ; $4555: $04
    ld a, [bc]                                    ; $4556: $0a
    nop                                           ; $4557: $00
    rst $38                                       ; $4558: $ff
    rrca                                          ; $4559: $0f
    dec b                                         ; $455a: $05
    ld hl, sp+$07                                 ; $455b: $f8 $07
    ld a, [c]                                     ; $455d: $f2
    ld bc, $fbeb                                  ; $455e: $01 $eb $fb
    db $eb                                        ; $4561: $eb
    nop                                           ; $4562: $00
    ei                                            ; $4563: $fb
    di                                            ; $4564: $f3
    ei                                            ; $4565: $fb
    ei                                            ; $4566: $fb
    ei                                            ; $4567: $fb
    inc bc                                        ; $4568: $03
    ld [bc], a                                    ; $4569: $02
    inc bc                                        ; $456a: $03
    ld [bc], a                                    ; $456b: $02
    inc b                                         ; $456c: $04
    ld [bc], a                                    ; $456d: $02
    dec bc                                        ; $456e: $0b
    adc h                                         ; $456f: $8c
    rrca                                          ; $4570: $0f
    inc c                                         ; $4571: $0c
    rrca                                          ; $4572: $0f
    dec bc                                        ; $4573: $0b
    rrca                                          ; $4574: $0f
    inc c                                         ; $4575: $0c
    rrca                                          ; $4576: $0f
    inc c                                         ; $4577: $0c
    rlca                                          ; $4578: $07
    inc b                                         ; $4579: $04
    inc bc                                        ; $457a: $03
    ld [bc], a                                    ; $457b: $02
    ld [bc], a                                    ; $457c: $02
    rlca                                          ; $457d: $07
    ld [bc], a                                    ; $457e: $02
    rrca                                          ; $457f: $0f
    adc d                                         ; $4580: $8a
    add hl, bc                                    ; $4581: $09
    rrca                                          ; $4582: $0f
    inc sp                                        ; $4583: $33
    ccf                                           ; $4584: $3f
    ld c, a                                       ; $4585: $4f
    ld a, a                                       ; $4586: $7f
    ld l, a                                       ; $4587: $6f
    ld e, a                                       ; $4588: $5f
    rst $38                                       ; $4589: $ff
    cp a                                          ; $458a: $bf
    ld [bc], a                                    ; $458b: $02
    inc c                                         ; $458c: $0c
    ld [bc], a                                    ; $458d: $02
    ld [de], a                                    ; $458e: $12
    ld [bc], a                                    ; $458f: $02
    dec d                                         ; $4590: $15
    adc h                                         ; $4591: $8c
    rra                                           ; $4592: $1f
    dec bc                                        ; $4593: $0b
    rra                                           ; $4594: $1f
    rla                                           ; $4595: $17
    rra                                           ; $4596: $1f
    ld de, $0b1f                                  ; $4597: $11 $1f $0b
    ld e, $1a                                     ; $459a: $1e $1a
    ld e, $06                                     ; $459c: $1e $06
    ld [bc], a                                    ; $459e: $02
    ld e, $02                                     ; $459f: $1e $02
    ld a, [bc]                                    ; $45a1: $0a
    ld [bc], a                                    ; $45a2: $02
    ld d, $88                                     ; $45a3: $16 $88
    ld a, [bc]                                    ; $45a5: $0a
    ld e, $16                                     ; $45a6: $1e $16
    ld e, $17                                     ; $45a8: $1e $17
    rra                                           ; $45aa: $1f
    rla                                           ; $45ab: $17
    rra                                           ; $45ac: $1f
    ld c, $00                                     ; $45ad: $0e $00
    ld [bc], a                                    ; $45af: $02
    ld l, b                                       ; $45b0: $68
    add [hl]                                      ; $45b1: $86
    rst $18                                       ; $45b2: $df
    or a                                          ; $45b3: $b7
    ld h, l                                       ; $45b4: $65
    ld e, e                                       ; $45b5: $5b
    sbc $ae                                       ; $45b6: $de $ae
    ld [bc], a                                    ; $45b8: $02
    ld d, b                                       ; $45b9: $50
    ld [$0200], sp                                ; $45ba: $08 $00 $02
    ld c, a                                       ; $45bd: $4f
    inc b                                         ; $45be: $04
    rra                                           ; $45bf: $1f
    add [hl]                                      ; $45c0: $86
    ld a, $3f                                     ; $45c1: $3e $3f
    ld e, e                                       ; $45c3: $5b
    ld a, a                                       ; $45c4: $7f
    dec a                                         ; $45c5: $3d
    ccf                                           ; $45c6: $3f
    ld [bc], a                                    ; $45c7: $02
    rrca                                          ; $45c8: $0f
    ld [bc], a                                    ; $45c9: $02
    ld [bc], a                                    ; $45ca: $02
    add h                                         ; $45cb: $84
    cp l                                          ; $45cc: $bd
    rst $38                                       ; $45cd: $ff
    rst $20                                       ; $45ce: $e7
    rst $38                                       ; $45cf: $ff
    ld [bc], a                                    ; $45d0: $02
    jr @+$0c                                      ; $45d1: $18 $0a

    nop                                           ; $45d3: $00
    add [hl]                                      ; $45d4: $86
    ld e, h                                       ; $45d5: $5c
    db $f4                                        ; $45d6: $f4
    ld e, b                                       ; $45d7: $58
    ld hl, sp+$50                                 ; $45d8: $f8 $50
    ldh a, [rSC]                                  ; $45da: $f0 $02
    ldh [$82], a                                  ; $45dc: $e0 $82
    ret nc                                        ; $45de: $d0

    ldh a, [rSC]                                  ; $45df: $f0 $02
    ldh [rSC], a                                  ; $45e1: $e0 $02
    nop                                           ; $45e3: $00
    ld [bc], a                                    ; $45e4: $02
    ld [bc], a                                    ; $45e5: $02
    add h                                         ; $45e6: $84
    db $dd                                        ; $45e7: $dd
    rst $18                                       ; $45e8: $df
    and a                                         ; $45e9: $a7
    rst $38                                       ; $45ea: $ff
    ld [bc], a                                    ; $45eb: $02
    ld a, b                                       ; $45ec: $78
    ld a, [bc]                                    ; $45ed: $0a
    nop                                           ; $45ee: $00
    rst $38                                       ; $45ef: $ff
    rlca                                          ; $45f0: $07
    ld bc, $07f8                                  ; $45f1: $01 $f8 $07
    ld a, [c]                                     ; $45f4: $f2
    ld bc, $ffec                                  ; $45f5: $01 $ec $ff
    add e                                         ; $45f8: $83
    ld [hl], $00                                  ; $45f9: $36 $00
    ld b, l                                       ; $45fb: $45
    stop                                          ; $45fc: $10 $00
    add e                                         ; $45fe: $83
    ld a, [bc]                                    ; $45ff: $0a
    nop                                           ; $4600: $00
    inc b                                         ; $4601: $04
    ld a, [bc]                                    ; $4602: $0a
    nop                                           ; $4603: $00
    rst $38                                       ; $4604: $ff
    rrca                                          ; $4605: $0f
    dec b                                         ; $4606: $05
    ld hl, sp+$07                                 ; $4607: $f8 $07
    ld a, [c]                                     ; $4609: $f2
    ld bc, $fbeb                                  ; $460a: $01 $eb $fb
    db $eb                                        ; $460d: $eb
    nop                                           ; $460e: $00
    ei                                            ; $460f: $fb
    di                                            ; $4610: $f3
    ei                                            ; $4611: $fb
    ei                                            ; $4612: $fb
    ei                                            ; $4613: $fb
    inc bc                                        ; $4614: $03
    ld [bc], a                                    ; $4615: $02
    inc bc                                        ; $4616: $03
    ld [bc], a                                    ; $4617: $02
    inc b                                         ; $4618: $04
    ld [bc], a                                    ; $4619: $02
    dec bc                                        ; $461a: $0b
    adc h                                         ; $461b: $8c
    rrca                                          ; $461c: $0f
    inc c                                         ; $461d: $0c
    rrca                                          ; $461e: $0f
    dec bc                                        ; $461f: $0b
    rrca                                          ; $4620: $0f
    inc c                                         ; $4621: $0c
    rrca                                          ; $4622: $0f
    inc c                                         ; $4623: $0c
    rlca                                          ; $4624: $07
    inc b                                         ; $4625: $04
    inc bc                                        ; $4626: $03
    ld [bc], a                                    ; $4627: $02
    ld [bc], a                                    ; $4628: $02
    rlca                                          ; $4629: $07
    ld [bc], a                                    ; $462a: $02
    rrca                                          ; $462b: $0f
    adc d                                         ; $462c: $8a
    add hl, bc                                    ; $462d: $09
    rrca                                          ; $462e: $0f
    inc sp                                        ; $462f: $33
    ccf                                           ; $4630: $3f
    ld c, a                                       ; $4631: $4f
    ld a, a                                       ; $4632: $7f
    ld l, a                                       ; $4633: $6f
    ld e, a                                       ; $4634: $5f
    rst $38                                       ; $4635: $ff
    cp a                                          ; $4636: $bf
    ld [bc], a                                    ; $4637: $02
    inc c                                         ; $4638: $0c
    ld [bc], a                                    ; $4639: $02
    ld [de], a                                    ; $463a: $12
    ld [bc], a                                    ; $463b: $02
    dec d                                         ; $463c: $15
    adc h                                         ; $463d: $8c
    rra                                           ; $463e: $1f
    dec bc                                        ; $463f: $0b
    rra                                           ; $4640: $1f
    rla                                           ; $4641: $17
    rra                                           ; $4642: $1f
    ld de, $0b1f                                  ; $4643: $11 $1f $0b
    ld e, $1a                                     ; $4646: $1e $1a
    ld e, $06                                     ; $4648: $1e $06
    ld [bc], a                                    ; $464a: $02
    ld e, $02                                     ; $464b: $1e $02
    ld a, [bc]                                    ; $464d: $0a
    ld [bc], a                                    ; $464e: $02
    ld d, $88                                     ; $464f: $16 $88
    ld a, [bc]                                    ; $4651: $0a
    ld e, $16                                     ; $4652: $1e $16
    ld e, $17                                     ; $4654: $1e $17
    rra                                           ; $4656: $1f
    rla                                           ; $4657: $17
    rra                                           ; $4658: $1f
    ld c, $00                                     ; $4659: $0e $00
    ld [bc], a                                    ; $465b: $02
    ld l, b                                       ; $465c: $68
    add [hl]                                      ; $465d: $86
    rst $18                                       ; $465e: $df
    or a                                          ; $465f: $b7
    ld h, l                                       ; $4660: $65
    ld e, e                                       ; $4661: $5b
    sbc $ae                                       ; $4662: $de $ae
    ld [bc], a                                    ; $4664: $02
    ld d, b                                       ; $4665: $50
    ld [$0200], sp                                ; $4666: $08 $00 $02
    ld c, a                                       ; $4669: $4f
    inc b                                         ; $466a: $04
    rra                                           ; $466b: $1f
    add [hl]                                      ; $466c: $86
    ld a, $3f                                     ; $466d: $3e $3f
    ld e, e                                       ; $466f: $5b
    ld a, a                                       ; $4670: $7f
    dec a                                         ; $4671: $3d
    ccf                                           ; $4672: $3f
    ld [bc], a                                    ; $4673: $02
    rrca                                          ; $4674: $0f
    add h                                         ; $4675: $84
    dec a                                         ; $4676: $3d
    ccf                                           ; $4677: $3f
    and a                                         ; $4678: $a7
    rst $38                                       ; $4679: $ff
    ld [bc], a                                    ; $467a: $02
    ret c                                         ; $467b: $d8

    inc c                                         ; $467c: $0c
    nop                                           ; $467d: $00
    add [hl]                                      ; $467e: $86
    ld e, h                                       ; $467f: $5c
    db $f4                                        ; $4680: $f4
    ld e, b                                       ; $4681: $58
    ld hl, sp+$50                                 ; $4682: $f8 $50
    ldh a, [rSC]                                  ; $4684: $f0 $02
    ldh [$82], a                                  ; $4686: $e0 $82
    ret nc                                        ; $4688: $d0

    ldh a, [rSC]                                  ; $4689: $f0 $02
    ldh [rSC], a                                  ; $468b: $e0 $02
    ld [bc], a                                    ; $468d: $02
    add h                                         ; $468e: $84
    db $dd                                        ; $468f: $dd
    rst $18                                       ; $4690: $df
    and a                                         ; $4691: $a7
    rst $38                                       ; $4692: $ff
    ld [bc], a                                    ; $4693: $02
    ld a, b                                       ; $4694: $78
    inc c                                         ; $4695: $0c
    nop                                           ; $4696: $00
    rst $38                                       ; $4697: $ff
    rlca                                          ; $4698: $07
    ld bc, $07f8                                  ; $4699: $01 $f8 $07
    ld a, [c]                                     ; $469c: $f2
    ld bc, $ffec                                  ; $469d: $01 $ec $ff
    add e                                         ; $46a0: $83
    ld [hl], $00                                  ; $46a1: $36 $00
    ld b, l                                       ; $46a3: $45
    stop                                          ; $46a4: $10 $00
    add e                                         ; $46a6: $83
    ld a, [bc]                                    ; $46a7: $0a
    nop                                           ; $46a8: $00
    inc b                                         ; $46a9: $04
    ld a, [bc]                                    ; $46aa: $0a
    nop                                           ; $46ab: $00
    rst $38                                       ; $46ac: $ff
    rrca                                          ; $46ad: $0f
    dec b                                         ; $46ae: $05
    ld hl, sp+$07                                 ; $46af: $f8 $07
    ld a, [c]                                     ; $46b1: $f2
    ld bc, $fbeb                                  ; $46b2: $01 $eb $fb
    db $eb                                        ; $46b5: $eb
    nop                                           ; $46b6: $00
    ei                                            ; $46b7: $fb
    di                                            ; $46b8: $f3
    ei                                            ; $46b9: $fb
    ei                                            ; $46ba: $fb
    ei                                            ; $46bb: $fb
    inc bc                                        ; $46bc: $03
    ld [bc], a                                    ; $46bd: $02
    inc bc                                        ; $46be: $03
    ld [bc], a                                    ; $46bf: $02
    inc b                                         ; $46c0: $04
    ld [bc], a                                    ; $46c1: $02
    dec bc                                        ; $46c2: $0b
    adc h                                         ; $46c3: $8c
    rrca                                          ; $46c4: $0f
    inc c                                         ; $46c5: $0c
    rrca                                          ; $46c6: $0f
    dec bc                                        ; $46c7: $0b
    rrca                                          ; $46c8: $0f
    inc c                                         ; $46c9: $0c
    rrca                                          ; $46ca: $0f
    inc c                                         ; $46cb: $0c
    rlca                                          ; $46cc: $07
    inc b                                         ; $46cd: $04
    inc bc                                        ; $46ce: $03
    ld [bc], a                                    ; $46cf: $02
    ld [bc], a                                    ; $46d0: $02
    rlca                                          ; $46d1: $07
    ld [bc], a                                    ; $46d2: $02
    rrca                                          ; $46d3: $0f
    adc d                                         ; $46d4: $8a
    add hl, bc                                    ; $46d5: $09
    rrca                                          ; $46d6: $0f
    inc sp                                        ; $46d7: $33
    ccf                                           ; $46d8: $3f
    ld c, a                                       ; $46d9: $4f
    ld a, a                                       ; $46da: $7f
    ld l, a                                       ; $46db: $6f
    ld e, a                                       ; $46dc: $5f
    rst $38                                       ; $46dd: $ff
    cp a                                          ; $46de: $bf
    ld [bc], a                                    ; $46df: $02
    inc c                                         ; $46e0: $0c
    ld [bc], a                                    ; $46e1: $02
    ld [de], a                                    ; $46e2: $12
    ld [bc], a                                    ; $46e3: $02
    dec d                                         ; $46e4: $15
    adc h                                         ; $46e5: $8c
    rra                                           ; $46e6: $1f
    dec bc                                        ; $46e7: $0b
    rra                                           ; $46e8: $1f
    rla                                           ; $46e9: $17
    rra                                           ; $46ea: $1f
    ld de, $0b1f                                  ; $46eb: $11 $1f $0b
    ld e, $1a                                     ; $46ee: $1e $1a
    ld e, $06                                     ; $46f0: $1e $06
    ld [bc], a                                    ; $46f2: $02
    ld e, $02                                     ; $46f3: $1e $02
    ld a, [bc]                                    ; $46f5: $0a
    ld [bc], a                                    ; $46f6: $02
    ld d, $88                                     ; $46f7: $16 $88
    ld a, [bc]                                    ; $46f9: $0a
    ld e, $16                                     ; $46fa: $1e $16
    ld e, $17                                     ; $46fc: $1e $17
    rra                                           ; $46fe: $1f
    rla                                           ; $46ff: $17
    rra                                           ; $4700: $1f
    ld [$0200], sp                                ; $4701: $08 $00 $02
    ld d, b                                       ; $4704: $50
    add [hl]                                      ; $4705: $86
    sbc $ae                                       ; $4706: $de $ae
    ld h, l                                       ; $4708: $65
    ld e, e                                       ; $4709: $5b
    rst $18                                       ; $470a: $df
    or a                                          ; $470b: $b7
    ld [bc], a                                    ; $470c: $02
    ld l, b                                       ; $470d: $68
    ld c, $00                                     ; $470e: $0e $00
    ld [bc], a                                    ; $4710: $02
    ld c, a                                       ; $4711: $4f
    inc b                                         ; $4712: $04
    rra                                           ; $4713: $1f
    adc b                                         ; $4714: $88
    ld a, $3f                                     ; $4715: $3e $3f
    ld e, e                                       ; $4717: $5b
    ld a, a                                       ; $4718: $7f
    dec a                                         ; $4719: $3d
    ld a, a                                       ; $471a: $7f
    rst $20                                       ; $471b: $e7
    rst $38                                       ; $471c: $ff
    ld [bc], a                                    ; $471d: $02
    sbc b                                         ; $471e: $98
    stop                                          ; $471f: $10 $00
    add [hl]                                      ; $4721: $86
    ld e, h                                       ; $4722: $5c
    db $f4                                        ; $4723: $f4
    ld e, b                                       ; $4724: $58
    ld hl, sp+$50                                 ; $4725: $f8 $50
    ldh a, [rSC]                                  ; $4727: $f0 $02
    ldh [$86], a                                  ; $4729: $e0 $86
    jp nc, $fdf2                                  ; $472b: $d2 $f2 $fd

    rst $38                                       ; $472e: $ff
    and a                                         ; $472f: $a7
    rst $38                                       ; $4730: $ff
    ld [bc], a                                    ; $4731: $02
    ld a, b                                       ; $4732: $78
    stop                                          ; $4733: $10 $00
    rst $38                                       ; $4735: $ff
    rlca                                          ; $4736: $07
    ld bc, $07f8                                  ; $4737: $01 $f8 $07
    ld a, [c]                                     ; $473a: $f2
    ld bc, $ffec                                  ; $473b: $01 $ec $ff
    add e                                         ; $473e: $83
    ld [hl], $00                                  ; $473f: $36 $00
    ld b, l                                       ; $4741: $45
    stop                                          ; $4742: $10 $00
    add e                                         ; $4744: $83
    ld a, [bc]                                    ; $4745: $0a
    nop                                           ; $4746: $00
    inc b                                         ; $4747: $04
    ld a, [bc]                                    ; $4748: $0a
    nop                                           ; $4749: $00
    rst $38                                       ; $474a: $ff
    rrca                                          ; $474b: $0f
    dec b                                         ; $474c: $05
    ld hl, sp+$07                                 ; $474d: $f8 $07
    ld a, [c]                                     ; $474f: $f2
    ld bc, $fbeb                                  ; $4750: $01 $eb $fb
    db $eb                                        ; $4753: $eb
    nop                                           ; $4754: $00
    ei                                            ; $4755: $fb
    di                                            ; $4756: $f3
    ei                                            ; $4757: $fb
    ei                                            ; $4758: $fb
    ei                                            ; $4759: $fb
    inc bc                                        ; $475a: $03
    ld [bc], a                                    ; $475b: $02
    inc bc                                        ; $475c: $03
    ld [bc], a                                    ; $475d: $02
    inc b                                         ; $475e: $04
    ld [bc], a                                    ; $475f: $02
    dec bc                                        ; $4760: $0b
    adc h                                         ; $4761: $8c
    rrca                                          ; $4762: $0f
    inc c                                         ; $4763: $0c
    rrca                                          ; $4764: $0f
    dec bc                                        ; $4765: $0b
    rrca                                          ; $4766: $0f
    inc c                                         ; $4767: $0c
    rrca                                          ; $4768: $0f
    inc c                                         ; $4769: $0c
    rlca                                          ; $476a: $07
    inc b                                         ; $476b: $04
    inc bc                                        ; $476c: $03
    ld [bc], a                                    ; $476d: $02
    ld [bc], a                                    ; $476e: $02
    rlca                                          ; $476f: $07
    ld [bc], a                                    ; $4770: $02
    rrca                                          ; $4771: $0f
    adc d                                         ; $4772: $8a
    add hl, bc                                    ; $4773: $09
    rrca                                          ; $4774: $0f
    inc sp                                        ; $4775: $33
    ccf                                           ; $4776: $3f
    ld c, a                                       ; $4777: $4f
    ld a, a                                       ; $4778: $7f
    ld l, a                                       ; $4779: $6f
    ld e, a                                       ; $477a: $5f
    rst $38                                       ; $477b: $ff
    cp a                                          ; $477c: $bf
    ld [bc], a                                    ; $477d: $02
    inc c                                         ; $477e: $0c
    ld [bc], a                                    ; $477f: $02
    ld [de], a                                    ; $4780: $12
    ld [bc], a                                    ; $4781: $02
    dec d                                         ; $4782: $15
    adc h                                         ; $4783: $8c
    rra                                           ; $4784: $1f
    dec bc                                        ; $4785: $0b
    rra                                           ; $4786: $1f
    rla                                           ; $4787: $17
    rra                                           ; $4788: $1f
    ld de, $0b1f                                  ; $4789: $11 $1f $0b
    ld e, $1a                                     ; $478c: $1e $1a
    ld e, $06                                     ; $478e: $1e $06
    ld [bc], a                                    ; $4790: $02
    ld e, $02                                     ; $4791: $1e $02
    ld a, [bc]                                    ; $4793: $0a
    ld [bc], a                                    ; $4794: $02
    ld d, $88                                     ; $4795: $16 $88
    ld a, [bc]                                    ; $4797: $0a
    ld e, $16                                     ; $4798: $1e $16
    ld e, $17                                     ; $479a: $1e $17
    rra                                           ; $479c: $1f
    rla                                           ; $479d: $17
    rra                                           ; $479e: $1f
    inc b                                         ; $479f: $04
    nop                                           ; $47a0: $00
    ld [bc], a                                    ; $47a1: $02
    ld l, b                                       ; $47a2: $68
    add [hl]                                      ; $47a3: $86
    rst $18                                       ; $47a4: $df
    or a                                          ; $47a5: $b7
    ld h, l                                       ; $47a6: $65
    ld e, e                                       ; $47a7: $5b
    sbc $ae                                       ; $47a8: $de $ae
    ld [bc], a                                    ; $47aa: $02
    ld d, b                                       ; $47ab: $50
    ld [de], a                                    ; $47ac: $12
    nop                                           ; $47ad: $00
    ld [bc], a                                    ; $47ae: $02
    ld c, a                                       ; $47af: $4f
    inc b                                         ; $47b0: $04
    rra                                           ; $47b1: $1f
    add [hl]                                      ; $47b2: $86
    cp l                                          ; $47b3: $bd
    rst $38                                       ; $47b4: $ff
    rst $20                                       ; $47b5: $e7
    rst $38                                       ; $47b6: $ff
    dec a                                         ; $47b7: $3d
    ccf                                           ; $47b8: $3f
    ld [bc], a                                    ; $47b9: $02
    rrca                                          ; $47ba: $0f
    ld [de], a                                    ; $47bb: $12
    nop                                           ; $47bc: $00
    add [hl]                                      ; $47bd: $86
    ld e, h                                       ; $47be: $5c
    db $f4                                        ; $47bf: $f4
    ld e, b                                       ; $47c0: $58
    ld hl, sp+$50                                 ; $47c1: $f8 $50
    ldh a, [rSC]                                  ; $47c3: $f0 $02
    ld [c], a                                     ; $47c5: $e2
    add h                                         ; $47c6: $84
    cp l                                          ; $47c7: $bd
    rst $38                                       ; $47c8: $ff
    rst $20                                       ; $47c9: $e7
    rst $38                                       ; $47ca: $ff
    ld [bc], a                                    ; $47cb: $02
    jr jr_0df_47e0                                ; $47cc: $18 $12

    nop                                           ; $47ce: $00
    rst $38                                       ; $47cf: $ff
    rlca                                          ; $47d0: $07
    ld bc, $07f8                                  ; $47d1: $01 $f8 $07
    ld a, [c]                                     ; $47d4: $f2
    ld bc, $ffec                                  ; $47d5: $01 $ec $ff
    add e                                         ; $47d8: $83
    ld [hl], $00                                  ; $47d9: $36 $00
    ld b, l                                       ; $47db: $45
    stop                                          ; $47dc: $10 $00
    add e                                         ; $47de: $83
    ld a, [bc]                                    ; $47df: $0a

jr_0df_47e0:
    nop                                           ; $47e0: $00
    inc b                                         ; $47e1: $04
    ld a, [bc]                                    ; $47e2: $0a
    nop                                           ; $47e3: $00
    rst $38                                       ; $47e4: $ff
    rrca                                          ; $47e5: $0f
    dec b                                         ; $47e6: $05
    ld hl, sp+$07                                 ; $47e7: $f8 $07
    ld a, [c]                                     ; $47e9: $f2
    ld bc, $fceb                                  ; $47ea: $01 $eb $fc
    db $eb                                        ; $47ed: $eb
    nop                                           ; $47ee: $00
    ei                                            ; $47ef: $fb
    di                                            ; $47f0: $f3
    ei                                            ; $47f1: $fb
    ei                                            ; $47f2: $fb
    ei                                            ; $47f3: $fb
    inc bc                                        ; $47f4: $03
    ld [bc], a                                    ; $47f5: $02
    ld b, $02                                     ; $47f6: $06 $02
    add hl, bc                                    ; $47f8: $09
    ld [bc], a                                    ; $47f9: $02
    rla                                           ; $47fa: $17
    adc h                                         ; $47fb: $8c
    rra                                           ; $47fc: $1f
    jr jr_0df_481e                                ; $47fd: $18 $1f

    rla                                           ; $47ff: $17
    rra                                           ; $4800: $1f
    add hl, de                                    ; $4801: $19
    rra                                           ; $4802: $1f
    jr jr_0df_4814                                ; $4803: $18 $0f

    add hl, bc                                    ; $4805: $09
    rlca                                          ; $4806: $07
    inc b                                         ; $4807: $04
    ld [bc], a                                    ; $4808: $02
    rrca                                          ; $4809: $0f
    ld [bc], a                                    ; $480a: $02
    ld e, $87                                     ; $480b: $1e $87
    inc de                                        ; $480d: $13
    rra                                           ; $480e: $1f
    ld h, $3f                                     ; $480f: $26 $3f
    ld c, a                                       ; $4811: $4f
    ld a, a                                       ; $4812: $7f
    sbc a                                         ; $4813: $9f

jr_0df_4814:
    ld [bc], a                                    ; $4814: $02
    rst $38                                       ; $4815: $ff
    add c                                         ; $4816: $81
    cp a                                          ; $4817: $bf
    ld [bc], a                                    ; $4818: $02
    inc c                                         ; $4819: $0c
    ld [bc], a                                    ; $481a: $02
    ld [bc], a                                    ; $481b: $02
    ld [bc], a                                    ; $481c: $02
    dec b                                         ; $481d: $05

jr_0df_481e:
    adc h                                         ; $481e: $8c
    rrca                                          ; $481f: $0f
    dec bc                                        ; $4820: $0b
    rrca                                          ; $4821: $0f
    rlca                                          ; $4822: $07
    rrca                                          ; $4823: $0f
    ld bc, $0b0f                                  ; $4824: $01 $0f $0b
    ld c, $0a                                     ; $4827: $0e $0a
    ld c, $06                                     ; $4829: $0e $06
    ld [bc], a                                    ; $482b: $02
    ld c, $02                                     ; $482c: $0e $02
    ld a, [bc]                                    ; $482e: $0a
    ld [bc], a                                    ; $482f: $02
    ld b, $88                                     ; $4830: $06 $88
    ld a, [bc]                                    ; $4832: $0a
    ld c, $06                                     ; $4833: $0e $06
    ld c, $07                                     ; $4835: $0e $07
    rrca                                          ; $4837: $0f
    rlca                                          ; $4838: $07
    rrca                                          ; $4839: $0f
    ld [bc], a                                    ; $483a: $02
    ld l, b                                       ; $483b: $68
    add [hl]                                      ; $483c: $86
    rst $18                                       ; $483d: $df
    or a                                          ; $483e: $b7
    ld h, l                                       ; $483f: $65
    ld e, e                                       ; $4840: $5b
    sbc $ae                                       ; $4841: $de $ae
    ld [bc], a                                    ; $4843: $02
    ld d, b                                       ; $4844: $50
    ld d, $00                                     ; $4845: $16 $00
    adc h                                         ; $4847: $8c
    rst $28                                       ; $4848: $ef
    xor a                                         ; $4849: $af
    db $fd                                        ; $484a: $fd
    rst $38                                       ; $484b: $ff
    rst $20                                       ; $484c: $e7
    rst $38                                       ; $484d: $ff
    ld a, $3f                                     ; $484e: $3e $3f
    ld e, e                                       ; $4850: $5b
    ld a, a                                       ; $4851: $7f
    dec a                                         ; $4852: $3d
    ccf                                           ; $4853: $3f
    ld [bc], a                                    ; $4854: $02
    rrca                                          ; $4855: $0f
    ld [de], a                                    ; $4856: $12
    nop                                           ; $4857: $00
    add [hl]                                      ; $4858: $86
    ld e, [hl]                                    ; $4859: $5e
    or $dd                                        ; $485a: $f6 $dd
    rst $38                                       ; $485c: $ff
    and a                                         ; $485d: $a7
    rst $38                                       ; $485e: $ff
    ld [bc], a                                    ; $485f: $02
    ld hl, sp-$7e                                 ; $4860: $f8 $82
    ret nc                                        ; $4862: $d0

    ldh a, [rSC]                                  ; $4863: $f0 $02
    ldh [rNR14], a                                ; $4865: $e0 $14
    nop                                           ; $4867: $00
    rst $38                                       ; $4868: $ff
    rlca                                          ; $4869: $07
    ld bc, $07f8                                  ; $486a: $01 $f8 $07
    ld a, [c]                                     ; $486d: $f2
    ld bc, $ffec                                  ; $486e: $01 $ec $ff
    add e                                         ; $4871: $83
    ld [hl], $00                                  ; $4872: $36 $00
    ld b, l                                       ; $4874: $45
    stop                                          ; $4875: $10 $00
    add e                                         ; $4877: $83
    ld a, [bc]                                    ; $4878: $0a
    nop                                           ; $4879: $00
    inc b                                         ; $487a: $04
    ld a, [bc]                                    ; $487b: $0a
    nop                                           ; $487c: $00
    rst $38                                       ; $487d: $ff
    rrca                                          ; $487e: $0f

Call_0df_487f:
    dec b                                         ; $487f: $05
    ld hl, sp+$07                                 ; $4880: $f8 $07
    ld a, [c]                                     ; $4882: $f2
    ld bc, $f3fa                                  ; $4883: $01 $fa $f3
    db $eb                                        ; $4886: $eb
    ei                                            ; $4887: $fb
    ei                                            ; $4888: $fb
    ei                                            ; $4889: $fb
    db $eb                                        ; $488a: $eb
    inc bc                                        ; $488b: $03
    ei                                            ; $488c: $fb
    inc bc                                        ; $488d: $03
    ld [bc], a                                    ; $488e: $02
    ld l, b                                       ; $488f: $68
    add [hl]                                      ; $4890: $86
    rst $18                                       ; $4891: $df
    or a                                          ; $4892: $b7
    ld h, l                                       ; $4893: $65
    ld e, e                                       ; $4894: $5b
    sbc $ae                                       ; $4895: $de $ae
    ld [bc], a                                    ; $4897: $02
    ld d, b                                       ; $4898: $50
    ld d, $00                                     ; $4899: $16 $00
    ld [bc], a                                    ; $489b: $02
    inc bc                                        ; $489c: $03
    ld [bc], a                                    ; $489d: $02
    inc b                                         ; $489e: $04
    ld [bc], a                                    ; $489f: $02
    dec bc                                        ; $48a0: $0b
    adc h                                         ; $48a1: $8c
    rrca                                          ; $48a2: $0f
    inc c                                         ; $48a3: $0c
    rrca                                          ; $48a4: $0f
    dec bc                                        ; $48a5: $0b
    rrca                                          ; $48a6: $0f
    inc c                                         ; $48a7: $0c
    rrca                                          ; $48a8: $0f
    inc c                                         ; $48a9: $0c
    rlca                                          ; $48aa: $07
    inc b                                         ; $48ab: $04
    inc bc                                        ; $48ac: $03
    ld [bc], a                                    ; $48ad: $02
    ld [bc], a                                    ; $48ae: $02
    rlca                                          ; $48af: $07
    ld [bc], a                                    ; $48b0: $02
    rrca                                          ; $48b1: $0f
    adc [hl]                                      ; $48b2: $8e
    add hl, bc                                    ; $48b3: $09
    rrca                                          ; $48b4: $0f
    dec de                                        ; $48b5: $1b
    rra                                           ; $48b6: $1f
    rla                                           ; $48b7: $17
    rra                                           ; $48b8: $1f
    cpl                                           ; $48b9: $2f
    ccf                                           ; $48ba: $3f
    ld c, a                                       ; $48bb: $4f
    ld a, a                                       ; $48bc: $7f
    db $fd                                        ; $48bd: $fd
    rst $08                                       ; $48be: $cf
    rst $30                                       ; $48bf: $f7
    rst $38                                       ; $48c0: $ff
    ld [bc], a                                    ; $48c1: $02
    rra                                           ; $48c2: $1f
    add [hl]                                      ; $48c3: $86
    ld a, $3f                                     ; $48c4: $3e $3f
    ld e, e                                       ; $48c6: $5b
    ld a, a                                       ; $48c7: $7f
    dec a                                         ; $48c8: $3d
    ccf                                           ; $48c9: $3f
    ld [bc], a                                    ; $48ca: $02
    rrca                                          ; $48cb: $0f
    ld [de], a                                    ; $48cc: $12
    nop                                           ; $48cd: $00
    ld [bc], a                                    ; $48ce: $02
    ld h, b                                       ; $48cf: $60
    ld [bc], a                                    ; $48d0: $02
    sub b                                         ; $48d1: $90
    ld [bc], a                                    ; $48d2: $02
    xor b                                         ; $48d3: $a8
    adc h                                         ; $48d4: $8c
    ld hl, sp+$58                                 ; $48d5: $f8 $58
    ld hl, sp-$48                                 ; $48d7: $f8 $b8
    ld hl, sp-$78                                 ; $48d9: $f8 $88
    ld hl, sp+$58                                 ; $48db: $f8 $58
    ldh a, [$d0]                                  ; $48dd: $f0 $d0
    ldh a, [$30]                                  ; $48df: $f0 $30
    ld [bc], a                                    ; $48e1: $02
    ldh a, [rSC]                                  ; $48e2: $f0 $02
    ld d, b                                       ; $48e4: $50
    ld [bc], a                                    ; $48e5: $02
    or b                                          ; $48e6: $b0
    adc [hl]                                      ; $48e7: $8e
    ld d, b                                       ; $48e8: $50
    ldh a, [$b0]                                  ; $48e9: $f0 $b0
    ldh a, [$b8]                                  ; $48eb: $f0 $b8
    ld hl, sp-$46                                 ; $48ed: $f8 $ba
    ld a, [$ffdd]                                 ; $48ef: $fa $dd $ff
    and a                                         ; $48f2: $a7
    rst $38                                       ; $48f3: $ff
    ld a, b                                       ; $48f4: $78
    ld hl, sp+$02                                 ; $48f5: $f8 $02
    ldh [$82], a                                  ; $48f7: $e0 $82
    ret nc                                        ; $48f9: $d0

    ldh a, [rSC]                                  ; $48fa: $f0 $02
    ldh [rNR14], a                                ; $48fc: $e0 $14
    nop                                           ; $48fe: $00
    rst $38                                       ; $48ff: $ff
    rlca                                          ; $4900: $07
    ld bc, $07f8                                  ; $4901: $01 $f8 $07
    ld a, [c]                                     ; $4904: $f2
    ld bc, $ffec                                  ; $4905: $01 $ec $ff
    add e                                         ; $4908: $83
    ld [hl], $00                                  ; $4909: $36 $00
    ld b, l                                       ; $490b: $45
    stop                                          ; $490c: $10 $00
    add e                                         ; $490e: $83
    ld a, [bc]                                    ; $490f: $0a
    nop                                           ; $4910: $00
    inc b                                         ; $4911: $04
    ld a, [bc]                                    ; $4912: $0a
    nop                                           ; $4913: $00
    rst $38                                       ; $4914: $ff
    dec c                                         ; $4915: $0d
    inc b                                         ; $4916: $04
    ld hl, sp+$07                                 ; $4917: $f8 $07
    ld a, [c]                                     ; $4919: $f2
    ld bc, $f4f7                                  ; $491a: $01 $f7 $f4
    db $ed                                        ; $491d: $ed
    db $fc                                        ; $491e: $fc
    db $ed                                        ; $491f: $ed
    inc b                                         ; $4920: $04
    db $fd                                        ; $4921: $fd
    ld a, [$0702]                                 ; $4922: $fa $02 $07
    sub d                                         ; $4925: $92
    dec bc                                        ; $4926: $0b
    rrca                                          ; $4927: $0f
    rla                                           ; $4928: $17
    rra                                           ; $4929: $1f
    rla                                           ; $492a: $17
    rra                                           ; $492b: $1f
    ld l, e                                       ; $492c: $6b
    ld l, a                                       ; $492d: $6f
    sbc $be                                       ; $492e: $de $be
    ld l, e                                       ; $4930: $6b
    ld d, a                                       ; $4931: $57
    rst $18                                       ; $4932: $df
    xor a                                         ; $4933: $af
    ld d, [hl]                                    ; $4934: $56
    ld d, a                                       ; $4935: $57
    dec b                                         ; $4936: $05
    rlca                                          ; $4937: $07
    ld [bc], a                                    ; $4938: $02
    ld b, $0a                                     ; $4939: $06 $0a
    nop                                           ; $493b: $00
    ld [bc], a                                    ; $493c: $02
    inc bc                                        ; $493d: $03
    ld [bc], a                                    ; $493e: $02
    inc b                                         ; $493f: $04
    ld [bc], a                                    ; $4940: $02
    add hl, bc                                    ; $4941: $09
    ld [bc], a                                    ; $4942: $02
    ld a, [bc]                                    ; $4943: $0a
    ld [bc], a                                    ; $4944: $02
    dec c                                         ; $4945: $0d
    ld [bc], a                                    ; $4946: $02
    rlca                                          ; $4947: $07
    add h                                         ; $4948: $84
    ccf                                           ; $4949: $3f
    dec a                                         ; $494a: $3d
    daa                                           ; $494b: $27
    ccf                                           ; $494c: $3f
    ld [bc], a                                    ; $494d: $02
    dec e                                         ; $494e: $1d
    adc [hl]                                      ; $494f: $8e
    ld l, d                                       ; $4950: $6a
    ld a, [hl]                                    ; $4951: $7e
    cp e                                          ; $4952: $bb
    rst $38                                       ; $4953: $ff
    ld a, [c]                                     ; $4954: $f2
    rst $38                                       ; $4955: $ff
    ld hl, sp-$01                                 ; $4956: $f8 $ff
    db $fd                                        ; $4958: $fd
    rst $38                                       ; $4959: $ff
    db $fd                                        ; $495a: $fd
    rst $38                                       ; $495b: $ff
    rst $18                                       ; $495c: $df
    rst $38                                       ; $495d: $ff
    ld [bc], a                                    ; $495e: $02
    ldh a, [rSC]                                  ; $495f: $f0 $02
    ld l, b                                       ; $4961: $68
    ld [bc], a                                    ; $4962: $02
    jr c, @-$72                                   ; $4963: $38 $8c

    ldh a, [$d0]                                  ; $4965: $f0 $d0
    ld hl, sp+$68                                 ; $4967: $f8 $68
    db $fc                                        ; $4969: $fc
    inc b                                         ; $496a: $04
    ld hl, sp+$08                                 ; $496b: $f8 $08
    ld hl, sp+$18                                 ; $496d: $f8 $18
    ld hl, sp-$78                                 ; $496f: $f8 $88
    ld [bc], a                                    ; $4971: $02
    ldh a, [rSC]                                  ; $4972: $f0 $02
    add b                                         ; $4974: $80
    add d                                         ; $4975: $82
    ld h, a                                       ; $4976: $67
    rst $20                                       ; $4977: $e7
    ld [bc], a                                    ; $4978: $02
    rst $38                                       ; $4979: $ff
    add h                                         ; $497a: $84
    cp $9a                                        ; $497b: $fe $9a

jr_0df_497d:
    db $fc                                        ; $497d: $fc
    or h                                          ; $497e: $b4
    ld [bc], a                                    ; $497f: $02
    add sp, -$7c                                  ; $4980: $e8 $84
    dec sp                                        ; $4982: $3b
    ccf                                           ; $4983: $3f
    ld h, $3e                                     ; $4984: $26 $3e
    ld [bc], a                                    ; $4986: $02
    inc a                                         ; $4987: $3c
    ld a, [de]                                    ; $4988: $1a
    nop                                           ; $4989: $00
    rst $38                                       ; $498a: $ff
    rlca                                          ; $498b: $07
    ld bc, $07f8                                  ; $498c: $01 $f8 $07
    ld a, [c]                                     ; $498f: $f2
    ld bc, $00ee                                  ; $4990: $01 $ee $00
    add a                                         ; $4993: $87
    add hl, sp                                    ; $4994: $39
    nop                                           ; $4995: $00
    ld l, h                                       ; $4996: $6c
    nop                                           ; $4997: $00
    ld d, b                                       ; $4998: $50
    nop                                           ; $4999: $00
    jr nz, jr_0df_49a4                            ; $499a: $20 $08

    nop                                           ; $499c: $00
    add e                                         ; $499d: $83
    jr nz, jr_0df_49a0                            ; $499e: $20 $00

jr_0df_49a0:
    db $10                                        ; $49a0: $10
    ld c, $00                                     ; $49a1: $0e $00
    rst $38                                       ; $49a3: $ff

jr_0df_49a4:
    dec c                                         ; $49a4: $0d
    inc b                                         ; $49a5: $04
    ld hl, sp+$07                                 ; $49a6: $f8 $07
    ld a, [c]                                     ; $49a8: $f2
    ld bc, $f4f8                                  ; $49a9: $01 $f8 $f4
    db $ed                                        ; $49ac: $ed
    db $fc                                        ; $49ad: $fc
    db $ed                                        ; $49ae: $ed
    inc b                                         ; $49af: $04
    db $fd                                        ; $49b0: $fd
    ld a, [$0c02]                                 ; $49b1: $fa $02 $0c
    sub b                                         ; $49b4: $90
    inc de                                        ; $49b5: $13
    rra                                           ; $49b6: $1f
    rla                                           ; $49b7: $17
    rra                                           ; $49b8: $1f
    ld [hl], a                                    ; $49b9: $77
    ld a, a                                       ; $49ba: $7f
    db $db                                        ; $49bb: $db
    cp a                                          ; $49bc: $bf
    ld l, a                                       ; $49bd: $6f
    ld d, a                                       ; $49be: $57
    rst $18                                       ; $49bf: $df
    xor a                                         ; $49c0: $af
    ld d, [hl]                                    ; $49c1: $56
    ld d, a                                       ; $49c2: $57
    dec b                                         ; $49c3: $05
    rlca                                          ; $49c4: $07
    ld [bc], a                                    ; $49c5: $02
    ld b, $0c                                     ; $49c6: $06 $0c
    nop                                           ; $49c8: $00
    ld [bc], a                                    ; $49c9: $02
    inc bc                                        ; $49ca: $03
    ld [bc], a                                    ; $49cb: $02
    inc b                                         ; $49cc: $04
    ld [bc], a                                    ; $49cd: $02
    add hl, bc                                    ; $49ce: $09
    ld [bc], a                                    ; $49cf: $02
    ld a, [bc]                                    ; $49d0: $0a
    ld [bc], a                                    ; $49d1: $02
    dec c                                         ; $49d2: $0d
    ld [bc], a                                    ; $49d3: $02
    rla                                           ; $49d4: $17
    add h                                         ; $49d5: $84
    cpl                                           ; $49d6: $2f
    dec a                                         ; $49d7: $3d
    rla                                           ; $49d8: $17
    rra                                           ; $49d9: $1f
    ld [bc], a                                    ; $49da: $02
    dec e                                         ; $49db: $1d
    adc e                                         ; $49dc: $8b
    ld a, [hl+]                                   ; $49dd: $2a
    ld a, $5b                                     ; $49de: $3e $5b
    ld a, a                                       ; $49e0: $7f
    di                                            ; $49e1: $f3
    rst $38                                       ; $49e2: $ff
    ld hl, sp-$01                                 ; $49e3: $f8 $ff
    ld sp, hl                                     ; $49e5: $f9
    rst $38                                       ; $49e6: $ff
    db $fd                                        ; $49e7: $fd
    inc bc                                        ; $49e8: $03
    rst $38                                       ; $49e9: $ff
    ld [bc], a                                    ; $49ea: $02
    ldh a, [rSC]                                  ; $49eb: $f0 $02
    ld l, b                                       ; $49ed: $68
    ld [bc], a                                    ; $49ee: $02
    jr c, jr_0df_497d                             ; $49ef: $38 $8c

    ldh a, [$d0]                                  ; $49f1: $f0 $d0
    ld hl, sp+$68                                 ; $49f3: $f8 $68
    db $fc                                        ; $49f5: $fc
    inc b                                         ; $49f6: $04
    ld hl, sp+$08                                 ; $49f7: $f8 $08
    ld hl, sp+$18                                 ; $49f9: $f8 $18
    ld hl, sp-$78                                 ; $49fb: $f8 $88
    ld [bc], a                                    ; $49fd: $02
    ldh a, [rSC]                                  ; $49fe: $f0 $02
    add b                                         ; $4a00: $80
    add d                                         ; $4a01: $82
    ld h, a                                       ; $4a02: $67
    rst $20                                       ; $4a03: $e7
    ld [bc], a                                    ; $4a04: $02
    rst $38                                       ; $4a05: $ff
    add h                                         ; $4a06: $84
    cp $9a                                        ; $4a07: $fe $9a
    db $fc                                        ; $4a09: $fc
    or h                                          ; $4a0a: $b4
    ld [bc], a                                    ; $4a0b: $02

jr_0df_4a0c:
    add sp, -$7c                                  ; $4a0c: $e8 $84
    dec sp                                        ; $4a0e: $3b
    ccf                                           ; $4a0f: $3f
    ld h, $3e                                     ; $4a10: $26 $3e
    ld [bc], a                                    ; $4a12: $02
    inc a                                         ; $4a13: $3c
    ld a, [de]                                    ; $4a14: $1a
    nop                                           ; $4a15: $00
    rst $38                                       ; $4a16: $ff
    rlca                                          ; $4a17: $07
    ld bc, $07f8                                  ; $4a18: $01 $f8 $07
    ld a, [c]                                     ; $4a1b: $f2
    ld bc, $00ee                                  ; $4a1c: $01 $ee $00
    add a                                         ; $4a1f: $87
    add hl, sp                                    ; $4a20: $39
    nop                                           ; $4a21: $00
    ld l, h                                       ; $4a22: $6c
    nop                                           ; $4a23: $00
    ld d, b                                       ; $4a24: $50
    nop                                           ; $4a25: $00
    jr nz, jr_0df_4a30                            ; $4a26: $20 $08

    nop                                           ; $4a28: $00
    add e                                         ; $4a29: $83
    jr nz, jr_0df_4a2c                            ; $4a2a: $20 $00

jr_0df_4a2c:
    db $10                                        ; $4a2c: $10
    ld c, $00                                     ; $4a2d: $0e $00
    rst $38                                       ; $4a2f: $ff

jr_0df_4a30:
    dec c                                         ; $4a30: $0d
    inc b                                         ; $4a31: $04
    ld hl, sp+$07                                 ; $4a32: $f8 $07
    ld a, [c]                                     ; $4a34: $f2
    ld bc, $f4f7                                  ; $4a35: $01 $f7 $f4
    db $ed                                        ; $4a38: $ed
    db $fc                                        ; $4a39: $fc
    db $ed                                        ; $4a3a: $ed
    inc b                                         ; $4a3b: $04
    db $fd                                        ; $4a3c: $fd
    ld a, [$0102]                                 ; $4a3d: $fa $02 $01
    add d                                         ; $4a40: $82
    ld [bc], a                                    ; $4a41: $02
    inc bc                                        ; $4a42: $03
    ld [bc], a                                    ; $4a43: $02
    rrca                                          ; $4a44: $0f
    ld [bc], a                                    ; $4a45: $02
    rra                                           ; $4a46: $1f
    adc h                                         ; $4a47: $8c
    ld a, e                                       ; $4a48: $7b
    ld a, a                                       ; $4a49: $7f
    db $dd                                        ; $4a4a: $dd
    cp a                                          ; $4a4b: $bf
    ld l, e                                       ; $4a4c: $6b
    ld d, a                                       ; $4a4d: $57
    rst $18                                       ; $4a4e: $df
    xor a                                         ; $4a4f: $af
    ld d, [hl]                                    ; $4a50: $56
    ld d, a                                       ; $4a51: $57
    dec b                                         ; $4a52: $05
    rlca                                          ; $4a53: $07
    ld [bc], a                                    ; $4a54: $02
    ld b, $0a                                     ; $4a55: $06 $0a
    nop                                           ; $4a57: $00
    ld [bc], a                                    ; $4a58: $02
    inc bc                                        ; $4a59: $03
    ld [bc], a                                    ; $4a5a: $02
    inc b                                         ; $4a5b: $04
    ld [bc], a                                    ; $4a5c: $02
    add hl, bc                                    ; $4a5d: $09
    ld [bc], a                                    ; $4a5e: $02
    ld a, [bc]                                    ; $4a5f: $0a
    ld [bc], a                                    ; $4a60: $02
    dec c                                         ; $4a61: $0d
    ld [bc], a                                    ; $4a62: $02
    rlca                                          ; $4a63: $07
    sub h                                         ; $4a64: $94
    rra                                           ; $4a65: $1f
    dec e                                         ; $4a66: $1d
    scf                                           ; $4a67: $37
    ccf                                           ; $4a68: $3f
    dec l                                         ; $4a69: $2d
    dec a                                         ; $4a6a: $3d
    ld a, [$5bfe]                                 ; $4a6b: $fa $fe $5b
    rst $38                                       ; $4a6e: $ff
    cp d                                          ; $4a6f: $ba
    rst $38                                       ; $4a70: $ff
    ld hl, sp-$01                                 ; $4a71: $f8 $ff
    ld sp, hl                                     ; $4a73: $f9
    rst $38                                       ; $4a74: $ff
    db $fd                                        ; $4a75: $fd
    rst $38                                       ; $4a76: $ff
    rst $18                                       ; $4a77: $df
    rst $38                                       ; $4a78: $ff
    ld [bc], a                                    ; $4a79: $02
    ldh a, [rSC]                                  ; $4a7a: $f0 $02
    ld l, b                                       ; $4a7c: $68
    ld [bc], a                                    ; $4a7d: $02
    jr c, jr_0df_4a0c                             ; $4a7e: $38 $8c

    ldh a, [$d0]                                  ; $4a80: $f0 $d0
    ld hl, sp+$68                                 ; $4a82: $f8 $68
    db $fc                                        ; $4a84: $fc
    inc b                                         ; $4a85: $04
    ld hl, sp+$08                                 ; $4a86: $f8 $08
    ld hl, sp+$18                                 ; $4a88: $f8 $18
    ld hl, sp-$78                                 ; $4a8a: $f8 $88
    ld [bc], a                                    ; $4a8c: $02
    ldh a, [rSC]                                  ; $4a8d: $f0 $02
    add b                                         ; $4a8f: $80
    add d                                         ; $4a90: $82
    ld h, a                                       ; $4a91: $67
    rst $20                                       ; $4a92: $e7
    ld [bc], a                                    ; $4a93: $02
    rst $38                                       ; $4a94: $ff
    add h                                         ; $4a95: $84
    cp $9a                                        ; $4a96: $fe $9a

jr_0df_4a98:
    db $fc                                        ; $4a98: $fc
    or h                                          ; $4a99: $b4
    ld [bc], a                                    ; $4a9a: $02
    add sp, -$7c                                  ; $4a9b: $e8 $84
    dec sp                                        ; $4a9d: $3b
    ccf                                           ; $4a9e: $3f
    ld h, $3e                                     ; $4a9f: $26 $3e
    ld [bc], a                                    ; $4aa1: $02
    inc a                                         ; $4aa2: $3c
    ld a, [de]                                    ; $4aa3: $1a
    nop                                           ; $4aa4: $00
    rst $38                                       ; $4aa5: $ff
    rlca                                          ; $4aa6: $07
    ld bc, $07f8                                  ; $4aa7: $01 $f8 $07
    ld a, [c]                                     ; $4aaa: $f2
    ld bc, $00ee                                  ; $4aab: $01 $ee $00
    add a                                         ; $4aae: $87
    add hl, sp                                    ; $4aaf: $39
    nop                                           ; $4ab0: $00
    ld l, h                                       ; $4ab1: $6c
    nop                                           ; $4ab2: $00
    ld d, b                                       ; $4ab3: $50
    nop                                           ; $4ab4: $00
    jr nz, jr_0df_4abf                            ; $4ab5: $20 $08

    nop                                           ; $4ab7: $00
    add e                                         ; $4ab8: $83
    jr nz, jr_0df_4abb                            ; $4ab9: $20 $00

jr_0df_4abb:
    db $10                                        ; $4abb: $10
    ld c, $00                                     ; $4abc: $0e $00
    rst $38                                       ; $4abe: $ff

jr_0df_4abf:
    rrca                                          ; $4abf: $0f
    dec b                                         ; $4ac0: $05
    ld hl, sp+$07                                 ; $4ac1: $f8 $07
    ld a, [c]                                     ; $4ac3: $f2
    ld bc, $f6f9                                  ; $4ac4: $01 $f9 $f6
    rst $28                                       ; $4ac7: $ef
    cp $ef                                        ; $4ac8: $fe $ef
    inc bc                                        ; $4aca: $03
    rst $38                                       ; $4acb: $ff
    cp $ff                                        ; $4acc: $fe $ff
    inc b                                         ; $4ace: $04
    inc b                                         ; $4acf: $04
    ld bc, $6a8a                                  ; $4ad0: $01 $8a $6a
    ld l, e                                       ; $4ad3: $6b
    rst $10                                       ; $4ad4: $d7
    cp [hl]                                       ; $4ad5: $be
    ld l, e                                       ; $4ad6: $6b
    ld d, a                                       ; $4ad7: $57
    db $dd                                        ; $4ad8: $dd
    cp l                                          ; $4ad9: $bd
    ld h, d                                       ; $4ada: $62
    ld h, e                                       ; $4adb: $63
    ld [bc], a                                    ; $4adc: $02
    ld bc, $0010                                  ; $4add: $01 $10 $00
    ld [bc], a                                    ; $4ae0: $02
    dec c                                         ; $4ae1: $0d
    ld [bc], a                                    ; $4ae2: $02
    ld [de], a                                    ; $4ae3: $12
    ld [bc], a                                    ; $4ae4: $02
    ld l, $9a                                     ; $4ae5: $2e $9a
    ccf                                           ; $4ae7: $3f
    ld sp, $2e3f                                  ; $4ae8: $31 $3f $2e
    ccf                                           ; $4aeb: $3f
    ld [hl-], a                                   ; $4aec: $32
    ccf                                           ; $4aed: $3f
    ld sp, $333f                                  ; $4aee: $31 $3f $33
    rst $18                                       ; $4af1: $df
    ld hl, sp-$66                                 ; $4af2: $f8 $9a
    ld a, [$fd7d]                                 ; $4af4: $fa $7d $fd
    ld a, c                                       ; $4af7: $79
    rst $38                                       ; $4af8: $ff
    rst $08                                       ; $4af9: $cf
    ld a, a                                       ; $4afa: $7f
    ei                                            ; $4afb: $fb
    ld a, a                                       ; $4afc: $7f
    push af                                       ; $4afd: $f5
    rst $38                                       ; $4afe: $ff
    rst $30                                       ; $4aff: $f7
    rst $38                                       ; $4b00: $ff
    ld [bc], a                                    ; $4b01: $02
    db $10                                        ; $4b02: $10
    ld [bc], a                                    ; $4b03: $02
    ld [$1402], sp                                ; $4b04: $08 $02 $14
    add d                                         ; $4b07: $82
    inc e                                         ; $4b08: $1c
    inc c                                         ; $4b09: $0c
    inc bc                                        ; $4b0a: $03
    inc e                                         ; $4b0b: $1c
    add l                                         ; $4b0c: $85
    inc b                                         ; $4b0d: $04
    inc e                                         ; $4b0e: $1c
    inc c                                         ; $4b0f: $0c
    jr jr_0df_4b1a                                ; $4b10: $18 $08

    ld [bc], a                                    ; $4b12: $02
    db $10                                        ; $4b13: $10
    ld [bc], a                                    ; $4b14: $02
    jr jr_0df_4a98                                ; $4b15: $18 $81

    inc b                                         ; $4b17: $04
    inc bc                                        ; $4b18: $03
    inc e                                         ; $4b19: $1c

jr_0df_4b1a:
    adc h                                         ; $4b1a: $8c
    inc d                                         ; $4b1b: $14
    inc e                                         ; $4b1c: $1c
    ld d, $1e                                     ; $4b1d: $16 $1e
    ld a, [de]                                    ; $4b1f: $1a
    ld e, $19                                     ; $4b20: $1e $19
    rra                                           ; $4b22: $1f
    db $fd                                        ; $4b23: $fd
    rst $38                                       ; $4b24: $ff
    adc a                                         ; $4b25: $8f
    rst $38                                       ; $4b26: $ff
    ld [bc], a                                    ; $4b27: $02
    ldh a, [rNR30]                                ; $4b28: $f0 $1a
    nop                                           ; $4b2a: $00
    add h                                         ; $4b2b: $84
    ccf                                           ; $4b2c: $3f
    add hl, sp                                    ; $4b2d: $39
    rra                                           ; $4b2e: $1f
    rla                                           ; $4b2f: $17
    ld [bc], a                                    ; $4b30: $02
    ld [$001a], sp                                ; $4b31: $08 $1a $00
    rst $38                                       ; $4b34: $ff
    rlca                                          ; $4b35: $07
    ld bc, $07f8                                  ; $4b36: $01 $f8 $07
    ld a, [c]                                     ; $4b39: $f2
    ld bc, $00f0                                  ; $4b3a: $01 $f0 $00
    add e                                         ; $4b3d: $83
    ld [hl], $00                                  ; $4b3e: $36 $00
    ld b, l                                       ; $4b40: $45
    ld c, $00                                     ; $4b41: $0e $00
    add e                                         ; $4b43: $83
    inc d                                         ; $4b44: $14
    nop                                           ; $4b45: $00
    ld [$000c], sp                                ; $4b46: $08 $0c $00
    rst $38                                       ; $4b49: $ff
    rrca                                          ; $4b4a: $0f
    dec b                                         ; $4b4b: $05
    ld hl, sp+$07                                 ; $4b4c: $f8 $07
    ld a, [c]                                     ; $4b4e: $f2
    ld bc, $fceb                                  ; $4b4f: $01 $eb $fc
    db $ec                                        ; $4b52: $ec
    cp $fb                                        ; $4b53: $fe $fb
    di                                            ; $4b55: $f3
    ei                                            ; $4b56: $fb
    ei                                            ; $4b57: $fb
    ei                                            ; $4b58: $fb
    inc bc                                        ; $4b59: $03
    ld [bc], a                                    ; $4b5a: $02
    rra                                           ; $4b5b: $1f
    ld [bc], a                                    ; $4b5c: $02
    inc h                                         ; $4b5d: $24
    ld [bc], a                                    ; $4b5e: $02
    ld b, e                                       ; $4b5f: $43
    adc h                                         ; $4b60: $8c
    ld d, a                                       ; $4b61: $57
    ld d, l                                       ; $4b62: $55
    ld h, a                                       ; $4b63: $67
    ld h, h                                       ; $4b64: $64
    ld a, [hl]                                    ; $4b65: $7e
    ld a, d                                       ; $4b66: $7a
    ld e, a                                       ; $4b67: $5f
    ld d, b                                       ; $4b68: $50
    rst $18                                       ; $4b69: $df
    ret c                                         ; $4b6a: $d8

    adc a                                         ; $4b6b: $8f
    adc c                                         ; $4b6c: $89
    ld [bc], a                                    ; $4b6d: $02
    cp [hl]                                       ; $4b6e: $be
    adc h                                         ; $4b6f: $8c
    ld [$adfa], a                                 ; $4b70: $ea $fa $ad
    db $fd                                        ; $4b73: $fd
    ld l, e                                       ; $4b74: $6b
    ld a, a                                       ; $4b75: $7f
    ld e, l                                       ; $4b76: $5d
    ld a, a                                       ; $4b77: $7f
    ld c, l                                       ; $4b78: $4d
    ld a, a                                       ; $4b79: $7f
    db $dd                                        ; $4b7a: $dd
    rst $38                                       ; $4b7b: $ff
    ld [bc], a                                    ; $4b7c: $02
    ld [bc], a                                    ; $4b7d: $02
    ld [bc], a                                    ; $4b7e: $02
    ld bc, $0206                                  ; $4b7f: $01 $06 $02
    add d                                         ; $4b82: $82
    inc bc                                        ; $4b83: $03
    ld bc, $0202                                  ; $4b84: $01 $02 $02
    stop                                          ; $4b87: $10 $00
    add d                                         ; $4b89: $82
    db $f4                                        ; $4b8a: $f4
    cp h                                          ; $4b8b: $bc
    ld c, $00                                     ; $4b8c: $0e $00
    ld [bc], a                                    ; $4b8e: $02
    ld d, b                                       ; $4b8f: $50
    add [hl]                                      ; $4b90: $86
    sbc $ae                                       ; $4b91: $de $ae
    ld h, l                                       ; $4b93: $65
    ld e, e                                       ; $4b94: $5b
    rst $18                                       ; $4b95: $df
    or a                                          ; $4b96: $b7
    ld [bc], a                                    ; $4b97: $02
    ld l, b                                       ; $4b98: $68
    ld [$8c00], sp                                ; $4b99: $08 $00 $8c
    ld b, b                                       ; $4b9c: $40
    ld h, b                                       ; $4b9d: $60
    ld a, [hl]                                    ; $4b9e: $7e
    ld a, a                                       ; $4b9f: $7f
    ld a, $3f                                     ; $4ba0: $3e $3f
    ld a, l                                       ; $4ba2: $7d
    ld a, a                                       ; $4ba3: $7f
    cp e                                          ; $4ba4: $bb
    rst $38                                       ; $4ba5: $ff
    ld e, h                                       ; $4ba6: $5c
    ld a, a                                       ; $4ba7: $7f
    ld [bc], a                                    ; $4ba8: $02
    ccf                                           ; $4ba9: $3f
    ld [bc], a                                    ; $4baa: $02
    nop                                           ; $4bab: $00
    ld [bc], a                                    ; $4bac: $02
    inc [hl]                                      ; $4bad: $34
    add d                                         ; $4bae: $82
    adc e                                         ; $4baf: $8b
    rst $38                                       ; $4bb0: $ff
    ld [bc], a                                    ; $4bb1: $02
    rst $30                                       ; $4bb2: $f7
    inc c                                         ; $4bb3: $0c
    nop                                           ; $4bb4: $00
    ld a, [bc]                                    ; $4bb5: $0a
    add b                                         ; $4bb6: $80
    ld [bc], a                                    ; $4bb7: $02
    ret nz                                        ; $4bb8: $c0

    ld [bc], a                                    ; $4bb9: $02
    nop                                           ; $4bba: $00
    ld [bc], a                                    ; $4bbb: $02
    ld [hl-], a                                   ; $4bbc: $32
    add h                                         ; $4bbd: $84
    call Call_0df_7fff                            ; $4bbe: $cd $ff $7f
    rst $38                                       ; $4bc1: $ff
    ld [bc], a                                    ; $4bc2: $02
    add b                                         ; $4bc3: $80
    ld [$ff00], sp                                ; $4bc4: $08 $00 $ff
    rlca                                          ; $4bc7: $07
    ld bc, $07f8                                  ; $4bc8: $01 $f8 $07
    ld a, [c]                                     ; $4bcb: $f2
    ld bc, $fdec                                  ; $4bcc: $01 $ec $fd
    sub l                                         ; $4bcf: $95
    nop                                           ; $4bd0: $00
    ld [hl], $00                                  ; $4bd1: $36 $00
    ld a, c                                       ; $4bd3: $79
    nop                                           ; $4bd4: $00
    ld d, b                                       ; $4bd5: $50
    nop                                           ; $4bd6: $00
    jr nc, jr_0df_4bd9                            ; $4bd7: $30 $00

jr_0df_4bd9:
    ld [bc], a                                    ; $4bd9: $02
    nop                                           ; $4bda: $00
    ld b, b                                       ; $4bdb: $40
    nop                                           ; $4bdc: $00
    ld b, b                                       ; $4bdd: $40
    nop                                           ; $4bde: $00
    ldh [rP1], a                                  ; $4bdf: $e0 $00
    add b                                         ; $4be1: $80
    ld [$0400], sp                                ; $4be2: $08 $00 $04
    dec bc                                        ; $4be5: $0b
    nop                                           ; $4be6: $00
    rst $38                                       ; $4be7: $ff
    rrca                                          ; $4be8: $0f
    dec b                                         ; $4be9: $05
    ld hl, sp+$07                                 ; $4bea: $f8 $07
    ld a, [c]                                     ; $4bec: $f2
    ld bc, $fcec                                  ; $4bed: $01 $ec $fc
    db $ec                                        ; $4bf0: $ec
    nop                                           ; $4bf1: $00
    db $fc                                        ; $4bf2: $fc
    di                                            ; $4bf3: $f3
    db $fc                                        ; $4bf4: $fc
    ei                                            ; $4bf5: $fb
    db $fc                                        ; $4bf6: $fc
    inc bc                                        ; $4bf7: $03
    ld [bc], a                                    ; $4bf8: $02
    rlca                                          ; $4bf9: $07
    ld [bc], a                                    ; $4bfa: $02
    add hl, bc                                    ; $4bfb: $09
    ld [bc], a                                    ; $4bfc: $02
    ld de, $1502                                  ; $4bfd: $11 $02 $15
    adc d                                         ; $4c00: $8a
    dec de                                        ; $4c01: $1b
    ld a, [de]                                    ; $4c02: $1a
    rla                                           ; $4c03: $17
    dec d                                         ; $4c04: $15
    rla                                           ; $4c05: $17
    inc d                                         ; $4c06: $14
    daa                                           ; $4c07: $27
    inc h                                         ; $4c08: $24
    daa                                           ; $4c09: $27
    ld h, $02                                     ; $4c0a: $26 $02
    cpl                                           ; $4c0c: $2f
    adc h                                         ; $4c0d: $8c
    dec [hl]                                      ; $4c0e: $35
    dec a                                         ; $4c0f: $3d
    ld l, $3e                                     ; $4c10: $2e $3e
    ld e, l                                       ; $4c12: $5d
    ld a, a                                       ; $4c13: $7f
    ld c, [hl]                                    ; $4c14: $4e
    ld a, a                                       ; $4c15: $7f
    cp [hl]                                       ; $4c16: $be
    rst $38                                       ; $4c17: $ff
    cp $df                                        ; $4c18: $fe $df
    ld [bc], a                                    ; $4c1a: $02
    inc c                                         ; $4c1b: $0c
    ld [bc], a                                    ; $4c1c: $02
    ld [bc], a                                    ; $4c1d: $02
    ld [bc], a                                    ; $4c1e: $02
    dec c                                         ; $4c1f: $0d
    adc h                                         ; $4c20: $8c
    ld c, $06                                     ; $4c21: $0e $06
    ld c, $02                                     ; $4c23: $0e $02
    ld c, $0a                                     ; $4c25: $0e $0a
    rrca                                          ; $4c27: $0f
    ld bc, $020e                                  ; $4c28: $01 $0e $02
    inc c                                         ; $4c2b: $0c
    inc b                                         ; $4c2c: $04
    ld c, $08                                     ; $4c2d: $0e $08
    inc c                                         ; $4c2f: $0c
    nop                                           ; $4c30: $00
    ld [bc], a                                    ; $4c31: $02
    ld d, b                                       ; $4c32: $50
    add [hl]                                      ; $4c33: $86
    sbc $ae                                       ; $4c34: $de $ae
    ld h, l                                       ; $4c36: $65
    ld e, e                                       ; $4c37: $5b
    rst $18                                       ; $4c38: $df
    or a                                          ; $4c39: $b7
    ld [bc], a                                    ; $4c3a: $02
    ld l, b                                       ; $4c3b: $68
    ld a, [bc]                                    ; $4c3c: $0a
    nop                                           ; $4c3d: $00
    adc d                                         ; $4c3e: $8a
    ld a, $3f                                     ; $4c3f: $3e $3f
    ld a, [hl]                                    ; $4c41: $7e
    ld a, a                                       ; $4c42: $7f
    ld a, l                                       ; $4c43: $7d
    ld a, a                                       ; $4c44: $7f
    cp a                                          ; $4c45: $bf
    rst $38                                       ; $4c46: $ff
    ld a, c                                       ; $4c47: $79
    ld a, a                                       ; $4c48: $7f
    ld [bc], a                                    ; $4c49: $02
    rrca                                          ; $4c4a: $0f
    ld [bc], a                                    ; $4c4b: $02
    nop                                           ; $4c4c: $00
    ld [bc], a                                    ; $4c4d: $02
    inc [hl]                                      ; $4c4e: $34
    add d                                         ; $4c4f: $82
    adc e                                         ; $4c50: $8b
    rst $38                                       ; $4c51: $ff
    ld [bc], a                                    ; $4c52: $02
    rst $30                                       ; $4c53: $f7
    inc c                                         ; $4c54: $0c
    nop                                           ; $4c55: $00
    ld b, $c0                                     ; $4c56: $06 $c0
    ld [bc], a                                    ; $4c58: $02
    ldh [rTMA], a                                 ; $4c59: $e0 $06
    nop                                           ; $4c5b: $00
    ld [bc], a                                    ; $4c5c: $02
    ld [hl-], a                                   ; $4c5d: $32
    add h                                         ; $4c5e: $84
    call Call_0df_7fff                            ; $4c5f: $cd $ff $7f
    rst $38                                       ; $4c62: $ff
    ld [bc], a                                    ; $4c63: $02
    add b                                         ; $4c64: $80
    ld a, [bc]                                    ; $4c65: $0a
    nop                                           ; $4c66: $00
    rst $38                                       ; $4c67: $ff
    rlca                                          ; $4c68: $07
    ld bc, $07f8                                  ; $4c69: $01 $f8 $07
    ld a, [c]                                     ; $4c6c: $f2
    ld bc, $ffed                                  ; $4c6d: $01 $ed $ff
    sub l                                         ; $4c70: $95
    nop                                           ; $4c71: $00
    ld [hl], $00                                  ; $4c72: $36 $00
    ld [hl], c                                    ; $4c74: $71
    nop                                           ; $4c75: $00
    ld d, b                                       ; $4c76: $50
    nop                                           ; $4c77: $00
    jr nz, jr_0df_4c7a                            ; $4c78: $20 $00

jr_0df_4c7a:
    ld b, b                                       ; $4c7a: $40
    nop                                           ; $4c7b: $00
    ld b, b                                       ; $4c7c: $40
    nop                                           ; $4c7d: $00
    ret nz                                        ; $4c7e: $c0

    nop                                           ; $4c7f: $00
    ret nz                                        ; $4c80: $c0

    nop                                           ; $4c81: $00
    add b                                         ; $4c82: $80
    stop                                          ; $4c83: $10 $00
    ld [$000b], sp                                ; $4c85: $08 $0b $00
    rst $38                                       ; $4c88: $ff
    rrca                                          ; $4c89: $0f
    dec b                                         ; $4c8a: $05
    ld hl, sp+$07                                 ; $4c8b: $f8 $07
    ld a, [c]                                     ; $4c8d: $f2
    ld bc, $fdeb                                  ; $4c8e: $01 $eb $fd
    db $eb                                        ; $4c91: $eb
    ld bc, $f3fb                                  ; $4c92: $01 $fb $f3
    ei                                            ; $4c95: $fb
    ei                                            ; $4c96: $fb
    ei                                            ; $4c97: $fb
    inc bc                                        ; $4c98: $03
    ld [bc], a                                    ; $4c99: $02
    rlca                                          ; $4c9a: $07
    ld [bc], a                                    ; $4c9b: $02
    ld a, [bc]                                    ; $4c9c: $0a
    ld [bc], a                                    ; $4c9d: $02
    inc de                                        ; $4c9e: $13
    adc h                                         ; $4c9f: $8c
    rla                                           ; $4ca0: $17
    inc d                                         ; $4ca1: $14
    cpl                                           ; $4ca2: $2f
    inc l                                         ; $4ca3: $2c
    scf                                           ; $4ca4: $37
    inc sp                                        ; $4ca5: $33
    cpl                                           ; $4ca6: $2f
    jr z, jr_0df_4cd8                             ; $4ca7: $28 $2f

    jr z, @+$29                                   ; $4ca9: $28 $27

    inc h                                         ; $4cab: $24
    ld [bc], a                                    ; $4cac: $02
    cpl                                           ; $4cad: $2f
    ld [bc], a                                    ; $4cae: $02
    dec e                                         ; $4caf: $1d
    adc d                                         ; $4cb0: $8a
    ld [hl], $3e                                  ; $4cb1: $36 $3e
    dec l                                         ; $4cb3: $2d
    ccf                                           ; $4cb4: $3f
    ld c, [hl]                                    ; $4cb5: $4e
    ld a, a                                       ; $4cb6: $7f
    ld e, [hl]                                    ; $4cb7: $5e
    ld a, a                                       ; $4cb8: $7f
    cp [hl]                                       ; $4cb9: $be
    rst $38                                       ; $4cba: $ff
    ld [bc], a                                    ; $4cbb: $02
    inc c                                         ; $4cbc: $0c
    ld [bc], a                                    ; $4cbd: $02
    ld [bc], a                                    ; $4cbe: $02
    ld [bc], a                                    ; $4cbf: $02
    dec b                                         ; $4cc0: $05
    ld [bc], a                                    ; $4cc1: $02
    dec c                                         ; $4cc2: $0d
    adc d                                         ; $4cc3: $8a
    rrca                                          ; $4cc4: $0f
    inc bc                                        ; $4cc5: $03
    rrca                                          ; $4cc6: $0f
    rlca                                          ; $4cc7: $07
    rrca                                          ; $4cc8: $0f
    inc bc                                        ; $4cc9: $03
    ld c, $0a                                     ; $4cca: $0e $0a
    ld c, $06                                     ; $4ccc: $0e $06
    ld [bc], a                                    ; $4cce: $02
    ld c, $02                                     ; $4ccf: $0e $02
    ld b, $02                                     ; $4cd1: $06 $02
    inc c                                         ; $4cd3: $0c
    add c                                         ; $4cd4: $81
    inc b                                         ; $4cd5: $04
    dec b                                         ; $4cd6: $05
    inc c                                         ; $4cd7: $0c

jr_0df_4cd8:
    ld [bc], a                                    ; $4cd8: $02
    ld c, $0e                                     ; $4cd9: $0e $0e
    nop                                           ; $4cdb: $00
    ld [bc], a                                    ; $4cdc: $02
    ld d, b                                       ; $4cdd: $50
    add [hl]                                      ; $4cde: $86
    sbc $ae                                       ; $4cdf: $de $ae
    ld h, l                                       ; $4ce1: $65
    ld e, e                                       ; $4ce2: $5b
    rst $18                                       ; $4ce3: $df
    or a                                          ; $4ce4: $b7
    ld [bc], a                                    ; $4ce5: $02
    ld l, b                                       ; $4ce6: $68
    ld [$8c00], sp                                ; $4ce7: $08 $00 $8c
    ccf                                           ; $4cea: $3f
    daa                                           ; $4ceb: $27
    ld e, $1f                                     ; $4cec: $1e $1f
    ld e, $1f                                     ; $4cee: $1e $1f
    dec a                                         ; $4cf0: $3d
    ccf                                           ; $4cf1: $3f
    ld e, e                                       ; $4cf2: $5b
    ld a, a                                       ; $4cf3: $7f
    dec a                                         ; $4cf4: $3d
    ccf                                           ; $4cf5: $3f
    ld [bc], a                                    ; $4cf6: $02
    rrca                                          ; $4cf7: $0f
    ld [bc], a                                    ; $4cf8: $02
    nop                                           ; $4cf9: $00
    ld [bc], a                                    ; $4cfa: $02
    inc [hl]                                      ; $4cfb: $34
    add d                                         ; $4cfc: $82
    adc e                                         ; $4cfd: $8b
    rst $38                                       ; $4cfe: $ff
    ld [bc], a                                    ; $4cff: $02
    rst $30                                       ; $4d00: $f7
    ld a, [bc]                                    ; $4d01: $0a
    nop                                           ; $4d02: $00
    add d                                         ; $4d03: $82
    ld e, b                                       ; $4d04: $58
    ld hl, sp+$02                                 ; $4d05: $f8 $02
    ldh a, [rDIV]                                 ; $4d07: $f0 $04
    ldh [$82], a                                  ; $4d09: $e0 $82
    ret nc                                        ; $4d0b: $d0

    ldh a, [rSC]                                  ; $4d0c: $f0 $02
    ldh [rDIV], a                                 ; $4d0e: $e0 $04
    nop                                           ; $4d10: $00
    ld [bc], a                                    ; $4d11: $02
    ld [hl-], a                                   ; $4d12: $32
    add h                                         ; $4d13: $84
    call Call_0df_7fff                            ; $4d14: $cd $ff $7f
    rst $38                                       ; $4d17: $ff
    ld [bc], a                                    ; $4d18: $02
    add b                                         ; $4d19: $80
    ld [$ff00], sp                                ; $4d1a: $08 $00 $ff
    rlca                                          ; $4d1d: $07
    ld bc, $07f8                                  ; $4d1e: $01 $f8 $07
    ld a, [c]                                     ; $4d21: $f2
    ld bc, $00ec                                  ; $4d22: $01 $ec $00
    sub l                                         ; $4d25: $95
    nop                                           ; $4d26: $00
    ld l, $00                                     ; $4d27: $2e $00
    ld h, l                                       ; $4d29: $65
    nop                                           ; $4d2a: $00
    ld b, c                                       ; $4d2b: $41
    nop                                           ; $4d2c: $00
    add b                                         ; $4d2d: $80
    nop                                           ; $4d2e: $00
    ld b, b                                       ; $4d2f: $40
    nop                                           ; $4d30: $00
    add b                                         ; $4d31: $80
    nop                                           ; $4d32: $00
    add b                                         ; $4d33: $80
    nop                                           ; $4d34: $00
    ret nz                                        ; $4d35: $c0

    nop                                           ; $4d36: $00
    add b                                         ; $4d37: $80
    inc d                                         ; $4d38: $14
    nop                                           ; $4d39: $00
    ld [$000b], sp                                ; $4d3a: $08 $0b $00
    rst $38                                       ; $4d3d: $ff
    rrca                                          ; $4d3e: $0f
    dec b                                         ; $4d3f: $05
    ld hl, sp+$07                                 ; $4d40: $f8 $07
    ld a, [c]                                     ; $4d42: $f2
    ld bc, $fceb                                  ; $4d43: $01 $eb $fc
    db $eb                                        ; $4d46: $eb
    ld bc, $f3fb                                  ; $4d47: $01 $fb $f3
    ei                                            ; $4d4a: $fb
    ei                                            ; $4d4b: $fb
    ei                                            ; $4d4c: $fb
    inc bc                                        ; $4d4d: $03
    ld [bc], a                                    ; $4d4e: $02
    inc bc                                        ; $4d4f: $03
    ld [bc], a                                    ; $4d50: $02
    dec b                                         ; $4d51: $05
    ld [bc], a                                    ; $4d52: $02
    add hl, bc                                    ; $4d53: $09
    adc h                                         ; $4d54: $8c
    dec bc                                        ; $4d55: $0b
    ld a, [bc]                                    ; $4d56: $0a
    rla                                           ; $4d57: $17
    ld d, $1b                                     ; $4d58: $16 $1b
    add hl, de                                    ; $4d5a: $19
    rla                                           ; $4d5b: $17
    inc d                                         ; $4d5c: $14
    rla                                           ; $4d5d: $17
    inc d                                         ; $4d5e: $14
    inc de                                        ; $4d5f: $13
    ld [de], a                                    ; $4d60: $12
    ld [bc], a                                    ; $4d61: $02
    rla                                           ; $4d62: $17
    ld [bc], a                                    ; $4d63: $02
    ld c, $8a                                     ; $4d64: $0e $8a
    inc de                                        ; $4d66: $13
    rra                                           ; $4d67: $1f
    ld h, $3f                                     ; $4d68: $26 $3f
    ld c, a                                       ; $4d6a: $4f
    ld a, a                                       ; $4d6b: $7f
    ld c, a                                       ; $4d6c: $4f
    ld a, a                                       ; $4d6d: $7f
    rst $38                                       ; $4d6e: $ff
    sbc a                                         ; $4d6f: $9f
    ld [bc], a                                    ; $4d70: $02
    inc e                                         ; $4d71: $1c
    ld [bc], a                                    ; $4d72: $02
    ld [bc], a                                    ; $4d73: $02
    ld [bc], a                                    ; $4d74: $02
    dec d                                         ; $4d75: $15
    adc h                                         ; $4d76: $8c
    dec e                                         ; $4d77: $1d
    dec c                                         ; $4d78: $0d
    rra                                           ; $4d79: $1f
    inc bc                                        ; $4d7a: $03
    rra                                           ; $4d7b: $1f
    rla                                           ; $4d7c: $17
    rra                                           ; $4d7d: $1f
    inc bc                                        ; $4d7e: $03
    ld e, $0a                                     ; $4d7f: $1e $0a
    ld e, $06                                     ; $4d81: $1e $06
    ld [bc], a                                    ; $4d83: $02
    ld e, $02                                     ; $4d84: $1e $02
    ld d, $02                                     ; $4d86: $16 $02
    inc c                                         ; $4d88: $0c
    adc b                                         ; $4d89: $88
    inc d                                         ; $4d8a: $14
    inc e                                         ; $4d8b: $1c
    inc c                                         ; $4d8c: $0c
    inc e                                         ; $4d8d: $1c
    ld c, $1e                                     ; $4d8e: $0e $1e
    ld c, $1e                                     ; $4d90: $0e $1e
    ld c, $00                                     ; $4d92: $0e $00
    ld [bc], a                                    ; $4d94: $02
    ld d, b                                       ; $4d95: $50
    add [hl]                                      ; $4d96: $86
    sbc $ae                                       ; $4d97: $de $ae
    ld h, l                                       ; $4d99: $65
    ld e, e                                       ; $4d9a: $5b
    rst $18                                       ; $4d9b: $df
    or a                                          ; $4d9c: $b7
    ld [bc], a                                    ; $4d9d: $02
    ld l, b                                       ; $4d9e: $68
    ld [$0200], sp                                ; $4d9f: $08 $00 $02
    ccf                                           ; $4da2: $3f
    ld [bc], a                                    ; $4da3: $02
    rra                                           ; $4da4: $1f
    adc b                                         ; $4da5: $88
    ld e, $1f                                     ; $4da6: $1e $1f
    ld a, $3f                                     ; $4da8: $3e $3f
    ld e, e                                       ; $4daa: $5b
    ld a, a                                       ; $4dab: $7f
    dec a                                         ; $4dac: $3d
    ccf                                           ; $4dad: $3f
    ld [bc], a                                    ; $4dae: $02
    rrca                                          ; $4daf: $0f
    ld [bc], a                                    ; $4db0: $02
    nop                                           ; $4db1: $00
    ld [bc], a                                    ; $4db2: $02
    inc [hl]                                      ; $4db3: $34
    add d                                         ; $4db4: $82
    adc e                                         ; $4db5: $8b
    rst $38                                       ; $4db6: $ff
    ld [bc], a                                    ; $4db7: $02
    rst $30                                       ; $4db8: $f7
    ld a, [bc]                                    ; $4db9: $0a
    nop                                           ; $4dba: $00
    add h                                         ; $4dbb: $84
    ld e, h                                       ; $4dbc: $5c
    db $f4                                        ; $4dbd: $f4
    ld e, b                                       ; $4dbe: $58
    ld hl, sp+$02                                 ; $4dbf: $f8 $02
    ldh a, [rSC]                                  ; $4dc1: $f0 $02
    ldh [$82], a                                  ; $4dc3: $e0 $82
    ret nc                                        ; $4dc5: $d0

    ldh a, [rSC]                                  ; $4dc6: $f0 $02
    ldh [rDIV], a                                 ; $4dc8: $e0 $04
    nop                                           ; $4dca: $00
    ld [bc], a                                    ; $4dcb: $02
    ld [hl-], a                                   ; $4dcc: $32
    add h                                         ; $4dcd: $84
    call Call_0df_7fff                            ; $4dce: $cd $ff $7f
    rst $38                                       ; $4dd1: $ff
    ld [bc], a                                    ; $4dd2: $02
    add b                                         ; $4dd3: $80
    ld [$ff00], sp                                ; $4dd4: $08 $00 $ff
    rlca                                          ; $4dd7: $07
    ld bc, $07f8                                  ; $4dd8: $01 $f8 $07
    ld a, [c]                                     ; $4ddb: $f2
    ld bc, $00ec                                  ; $4ddc: $01 $ec $00
    sub l                                         ; $4ddf: $95
    nop                                           ; $4de0: $00
    ld l, $00                                     ; $4de1: $2e $00
    ld h, l                                       ; $4de3: $65
    nop                                           ; $4de4: $00
    ld b, c                                       ; $4de5: $41
    nop                                           ; $4de6: $00
    add b                                         ; $4de7: $80
    nop                                           ; $4de8: $00
    ld b, b                                       ; $4de9: $40
    nop                                           ; $4dea: $00
    add b                                         ; $4deb: $80
    nop                                           ; $4dec: $00
    add b                                         ; $4ded: $80
    nop                                           ; $4dee: $00
    ret nz                                        ; $4def: $c0

    nop                                           ; $4df0: $00
    add b                                         ; $4df1: $80
    inc d                                         ; $4df2: $14
    nop                                           ; $4df3: $00
    ld [$000b], sp                                ; $4df4: $08 $0b $00
    rst $38                                       ; $4df7: $ff
    rrca                                          ; $4df8: $0f
    dec b                                         ; $4df9: $05
    ld hl, sp+$07                                 ; $4dfa: $f8 $07
    ld a, [c]                                     ; $4dfc: $f2
    ld bc, $fceb                                  ; $4dfd: $01 $eb $fc
    db $eb                                        ; $4e00: $eb
    ld bc, $f3fb                                  ; $4e01: $01 $fb $f3
    ei                                            ; $4e04: $fb
    ei                                            ; $4e05: $fb
    ei                                            ; $4e06: $fb
    inc bc                                        ; $4e07: $03
    ld [bc], a                                    ; $4e08: $02
    inc bc                                        ; $4e09: $03
    ld [bc], a                                    ; $4e0a: $02
    dec b                                         ; $4e0b: $05
    ld [bc], a                                    ; $4e0c: $02
    add hl, bc                                    ; $4e0d: $09
    adc h                                         ; $4e0e: $8c
    dec bc                                        ; $4e0f: $0b
    ld a, [bc]                                    ; $4e10: $0a
    rla                                           ; $4e11: $17
    ld d, $1b                                     ; $4e12: $16 $1b
    add hl, de                                    ; $4e14: $19
    rla                                           ; $4e15: $17
    inc d                                         ; $4e16: $14
    rla                                           ; $4e17: $17
    inc d                                         ; $4e18: $14
    inc de                                        ; $4e19: $13
    ld [de], a                                    ; $4e1a: $12
    ld [bc], a                                    ; $4e1b: $02
    rla                                           ; $4e1c: $17
    ld [bc], a                                    ; $4e1d: $02
    ld c, $8a                                     ; $4e1e: $0e $8a
    inc de                                        ; $4e20: $13
    rra                                           ; $4e21: $1f
    ld h, $3f                                     ; $4e22: $26 $3f
    ld c, a                                       ; $4e24: $4f
    ld a, a                                       ; $4e25: $7f
    ld c, a                                       ; $4e26: $4f
    ld a, a                                       ; $4e27: $7f
    rst $38                                       ; $4e28: $ff
    sbc a                                         ; $4e29: $9f
    ld [bc], a                                    ; $4e2a: $02
    inc e                                         ; $4e2b: $1c
    ld [bc], a                                    ; $4e2c: $02
    ld [bc], a                                    ; $4e2d: $02
    ld [bc], a                                    ; $4e2e: $02
    dec d                                         ; $4e2f: $15
    adc h                                         ; $4e30: $8c
    dec e                                         ; $4e31: $1d
    dec c                                         ; $4e32: $0d
    rra                                           ; $4e33: $1f
    inc bc                                        ; $4e34: $03
    rra                                           ; $4e35: $1f
    rla                                           ; $4e36: $17
    rra                                           ; $4e37: $1f
    inc bc                                        ; $4e38: $03
    ld e, $0a                                     ; $4e39: $1e $0a
    ld e, $06                                     ; $4e3b: $1e $06
    ld [bc], a                                    ; $4e3d: $02
    ld e, $02                                     ; $4e3e: $1e $02
    ld d, $02                                     ; $4e40: $16 $02
    inc c                                         ; $4e42: $0c
    adc b                                         ; $4e43: $88
    inc d                                         ; $4e44: $14
    inc e                                         ; $4e45: $1c
    inc c                                         ; $4e46: $0c
    inc e                                         ; $4e47: $1c
    ld c, $1e                                     ; $4e48: $0e $1e
    ld c, $1e                                     ; $4e4a: $0e $1e
    ld c, $00                                     ; $4e4c: $0e $00
    ld [bc], a                                    ; $4e4e: $02
    ld d, b                                       ; $4e4f: $50
    add [hl]                                      ; $4e50: $86
    sbc $ae                                       ; $4e51: $de $ae
    ld h, l                                       ; $4e53: $65
    ld e, e                                       ; $4e54: $5b
    rst $18                                       ; $4e55: $df
    or a                                          ; $4e56: $b7
    ld [bc], a                                    ; $4e57: $02
    ld l, b                                       ; $4e58: $68
    ld [$0200], sp                                ; $4e59: $08 $00 $02
    ccf                                           ; $4e5c: $3f
    ld [bc], a                                    ; $4e5d: $02
    rrca                                          ; $4e5e: $0f
    ld [bc], a                                    ; $4e5f: $02
    rra                                           ; $4e60: $1f
    add [hl]                                      ; $4e61: $86
    ld a, $3f                                     ; $4e62: $3e $3f
    ld e, e                                       ; $4e64: $5b
    ld a, a                                       ; $4e65: $7f
    dec a                                         ; $4e66: $3d
    ccf                                           ; $4e67: $3f
    ld [bc], a                                    ; $4e68: $02
    rrca                                          ; $4e69: $0f
    ld [bc], a                                    ; $4e6a: $02
    nop                                           ; $4e6b: $00
    ld [bc], a                                    ; $4e6c: $02
    inc [hl]                                      ; $4e6d: $34
    add d                                         ; $4e6e: $82
    adc e                                         ; $4e6f: $8b
    rst $38                                       ; $4e70: $ff
    ld [bc], a                                    ; $4e71: $02
    rst $30                                       ; $4e72: $f7
    ld a, [bc]                                    ; $4e73: $0a
    nop                                           ; $4e74: $00
    add [hl]                                      ; $4e75: $86
    ld e, h                                       ; $4e76: $5c

Call_0df_4e77:
    db $f4                                        ; $4e77: $f4
    ld e, b                                       ; $4e78: $58
    ld hl, sp+$50                                 ; $4e79: $f8 $50
    ldh a, [rSC]                                  ; $4e7b: $f0 $02
    ldh [$82], a                                  ; $4e7d: $e0 $82
    ret nc                                        ; $4e7f: $d0

    ldh a, [rSC]                                  ; $4e80: $f0 $02
    ldh [rDIV], a                                 ; $4e82: $e0 $04
    nop                                           ; $4e84: $00
    ld [bc], a                                    ; $4e85: $02
    ld [hl-], a                                   ; $4e86: $32
    add h                                         ; $4e87: $84
    call Call_0df_7fff                            ; $4e88: $cd $ff $7f
    rst $38                                       ; $4e8b: $ff
    ld [bc], a                                    ; $4e8c: $02
    add b                                         ; $4e8d: $80
    ld [$ff00], sp                                ; $4e8e: $08 $00 $ff
    rlca                                          ; $4e91: $07
    ld bc, $07f8                                  ; $4e92: $01 $f8 $07
    ld a, [c]                                     ; $4e95: $f2
    ld bc, $00ec                                  ; $4e96: $01 $ec $00
    sub l                                         ; $4e99: $95
    nop                                           ; $4e9a: $00
    ld l, $00                                     ; $4e9b: $2e $00
    ld h, l                                       ; $4e9d: $65
    nop                                           ; $4e9e: $00
    ld b, c                                       ; $4e9f: $41
    nop                                           ; $4ea0: $00
    add b                                         ; $4ea1: $80
    nop                                           ; $4ea2: $00
    ld b, b                                       ; $4ea3: $40
    nop                                           ; $4ea4: $00
    add b                                         ; $4ea5: $80
    nop                                           ; $4ea6: $00
    add b                                         ; $4ea7: $80
    nop                                           ; $4ea8: $00
    ret nz                                        ; $4ea9: $c0

    nop                                           ; $4eaa: $00
    add b                                         ; $4eab: $80
    inc d                                         ; $4eac: $14
    nop                                           ; $4ead: $00
    ld [$000b], sp                                ; $4eae: $08 $0b $00
    rst $38                                       ; $4eb1: $ff
    rrca                                          ; $4eb2: $0f
    dec b                                         ; $4eb3: $05
    ld hl, sp+$07                                 ; $4eb4: $f8 $07
    ld a, [c]                                     ; $4eb6: $f2
    ld bc, $fbea                                  ; $4eb7: $01 $ea $fb
    db $eb                                        ; $4eba: $eb
    db $fd                                        ; $4ebb: $fd
    ld a, [$faf3]                                 ; $4ebc: $fa $f3 $fa
    ei                                            ; $4ebf: $fb
    ld a, [$0203]                                 ; $4ec0: $fa $03 $02
    rra                                           ; $4ec3: $1f
    sbc [hl]                                      ; $4ec4: $9e
    db $e4                                        ; $4ec5: $e4
    ldh [rOBP1], a                                ; $4ec6: $e0 $49
    ld b, c                                       ; $4ec8: $41
    and l                                         ; $4ec9: $a5
    add l                                         ; $4eca: $85
    adc a                                         ; $4ecb: $8f
    adc d                                         ; $4ecc: $8a
    rst $18                                       ; $4ecd: $df
    sub $7f                                       ; $4ece: $d6 $7f
    ld [hl], b                                    ; $4ed0: $70
    ld a, a                                       ; $4ed1: $7f
    ld d, b                                       ; $4ed2: $50
    ccf                                           ; $4ed3: $3f
    inc sp                                        ; $4ed4: $33
    ccf                                           ; $4ed5: $3f
    add hl, sp                                    ; $4ed6: $39
    ld d, d                                       ; $4ed7: $52
    ld [hl], d                                    ; $4ed8: $72
    xor l                                         ; $4ed9: $ad
    db $fd                                        ; $4eda: $fd
    db $eb                                        ; $4edb: $eb
    rst $38                                       ; $4edc: $ff
    ld c, l                                       ; $4edd: $4d
    ld a, a                                       ; $4ede: $7f
    ld e, l                                       ; $4edf: $5d
    ld a, a                                       ; $4ee0: $7f
    ld a, l                                       ; $4ee1: $7d
    ld l, a                                       ; $4ee2: $6f
    ld [bc], a                                    ; $4ee3: $02
    ld [bc], a                                    ; $4ee4: $02
    ld [bc], a                                    ; $4ee5: $02
    ld bc, $0206                                  ; $4ee6: $01 $06 $02
    add d                                         ; $4ee9: $82
    inc bc                                        ; $4eea: $03
    ld bc, $0204                                  ; $4eeb: $01 $04 $02
    ld c, $00                                     ; $4eee: $0e $00
    add d                                         ; $4ef0: $82
    db $f4                                        ; $4ef1: $f4
    sbc h                                         ; $4ef2: $9c
    stop                                          ; $4ef3: $10 $00
    ld [bc], a                                    ; $4ef5: $02
    ld l, b                                       ; $4ef6: $68
    add [hl]                                      ; $4ef7: $86
    rst $18                                       ; $4ef8: $df
    or a                                          ; $4ef9: $b7
    ld h, l                                       ; $4efa: $65
    ld e, e                                       ; $4efb: $5b
    sbc $ae                                       ; $4efc: $de $ae
    ld [bc], a                                    ; $4efe: $02
    ld d, b                                       ; $4eff: $50
    ld b, $00                                     ; $4f00: $06 $00
    ld [bc], a                                    ; $4f02: $02
    ld b, b                                       ; $4f03: $40
    add [hl]                                      ; $4f04: $86
    db $fd                                        ; $4f05: $fd
    rst $28                                       ; $4f06: $ef
    cp e                                          ; $4f07: $bb
    rst $38                                       ; $4f08: $ff
    rst $30                                       ; $4f09: $f7
    rst $38                                       ; $4f0a: $ff
    ld [bc], a                                    ; $4f0b: $02
    cp $02                                        ; $4f0c: $fe $02
    ld a, [hl]                                    ; $4f0e: $7e
    add c                                         ; $4f0f: $81
    add hl, hl                                    ; $4f10: $29
    inc bc                                        ; $4f11: $03
    ccf                                           ; $4f12: $3f
    ld [bc], a                                    ; $4f13: $02
    ld [bc], a                                    ; $4f14: $02
    add h                                         ; $4f15: $84
    cp l                                          ; $4f16: $bd
    rst $38                                       ; $4f17: $ff
    rst $20                                       ; $4f18: $e7
    rst $38                                       ; $4f19: $ff
    ld [bc], a                                    ; $4f1a: $02
    jr jr_0df_4f35                                ; $4f1b: $18 $18

    nop                                           ; $4f1d: $00
    ld [bc], a                                    ; $4f1e: $02
    ld [bc], a                                    ; $4f1f: $02
    add h                                         ; $4f20: $84
    db $dd                                        ; $4f21: $dd
    rst $18                                       ; $4f22: $df
    and a                                         ; $4f23: $a7
    rst $38                                       ; $4f24: $ff
    ld [bc], a                                    ; $4f25: $02
    ld a, b                                       ; $4f26: $78
    ld [$ff00], sp                                ; $4f27: $08 $00 $ff
    rlca                                          ; $4f2a: $07
    ld bc, $07f8                                  ; $4f2b: $01 $f8 $07
    ld a, [c]                                     ; $4f2e: $f2
    ld bc, $fceb                                  ; $4f2f: $01 $eb $fc
    ld [bc], a                                    ; $4f32: $02
    ld [hl], $02                                  ; $4f33: $36 $02

jr_0df_4f35:
    ld l, l                                       ; $4f35: $6d
    ld [bc], a                                    ; $4f36: $02
    or h                                          ; $4f37: $b4
    ld [bc], a                                    ; $4f38: $02
    ldh [rSC], a                                  ; $4f39: $e0 $02
    ld b, b                                       ; $4f3b: $40
    ld [$8300], sp                                ; $4f3c: $08 $00 $83
    jr jr_0df_4f41                                ; $4f3f: $18 $00

jr_0df_4f41:
    inc b                                         ; $4f41: $04
    dec bc                                        ; $4f42: $0b
    nop                                           ; $4f43: $00
    rst $38                                       ; $4f44: $ff
    rrca                                          ; $4f45: $0f
    dec b                                         ; $4f46: $05
    ld hl, sp+$07                                 ; $4f47: $f8 $07
    ld a, [c]                                     ; $4f49: $f2
    ld bc, $fdeb                                  ; $4f4a: $01 $eb $fd
    db $ec                                        ; $4f4d: $ec
    rst $38                                       ; $4f4e: $ff
    ei                                            ; $4f4f: $fb
    di                                            ; $4f50: $f3
    ei                                            ; $4f51: $fb
    ei                                            ; $4f52: $fb
    ei                                            ; $4f53: $fb
    inc bc                                        ; $4f54: $03
    ld [bc], a                                    ; $4f55: $02
    rra                                           ; $4f56: $1f
    sbc [hl]                                      ; $4f57: $9e
    db $e4                                        ; $4f58: $e4
    ldh [rHDMA2], a                               ; $4f59: $e0 $52
    ld b, d                                       ; $4f5b: $42
    xor e                                         ; $4f5c: $ab
    adc e                                         ; $4f5d: $8b
    adc a                                         ; $4f5e: $8f
    adc h                                         ; $4f5f: $8c
    sub a                                         ; $4f60: $97
    sub [hl]                                      ; $4f61: $96
    ld a, a                                       ; $4f62: $7f
    ld [hl], b                                    ; $4f63: $70
    ld a, a                                       ; $4f64: $7f
    ld d, b                                       ; $4f65: $50
    dec sp                                        ; $4f66: $3b
    inc sp                                        ; $4f67: $33
    ld a, a                                       ; $4f68: $7f
    ld a, c                                       ; $4f69: $79
    sub [hl]                                      ; $4f6a: $96
    or $65                                        ; $4f6b: $f6 $65
    ld a, l                                       ; $4f6d: $7d
    dec hl                                        ; $4f6e: $2b
    ccf                                           ; $4f6f: $3f
    ld c, l                                       ; $4f70: $4d
    ld a, a                                       ; $4f71: $7f
    ld e, l                                       ; $4f72: $5d
    ld a, a                                       ; $4f73: $7f
    db $fd                                        ; $4f74: $fd
    rst $18                                       ; $4f75: $df
    ld [bc], a                                    ; $4f76: $02
    ld [bc], a                                    ; $4f77: $02
    ld [bc], a                                    ; $4f78: $02
    ld bc, $0302                                  ; $4f79: $01 $02 $03
    inc b                                         ; $4f7c: $04
    ld [bc], a                                    ; $4f7d: $02
    add d                                         ; $4f7e: $82
    inc bc                                        ; $4f7f: $03
    ld bc, $0204                                  ; $4f80: $01 $04 $02
    ld c, $00                                     ; $4f83: $0e $00
    add d                                         ; $4f85: $82
    db $ec                                        ; $4f86: $ec
    ld a, h                                       ; $4f87: $7c
    ld c, $00                                     ; $4f88: $0e $00
    ld [bc], a                                    ; $4f8a: $02
    ld l, b                                       ; $4f8b: $68
    add [hl]                                      ; $4f8c: $86
    rst $18                                       ; $4f8d: $df
    or a                                          ; $4f8e: $b7
    ld h, l                                       ; $4f8f: $65
    ld e, e                                       ; $4f90: $5b
    sbc $ae                                       ; $4f91: $de $ae
    ld [bc], a                                    ; $4f93: $02
    ld d, b                                       ; $4f94: $50
    ld [$8600], sp                                ; $4f95: $08 $00 $86
    jr nc, jr_0df_4fba                            ; $4f98: $30 $20

    ld a, $37                                     ; $4f9a: $3e $37
    ld e, l                                       ; $4f9c: $5d
    ld a, a                                       ; $4f9d: $7f
    ld [bc], a                                    ; $4f9e: $02
    ccf                                           ; $4f9f: $3f
    add h                                         ; $4fa0: $84
    daa                                           ; $4fa1: $27
    ccf                                           ; $4fa2: $3f
    inc sp                                        ; $4fa3: $33
    ccf                                           ; $4fa4: $3f
    ld [bc], a                                    ; $4fa5: $02
    ld e, $02                                     ; $4fa6: $1e $02
    ld [bc], a                                    ; $4fa8: $02
    add h                                         ; $4fa9: $84
    cp l                                          ; $4faa: $bd
    rst $38                                       ; $4fab: $ff
    rst $20                                       ; $4fac: $e7
    rst $38                                       ; $4fad: $ff
    ld [bc], a                                    ; $4fae: $02
    jr jr_0df_4fbd                                ; $4faf: $18 $0c

    nop                                           ; $4fb1: $00
    inc b                                         ; $4fb2: $04
    ret nz                                        ; $4fb3: $c0

    add c                                         ; $4fb4: $81
    and b                                         ; $4fb5: $a0
    inc bc                                        ; $4fb6: $03
    ldh [rSC], a                                  ; $4fb7: $e0 $02
    add b                                         ; $4fb9: $80

jr_0df_4fba:
    ld [bc], a                                    ; $4fba: $02
    nop                                           ; $4fbb: $00
    ld [bc], a                                    ; $4fbc: $02

jr_0df_4fbd:
    ld [bc], a                                    ; $4fbd: $02
    add h                                         ; $4fbe: $84
    db $dd                                        ; $4fbf: $dd
    rst $18                                       ; $4fc0: $df
    and a                                         ; $4fc1: $a7
    rst $38                                       ; $4fc2: $ff
    ld [bc], a                                    ; $4fc3: $02
    ld a, b                                       ; $4fc4: $78
    ld a, [bc]                                    ; $4fc5: $0a
    nop                                           ; $4fc6: $00
    rst $38                                       ; $4fc7: $ff
    rlca                                          ; $4fc8: $07
    ld bc, $07f8                                  ; $4fc9: $01 $f8 $07
    ld a, [c]                                     ; $4fcc: $f2
    ld bc, $feec                                  ; $4fcd: $01 $ec $fe
    ld [bc], a                                    ; $4fd0: $02
    ld [hl], $02                                  ; $4fd1: $36 $02
    ld e, e                                       ; $4fd3: $5b
    ld [bc], a                                    ; $4fd4: $02
    xor b                                         ; $4fd5: $a8
    ld [bc], a                                    ; $4fd6: $02
    ldh [rSC], a                                  ; $4fd7: $e0 $02
    ret nc                                        ; $4fd9: $d0

    inc b                                         ; $4fda: $04
    nop                                           ; $4fdb: $00
    ld [bc], a                                    ; $4fdc: $02
    ld [$0002], sp                                ; $4fdd: $08 $02 $00
    add e                                         ; $4fe0: $83
    stop                                          ; $4fe1: $10 $00
    inc b                                         ; $4fe3: $04
    dec bc                                        ; $4fe4: $0b
    nop                                           ; $4fe5: $00
    rst $38                                       ; $4fe6: $ff
    rrca                                          ; $4fe7: $0f
    dec b                                         ; $4fe8: $05
    ld hl, sp+$07                                 ; $4fe9: $f8 $07
    ld a, [c]                                     ; $4feb: $f2
    ld bc, $fcea                                  ; $4fec: $01 $ea $fc
    ld [$fa00], a                                 ; $4fef: $ea $00 $fa
    di                                            ; $4ff2: $f3
    ld a, [$fafb]                                 ; $4ff3: $fa $fb $fa
    inc bc                                        ; $4ff6: $03
    ld [bc], a                                    ; $4ff7: $02
    rlca                                          ; $4ff8: $07
    ld [bc], a                                    ; $4ff9: $02
    add hl, bc                                    ; $4ffa: $09
    add d                                         ; $4ffb: $82
    ld [de], a                                    ; $4ffc: $12
    db $10                                        ; $4ffd: $10
    ld [bc], a                                    ; $4ffe: $02
    dec de                                        ; $4fff: $1b
    adc h                                         ; $5000: $8c
    rra                                           ; $5001: $1f
    inc e                                         ; $5002: $1c
    ld e, $16                                     ; $5003: $1e $16
    rla                                           ; $5005: $17
    ld de, $080f                                  ; $5006: $11 $0f $08
    dec c                                         ; $5009: $0d
    add hl, bc                                    ; $500a: $09
    rrca                                          ; $500b: $0f
    inc c                                         ; $500c: $0c
    ld [bc], a                                    ; $500d: $02
    rra                                           ; $500e: $1f
    adc d                                         ; $500f: $8a
    dec l                                         ; $5010: $2d
    dec a                                         ; $5011: $3d
    ld [hl], $3e                                  ; $5012: $36 $3e
    dec l                                         ; $5014: $2d
    ccf                                           ; $5015: $3f
    ld c, [hl]                                    ; $5016: $4e
    ld a, a                                       ; $5017: $7f
    cp $df                                        ; $5018: $fe $df
    ld [bc], a                                    ; $501a: $02
    inc c                                         ; $501b: $0c
    add h                                         ; $501c: $84
    ld b, $02                                     ; $501d: $06 $02
    dec b                                         ; $501f: $05
    ld bc, $0d02                                  ; $5020: $01 $02 $0d
    adc h                                         ; $5023: $8c
    rrca                                          ; $5024: $0f
    dec bc                                        ; $5025: $0b
    rrca                                          ; $5026: $0f
    rlca                                          ; $5027: $07
    rrca                                          ; $5028: $0f
    ld bc, $0a0e                                  ; $5029: $01 $0e $0a
    ld c, $0a                                     ; $502c: $0e $0a
    inc c                                         ; $502e: $0c
    inc b                                         ; $502f: $04
    ld [bc], a                                    ; $5030: $02
    inc c                                         ; $5031: $0c
    ld [bc], a                                    ; $5032: $02
    inc b                                         ; $5033: $04
    ld [bc], a                                    ; $5034: $02
    inc c                                         ; $5035: $0c
    add c                                         ; $5036: $81
    inc b                                         ; $5037: $04
    dec b                                         ; $5038: $05
    inc c                                         ; $5039: $0c
    stop                                          ; $503a: $10 $00
    ld [bc], a                                    ; $503c: $02
    ld l, b                                       ; $503d: $68
    add [hl]                                      ; $503e: $86
    rst $18                                       ; $503f: $df
    or a                                          ; $5040: $b7
    ld h, l                                       ; $5041: $65
    ld e, e                                       ; $5042: $5b
    sbc $ae                                       ; $5043: $de $ae
    ld [bc], a                                    ; $5045: $02
    ld d, b                                       ; $5046: $50
    ld b, $00                                     ; $5047: $06 $00
    adc b                                         ; $5049: $88
    ld a, [hl]                                    ; $504a: $7e
    ld e, a                                       ; $504b: $5f
    ld a, [hl]                                    ; $504c: $7e
    ld c, a                                       ; $504d: $4f
    dec a                                         ; $504e: $3d
    ccf                                           ; $504f: $3f
    dec hl                                        ; $5050: $2b
    ccf                                           ; $5051: $3f
    ld [bc], a                                    ; $5052: $02
    rra                                           ; $5053: $1f
    add h                                         ; $5054: $84
    cpl                                           ; $5055: $2f
    ccf                                           ; $5056: $3f
    inc sp                                        ; $5057: $33
    ccf                                           ; $5058: $3f
    ld [bc], a                                    ; $5059: $02
    ld e, $02                                     ; $505a: $1e $02
    ld [bc], a                                    ; $505c: $02
    add h                                         ; $505d: $84
    cp l                                          ; $505e: $bd
    rst $38                                       ; $505f: $ff
    rst $20                                       ; $5060: $e7
    rst $38                                       ; $5061: $ff
    ld [bc], a                                    ; $5062: $02
    jr @+$0a                                      ; $5063: $18 $08

    nop                                           ; $5065: $00
    ld [bc], a                                    ; $5066: $02
    ldh a, [$82]                                  ; $5067: $f0 $82
    or b                                          ; $5069: $b0
    ldh a, [rSC]                                  ; $506a: $f0 $02
    ldh [rSC], a                                  ; $506c: $e0 $02
    ret nz                                        ; $506e: $c0

    ld [bc], a                                    ; $506f: $02
    ldh [$82], a                                  ; $5070: $e0 $82
    sub b                                         ; $5072: $90
    ldh a, [rSC]                                  ; $5073: $f0 $02
    ldh [rSC], a                                  ; $5075: $e0 $02
    nop                                           ; $5077: $00
    ld [bc], a                                    ; $5078: $02
    ld [bc], a                                    ; $5079: $02
    add h                                         ; $507a: $84
    db $dd                                        ; $507b: $dd
    rst $18                                       ; $507c: $df
    and a                                         ; $507d: $a7
    rst $38                                       ; $507e: $ff
    ld [bc], a                                    ; $507f: $02
    ld a, b                                       ; $5080: $78
    ld [$ff00], sp                                ; $5081: $08 $00 $ff
    rlca                                          ; $5084: $07
    ld bc, $07f8                                  ; $5085: $01 $f8 $07
    ld a, [c]                                     ; $5088: $f2
    ld bc, $ffeb                                  ; $5089: $01 $eb $ff
    ld [bc], a                                    ; $508c: $02
    inc [hl]                                      ; $508d: $34
    ld [bc], a                                    ; $508e: $02
    ld l, l                                       ; $508f: $6d
    ld [bc], a                                    ; $5090: $02
    ld hl, $0002                                  ; $5091: $21 $02 $00
    ld [bc], a                                    ; $5094: $02
    ld [$4002], sp                                ; $5095: $08 $02 $40
    ld [bc], a                                    ; $5098: $02
    nop                                           ; $5099: $00
    ld [bc], a                                    ; $509a: $02
    db $10                                        ; $509b: $10
    inc b                                         ; $509c: $04
    nop                                           ; $509d: $00
    add e                                         ; $509e: $83
    inc d                                         ; $509f: $14
    nop                                           ; $50a0: $00
    ld [$0009], sp                                ; $50a1: $08 $09 $00
    rst $38                                       ; $50a4: $ff
    rrca                                          ; $50a5: $0f
    dec b                                         ; $50a6: $05
    ld hl, sp+$07                                 ; $50a7: $f8 $07
    ld a, [c]                                     ; $50a9: $f2
    ld bc, $faea                                  ; $50aa: $01 $ea $fa
    ld [$fa00], a                                 ; $50ad: $ea $00 $fa
    di                                            ; $50b0: $f3
    ld a, [$fafb]                                 ; $50b1: $fa $fb $fa
    inc bc                                        ; $50b4: $03
    ld [bc], a                                    ; $50b5: $02
    ld bc, $0202                                  ; $50b6: $01 $02 $02
    ld [bc], a                                    ; $50b9: $02
    inc b                                         ; $50ba: $04
    ld [bc], a                                    ; $50bb: $02
    ld b, $03                                     ; $50bc: $06 $03
    rlca                                          ; $50be: $07
    ld [bc], a                                    ; $50bf: $02
    dec b                                         ; $50c0: $05
    add l                                         ; $50c1: $85
    inc b                                         ; $50c2: $04
    inc bc                                        ; $50c3: $03
    ld [bc], a                                    ; $50c4: $02
    inc bc                                        ; $50c5: $03
    ld [bc], a                                    ; $50c6: $02
    ld [bc], a                                    ; $50c7: $02
    inc bc                                        ; $50c8: $03
    ld [bc], a                                    ; $50c9: $02
    rlca                                          ; $50ca: $07
    ld [bc], a                                    ; $50cb: $02
    rrca                                          ; $50cc: $0f
    adc b                                         ; $50cd: $88
    add hl, de                                    ; $50ce: $19
    rra                                           ; $50cf: $1f
    inc hl                                        ; $50d0: $23
    ccf                                           ; $50d1: $3f
    ld l, a                                       ; $50d2: $6f
    ld e, a                                       ; $50d3: $5f
    rst $38                                       ; $50d4: $ff
    sbc a                                         ; $50d5: $9f
    ld [bc], a                                    ; $50d6: $02
    inc a                                         ; $50d7: $3c
    add h                                         ; $50d8: $84
    ld d, $12                                     ; $50d9: $16 $12
    dec h                                         ; $50db: $25
    ld bc, $3d02                                  ; $50dc: $01 $02 $3d
    adc h                                         ; $50df: $8c
    ccf                                           ; $50e0: $3f
    dec bc                                        ; $50e1: $0b
    cpl                                           ; $50e2: $2f
    daa                                           ; $50e3: $27
    ccf                                           ; $50e4: $3f
    ld de, $0a3e                                  ; $50e5: $11 $3e $0a
    ld e, $1a                                     ; $50e8: $1e $1a
    inc a                                         ; $50ea: $3c
    inc b                                         ; $50eb: $04
    ld [bc], a                                    ; $50ec: $02
    inc a                                         ; $50ed: $3c
    ld [bc], a                                    ; $50ee: $02
    inc d                                         ; $50ef: $14
    ld [bc], a                                    ; $50f0: $02
    inc l                                         ; $50f1: $2c
    add [hl]                                      ; $50f2: $86
    inc d                                         ; $50f3: $14
    inc a                                         ; $50f4: $3c
    inc l                                         ; $50f5: $2c
    inc a                                         ; $50f6: $3c
    ld l, $3e                                     ; $50f7: $2e $3e
    ld [bc], a                                    ; $50f9: $02
    ld bc, $000e                                  ; $50fa: $01 $0e $00
    ld [bc], a                                    ; $50fd: $02
    ld l, b                                       ; $50fe: $68
    add [hl]                                      ; $50ff: $86
    rst $18                                       ; $5100: $df
    or a                                          ; $5101: $b7
    ld h, l                                       ; $5102: $65
    ld e, e                                       ; $5103: $5b
    sbc $ae                                       ; $5104: $de $ae
    ld [bc], a                                    ; $5106: $02
    ld d, b                                       ; $5107: $50
    ld b, $00                                     ; $5108: $06 $00
    adc b                                         ; $510a: $88
    cp $7f                                        ; $510b: $fe $7f
    sbc [hl]                                      ; $510d: $9e
    sbc a                                         ; $510e: $9f
    dec a                                         ; $510f: $3d
    ccf                                           ; $5110: $3f
    dec l                                         ; $5111: $2d
    ccf                                           ; $5112: $3f
    ld [bc], a                                    ; $5113: $02
    rra                                           ; $5114: $1f
    add h                                         ; $5115: $84
    cpl                                           ; $5116: $2f
    ccf                                           ; $5117: $3f
    inc sp                                        ; $5118: $33
    ccf                                           ; $5119: $3f
    ld [bc], a                                    ; $511a: $02
    ld e, $02                                     ; $511b: $1e $02
    ld [bc], a                                    ; $511d: $02
    add h                                         ; $511e: $84
    cp l                                          ; $511f: $bd
    rst $38                                       ; $5120: $ff
    rst $20                                       ; $5121: $e7
    rst $38                                       ; $5122: $ff
    ld [bc], a                                    ; $5123: $02
    jr @+$0a                                      ; $5124: $18 $08

    nop                                           ; $5126: $00
    add [hl]                                      ; $5127: $86
    cp b                                          ; $5128: $b8
    add sp, -$48                                  ; $5129: $e8 $b8
    add sp, -$50                                  ; $512b: $e8 $b0
    ldh a, [rDIV]                                 ; $512d: $f0 $04
    ldh [$82], a                                  ; $512f: $e0 $82
    sub b                                         ; $5131: $90
    ldh a, [rSC]                                  ; $5132: $f0 $02
    ldh [rSC], a                                  ; $5134: $e0 $02
    nop                                           ; $5136: $00
    ld [bc], a                                    ; $5137: $02
    ld [bc], a                                    ; $5138: $02
    add h                                         ; $5139: $84
    db $dd                                        ; $513a: $dd
    rst $18                                       ; $513b: $df
    and a                                         ; $513c: $a7
    rst $38                                       ; $513d: $ff
    ld [bc], a                                    ; $513e: $02
    ld a, b                                       ; $513f: $78
    ld [$ff00], sp                                ; $5140: $08 $00 $ff
    rlca                                          ; $5143: $07
    ld bc, $07f8                                  ; $5144: $01 $f8 $07
    ld a, [c]                                     ; $5147: $f2
    ld bc, $ffeb                                  ; $5148: $01 $eb $ff
    ld [bc], a                                    ; $514b: $02
    inc [hl]                                      ; $514c: $34
    ld [bc], a                                    ; $514d: $02
    ld l, l                                       ; $514e: $6d
    ld [bc], a                                    ; $514f: $02
    ld hl, $0002                                  ; $5150: $21 $02 $00
    ld [bc], a                                    ; $5153: $02
    ld [$4002], sp                                ; $5154: $08 $02 $40
    ld [bc], a                                    ; $5157: $02
    nop                                           ; $5158: $00
    ld [bc], a                                    ; $5159: $02
    db $10                                        ; $515a: $10
    inc b                                         ; $515b: $04
    nop                                           ; $515c: $00
    add e                                         ; $515d: $83
    inc d                                         ; $515e: $14
    nop                                           ; $515f: $00
    ld [$0009], sp                                ; $5160: $08 $09 $00
    rst $38                                       ; $5163: $ff
    rrca                                          ; $5164: $0f
    dec b                                         ; $5165: $05
    ld hl, sp+$07                                 ; $5166: $f8 $07
    ld a, [c]                                     ; $5168: $f2
    ld bc, $faea                                  ; $5169: $01 $ea $fa
    ld [$fa00], a                                 ; $516c: $ea $00 $fa
    di                                            ; $516f: $f3
    ld a, [$fafb]                                 ; $5170: $fa $fb $fa
    inc bc                                        ; $5173: $03
    ld [bc], a                                    ; $5174: $02
    ld bc, $0202                                  ; $5175: $01 $02 $02
    ld [bc], a                                    ; $5178: $02
    inc b                                         ; $5179: $04
    ld [bc], a                                    ; $517a: $02
    ld b, $03                                     ; $517b: $06 $03
    rlca                                          ; $517d: $07
    ld [bc], a                                    ; $517e: $02
    dec b                                         ; $517f: $05
    add l                                         ; $5180: $85
    inc b                                         ; $5181: $04
    inc bc                                        ; $5182: $03
    ld [bc], a                                    ; $5183: $02
    inc bc                                        ; $5184: $03
    ld [bc], a                                    ; $5185: $02
    ld [bc], a                                    ; $5186: $02
    inc bc                                        ; $5187: $03
    ld [bc], a                                    ; $5188: $02
    rlca                                          ; $5189: $07
    ld [bc], a                                    ; $518a: $02
    rrca                                          ; $518b: $0f
    adc b                                         ; $518c: $88
    add hl, de                                    ; $518d: $19
    rra                                           ; $518e: $1f
    inc hl                                        ; $518f: $23
    ccf                                           ; $5190: $3f
    ld l, a                                       ; $5191: $6f
    ld e, a                                       ; $5192: $5f
    rst $38                                       ; $5193: $ff
    sbc a                                         ; $5194: $9f
    ld [bc], a                                    ; $5195: $02
    inc a                                         ; $5196: $3c
    add h                                         ; $5197: $84
    ld d, $12                                     ; $5198: $16 $12
    dec h                                         ; $519a: $25
    ld bc, $3d02                                  ; $519b: $01 $02 $3d
    adc h                                         ; $519e: $8c
    ccf                                           ; $519f: $3f
    dec bc                                        ; $51a0: $0b
    cpl                                           ; $51a1: $2f
    daa                                           ; $51a2: $27
    ccf                                           ; $51a3: $3f
    ld de, $0a3e                                  ; $51a4: $11 $3e $0a
    ld e, $1a                                     ; $51a7: $1e $1a
    inc a                                         ; $51a9: $3c
    inc b                                         ; $51aa: $04
    ld [bc], a                                    ; $51ab: $02
    inc a                                         ; $51ac: $3c
    ld [bc], a                                    ; $51ad: $02
    inc d                                         ; $51ae: $14
    ld [bc], a                                    ; $51af: $02
    inc l                                         ; $51b0: $2c
    add [hl]                                      ; $51b1: $86
    inc d                                         ; $51b2: $14
    inc a                                         ; $51b3: $3c
    inc l                                         ; $51b4: $2c
    inc a                                         ; $51b5: $3c
    ld l, $3e                                     ; $51b6: $2e $3e
    ld [bc], a                                    ; $51b8: $02
    ld bc, $000e                                  ; $51b9: $01 $0e $00
    ld [bc], a                                    ; $51bc: $02
    ld l, b                                       ; $51bd: $68
    add [hl]                                      ; $51be: $86
    rst $18                                       ; $51bf: $df
    or a                                          ; $51c0: $b7
    ld h, l                                       ; $51c1: $65
    ld e, e                                       ; $51c2: $5b
    sbc $ae                                       ; $51c3: $de $ae
    ld [bc], a                                    ; $51c5: $02
    ld d, b                                       ; $51c6: $50
    ld b, $00                                     ; $51c7: $06 $00
    adc b                                         ; $51c9: $88
    rst $38                                       ; $51ca: $ff
    ld a, a                                       ; $51cb: $7f
    sbc [hl]                                      ; $51cc: $9e
    sbc a                                         ; $51cd: $9f
    ld e, $1f                                     ; $51ce: $1e $1f
    dec l                                         ; $51d0: $2d
    ccf                                           ; $51d1: $3f
    ld [bc], a                                    ; $51d2: $02
    rra                                           ; $51d3: $1f
    add h                                         ; $51d4: $84
    cpl                                           ; $51d5: $2f
    ccf                                           ; $51d6: $3f
    inc sp                                        ; $51d7: $33
    ccf                                           ; $51d8: $3f
    ld [bc], a                                    ; $51d9: $02
    ld e, $02                                     ; $51da: $1e $02
    ld [bc], a                                    ; $51dc: $02
    add h                                         ; $51dd: $84
    cp l                                          ; $51de: $bd
    rst $38                                       ; $51df: $ff
    rst $20                                       ; $51e0: $e7
    rst $38                                       ; $51e1: $ff
    ld [bc], a                                    ; $51e2: $02
    jr @+$0a                                      ; $51e3: $18 $08

    nop                                           ; $51e5: $00
    add [hl]                                      ; $51e6: $86
    ld a, b                                       ; $51e7: $78
    add sp, -$48                                  ; $51e8: $e8 $b8
    add sp, -$50                                  ; $51ea: $e8 $b0
    ldh a, [rDIV]                                 ; $51ec: $f0 $04
    ldh [$82], a                                  ; $51ee: $e0 $82
    sub b                                         ; $51f0: $90
    ldh a, [rSC]                                  ; $51f1: $f0 $02
    ldh [rSC], a                                  ; $51f3: $e0 $02
    nop                                           ; $51f5: $00
    ld [bc], a                                    ; $51f6: $02
    ld [bc], a                                    ; $51f7: $02
    add h                                         ; $51f8: $84
    db $dd                                        ; $51f9: $dd
    rst $18                                       ; $51fa: $df
    and a                                         ; $51fb: $a7
    rst $38                                       ; $51fc: $ff
    ld [bc], a                                    ; $51fd: $02
    ld a, b                                       ; $51fe: $78
    ld [$ff00], sp                                ; $51ff: $08 $00 $ff
    rlca                                          ; $5202: $07
    ld bc, $07f8                                  ; $5203: $01 $f8 $07
    ld a, [c]                                     ; $5206: $f2
    ld bc, $ffeb                                  ; $5207: $01 $eb $ff
    ld [bc], a                                    ; $520a: $02
    inc [hl]                                      ; $520b: $34
    ld [bc], a                                    ; $520c: $02
    ld l, l                                       ; $520d: $6d
    ld [bc], a                                    ; $520e: $02
    ld hl, $0002                                  ; $520f: $21 $02 $00
    ld [bc], a                                    ; $5212: $02
    ld [$4002], sp                                ; $5213: $08 $02 $40
    ld [bc], a                                    ; $5216: $02
    nop                                           ; $5217: $00
    ld [bc], a                                    ; $5218: $02
    db $10                                        ; $5219: $10
    inc b                                         ; $521a: $04
    nop                                           ; $521b: $00
    add e                                         ; $521c: $83
    inc d                                         ; $521d: $14
    nop                                           ; $521e: $00
    ld [$0009], sp                                ; $521f: $08 $09 $00
    rst $38                                       ; $5222: $ff
    rrca                                          ; $5223: $0f
    dec b                                         ; $5224: $05
    ld hl, sp+$07                                 ; $5225: $f8 $07
    ld a, [c]                                     ; $5227: $f2
    ld bc, $fceb                                  ; $5228: $01 $eb $fc
    db $ec                                        ; $522b: $ec
    cp $fb                                        ; $522c: $fe $fb
    di                                            ; $522e: $f3
    ei                                            ; $522f: $fb
    ei                                            ; $5230: $fb
    ei                                            ; $5231: $fb
    inc bc                                        ; $5232: $03
    ld [bc], a                                    ; $5233: $02
    ld a, $92                                     ; $5234: $3e $92
    ld b, l                                       ; $5236: $45
    ld b, c                                       ; $5237: $41
    xor e                                         ; $5238: $ab
    adc e                                         ; $5239: $8b
    rst $18                                       ; $523a: $df
    sub [hl]                                      ; $523b: $96
    rst $18                                       ; $523c: $df
    ret nc                                        ; $523d: $d0

    rst $38                                       ; $523e: $ff
    ld a, [c]                                     ; $523f: $f2
    ld a, a                                       ; $5240: $7f
    ld b, b                                       ; $5241: $40
    ld a, a                                       ; $5242: $7f
    ld h, b                                       ; $5243: $60
    ccf                                           ; $5244: $3f
    inc hl                                        ; $5245: $23
    ccf                                           ; $5246: $3f
    ld sp, $7e02                                  ; $5247: $31 $02 $7e
    adc d                                         ; $524a: $8a
    xor d                                         ; $524b: $aa
    ld a, [$7d6d]                                 ; $524c: $fa $6d $7d
    ld e, e                                       ; $524f: $5b
    ld a, a                                       ; $5250: $7f
    ld c, l                                       ; $5251: $4d
    ld a, a                                       ; $5252: $7f
    ld c, l                                       ; $5253: $4d
    ld a, a                                       ; $5254: $7f
    ld [bc], a                                    ; $5255: $02
    ld [bc], a                                    ; $5256: $02
    ld [bc], a                                    ; $5257: $02
    ld bc, $0206                                  ; $5258: $01 $06 $02
    add d                                         ; $525b: $82
    inc bc                                        ; $525c: $03
    ld bc, $0204                                  ; $525d: $01 $04 $02
    ld c, $00                                     ; $5260: $0e $00
    add d                                         ; $5262: $82
    db $f4                                        ; $5263: $f4
    inc a                                         ; $5264: $3c
    ld c, $00                                     ; $5265: $0e $00
    ld [bc], a                                    ; $5267: $02
    ld d, b                                       ; $5268: $50
    add [hl]                                      ; $5269: $86
    sbc $ae                                       ; $526a: $de $ae
    ld h, l                                       ; $526c: $65
    ld e, e                                       ; $526d: $5b
    rst $18                                       ; $526e: $df
    or a                                          ; $526f: $b7
    ld [bc], a                                    ; $5270: $02
    ld l, b                                       ; $5271: $68
    ld [$0200], sp                                ; $5272: $08 $00 $02
    jr nz, @-$74                                  ; $5275: $20 $8a

    ld a, [hl]                                    ; $5277: $7e
    ld [hl], a                                    ; $5278: $77
    ld a, l                                       ; $5279: $7d
    ld a, a                                       ; $527a: $7f
    ei                                            ; $527b: $fb
    rst $38                                       ; $527c: $ff
    cp a                                          ; $527d: $bf
    rst $38                                       ; $527e: $ff
    ld e, b                                       ; $527f: $58
    ld a, a                                       ; $5280: $7f
    ld [bc], a                                    ; $5281: $02
    ccf                                           ; $5282: $3f
    ld [bc], a                                    ; $5283: $02
    nop                                           ; $5284: $00
    ld [bc], a                                    ; $5285: $02
    inc [hl]                                      ; $5286: $34
    add d                                         ; $5287: $82
    adc e                                         ; $5288: $8b
    rst $38                                       ; $5289: $ff
    ld [bc], a                                    ; $528a: $02
    rst $30                                       ; $528b: $f7
    inc c                                         ; $528c: $0c
    nop                                           ; $528d: $00
    ld b, $80                                     ; $528e: $06 $80
    ld [bc], a                                    ; $5290: $02
    nop                                           ; $5291: $00
    ld [bc], a                                    ; $5292: $02
    add b                                         ; $5293: $80
    inc b                                         ; $5294: $04
    nop                                           ; $5295: $00
    ld [bc], a                                    ; $5296: $02
    ld [hl-], a                                   ; $5297: $32
    add h                                         ; $5298: $84
    call Call_0df_7fff                            ; $5299: $cd $ff $7f
    rst $38                                       ; $529c: $ff
    ld [bc], a                                    ; $529d: $02
    add b                                         ; $529e: $80
    ld [$ff00], sp                                ; $529f: $08 $00 $ff
    rlca                                          ; $52a2: $07
    ld bc, $07f8                                  ; $52a3: $01 $f8 $07
    ld a, [c]                                     ; $52a6: $f2
    ld bc, $fdec                                  ; $52a7: $01 $ec $fd
    adc b                                         ; $52aa: $88
    nop                                           ; $52ab: $00
    ld [hl], h                                    ; $52ac: $74
    nop                                           ; $52ad: $00
    xor c                                         ; $52ae: $a9
    nop                                           ; $52af: $00
    ld b, b                                       ; $52b0: $40
    nop                                           ; $52b1: $00
    ld b, b                                       ; $52b2: $40
    inc c                                         ; $52b3: $0c
    nop                                           ; $52b4: $00
    add e                                         ; $52b5: $83
    ld [$0400], sp                                ; $52b6: $08 $00 $04
    add hl, bc                                    ; $52b9: $09
    nop                                           ; $52ba: $00
    rst $38                                       ; $52bb: $ff
    rrca                                          ; $52bc: $0f
    dec b                                         ; $52bd: $05
    ld hl, sp+$07                                 ; $52be: $f8 $07
    ld a, [c]                                     ; $52c0: $f2
    ld bc, $fdec                                  ; $52c1: $01 $ec $fd
    db $ed                                        ; $52c4: $ed
    nop                                           ; $52c5: $00
    db $fc                                        ; $52c6: $fc
    di                                            ; $52c7: $f3
    db $fc                                        ; $52c8: $fc
    ei                                            ; $52c9: $fb
    db $fc                                        ; $52ca: $fc
    inc bc                                        ; $52cb: $03
    ld [bc], a                                    ; $52cc: $02
    rra                                           ; $52cd: $1f
    sbc [hl]                                      ; $52ce: $9e
    inc h                                         ; $52cf: $24
    jr nz, @+$5b                                  ; $52d0: $20 $59

    ld c, c                                       ; $52d2: $49
    ld l, a                                       ; $52d3: $6f
    ld c, [hl]                                    ; $52d4: $4e
    ld l, [hl]                                    ; $52d5: $6e
    ld l, b                                       ; $52d6: $68
    ld a, a                                       ; $52d7: $7f
    ld [hl], e                                    ; $52d8: $73
    ccf                                           ; $52d9: $3f
    jr nz, jr_0df_531b                            ; $52da: $20 $3f

    jr nc, @+$21                                  ; $52dc: $30 $1f

    ld de, $787f                                  ; $52de: $11 $7f $78
    ld e, a                                       ; $52e1: $5f
    ld a, a                                       ; $52e2: $7f
    dec l                                         ; $52e3: $2d
    dec a                                         ; $52e4: $3d
    ld c, [hl]                                    ; $52e5: $4e
    ld a, [hl]                                    ; $52e6: $7e
    ld e, l                                       ; $52e7: $5d
    ld a, a                                       ; $52e8: $7f
    sbc [hl]                                      ; $52e9: $9e
    rst $38                                       ; $52ea: $ff
    db $fd                                        ; $52eb: $fd
    sbc a                                         ; $52ec: $9f
    ld [bc], a                                    ; $52ed: $02
    ld b, $02                                     ; $52ee: $06 $02
    dec b                                         ; $52f0: $05
    inc bc                                        ; $52f1: $03
    ld b, $87                                     ; $52f2: $06 $87
    ld [bc], a                                    ; $52f4: $02
    ld b, $02                                     ; $52f5: $06 $02
    rlca                                          ; $52f7: $07
    ld bc, $0206                                  ; $52f8: $01 $06 $02
    ld [bc], a                                    ; $52fb: $02
    ld b, $0e                                     ; $52fc: $06 $0e
    inc b                                         ; $52fe: $04
    add d                                         ; $52ff: $82
    db $ec                                        ; $5300: $ec
    db $fc                                        ; $5301: $fc
    inc c                                         ; $5302: $0c
    nop                                           ; $5303: $00
    ld [bc], a                                    ; $5304: $02
    ld d, b                                       ; $5305: $50
    add [hl]                                      ; $5306: $86
    sbc $ae                                       ; $5307: $de $ae
    ld h, l                                       ; $5309: $65
    ld e, e                                       ; $530a: $5b
    rst $18                                       ; $530b: $df
    or a                                          ; $530c: $b7
    ld [bc], a                                    ; $530d: $02
    ld l, b                                       ; $530e: $68
    ld a, [bc]                                    ; $530f: $0a
    nop                                           ; $5310: $00
    adc d                                         ; $5311: $8a
    jr c, jr_0df_5344                             ; $5312: $38 $30

    ld a, [hl]                                    ; $5314: $7e
    ld a, a                                       ; $5315: $7f
    cp l                                          ; $5316: $bd
    rst $38                                       ; $5317: $ff
    rst $30                                       ; $5318: $f7
    rst $38                                       ; $5319: $ff
    ld a, c                                       ; $531a: $79

jr_0df_531b:
    ld a, a                                       ; $531b: $7f
    ld [bc], a                                    ; $531c: $02
    rrca                                          ; $531d: $0f
    ld [bc], a                                    ; $531e: $02
    nop                                           ; $531f: $00
    ld [bc], a                                    ; $5320: $02
    inc [hl]                                      ; $5321: $34
    add d                                         ; $5322: $82
    adc e                                         ; $5323: $8b
    rst $38                                       ; $5324: $ff
    ld [bc], a                                    ; $5325: $02
    rst $30                                       ; $5326: $f7
    ld c, $00                                     ; $5327: $0e $00
    ld [bc], a                                    ; $5329: $02
    ldh [$81], a                                  ; $532a: $e0 $81
    ret nc                                        ; $532c: $d0

    inc bc                                        ; $532d: $03
    ldh a, [rSC]                                  ; $532e: $f0 $02
    add b                                         ; $5330: $80
    inc b                                         ; $5331: $04
    nop                                           ; $5332: $00
    ld [bc], a                                    ; $5333: $02
    ld [hl-], a                                   ; $5334: $32
    add h                                         ; $5335: $84
    call Call_0df_7fff                            ; $5336: $cd $ff $7f
    rst $38                                       ; $5339: $ff
    ld [bc], a                                    ; $533a: $02
    add b                                         ; $533b: $80
    ld a, [bc]                                    ; $533c: $0a
    nop                                           ; $533d: $00
    rst $38                                       ; $533e: $ff
    rlca                                          ; $533f: $07
    ld bc, $07f8                                  ; $5340: $01 $f8 $07
    ld a, [c]                                     ; $5343: $f2

jr_0df_5344:
    ld bc, $ffed                                  ; $5344: $01 $ed $ff
    adc b                                         ; $5347: $88
    nop                                           ; $5348: $00
    ld l, h                                       ; $5349: $6c
    nop                                           ; $534a: $00
    sbc c                                         ; $534b: $99
    nop                                           ; $534c: $00
    ld b, b                                       ; $534d: $40
    nop                                           ; $534e: $00
    ld b, h                                       ; $534f: $44
    inc c                                         ; $5350: $0c
    nop                                           ; $5351: $00
    add e                                         ; $5352: $83
    ld [$0400], sp                                ; $5353: $08 $00 $04
    add hl, bc                                    ; $5356: $09
    nop                                           ; $5357: $00
    rst $38                                       ; $5358: $ff
    rrca                                          ; $5359: $0f
    dec b                                         ; $535a: $05
    ld hl, sp+$07                                 ; $535b: $f8 $07
    ld a, [c]                                     ; $535d: $f2
    ld bc, $fdeb                                  ; $535e: $01 $eb $fd
    db $eb                                        ; $5361: $eb
    ld bc, $f3fb                                  ; $5362: $01 $fb $f3
    ei                                            ; $5365: $fb
    ei                                            ; $5366: $fb
    ei                                            ; $5367: $fb
    inc bc                                        ; $5368: $03
    ld [bc], a                                    ; $5369: $02
    rlca                                          ; $536a: $07
    add d                                         ; $536b: $82
    add hl, bc                                    ; $536c: $09
    ld [$1402], sp                                ; $536d: $08 $02 $14
    ld [bc], a                                    ; $5370: $02
    ld d, $8c                                     ; $5371: $16 $8c
    rra                                           ; $5373: $1f
    dec de                                        ; $5374: $1b
    ld e, $16                                     ; $5375: $1e $16
    rra                                           ; $5377: $1f
    db $10                                        ; $5378: $10
    rla                                           ; $5379: $17
    db $10                                        ; $537a: $10
    dec c                                         ; $537b: $0d
    add hl, bc                                    ; $537c: $09
    rrca                                          ; $537d: $0f
    inc c                                         ; $537e: $0c
    ld [bc], a                                    ; $537f: $02
    rra                                           ; $5380: $1f
    ld [bc], a                                    ; $5381: $02
    dec a                                         ; $5382: $3d
    adc b                                         ; $5383: $88
    ld h, $3e                                     ; $5384: $26 $3e
    ld c, l                                       ; $5386: $4d
    ld a, a                                       ; $5387: $7f
    sbc [hl]                                      ; $5388: $9e
    rst $38                                       ; $5389: $ff
    sbc $bf                                       ; $538a: $de $bf
    ld [bc], a                                    ; $538c: $02
    inc c                                         ; $538d: $0c
    add h                                         ; $538e: $84
    ld b, $02                                     ; $538f: $06 $02
    dec bc                                        ; $5391: $0b
    add hl, bc                                    ; $5392: $09
    ld [bc], a                                    ; $5393: $02
    dec c                                         ; $5394: $0d
    adc h                                         ; $5395: $8c
    dec bc                                        ; $5396: $0b
    inc bc                                        ; $5397: $03
    rrca                                          ; $5398: $0f
    rlca                                          ; $5399: $07
    rrca                                          ; $539a: $0f
    ld bc, $090f                                  ; $539b: $01 $0f $09
    ld c, $0a                                     ; $539e: $0e $0a
    inc c                                         ; $53a0: $0c
    inc b                                         ; $53a1: $04
    ld [bc], a                                    ; $53a2: $02
    inc c                                         ; $53a3: $0c
    ld [bc], a                                    ; $53a4: $02
    inc b                                         ; $53a5: $04
    ld [bc], a                                    ; $53a6: $02
    inc c                                         ; $53a7: $0c
    add c                                         ; $53a8: $81
    inc b                                         ; $53a9: $04
    inc bc                                        ; $53aa: $03
    inc c                                         ; $53ab: $0c
    ld [bc], a                                    ; $53ac: $02
    ld c, $0e                                     ; $53ad: $0e $0e
    nop                                           ; $53af: $00
    ld [bc], a                                    ; $53b0: $02
    ld d, b                                       ; $53b1: $50
    add [hl]                                      ; $53b2: $86
    sbc $ae                                       ; $53b3: $de $ae
    ld h, l                                       ; $53b5: $65
    ld e, e                                       ; $53b6: $5b
    rst $18                                       ; $53b7: $df
    or a                                          ; $53b8: $b7
    ld [bc], a                                    ; $53b9: $02
    ld l, b                                       ; $53ba: $68
    ld [$8c00], sp                                ; $53bb: $08 $00 $8c
    ccf                                           ; $53be: $3f
    daa                                           ; $53bf: $27
    ld e, $1f                                     ; $53c0: $1e $1f
    ld a, $3f                                     ; $53c2: $3e $3f
    dec a                                         ; $53c4: $3d
    ccf                                           ; $53c5: $3f
    ld e, e                                       ; $53c6: $5b
    ld a, a                                       ; $53c7: $7f
    dec a                                         ; $53c8: $3d
    ccf                                           ; $53c9: $3f
    ld [bc], a                                    ; $53ca: $02
    rrca                                          ; $53cb: $0f
    ld [bc], a                                    ; $53cc: $02
    nop                                           ; $53cd: $00
    ld [bc], a                                    ; $53ce: $02
    inc [hl]                                      ; $53cf: $34
    add d                                         ; $53d0: $82
    adc e                                         ; $53d1: $8b
    rst $38                                       ; $53d2: $ff
    ld [bc], a                                    ; $53d3: $02
    rst $30                                       ; $53d4: $f7
    ld a, [bc]                                    ; $53d5: $0a
    nop                                           ; $53d6: $00
    add d                                         ; $53d7: $82
    ld e, b                                       ; $53d8: $58
    ld hl, sp+$02                                 ; $53d9: $f8 $02
    ldh a, [rSC]                                  ; $53db: $f0 $02
    ldh [rSC], a                                  ; $53dd: $e0 $02
    ldh a, [$82]                                  ; $53df: $f0 $82
    add sp, -$08                                  ; $53e1: $e8 $f8
    ld [bc], a                                    ; $53e3: $02
    ldh a, [rDIV]                                 ; $53e4: $f0 $04
    nop                                           ; $53e6: $00
    ld [bc], a                                    ; $53e7: $02
    ld [hl-], a                                   ; $53e8: $32
    add h                                         ; $53e9: $84
    call Call_0df_7fff                            ; $53ea: $cd $ff $7f
    rst $38                                       ; $53ed: $ff
    ld [bc], a                                    ; $53ee: $02
    add b                                         ; $53ef: $80
    ld [$ff00], sp                                ; $53f0: $08 $00 $ff
    rlca                                          ; $53f3: $07
    ld bc, $07f8                                  ; $53f4: $01 $f8 $07
    ld a, [c]                                     ; $53f7: $f2
    ld bc, $00ec                                  ; $53f8: $01 $ec $00
    adc d                                         ; $53fb: $8a
    nop                                           ; $53fc: $00
    inc [hl]                                      ; $53fd: $34
    nop                                           ; $53fe: $00
    ld e, d                                       ; $53ff: $5a
    nop                                           ; $5400: $00
    ld c, c                                       ; $5401: $49
    nop                                           ; $5402: $00
    ld [bc], a                                    ; $5403: $02
    nop                                           ; $5404: $00
    ld [$0003], sp                                ; $5405: $08 $03 $00
    add e                                         ; $5408: $83
    ld b, b                                       ; $5409: $40
    nop                                           ; $540a: $00
    db $10                                        ; $540b: $10
    inc b                                         ; $540c: $04
    nop                                           ; $540d: $00
    add e                                         ; $540e: $83
    inc d                                         ; $540f: $14
    nop                                           ; $5410: $00
    ld [$0009], sp                                ; $5411: $08 $09 $00
    rst $38                                       ; $5414: $ff
    rrca                                          ; $5415: $0f
    dec b                                         ; $5416: $05
    ld hl, sp+$07                                 ; $5417: $f8 $07
    ld a, [c]                                     ; $5419: $f2
    ld bc, $fbeb                                  ; $541a: $01 $eb $fb
    db $eb                                        ; $541d: $eb
    ld bc, $f3fb                                  ; $541e: $01 $fb $f3
    ei                                            ; $5421: $fb
    ei                                            ; $5422: $fb
    ei                                            ; $5423: $fb
    inc bc                                        ; $5424: $03
    ld [bc], a                                    ; $5425: $02
    ld bc, $0202                                  ; $5426: $01 $02 $02
    inc b                                         ; $5429: $04
    dec b                                         ; $542a: $05
    adc d                                         ; $542b: $8a
    rlca                                          ; $542c: $07
    ld b, $07                                     ; $542d: $06 $07
    dec b                                         ; $542f: $05
    rlca                                          ; $5430: $07
    inc b                                         ; $5431: $04
    dec b                                         ; $5432: $05
    inc b                                         ; $5433: $04
    inc bc                                        ; $5434: $03
    ld [bc], a                                    ; $5435: $02
    ld [bc], a                                    ; $5436: $02
    inc bc                                        ; $5437: $03
    ld [bc], a                                    ; $5438: $02
    rlca                                          ; $5439: $07
    ld [bc], a                                    ; $543a: $02
    rrca                                          ; $543b: $0f
    adc b                                         ; $543c: $88
    inc sp                                        ; $543d: $33
    ccf                                           ; $543e: $3f
    ld b, a                                       ; $543f: $47
    ld a, a                                       ; $5440: $7f
    ld l, a                                       ; $5441: $6f
    ld e, a                                       ; $5442: $5f
    rst $38                                       ; $5443: $ff
    sbc a                                         ; $5444: $9f
    ld [bc], a                                    ; $5445: $02
    inc a                                         ; $5446: $3c
    add h                                         ; $5447: $84
    ld d, $02                                     ; $5448: $16 $02
    dec bc                                        ; $544a: $0b
    add hl, bc                                    ; $544b: $09
    ld [bc], a                                    ; $544c: $02
    dec l                                         ; $544d: $2d
    adc h                                         ; $544e: $8c
    dec sp                                        ; $544f: $3b
    inc sp                                        ; $5450: $33
    cpl                                           ; $5451: $2f
    daa                                           ; $5452: $27
    ccf                                           ; $5453: $3f
    ld bc, $093f                                  ; $5454: $01 $3f $09
    ld e, $1a                                     ; $5457: $1e $1a
    inc a                                         ; $5459: $3c
    inc b                                         ; $545a: $04
    ld [bc], a                                    ; $545b: $02
    inc a                                         ; $545c: $3c
    ld [bc], a                                    ; $545d: $02
    inc d                                         ; $545e: $14
    ld [bc], a                                    ; $545f: $02
    inc l                                         ; $5460: $2c
    add [hl]                                      ; $5461: $86
    inc d                                         ; $5462: $14
    inc a                                         ; $5463: $3c
    ld l, $3e                                     ; $5464: $2e $3e
    cpl                                           ; $5466: $2f
    dec a                                         ; $5467: $3d
    ld c, $00                                     ; $5468: $0e $00
    ld [bc], a                                    ; $546a: $02
    ld d, b                                       ; $546b: $50
    add [hl]                                      ; $546c: $86
    sbc $ae                                       ; $546d: $de $ae
    ld h, l                                       ; $546f: $65
    ld e, e                                       ; $5470: $5b
    rst $18                                       ; $5471: $df
    or a                                          ; $5472: $b7
    ld [bc], a                                    ; $5473: $02
    ld l, b                                       ; $5474: $68
    ld [$0200], sp                                ; $5475: $08 $00 $02
    ld l, a                                       ; $5478: $6f
    ld [bc], a                                    ; $5479: $02
    rra                                           ; $547a: $1f
    adc b                                         ; $547b: $88
    ld e, $1f                                     ; $547c: $1e $1f
    ld a, $3f                                     ; $547e: $3e $3f
    ld e, e                                       ; $5480: $5b
    ld a, a                                       ; $5481: $7f
    dec a                                         ; $5482: $3d
    ccf                                           ; $5483: $3f
    ld [bc], a                                    ; $5484: $02
    rrca                                          ; $5485: $0f
    ld [bc], a                                    ; $5486: $02
    nop                                           ; $5487: $00
    ld [bc], a                                    ; $5488: $02
    inc [hl]                                      ; $5489: $34
    add d                                         ; $548a: $82
    adc e                                         ; $548b: $8b
    rst $38                                       ; $548c: $ff
    ld [bc], a                                    ; $548d: $02
    rst $30                                       ; $548e: $f7
    ld a, [bc]                                    ; $548f: $0a
    nop                                           ; $5490: $00
    add h                                         ; $5491: $84
    ld e, h                                       ; $5492: $5c
    db $f4                                        ; $5493: $f4
    ld e, b                                       ; $5494: $58
    ld hl, sp+$04                                 ; $5495: $f8 $04
    ldh a, [$82]                                  ; $5497: $f0 $82
    add sp, -$08                                  ; $5499: $e8 $f8
    ld [bc], a                                    ; $549b: $02
    ldh a, [rDIV]                                 ; $549c: $f0 $04
    nop                                           ; $549e: $00
    ld [bc], a                                    ; $549f: $02
    ld [hl-], a                                   ; $54a0: $32
    add h                                         ; $54a1: $84
    call Call_0df_7fff                            ; $54a2: $cd $ff $7f
    rst $38                                       ; $54a5: $ff
    ld [bc], a                                    ; $54a6: $02
    add b                                         ; $54a7: $80
    ld [$ff00], sp                                ; $54a8: $08 $00 $ff
    rlca                                          ; $54ab: $07
    ld bc, $07f8                                  ; $54ac: $01 $f8 $07
    ld a, [c]                                     ; $54af: $f2
    ld bc, $00ec                                  ; $54b0: $01 $ec $00
    adc d                                         ; $54b3: $8a
    nop                                           ; $54b4: $00
    inc [hl]                                      ; $54b5: $34
    nop                                           ; $54b6: $00
    ld e, d                                       ; $54b7: $5a
    nop                                           ; $54b8: $00
    ld c, c                                       ; $54b9: $49
    nop                                           ; $54ba: $00
    ld [bc], a                                    ; $54bb: $02
    nop                                           ; $54bc: $00
    ld [$0003], sp                                ; $54bd: $08 $03 $00
    add e                                         ; $54c0: $83
    ld b, b                                       ; $54c1: $40
    nop                                           ; $54c2: $00
    db $10                                        ; $54c3: $10
    inc b                                         ; $54c4: $04
    nop                                           ; $54c5: $00
    add e                                         ; $54c6: $83
    inc d                                         ; $54c7: $14
    nop                                           ; $54c8: $00
    ld [$0009], sp                                ; $54c9: $08 $09 $00
    rst $38                                       ; $54cc: $ff
    rrca                                          ; $54cd: $0f
    dec b                                         ; $54ce: $05
    ld hl, sp+$07                                 ; $54cf: $f8 $07
    ld a, [c]                                     ; $54d1: $f2
    ld bc, $fbeb                                  ; $54d2: $01 $eb $fb
    db $eb                                        ; $54d5: $eb
    ld bc, $f3fb                                  ; $54d6: $01 $fb $f3
    ei                                            ; $54d9: $fb
    ei                                            ; $54da: $fb
    ei                                            ; $54db: $fb
    inc bc                                        ; $54dc: $03
    ld [bc], a                                    ; $54dd: $02
    ld bc, $0202                                  ; $54de: $01 $02 $02
    inc b                                         ; $54e1: $04
    dec b                                         ; $54e2: $05
    adc d                                         ; $54e3: $8a
    rlca                                          ; $54e4: $07
    ld b, $07                                     ; $54e5: $06 $07
    dec b                                         ; $54e7: $05
    rlca                                          ; $54e8: $07
    inc b                                         ; $54e9: $04
    dec b                                         ; $54ea: $05
    inc b                                         ; $54eb: $04
    inc bc                                        ; $54ec: $03
    ld [bc], a                                    ; $54ed: $02
    ld [bc], a                                    ; $54ee: $02
    inc bc                                        ; $54ef: $03
    ld [bc], a                                    ; $54f0: $02
    rlca                                          ; $54f1: $07
    ld [bc], a                                    ; $54f2: $02
    rrca                                          ; $54f3: $0f
    adc b                                         ; $54f4: $88
    inc sp                                        ; $54f5: $33
    ccf                                           ; $54f6: $3f
    ld b, a                                       ; $54f7: $47
    ld a, a                                       ; $54f8: $7f
    ld l, a                                       ; $54f9: $6f
    ld e, a                                       ; $54fa: $5f
    rst $38                                       ; $54fb: $ff
    sbc a                                         ; $54fc: $9f
    ld [bc], a                                    ; $54fd: $02
    inc a                                         ; $54fe: $3c
    add h                                         ; $54ff: $84
    ld d, $02                                     ; $5500: $16 $02
    dec bc                                        ; $5502: $0b
    add hl, bc                                    ; $5503: $09
    ld [bc], a                                    ; $5504: $02
    dec l                                         ; $5505: $2d
    adc h                                         ; $5506: $8c
    dec sp                                        ; $5507: $3b
    inc sp                                        ; $5508: $33
    cpl                                           ; $5509: $2f
    daa                                           ; $550a: $27
    ccf                                           ; $550b: $3f
    ld bc, $093f                                  ; $550c: $01 $3f $09
    ld e, $1a                                     ; $550f: $1e $1a
    inc a                                         ; $5511: $3c
    inc b                                         ; $5512: $04
    ld [bc], a                                    ; $5513: $02
    inc a                                         ; $5514: $3c
    ld [bc], a                                    ; $5515: $02
    inc d                                         ; $5516: $14
    ld [bc], a                                    ; $5517: $02
    inc l                                         ; $5518: $2c
    add [hl]                                      ; $5519: $86
    inc d                                         ; $551a: $14
    inc a                                         ; $551b: $3c
    ld l, $3e                                     ; $551c: $2e $3e
    cpl                                           ; $551e: $2f
    dec a                                         ; $551f: $3d
    ld c, $00                                     ; $5520: $0e $00
    ld [bc], a                                    ; $5522: $02
    ld d, b                                       ; $5523: $50
    add [hl]                                      ; $5524: $86
    sbc $ae                                       ; $5525: $de $ae
    ld h, l                                       ; $5527: $65
    ld e, e                                       ; $5528: $5b
    rst $18                                       ; $5529: $df
    or a                                          ; $552a: $b7
    ld [bc], a                                    ; $552b: $02
    ld l, b                                       ; $552c: $68
    ld [$0200], sp                                ; $552d: $08 $00 $02
    ld l, a                                       ; $5530: $6f
    inc b                                         ; $5531: $04
    rra                                           ; $5532: $1f
    add [hl]                                      ; $5533: $86
    ld a, $3f                                     ; $5534: $3e $3f
    ld e, e                                       ; $5536: $5b
    ld a, a                                       ; $5537: $7f
    dec a                                         ; $5538: $3d
    ccf                                           ; $5539: $3f
    ld [bc], a                                    ; $553a: $02
    rrca                                          ; $553b: $0f
    ld [bc], a                                    ; $553c: $02
    nop                                           ; $553d: $00
    ld [bc], a                                    ; $553e: $02
    inc [hl]                                      ; $553f: $34
    add d                                         ; $5540: $82
    adc e                                         ; $5541: $8b
    rst $38                                       ; $5542: $ff
    ld [bc], a                                    ; $5543: $02
    rst $30                                       ; $5544: $f7
    ld a, [bc]                                    ; $5545: $0a
    nop                                           ; $5546: $00
    add l                                         ; $5547: $85
    ld e, h                                       ; $5548: $5c
    db $f4                                        ; $5549: $f4
    ld e, b                                       ; $554a: $58
    ld hl, sp+$50                                 ; $554b: $f8 $50
    inc bc                                        ; $554d: $03
    ldh a, [$82]                                  ; $554e: $f0 $82
    add sp, -$08                                  ; $5550: $e8 $f8
    ld [bc], a                                    ; $5552: $02
    ldh a, [rDIV]                                 ; $5553: $f0 $04
    nop                                           ; $5555: $00
    ld [bc], a                                    ; $5556: $02
    ld [hl-], a                                   ; $5557: $32
    add h                                         ; $5558: $84
    call Call_0df_7fff                            ; $5559: $cd $ff $7f
    rst $38                                       ; $555c: $ff
    ld [bc], a                                    ; $555d: $02
    add b                                         ; $555e: $80
    ld [$ff00], sp                                ; $555f: $08 $00 $ff
    rlca                                          ; $5562: $07
    ld bc, $07f8                                  ; $5563: $01 $f8 $07
    ld a, [c]                                     ; $5566: $f2
    ld bc, $00ec                                  ; $5567: $01 $ec $00
    adc d                                         ; $556a: $8a
    nop                                           ; $556b: $00
    inc [hl]                                      ; $556c: $34
    nop                                           ; $556d: $00
    ld e, d                                       ; $556e: $5a
    nop                                           ; $556f: $00
    ld c, c                                       ; $5570: $49
    nop                                           ; $5571: $00
    ld [bc], a                                    ; $5572: $02
    nop                                           ; $5573: $00
    ld [$0003], sp                                ; $5574: $08 $03 $00
    add e                                         ; $5577: $83
    ld b, b                                       ; $5578: $40
    nop                                           ; $5579: $00
    db $10                                        ; $557a: $10
    inc b                                         ; $557b: $04
    nop                                           ; $557c: $00
    add e                                         ; $557d: $83
    inc d                                         ; $557e: $14
    nop                                           ; $557f: $00
    ld [$0009], sp                                ; $5580: $08 $09 $00
    rst $38                                       ; $5583: $ff
    rrca                                          ; $5584: $0f
    dec b                                         ; $5585: $05
    ld hl, sp+$07                                 ; $5586: $f8 $07
    ld a, [c]                                     ; $5588: $f2
    ld bc, $fbeb                                  ; $5589: $01 $eb $fb
    db $eb                                        ; $558c: $eb
    ld bc, $f3fb                                  ; $558d: $01 $fb $f3
    ei                                            ; $5590: $fb
    ei                                            ; $5591: $fb
    ei                                            ; $5592: $fb
    inc bc                                        ; $5593: $03
    ld [bc], a                                    ; $5594: $02
    ld bc, $0202                                  ; $5595: $01 $02 $02
    inc b                                         ; $5598: $04
    dec b                                         ; $5599: $05
    adc d                                         ; $559a: $8a
    rlca                                          ; $559b: $07
    ld b, $07                                     ; $559c: $06 $07
    dec b                                         ; $559e: $05
    rlca                                          ; $559f: $07
    inc b                                         ; $55a0: $04
    dec b                                         ; $55a1: $05
    inc b                                         ; $55a2: $04
    inc bc                                        ; $55a3: $03
    ld [bc], a                                    ; $55a4: $02
    ld [bc], a                                    ; $55a5: $02
    inc bc                                        ; $55a6: $03
    ld [bc], a                                    ; $55a7: $02
    rlca                                          ; $55a8: $07
    ld [bc], a                                    ; $55a9: $02
    rrca                                          ; $55aa: $0f
    adc b                                         ; $55ab: $88
    inc sp                                        ; $55ac: $33
    ccf                                           ; $55ad: $3f
    ld b, a                                       ; $55ae: $47
    ld a, a                                       ; $55af: $7f
    ld l, a                                       ; $55b0: $6f
    ld e, a                                       ; $55b1: $5f
    rst $38                                       ; $55b2: $ff
    sbc a                                         ; $55b3: $9f
    ld [bc], a                                    ; $55b4: $02
    inc a                                         ; $55b5: $3c
    add h                                         ; $55b6: $84
    ld d, $02                                     ; $55b7: $16 $02
    dec bc                                        ; $55b9: $0b
    add hl, bc                                    ; $55ba: $09
    ld [bc], a                                    ; $55bb: $02
    dec l                                         ; $55bc: $2d
    adc h                                         ; $55bd: $8c
    dec sp                                        ; $55be: $3b
    inc sp                                        ; $55bf: $33
    cpl                                           ; $55c0: $2f
    daa                                           ; $55c1: $27
    ccf                                           ; $55c2: $3f
    ld bc, $093f                                  ; $55c3: $01 $3f $09
    ld e, $1a                                     ; $55c6: $1e $1a
    inc a                                         ; $55c8: $3c
    inc b                                         ; $55c9: $04
    ld [bc], a                                    ; $55ca: $02
    inc a                                         ; $55cb: $3c
    ld [bc], a                                    ; $55cc: $02
    inc d                                         ; $55cd: $14
    ld [bc], a                                    ; $55ce: $02
    inc l                                         ; $55cf: $2c
    add [hl]                                      ; $55d0: $86
    inc d                                         ; $55d1: $14
    inc a                                         ; $55d2: $3c
    ld l, $3e                                     ; $55d3: $2e $3e
    cpl                                           ; $55d5: $2f
    dec a                                         ; $55d6: $3d
    ld c, $00                                     ; $55d7: $0e $00
    ld [bc], a                                    ; $55d9: $02
    ld l, b                                       ; $55da: $68
    add [hl]                                      ; $55db: $86
    rst $18                                       ; $55dc: $df
    or a                                          ; $55dd: $b7
    ld h, l                                       ; $55de: $65
    ld e, e                                       ; $55df: $5b
    sbc $ae                                       ; $55e0: $de $ae
    ld [bc], a                                    ; $55e2: $02
    ld d, b                                       ; $55e3: $50
    ld [$0200], sp                                ; $55e4: $08 $00 $02
    ld l, a                                       ; $55e7: $6f
    inc b                                         ; $55e8: $04
    rra                                           ; $55e9: $1f
    add [hl]                                      ; $55ea: $86
    ld a, $3f                                     ; $55eb: $3e $3f
    ld e, e                                       ; $55ed: $5b
    ld a, a                                       ; $55ee: $7f
    dec a                                         ; $55ef: $3d
    ccf                                           ; $55f0: $3f
    ld [bc], a                                    ; $55f1: $02
    rrca                                          ; $55f2: $0f
    ld [bc], a                                    ; $55f3: $02
    nop                                           ; $55f4: $00
    ld [bc], a                                    ; $55f5: $02
    or l                                          ; $55f6: $b5
    add d                                         ; $55f7: $82
    adc e                                         ; $55f8: $8b
    rst $38                                       ; $55f9: $ff
    ld [bc], a                                    ; $55fa: $02
    halt                                          ; $55fb: $76
    ld a, [bc]                                    ; $55fc: $0a
    nop                                           ; $55fd: $00
    add l                                         ; $55fe: $85
    ld e, h                                       ; $55ff: $5c
    db $f4                                        ; $5600: $f4
    ld e, b                                       ; $5601: $58
    ld hl, sp+$50                                 ; $5602: $f8 $50
    inc bc                                        ; $5604: $03
    ldh a, [$82]                                  ; $5605: $f0 $82
    add sp, -$08                                  ; $5607: $e8 $f8
    ld [bc], a                                    ; $5609: $02
    ldh a, [rDIV]                                 ; $560a: $f0 $04
    nop                                           ; $560c: $00
    ld [bc], a                                    ; $560d: $02
    ld a, [$6582]                                 ; $560e: $fa $82 $65
    rst $38                                       ; $5611: $ff
    ld [bc], a                                    ; $5612: $02
    sbc a                                         ; $5613: $9f
    ld a, [bc]                                    ; $5614: $0a
    nop                                           ; $5615: $00
    rst $38                                       ; $5616: $ff
    rlca                                          ; $5617: $07
    ld bc, $07f8                                  ; $5618: $01 $f8 $07
    ld a, [c]                                     ; $561b: $f2
    ld bc, $00ec                                  ; $561c: $01 $ec $00
    adc d                                         ; $561f: $8a
    nop                                           ; $5620: $00
    inc [hl]                                      ; $5621: $34
    nop                                           ; $5622: $00
    ld e, d                                       ; $5623: $5a
    nop                                           ; $5624: $00
    ld c, c                                       ; $5625: $49
    nop                                           ; $5626: $00
    ld [bc], a                                    ; $5627: $02
    nop                                           ; $5628: $00
    ld [$0003], sp                                ; $5629: $08 $03 $00
    add e                                         ; $562c: $83
    ld b, b                                       ; $562d: $40
    nop                                           ; $562e: $00
    db $10                                        ; $562f: $10
    inc b                                         ; $5630: $04
    nop                                           ; $5631: $00
    add e                                         ; $5632: $83
    inc d                                         ; $5633: $14
    nop                                           ; $5634: $00
    ld [$0009], sp                                ; $5635: $08 $09 $00
    rst $38                                       ; $5638: $ff
    rrca                                          ; $5639: $0f
    dec b                                         ; $563a: $05
    ld hl, sp+$07                                 ; $563b: $f8 $07
    ld a, [c]                                     ; $563d: $f2
    ld bc, $fbeb                                  ; $563e: $01 $eb $fb
    db $eb                                        ; $5641: $eb
    ld bc, $f3fb                                  ; $5642: $01 $fb $f3
    ei                                            ; $5645: $fb
    ei                                            ; $5646: $fb
    ei                                            ; $5647: $fb
    inc bc                                        ; $5648: $03
    ld [bc], a                                    ; $5649: $02
    ld bc, $0202                                  ; $564a: $01 $02 $02
    inc b                                         ; $564d: $04
    dec b                                         ; $564e: $05
    adc d                                         ; $564f: $8a
    rlca                                          ; $5650: $07
    ld b, $07                                     ; $5651: $06 $07
    dec b                                         ; $5653: $05
    rlca                                          ; $5654: $07
    inc b                                         ; $5655: $04
    dec b                                         ; $5656: $05
    inc b                                         ; $5657: $04
    inc bc                                        ; $5658: $03
    ld [bc], a                                    ; $5659: $02
    ld [bc], a                                    ; $565a: $02
    inc bc                                        ; $565b: $03
    ld [bc], a                                    ; $565c: $02
    rlca                                          ; $565d: $07
    ld [bc], a                                    ; $565e: $02
    rrca                                          ; $565f: $0f
    adc b                                         ; $5660: $88
    inc sp                                        ; $5661: $33
    ccf                                           ; $5662: $3f
    ld b, a                                       ; $5663: $47
    ld a, a                                       ; $5664: $7f
    ld l, a                                       ; $5665: $6f
    ld e, a                                       ; $5666: $5f
    rst $38                                       ; $5667: $ff
    sbc a                                         ; $5668: $9f
    ld [bc], a                                    ; $5669: $02
    inc a                                         ; $566a: $3c
    add h                                         ; $566b: $84
    ld d, $02                                     ; $566c: $16 $02
    dec bc                                        ; $566e: $0b
    add hl, bc                                    ; $566f: $09
    ld [bc], a                                    ; $5670: $02
    dec l                                         ; $5671: $2d
    adc h                                         ; $5672: $8c
    dec sp                                        ; $5673: $3b
    inc sp                                        ; $5674: $33
    cpl                                           ; $5675: $2f
    daa                                           ; $5676: $27
    ccf                                           ; $5677: $3f
    ld bc, $093f                                  ; $5678: $01 $3f $09
    ld e, $1a                                     ; $567b: $1e $1a
    inc a                                         ; $567d: $3c
    inc b                                         ; $567e: $04
    ld [bc], a                                    ; $567f: $02
    inc a                                         ; $5680: $3c
    ld [bc], a                                    ; $5681: $02
    inc d                                         ; $5682: $14
    ld [bc], a                                    ; $5683: $02
    inc l                                         ; $5684: $2c
    add [hl]                                      ; $5685: $86
    inc d                                         ; $5686: $14
    inc a                                         ; $5687: $3c
    ld l, $3e                                     ; $5688: $2e $3e
    cpl                                           ; $568a: $2f
    dec a                                         ; $568b: $3d
    inc c                                         ; $568c: $0c
    nop                                           ; $568d: $00
    ld [bc], a                                    ; $568e: $02
    ld d, b                                       ; $568f: $50
    add [hl]                                      ; $5690: $86
    sbc $ae                                       ; $5691: $de $ae
    ld h, l                                       ; $5693: $65
    ld e, e                                       ; $5694: $5b
    rst $18                                       ; $5695: $df
    or a                                          ; $5696: $b7
    ld [bc], a                                    ; $5697: $02
    ld l, b                                       ; $5698: $68
    ld a, [bc]                                    ; $5699: $0a
    nop                                           ; $569a: $00
    ld [bc], a                                    ; $569b: $02
    ld l, a                                       ; $569c: $6f
    inc b                                         ; $569d: $04
    rra                                           ; $569e: $1f
    add [hl]                                      ; $569f: $86
    ld a, $3f                                     ; $56a0: $3e $3f
    ld e, e                                       ; $56a2: $5b
    ld a, a                                       ; $56a3: $7f
    dec a                                         ; $56a4: $3d
    ccf                                           ; $56a5: $3f
    ld [bc], a                                    ; $56a6: $02
    rrca                                          ; $56a7: $0f
    ld [bc], a                                    ; $56a8: $02
    inc [hl]                                      ; $56a9: $34
    add d                                         ; $56aa: $82
    adc e                                         ; $56ab: $8b
    rst $38                                       ; $56ac: $ff
    ld [bc], a                                    ; $56ad: $02
    rst $30                                       ; $56ae: $f7
    inc c                                         ; $56af: $0c
    nop                                           ; $56b0: $00
    add l                                         ; $56b1: $85
    ld e, h                                       ; $56b2: $5c
    db $f4                                        ; $56b3: $f4
    ld e, b                                       ; $56b4: $58
    ld hl, sp+$50                                 ; $56b5: $f8 $50
    inc bc                                        ; $56b7: $03
    ldh a, [$82]                                  ; $56b8: $f0 $82
    add sp, -$08                                  ; $56ba: $e8 $f8
    ld [bc], a                                    ; $56bc: $02
    ldh a, [rSC]                                  ; $56bd: $f0 $02
    nop                                           ; $56bf: $00
    ld [bc], a                                    ; $56c0: $02
    ld [hl-], a                                   ; $56c1: $32
    add h                                         ; $56c2: $84
    call Call_0df_7fff                            ; $56c3: $cd $ff $7f
    rst $38                                       ; $56c6: $ff
    ld [bc], a                                    ; $56c7: $02
    add b                                         ; $56c8: $80
    ld a, [bc]                                    ; $56c9: $0a
    nop                                           ; $56ca: $00
    rst $38                                       ; $56cb: $ff
    rlca                                          ; $56cc: $07
    ld bc, $07f8                                  ; $56cd: $01 $f8 $07
    ld a, [c]                                     ; $56d0: $f2
    ld bc, $00ec                                  ; $56d1: $01 $ec $00
    adc d                                         ; $56d4: $8a
    nop                                           ; $56d5: $00
    inc [hl]                                      ; $56d6: $34
    nop                                           ; $56d7: $00
    ld e, d                                       ; $56d8: $5a
    nop                                           ; $56d9: $00
    ld c, c                                       ; $56da: $49
    nop                                           ; $56db: $00
    ld [bc], a                                    ; $56dc: $02
    nop                                           ; $56dd: $00
    ld [$0003], sp                                ; $56de: $08 $03 $00
    add e                                         ; $56e1: $83
    ld b, b                                       ; $56e2: $40
    nop                                           ; $56e3: $00
    db $10                                        ; $56e4: $10
    inc b                                         ; $56e5: $04
    nop                                           ; $56e6: $00
    add e                                         ; $56e7: $83
    inc d                                         ; $56e8: $14
    nop                                           ; $56e9: $00
    ld [$0009], sp                                ; $56ea: $08 $09 $00
    rst $38                                       ; $56ed: $ff
    rrca                                          ; $56ee: $0f
    dec b                                         ; $56ef: $05
    ld hl, sp+$07                                 ; $56f0: $f8 $07
    ld a, [c]                                     ; $56f2: $f2
    ld bc, $fbeb                                  ; $56f3: $01 $eb $fb
    db $eb                                        ; $56f6: $eb
    ld bc, $f3fb                                  ; $56f7: $01 $fb $f3
    ei                                            ; $56fa: $fb
    ei                                            ; $56fb: $fb
    ei                                            ; $56fc: $fb
    inc bc                                        ; $56fd: $03
    ld [bc], a                                    ; $56fe: $02
    ld bc, $0202                                  ; $56ff: $01 $02 $02
    inc b                                         ; $5702: $04
    dec b                                         ; $5703: $05
    adc d                                         ; $5704: $8a
    rlca                                          ; $5705: $07
    ld b, $07                                     ; $5706: $06 $07
    dec b                                         ; $5708: $05
    rlca                                          ; $5709: $07
    inc b                                         ; $570a: $04
    dec b                                         ; $570b: $05
    inc b                                         ; $570c: $04
    inc bc                                        ; $570d: $03
    ld [bc], a                                    ; $570e: $02
    ld [bc], a                                    ; $570f: $02
    inc bc                                        ; $5710: $03
    ld [bc], a                                    ; $5711: $02
    rlca                                          ; $5712: $07
    ld [bc], a                                    ; $5713: $02
    rrca                                          ; $5714: $0f
    adc b                                         ; $5715: $88
    inc sp                                        ; $5716: $33
    ccf                                           ; $5717: $3f
    ld b, a                                       ; $5718: $47
    ld a, a                                       ; $5719: $7f
    ld l, a                                       ; $571a: $6f
    ld e, a                                       ; $571b: $5f
    rst $38                                       ; $571c: $ff
    sbc a                                         ; $571d: $9f
    ld [bc], a                                    ; $571e: $02
    inc a                                         ; $571f: $3c
    add h                                         ; $5720: $84
    ld d, $02                                     ; $5721: $16 $02
    dec bc                                        ; $5723: $0b
    add hl, bc                                    ; $5724: $09
    ld [bc], a                                    ; $5725: $02
    dec l                                         ; $5726: $2d
    adc h                                         ; $5727: $8c
    dec sp                                        ; $5728: $3b
    inc sp                                        ; $5729: $33
    cpl                                           ; $572a: $2f
    daa                                           ; $572b: $27
    ccf                                           ; $572c: $3f
    ld bc, $093f                                  ; $572d: $01 $3f $09
    ld e, $1a                                     ; $5730: $1e $1a
    inc a                                         ; $5732: $3c
    inc b                                         ; $5733: $04
    ld [bc], a                                    ; $5734: $02
    inc a                                         ; $5735: $3c
    ld [bc], a                                    ; $5736: $02
    inc d                                         ; $5737: $14
    ld [bc], a                                    ; $5738: $02
    inc l                                         ; $5739: $2c
    add [hl]                                      ; $573a: $86
    inc d                                         ; $573b: $14
    inc a                                         ; $573c: $3c
    ld l, $3e                                     ; $573d: $2e $3e
    cpl                                           ; $573f: $2f
    dec a                                         ; $5740: $3d
    ld c, $00                                     ; $5741: $0e $00
    ld [bc], a                                    ; $5743: $02
    ld d, b                                       ; $5744: $50
    add [hl]                                      ; $5745: $86
    sbc $ae                                       ; $5746: $de $ae
    ld h, l                                       ; $5748: $65
    ld e, e                                       ; $5749: $5b
    rst $18                                       ; $574a: $df
    or a                                          ; $574b: $b7
    ld [bc], a                                    ; $574c: $02
    ld l, b                                       ; $574d: $68
    ld [$0200], sp                                ; $574e: $08 $00 $02
    ld l, a                                       ; $5751: $6f
    inc b                                         ; $5752: $04
    rra                                           ; $5753: $1f
    add [hl]                                      ; $5754: $86
    ld a, $3f                                     ; $5755: $3e $3f
    ld e, e                                       ; $5757: $5b
    ld a, a                                       ; $5758: $7f
    dec a                                         ; $5759: $3d
    ccf                                           ; $575a: $3f
    ld [bc], a                                    ; $575b: $02
    rrca                                          ; $575c: $0f
    ld [bc], a                                    ; $575d: $02
    nop                                           ; $575e: $00
    ld [bc], a                                    ; $575f: $02
    inc [hl]                                      ; $5760: $34
    add d                                         ; $5761: $82
    adc e                                         ; $5762: $8b
    rst $38                                       ; $5763: $ff
    ld [bc], a                                    ; $5764: $02
    rst $30                                       ; $5765: $f7
    ld a, [bc]                                    ; $5766: $0a
    nop                                           ; $5767: $00
    add l                                         ; $5768: $85
    ld e, h                                       ; $5769: $5c
    db $f4                                        ; $576a: $f4
    ld e, b                                       ; $576b: $58
    ld hl, sp+$50                                 ; $576c: $f8 $50
    inc bc                                        ; $576e: $03
    ldh a, [$82]                                  ; $576f: $f0 $82
    add sp, -$08                                  ; $5771: $e8 $f8
    ld [bc], a                                    ; $5773: $02
    ldh a, [rDIV]                                 ; $5774: $f0 $04
    nop                                           ; $5776: $00
    ld [bc], a                                    ; $5777: $02
    ld [hl-], a                                   ; $5778: $32
    add h                                         ; $5779: $84
    call Call_0df_7fff                            ; $577a: $cd $ff $7f
    rst $38                                       ; $577d: $ff
    ld [bc], a                                    ; $577e: $02
    add b                                         ; $577f: $80
    ld [$ff00], sp                                ; $5780: $08 $00 $ff
    rlca                                          ; $5783: $07
    ld bc, $07f8                                  ; $5784: $01 $f8 $07
    ld a, [c]                                     ; $5787: $f2
    ld bc, $00ec                                  ; $5788: $01 $ec $00
    adc d                                         ; $578b: $8a
    nop                                           ; $578c: $00
    inc [hl]                                      ; $578d: $34
    nop                                           ; $578e: $00
    ld e, d                                       ; $578f: $5a
    nop                                           ; $5790: $00
    ld c, c                                       ; $5791: $49
    nop                                           ; $5792: $00
    ld [bc], a                                    ; $5793: $02
    nop                                           ; $5794: $00
    ld [$0003], sp                                ; $5795: $08 $03 $00
    add e                                         ; $5798: $83
    ld b, b                                       ; $5799: $40
    nop                                           ; $579a: $00
    db $10                                        ; $579b: $10
    inc b                                         ; $579c: $04
    nop                                           ; $579d: $00
    add e                                         ; $579e: $83
    inc d                                         ; $579f: $14
    nop                                           ; $57a0: $00
    ld [$0009], sp                                ; $57a1: $08 $09 $00
    rst $38                                       ; $57a4: $ff
    rrca                                          ; $57a5: $0f
    dec b                                         ; $57a6: $05
    ld hl, sp+$07                                 ; $57a7: $f8 $07
    ld a, [c]                                     ; $57a9: $f2
    ld bc, $fbeb                                  ; $57aa: $01 $eb $fb
    db $eb                                        ; $57ad: $eb
    ld bc, $f3fb                                  ; $57ae: $01 $fb $f3
    ei                                            ; $57b1: $fb
    ei                                            ; $57b2: $fb
    ei                                            ; $57b3: $fb
    inc bc                                        ; $57b4: $03
    ld [bc], a                                    ; $57b5: $02
    ld bc, $0202                                  ; $57b6: $01 $02 $02
    inc b                                         ; $57b9: $04
    dec b                                         ; $57ba: $05
    adc d                                         ; $57bb: $8a
    rlca                                          ; $57bc: $07
    ld b, $07                                     ; $57bd: $06 $07
    dec b                                         ; $57bf: $05
    rlca                                          ; $57c0: $07
    inc b                                         ; $57c1: $04
    dec b                                         ; $57c2: $05
    inc b                                         ; $57c3: $04
    inc bc                                        ; $57c4: $03
    ld [bc], a                                    ; $57c5: $02
    ld [bc], a                                    ; $57c6: $02
    inc bc                                        ; $57c7: $03
    ld [bc], a                                    ; $57c8: $02
    rlca                                          ; $57c9: $07
    ld [bc], a                                    ; $57ca: $02
    rrca                                          ; $57cb: $0f
    adc b                                         ; $57cc: $88
    inc sp                                        ; $57cd: $33
    ccf                                           ; $57ce: $3f
    ld b, a                                       ; $57cf: $47
    ld a, a                                       ; $57d0: $7f
    ld l, a                                       ; $57d1: $6f
    ld e, a                                       ; $57d2: $5f
    rst $38                                       ; $57d3: $ff
    sbc a                                         ; $57d4: $9f
    ld [bc], a                                    ; $57d5: $02
    inc a                                         ; $57d6: $3c
    add h                                         ; $57d7: $84
    ld d, $02                                     ; $57d8: $16 $02
    dec bc                                        ; $57da: $0b
    add hl, bc                                    ; $57db: $09
    ld [bc], a                                    ; $57dc: $02
    dec l                                         ; $57dd: $2d
    adc h                                         ; $57de: $8c
    dec sp                                        ; $57df: $3b
    inc sp                                        ; $57e0: $33
    cpl                                           ; $57e1: $2f
    daa                                           ; $57e2: $27
    ccf                                           ; $57e3: $3f
    ld bc, $093f                                  ; $57e4: $01 $3f $09
    ld e, $1a                                     ; $57e7: $1e $1a
    inc a                                         ; $57e9: $3c
    inc b                                         ; $57ea: $04
    ld [bc], a                                    ; $57eb: $02
    inc a                                         ; $57ec: $3c
    ld [bc], a                                    ; $57ed: $02
    inc d                                         ; $57ee: $14
    ld [bc], a                                    ; $57ef: $02
    inc l                                         ; $57f0: $2c
    add [hl]                                      ; $57f1: $86
    inc d                                         ; $57f2: $14
    inc a                                         ; $57f3: $3c
    ld l, $3e                                     ; $57f4: $2e $3e
    cpl                                           ; $57f6: $2f
    dec a                                         ; $57f7: $3d
    ld [$0200], sp                                ; $57f8: $08 $00 $02
    ld d, b                                       ; $57fb: $50
    add [hl]                                      ; $57fc: $86
    sbc $ae                                       ; $57fd: $de $ae
    ld h, l                                       ; $57ff: $65
    ld e, e                                       ; $5800: $5b
    rst $18                                       ; $5801: $df
    or a                                          ; $5802: $b7
    ld [bc], a                                    ; $5803: $02
    ld l, b                                       ; $5804: $68
    ld c, $00                                     ; $5805: $0e $00
    ld [bc], a                                    ; $5807: $02
    ld l, a                                       ; $5808: $6f
    inc b                                         ; $5809: $04
    rra                                           ; $580a: $1f
    adc b                                         ; $580b: $88
    ld a, $3f                                     ; $580c: $3e $3f
    ld e, e                                       ; $580e: $5b
    ld a, a                                       ; $580f: $7f
    dec a                                         ; $5810: $3d
    ccf                                           ; $5811: $3f
    adc e                                         ; $5812: $8b
    rst $38                                       ; $5813: $ff
    ld [bc], a                                    ; $5814: $02
    rst $30                                       ; $5815: $f7
    stop                                          ; $5816: $10 $00
    add l                                         ; $5818: $85
    ld e, h                                       ; $5819: $5c
    db $f4                                        ; $581a: $f4
    ld e, b                                       ; $581b: $58
    ld hl, sp+$50                                 ; $581c: $f8 $50
    inc bc                                        ; $581e: $03
    ldh a, [$82]                                  ; $581f: $f0 $82
    add sp, -$08                                  ; $5821: $e8 $f8
    ld [bc], a                                    ; $5823: $02
    ld a, [c]                                     ; $5824: $f2
    add h                                         ; $5825: $84
    call Call_0df_7fff                            ; $5826: $cd $ff $7f
    rst $38                                       ; $5829: $ff
    ld [bc], a                                    ; $582a: $02
    add b                                         ; $582b: $80
    ld c, $00                                     ; $582c: $0e $00
    rst $38                                       ; $582e: $ff
    rlca                                          ; $582f: $07
    ld bc, $07f8                                  ; $5830: $01 $f8 $07
    ld a, [c]                                     ; $5833: $f2
    ld bc, $00ec                                  ; $5834: $01 $ec $00
    adc d                                         ; $5837: $8a
    nop                                           ; $5838: $00
    inc [hl]                                      ; $5839: $34
    nop                                           ; $583a: $00
    ld e, d                                       ; $583b: $5a
    nop                                           ; $583c: $00
    ld c, c                                       ; $583d: $49
    nop                                           ; $583e: $00
    ld [bc], a                                    ; $583f: $02
    nop                                           ; $5840: $00
    ld [$0003], sp                                ; $5841: $08 $03 $00
    add e                                         ; $5844: $83
    ld b, b                                       ; $5845: $40
    nop                                           ; $5846: $00
    db $10                                        ; $5847: $10
    inc b                                         ; $5848: $04
    nop                                           ; $5849: $00
    add e                                         ; $584a: $83
    inc d                                         ; $584b: $14
    nop                                           ; $584c: $00
    ld [$0009], sp                                ; $584d: $08 $09 $00
    rst $38                                       ; $5850: $ff
    rrca                                          ; $5851: $0f
    dec b                                         ; $5852: $05
    ld hl, sp+$07                                 ; $5853: $f8 $07
    ld a, [c]                                     ; $5855: $f2
    ld bc, $f3f9                                  ; $5856: $01 $f9 $f3
    db $eb                                        ; $5859: $eb
    db $fc                                        ; $585a: $fc
    db $eb                                        ; $585b: $eb
    ld [bc], a                                    ; $585c: $02
    ei                                            ; $585d: $fb
    ei                                            ; $585e: $fb
    ei                                            ; $585f: $fb
    inc bc                                        ; $5860: $03
    ld [bc], a                                    ; $5861: $02
    ld d, b                                       ; $5862: $50
    add [hl]                                      ; $5863: $86
    sbc $ae                                       ; $5864: $de $ae
    ld h, l                                       ; $5866: $65
    ld e, e                                       ; $5867: $5b
    rst $18                                       ; $5868: $df
    or a                                          ; $5869: $b7
    ld [bc], a                                    ; $586a: $02
    ld l, b                                       ; $586b: $68
    ld d, $00                                     ; $586c: $16 $00
    ld [bc], a                                    ; $586e: $02
    inc bc                                        ; $586f: $03
    ld [bc], a                                    ; $5870: $02
    inc b                                         ; $5871: $04
    ld [bc], a                                    ; $5872: $02
    ld a, [bc]                                    ; $5873: $0a
    ld [bc], a                                    ; $5874: $02
    dec bc                                        ; $5875: $0b
    adc h                                         ; $5876: $8c
    rrca                                          ; $5877: $0f
    dec c                                         ; $5878: $0d
    rrca                                          ; $5879: $0f
    dec bc                                        ; $587a: $0b
    rrca                                          ; $587b: $0f
    ld [$080b], sp                                ; $587c: $08 $0b $08
    ld b, $04                                     ; $587f: $06 $04
    rlca                                          ; $5881: $07
    ld b, $02                                     ; $5882: $06 $02
    rrca                                          ; $5884: $0f
    adc d                                         ; $5885: $8a
    ld d, $1e                                     ; $5886: $16 $1e
    daa                                           ; $5888: $27
    ccf                                           ; $5889: $3f
    ld c, [hl]                                    ; $588a: $4e
    ld a, a                                       ; $588b: $7f
    ld l, a                                       ; $588c: $6f
    ld e, a                                       ; $588d: $5f
    rst $38                                       ; $588e: $ff
    sbc a                                         ; $588f: $9f
    ld [bc], a                                    ; $5890: $02
    jr c, @-$7a                                   ; $5891: $38 $84

    inc l                                         ; $5893: $2c
    inc b                                         ; $5894: $04
    ld d, $12                                     ; $5895: $16 $12
    ld [bc], a                                    ; $5897: $02
    ld a, [de]                                    ; $5898: $1a
    adc h                                         ; $5899: $8c
    ld [hl], $26                                  ; $589a: $36 $26
    ld e, $0e                                     ; $589c: $1e $0e
    ld a, $02                                     ; $589e: $3e $02
    ld a, $12                                     ; $58a0: $3e $12
    inc a                                         ; $58a2: $3c
    inc [hl]                                      ; $58a3: $34
    jr c, jr_0df_58ae                             ; $58a4: $38 $08

    ld [bc], a                                    ; $58a6: $02
    jr c, jr_0df_58ab                             ; $58a7: $38 $02

    jr z, jr_0df_58ad                             ; $58a9: $28 $02

jr_0df_58ab:
    inc e                                         ; $58ab: $1c
    add a                                         ; $58ac: $87

jr_0df_58ad:
    inc l                                         ; $58ad: $2c

jr_0df_58ae:
    inc a                                         ; $58ae: $3c
    ld e, $3e                                     ; $58af: $1e $3e
    rra                                           ; $58b1: $1f
    dec sp                                        ; $58b2: $3b
    adc e                                         ; $58b3: $8b
    inc bc                                        ; $58b4: $03
    rst $38                                       ; $58b5: $ff
    ld [bc], a                                    ; $58b6: $02
    rra                                           ; $58b7: $1f
    add [hl]                                      ; $58b8: $86
    ld a, $3f                                     ; $58b9: $3e $3f
    ld e, e                                       ; $58bb: $5b
    ld a, a                                       ; $58bc: $7f
    dec a                                         ; $58bd: $3d
    ccf                                           ; $58be: $3f
    ld [bc], a                                    ; $58bf: $02
    rrca                                          ; $58c0: $0f
    ld [de], a                                    ; $58c1: $12
    nop                                           ; $58c2: $00
    add l                                         ; $58c3: $85
    call Call_0df_7fff                            ; $58c4: $cd $ff $7f
    rst $38                                       ; $58c7: $ff
    ret nc                                        ; $58c8: $d0

    inc bc                                        ; $58c9: $03
    ldh a, [$82]                                  ; $58ca: $f0 $82
    add sp, -$08                                  ; $58cc: $e8 $f8
    ld [bc], a                                    ; $58ce: $02
    ldh a, [rNR14]                                ; $58cf: $f0 $14
    nop                                           ; $58d1: $00
    rst $38                                       ; $58d2: $ff
    rlca                                          ; $58d3: $07
    ld bc, $07f8                                  ; $58d4: $01 $f8 $07
    ld a, [c]                                     ; $58d7: $f2
    ld bc, $00ec                                  ; $58d8: $01 $ec $00
    adc d                                         ; $58db: $8a
    nop                                           ; $58dc: $00
    inc [hl]                                      ; $58dd: $34
    nop                                           ; $58de: $00
    ld e, d                                       ; $58df: $5a
    nop                                           ; $58e0: $00
    ld c, c                                       ; $58e1: $49
    nop                                           ; $58e2: $00
    ld [bc], a                                    ; $58e3: $02
    nop                                           ; $58e4: $00
    ld [$0003], sp                                ; $58e5: $08 $03 $00
    add e                                         ; $58e8: $83
    ld b, b                                       ; $58e9: $40
    nop                                           ; $58ea: $00
    db $10                                        ; $58eb: $10
    inc b                                         ; $58ec: $04
    nop                                           ; $58ed: $00
    add e                                         ; $58ee: $83
    inc d                                         ; $58ef: $14
    nop                                           ; $58f0: $00
    ld [$0009], sp                                ; $58f1: $08 $09 $00
    rst $38                                       ; $58f4: $ff
    rrca                                          ; $58f5: $0f
    dec b                                         ; $58f6: $05
    ld hl, sp+$07                                 ; $58f7: $f8 $07
    ld a, [c]                                     ; $58f9: $f2
    ld bc, $f3f7                                  ; $58fa: $01 $f7 $f3
    db $eb                                        ; $58fd: $eb
    ei                                            ; $58fe: $fb
    db $eb                                        ; $58ff: $eb
    inc bc                                        ; $5900: $03
    ei                                            ; $5901: $fb
    db $fc                                        ; $5902: $fc
    ei                                            ; $5903: $fb
    nop                                           ; $5904: $00
    ld [bc], a                                    ; $5905: $02
    ld l, b                                       ; $5906: $68
    add [hl]                                      ; $5907: $86
    sbc $b6                                       ; $5908: $de $b6
    ld h, l                                       ; $590a: $65
    ld e, e                                       ; $590b: $5b
    rst $18                                       ; $590c: $df
    xor a                                         ; $590d: $af
    ld [bc], a                                    ; $590e: $02
    ld d, b                                       ; $590f: $50
    ld d, $00                                     ; $5910: $16 $00
    ld [bc], a                                    ; $5912: $02
    ld bc, $0202                                  ; $5913: $01 $02 $02
    inc b                                         ; $5916: $04
    dec b                                         ; $5917: $05
    adc d                                         ; $5918: $8a
    rlca                                          ; $5919: $07
    ld b, $07                                     ; $591a: $06 $07
    dec b                                         ; $591c: $05
    rlca                                          ; $591d: $07
    inc b                                         ; $591e: $04
    dec b                                         ; $591f: $05
    inc b                                         ; $5920: $04
    inc bc                                        ; $5921: $03
    ld [bc], a                                    ; $5922: $02
    ld [bc], a                                    ; $5923: $02
    inc bc                                        ; $5924: $03
    ld [bc], a                                    ; $5925: $02
    rrca                                          ; $5926: $0f
    adc b                                         ; $5927: $88
    inc sp                                        ; $5928: $33
    ccf                                           ; $5929: $3f
    daa                                           ; $592a: $27
    ccf                                           ; $592b: $3f
    ld [hl], a                                    ; $592c: $77
    ld c, a                                       ; $592d: $4f
    xor e                                         ; $592e: $ab
    rst $18                                       ; $592f: $df
    ld [bc], a                                    ; $5930: $02
    rst $38                                       ; $5931: $ff
    ld [bc], a                                    ; $5932: $02
    ldh a, [$84]                                  ; $5933: $f0 $84
    ld e, b                                       ; $5935: $58
    ld [$242c], sp                                ; $5936: $08 $2c $24
    ld [bc], a                                    ; $5939: $02
    or h                                          ; $593a: $b4
    adc h                                         ; $593b: $8c
    db $ec                                        ; $593c: $ec
    call z, $9cbc                                 ; $593d: $cc $bc $9c
    db $fc                                        ; $5940: $fc
    inc b                                         ; $5941: $04
    db $fc                                        ; $5942: $fc
    inc h                                         ; $5943: $24
    ld a, b                                       ; $5944: $78
    ld l, b                                       ; $5945: $68
    ldh a, [rNR10]                                ; $5946: $f0 $10
    ld [bc], a                                    ; $5948: $02
    ldh a, [rSC]                                  ; $5949: $f0 $02
    ld d, b                                       ; $594b: $50
    ld [bc], a                                    ; $594c: $02
    cp b                                          ; $594d: $b8
    add [hl]                                      ; $594e: $86
    ld a, [hl]                                    ; $594f: $7e
    cp $cd                                        ; $5950: $fe $cd
    rst $38                                       ; $5952: $ff
    ld a, a                                       ; $5953: $7f
    rst $38                                       ; $5954: $ff
    ld [bc], a                                    ; $5955: $02
    rra                                           ; $5956: $1f
    adc d                                         ; $5957: $8a
    ld a, $3f                                     ; $5958: $3e $3f
    ld a, $3f                                     ; $595a: $3e $3f
    ld a, l                                       ; $595c: $7d
    ld a, a                                       ; $595d: $7f
    or a                                          ; $595e: $b7
    rst $38                                       ; $595f: $ff
    ld a, e                                       ; $5960: $7b
    ld a, a                                       ; $5961: $7f
    ld [bc], a                                    ; $5962: $02
    ld e, $12                                     ; $5963: $1e $12
    nop                                           ; $5965: $00
    add l                                         ; $5966: $85
    dec bc                                        ; $5967: $0b
    rrca                                          ; $5968: $0f
    ld a, [bc]                                    ; $5969: $0a
    ld c, $0a                                     ; $596a: $0e $0a
    inc bc                                        ; $596c: $03
    ld c, $82                                     ; $596d: $0e $82
    dec c                                         ; $596f: $0d
    rrca                                          ; $5970: $0f
    ld [bc], a                                    ; $5971: $02
    ld c, $14                                     ; $5972: $0e $14
    nop                                           ; $5974: $00
    rst $38                                       ; $5975: $ff
    rlca                                          ; $5976: $07
    ld bc, $07f8                                  ; $5977: $01 $f8 $07
    ld a, [c]                                     ; $597a: $f2
    ld bc, $00ec                                  ; $597b: $01 $ec $00
    adc d                                         ; $597e: $8a
    nop                                           ; $597f: $00
    inc [hl]                                      ; $5980: $34
    nop                                           ; $5981: $00
    ld e, d                                       ; $5982: $5a
    nop                                           ; $5983: $00
    ld c, c                                       ; $5984: $49
    nop                                           ; $5985: $00
    ld [bc], a                                    ; $5986: $02
    nop                                           ; $5987: $00
    ld [$0003], sp                                ; $5988: $08 $03 $00
    add e                                         ; $598b: $83
    ld b, b                                       ; $598c: $40
    nop                                           ; $598d: $00
    db $10                                        ; $598e: $10
    inc b                                         ; $598f: $04
    nop                                           ; $5990: $00
    add e                                         ; $5991: $83
    inc d                                         ; $5992: $14
    nop                                           ; $5993: $00
    ld [$0009], sp                                ; $5994: $08 $09 $00
    rst $38                                       ; $5997: $ff
    rrca                                          ; $5998: $0f
    dec b                                         ; $5999: $05
    ld hl, sp+$07                                 ; $599a: $f8 $07
    ld a, [c]                                     ; $599c: $f2
    ld bc, $f3f4                                  ; $599d: $01 $f4 $f3
    db $eb                                        ; $59a0: $eb
    ei                                            ; $59a1: $fb
    db $eb                                        ; $59a2: $eb
    inc bc                                        ; $59a3: $03
    ei                                            ; $59a4: $fb
    db $fc                                        ; $59a5: $fc
    ei                                            ; $59a6: $fb
    ld bc, $5002                                  ; $59a7: $01 $02 $50
    add [hl]                                      ; $59aa: $86
    sbc $ae                                       ; $59ab: $de $ae
    ld h, l                                       ; $59ad: $65
    ld e, e                                       ; $59ae: $5b
    rst $18                                       ; $59af: $df
    or a                                          ; $59b0: $b7
    ld [bc], a                                    ; $59b1: $02
    ld l, b                                       ; $59b2: $68
    ld d, $00                                     ; $59b3: $16 $00
    ld [bc], a                                    ; $59b5: $02
    ld bc, $0202                                  ; $59b6: $01 $02 $02
    inc b                                         ; $59b9: $04
    dec b                                         ; $59ba: $05
    adc d                                         ; $59bb: $8a
    rlca                                          ; $59bc: $07
    ld b, $07                                     ; $59bd: $06 $07
    dec b                                         ; $59bf: $05
    rlca                                          ; $59c0: $07
    inc b                                         ; $59c1: $04
    dec b                                         ; $59c2: $05
    inc b                                         ; $59c3: $04
    inc bc                                        ; $59c4: $03
    ld [bc], a                                    ; $59c5: $02
    ld [bc], a                                    ; $59c6: $02
    inc sp                                        ; $59c7: $33
    adc d                                         ; $59c8: $8a
    ld a, a                                       ; $59c9: $7f
    ld c, a                                       ; $59ca: $4f
    cp e                                          ; $59cb: $bb
    rst $28                                       ; $59cc: $ef
    rst $30                                       ; $59cd: $f7
    rst $38                                       ; $59ce: $ff
    ld h, a                                       ; $59cf: $67
    ld a, a                                       ; $59d0: $7f
    dec de                                        ; $59d1: $1b
    rra                                           ; $59d2: $1f
    ld [bc], a                                    ; $59d3: $02
    rrca                                          ; $59d4: $0f
    ld [bc], a                                    ; $59d5: $02
    ldh a, [$84]                                  ; $59d6: $f0 $84
    ld e, b                                       ; $59d8: $58
    ld [$242c], sp                                ; $59d9: $08 $2c $24
    ld [bc], a                                    ; $59dc: $02
    or h                                          ; $59dd: $b4
    adc h                                         ; $59de: $8c
    db $ec                                        ; $59df: $ec
    call z, $94d4                                 ; $59e0: $cc $d4 $94
    db $fc                                        ; $59e3: $fc
    inc b                                         ; $59e4: $04
    call c, $7844                                 ; $59e5: $dc $44 $78
    ld l, b                                       ; $59e8: $68
    ldh a, [rNR10]                                ; $59e9: $f0 $10
    ld [bc], a                                    ; $59eb: $02
    ld a, [c]                                     ; $59ec: $f2
    add h                                         ; $59ed: $84
    call Call_0df_7fff                            ; $59ee: $cd $ff $7f
    rst $38                                       ; $59f1: $ff
    ld [bc], a                                    ; $59f2: $02
    db $f4                                        ; $59f3: $f4
    add h                                         ; $59f4: $84
    cp $fa                                        ; $59f5: $fe $fa
    ld a, [hl]                                    ; $59f7: $7e
    ld a, [$1f02]                                 ; $59f8: $fa $02 $1f
    adc d                                         ; $59fb: $8a
    ld a, $3f                                     ; $59fc: $3e $3f
    ld a, $3f                                     ; $59fe: $3e $3f
    ld a, l                                       ; $5a00: $7d
    ld a, a                                       ; $5a01: $7f
    or a                                          ; $5a02: $b7
    rst $38                                       ; $5a03: $ff
    ld a, e                                       ; $5a04: $7b
    ld a, a                                       ; $5a05: $7f
    ld [bc], a                                    ; $5a06: $02
    ld e, $12                                     ; $5a07: $1e $12
    nop                                           ; $5a09: $00
    add l                                         ; $5a0a: $85
    rla                                           ; $5a0b: $17
    rra                                           ; $5a0c: $1f
    inc d                                         ; $5a0d: $14
    inc e                                         ; $5a0e: $1c
    inc d                                         ; $5a0f: $14
    inc bc                                        ; $5a10: $03
    inc e                                         ; $5a11: $1c
    add d                                         ; $5a12: $82
    ld a, [de]                                    ; $5a13: $1a
    ld e, $02                                     ; $5a14: $1e $02
    inc e                                         ; $5a16: $1c
    inc d                                         ; $5a17: $14
    nop                                           ; $5a18: $00
    rst $38                                       ; $5a19: $ff
    rlca                                          ; $5a1a: $07
    ld bc, $07f8                                  ; $5a1b: $01 $f8 $07
    ld a, [c]                                     ; $5a1e: $f2
    ld bc, $00ec                                  ; $5a1f: $01 $ec $00
    adc d                                         ; $5a22: $8a
    nop                                           ; $5a23: $00
    inc [hl]                                      ; $5a24: $34
    nop                                           ; $5a25: $00
    ld e, d                                       ; $5a26: $5a
    nop                                           ; $5a27: $00
    ld c, c                                       ; $5a28: $49
    nop                                           ; $5a29: $00
    ld [bc], a                                    ; $5a2a: $02
    nop                                           ; $5a2b: $00
    dec b                                         ; $5a2c: $05
    inc bc                                        ; $5a2d: $03
    nop                                           ; $5a2e: $00
    add e                                         ; $5a2f: $83
    ld b, h                                       ; $5a30: $44
    nop                                           ; $5a31: $00
    db $10                                        ; $5a32: $10
    stop                                          ; $5a33: $10 $00
    rst $38                                       ; $5a35: $ff
    rrca                                          ; $5a36: $0f
    dec b                                         ; $5a37: $05
    ld hl, sp+$07                                 ; $5a38: $f8 $07
    ld a, [c]                                     ; $5a3a: $f2
    ld bc, $f3f2                                  ; $5a3b: $01 $f2 $f3
    ld [$eafb], a                                 ; $5a3e: $ea $fb $ea
    inc bc                                        ; $5a41: $03
    ld a, [$fafd]                                 ; $5a42: $fa $fd $fa
    ld bc, $5002                                  ; $5a45: $01 $02 $50
    add [hl]                                      ; $5a48: $86
    sbc $ae                                       ; $5a49: $de $ae
    ld h, l                                       ; $5a4b: $65
    ld e, e                                       ; $5a4c: $5b
    rst $18                                       ; $5a4d: $df
    or a                                          ; $5a4e: $b7
    ld [bc], a                                    ; $5a4f: $02
    ld l, b                                       ; $5a50: $68
    ld d, $00                                     ; $5a51: $16 $00
    ld [bc], a                                    ; $5a53: $02
    inc bc                                        ; $5a54: $03
    add d                                         ; $5a55: $82
    dec b                                         ; $5a56: $05
    inc b                                         ; $5a57: $04
    inc b                                         ; $5a58: $04
    ld a, [bc]                                    ; $5a59: $0a
    adc [hl]                                      ; $5a5a: $8e
    rrca                                          ; $5a5b: $0f
    dec c                                         ; $5a5c: $0d
    rrca                                          ; $5a5d: $0f
    dec bc                                        ; $5a5e: $0b
    rrca                                          ; $5a5f: $0f
    ld [$080f], sp                                ; $5a60: $08 $0f $08
    scf                                           ; $5a63: $37
    dec [hl]                                      ; $5a64: $35
    ld a, a                                       ; $5a65: $7f
    ld c, a                                       ; $5a66: $4f
    cp e                                          ; $5a67: $bb
    rst $08                                       ; $5a68: $cf
    ld [bc], a                                    ; $5a69: $02
    rst $38                                       ; $5a6a: $ff
    ld [bc], a                                    ; $5a6b: $02
    ld a, a                                       ; $5a6c: $7f
    add d                                         ; $5a6d: $82
    ld h, a                                       ; $5a6e: $67
    ld a, a                                       ; $5a6f: $7f
    ld [bc], a                                    ; $5a70: $02
    rra                                           ; $5a71: $1f
    ld [bc], a                                    ; $5a72: $02
    rrca                                          ; $5a73: $0f
    ld [bc], a                                    ; $5a74: $02
    ldh [$90], a                                  ; $5a75: $e0 $90
    jr nc, jr_0df_5a89                            ; $5a77: $30 $10

    ld e, b                                       ; $5a79: $58
    ld c, b                                       ; $5a7a: $48
    add sp, -$58                                  ; $5a7b: $e8 $a8
    cp b                                          ; $5a7d: $b8
    jr @-$06                                      ; $5a7e: $18 $f8

    ld l, b                                       ; $5a80: $68
    ld hl, sp+$08                                 ; $5a81: $f8 $08
    ld hl, sp-$78                                 ; $5a83: $f8 $88
    ldh a, [$d0]                                  ; $5a85: $f0 $d0
    ld [bc], a                                    ; $5a87: $02
    ld a, [c]                                     ; $5a88: $f2

jr_0df_5a89:
    add h                                         ; $5a89: $84
    call Call_0df_7fff                            ; $5a8a: $cd $ff $7f
    rst $38                                       ; $5a8d: $ff
    ld [bc], a                                    ; $5a8e: $02
    ldh a, [$92]                                  ; $5a8f: $f0 $92
    add sp, -$08                                  ; $5a91: $e8 $f8
    ld a, [hl]                                    ; $5a93: $7e
    cp $be                                        ; $5a94: $fe $be
    ld a, [$3f3d]                                 ; $5a96: $fa $3d $3f
    dec a                                         ; $5a99: $3d
    ccf                                           ; $5a9a: $3f
    ld a, l                                       ; $5a9b: $7d
    ld a, a                                       ; $5a9c: $7f
    ld a, e                                       ; $5a9d: $7b
    ld a, a                                       ; $5a9e: $7f
    or a                                          ; $5a9f: $b7
    rst $38                                       ; $5aa0: $ff
    or d                                          ; $5aa1: $b2
    cp $02                                        ; $5aa2: $fe $02
    ld a, [hl]                                    ; $5aa4: $7e
    ld [de], a                                    ; $5aa5: $12
    nop                                           ; $5aa6: $00
    add [hl]                                      ; $5aa7: $86
    rlca                                          ; $5aa8: $07
    rrca                                          ; $5aa9: $0f
    ld b, $0e                                     ; $5aaa: $06 $0e
    ld a, [bc]                                    ; $5aac: $0a
    ld c, $02                                     ; $5aad: $0e $02
    inc c                                         ; $5aaf: $0c
    add d                                         ; $5ab0: $82
    ld a, [bc]                                    ; $5ab1: $0a
    ld c, $02                                     ; $5ab2: $0e $02
    inc c                                         ; $5ab4: $0c
    inc d                                         ; $5ab5: $14
    nop                                           ; $5ab6: $00
    rst $38                                       ; $5ab7: $ff
    rrca                                          ; $5ab8: $0f
    dec b                                         ; $5ab9: $05
    ld hl, sp+$07                                 ; $5aba: $f8 $07
    ld a, [c]                                     ; $5abc: $f2
    ld bc, $f3f3                                  ; $5abd: $01 $f3 $f3
    ld [$eafb], a                                 ; $5ac0: $ea $fb $ea
    inc bc                                        ; $5ac3: $03
    ld a, [$fafd]                                 ; $5ac4: $fa $fd $fa
    ld bc, $5002                                  ; $5ac7: $01 $02 $50
    add [hl]                                      ; $5aca: $86
    sbc $ae                                       ; $5acb: $de $ae
    ld h, l                                       ; $5acd: $65
    ld e, e                                       ; $5ace: $5b
    rst $18                                       ; $5acf: $df
    or a                                          ; $5ad0: $b7
    ld [bc], a                                    ; $5ad1: $02
    ld l, b                                       ; $5ad2: $68
    ld d, $00                                     ; $5ad3: $16 $00
    ld [bc], a                                    ; $5ad5: $02
    inc bc                                        ; $5ad6: $03
    add d                                         ; $5ad7: $82
    dec b                                         ; $5ad8: $05
    inc b                                         ; $5ad9: $04
    inc b                                         ; $5ada: $04
    ld a, [bc]                                    ; $5adb: $0a
    sub b                                         ; $5adc: $90
    rrca                                          ; $5add: $0f
    dec c                                         ; $5ade: $0d
    rrca                                          ; $5adf: $0f
    dec bc                                        ; $5ae0: $0b
    rrca                                          ; $5ae1: $0f
    ld [$080f], sp                                ; $5ae2: $08 $0f $08
    rlca                                          ; $5ae5: $07
    dec b                                         ; $5ae6: $05
    inc sp                                        ; $5ae7: $33
    ld [hl-], a                                   ; $5ae8: $32
    ld a, a                                       ; $5ae9: $7f
    ld c, a                                       ; $5aea: $4f
    cp e                                          ; $5aeb: $bb
    rst $08                                       ; $5aec: $cf
    ld [bc], a                                    ; $5aed: $02
    rst $38                                       ; $5aee: $ff
    ld [bc], a                                    ; $5aef: $02
    ld a, a                                       ; $5af0: $7f
    ld [bc], a                                    ; $5af1: $02
    rra                                           ; $5af2: $1f
    ld [bc], a                                    ; $5af3: $02
    rrca                                          ; $5af4: $0f
    ld [bc], a                                    ; $5af5: $02
    ldh [$92], a                                  ; $5af6: $e0 $92
    jr nc, @+$12                                  ; $5af8: $30 $10

    ld e, b                                       ; $5afa: $58
    ld c, b                                       ; $5afb: $48
    add sp, -$58                                  ; $5afc: $e8 $a8
    cp b                                          ; $5afe: $b8
    jr @-$06                                      ; $5aff: $18 $f8

    ld l, b                                       ; $5b01: $68
    ld hl, sp+$08                                 ; $5b02: $f8 $08
    ld hl, sp-$78                                 ; $5b04: $f8 $88
    ldh a, [$d0]                                  ; $5b06: $f0 $d0
    ld h, b                                       ; $5b08: $60
    jr nz, jr_0df_5b0d                            ; $5b09: $20 $02

    ld a, [c]                                     ; $5b0b: $f2
    add h                                         ; $5b0c: $84

jr_0df_5b0d:
    call Call_0df_7fff                            ; $5b0d: $cd $ff $7f
    rst $38                                       ; $5b10: $ff
    ld [bc], a                                    ; $5b11: $02
    cp $90                                        ; $5b12: $fe $90
    ld a, [hl]                                    ; $5b14: $7e
    ld a, [$fcbc]                                 ; $5b15: $fa $bc $fc
    dec a                                         ; $5b18: $3d
    ccf                                           ; $5b19: $3f
    dec a                                         ; $5b1a: $3d
    ccf                                           ; $5b1b: $3f
    ld a, l                                       ; $5b1c: $7d
    ld a, a                                       ; $5b1d: $7f
    ld a, e                                       ; $5b1e: $7b
    ld a, a                                       ; $5b1f: $7f
    or a                                          ; $5b20: $b7
    rst $38                                       ; $5b21: $ff
    or d                                          ; $5b22: $b2
    cp $02                                        ; $5b23: $fe $02
    ld a, [hl]                                    ; $5b25: $7e
    ld [de], a                                    ; $5b26: $12
    nop                                           ; $5b27: $00
    add [hl]                                      ; $5b28: $86
    rlca                                          ; $5b29: $07
    rrca                                          ; $5b2a: $0f
    ld b, $0e                                     ; $5b2b: $06 $0e
    ld a, [bc]                                    ; $5b2d: $0a
    ld c, $02                                     ; $5b2e: $0e $02
    inc c                                         ; $5b30: $0c
    add d                                         ; $5b31: $82
    ld a, [bc]                                    ; $5b32: $0a
    ld c, $02                                     ; $5b33: $0e $02
    inc c                                         ; $5b35: $0c
    inc d                                         ; $5b36: $14
    nop                                           ; $5b37: $00
    rst $38                                       ; $5b38: $ff
    rlca                                          ; $5b39: $07
    ld bc, $07f8                                  ; $5b3a: $01 $f8 $07
    ld a, [c]                                     ; $5b3d: $f2
    ld bc, $ffeb                                  ; $5b3e: $01 $eb $ff
    adc b                                         ; $5b41: $88
    nop                                           ; $5b42: $00
    inc l                                         ; $5b43: $2c
    nop                                           ; $5b44: $00
    ld e, d                                       ; $5b45: $5a
    nop                                           ; $5b46: $00
    ld d, c                                       ; $5b47: $51
    nop                                           ; $5b48: $00
    inc b                                         ; $5b49: $04
    add hl, bc                                    ; $5b4a: $09
    nop                                           ; $5b4b: $00
    add c                                         ; $5b4c: $81
    ld [$000e], sp                                ; $5b4d: $08 $0e $00
    rst $38                                       ; $5b50: $ff
    rrca                                          ; $5b51: $0f
    dec b                                         ; $5b52: $05
    ld hl, sp+$07                                 ; $5b53: $f8 $07
    ld a, [c]                                     ; $5b55: $f2
    ld bc, $f3f5                                  ; $5b56: $01 $f5 $f3
    ld [$eafb], a                                 ; $5b59: $ea $fb $ea
    inc bc                                        ; $5b5c: $03
    ld a, [$fafd]                                 ; $5b5d: $fa $fd $fa
    nop                                           ; $5b60: $00
    ld [bc], a                                    ; $5b61: $02
    ld d, b                                       ; $5b62: $50
    add [hl]                                      ; $5b63: $86
    sbc $ae                                       ; $5b64: $de $ae
    ld h, l                                       ; $5b66: $65
    ld e, e                                       ; $5b67: $5b
    rst $18                                       ; $5b68: $df
    or a                                          ; $5b69: $b7
    ld [bc], a                                    ; $5b6a: $02
    ld l, b                                       ; $5b6b: $68
    ld d, $00                                     ; $5b6c: $16 $00
    ld [bc], a                                    ; $5b6e: $02
    inc bc                                        ; $5b6f: $03
    add d                                         ; $5b70: $82
    dec b                                         ; $5b71: $05
    inc b                                         ; $5b72: $04
    inc b                                         ; $5b73: $04
    ld a, [bc]                                    ; $5b74: $0a
    adc h                                         ; $5b75: $8c
    rrca                                          ; $5b76: $0f
    dec c                                         ; $5b77: $0d
    rrca                                          ; $5b78: $0f
    dec bc                                        ; $5b79: $0b
    rrca                                          ; $5b7a: $0f
    ld [$080f], sp                                ; $5b7b: $08 $0f $08
    rlca                                          ; $5b7e: $07
    dec b                                         ; $5b7f: $05
    rlca                                          ; $5b80: $07
    ld b, $02                                     ; $5b81: $06 $02
    rra                                           ; $5b83: $1f
    add [hl]                                      ; $5b84: $86
    ld [hl-], a                                   ; $5b85: $32
    ld a, $7f                                     ; $5b86: $3e $7f
    ld c, a                                       ; $5b88: $4f
    cp e                                          ; $5b89: $bb
    rst $08                                       ; $5b8a: $cf
    ld [bc], a                                    ; $5b8b: $02
    rst $38                                       ; $5b8c: $ff
    ld [bc], a                                    ; $5b8d: $02
    rrca                                          ; $5b8e: $0f
    ld [bc], a                                    ; $5b8f: $02
    ldh [$92], a                                  ; $5b90: $e0 $92
    jr nc, jr_0df_5ba4                            ; $5b92: $30 $10

    ld e, b                                       ; $5b94: $58
    ld c, b                                       ; $5b95: $48
    add sp, -$58                                  ; $5b96: $e8 $a8
    cp b                                          ; $5b98: $b8
    jr @-$06                                      ; $5b99: $18 $f8

    ld l, b                                       ; $5b9b: $68
    ld hl, sp+$08                                 ; $5b9c: $f8 $08
    ld hl, sp-$78                                 ; $5b9e: $f8 $88
    ldh a, [$d0]                                  ; $5ba0: $f0 $d0
    ldh [rNR41], a                                ; $5ba2: $e0 $20

jr_0df_5ba4:
    ld [bc], a                                    ; $5ba4: $02
    ldh a, [rSC]                                  ; $5ba5: $f0 $02
    cp [hl]                                       ; $5ba7: $be
    sub h                                         ; $5ba8: $94
    ld [hl], a                                    ; $5ba9: $77
    ld a, l                                       ; $5baa: $7d
    call Call_0df_7fff                            ; $5bab: $cd $ff $7f
    rst $38                                       ; $5bae: $ff
    or b                                          ; $5baf: $b0
    ldh a, [$3d]                                  ; $5bb0: $f0 $3d
    ccf                                           ; $5bb2: $3f
    dec a                                         ; $5bb3: $3d
    ccf                                           ; $5bb4: $3f
    ld a, l                                       ; $5bb5: $7d
    ld a, a                                       ; $5bb6: $7f
    ld a, e                                       ; $5bb7: $7b
    ld a, a                                       ; $5bb8: $7f
    or a                                          ; $5bb9: $b7
    rst $38                                       ; $5bba: $ff
    or d                                          ; $5bbb: $b2
    cp $02                                        ; $5bbc: $fe $02
    ld a, [hl]                                    ; $5bbe: $7e
    ld [de], a                                    ; $5bbf: $12
    nop                                           ; $5bc0: $00
    add [hl]                                      ; $5bc1: $86
    ld [bc], a                                    ; $5bc2: $02
    ld b, $03                                     ; $5bc3: $06 $03
    rlca                                          ; $5bc5: $07
    dec b                                         ; $5bc6: $05
    rlca                                          ; $5bc7: $07
    ld [bc], a                                    ; $5bc8: $02
    ld b, $82                                     ; $5bc9: $06 $82
    dec b                                         ; $5bcb: $05
    rlca                                          ; $5bcc: $07
    ld [bc], a                                    ; $5bcd: $02
    ld b, $14                                     ; $5bce: $06 $14
    nop                                           ; $5bd0: $00
    rst $38                                       ; $5bd1: $ff
    rlca                                          ; $5bd2: $07
    ld bc, $07f8                                  ; $5bd3: $01 $f8 $07
    ld a, [c]                                     ; $5bd6: $f2
    ld bc, $ffeb                                  ; $5bd7: $01 $eb $ff
    adc b                                         ; $5bda: $88
    nop                                           ; $5bdb: $00
    inc l                                         ; $5bdc: $2c
    nop                                           ; $5bdd: $00
    ld e, d                                       ; $5bde: $5a
    nop                                           ; $5bdf: $00
    ld d, c                                       ; $5be0: $51
    nop                                           ; $5be1: $00
    inc b                                         ; $5be2: $04
    inc c                                         ; $5be3: $0c
    nop                                           ; $5be4: $00
    add e                                         ; $5be5: $83
    inc d                                         ; $5be6: $14
    nop                                           ; $5be7: $00
    ld [$0009], sp                                ; $5be8: $08 $09 $00
    rst $38                                       ; $5beb: $ff
    rrca                                          ; $5bec: $0f
    dec b                                         ; $5bed: $05
    ld hl, sp+$07                                 ; $5bee: $f8 $07
    ld a, [c]                                     ; $5bf0: $f2
    ld bc, $f3f6                                  ; $5bf1: $01 $f6 $f3
    db $eb                                        ; $5bf4: $eb
    ei                                            ; $5bf5: $fb
    db $eb                                        ; $5bf6: $eb
    inc bc                                        ; $5bf7: $03
    ei                                            ; $5bf8: $fb
    db $fd                                        ; $5bf9: $fd
    ei                                            ; $5bfa: $fb
    nop                                           ; $5bfb: $00
    ld [bc], a                                    ; $5bfc: $02
    ld d, b                                       ; $5bfd: $50
    add [hl]                                      ; $5bfe: $86
    sbc $ae                                       ; $5bff: $de $ae
    ld h, l                                       ; $5c01: $65
    ld e, e                                       ; $5c02: $5b
    rst $18                                       ; $5c03: $df
    or a                                          ; $5c04: $b7
    ld [bc], a                                    ; $5c05: $02
    ld l, b                                       ; $5c06: $68
    ld d, $00                                     ; $5c07: $16 $00
    ld [bc], a                                    ; $5c09: $02
    inc bc                                        ; $5c0a: $03
    add d                                         ; $5c0b: $82
    dec b                                         ; $5c0c: $05
    inc b                                         ; $5c0d: $04
    inc b                                         ; $5c0e: $04
    ld a, [bc]                                    ; $5c0f: $0a
    adc h                                         ; $5c10: $8c
    rrca                                          ; $5c11: $0f
    dec c                                         ; $5c12: $0d
    rrca                                          ; $5c13: $0f
    dec bc                                        ; $5c14: $0b
    rrca                                          ; $5c15: $0f
    ld [$080f], sp                                ; $5c16: $08 $0f $08
    rlca                                          ; $5c19: $07
    dec b                                         ; $5c1a: $05
    rlca                                          ; $5c1b: $07
    ld b, $02                                     ; $5c1c: $06 $02
    ld e, $86                                     ; $5c1e: $1e $86
    inc hl                                        ; $5c20: $23
    ccf                                           ; $5c21: $3f
    ld a, a                                       ; $5c22: $7f
    ld b, a                                       ; $5c23: $47
    cp e                                          ; $5c24: $bb
    rst $28                                       ; $5c25: $ef
    ld [bc], a                                    ; $5c26: $02
    rst $30                                       ; $5c27: $f7
    ld [bc], a                                    ; $5c28: $02
    rrca                                          ; $5c29: $0f
    ld [bc], a                                    ; $5c2a: $02
    ldh [$aa], a                                  ; $5c2b: $e0 $aa
    jr nc, jr_0df_5c3f                            ; $5c2d: $30 $10

    ld e, b                                       ; $5c2f: $58
    ld c, b                                       ; $5c30: $48
    add sp, -$58                                  ; $5c31: $e8 $a8
    ld hl, sp+$58                                 ; $5c33: $f8 $58
    ld hl, sp+$68                                 ; $5c35: $f8 $68
    ld hl, sp+$08                                 ; $5c37: $f8 $08
    ld hl, sp-$78                                 ; $5c39: $f8 $88
    ldh a, [$d0]                                  ; $5c3b: $f0 $d0
    db $e4                                        ; $5c3d: $e4
    inc h                                         ; $5c3e: $24

jr_0df_5c3f:
    cp [hl]                                       ; $5c3f: $be
    cp d                                          ; $5c40: $ba
    ld [hl], a                                    ; $5c41: $77
    ld a, l                                       ; $5c42: $7d
    ld a, [c]                                     ; $5c43: $f2
    cp $cd                                        ; $5c44: $fe $cd
    rst $38                                       ; $5c46: $ff
    ld a, a                                       ; $5c47: $7f
    rst $38                                       ; $5c48: $ff
    or b                                          ; $5c49: $b0
    ldh a, [$3d]                                  ; $5c4a: $f0 $3d
    ccf                                           ; $5c4c: $3f
    dec a                                         ; $5c4d: $3d
    ccf                                           ; $5c4e: $3f
    ld a, l                                       ; $5c4f: $7d
    ld a, a                                       ; $5c50: $7f
    ld a, e                                       ; $5c51: $7b
    ld a, a                                       ; $5c52: $7f
    or a                                          ; $5c53: $b7
    rst $38                                       ; $5c54: $ff
    ld d, d                                       ; $5c55: $52
    ld a, [hl]                                    ; $5c56: $7e
    ld [bc], a                                    ; $5c57: $02
    inc a                                         ; $5c58: $3c
    ld [de], a                                    ; $5c59: $12
    nop                                           ; $5c5a: $00
    add [hl]                                      ; $5c5b: $86
    inc bc                                        ; $5c5c: $03
    rlca                                          ; $5c5d: $07
    dec b                                         ; $5c5e: $05
    rlca                                          ; $5c5f: $07
    dec b                                         ; $5c60: $05
    rlca                                          ; $5c61: $07
    ld [bc], a                                    ; $5c62: $02
    ld b, $82                                     ; $5c63: $06 $82
    dec b                                         ; $5c65: $05
    rlca                                          ; $5c66: $07
    ld [bc], a                                    ; $5c67: $02
    ld b, $14                                     ; $5c68: $06 $14
    nop                                           ; $5c6a: $00
    rst $38                                       ; $5c6b: $ff
    rlca                                          ; $5c6c: $07
    ld bc, $07f8                                  ; $5c6d: $01 $f8 $07
    ld a, [c]                                     ; $5c70: $f2
    ld bc, $ffec                                  ; $5c71: $01 $ec $ff
    add [hl]                                      ; $5c74: $86
    nop                                           ; $5c75: $00
    inc l                                         ; $5c76: $2c
    nop                                           ; $5c77: $00
    ld e, d                                       ; $5c78: $5a
    nop                                           ; $5c79: $00
    ld d, c                                       ; $5c7a: $51
    inc c                                         ; $5c7b: $0c
    nop                                           ; $5c7c: $00
    add e                                         ; $5c7d: $83
    inc d                                         ; $5c7e: $14
    nop                                           ; $5c7f: $00
    ld [$000b], sp                                ; $5c80: $08 $0b $00
    rst $38                                       ; $5c83: $ff
    rrca                                          ; $5c84: $0f
    dec b                                         ; $5c85: $05
    ld hl, sp+$07                                 ; $5c86: $f8 $07
    ld a, [c]                                     ; $5c88: $f2
    ld bc, $f3f7                                  ; $5c89: $01 $f7 $f3
    db $ec                                        ; $5c8c: $ec
    ei                                            ; $5c8d: $fb
    db $ec                                        ; $5c8e: $ec
    inc bc                                        ; $5c8f: $03
    db $fc                                        ; $5c90: $fc
    db $fd                                        ; $5c91: $fd
    db $fc                                        ; $5c92: $fc
    nop                                           ; $5c93: $00
    ld [bc], a                                    ; $5c94: $02
    ld d, b                                       ; $5c95: $50
    add [hl]                                      ; $5c96: $86
    sbc $ae                                       ; $5c97: $de $ae
    ld h, l                                       ; $5c99: $65
    ld e, e                                       ; $5c9a: $5b
    rst $18                                       ; $5c9b: $df
    or a                                          ; $5c9c: $b7
    ld [bc], a                                    ; $5c9d: $02
    ld l, b                                       ; $5c9e: $68
    ld d, $00                                     ; $5c9f: $16 $00
    ld [bc], a                                    ; $5ca1: $02
    inc bc                                        ; $5ca2: $03
    add d                                         ; $5ca3: $82
    dec b                                         ; $5ca4: $05
    inc b                                         ; $5ca5: $04
    inc b                                         ; $5ca6: $04
    ld a, [bc]                                    ; $5ca7: $0a
    adc h                                         ; $5ca8: $8c
    rrca                                          ; $5ca9: $0f
    dec c                                         ; $5caa: $0d
    rrca                                          ; $5cab: $0f
    dec bc                                        ; $5cac: $0b
    rrca                                          ; $5cad: $0f
    ld [$080f], sp                                ; $5cae: $08 $0f $08
    rlca                                          ; $5cb1: $07
    dec b                                         ; $5cb2: $05
    rlca                                          ; $5cb3: $07
    ld b, $02                                     ; $5cb4: $06 $02
    rra                                           ; $5cb6: $1f
    add [hl]                                      ; $5cb7: $86
    ld [hl-], a                                   ; $5cb8: $32
    ld a, $7f                                     ; $5cb9: $3e $7f
    ld c, a                                       ; $5cbb: $4f
    cp e                                          ; $5cbc: $bb
    rst $08                                       ; $5cbd: $cf
    ld [bc], a                                    ; $5cbe: $02
    rst $38                                       ; $5cbf: $ff
    ld [bc], a                                    ; $5cc0: $02
    rrca                                          ; $5cc1: $0f
    ld [bc], a                                    ; $5cc2: $02
    ldh [$92], a                                  ; $5cc3: $e0 $92
    jr nc, @+$12                                  ; $5cc5: $30 $10

    ld e, b                                       ; $5cc7: $58
    ld c, b                                       ; $5cc8: $48
    add sp, -$58                                  ; $5cc9: $e8 $a8
    ld hl, sp+$58                                 ; $5ccb: $f8 $58
    ld hl, sp+$68                                 ; $5ccd: $f8 $68
    ld hl, sp+$08                                 ; $5ccf: $f8 $08
    ld hl, sp-$78                                 ; $5cd1: $f8 $88
    ldh a, [$d0]                                  ; $5cd3: $f0 $d0
    ld h, b                                       ; $5cd5: $60
    jr nz, jr_0df_5cda                            ; $5cd6: $20 $02

    ld hl, sp-$6c                                 ; $5cd8: $f8 $94

jr_0df_5cda:
    xor h                                         ; $5cda: $ac
    or h                                          ; $5cdb: $b4
    ld a, [hl]                                    ; $5cdc: $7e
    ld [hl], d                                    ; $5cdd: $72
    db $dd                                        ; $5cde: $dd
    rst $38                                       ; $5cdf: $ff
    ld a, a                                       ; $5ce0: $7f
    rst $38                                       ; $5ce1: $ff
    or b                                          ; $5ce2: $b0
    ldh a, [$3e]                                  ; $5ce3: $f0 $3e
    ccf                                           ; $5ce5: $3f
    ld a, l                                       ; $5ce6: $7d
    ld a, a                                       ; $5ce7: $7f
    cp l                                          ; $5ce8: $bd
    rst $38                                       ; $5ce9: $ff
    ld e, e                                       ; $5cea: $5b
    ld a, a                                       ; $5ceb: $7f
    scf                                           ; $5cec: $37
    ccf                                           ; $5ced: $3f
    ld [bc], a                                    ; $5cee: $02
    inc e                                         ; $5cef: $1c
    inc d                                         ; $5cf0: $14
    nop                                           ; $5cf1: $00
    ld [bc], a                                    ; $5cf2: $02
    rlca                                          ; $5cf3: $07
    adc b                                         ; $5cf4: $88
    inc bc                                        ; $5cf5: $03
    rlca                                          ; $5cf6: $07
    dec b                                         ; $5cf7: $05
    rlca                                          ; $5cf8: $07
    ld [bc], a                                    ; $5cf9: $02
    ld b, $05                                     ; $5cfa: $06 $05
    rlca                                          ; $5cfc: $07
    ld [bc], a                                    ; $5cfd: $02
    ld b, $14                                     ; $5cfe: $06 $14
    nop                                           ; $5d00: $00
    rst $38                                       ; $5d01: $ff
    rlca                                          ; $5d02: $07
    ld bc, $07f8                                  ; $5d03: $01 $f8 $07
    ld a, [c]                                     ; $5d06: $f2
    ld bc, $ffed                                  ; $5d07: $01 $ed $ff
    add [hl]                                      ; $5d0a: $86
    nop                                           ; $5d0b: $00
    inc l                                         ; $5d0c: $2c
    nop                                           ; $5d0d: $00
    ld e, d                                       ; $5d0e: $5a
    nop                                           ; $5d0f: $00
    ld d, c                                       ; $5d10: $51
    dec bc                                        ; $5d11: $0b
    nop                                           ; $5d12: $00
    add c                                         ; $5d13: $81
    ld [$0002], sp                                ; $5d14: $08 $02 $00
    add e                                         ; $5d17: $83
    inc d                                         ; $5d18: $14
    nop                                           ; $5d19: $00
    ld [$0009], sp                                ; $5d1a: $08 $09 $00
    rst $38                                       ; $5d1d: $ff
    rrca                                          ; $5d1e: $0f
    dec b                                         ; $5d1f: $05
    ld hl, sp+$07                                 ; $5d20: $f8 $07
    ld a, [c]                                     ; $5d22: $f2
    ld bc, $f3f7                                  ; $5d23: $01 $f7 $f3
    db $ed                                        ; $5d26: $ed
    ei                                            ; $5d27: $fb
    db $ed                                        ; $5d28: $ed
    inc bc                                        ; $5d29: $03
    db $fd                                        ; $5d2a: $fd
    cp $fd                                        ; $5d2b: $fe $fd
    nop                                           ; $5d2d: $00
    ld [bc], a                                    ; $5d2e: $02
    ld d, b                                       ; $5d2f: $50
    add [hl]                                      ; $5d30: $86
    sbc $ae                                       ; $5d31: $de $ae
    ld h, l                                       ; $5d33: $65
    ld e, e                                       ; $5d34: $5b
    rst $18                                       ; $5d35: $df
    or a                                          ; $5d36: $b7
    ld [bc], a                                    ; $5d37: $02
    ld l, b                                       ; $5d38: $68
    ld d, $00                                     ; $5d39: $16 $00
    ld [bc], a                                    ; $5d3b: $02
    inc bc                                        ; $5d3c: $03
    add d                                         ; $5d3d: $82
    dec b                                         ; $5d3e: $05
    inc b                                         ; $5d3f: $04
    inc b                                         ; $5d40: $04
    ld a, [bc]                                    ; $5d41: $0a
    sub d                                         ; $5d42: $92
    rrca                                          ; $5d43: $0f
    dec c                                         ; $5d44: $0d
    rrca                                          ; $5d45: $0f
    dec bc                                        ; $5d46: $0b
    rrca                                          ; $5d47: $0f
    ld [$080e], sp                                ; $5d48: $08 $0e $08
    rlca                                          ; $5d4b: $07
    dec b                                         ; $5d4c: $05
    ccf                                           ; $5d4d: $3f
    ld a, $52                                     ; $5d4e: $3e $52
    ld a, [hl]                                    ; $5d50: $7e
    ld a, a                                       ; $5d51: $7f
    ld c, a                                       ; $5d52: $4f
    cp e                                          ; $5d53: $bb
    rst $08                                       ; $5d54: $cf
    ld [bc], a                                    ; $5d55: $02
    rst $38                                       ; $5d56: $ff
    ld [bc], a                                    ; $5d57: $02
    rrca                                          ; $5d58: $0f
    ld [bc], a                                    ; $5d59: $02
    rra                                           ; $5d5a: $1f
    ld [bc], a                                    ; $5d5b: $02
    ldh [$a4], a                                  ; $5d5c: $e0 $a4
    jr nc, jr_0df_5d70                            ; $5d5e: $30 $10

    ld e, b                                       ; $5d60: $58
    ld c, b                                       ; $5d61: $48
    add sp, -$58                                  ; $5d62: $e8 $a8
    ld hl, sp+$58                                 ; $5d64: $f8 $58
    ld hl, sp+$68                                 ; $5d66: $f8 $68
    ld hl, sp+$08                                 ; $5d68: $f8 $08
    cp b                                          ; $5d6a: $b8
    adc b                                         ; $5d6b: $88
    ldh a, [$d0]                                  ; $5d6c: $f0 $d0
    ld a, h                                       ; $5d6e: $7c
    inc a                                         ; $5d6f: $3c

jr_0df_5d70:
    xor d                                         ; $5d70: $aa
    cp [hl]                                       ; $5d71: $be
    ld a, [hl]                                    ; $5d72: $7e
    halt                                          ; $5d73: $76
    db $dd                                        ; $5d74: $dd
    di                                            ; $5d75: $f3
    ld a, a                                       ; $5d76: $7f
    rst $38                                       ; $5d77: $ff
    cp b                                          ; $5d78: $b8
    ld hl, sp+$58                                 ; $5d79: $f8 $58
    ld hl, sp-$49                                 ; $5d7b: $f8 $b7
    rst $38                                       ; $5d7d: $ff
    or a                                          ; $5d7e: $b7
    rst $38                                       ; $5d7f: $ff
    ld l, a                                       ; $5d80: $6f
    ld a, a                                       ; $5d81: $7f
    ld [bc], a                                    ; $5d82: $02
    add hl, sp                                    ; $5d83: $39
    jr jr_0df_5d86                                ; $5d84: $18 $00

jr_0df_5d86:
    add d                                         ; $5d86: $82
    ld bc, $0203                                  ; $5d87: $01 $03 $02
    ld [bc], a                                    ; $5d8a: $02
    add d                                         ; $5d8b: $82
    ld bc, $0203                                  ; $5d8c: $01 $03 $02
    ld [bc], a                                    ; $5d8f: $02
    jr jr_0df_5d92                                ; $5d90: $18 $00

jr_0df_5d92:
    rst $38                                       ; $5d92: $ff
    rlca                                          ; $5d93: $07
    ld bc, $07f8                                  ; $5d94: $01 $f8 $07
    ld a, [c]                                     ; $5d97: $f2
    ld bc, $ffee                                  ; $5d98: $01 $ee $ff
    add [hl]                                      ; $5d9b: $86
    nop                                           ; $5d9c: $00
    inc l                                         ; $5d9d: $2c
    nop                                           ; $5d9e: $00
    ld e, d                                       ; $5d9f: $5a
    nop                                           ; $5da0: $00
    ld d, c                                       ; $5da1: $51
    rlca                                          ; $5da2: $07
    nop                                           ; $5da3: $00
    add c                                         ; $5da4: $81
    inc d                                         ; $5da5: $14
    inc bc                                        ; $5da6: $03
    nop                                           ; $5da7: $00
    add h                                         ; $5da8: $84
    ld [$0014], sp                                ; $5da9: $08 $14 $00
    ld [$000b], sp                                ; $5dac: $08 $0b $00
    rst $38                                       ; $5daf: $ff
    rrca                                          ; $5db0: $0f
    dec b                                         ; $5db1: $05
    ld hl, sp+$07                                 ; $5db2: $f8 $07
    ld a, [c]                                     ; $5db4: $f2
    ld bc, $f3f6                                  ; $5db5: $01 $f6 $f3
    db $ec                                        ; $5db8: $ec
    ei                                            ; $5db9: $fb
    db $ec                                        ; $5dba: $ec
    inc bc                                        ; $5dbb: $03
    db $fc                                        ; $5dbc: $fc
    cp $fc                                        ; $5dbd: $fe $fc
    ld bc, $5002                                  ; $5dbf: $01 $02 $50
    add [hl]                                      ; $5dc2: $86
    sbc $ae                                       ; $5dc3: $de $ae
    ld h, l                                       ; $5dc5: $65
    ld e, e                                       ; $5dc6: $5b
    rst $18                                       ; $5dc7: $df
    or a                                          ; $5dc8: $b7
    ld [bc], a                                    ; $5dc9: $02
    ld l, b                                       ; $5dca: $68
    ld d, $00                                     ; $5dcb: $16 $00
    ld [bc], a                                    ; $5dcd: $02
    inc bc                                        ; $5dce: $03
    add d                                         ; $5dcf: $82
    dec b                                         ; $5dd0: $05
    inc b                                         ; $5dd1: $04
    inc b                                         ; $5dd2: $04
    ld a, [bc]                                    ; $5dd3: $0a
    sub d                                         ; $5dd4: $92
    rrca                                          ; $5dd5: $0f
    dec c                                         ; $5dd6: $0d
    rrca                                          ; $5dd7: $0f
    dec bc                                        ; $5dd8: $0b
    rrca                                          ; $5dd9: $0f
    ld [$090f], sp                                ; $5dda: $08 $0f $09
    rlca                                          ; $5ddd: $07
    dec b                                         ; $5dde: $05
    ccf                                           ; $5ddf: $3f
    ld a, $52                                     ; $5de0: $3e $52
    ld a, [hl]                                    ; $5de2: $7e
    ld a, a                                       ; $5de3: $7f
    ld c, a                                       ; $5de4: $4f
    cp e                                          ; $5de5: $bb
    rst $08                                       ; $5de6: $cf
    ld [bc], a                                    ; $5de7: $02
    rst $38                                       ; $5de8: $ff
    ld [bc], a                                    ; $5de9: $02
    rrca                                          ; $5dea: $0f
    add d                                         ; $5deb: $82
    ld c, $0f                                     ; $5dec: $0e $0f
    ld [bc], a                                    ; $5dee: $02
    ldh [$a1], a                                  ; $5def: $e0 $a1
    jr nc, jr_0df_5e03                            ; $5df1: $30 $10

    ld e, b                                       ; $5df3: $58
    ld c, b                                       ; $5df4: $48
    add sp, -$58                                  ; $5df5: $e8 $a8
    ld hl, sp+$58                                 ; $5df7: $f8 $58
    ld hl, sp+$68                                 ; $5df9: $f8 $68
    ld hl, sp+$08                                 ; $5dfb: $f8 $08
    ld hl, sp-$38                                 ; $5dfd: $f8 $c8
    ldh a, [$d0]                                  ; $5dff: $f0 $d0
    ld a, h                                       ; $5e01: $7c
    inc a                                         ; $5e02: $3c

jr_0df_5e03:
    xor d                                         ; $5e03: $aa
    cp [hl]                                       ; $5e04: $be
    ld a, [hl]                                    ; $5e05: $7e
    halt                                          ; $5e06: $76
    call $7ff3                                    ; $5e07: $cd $f3 $7f
    rst $38                                       ; $5e0a: $ff
    ld a, b                                       ; $5e0b: $78
    ld hl, sp-$48                                 ; $5e0c: $f8 $b8
    ld hl, sp+$75                                 ; $5e0e: $f8 $75
    ld a, a                                       ; $5e10: $7f
    xor $03                                       ; $5e11: $ee $03
    rst $38                                       ; $5e13: $ff
    add d                                         ; $5e14: $82
    ld c, d                                       ; $5e15: $4a
    ld a, e                                       ; $5e16: $7b
    ld [bc], a                                    ; $5e17: $02
    ld sp, $0016                                  ; $5e18: $31 $16 $00
    ld [bc], a                                    ; $5e1b: $02
    ld b, $81                                     ; $5e1c: $06 $81
    dec b                                         ; $5e1e: $05
    inc bc                                        ; $5e1f: $03
    rlca                                          ; $5e20: $07
    add d                                         ; $5e21: $82
    ld [bc], a                                    ; $5e22: $02
    ld b, $02                                     ; $5e23: $06 $02
    inc b                                         ; $5e25: $04
    ld d, $00                                     ; $5e26: $16 $00
    rst $38                                       ; $5e28: $ff
    rlca                                          ; $5e29: $07
    ld bc, $07f8                                  ; $5e2a: $01 $f8 $07
    ld a, [c]                                     ; $5e2d: $f2
    ld bc, $ffed                                  ; $5e2e: $01 $ed $ff
    add [hl]                                      ; $5e31: $86
    nop                                           ; $5e32: $00
    inc l                                         ; $5e33: $2c
    nop                                           ; $5e34: $00
    ld e, d                                       ; $5e35: $5a
    nop                                           ; $5e36: $00
    ld d, c                                       ; $5e37: $51
    dec bc                                        ; $5e38: $0b
    nop                                           ; $5e39: $00
    add h                                         ; $5e3a: $84
    ld [$0014], sp                                ; $5e3b: $08 $14 $00
    ld [$000b], sp                                ; $5e3e: $08 $0b $00
    rst $38                                       ; $5e41: $ff
    rrca                                          ; $5e42: $0f
    dec b                                         ; $5e43: $05
    ld hl, sp+$07                                 ; $5e44: $f8 $07
    ld a, [c]                                     ; $5e46: $f2
    ld bc, $f3f0                                  ; $5e47: $01 $f0 $f3
    ld [$eafb], a                                 ; $5e4a: $ea $fb $ea
    inc bc                                        ; $5e4d: $03
    ld a, [$faff]                                 ; $5e4e: $fa $ff $fa
    nop                                           ; $5e51: $00
    ld [bc], a                                    ; $5e52: $02
    ld d, b                                       ; $5e53: $50
    add [hl]                                      ; $5e54: $86
    sbc $ae                                       ; $5e55: $de $ae
    ld h, l                                       ; $5e57: $65
    ld e, e                                       ; $5e58: $5b
    rst $18                                       ; $5e59: $df
    or a                                          ; $5e5a: $b7
    ld [bc], a                                    ; $5e5b: $02
    ld l, b                                       ; $5e5c: $68
    ld d, $00                                     ; $5e5d: $16 $00
    ld [bc], a                                    ; $5e5f: $02
    inc bc                                        ; $5e60: $03
    add d                                         ; $5e61: $82
    dec b                                         ; $5e62: $05
    inc b                                         ; $5e63: $04
    inc b                                         ; $5e64: $04
    ld a, [bc]                                    ; $5e65: $0a
    adc d                                         ; $5e66: $8a
    rrca                                          ; $5e67: $0f
    dec c                                         ; $5e68: $0d
    rrca                                          ; $5e69: $0f
    dec bc                                        ; $5e6a: $0b
    ccf                                           ; $5e6b: $3f
    jr c, jr_0df_5eed                             ; $5e6c: $38 $7f

    ld c, l                                       ; $5e6e: $4d
    xor e                                         ; $5e6f: $ab
    rst $18                                       ; $5e70: $df
    ld [bc], a                                    ; $5e71: $02
    rst $38                                       ; $5e72: $ff
    add [hl]                                      ; $5e73: $86
    ld c, [hl]                                    ; $5e74: $4e
    ld a, [hl]                                    ; $5e75: $7e
    scf                                           ; $5e76: $37
    ccf                                           ; $5e77: $3f
    ld c, $0f                                     ; $5e78: $0e $0f
    ld b, $07                                     ; $5e7a: $06 $07
    ld [bc], a                                    ; $5e7c: $02
    ldh [$a3], a                                  ; $5e7d: $e0 $a3
    jr nc, jr_0df_5e91                            ; $5e7f: $30 $10

    ld e, b                                       ; $5e81: $58
    ld c, b                                       ; $5e82: $48
    add sp, -$58                                  ; $5e83: $e8 $a8
    ld hl, sp+$58                                 ; $5e85: $f8 $58
    ld hl, sp+$68                                 ; $5e87: $f8 $68
    db $fc                                        ; $5e89: $fc
    inc c                                         ; $5e8a: $0c
    cp $f2                                        ; $5e8b: $fe $f2
    call Call_0df_7fff                            ; $5e8d: $cd $ff $7f
    rst $38                                       ; $5e90: $ff

jr_0df_5e91:
    cp c                                          ; $5e91: $b9
    cp a                                          ; $5e92: $bf
    halt                                          ; $5e93: $76
    ld a, [hl]                                    ; $5e94: $7e
    cp b                                          ; $5e95: $b8
    ld hl, sp+$70                                 ; $5e96: $f8 $70
    ldh a, [rSVBK]                                ; $5e98: $f0 $70
    ldh a, [rSVBK]                                ; $5e9a: $f0 $70
    ldh a, [$eb]                                  ; $5e9c: $f0 $eb
    rst $38                                       ; $5e9e: $ff
    db $eb                                        ; $5e9f: $eb
    rst $38                                       ; $5ea0: $ff
    db $dd                                        ; $5ea1: $dd
    inc bc                                        ; $5ea2: $03
    rst $38                                       ; $5ea3: $ff
    add d                                         ; $5ea4: $82
    ld c, c                                       ; $5ea5: $49
    ld a, a                                       ; $5ea6: $7f
    ld [bc], a                                    ; $5ea7: $02
    ld [hl], $14                                  ; $5ea8: $36 $14
    nop                                           ; $5eaa: $00
    ld [$1801], sp                                ; $5eab: $08 $01 $18
    nop                                           ; $5eae: $00
    rst $38                                       ; $5eaf: $ff
    rlca                                          ; $5eb0: $07
    ld bc, $07f8                                  ; $5eb1: $01 $f8 $07
    ld a, [c]                                     ; $5eb4: $f2
    ld bc, $ffeb                                  ; $5eb5: $01 $eb $ff
    add [hl]                                      ; $5eb8: $86
    nop                                           ; $5eb9: $00
    inc l                                         ; $5eba: $2c
    nop                                           ; $5ebb: $00
    ld e, d                                       ; $5ebc: $5a
    nop                                           ; $5ebd: $00
    ld d, c                                       ; $5ebe: $51
    inc c                                         ; $5ebf: $0c
    nop                                           ; $5ec0: $00
    add e                                         ; $5ec1: $83
    inc d                                         ; $5ec2: $14
    nop                                           ; $5ec3: $00
    ld [$000b], sp                                ; $5ec4: $08 $0b $00
    rst $38                                       ; $5ec7: $ff
    rrca                                          ; $5ec8: $0f
    dec b                                         ; $5ec9: $05
    ld hl, sp+$07                                 ; $5eca: $f8 $07
    ld a, [c]                                     ; $5ecc: $f2
    ld bc, $f3e9                                  ; $5ecd: $01 $e9 $f3
    add sp, -$05                                  ; $5ed0: $e8 $fb
    rst $20                                       ; $5ed2: $e7
    inc bc                                        ; $5ed3: $03
    rst $30                                       ; $5ed4: $f7
    rst $38                                       ; $5ed5: $ff
    rst $30                                       ; $5ed6: $f7
    nop                                           ; $5ed7: $00
    ld [bc], a                                    ; $5ed8: $02
    ld l, b                                       ; $5ed9: $68
    add [hl]                                      ; $5eda: $86
    rst $18                                       ; $5edb: $df
    or a                                          ; $5edc: $b7
    ld h, l                                       ; $5edd: $65
    ld e, e                                       ; $5ede: $5b
    sbc $ae                                       ; $5edf: $de $ae
    ld [bc], a                                    ; $5ee1: $02
    ld d, b                                       ; $5ee2: $50
    ld d, $00                                     ; $5ee3: $16 $00
    ld [bc], a                                    ; $5ee5: $02
    ld sp, $7e84                                  ; $5ee6: $31 $84 $7e
    ld c, a                                       ; $5ee9: $4f
    rst $30                                       ; $5eea: $f7
    rst $18                                       ; $5eeb: $df
    ld [bc], a                                    ; $5eec: $02

jr_0df_5eed:
    cp $90                                        ; $5eed: $fe $90
    ld l, d                                       ; $5eef: $6a
    ld a, d                                       ; $5ef0: $7a
    ld c, a                                       ; $5ef1: $4f
    ld a, l                                       ; $5ef2: $7d
    cpl                                           ; $5ef3: $2f
    dec sp                                        ; $5ef4: $3b
    inc l                                         ; $5ef5: $2c
    jr c, jr_0df_5f17                             ; $5ef6: $38 $1f

    jr @+$1d                                      ; $5ef8: $18 $1b

    add hl, de                                    ; $5efa: $19
    rrca                                          ; $5efb: $0f
    dec c                                         ; $5efc: $0d
    rrca                                          ; $5efd: $0f
    ld c, $02                                     ; $5efe: $0e $02
    rrca                                          ; $5f00: $0f
    add c                                         ; $5f01: $81
    ld b, $05                                     ; $5f02: $06 $05
    rlca                                          ; $5f04: $07
    ld [bc], a                                    ; $5f05: $02
    inc b                                         ; $5f06: $04
    add h                                         ; $5f07: $84
    cp a                                          ; $5f08: $bf
    cp e                                          ; $5f09: $bb
    ld e, l                                       ; $5f0a: $5d
    rst $38                                       ; $5f0b: $ff
    ld [bc], a                                    ; $5f0c: $02
    cp $92                                        ; $5f0d: $fe $92
    ld e, e                                       ; $5f0f: $5b
    ld c, a                                       ; $5f10: $4f
    jp hl                                         ; $5f11: $e9


    xor a                                         ; $5f12: $af
    ld a, [$fa5e]                                 ; $5f13: $fa $5e $fa
    ld l, [hl]                                    ; $5f16: $6e

jr_0df_5f17:
    sbc d                                         ; $5f17: $9a
    ld c, $7c                                     ; $5f18: $0e $7c
    inc c                                         ; $5f1a: $0c
    db $ec                                        ; $5f1b: $ec
    call z, $d8f8                                 ; $5f1c: $cc $f8 $d8
    ld a, b                                       ; $5f1f: $78
    jr c, jr_0df_5f24                             ; $5f20: $38 $02

    ld a, b                                       ; $5f22: $78
    adc e                                         ; $5f23: $8b

jr_0df_5f24:
    or b                                          ; $5f24: $b0
    ldh a, [rSVBK]                                ; $5f25: $f0 $70
    ldh a, [rTAC]                                 ; $5f27: $f0 $07
    rrca                                          ; $5f29: $0f
    db $eb                                        ; $5f2a: $eb
    rst $38                                       ; $5f2b: $ff
    db $eb                                        ; $5f2c: $eb
    rst $38                                       ; $5f2d: $ff
    db $dd                                        ; $5f2e: $dd
    inc bc                                        ; $5f2f: $03
    rst $38                                       ; $5f30: $ff
    add d                                         ; $5f31: $82
    ld c, c                                       ; $5f32: $49
    ld a, a                                       ; $5f33: $7f
    ld [bc], a                                    ; $5f34: $02
    ld [hl], $14                                  ; $5f35: $36 $14
    nop                                           ; $5f37: $00
    ld [$1601], sp                                ; $5f38: $08 $01 $16
    nop                                           ; $5f3b: $00
    rst $38                                       ; $5f3c: $ff
    rlca                                          ; $5f3d: $07
    ld bc, $07f8                                  ; $5f3e: $01 $f8 $07
    ld a, [c]                                     ; $5f41: $f2
    ld bc, $ffeb                                  ; $5f42: $01 $eb $ff
    add h                                         ; $5f45: $84
    nop                                           ; $5f46: $00
    ld a, [de]                                    ; $5f47: $1a
    nop                                           ; $5f48: $00
    ld d, c                                       ; $5f49: $51
    dec b                                         ; $5f4a: $05
    nop                                           ; $5f4b: $00
    add l                                         ; $5f4c: $85
    ld [hl], $00                                  ; $5f4d: $36 $00
    ld [$4100], sp                                ; $5f4f: $08 $00 $41
    inc bc                                        ; $5f52: $03
    nop                                           ; $5f53: $00
    ld [bc], a                                    ; $5f54: $02
    ld [$000d], sp                                ; $5f55: $08 $0d $00
    rst $38                                       ; $5f58: $ff
    rrca                                          ; $5f59: $0f
    dec b                                         ; $5f5a: $05
    ld hl, sp+$07                                 ; $5f5b: $f8 $07

jr_0df_5f5d:
    ld a, [c]                                     ; $5f5d: $f2
    ld bc, $f3e9                                  ; $5f5e: $01 $e9 $f3
    add sp, -$05                                  ; $5f61: $e8 $fb
    add sp, $03                                   ; $5f63: $e8 $03
    ld hl, sp-$03                                 ; $5f65: $f8 $fd
    ld hl, sp+$00                                 ; $5f67: $f8 $00
    ld [bc], a                                    ; $5f69: $02
    ld l, b                                       ; $5f6a: $68
    add [hl]                                      ; $5f6b: $86
    rst $18                                       ; $5f6c: $df
    or a                                          ; $5f6d: $b7
    ld h, l                                       ; $5f6e: $65
    ld e, e                                       ; $5f6f: $5b
    sbc $ae                                       ; $5f70: $de $ae
    ld [bc], a                                    ; $5f72: $02
    ld d, b                                       ; $5f73: $50
    ld d, $00                                     ; $5f74: $16 $00
    ld [bc], a                                    ; $5f76: $02
    ld sp, $7e84                                  ; $5f77: $31 $84 $7e
    ld c, a                                       ; $5f7a: $4f
    rst $30                                       ; $5f7b: $f7
    rst $18                                       ; $5f7c: $df
    ld [bc], a                                    ; $5f7d: $02
    cp $98                                        ; $5f7e: $fe $98
    ld l, b                                       ; $5f80: $68
    ld a, b                                       ; $5f81: $78
    ld c, b                                       ; $5f82: $48
    ld a, b                                       ; $5f83: $78
    ld c, a                                       ; $5f84: $4f
    ld a, a                                       ; $5f85: $7f
    ld c, d                                       ; $5f86: $4a
    ld a, b                                       ; $5f87: $78
    ld d, h                                       ; $5f88: $54
    ld [hl], h                                    ; $5f89: $74
    ld d, l                                       ; $5f8a: $55
    ld [hl], l                                    ; $5f8b: $75
    ccf                                           ; $5f8c: $3f
    ld a, [hl-]                                   ; $5f8d: $3a
    ccf                                           ; $5f8e: $3f
    ld [hl], $3f                                  ; $5f8f: $36 $3f
    jr nc, jr_0df_5fb2                            ; $5f91: $30 $1f

    inc de                                        ; $5f93: $13
    rra                                           ; $5f94: $1f
    dec de                                        ; $5f95: $1b
    ld c, $0c                                     ; $5f96: $0e $0c
    ld [bc], a                                    ; $5f98: $02
    cp a                                          ; $5f99: $bf
    add d                                         ; $5f9a: $82
    ld e, l                                       ; $5f9b: $5d
    rst $38                                       ; $5f9c: $ff
    ld [bc], a                                    ; $5f9d: $02
    cp $06                                        ; $5f9e: $fe $06
    nop                                           ; $5fa0: $00
    ld [bc], a                                    ; $5fa1: $02
    ret nz                                        ; $5fa2: $c0

    sub d                                         ; $5fa3: $92
    ld h, b                                       ; $5fa4: $60
    jr nz, jr_0df_5f5d                            ; $5fa5: $20 $b6

    sub [hl]                                      ; $5fa7: $96
    rst $10                                       ; $5fa8: $d7
    ld d, l                                       ; $5fa9: $55
    ei                                            ; $5faa: $fb
    cp l                                          ; $5fab: $bd
    ld sp, hl                                     ; $5fac: $f9
    rst $18                                       ; $5fad: $df
    ld sp, hl                                     ; $5fae: $f9
    rra                                           ; $5faf: $1f
    ld a, [c]                                     ; $5fb0: $f2
    sbc [hl]                                      ; $5fb1: $9e

jr_0df_5fb2:
    db $f4                                        ; $5fb2: $f4
    cp h                                          ; $5fb3: $bc
    add sp, $78                                   ; $5fb4: $e8 $78
    ld [bc], a                                    ; $5fb6: $02
    dec sp                                        ; $5fb7: $3b
    sub h                                         ; $5fb8: $94
    dec [hl]                                      ; $5fb9: $35
    ccf                                           ; $5fba: $3f
    dec sp                                        ; $5fbb: $3b
    ccf                                           ; $5fbc: $3f
    ld a, e                                       ; $5fbd: $7b
    ld a, a                                       ; $5fbe: $7f
    ld a, e                                       ; $5fbf: $7b
    ld a, a                                       ; $5fc0: $7f
    ld a, e                                       ; $5fc1: $7b
    ld a, a                                       ; $5fc2: $7f
    ld [hl], l                                    ; $5fc3: $75
    ld a, a                                       ; $5fc4: $7f
    push af                                       ; $5fc5: $f5
    rst $38                                       ; $5fc6: $ff
    rst $28                                       ; $5fc7: $ef
    rst $38                                       ; $5fc8: $ff
    ld a, [hl]                                    ; $5fc9: $7e
    ld a, a                                       ; $5fca: $7f
    ld c, c                                       ; $5fcb: $49
    ld a, c                                       ; $5fcc: $79
    ld [bc], a                                    ; $5fcd: $02
    jr nc, @+$0a                                  ; $5fce: $30 $08

    nop                                           ; $5fd0: $00
    ld [bc], a                                    ; $5fd1: $02
    ld b, $04                                     ; $5fd2: $06 $04
    inc b                                         ; $5fd4: $04
    ld b, $06                                     ; $5fd5: $06 $06
    ld b, $07                                     ; $5fd7: $06 $07
    add c                                         ; $5fd9: $81
    ld [bc], a                                    ; $5fda: $02
    inc bc                                        ; $5fdb: $03
    ld b, $0a                                     ; $5fdc: $06 $0a
    nop                                           ; $5fde: $00
    rst $38                                       ; $5fdf: $ff
    rlca                                          ; $5fe0: $07
    ld bc, $07f8                                  ; $5fe1: $01 $f8 $07
    ld a, [c]                                     ; $5fe4: $f2
    ld bc, $feef                                  ; $5fe5: $01 $ef $fe
    add [hl]                                      ; $5fe8: $86
    nop                                           ; $5fe9: $00
    inc l                                         ; $5fea: $2c
    nop                                           ; $5feb: $00
    ld e, d                                       ; $5fec: $5a
    nop                                           ; $5fed: $00
    ld d, c                                       ; $5fee: $51
    dec bc                                        ; $5fef: $0b
    nop                                           ; $5ff0: $00
    ld [bc], a                                    ; $5ff1: $02
    ld [$000d], sp                                ; $5ff2: $08 $0d $00

jr_0df_5ff5:
    rst $38                                       ; $5ff5: $ff
    rrca                                          ; $5ff6: $0f
    dec b                                         ; $5ff7: $05
    ld hl, sp+$07                                 ; $5ff8: $f8 $07
    ld a, [c]                                     ; $5ffa: $f2
    ld bc, $f3e9                                  ; $5ffb: $01 $e9 $f3
    add sp, -$05                                  ; $5ffe: $e8 $fb
    add sp, $03                                   ; $6000: $e8 $03
    ld hl, sp-$04                                 ; $6002: $f8 $fc
    ld hl, sp+$02                                 ; $6004: $f8 $02
    ld [bc], a                                    ; $6006: $02
    ld l, b                                       ; $6007: $68
    add [hl]                                      ; $6008: $86
    rst $18                                       ; $6009: $df
    or a                                          ; $600a: $b7
    ld h, l                                       ; $600b: $65
    ld e, e                                       ; $600c: $5b
    sbc $ae                                       ; $600d: $de $ae
    ld [bc], a                                    ; $600f: $02
    ld d, b                                       ; $6010: $50
    ld d, $00                                     ; $6011: $16 $00
    ld [bc], a                                    ; $6013: $02
    ld sp, $7e84                                  ; $6014: $31 $84 $7e
    ld c, a                                       ; $6017: $4f
    rst $30                                       ; $6018: $f7
    rst $38                                       ; $6019: $ff
    ld [bc], a                                    ; $601a: $02
    cp $02                                        ; $601b: $fe $02
    ld a, b                                       ; $601d: $78
    add [hl]                                      ; $601e: $86
    ld c, b                                       ; $601f: $48
    ld a, b                                       ; $6020: $78
    ld c, a                                       ; $6021: $4f
    ld a, a                                       ; $6022: $7f
    ld a, [hl+]                                   ; $6023: $2a
    jr c, jr_0df_6028                             ; $6024: $38 $02

    inc [hl]                                      ; $6026: $34
    ld [bc], a                                    ; $6027: $02

jr_0df_6028:
    dec [hl]                                      ; $6028: $35
    adc h                                         ; $6029: $8c
    ccf                                           ; $602a: $3f
    ld a, [hl-]                                   ; $602b: $3a
    ccf                                           ; $602c: $3f
    ld [hl], $3f                                  ; $602d: $36 $3f
    jr nc, jr_0df_6050                            ; $602f: $30 $1f

    inc de                                        ; $6031: $13
    rra                                           ; $6032: $1f
    dec de                                        ; $6033: $1b
    ld c, $0c                                     ; $6034: $0e $0c
    ld [bc], a                                    ; $6036: $02
    cp a                                          ; $6037: $bf
    add d                                         ; $6038: $82
    ld e, l                                       ; $6039: $5d
    rst $38                                       ; $603a: $ff
    ld [bc], a                                    ; $603b: $02
    cp $06                                        ; $603c: $fe $06
    nop                                           ; $603e: $00
    ld [bc], a                                    ; $603f: $02
    ret nz                                        ; $6040: $c0

    sub d                                         ; $6041: $92
    ld h, b                                       ; $6042: $60
    jr nz, jr_0df_5ff5                            ; $6043: $20 $b0

    sub b                                         ; $6045: $90
    ret nc                                        ; $6046: $d0

    ld d, b                                       ; $6047: $50
    ldh a, [$b0]                                  ; $6048: $f0 $b0
    ldh a, [$d0]                                  ; $604a: $f0 $d0
    ld a, [c]                                     ; $604c: $f2
    ld [de], a                                    ; $604d: $12
    db $fd                                        ; $604e: $fd
    sbc a                                         ; $604f: $9f

jr_0df_6050:
    di                                            ; $6050: $f3
    cp l                                          ; $6051: $bd
    db $e3                                        ; $6052: $e3
    ld a, l                                       ; $6053: $7d
    ld [bc], a                                    ; $6054: $02
    dec e                                         ; $6055: $1d
    sub b                                         ; $6056: $90
    ld a, [hl-]                                   ; $6057: $3a
    ccf                                           ; $6058: $3f
    dec a                                         ; $6059: $3d
    ccf                                           ; $605a: $3f
    ld a, e                                       ; $605b: $7b
    ld a, a                                       ; $605c: $7f
    ld l, e                                       ; $605d: $6b
    ld a, a                                       ; $605e: $7f
    ld l, e                                       ; $605f: $6b
    ld a, a                                       ; $6060: $7f
    ei                                            ; $6061: $fb
    rst $38                                       ; $6062: $ff
    ei                                            ; $6063: $fb
    rst $38                                       ; $6064: $ff
    sbc a                                         ; $6065: $9f
    rst $38                                       ; $6066: $ff
    ld [bc], a                                    ; $6067: $02
    ld a, a                                       ; $6068: $7f
    add d                                         ; $6069: $82
    inc b                                         ; $606a: $04
    rlca                                          ; $606b: $07
    ld [bc], a                                    ; $606c: $02
    inc bc                                        ; $606d: $03
    ld [$0200], sp                                ; $606e: $08 $00 $02
    ccf                                           ; $6071: $3f
    db $10                                        ; $6072: $10
    jr nc, @+$08                                  ; $6073: $30 $06

    jr nz, @+$0a                                  ; $6075: $20 $08

    nop                                           ; $6077: $00
    rst $38                                       ; $6078: $ff
    rlca                                          ; $6079: $07
    ld bc, $07f8                                  ; $607a: $01 $f8 $07
    ld a, [c]                                     ; $607d: $f2
    ld bc, $feef                                  ; $607e: $01 $ef $fe
    add [hl]                                      ; $6081: $86
    nop                                           ; $6082: $00
    inc l                                         ; $6083: $2c
    nop                                           ; $6084: $00
    ld e, d                                       ; $6085: $5a
    nop                                           ; $6086: $00
    ld d, c                                       ; $6087: $51
    dec bc                                        ; $6088: $0b
    nop                                           ; $6089: $00
    ld [bc], a                                    ; $608a: $02
    ld [$000d], sp                                ; $608b: $08 $0d $00

jr_0df_608e:
    rst $38                                       ; $608e: $ff
    rrca                                          ; $608f: $0f
    dec b                                         ; $6090: $05
    ld hl, sp+$07                                 ; $6091: $f8 $07
    ld a, [c]                                     ; $6093: $f2
    ld bc, $f3e9                                  ; $6094: $01 $e9 $f3
    add sp, -$05                                  ; $6097: $e8 $fb
    add sp, $03                                   ; $6099: $e8 $03
    ld hl, sp-$05                                 ; $609b: $f8 $fb
    ld hl, sp+$03                                 ; $609d: $f8 $03
    ld [bc], a                                    ; $609f: $02
    ld l, b                                       ; $60a0: $68
    add [hl]                                      ; $60a1: $86
    rst $18                                       ; $60a2: $df
    or a                                          ; $60a3: $b7
    ld h, l                                       ; $60a4: $65
    ld e, e                                       ; $60a5: $5b
    sbc $ae                                       ; $60a6: $de $ae
    ld [bc], a                                    ; $60a8: $02
    ld d, b                                       ; $60a9: $50
    ld d, $00                                     ; $60aa: $16 $00
    ld [bc], a                                    ; $60ac: $02
    ld de, $3e84                                  ; $60ad: $11 $84 $3e
    cpl                                           ; $60b0: $2f
    rst $30                                       ; $60b1: $f7
    rst $38                                       ; $60b2: $ff
    ld [bc], a                                    ; $60b3: $02
    cp $02                                        ; $60b4: $fe $02
    ld a, b                                       ; $60b6: $78
    add [hl]                                      ; $60b7: $86
    ld c, b                                       ; $60b8: $48
    ld a, b                                       ; $60b9: $78
    ld c, a                                       ; $60ba: $4f
    ld a, a                                       ; $60bb: $7f
    ld a, [hl+]                                   ; $60bc: $2a
    jr c, jr_0df_60c1                             ; $60bd: $38 $02

    inc [hl]                                      ; $60bf: $34
    ld [bc], a                                    ; $60c0: $02

jr_0df_60c1:
    dec [hl]                                      ; $60c1: $35
    adc h                                         ; $60c2: $8c
    ccf                                           ; $60c3: $3f
    ld a, [hl-]                                   ; $60c4: $3a
    ccf                                           ; $60c5: $3f
    ld [hl], $3f                                  ; $60c6: $36 $3f
    jr nc, jr_0df_60e9                            ; $60c8: $30 $1f

    inc de                                        ; $60ca: $13
    rra                                           ; $60cb: $1f
    dec de                                        ; $60cc: $1b
    ld c, $0c                                     ; $60cd: $0e $0c
    ld [bc], a                                    ; $60cf: $02
    cp a                                          ; $60d0: $bf
    add d                                         ; $60d1: $82
    ld e, l                                       ; $60d2: $5d
    rst $38                                       ; $60d3: $ff
    ld [bc], a                                    ; $60d4: $02
    cp $06                                        ; $60d5: $fe $06
    nop                                           ; $60d7: $00
    ld [bc], a                                    ; $60d8: $02
    ret nz                                        ; $60d9: $c0

    sub d                                         ; $60da: $92

jr_0df_60db:
    ld h, b                                       ; $60db: $60
    jr nz, jr_0df_608e                            ; $60dc: $20 $b0

    sub b                                         ; $60de: $90
    ret nc                                        ; $60df: $d0

    ld d, b                                       ; $60e0: $50
    ldh a, [$b0]                                  ; $60e1: $f0 $b0
    ldh a, [$d0]                                  ; $60e3: $f0 $d0
    ldh a, [rNR10]                                ; $60e5: $f0 $10
    ldh a, [$90]                                  ; $60e7: $f0 $90

jr_0df_60e9:
    ldh [$a0], a                                  ; $60e9: $e0 $a0
    ldh [$60], a                                  ; $60eb: $e0 $60
    ld [bc], a                                    ; $60ed: $02
    ld c, $90                                     ; $60ee: $0e $90
    dec e                                         ; $60f0: $1d
    rra                                           ; $60f1: $1f
    ld e, $1f                                     ; $60f2: $1e $1f
    ld a, $3f                                     ; $60f4: $3e $3f
    ld a, $3f                                     ; $60f6: $3e $3f
    add hl, sp                                    ; $60f8: $39
    ccf                                           ; $60f9: $3f
    ld l, l                                       ; $60fa: $6d
    ld a, a                                       ; $60fb: $7f
    db $fd                                        ; $60fc: $fd
    rst $38                                       ; $60fd: $ff
    sbc a                                         ; $60fe: $9f
    rst $38                                       ; $60ff: $ff
    ld [bc], a                                    ; $6100: $02
    ld a, e                                       ; $6101: $7b
    ld [bc], a                                    ; $6102: $02
    inc bc                                        ; $6103: $03
    add d                                         ; $6104: $82
    ld [bc], a                                    ; $6105: $02
    inc bc                                        ; $6106: $03
    ld [bc], a                                    ; $6107: $02
    ld bc, $0006                                  ; $6108: $01 $06 $00
    adc d                                         ; $610b: $8a
    ret nc                                        ; $610c: $d0

    ldh a, [$6c]                                  ; $610d: $f0 $6c
    db $fc                                        ; $610f: $fc
    ld [c], a                                     ; $6110: $e2
    cp $f3                                        ; $6111: $fe $f3
    db $fd                                        ; $6113: $fd
    xor $ea                                       ; $6114: $ee $ea
    ld [bc], a                                    ; $6116: $02
    db $e4                                        ; $6117: $e4
    ld [$02e0], sp                                ; $6118: $08 $e0 $02
    ret nz                                        ; $611b: $c0

    add d                                         ; $611c: $82
    ld b, b                                       ; $611d: $40
    ret nz                                        ; $611e: $c0

    ld [bc], a                                    ; $611f: $02
    add b                                         ; $6120: $80
    ld b, $00                                     ; $6121: $06 $00
    rst $38                                       ; $6123: $ff
    rlca                                          ; $6124: $07
    ld bc, $07f8                                  ; $6125: $01 $f8 $07
    ld a, [c]                                     ; $6128: $f2
    ld bc, $feef                                  ; $6129: $01 $ef $fe
    add [hl]                                      ; $612c: $86
    nop                                           ; $612d: $00
    inc l                                         ; $612e: $2c
    nop                                           ; $612f: $00
    ld e, d                                       ; $6130: $5a
    nop                                           ; $6131: $00
    ld d, c                                       ; $6132: $51
    dec bc                                        ; $6133: $0b
    nop                                           ; $6134: $00
    ld [bc], a                                    ; $6135: $02
    ld [$000d], sp                                ; $6136: $08 $0d $00
    rst $38                                       ; $6139: $ff
    dec c                                         ; $613a: $0d
    inc b                                         ; $613b: $04
    ld hl, sp+$07                                 ; $613c: $f8 $07
    ld a, [c]                                     ; $613e: $f2
    ld bc, $f4f2                                  ; $613f: $01 $f2 $f4
    pop af                                        ; $6142: $f1
    db $fc                                        ; $6143: $fc
    or $04                                        ; $6144: $f6 $04
    ld bc, $02f8                                  ; $6146: $01 $f8 $02
    jr jr_0df_60db                                ; $6149: $18 $90

    ld h, $3e                                     ; $614b: $26 $3e
    scf                                           ; $614d: $37
    ccf                                           ; $614e: $3f
    dec e                                         ; $614f: $1d
    rra                                           ; $6150: $1f
    dec e                                         ; $6151: $1d
    rra                                           ; $6152: $1f
    ld c, $0f                                     ; $6153: $0e $0f
    ld a, b                                       ; $6155: $78
    ld a, a                                       ; $6156: $7f
    sbc [hl]                                      ; $6157: $9e
    rst $38                                       ; $6158: $ff
    cp a                                          ; $6159: $bf
    rst $38                                       ; $615a: $ff
    ld [bc], a                                    ; $615b: $02
    ld a, a                                       ; $615c: $7f
    ld [bc], a                                    ; $615d: $02
    rra                                           ; $615e: $1f
    ld [bc], a                                    ; $615f: $02
    ld bc, $0008                                  ; $6160: $01 $08 $00
    ld [bc], a                                    ; $6163: $02
    inc c                                         ; $6164: $0c
    add c                                         ; $6165: $81
    ld e, $02                                     ; $6166: $1e $02
    ld [de], a                                    ; $6168: $12
    add a                                         ; $6169: $87
    ld e, $12                                     ; $616a: $1e $12
    ld e, $ca                                     ; $616c: $1e $ca
    adc $fa                                       ; $616e: $ce $fa
    cp $02                                        ; $6170: $fe $02
    rst $38                                       ; $6172: $ff
    sub d                                         ; $6173: $92
    rst $28                                       ; $6174: $ef

jr_0df_6175:
    cp $d5                                        ; $6175: $fe $d5
    push af                                       ; $6177: $f5
    inc hl                                        ; $6178: $23
    pop af                                        ; $6179: $f1
    rst $38                                       ; $617a: $ff
    db $fd                                        ; $617b: $fd
    rst $38                                       ; $617c: $ff
    db $fc                                        ; $617d: $fc
    rst $30                                       ; $617e: $f7
    cp $2f                                        ; $617f: $fe $2f
    ccf                                           ; $6181: $3f
    ld c, b                                       ; $6182: $48
    ld a, b                                       ; $6183: $78
    ret z                                         ; $6184: $c8

    cp b                                          ; $6185: $b8
    ld [bc], a                                    ; $6186: $02
    db $10                                        ; $6187: $10
    ld [bc], a                                    ; $6188: $02
    ld a, [$f58e]                                 ; $6189: $fa $8e $f5
    dec h                                         ; $618c: $25
    db $fd                                        ; $618d: $fd
    cp l                                          ; $618e: $bd
    ld a, [c]                                     ; $618f: $f2
    add d                                         ; $6190: $82
    ld a, d                                       ; $6191: $7a
    ld a, [hl-]                                   ; $6192: $3a
    db $fd                                        ; $6193: $fd
    dec h                                         ; $6194: $25
    jp c, $f41a                                   ; $6195: $da $1a $f4

    inc d                                         ; $6198: $14
    ld [bc], a                                    ; $6199: $02
    ld hl, sp+$0c                                 ; $619a: $f8 $0c
    nop                                           ; $619c: $00
    add d                                         ; $619d: $82
    rlca                                          ; $619e: $07
    dec b                                         ; $619f: $05
    ld [bc], a                                    ; $61a0: $02
    ld [bc], a                                    ; $61a1: $02
    inc e                                         ; $61a2: $1c
    nop                                           ; $61a3: $00
    rst $38                                       ; $61a4: $ff
    add hl, bc                                    ; $61a5: $09
    ld [bc], a                                    ; $61a6: $02
    ld hl, sp+$07                                 ; $61a7: $f8 $07
    ld a, [c]                                     ; $61a9: $f2
    ld bc, $00f8                                  ; $61aa: $01 $f8 $00
    ld hl, sp+$03                                 ; $61ad: $f8 $03
    ld [bc], a                                    ; $61af: $02
    nop                                           ; $61b0: $00
    add e                                         ; $61b1: $83
    add b                                         ; $61b2: $80
    jr nz, jr_0df_6175                            ; $61b3: $20 $c0

    ld [bc], a                                    ; $61b5: $02
    nop                                           ; $61b6: $00
    add c                                         ; $61b7: $81
    ld [$0003], sp                                ; $61b8: $08 $03 $00
    add c                                         ; $61bb: $81
    ld [bc], a                                    ; $61bc: $02
    dec d                                         ; $61bd: $15
    nop                                           ; $61be: $00
    adc l                                         ; $61bf: $8d
    dec b                                         ; $61c0: $05
    nop                                           ; $61c1: $00
    ld bc, $0600                                  ; $61c2: $01 $00 $06
    nop                                           ; $61c5: $00
    ld [bc], a                                    ; $61c6: $02
    nop                                           ; $61c7: $00
    ld bc, $0200                                  ; $61c8: $01 $00 $02
    nop                                           ; $61cb: $00
    inc b                                         ; $61cc: $04
    ld [de], a                                    ; $61cd: $12
    nop                                           ; $61ce: $00
    rst $38                                       ; $61cf: $ff
    dec c                                         ; $61d0: $0d
    inc b                                         ; $61d1: $04
    ld hl, sp+$07                                 ; $61d2: $f8 $07
    ld a, [c]                                     ; $61d4: $f2
    ld bc, $f5f2                                  ; $61d5: $01 $f2 $f5
    pop af                                        ; $61d8: $f1
    db $fd                                        ; $61d9: $fd
    push af                                       ; $61da: $f5
    dec b                                         ; $61db: $05
    ld bc, $02f9                                  ; $61dc: $01 $f9 $02
    inc bc                                        ; $61df: $03
    ld [bc], a                                    ; $61e0: $02
    scf                                           ; $61e1: $37
    adc [hl]                                      ; $61e2: $8e
    ld e, e                                       ; $61e3: $5b
    ld a, a                                       ; $61e4: $7f
    ld c, l                                       ; $61e5: $4d
    ld a, a                                       ; $61e6: $7f
    dec a                                         ; $61e7: $3d
    ccf                                           ; $61e8: $3f
    add hl, de                                    ; $61e9: $19
    rra                                           ; $61ea: $1f
    halt                                          ; $61eb: $76
    ld a, a                                       ; $61ec: $7f
    sbc a                                         ; $61ed: $9f
    rst $38                                       ; $61ee: $ff
    cp a                                          ; $61ef: $bf
    rst $38                                       ; $61f0: $ff
    ld [bc], a                                    ; $61f1: $02
    ld a, a                                       ; $61f2: $7f
    ld [bc], a                                    ; $61f3: $02
    inc bc                                        ; $61f4: $03
    ld [bc], a                                    ; $61f5: $02
    ld bc, $0008                                  ; $61f6: $01 $08 $00
    ld [bc], a                                    ; $61f9: $02
    inc c                                         ; $61fa: $0c
    adc c                                         ; $61fb: $89
    ld e, $12                                     ; $61fc: $1e $12
    sub d                                         ; $61fe: $92
    sbc [hl]                                      ; $61ff: $9e
    sub d                                         ; $6200: $92
    sbc [hl]                                      ; $6201: $9e
    ld [$5dee], a                                 ; $6202: $ea $ee $5d
    ld [bc], a                                    ; $6205: $02
    rst $38                                       ; $6206: $ff
    sub e                                         ; $6207: $93
    cp $d5                                        ; $6208: $fe $d5
    push af                                       ; $620a: $f5
    cpl                                           ; $620b: $2f
    db $ed                                        ; $620c: $ed
    rst $08                                       ; $620d: $cf
    db $ed                                        ; $620e: $ed
    rst $38                                       ; $620f: $ff
    db $fc                                        ; $6210: $fc
    rst $38                                       ; $6211: $ff
    cp $ef                                        ; $6212: $fe $ef
    rst $38                                       ; $6214: $ff
    ld c, b                                       ; $6215: $48
    ld a, b                                       ; $6216: $78
    ld c, b                                       ; $6217: $48
    ld a, b                                       ; $6218: $78
    adc b                                         ; $6219: $88
    ld hl, sp+$02                                 ; $621a: $f8 $02
    ld [$f802], sp                                ; $621c: $08 $02 $f8
    adc [hl]                                      ; $621f: $8e
    or $26                                        ; $6220: $f6 $26
    db $fd                                        ; $6222: $fd
    cp l                                          ; $6223: $bd
    pop af                                        ; $6224: $f1
    add c                                         ; $6225: $81
    ld a, d                                       ; $6226: $7a
    ld a, [hl-]                                   ; $6227: $3a
    cp $26                                        ; $6228: $fe $26
    jp c, $f41a                                   ; $622a: $da $1a $f4

    inc d                                         ; $622d: $14
    ld [bc], a                                    ; $622e: $02
    ld hl, sp+$0c                                 ; $622f: $f8 $0c
    nop                                           ; $6231: $00
    add d                                         ; $6232: $82
    rrca                                          ; $6233: $0f
    add hl, bc                                    ; $6234: $09
    ld [bc], a                                    ; $6235: $02
    ld b, $1c                                     ; $6236: $06 $1c
    nop                                           ; $6238: $00
    rst $38                                       ; $6239: $ff
    add hl, bc                                    ; $623a: $09
    ld [bc], a                                    ; $623b: $02
    ld hl, sp+$07                                 ; $623c: $f8 $07
    ld a, [c]                                     ; $623e: $f2
    ld bc, $00f7                                  ; $623f: $01 $f7 $00
    rst $30                                       ; $6242: $f7
    inc b                                         ; $6243: $04
    ld [bc], a                                    ; $6244: $02
    nop                                           ; $6245: $00
    add [hl]                                      ; $6246: $86
    ld b, b                                       ; $6247: $40
    db $10                                        ; $6248: $10
    add b                                         ; $6249: $80
    nop                                           ; $624a: $00
    add b                                         ; $624b: $80
    inc b                                         ; $624c: $04
    inc bc                                        ; $624d: $03
    nop                                           ; $624e: $00
    add c                                         ; $624f: $81
    ld bc, $0015                                  ; $6250: $01 $15 $00
    add a                                         ; $6253: $87
    inc b                                         ; $6254: $04
    nop                                           ; $6255: $00
    ld bc, $0700                                  ; $6256: $01 $00 $07
    nop                                           ; $6259: $00
    ld [bc], a                                    ; $625a: $02
    inc bc                                        ; $625b: $03
    nop                                           ; $625c: $00
    add e                                         ; $625d: $83
    ld [bc], a                                    ; $625e: $02
    nop                                           ; $625f: $00
    inc b                                         ; $6260: $04
    ld [de], a                                    ; $6261: $12
    nop                                           ; $6262: $00
    rst $38                                       ; $6263: $ff
    dec c                                         ; $6264: $0d
    inc b                                         ; $6265: $04
    ld hl, sp+$07                                 ; $6266: $f8 $07
    ld a, [c]                                     ; $6268: $f2
    ld bc, $f5f3                                  ; $6269: $01 $f3 $f5
    pop af                                        ; $626c: $f1
    db $fd                                        ; $626d: $fd
    or $04                                        ; $626e: $f6 $04
    ld bc, $02f7                                  ; $6270: $01 $f7 $02
    add hl, de                                    ; $6273: $19
    adc h                                         ; $6274: $8c
    daa                                           ; $6275: $27
    ccf                                           ; $6276: $3f
    scf                                           ; $6277: $37
    ccf                                           ; $6278: $3f
    ld e, $1f                                     ; $6279: $1e $1f
    ld l, b                                       ; $627b: $68
    ld l, a                                       ; $627c: $6f
    cp [hl]                                       ; $627d: $be
    rst $38                                       ; $627e: $ff
    sbc a                                         ; $627f: $9f
    rst $38                                       ; $6280: $ff
    ld [bc], a                                    ; $6281: $02
    ld a, a                                       ; $6282: $7f
    ld [bc], a                                    ; $6283: $02
    rra                                           ; $6284: $1f
    ld [bc], a                                    ; $6285: $02
    inc bc                                        ; $6286: $03
    ld [bc], a                                    ; $6287: $02
    ld bc, $0002                                  ; $6288: $01 $02 $00
    ld [bc], a                                    ; $628b: $02
    ld bc, $0382                                  ; $628c: $01 $82 $03
    ld [bc], a                                    ; $628f: $02
    ld [bc], a                                    ; $6290: $02
    ld bc, $0002                                  ; $6291: $01 $02 $00

jr_0df_6294:
    ld [bc], a                                    ; $6294: $02
    ld b, $8c                                     ; $6295: $06 $8c
    rrca                                          ; $6297: $0f
    add hl, bc                                    ; $6298: $09
    ret                                           ; $6299: $c9


    rst $08                                       ; $629a: $cf
    ret                                           ; $629b: $c9


    rst $08                                       ; $629c: $cf
    ld c, d                                       ; $629d: $4a
    adc $eb                                       ; $629e: $ce $eb
    rst $28                                       ; $62a0: $ef
    rst $18                                       ; $62a1: $df
    db $fc                                        ; $62a2: $fc
    ld [bc], a                                    ; $62a3: $02
    ei                                            ; $62a4: $fb
    sub b                                         ; $62a5: $90
    ld d, a                                       ; $62a6: $57
    di                                            ; $62a7: $f3
    xor [hl]                                      ; $62a8: $ae
    ld [$f0d7], a                                 ; $62a9: $ea $d7 $f0
    rst $38                                       ; $62ac: $ff
    db $fc                                        ; $62ad: $fc
    rst $28                                       ; $62ae: $ef
    cp $91                                        ; $62af: $fe $91
    pop af                                        ; $62b1: $f1
    jr nz, jr_0df_6294                            ; $62b2: $20 $e0

    jr nz, @-$1e                                  ; $62b4: $20 $e0

    ld [bc], a                                    ; $62b6: $02
    ld a, b                                       ; $62b7: $78
    adc [hl]                                      ; $62b8: $8e
    ld [hl], h                                    ; $62b9: $74
    inc h                                         ; $62ba: $24
    ld a, a                                       ; $62bb: $7f
    ccf                                           ; $62bc: $3f
    ld [hl], d                                    ; $62bd: $72
    ld [bc], a                                    ; $62be: $02
    ld a, d                                       ; $62bf: $7a
    ld a, [hl-]                                   ; $62c0: $3a
    ld a, a                                       ; $62c1: $7f
    daa                                           ; $62c2: $27
    ld e, d                                       ; $62c3: $5a
    ld a, [de]                                    ; $62c4: $1a
    ld [hl], h                                    ; $62c5: $74
    inc d                                         ; $62c6: $14
    ld [bc], a                                    ; $62c7: $02
    ld a, b                                       ; $62c8: $78
    ld c, $00                                     ; $62c9: $0e $00
    add d                                         ; $62cb: $82
    inc bc                                        ; $62cc: $03
    ld bc, $0202                                  ; $62cd: $01 $02 $02
    inc e                                         ; $62d0: $1c
    nop                                           ; $62d1: $00
    rst $38                                       ; $62d2: $ff
    add hl, bc                                    ; $62d3: $09
    ld [bc], a                                    ; $62d4: $02
    ld hl, sp+$07                                 ; $62d5: $f8 $07
    ld a, [c]                                     ; $62d7: $f2
    ld bc, $00f7                                  ; $62d8: $01 $f7 $00
    rst $30                                       ; $62db: $f7
    ld [bc], a                                    ; $62dc: $02
    inc bc                                        ; $62dd: $03
    nop                                           ; $62de: $00
    add [hl]                                      ; $62df: $86
    jr nz, jr_0df_6322                            ; $62e0: $20 $40

    nop                                           ; $62e2: $00
    add b                                         ; $62e3: $80
    ld [$0240], sp                                ; $62e4: $08 $40 $02
    nop                                           ; $62e7: $00
    add c                                         ; $62e8: $81
    ld [bc], a                                    ; $62e9: $02
    dec d                                         ; $62ea: $15
    nop                                           ; $62eb: $00
    add c                                         ; $62ec: $81
    ld [bc], a                                    ; $62ed: $02
    inc bc                                        ; $62ee: $03
    nop                                           ; $62ef: $00
    add e                                         ; $62f0: $83
    inc bc                                        ; $62f1: $03
    nop                                           ; $62f2: $00

jr_0df_62f3:
    ld bc, $0003                                  ; $62f3: $01 $03 $00
    add e                                         ; $62f6: $83
    ld bc, $0200                                  ; $62f7: $01 $00 $02
    ld [de], a                                    ; $62fa: $12
    nop                                           ; $62fb: $00
    rst $38                                       ; $62fc: $ff
    dec bc                                        ; $62fd: $0b
    inc bc                                        ; $62fe: $03
    ld hl, sp+$07                                 ; $62ff: $f8 $07
    ld a, [c]                                     ; $6301: $f2
    ld bc, $f4f2                                  ; $6302: $01 $f2 $f4
    ld a, [c]                                     ; $6305: $f2
    db $fc                                        ; $6306: $fc
    ld a, [c]                                     ; $6307: $f2
    inc b                                         ; $6308: $04
    ld [bc], a                                    ; $6309: $02
    nop                                           ; $630a: $00
    ld [bc], a                                    ; $630b: $02
    inc c                                         ; $630c: $0c
    add d                                         ; $630d: $82
    ld [de], a                                    ; $630e: $12
    ld e, $02                                     ; $630f: $1e $02
    rra                                           ; $6311: $1f
    adc h                                         ; $6312: $8c
    dec e                                         ; $6313: $1d
    rra                                           ; $6314: $1f
    dec c                                         ; $6315: $0d
    rrca                                          ; $6316: $0f
    ld c, $0f                                     ; $6317: $0e $0f
    ld a, b                                       ; $6319: $78
    ld a, a                                       ; $631a: $7f
    sbc [hl]                                      ; $631b: $9e
    rst $38                                       ; $631c: $ff
    cp a                                          ; $631d: $bf
    rst $38                                       ; $631e: $ff
    ld [bc], a                                    ; $631f: $02
    ld a, a                                       ; $6320: $7f
    ld [bc], a                                    ; $6321: $02

jr_0df_6322:
    rra                                           ; $6322: $1f
    ld [bc], a                                    ; $6323: $02
    ld bc, $0006                                  ; $6324: $01 $06 $00
    ld [bc], a                                    ; $6327: $02
    ld b, $81                                     ; $6328: $06 $81
    rrca                                          ; $632a: $0f
    ld [bc], a                                    ; $632b: $02
    add hl, bc                                    ; $632c: $09
    add [hl]                                      ; $632d: $86
    rrca                                          ; $632e: $0f
    adc c                                         ; $632f: $89
    adc a                                         ; $6330: $8f
    jp z, $fbce                                   ; $6331: $ca $ce $fb

    ld [bc], a                                    ; $6334: $02
    rst $38                                       ; $6335: $ff
    adc a                                         ; $6336: $8f

jr_0df_6337:
    cp $ed                                        ; $6337: $fe $ed
    db $fd                                        ; $6339: $fd
    rst $10                                       ; $633a: $d7
    push af                                       ; $633b: $f5
    daa                                           ; $633c: $27
    push af                                       ; $633d: $f5
    rst $38                                       ; $633e: $ff
    db $fc                                        ; $633f: $fc
    rst $38                                       ; $6340: $ff
    sbc [hl]                                      ; $6341: $9e
    rst $30                                       ; $6342: $f7
    sbc a                                         ; $6343: $9f
    ld b, e                                       ; $6344: $43
    ld a, a                                       ; $6345: $7f
    ld [bc], a                                    ; $6346: $02
    inc a                                         ; $6347: $3c
    ld [$0200], sp                                ; $6348: $08 $00 $02
    db $10                                        ; $634b: $10
    ld [bc], a                                    ; $634c: $02
    ld a, d                                       ; $634d: $7a
    sub b                                         ; $634e: $90
    push af                                       ; $634f: $f5
    and l                                         ; $6350: $a5
    db $fd                                        ; $6351: $fd
    dec a                                         ; $6352: $3d
    ld a, [c]                                     ; $6353: $f2
    add d                                         ; $6354: $82
    ld a, [$7dba]                                 ; $6355: $fa $ba $7d
    dec h                                         ; $6358: $25
    jp c, $f21a                                   ; $6359: $da $1a $f2

    ld [de], a                                    ; $635c: $12
    db $ec                                        ; $635d: $ec
    inc l                                         ; $635e: $2c
    ld [bc], a                                    ; $635f: $02
    ldh a, [rDIV]                                 ; $6360: $f0 $04
    nop                                           ; $6362: $00
    rst $38                                       ; $6363: $ff
    add hl, bc                                    ; $6364: $09
    ld [bc], a                                    ; $6365: $02
    ld hl, sp+$07                                 ; $6366: $f8 $07
    ld a, [c]                                     ; $6368: $f2
    ld bc, $00f7                                  ; $6369: $01 $f7 $00
    rst $30                                       ; $636c: $f7
    inc bc                                        ; $636d: $03
    dec b                                         ; $636e: $05
    nop                                           ; $636f: $00
    add a                                         ; $6370: $87
    jr nz, jr_0df_62f3                            ; $6371: $20 $80

    nop                                           ; $6373: $00
    add b                                         ; $6374: $80
    ld [$0200], sp                                ; $6375: $08 $00 $02
    inc bc                                        ; $6378: $03
    nop                                           ; $6379: $00
    add c                                         ; $637a: $81
    ld bc, $0011                                  ; $637b: $01 $11 $00
    adc l                                         ; $637e: $8d
    dec b                                         ; $637f: $05
    nop                                           ; $6380: $00
    ld bc, $0600                                  ; $6381: $01 $00 $06
    nop                                           ; $6384: $00
    ld [bc], a                                    ; $6385: $02
    nop                                           ; $6386: $00
    ld bc, $0200                                  ; $6387: $01 $00 $02
    nop                                           ; $638a: $00
    ld b, $12                                     ; $638b: $06 $12
    nop                                           ; $638d: $00
    rst $38                                       ; $638e: $ff
    dec bc                                        ; $638f: $0b
    inc bc                                        ; $6390: $03
    ld hl, sp+$07                                 ; $6391: $f8 $07
    ld a, [c]                                     ; $6393: $f2
    ld bc, $f4f8                                  ; $6394: $01 $f8 $f4
    ld hl, sp-$04                                 ; $6397: $f8 $fc
    ld hl, sp+$04                                 ; $6399: $f8 $04
    ld b, $00                                     ; $639b: $06 $00
    ld [bc], a                                    ; $639d: $02
    rlca                                          ; $639e: $07
    ld [bc], a                                    ; $639f: $02
    rra                                           ; $63a0: $1f
    adc b                                         ; $63a1: $88
    dec l                                         ; $63a2: $2d
    ccf                                           ; $63a3: $3f
    ld a, [hl]                                    ; $63a4: $7e
    ld a, a                                       ; $63a5: $7f
    sbc h                                         ; $63a6: $9c
    rst $38                                       ; $63a7: $ff
    cp a                                          ; $63a8: $bf
    rst $38                                       ; $63a9: $ff
    ld [bc], a                                    ; $63aa: $02
    ld a, a                                       ; $63ab: $7f
    inc c                                         ; $63ac: $0c
    nop                                           ; $63ad: $00
    ld [bc], a                                    ; $63ae: $02
    jr jr_0df_6337                                ; $63af: $18 $86

    inc a                                         ; $63b1: $3c
    inc h                                         ; $63b2: $24
    dec a                                         ; $63b3: $3d
    dec [hl]                                      ; $63b4: $35
    sub e                                         ; $63b5: $93
    sbc [hl]                                      ; $63b6: $9e
    ld [bc], a                                    ; $63b7: $02
    db $fd                                        ; $63b8: $fd
    adc b                                         ; $63b9: $88
    rst $30                                       ; $63ba: $f7
    push af                                       ; $63bb: $f5
    rra                                           ; $63bc: $1f
    db $ec                                        ; $63bd: $ec
    rst $38                                       ; $63be: $ff
    call nz, $fe8b                                ; $63bf: $c4 $8b $fe
    ld [bc], a                                    ; $63c2: $02
    rst $38                                       ; $63c3: $ff
    stop                                          ; $63c4: $10 $00
    ld [bc], a                                    ; $63c6: $02
    add b                                         ; $63c7: $80
    adc h                                         ; $63c8: $8c
    ld hl, sp+$78                                 ; $63c9: $f8 $78
    call nc, $df84                                ; $63cb: $d4 $84 $df
    sbc a                                         ; $63ce: $9f
    ld a, [c]                                     ; $63cf: $f2
    ld [bc], a                                    ; $63d0: $02
    rst $18                                       ; $63d1: $df
    rlca                                          ; $63d2: $07
    jp c, $021a                                   ; $63d3: $da $1a $02

    db $fc                                        ; $63d6: $fc
    inc c                                         ; $63d7: $0c
    nop                                           ; $63d8: $00
    rst $38                                       ; $63d9: $ff
    add hl, bc                                    ; $63da: $09
    ld [bc], a                                    ; $63db: $02
    ld hl, sp+$07                                 ; $63dc: $f8 $07
    ld a, [c]                                     ; $63de: $f2
    ld bc, $00fc                                  ; $63df: $01 $fc $00
    db $fc                                        ; $63e2: $fc
    ld [bc], a                                    ; $63e3: $02
    add h                                         ; $63e4: $84
    nop                                           ; $63e5: $00
    ld [hl+], a                                   ; $63e6: $22
    add b                                         ; $63e7: $80
    ld [bc], a                                    ; $63e8: $02
    inc bc                                        ; $63e9: $03
    nop                                           ; $63ea: $00
    add e                                         ; $63eb: $83
    ld [bc], a                                    ; $63ec: $02
    nop                                           ; $63ed: $00
    ld [bc], a                                    ; $63ee: $02
    rla                                           ; $63ef: $17
    nop                                           ; $63f0: $00
    add c                                         ; $63f1: $81
    ld [bc], a                                    ; $63f2: $02
    inc bc                                        ; $63f3: $03
    nop                                           ; $63f4: $00
    add c                                         ; $63f5: $81
    inc bc                                        ; $63f6: $03
    inc bc                                        ; $63f7: $03
    nop                                           ; $63f8: $00
    add c                                         ; $63f9: $81
    ld bc, $0016                                  ; $63fa: $01 $16 $00
    rst $38                                       ; $63fd: $ff
    dec bc                                        ; $63fe: $0b
    inc bc                                        ; $63ff: $03
    ld hl, sp+$07                                 ; $6400: $f8 $07
    ld a, [c]                                     ; $6402: $f2
    ld bc, $f6f4                                  ; $6403: $01 $f4 $f6
    db $f4                                        ; $6406: $f4
    cp $f4                                        ; $6407: $fe $f4
    dec b                                         ; $6409: $05
    ld [bc], a                                    ; $640a: $02
    ld bc, $3f02                                  ; $640b: $01 $02 $3f
    add c                                         ; $640e: $81
    ld e, a                                       ; $640f: $5f
    inc bc                                        ; $6410: $03
    ld a, a                                       ; $6411: $7f
    add [hl]                                      ; $6412: $86
    ld sp, $1c3f                                  ; $6413: $31 $3f $1c
    rra                                           ; $6416: $1f
    dec sp                                        ; $6417: $3b
    ccf                                           ; $6418: $3f
    ld [bc], a                                    ; $6419: $02
    ld a, a                                       ; $641a: $7f
    add h                                         ; $641b: $84
    cp a                                          ; $641c: $bf
    rst $38                                       ; $641d: $ff
    sbc c                                         ; $641e: $99

jr_0df_641f:
    ld sp, hl                                     ; $641f: $f9
    ld [bc], a                                    ; $6420: $02
    ld [hl], b                                    ; $6421: $70
    ld a, [bc]                                    ; $6422: $0a
    nop                                           ; $6423: $00
    ld [bc], a                                    ; $6424: $02
    ldh [$92], a                                  ; $6425: $e0 $92
    ret nc                                        ; $6427: $d0

    jr nc, @-$13                                  ; $6428: $30 $eb

    ei                                            ; $642a: $fb
    rst $38                                       ; $642b: $ff
    db $fc                                        ; $642c: $fc
    jp c, $2efa                                   ; $642d: $da $fa $2e

    ld [$e8cd], a                                 ; $6430: $ea $cd $e8
    rst $38                                       ; $6433: $ff
    ld hl, sp-$01                                 ; $6434: $f8 $ff
    jr c, jr_0df_641f                             ; $6436: $38 $e7

    inc a                                         ; $6438: $3c
    ld [bc], a                                    ; $6439: $02
    rst $38                                       ; $643a: $ff
    ld [bc], a                                    ; $643b: $02
    ld bc, $000c                                  ; $643c: $01 $0c $00
    ld [bc], a                                    ; $643f: $02
    ld h, h                                       ; $6440: $64
    sub b                                         ; $6441: $90
    ld e, b                                       ; $6442: $58
    jr jr_0df_649b                                ; $6443: $18 $56

    ld b, $5d                                     ; $6445: $06 $5d
    dec e                                         ; $6447: $1d
    ld [hl], c                                    ; $6448: $71
    ld bc, $1a5a                                  ; $6449: $01 $5a $1a
    ld e, [hl]                                    ; $644c: $5e
    ld b, $5b                                     ; $644d: $06 $5b
    dec de                                        ; $644f: $1b
    inc [hl]                                      ; $6450: $34
    inc d                                         ; $6451: $14
    ld [bc], a                                    ; $6452: $02
    ld a, b                                       ; $6453: $78
    ld [$ff00], sp                                ; $6454: $08 $00 $ff
    add hl, bc                                    ; $6457: $09
    ld [bc], a                                    ; $6458: $02
    ld hl, sp+$07                                 ; $6459: $f8 $07
    ld a, [c]                                     ; $645b: $f2
    ld bc, $01f7                                  ; $645c: $01 $f7 $01
    rst $30                                       ; $645f: $f7
    inc b                                         ; $6460: $04
    sub b                                         ; $6461: $90
    nop                                           ; $6462: $00
    ld [bc], a                                    ; $6463: $02
    nop                                           ; $6464: $00
    ld a, [hl+]                                   ; $6465: $2a
    add b                                         ; $6466: $80
    ld a, [bc]                                    ; $6467: $0a
    add b                                         ; $6468: $80
    stop                                          ; $6469: $10 $00
    ld [bc], a                                    ; $646b: $02
    nop                                           ; $646c: $00
    ld [bc], a                                    ; $646d: $02
    nop                                           ; $646e: $00
    ld [bc], a                                    ; $646f: $02
    nop                                           ; $6470: $00
    inc b                                         ; $6471: $04
    inc de                                        ; $6472: $13
    nop                                           ; $6473: $00
    add a                                         ; $6474: $87
    inc b                                         ; $6475: $04
    nop                                           ; $6476: $00
    ld bc, $0700                                  ; $6477: $01 $00 $07
    nop                                           ; $647a: $00
    ld [bc], a                                    ; $647b: $02
    inc bc                                        ; $647c: $03
    nop                                           ; $647d: $00
    add e                                         ; $647e: $83
    ld [bc], a                                    ; $647f: $02
    nop                                           ; $6480: $00
    inc b                                         ; $6481: $04
    stop                                          ; $6482: $10 $00
    rst $38                                       ; $6484: $ff
    dec bc                                        ; $6485: $0b
    inc bc                                        ; $6486: $03
    ld hl, sp+$07                                 ; $6487: $f8 $07
    ld a, [c]                                     ; $6489: $f2
    ld bc, $f8f2                                  ; $648a: $01 $f2 $f8
    ld a, [c]                                     ; $648d: $f2
    nop                                           ; $648e: $00
    ld a, [c]                                     ; $648f: $f2
    ld b, $02                                     ; $6490: $06 $02
    nop                                           ; $6492: $00
    ld [bc], a                                    ; $6493: $02
    ccf                                           ; $6494: $3f
    adc b                                         ; $6495: $88
    ld [hl], a                                    ; $6496: $77
    ld a, a                                       ; $6497: $7f
    cp b                                          ; $6498: $b8
    rst $38                                       ; $6499: $ff
    ld [hl], c                                    ; $649a: $71

jr_0df_649b:
    ld a, a                                       ; $649b: $7f
    cpl                                           ; $649c: $2f
    ccf                                           ; $649d: $3f
    inc b                                         ; $649e: $04
    ld a, a                                       ; $649f: $7f
    add h                                         ; $64a0: $84
    cp a                                          ; $64a1: $bf
    rst $38                                       ; $64a2: $ff
    sbc b                                         ; $64a3: $98
    ld hl, sp+$02                                 ; $64a4: $f8 $02
    ld h, e                                       ; $64a6: $63
    add d                                         ; $64a7: $82

jr_0df_64a8:
    inc bc                                        ; $64a8: $03
    ld [bc], a                                    ; $64a9: $02
    ld [bc], a                                    ; $64aa: $02
    ld bc, $0006                                  ; $64ab: $01 $06 $00
    ld [bc], a                                    ; $64ae: $02
    ld [hl], b                                    ; $64af: $70
    adc b                                         ; $64b0: $88
    db $fc                                        ; $64b1: $fc
    call z, $feea                                 ; $64b2: $cc $ea $fe
    ld e, $fe                                     ; $64b5: $1e $fe
    db $eb                                        ; $64b7: $eb
    ei                                            ; $64b8: $fb
    inc bc                                        ; $64b9: $03
    rst $30                                       ; $64ba: $f7
    adc e                                         ; $64bb: $8b
    push af                                       ; $64bc: $f5
    rst $38                                       ; $64bd: $ff
    db $fd                                        ; $64be: $fd
    rst $38                                       ; $64bf: $ff
    ld hl, sp-$41                                 ; $64c0: $f8 $bf
    ld hl, sp-$32                                 ; $64c2: $f8 $ce
    ld a, h                                       ; $64c4: $7c
    push af                                       ; $64c5: $f5
    ld [hl], h                                    ; $64c6: $74
    ld [bc], a                                    ; $64c7: $02
    jp Jump_000_000e                              ; $64c8: $c3 $0e $00


    ld [bc], a                                    ; $64cb: $02
    jr nc, @-$72                                  ; $64cc: $30 $8c

    inc a                                         ; $64ce: $3c
    inc c                                         ; $64cf: $0c
    ld a, [hl-]                                   ; $64d0: $3a
    ld [hl+], a                                   ; $64d1: $22
    rla                                           ; $64d2: $17
    rlca                                          ; $64d3: $07
    dec a                                         ; $64d4: $3d
    ld bc, $052d                                  ; $64d5: $01 $2d $05
    dec l                                         ; $64d8: $2d
    dec c                                         ; $64d9: $0d
    ld [bc], a                                    ; $64da: $02
    ld [hl-], a                                   ; $64db: $32
    ld [bc], a                                    ; $64dc: $02
    inc h                                         ; $64dd: $24
    ld [bc], a                                    ; $64de: $02
    jr c, jr_0df_64e5                             ; $64df: $38 $04

    nop                                           ; $64e1: $00
    rst $38                                       ; $64e2: $ff
    add hl, bc                                    ; $64e3: $09
    ld [bc], a                                    ; $64e4: $02

jr_0df_64e5:
    ld hl, sp+$07                                 ; $64e5: $f8 $07
    ld a, [c]                                     ; $64e7: $f2
    ld bc, $04f6                                  ; $64e8: $01 $f6 $04
    or $05                                        ; $64eb: $f6 $05
    adc b                                         ; $64ed: $88
    ld b, b                                       ; $64ee: $40
    nop                                           ; $64ef: $00
    add b                                         ; $64f0: $80
    nop                                           ; $64f1: $00
    add b                                         ; $64f2: $80
    ld bc, $0a00                                  ; $64f3: $01 $00 $0a
    inc bc                                        ; $64f6: $03
    nop                                           ; $64f7: $00
    add a                                         ; $64f8: $87
    inc b                                         ; $64f9: $04
    nop                                           ; $64fa: $00
    inc d                                         ; $64fb: $14
    nop                                           ; $64fc: $00
    inc hl                                        ; $64fd: $23
    nop                                           ; $64fe: $00
    ld b, $17                                     ; $64ff: $06 $17
    nop                                           ; $6501: $00
    add l                                         ; $6502: $85
    ld bc, $0100                                  ; $6503: $01 $00 $01
    nop                                           ; $6506: $00
    ld bc, $0012                                  ; $6507: $01 $12 $00
    rst $38                                       ; $650a: $ff
    dec c                                         ; $650b: $0d
    inc b                                         ; $650c: $04
    ld hl, sp+$07                                 ; $650d: $f8 $07
    ld a, [c]                                     ; $650f: $f2
    ld bc, $fcee                                  ; $6510: $01 $ee $fc
    pop af                                        ; $6513: $f1
    inc b                                         ; $6514: $04
    rst $30                                       ; $6515: $f7
    ld [$fcfe], sp                                ; $6516: $08 $fe $fc
    ld [bc], a                                    ; $6519: $02
    jr nc, jr_0df_64a8                            ; $651a: $30 $8c

    ld d, b                                       ; $651c: $50
    ld [hl], b                                    ; $651d: $70
    ld l, [hl]                                    ; $651e: $6e
    ld a, [hl]                                    ; $651f: $7e
    dec sp                                        ; $6520: $3b
    ccf                                           ; $6521: $3f
    inc a                                         ; $6522: $3c
    ccf                                           ; $6523: $3f
    dec sp                                        ; $6524: $3b
    ccf                                           ; $6525: $3f
    scf                                           ; $6526: $37
    ccf                                           ; $6527: $3f
    ld [bc], a                                    ; $6528: $02
    ld a, a                                       ; $6529: $7f
    add h                                         ; $652a: $84
    cp a                                          ; $652b: $bf
    rst $38                                       ; $652c: $ff
    sbc a                                         ; $652d: $9f
    rst $38                                       ; $652e: $ff
    ld [bc], a                                    ; $652f: $02
    ld [hl], e                                    ; $6530: $73
    inc b                                         ; $6531: $04
    nop                                           ; $6532: $00
    ld [bc], a                                    ; $6533: $02
    ld bc, $0e84                                  ; $6534: $01 $84 $0e
    rrca                                          ; $6537: $0f
    inc e                                         ; $6538: $1c
    inc de                                        ; $6539: $13
    ld [bc], a                                    ; $653a: $02
    add b                                         ; $653b: $80
    sbc b                                         ; $653c: $98
    ld [hl], b                                    ; $653d: $70
    ldh a, [$a8]                                  ; $653e: $f0 $a8
    ld hl, sp-$2c                                 ; $6540: $f8 $d4
    db $fc                                        ; $6542: $fc
    db $ec                                        ; $6543: $ec
    db $fc                                        ; $6544: $fc
    rst $20                                       ; $6545: $e7
    rst $30                                       ; $6546: $f7
    rst $28                                       ; $6547: $ef
    add sp, -$21                                  ; $6548: $e8 $df
    pop de                                        ; $654a: $d1
    db $fc                                        ; $654b: $fc
    ldh a, [rIE]                                  ; $654c: $f0 $ff
    ldh [$3f], a                                  ; $654e: $e0 $3f
    ldh [$7e], a                                  ; $6550: $e0 $7e
    ld hl, sp-$65                                 ; $6552: $f8 $9b
    sub d                                         ; $6554: $92
    ld [bc], a                                    ; $6555: $02
    add hl, bc                                    ; $6556: $09
    ld [bc], a                                    ; $6557: $02
    rlca                                          ; $6558: $07
    ld [bc], a                                    ; $6559: $02
    nop                                           ; $655a: $00
    ld [bc], a                                    ; $655b: $02
    inc c                                         ; $655c: $0c
    adc d                                         ; $655d: $8a
    ld c, $02                                     ; $655e: $0e $02
    ld a, [bc]                                    ; $6560: $0a
    ld [bc], a                                    ; $6561: $02
    dec c                                         ; $6562: $0d
    dec b                                         ; $6563: $05
    rlca                                          ; $6564: $07
    inc bc                                        ; $6565: $03
    ld a, [bc]                                    ; $6566: $0a
    ld [bc], a                                    ; $6567: $02
    ld [bc], a                                    ; $6568: $02
    ld a, [bc]                                    ; $6569: $0a
    ld [bc], a                                    ; $656a: $02
    inc b                                         ; $656b: $04
    ld [bc], a                                    ; $656c: $02
    ld [$000e], sp                                ; $656d: $08 $0e $00
    add d                                         ; $6570: $82
    rra                                           ; $6571: $1f
    inc de                                        ; $6572: $13
    ld [bc], a                                    ; $6573: $02
    inc c                                         ; $6574: $0c
    inc e                                         ; $6575: $1c
    nop                                           ; $6576: $00
    rst $38                                       ; $6577: $ff
    add hl, bc                                    ; $6578: $09
    ld [bc], a                                    ; $6579: $02
    ld hl, sp+$07                                 ; $657a: $f8 $07
    ld a, [c]                                     ; $657c: $f2
    ld bc, $06f6                                  ; $657d: $01 $f6 $06
    or $07                                        ; $6580: $f6 $07
    add l                                         ; $6582: $85
    jr nz, jr_0df_6585                            ; $6583: $20 $00

jr_0df_6585:
    ld b, b                                       ; $6585: $40
    nop                                           ; $6586: $00
    add b                                         ; $6587: $80
    ld [bc], a                                    ; $6588: $02
    nop                                           ; $6589: $00
    add c                                         ; $658a: $81
    dec c                                         ; $658b: $0d
    inc bc                                        ; $658c: $03
    nop                                           ; $658d: $00
    add a                                         ; $658e: $87
    ld [bc], a                                    ; $658f: $02
    nop                                           ; $6590: $00
    dec b                                         ; $6591: $05
    nop                                           ; $6592: $00
    ld de, $1a00                                  ; $6593: $11 $00 $1a
    rla                                           ; $6596: $17
    nop                                           ; $6597: $00
    add c                                         ; $6598: $81
    ld bc, $0016                                  ; $6599: $01 $16 $00
    rst $38                                       ; $659c: $ff
    dec c                                         ; $659d: $0d
    inc b                                         ; $659e: $04
    ld hl, sp+$07                                 ; $659f: $f8 $07
    ld a, [c]                                     ; $65a1: $f2
    ld bc, $02ed                                  ; $65a2: $01 $ed $02
    rst $28                                       ; $65a5: $ef
    add hl, bc                                    ; $65a6: $09
    db $fd                                        ; $65a7: $fd
    ld bc, $07fd                                  ; $65a8: $01 $fd $07
    ld [bc], a                                    ; $65ab: $02
    ld c, $81                                     ; $65ac: $0e $81
    add hl, bc                                    ; $65ae: $09
    inc bc                                        ; $65af: $03
    rrca                                          ; $65b0: $0f
    ld [bc], a                                    ; $65b1: $02
    rst $18                                       ; $65b2: $df
    add [hl]                                      ; $65b3: $86
    cp a                                          ; $65b4: $bf
    rst $38                                       ; $65b5: $ff
    cp b                                          ; $65b6: $b8
    rst $38                                       ; $65b7: $ff
    or $ff                                        ; $65b8: $f6 $ff
    ld [bc], a                                    ; $65ba: $02
    ccf                                           ; $65bb: $3f
    ld [bc], a                                    ; $65bc: $02
    rra                                           ; $65bd: $1f
    ld [bc], a                                    ; $65be: $02
    rrca                                          ; $65bf: $0f
    inc b                                         ; $65c0: $04
    rlca                                          ; $65c1: $07
    ld [bc], a                                    ; $65c2: $02
    rra                                           ; $65c3: $1f
    add [hl]                                      ; $65c4: $86
    inc hl                                        ; $65c5: $23
    ccf                                           ; $65c6: $3f
    ld c, l                                       ; $65c7: $4d
    ld a, h                                       ; $65c8: $7c
    sub a                                         ; $65c9: $97
    or $02                                        ; $65ca: $f6 $02
    ld h, b                                       ; $65cc: $60
    ld [bc], a                                    ; $65cd: $02
    ld [hl], b                                    ; $65ce: $70
    adc [hl]                                      ; $65cf: $8e
    ld d, b                                       ; $65d0: $50
    ld [hl], b                                    ; $65d1: $70
    ld e, h                                       ; $65d2: $5c
    ld a, h                                       ; $65d3: $7c
    ld e, [hl]                                    ; $65d4: $5e
    ld a, d                                       ; $65d5: $7a
    ld a, [de]                                    ; $65d6: $1a
    ld a, [hl]                                    ; $65d7: $7e
    ld a, [de]                                    ; $65d8: $1a
    ld a, [hl]                                    ; $65d9: $7e
    ld e, d                                       ; $65da: $5a
    ld a, [hl]                                    ; $65db: $7e
    ld e, d                                       ; $65dc: $5a
    ld a, [hl]                                    ; $65dd: $7e
    ld [bc], a                                    ; $65de: $02
    ld a, h                                       ; $65df: $7c
    ld [bc], a                                    ; $65e0: $02
    ld [de], a                                    ; $65e1: $12
    adc [hl]                                      ; $65e2: $8e
    ld l, [hl]                                    ; $65e3: $6e
    ld h, d                                       ; $65e4: $62
    ld a, a                                       ; $65e5: $7f
    ld bc, $0d6f                                  ; $65e6: $01 $6f $0d
    ld a, [$7e0a]                                 ; $65e9: $fa $0a $7e
    ld d, d                                       ; $65ec: $52
    db $eb                                        ; $65ed: $eb
    sbc d                                         ; $65ee: $9a
    pop af                                        ; $65ef: $f1
    or c                                          ; $65f0: $b1
    ld [bc], a                                    ; $65f1: $02
    ret nz                                        ; $65f2: $c0

    ld e, $00                                     ; $65f3: $1e $00
    ld [bc], a                                    ; $65f5: $02
    add hl, hl                                    ; $65f6: $29
    ld [bc], a                                    ; $65f7: $02
    ld e, $18                                     ; $65f8: $1e $18
    nop                                           ; $65fa: $00
    rst $38                                       ; $65fb: $ff
    rlca                                          ; $65fc: $07
    ld bc, $07f8                                  ; $65fd: $01 $f8 $07
    ld a, [c]                                     ; $6600: $f2
    ld bc, $07f9                                  ; $6601: $01 $f9 $07
    adc [hl]                                      ; $6604: $8e
    jr jr_0df_660a                                ; $6605: $18 $03

    nop                                           ; $6607: $00
    inc b                                         ; $6608: $04
    nop                                           ; $6609: $00

jr_0df_660a:
    ld b, b                                       ; $660a: $40
    nop                                           ; $660b: $00
    inc b                                         ; $660c: $04
    nop                                           ; $660d: $00
    ld bc, $2000                                  ; $660e: $01 $00 $20
    nop                                           ; $6611: $00
    ld d, $12                                     ; $6612: $16 $12
    nop                                           ; $6614: $00
    rst $38                                       ; $6615: $ff
    dec c                                         ; $6616: $0d
    inc b                                         ; $6617: $04
    ld hl, sp+$07                                 ; $6618: $f8 $07
    ld a, [c]                                     ; $661a: $f2
    ld bc, $01f1                                  ; $661b: $01 $f1 $01
    xor $09                                       ; $661e: $ee $09
    cp $09                                        ; $6620: $fe $09
    pop af                                        ; $6622: $f1
    ld de, $0102                                  ; $6623: $11 $02 $01
    inc b                                         ; $6626: $04
    inc bc                                        ; $6627: $03
    ld [bc], a                                    ; $6628: $02
    ld bc, $0008                                  ; $6629: $01 $08 $00
    ld [bc], a                                    ; $662c: $02
    inc b                                         ; $662d: $04
    adc d                                         ; $662e: $8a
    dec bc                                        ; $662f: $0b
    rrca                                          ; $6630: $0f
    db $10                                        ; $6631: $10
    rra                                           ; $6632: $1f
    add hl, de                                    ; $6633: $19
    rra                                           ; $6634: $1f
    ld a, $26                                     ; $6635: $3e $26
    dec sp                                        ; $6637: $3b
    ld a, [hl+]                                   ; $6638: $2a
    ld [bc], a                                    ; $6639: $02
    ld de, $0002                                  ; $663a: $11 $02 $00
    ld [bc], a                                    ; $663d: $02
    inc c                                         ; $663e: $0c
    sub h                                         ; $663f: $94
    ld [hl], d                                    ; $6640: $72
    ld a, [hl]                                    ; $6641: $7e
    db $fd                                        ; $6642: $fd
    rst $38                                       ; $6643: $ff
    ccf                                           ; $6644: $3f
    rst $38                                       ; $6645: $ff
    sbc a                                         ; $6646: $9f
    rst $38                                       ; $6647: $ff
    ld a, h                                       ; $6648: $7c
    rst $38                                       ; $6649: $ff
    db $dd                                        ; $664a: $dd
    rst $38                                       ; $664b: $ff
    db $ed                                        ; $664c: $ed
    rst $38                                       ; $664d: $ff
    ld [hl], l                                    ; $664e: $75
    ld a, a                                       ; $664f: $7f
    ld [hl], l                                    ; $6650: $75
    ld a, a                                       ; $6651: $7f
    ld a, e                                       ; $6652: $7b
    ld a, a                                       ; $6653: $7f
    ld [bc], a                                    ; $6654: $02
    rst $38                                       ; $6655: $ff
    add d                                         ; $6656: $82
    ccf                                           ; $6657: $3f
    rst $38                                       ; $6658: $ff
    ld [bc], a                                    ; $6659: $02
    di                                            ; $665a: $f3
    adc d                                         ; $665b: $8a
    ld e, l                                       ; $665c: $5d
    dec e                                         ; $665d: $1d
    ld sp, hl                                     ; $665e: $f9
    ld bc, $02fe                                  ; $665f: $01 $fe $02
    cp $32                                        ; $6662: $fe $32
    db $fc                                        ; $6664: $fc
    call z, $3002                                 ; $6665: $cc $02 $30
    jr jr_0df_666a                                ; $6668: $18 $00

jr_0df_666a:
    ld b, $80                                     ; $666a: $06 $80
    inc b                                         ; $666c: $04
    ret nz                                        ; $666d: $c0

    ld [bc], a                                    ; $666e: $02
    add b                                         ; $666f: $80
    ld [bc], a                                    ; $6670: $02
    ldh [$82], a                                  ; $6671: $e0 $82
    ldh a, [$d0]                                  ; $6673: $f0 $d0
    ld [bc], a                                    ; $6675: $02
    ld [hl], b                                    ; $6676: $70
    add h                                         ; $6677: $84
    sub b                                         ; $6678: $90
    ldh a, [$a0]                                  ; $6679: $f0 $a0
    ldh [rSC], a                                  ; $667b: $e0 $02
    ret nz                                        ; $667d: $c0

    ld [$ff00], sp                                ; $667e: $08 $00 $ff
    rlca                                          ; $6681: $07
    ld bc, $07f8                                  ; $6682: $01 $f8 $07
    ld a, [c]                                     ; $6685: $f2
    ld bc, $08fb                                  ; $6686: $01 $fb $08
    add c                                         ; $6689: $81
    ld b, $02                                     ; $668a: $06 $02
    nop                                           ; $668c: $00
    add e                                         ; $668d: $83
    ld d, c                                       ; $668e: $51
    nop                                           ; $668f: $00
    add e                                         ; $6690: $83
    ld a, [de]                                    ; $6691: $1a
    nop                                           ; $6692: $00
    rst $38                                       ; $6693: $ff
    dec bc                                        ; $6694: $0b
    inc bc                                        ; $6695: $03
    ld hl, sp+$07                                 ; $6696: $f8 $07
    ld a, [c]                                     ; $6698: $f2
    ld bc, $05f6                                  ; $6699: $01 $f6 $05
    or $0d                                        ; $669c: $f6 $0d
    or $11                                        ; $669e: $f6 $11
    inc b                                         ; $66a0: $04
    nop                                           ; $66a1: $00
    ld [bc], a                                    ; $66a2: $02
    ld bc, $0302                                  ; $66a3: $01 $02 $03
    ld [bc], a                                    ; $66a6: $02
    inc b                                         ; $66a7: $04
    ld [bc], a                                    ; $66a8: $02
    add hl, bc                                    ; $66a9: $09
    ld [bc], a                                    ; $66aa: $02
    rla                                           ; $66ab: $17
    adc b                                         ; $66ac: $88
    jr z, @+$41                                   ; $66ad: $28 $3f

    ld b, e                                       ; $66af: $43
    ld a, a                                       ; $66b0: $7f
    rst $20                                       ; $66b1: $e7
    sbc h                                         ; $66b2: $9c
    rst $38                                       ; $66b3: $ff
    sbc [hl]                                      ; $66b4: $9e
    ld [bc], a                                    ; $66b5: $02
    ld h, c                                       ; $66b6: $61
    ld [$0200], sp                                ; $66b7: $08 $00 $02
    rra                                           ; $66ba: $1f
    adc [hl]                                      ; $66bb: $8e
    db $d3                                        ; $66bc: $d3
    rst $18                                       ; $66bd: $df
    ccf                                           ; $66be: $3f
    rst $38                                       ; $66bf: $ff
    ld a, c                                       ; $66c0: $79
    rst $38                                       ; $66c1: $ff
    db $fd                                        ; $66c2: $fd
    rst $38                                       ; $66c3: $ff
    rst $30                                       ; $66c4: $f7
    rst $38                                       ; $66c5: $ff
    ld a, [$fbff]                                 ; $66c6: $fa $ff $fb
    rst $38                                       ; $66c9: $ff
    ld [bc], a                                    ; $66ca: $02
    cp $02                                        ; $66cb: $fe $02
    db $10                                        ; $66cd: $10
    add d                                         ; $66ce: $82
    and b                                         ; $66cf: $a0
    jr nz, @+$04                                  ; $66d0: $20 $02

    ret nz                                        ; $66d2: $c0

    ld [$0200], sp                                ; $66d3: $08 $00 $02
    inc b                                         ; $66d6: $04
    add e                                         ; $66d7: $83
    ld a, [bc]                                    ; $66d8: $0a
    ld c, $0d                                     ; $66d9: $0e $0d
    dec b                                         ; $66db: $05
    rrca                                          ; $66dc: $0f
    add h                                         ; $66dd: $84
    dec c                                         ; $66de: $0d
    rrca                                          ; $66df: $0f
    ld b, $0e                                     ; $66e0: $06 $0e
    ld [bc], a                                    ; $66e2: $02
    ld [$0010], sp                                ; $66e3: $08 $10 $00
    rst $38                                       ; $66e6: $ff
    rlca                                          ; $66e7: $07
    ld bc, $07f8                                  ; $66e8: $01 $f8 $07
    ld a, [c]                                     ; $66eb: $f2
    ld bc, $08fa                                  ; $66ec: $01 $fa $08
    add [hl]                                      ; $66ef: $86
    nop                                           ; $66f0: $00
    jr jr_0df_66f3                                ; $66f1: $18 $00

jr_0df_66f3:
    jr nc, jr_0df_66f5                            ; $66f3: $30 $00

jr_0df_66f5:
    ld b, b                                       ; $66f5: $40
    dec b                                         ; $66f6: $05
    nop                                           ; $66f7: $00
    add e                                         ; $66f8: $83
    rlca                                          ; $66f9: $07
    nop                                           ; $66fa: $00
    ld [bc], a                                    ; $66fb: $02
    ld [de], a                                    ; $66fc: $12
    nop                                           ; $66fd: $00
    rst $38                                       ; $66fe: $ff
    dec bc                                        ; $66ff: $0b
    inc bc                                        ; $6700: $03
    ld hl, sp+$07                                 ; $6701: $f8 $07
    ld a, [c]                                     ; $6703: $f2
    ld bc, $06f7                                  ; $6704: $01 $f7 $06
    rst $30                                       ; $6707: $f7
    ld c, $f7                                     ; $6708: $0e $f7
    inc d                                         ; $670a: $14
    ld [bc], a                                    ; $670b: $02
    rlca                                          ; $670c: $07
    ld [bc], a                                    ; $670d: $02
    ld [$1202], sp                                ; $670e: $08 $02 $12
    ld [bc], a                                    ; $6711: $02
    ld de, $2902                                  ; $6712: $11 $02 $29
    ld [bc], a                                    ; $6715: $02
    ld sp, $3b02                                  ; $6716: $31 $02 $3b
    add [hl]                                      ; $6719: $86
    ld b, a                                       ; $671a: $47
    ld a, a                                       ; $671b: $7f
    pop hl                                        ; $671c: $e1
    sbc a                                         ; $671d: $9f
    rst $28                                       ; $671e: $ef
    sbc a                                         ; $671f: $9f
    ld [bc], a                                    ; $6720: $02
    ld [hl], b                                    ; $6721: $70
    ld a, [bc]                                    ; $6722: $0a
    nop                                           ; $6723: $00
    ld [bc], a                                    ; $6724: $02
    add b                                         ; $6725: $80
    ld [bc], a                                    ; $6726: $02
    ld b, b                                       ; $6727: $40
    ld [bc], a                                    ; $6728: $02
    ld h, b                                       ; $6729: $60
    add l                                         ; $672a: $85
    sub b                                         ; $672b: $90
    ldh a, [$7b]                                  ; $672c: $f0 $7b
    ei                                            ; $672e: $fb
    db $fc                                        ; $672f: $fc
    inc bc                                        ; $6730: $03
    rst $38                                       ; $6731: $ff
    add c                                         ; $6732: $81
    cp $07                                        ; $6733: $fe $07
    rst $38                                       ; $6735: $ff
    ld [de], a                                    ; $6736: $12
    nop                                           ; $6737: $00
    ld [bc], a                                    ; $6738: $02
    inc [hl]                                      ; $6739: $34
    add l                                         ; $673a: $85
    ld a, [hl-]                                   ; $673b: $3a
    ld a, $3d                                     ; $673c: $3e $3d
    ccf                                           ; $673e: $3f
    rra                                           ; $673f: $1f
    inc bc                                        ; $6740: $03
    ccf                                           ; $6741: $3f
    ld [bc], a                                    ; $6742: $02
    ld a, $02                                     ; $6743: $3e $02
    inc a                                         ; $6745: $3c
    ld a, [bc]                                    ; $6746: $0a
    nop                                           ; $6747: $00
    rst $38                                       ; $6748: $ff
    rlca                                          ; $6749: $07
    ld bc, $07f8                                  ; $674a: $01 $f8 $07
    ld a, [c]                                     ; $674d: $f2
    ld bc, $07f8                                  ; $674e: $01 $f8 $07
    adc h                                         ; $6751: $8c
    nop                                           ; $6752: $00
    rrca                                          ; $6753: $0f
    nop                                           ; $6754: $00
    dec de                                        ; $6755: $1b
    nop                                           ; $6756: $00
    inc e                                         ; $6757: $1c
    nop                                           ; $6758: $00
    inc l                                         ; $6759: $2c
    nop                                           ; $675a: $00
    inc e                                         ; $675b: $1c
    nop                                           ; $675c: $00
    ld [$0014], sp                                ; $675d: $08 $14 $00
    rst $38                                       ; $6760: $ff
    dec bc                                        ; $6761: $0b
    inc bc                                        ; $6762: $03
    ld hl, sp+$07                                 ; $6763: $f8 $07
    ld a, [c]                                     ; $6765: $f2
    ld bc, $06f8                                  ; $6766: $01 $f8 $06
    ld hl, sp+$0e                                 ; $6769: $f8 $0e
    ld hl, sp+$14                                 ; $676b: $f8 $14
    ld [bc], a                                    ; $676d: $02
    rlca                                          ; $676e: $07
    ld [bc], a                                    ; $676f: $02
    ld [$1202], sp                                ; $6770: $08 $02 $12
    ld [bc], a                                    ; $6773: $02
    ld de, $2902                                  ; $6774: $11 $02 $29
    ld [bc], a                                    ; $6777: $02
    inc sp                                        ; $6778: $33
    ld [bc], a                                    ; $6779: $02
    ccf                                           ; $677a: $3f
    add [hl]                                      ; $677b: $86
    ld b, c                                       ; $677c: $41
    ld a, a                                       ; $677d: $7f
    rst $20                                       ; $677e: $e7
    sbc a                                         ; $677f: $9f
    add sp, -$68                                  ; $6780: $e8 $98
    ld [bc], a                                    ; $6782: $02
    ld [hl], b                                    ; $6783: $70
    ld a, [bc]                                    ; $6784: $0a
    nop                                           ; $6785: $00
    ld [bc], a                                    ; $6786: $02
    add b                                         ; $6787: $80
    ld [bc], a                                    ; $6788: $02
    ld b, b                                       ; $6789: $40
    ld [bc], a                                    ; $678a: $02
    ld h, b                                       ; $678b: $60
    add d                                         ; $678c: $82
    sbc b                                         ; $678d: $98
    ld hl, sp+$02                                 ; $678e: $f8 $02
    rst $38                                       ; $6790: $ff
    add c                                         ; $6791: $81
    cp $03                                        ; $6792: $fe $03
    rst $38                                       ; $6794: $ff
    add c                                         ; $6795: $81
    cp $05                                        ; $6796: $fe $05
    rst $38                                       ; $6798: $ff
    inc d                                         ; $6799: $14
    nop                                           ; $679a: $00
    ld [bc], a                                    ; $679b: $02
    inc a                                         ; $679c: $3c
    add d                                         ; $679d: $82
    ld a, [de]                                    ; $679e: $1a
    ld a, $02                                     ; $679f: $3e $02
    ccf                                           ; $67a1: $3f
    add d                                         ; $67a2: $82
    dec e                                         ; $67a3: $1d
    ccf                                           ; $67a4: $3f
    ld [bc], a                                    ; $67a5: $02
    ld a, $02                                     ; $67a6: $3e $02
    inc a                                         ; $67a8: $3c
    inc c                                         ; $67a9: $0c
    nop                                           ; $67aa: $00
    rst $38                                       ; $67ab: $ff
    rlca                                          ; $67ac: $07
    ld bc, $07f8                                  ; $67ad: $01 $f8 $07
    ld a, [c]                                     ; $67b0: $f2
    ld bc, $07f9                                  ; $67b1: $01 $f9 $07
    adc d                                         ; $67b4: $8a
    nop                                           ; $67b5: $00
    rrca                                          ; $67b6: $0f
    nop                                           ; $67b7: $00
    dec de                                        ; $67b8: $1b
    nop                                           ; $67b9: $00
    inc e                                         ; $67ba: $1c
    nop                                           ; $67bb: $00
    inc l                                         ; $67bc: $2c
    nop                                           ; $67bd: $00
    jr jr_0df_67d6                                ; $67be: $18 $16

    nop                                           ; $67c0: $00
    rst $38                                       ; $67c1: $ff
    dec c                                         ; $67c2: $0d
    inc b                                         ; $67c3: $04
    ld sp, hl                                     ; $67c4: $f9
    ld [$01f2], sp                                ; $67c5: $08 $f2 $01
    db $ec                                        ; $67c8: $ec
    db $fc                                        ; $67c9: $fc
    db $ed                                        ; $67ca: $ed
    rst $38                                       ; $67cb: $ff
    db $fc                                        ; $67cc: $fc
    ei                                            ; $67cd: $fb
    db $fc                                        ; $67ce: $fc
    db $fd                                        ; $67cf: $fd
    ld [bc], a                                    ; $67d0: $02
    rra                                           ; $67d1: $1f
    sbc [hl]                                      ; $67d2: $9e
    inc h                                         ; $67d3: $24
    jr nz, jr_0df_682f                            ; $67d4: $20 $59

jr_0df_67d6:
    ld c, c                                       ; $67d6: $49
    ld l, a                                       ; $67d7: $6f
    ld c, [hl]                                    ; $67d8: $4e
    ld l, a                                       ; $67d9: $6f
    ld l, c                                       ; $67da: $69
    ld a, [hl]                                    ; $67db: $7e
    ld [hl], d                                    ; $67dc: $72
    ccf                                           ; $67dd: $3f
    jr nz, @+$41                                  ; $67de: $20 $3f

    jr nc, @+$21                                  ; $67e0: $30 $1f

    ld de, $787f                                  ; $67e2: $11 $7f $78
    xor a                                         ; $67e5: $af
    rst $38                                       ; $67e6: $ff
    ld c, e                                       ; $67e7: $4b
    ld a, e                                       ; $67e8: $7b
    ld c, [hl]                                    ; $67e9: $4e
    ld [hl], a                                    ; $67ea: $77
    ld l, h                                       ; $67eb: $6c
    ld [hl], a                                    ; $67ec: $77
    ld h, a                                       ; $67ed: $67
    ld a, a                                       ; $67ee: $7f
    rst $38                                       ; $67ef: $ff
    ei                                            ; $67f0: $fb
    ld [bc], a                                    ; $67f1: $02
    ld b, $02                                     ; $67f2: $06 $02
    dec b                                         ; $67f4: $05
    inc bc                                        ; $67f5: $03
    ld b, $87                                     ; $67f6: $06 $87
    ld [bc], a                                    ; $67f8: $02
    ld b, $02                                     ; $67f9: $06 $02
    rlca                                          ; $67fb: $07
    ld bc, $0206                                  ; $67fc: $01 $06 $02
    ld [bc], a                                    ; $67ff: $02
    ld b, $02                                     ; $6800: $06 $02
    inc b                                         ; $6802: $04
    inc b                                         ; $6803: $04
    nop                                           ; $6804: $00
    inc b                                         ; $6805: $04
    inc b                                         ; $6806: $04
    inc b                                         ; $6807: $04
    nop                                           ; $6808: $00
    add d                                         ; $6809: $82
    ld hl, sp-$68                                 ; $680a: $f8 $98
    ld [bc], a                                    ; $680c: $02
    ld [hl], b                                    ; $680d: $70
    ld [bc], a                                    ; $680e: $02
    rst $38                                       ; $680f: $ff
    add [hl]                                      ; $6810: $86
    cp d                                          ; $6811: $ba
    rst $38                                       ; $6812: $ff
    or a                                          ; $6813: $b7
    rst $38                                       ; $6814: $ff
    ld a, h                                       ; $6815: $7c
    ld a, a                                       ; $6816: $7f
    ld [bc], a                                    ; $6817: $02
    ccf                                           ; $6818: $3f
    ld d, $00                                     ; $6819: $16 $00
    ld b, $02                                     ; $681b: $06 $02
    add d                                         ; $681d: $82
    ld bc, $0203                                  ; $681e: $01 $03 $02
    ld [bc], a                                    ; $6821: $02
    inc d                                         ; $6822: $14
    nop                                           ; $6823: $00
    rst $38                                       ; $6824: $ff
    rlca                                          ; $6825: $07
    ld bc, $08f9                                  ; $6826: $01 $f9 $08
    ld a, [c]                                     ; $6829: $f2
    ld bc, $feed                                  ; $682a: $01 $ed $fe
    adc d                                         ; $682d: $8a
    nop                                           ; $682e: $00

jr_0df_682f:
    ld l, h                                       ; $682f: $6c
    nop                                           ; $6830: $00
    sbc c                                         ; $6831: $99
    nop                                           ; $6832: $00
    ld b, b                                       ; $6833: $40
    nop                                           ; $6834: $00
    ld b, b                                       ; $6835: $40
    nop                                           ; $6836: $00
    inc b                                         ; $6837: $04
    ld a, [bc]                                    ; $6838: $0a
    nop                                           ; $6839: $00
    add c                                         ; $683a: $81
    db $10                                        ; $683b: $10
    dec bc                                        ; $683c: $0b
    nop                                           ; $683d: $00
    rst $38                                       ; $683e: $ff
    dec c                                         ; $683f: $0d
    inc b                                         ; $6840: $04
    ld sp, hl                                     ; $6841: $f9
    ld [$01f2], sp                                ; $6842: $08 $f2 $01
    db $ec                                        ; $6845: $ec
    db $fc                                        ; $6846: $fc
    db $ed                                        ; $6847: $ed
    rst $38                                       ; $6848: $ff
    db $fc                                        ; $6849: $fc
    ei                                            ; $684a: $fb
    db $fc                                        ; $684b: $fc
    rst $38                                       ; $684c: $ff
    ld [bc], a                                    ; $684d: $02
    rra                                           ; $684e: $1f
    sbc e                                         ; $684f: $9b
    inc h                                         ; $6850: $24
    jr nz, jr_0df_68ac                            ; $6851: $20 $59

    ld c, c                                       ; $6853: $49
    ld l, a                                       ; $6854: $6f
    ld c, [hl]                                    ; $6855: $4e
    ld l, a                                       ; $6856: $6f
    ld l, c                                       ; $6857: $69
    ld a, [hl]                                    ; $6858: $7e
    ld [hl], d                                    ; $6859: $72
    ccf                                           ; $685a: $3f
    jr nz, jr_0df_689c                            ; $685b: $20 $3f

    jr nc, jr_0df_687e                            ; $685d: $30 $1f

    ld de, $787f                                  ; $685f: $11 $7f $78
    xor a                                         ; $6862: $af
    rst $38                                       ; $6863: $ff
    ld c, e                                       ; $6864: $4b
    ld a, e                                       ; $6865: $7b
    ld c, [hl]                                    ; $6866: $4e
    ld [hl], a                                    ; $6867: $77
    ld l, h                                       ; $6868: $6c
    ld [hl], a                                    ; $6869: $77
    ld h, a                                       ; $686a: $67
    ld [bc], a                                    ; $686b: $02
    ld a, a                                       ; $686c: $7f
    add c                                         ; $686d: $81
    ld a, e                                       ; $686e: $7b
    ld [bc], a                                    ; $686f: $02
    ld b, $02                                     ; $6870: $06 $02
    dec b                                         ; $6872: $05
    inc bc                                        ; $6873: $03
    ld b, $87                                     ; $6874: $06 $87
    ld [bc], a                                    ; $6876: $02
    ld b, $02                                     ; $6877: $06 $02
    rlca                                          ; $6879: $07
    ld bc, $0206                                  ; $687a: $01 $06 $02
    ld [bc], a                                    ; $687d: $02

jr_0df_687e:
    ld b, $02                                     ; $687e: $06 $02
    inc b                                         ; $6880: $04
    inc b                                         ; $6881: $04
    nop                                           ; $6882: $00
    inc b                                         ; $6883: $04
    inc b                                         ; $6884: $04
    ld [bc], a                                    ; $6885: $02
    nop                                           ; $6886: $00
    ld [bc], a                                    ; $6887: $02
    inc b                                         ; $6888: $04
    add d                                         ; $6889: $82
    db $fc                                        ; $688a: $fc
    sbc h                                         ; $688b: $9c
    ld [bc], a                                    ; $688c: $02
    ld [hl], b                                    ; $688d: $70
    ld [bc], a                                    ; $688e: $02
    ld a, a                                       ; $688f: $7f
    add [hl]                                      ; $6890: $86
    or a                                          ; $6891: $b7
    rst $38                                       ; $6892: $ff
    cp a                                          ; $6893: $bf
    rst $38                                       ; $6894: $ff
    ld h, l                                       ; $6895: $65
    ld a, l                                       ; $6896: $7d
    ld [bc], a                                    ; $6897: $02
    inc e                                         ; $6898: $1c
    ld d, $00                                     ; $6899: $16 $00
    ld [bc], a                                    ; $689b: $02

jr_0df_689c:
    ld c, $82                                     ; $689c: $0e $82
    dec c                                         ; $689e: $0d
    rrca                                          ; $689f: $0f
    ld [bc], a                                    ; $68a0: $02
    ld c, $02                                     ; $68a1: $0e $02
    ld [$0016], sp                                ; $68a3: $08 $16 $00
    rst $38                                       ; $68a6: $ff
    rlca                                          ; $68a7: $07
    ld bc, $08f9                                  ; $68a8: $01 $f9 $08
    ld a, [c]                                     ; $68ab: $f2

jr_0df_68ac:
    ld bc, $feed                                  ; $68ac: $01 $ed $fe
    adc d                                         ; $68af: $8a
    nop                                           ; $68b0: $00
    ld l, h                                       ; $68b1: $6c
    nop                                           ; $68b2: $00
    sbc c                                         ; $68b3: $99
    nop                                           ; $68b4: $00
    ld b, b                                       ; $68b5: $40
    nop                                           ; $68b6: $00
    ld b, b                                       ; $68b7: $40
    nop                                           ; $68b8: $00
    inc b                                         ; $68b9: $04
    ld a, [bc]                                    ; $68ba: $0a
    nop                                           ; $68bb: $00
    add c                                         ; $68bc: $81
    db $10                                        ; $68bd: $10
    dec bc                                        ; $68be: $0b
    nop                                           ; $68bf: $00
    rst $38                                       ; $68c0: $ff
    dec c                                         ; $68c1: $0d
    inc b                                         ; $68c2: $04
    ld sp, hl                                     ; $68c3: $f9
    ld [$01f2], sp                                ; $68c4: $08 $f2 $01
    db $ed                                        ; $68c7: $ed
    db $fc                                        ; $68c8: $fc
    xor $ff                                       ; $68c9: $ee $ff
    db $fd                                        ; $68cb: $fd
    ei                                            ; $68cc: $fb
    db $fd                                        ; $68cd: $fd
    cp $02                                        ; $68ce: $fe $02
    rra                                           ; $68d0: $1f
    sbc e                                         ; $68d1: $9b
    inc h                                         ; $68d2: $24
    jr nz, jr_0df_692e                            ; $68d3: $20 $59

    ld c, c                                       ; $68d5: $49
    ld l, a                                       ; $68d6: $6f
    ld c, [hl]                                    ; $68d7: $4e
    ld l, a                                       ; $68d8: $6f
    ld l, c                                       ; $68d9: $69
    ld a, [hl]                                    ; $68da: $7e
    ld [hl], d                                    ; $68db: $72
    ccf                                           ; $68dc: $3f
    jr nz, @+$41                                  ; $68dd: $20 $3f

    jr nc, @+$01                                  ; $68df: $30 $ff

    pop af                                        ; $68e1: $f1
    cp a                                          ; $68e2: $bf
    ld hl, sp+$6f                                 ; $68e3: $f8 $6f
    ld a, a                                       ; $68e5: $7f
    ld c, e                                       ; $68e6: $4b
    ld a, e                                       ; $68e7: $7b
    ld c, [hl]                                    ; $68e8: $4e
    ld [hl], a                                    ; $68e9: $77
    ld l, h                                       ; $68ea: $6c
    ld [hl], a                                    ; $68eb: $77
    rst $20                                       ; $68ec: $e7
    ld [bc], a                                    ; $68ed: $02
    rst $38                                       ; $68ee: $ff
    add c                                         ; $68ef: $81
    ei                                            ; $68f0: $fb
    ld [bc], a                                    ; $68f1: $02
    ld b, $02                                     ; $68f2: $06 $02
    dec b                                         ; $68f4: $05
    inc bc                                        ; $68f5: $03
    ld b, $87                                     ; $68f6: $06 $87
    ld [bc], a                                    ; $68f8: $02
    ld b, $02                                     ; $68f9: $06 $02
    rlca                                          ; $68fb: $07
    ld bc, $0206                                  ; $68fc: $01 $06 $02
    ld [bc], a                                    ; $68ff: $02
    ld b, $02                                     ; $6900: $06 $02
    inc b                                         ; $6902: $04
    inc b                                         ; $6903: $04
    nop                                           ; $6904: $00
    inc b                                         ; $6905: $04
    inc b                                         ; $6906: $04
    inc b                                         ; $6907: $04
    nop                                           ; $6908: $00
    add d                                         ; $6909: $82
    db $fc                                        ; $690a: $fc
    sbc h                                         ; $690b: $9c
    ld [bc], a                                    ; $690c: $02
    ldh a, [$86]                                  ; $690d: $f0 $86
    cp a                                          ; $690f: $bf
    rst $38                                       ; $6910: $ff
    ei                                            ; $6911: $fb
    rst $38                                       ; $6912: $ff
    ld l, a                                       ; $6913: $6f
    ld a, a                                       ; $6914: $7f
    ld [bc], a                                    ; $6915: $02
    jr nc, jr_0df_6930                            ; $6916: $30 $18

    nop                                           ; $6918: $00
    ld [bc], a                                    ; $6919: $02
    ld b, $81                                     ; $691a: $06 $81
    ld bc, $0703                                  ; $691c: $01 $03 $07
    jr jr_0df_6921                                ; $691f: $18 $00

jr_0df_6921:
    rst $38                                       ; $6921: $ff
    rlca                                          ; $6922: $07
    ld bc, $08f9                                  ; $6923: $01 $f9 $08
    ld a, [c]                                     ; $6926: $f2
    ld bc, $feee                                  ; $6927: $01 $ee $fe
    adc d                                         ; $692a: $8a
    nop                                           ; $692b: $00
    ld l, h                                       ; $692c: $6c
    nop                                           ; $692d: $00

jr_0df_692e:
    sbc c                                         ; $692e: $99
    nop                                           ; $692f: $00

jr_0df_6930:
    ld b, b                                       ; $6930: $40
    nop                                           ; $6931: $00
    ld b, b                                       ; $6932: $40
    nop                                           ; $6933: $00
    inc b                                         ; $6934: $04
    ld a, [bc]                                    ; $6935: $0a
    nop                                           ; $6936: $00
    add c                                         ; $6937: $81
    db $10                                        ; $6938: $10
    dec bc                                        ; $6939: $0b
    nop                                           ; $693a: $00
    rst $38                                       ; $693b: $ff
    dec c                                         ; $693c: $0d
    inc b                                         ; $693d: $04
    ld sp, hl                                     ; $693e: $f9
    ld [$01f2], sp                                ; $693f: $08 $f2 $01
    db $ec                                        ; $6942: $ec
    db $fc                                        ; $6943: $fc
    db $ed                                        ; $6944: $ed
    rst $38                                       ; $6945: $ff
    db $fc                                        ; $6946: $fc
    ei                                            ; $6947: $fb
    db $fc                                        ; $6948: $fc
    db $fd                                        ; $6949: $fd
    ld [bc], a                                    ; $694a: $02
    rra                                           ; $694b: $1f
    sbc e                                         ; $694c: $9b
    inc h                                         ; $694d: $24
    jr nz, jr_0df_69a9                            ; $694e: $20 $59

    ld c, c                                       ; $6950: $49
    ld l, a                                       ; $6951: $6f
    ld c, [hl]                                    ; $6952: $4e
    ld l, a                                       ; $6953: $6f
    ld l, c                                       ; $6954: $69
    ld a, [hl]                                    ; $6955: $7e
    ld [hl], d                                    ; $6956: $72
    ccf                                           ; $6957: $3f
    jr nz, jr_0df_6999                            ; $6958: $20 $3f

    jr nc, jr_0df_697b                            ; $695a: $30 $1f

    ld de, $787f                                  ; $695c: $11 $7f $78
    xor a                                         ; $695f: $af
    rst $38                                       ; $6960: $ff
    set 7, e                                      ; $6961: $cb $fb
    ld c, [hl]                                    ; $6963: $4e
    ld [hl], a                                    ; $6964: $77
    ld l, h                                       ; $6965: $6c
    ld [hl], a                                    ; $6966: $77
    ld h, a                                       ; $6967: $67
    ld [bc], a                                    ; $6968: $02
    ld a, a                                       ; $6969: $7f
    add c                                         ; $696a: $81
    ld a, e                                       ; $696b: $7b
    ld [bc], a                                    ; $696c: $02
    ld b, $02                                     ; $696d: $06 $02
    dec b                                         ; $696f: $05
    inc bc                                        ; $6970: $03
    ld b, $87                                     ; $6971: $06 $87
    ld [bc], a                                    ; $6973: $02
    ld b, $02                                     ; $6974: $06 $02
    rlca                                          ; $6976: $07
    ld bc, $0206                                  ; $6977: $01 $06 $02
    ld [bc], a                                    ; $697a: $02

jr_0df_697b:
    ld b, $02                                     ; $697b: $06 $02
    inc b                                         ; $697d: $04
    inc b                                         ; $697e: $04
    nop                                           ; $697f: $00
    inc b                                         ; $6980: $04
    inc b                                         ; $6981: $04
    ld [bc], a                                    ; $6982: $02
    nop                                           ; $6983: $00
    ld [bc], a                                    ; $6984: $02
    inc b                                         ; $6985: $04
    add d                                         ; $6986: $82
    db $fc                                        ; $6987: $fc
    sbc h                                         ; $6988: $9c
    ld [bc], a                                    ; $6989: $02
    ld [hl], b                                    ; $698a: $70
    add d                                         ; $698b: $82
    ld a, [hl]                                    ; $698c: $7e
    ld a, a                                       ; $698d: $7f
    ld [bc], a                                    ; $698e: $02
    rst $38                                       ; $698f: $ff
    add h                                         ; $6990: $84
    cp [hl]                                       ; $6991: $be
    rst $38                                       ; $6992: $ff
    ld e, a                                       ; $6993: $5f
    ld a, a                                       ; $6994: $7f
    ld [bc], a                                    ; $6995: $02
    jr c, jr_0df_69ae                             ; $6996: $38 $16

    nop                                           ; $6998: $00

jr_0df_6999:
    ld [bc], a                                    ; $6999: $02
    inc bc                                        ; $699a: $03
    ld [bc], a                                    ; $699b: $02
    ld [bc], a                                    ; $699c: $02
    ld [bc], a                                    ; $699d: $02
    inc bc                                        ; $699e: $03
    ld [bc], a                                    ; $699f: $02
    ld [bc], a                                    ; $69a0: $02
    ld d, $00                                     ; $69a1: $16 $00
    rst $38                                       ; $69a3: $ff
    rlca                                          ; $69a4: $07
    ld bc, $08f9                                  ; $69a5: $01 $f9 $08
    ld a, [c]                                     ; $69a8: $f2

jr_0df_69a9:
    ld bc, $feed                                  ; $69a9: $01 $ed $fe
    adc d                                         ; $69ac: $8a
    nop                                           ; $69ad: $00

jr_0df_69ae:
    ld l, h                                       ; $69ae: $6c
    nop                                           ; $69af: $00
    sbc c                                         ; $69b0: $99
    nop                                           ; $69b1: $00
    ld b, b                                       ; $69b2: $40
    nop                                           ; $69b3: $00
    ld b, b                                       ; $69b4: $40
    nop                                           ; $69b5: $00
    inc b                                         ; $69b6: $04
    ld a, [bc]                                    ; $69b7: $0a
    nop                                           ; $69b8: $00
    add c                                         ; $69b9: $81
    db $10                                        ; $69ba: $10
    dec bc                                        ; $69bb: $0b
    nop                                           ; $69bc: $00
    rst $38                                       ; $69bd: $ff
    dec c                                         ; $69be: $0d
    inc b                                         ; $69bf: $04
    ld sp, hl                                     ; $69c0: $f9
    ld [$01f2], sp                                ; $69c1: $08 $f2 $01
    db $ec                                        ; $69c4: $ec
    db $fc                                        ; $69c5: $fc
    db $ed                                        ; $69c6: $ed
    rst $38                                       ; $69c7: $ff
    db $fc                                        ; $69c8: $fc
    ei                                            ; $69c9: $fb
    db $fc                                        ; $69ca: $fc
    rst $38                                       ; $69cb: $ff
    ld [bc], a                                    ; $69cc: $02
    rra                                           ; $69cd: $1f
    sbc e                                         ; $69ce: $9b
    inc h                                         ; $69cf: $24
    jr nz, jr_0df_6a2b                            ; $69d0: $20 $59

    ld c, c                                       ; $69d2: $49
    ld l, a                                       ; $69d3: $6f
    ld c, [hl]                                    ; $69d4: $4e
    ld l, a                                       ; $69d5: $6f
    ld l, c                                       ; $69d6: $69
    ld a, [hl]                                    ; $69d7: $7e
    ld [hl], d                                    ; $69d8: $72
    ccf                                           ; $69d9: $3f
    jr nz, jr_0df_6a1b                            ; $69da: $20 $3f

    jr nc, jr_0df_69fd                            ; $69dc: $30 $1f

    ld de, $787f                                  ; $69de: $11 $7f $78
    xor a                                         ; $69e1: $af
    rst $38                                       ; $69e2: $ff
    ld c, e                                       ; $69e3: $4b
    ld a, e                                       ; $69e4: $7b
    ld c, [hl]                                    ; $69e5: $4e
    ld [hl], a                                    ; $69e6: $77
    ld l, h                                       ; $69e7: $6c
    ld [hl], a                                    ; $69e8: $77
    rst $20                                       ; $69e9: $e7
    ld [bc], a                                    ; $69ea: $02
    rst $38                                       ; $69eb: $ff
    add c                                         ; $69ec: $81
    ei                                            ; $69ed: $fb
    ld [bc], a                                    ; $69ee: $02
    ld b, $02                                     ; $69ef: $06 $02
    dec b                                         ; $69f1: $05
    inc bc                                        ; $69f2: $03
    ld b, $87                                     ; $69f3: $06 $87
    ld [bc], a                                    ; $69f5: $02
    ld b, $02                                     ; $69f6: $06 $02
    rlca                                          ; $69f8: $07
    ld bc, $0206                                  ; $69f9: $01 $06 $02
    ld [bc], a                                    ; $69fc: $02

jr_0df_69fd:
    ld b, $02                                     ; $69fd: $06 $02
    inc b                                         ; $69ff: $04
    inc b                                         ; $6a00: $04
    nop                                           ; $6a01: $00
    inc b                                         ; $6a02: $04
    inc b                                         ; $6a03: $04
    inc b                                         ; $6a04: $04
    nop                                           ; $6a05: $00
    add d                                         ; $6a06: $82
    db $fc                                        ; $6a07: $fc
    sbc h                                         ; $6a08: $9c
    ld [bc], a                                    ; $6a09: $02
    ld [hl], b                                    ; $6a0a: $70
    ld [bc], a                                    ; $6a0b: $02
    rst $38                                       ; $6a0c: $ff
    add [hl]                                      ; $6a0d: $86
    cp l                                          ; $6a0e: $bd
    rst $38                                       ; $6a0f: $ff
    cp e                                          ; $6a10: $bb
    rst $38                                       ; $6a11: $ff
    rst $18                                       ; $6a12: $df
    rst $38                                       ; $6a13: $ff
    ld [bc], a                                    ; $6a14: $02
    dec a                                         ; $6a15: $3d
    ld d, $00                                     ; $6a16: $16 $00
    add d                                         ; $6a18: $82
    inc b                                         ; $6a19: $04
    inc c                                         ; $6a1a: $0c

jr_0df_6a1b:
    ld [bc], a                                    ; $6a1b: $02
    ld c, $82                                     ; $6a1c: $0e $82
    add hl, bc                                    ; $6a1e: $09
    rrca                                          ; $6a1f: $0f
    ld [bc], a                                    ; $6a20: $02
    ld c, $02                                     ; $6a21: $0e $02
    ld [$0014], sp                                ; $6a23: $08 $14 $00
    rst $38                                       ; $6a26: $ff
    rlca                                          ; $6a27: $07
    ld bc, $08f9                                  ; $6a28: $01 $f9 $08

jr_0df_6a2b:
    ld a, [c]                                     ; $6a2b: $f2
    ld bc, $feed                                  ; $6a2c: $01 $ed $fe
    adc d                                         ; $6a2f: $8a
    nop                                           ; $6a30: $00
    ld l, h                                       ; $6a31: $6c
    nop                                           ; $6a32: $00
    sbc c                                         ; $6a33: $99
    nop                                           ; $6a34: $00
    ld b, b                                       ; $6a35: $40
    nop                                           ; $6a36: $00
    ld b, b                                       ; $6a37: $40
    nop                                           ; $6a38: $00
    inc b                                         ; $6a39: $04
    ld a, [bc]                                    ; $6a3a: $0a
    nop                                           ; $6a3b: $00
    add c                                         ; $6a3c: $81
    db $10                                        ; $6a3d: $10
    dec bc                                        ; $6a3e: $0b
    nop                                           ; $6a3f: $00
    rst $38                                       ; $6a40: $ff
    dec c                                         ; $6a41: $0d
    inc b                                         ; $6a42: $04
    ld sp, hl                                     ; $6a43: $f9
    ld [$01f2], sp                                ; $6a44: $08 $f2 $01
    db $ed                                        ; $6a47: $ed
    ei                                            ; $6a48: $fb
    db $ed                                        ; $6a49: $ed
    rst $38                                       ; $6a4a: $ff
    db $fd                                        ; $6a4b: $fd
    ei                                            ; $6a4c: $fb
    db $fd                                        ; $6a4d: $fd
    cp $02                                        ; $6a4e: $fe $02
    rrca                                          ; $6a50: $0f
    sbc [hl]                                      ; $6a51: $9e
    ld [de], a                                    ; $6a52: $12
    db $10                                        ; $6a53: $10
    inc l                                         ; $6a54: $2c
    inc h                                         ; $6a55: $24
    scf                                           ; $6a56: $37
    daa                                           ; $6a57: $27
    scf                                           ; $6a58: $37
    inc [hl]                                      ; $6a59: $34
    ccf                                           ; $6a5a: $3f
    add hl, sp                                    ; $6a5b: $39
    rra                                           ; $6a5c: $1f
    db $10                                        ; $6a5d: $10
    rra                                           ; $6a5e: $1f
    jr @+$81                                      ; $6a5f: $18 $7f

    ld a, b                                       ; $6a61: $78
    ld e, a                                       ; $6a62: $5f
    ld a, h                                       ; $6a63: $7c
    scf                                           ; $6a64: $37
    ccf                                           ; $6a65: $3f
    dec h                                         ; $6a66: $25
    dec a                                         ; $6a67: $3d
    daa                                           ; $6a68: $27
    dec sp                                        ; $6a69: $3b
    halt                                          ; $6a6a: $76
    ld a, e                                       ; $6a6b: $7b
    ld [hl], e                                    ; $6a6c: $73
    ld a, a                                       ; $6a6d: $7f
    rst $38                                       ; $6a6e: $ff
    db $fd                                        ; $6a6f: $fd
    ld [bc], a                                    ; $6a70: $02
    ld [$0602], sp                                ; $6a71: $08 $02 $06
    ld [bc], a                                    ; $6a74: $02
    dec c                                         ; $6a75: $0d
    adc d                                         ; $6a76: $8a
    ld c, $06                                     ; $6a77: $0e $06
    ld c, $0a                                     ; $6a79: $0e $0a
    ld b, $02                                     ; $6a7b: $06 $02
    rrca                                          ; $6a7d: $0f
    ld bc, $020e                                  ; $6a7e: $01 $0e $02
    ld [bc], a                                    ; $6a81: $02
    ld c, $82                                     ; $6a82: $0e $82
    inc c                                         ; $6a84: $0c
    inc b                                         ; $6a85: $04
    inc b                                         ; $6a86: $04
    ld [$0484], sp                                ; $6a87: $08 $84 $04
    inc c                                         ; $6a8a: $0c
    inc b                                         ; $6a8b: $04
    inc c                                         ; $6a8c: $0c
    inc b                                         ; $6a8d: $04
    ld [$ff88], sp                                ; $6a8e: $08 $88 $ff
    ld sp, hl                                     ; $6a91: $f9
    cp $ff                                        ; $6a92: $fe $ff
    cp l                                          ; $6a94: $bd
    rst $38                                       ; $6a95: $ff
    cp [hl]                                       ; $6a96: $be
    rst $38                                       ; $6a97: $ff
    ld [bc], a                                    ; $6a98: $02
    ld a, a                                       ; $6a99: $7f
    ld d, $00                                     ; $6a9a: $16 $00
    ld [bc], a                                    ; $6a9c: $02
    inc b                                         ; $6a9d: $04
    inc b                                         ; $6a9e: $04
    ld b, $81                                     ; $6a9f: $06 $81
    ld bc, $0703                                  ; $6aa1: $01 $03 $07
    ld d, $00                                     ; $6aa4: $16 $00
    rst $38                                       ; $6aa6: $ff
    rlca                                          ; $6aa7: $07
    ld bc, $08f9                                  ; $6aa8: $01 $f9 $08
    ld a, [c]                                     ; $6aab: $f2
    ld bc, $feee                                  ; $6aac: $01 $ee $fe
    adc d                                         ; $6aaf: $8a
    nop                                           ; $6ab0: $00
    ld l, h                                       ; $6ab1: $6c
    nop                                           ; $6ab2: $00
    sbc c                                         ; $6ab3: $99
    nop                                           ; $6ab4: $00
    ld b, b                                       ; $6ab5: $40
    nop                                           ; $6ab6: $00
    ld b, b                                       ; $6ab7: $40
    nop                                           ; $6ab8: $00
    inc b                                         ; $6ab9: $04
    ld a, [bc]                                    ; $6aba: $0a
    nop                                           ; $6abb: $00
    add c                                         ; $6abc: $81
    db $10                                        ; $6abd: $10
    dec bc                                        ; $6abe: $0b
    nop                                           ; $6abf: $00
    rst $38                                       ; $6ac0: $ff
    dec c                                         ; $6ac1: $0d
    inc b                                         ; $6ac2: $04
    ld sp, hl                                     ; $6ac3: $f9
    ld [$01f2], sp                                ; $6ac4: $08 $f2 $01
    db $ec                                        ; $6ac7: $ec
    db $fc                                        ; $6ac8: $fc
    db $ed                                        ; $6ac9: $ed
    rst $38                                       ; $6aca: $ff
    db $fc                                        ; $6acb: $fc
    ei                                            ; $6acc: $fb
    db $fc                                        ; $6acd: $fc
    db $fc                                        ; $6ace: $fc
    ld [bc], a                                    ; $6acf: $02
    rra                                           ; $6ad0: $1f
    sbc [hl]                                      ; $6ad1: $9e
    inc h                                         ; $6ad2: $24
    jr nz, jr_0df_6b2e                            ; $6ad3: $20 $59

    ld c, c                                       ; $6ad5: $49
    ld l, a                                       ; $6ad6: $6f
    ld c, [hl]                                    ; $6ad7: $4e
    ld l, a                                       ; $6ad8: $6f
    ld l, c                                       ; $6ad9: $69
    ld a, [hl]                                    ; $6ada: $7e
    ld [hl], d                                    ; $6adb: $72
    ccf                                           ; $6adc: $3f
    jr nz, jr_0df_6b1e                            ; $6add: $20 $3f

    jr nc, @+$21                                  ; $6adf: $30 $1f

    ld de, $787f                                  ; $6ae1: $11 $7f $78
    xor a                                         ; $6ae4: $af
    rst $38                                       ; $6ae5: $ff
    set 7, e                                      ; $6ae6: $cb $fb
    ld c, [hl]                                    ; $6ae8: $4e
    ld [hl], a                                    ; $6ae9: $77
    ld l, h                                       ; $6aea: $6c
    ld [hl], a                                    ; $6aeb: $77
    ld h, a                                       ; $6aec: $67
    ld a, a                                       ; $6aed: $7f
    rst $38                                       ; $6aee: $ff
    ei                                            ; $6aef: $fb
    ld [bc], a                                    ; $6af0: $02
    ld b, $02                                     ; $6af1: $06 $02
    dec b                                         ; $6af3: $05
    inc bc                                        ; $6af4: $03
    ld b, $87                                     ; $6af5: $06 $87
    ld [bc], a                                    ; $6af7: $02
    ld b, $02                                     ; $6af8: $06 $02
    rlca                                          ; $6afa: $07
    ld bc, $0206                                  ; $6afb: $01 $06 $02
    ld [bc], a                                    ; $6afe: $02
    ld b, $02                                     ; $6aff: $06 $02
    inc b                                         ; $6b01: $04
    inc b                                         ; $6b02: $04
    nop                                           ; $6b03: $00
    inc b                                         ; $6b04: $04
    inc b                                         ; $6b05: $04
    inc b                                         ; $6b06: $04
    nop                                           ; $6b07: $00
    add d                                         ; $6b08: $82
    ld hl, sp-$68                                 ; $6b09: $f8 $98
    ld [bc], a                                    ; $6b0b: $02
    ld [hl], b                                    ; $6b0c: $70
    ld [bc], a                                    ; $6b0d: $02
    rst $38                                       ; $6b0e: $ff
    add [hl]                                      ; $6b0f: $86
    cp d                                          ; $6b10: $ba
    rst $38                                       ; $6b11: $ff
    cp a                                          ; $6b12: $bf
    rst $38                                       ; $6b13: $ff
    ld a, b                                       ; $6b14: $78
    ld a, a                                       ; $6b15: $7f
    ld [bc], a                                    ; $6b16: $02
    ccf                                           ; $6b17: $3f
    ld d, $00                                     ; $6b18: $16 $00
    ld a, [bc]                                    ; $6b1a: $0a
    ld bc, $0014                                  ; $6b1b: $01 $14 $00

jr_0df_6b1e:
    rst $38                                       ; $6b1e: $ff
    rlca                                          ; $6b1f: $07
    ld bc, $08f9                                  ; $6b20: $01 $f9 $08
    ld a, [c]                                     ; $6b23: $f2
    ld bc, $feed                                  ; $6b24: $01 $ed $fe
    adc d                                         ; $6b27: $8a
    nop                                           ; $6b28: $00
    ld l, h                                       ; $6b29: $6c
    nop                                           ; $6b2a: $00
    sbc c                                         ; $6b2b: $99
    nop                                           ; $6b2c: $00
    ld b, b                                       ; $6b2d: $40

jr_0df_6b2e:
    nop                                           ; $6b2e: $00
    ld b, b                                       ; $6b2f: $40
    nop                                           ; $6b30: $00
    inc b                                         ; $6b31: $04
    ld a, [bc]                                    ; $6b32: $0a
    nop                                           ; $6b33: $00
    add c                                         ; $6b34: $81
    db $10                                        ; $6b35: $10
    dec bc                                        ; $6b36: $0b
    nop                                           ; $6b37: $00
    rst $38                                       ; $6b38: $ff

    db $07, $01, $fe

    inc bc                                        ; $6b3c: $03
    ld a, [c]                                     ; $6b3d: $f2
    nop                                           ; $6b3e: $00

    db $f2, $fc, $02, $10, $02, $18, $9a, $08, $18, $00, $10, $02, $12, $04, $06, $00
    db $04, $00, $08, $00, $02, $00, $0e, $04, $1a, $0c, $33, $1e, $21, $1e, $21, $0c
    db $12, $02, $00, $ff, $07, $01, $fe

    inc bc                                        ; $6b66: $03
    ld a, [c]                                     ; $6b67: $f2
    nop                                           ; $6b68: $00

    db $f1, $fd, $02, $20, $04, $60, $02, $24, $02, $08, $03, $00, $93, $04, $00, $0c
    db $00, $1c, $08, $34, $18, $66, $3c, $c3, $7e, $81, $7e, $81, $3c, $42, $18, $24
    db $ff, $07, $01, $fe

    inc bc                                        ; $6b8d: $03
    ld a, [c]                                     ; $6b8e: $f2
    nop                                           ; $6b8f: $00

    db $f1, $fb, $02, $08, $02, $10, $02, $01, $02, $00, $02, $02, $88, $01, $03, $00
    db $03, $00, $02, $00, $02, $09, $00, $02, $06, $83, $09, $00, $06, $ff, $07, $01
    db $fe

    inc bc                                        ; $6bb1: $03
    ld a, [c]                                     ; $6bb2: $f2
    nop                                           ; $6bb3: $00

    db $f3, $fc, $04, $08, $86, $04, $0c, $00, $0c, $00, $04, $0b, $00, $87, $1e, $0c
    db $33, $1e, $21, $0c, $12, $04, $00, $ff, $07, $01, $fe

    inc bc                                        ; $6bcf: $03
    ld a, [c]                                     ; $6bd0: $f2
    nop                                           ; $6bd1: $00

    db $f2, $fc, $02, $08, $02, $18, $84, $10, $18, $00, $08, $07, $00, $8f, $10, $00
    db $30, $00, $38, $10, $6e, $1c, $63, $1e, $21, $1e, $21, $0c, $12, $02, $00, $ff
    db $07, $01, $fe

    inc bc                                        ; $6bf5: $03
    ld a, [c]                                     ; $6bf6: $f2
    nop                                           ; $6bf7: $00

    db $f1, $fd, $04, $10, $04, $00, $02, $10, $96, $20, $30, $40, $70, $00, $72, $00
    db $e6, $40, $be, $78, $86, $3c, $c3, $7e, $81, $7e, $81, $3c, $42, $18, $24, $ff
    db $07, $01, $fe

    inc bc                                        ; $6c1b: $03
    ld a, [c]                                     ; $6c1c: $f2
    nop                                           ; $6c1d: $00

    db $f1, $fc, $02, $08, $04, $00, $02, $08, $98, $04, $0c, $10, $1c, $01, $1d, $02
    db $1b, $02, $23, $04, $07, $00, $06, $04, $1a, $0c, $33, $1e, $21, $1e, $21, $0c
    db $12, $ff, $07, $01, $fe

    inc bc                                        ; $6c43: $03
    ld a, [c]                                     ; $6c44: $f2
    nop                                           ; $6c45: $00

    db $f3, $fc, $02, $08, $8e, $04, $0c, $04, $0c, $01, $19, $01, $11, $02, $03, $00
    db $03, $00, $06, $07, $00, $85, $1e, $0c, $33, $0c, $12, $04, $00, $ff

    dec c                                         ; $6c64: $0d
    inc b                                         ; $6c65: $04
    ld sp, hl                                     ; $6c66: $f9
    ld [$01f2], sp                                ; $6c67: $08 $f2 $01
    db $eb                                        ; $6c6a: $eb
    ei                                            ; $6c6b: $fb
    db $ec                                        ; $6c6c: $ec
    nop                                           ; $6c6d: $00
    ei                                            ; $6c6e: $fb
    ld a, [$00fb]                                 ; $6c6f: $fa $fb $00
    ld [bc], a                                    ; $6c72: $02
    ld bc, $028b                                  ; $6c73: $01 $8b $02
    inc bc                                        ; $6c76: $03
    inc b                                         ; $6c77: $04
    rlca                                          ; $6c78: $07
    ld [$100f], sp                                ; $6c79: $08 $0f $10
    rra                                           ; $6c7c: $1f
    jr nz, jr_0df_6cbe                            ; $6c7d: $20 $3f

    ld d, e                                       ; $6c7f: $53
    ld [bc], a                                    ; $6c80: $02
    ld a, a                                       ; $6c81: $7f
    sub c                                         ; $6c82: $91
    ld l, h                                       ; $6c83: $6c
    rst $38                                       ; $6c84: $ff
    db $db                                        ; $6c85: $db
    rst $38                                       ; $6c86: $ff
    call nz, Call_0df_487f                        ; $6c87: $c4 $7f $48
    ld a, a                                       ; $6c8a: $7f
    ld b, l                                       ; $6c8b: $45
    cp a                                          ; $6c8c: $bf
    xor $ff                                       ; $6c8d: $ee $ff
    pop af                                        ; $6c8f: $f1
    ld a, a                                       ; $6c90: $7f
    ld a, [hl]                                    ; $6c91: $7e

jr_0df_6c92:
    cpl                                           ; $6c92: $2f
    add hl, sp                                    ; $6c93: $39
    inc b                                         ; $6c94: $04
    db $10                                        ; $6c95: $10
    adc c                                         ; $6c96: $89
    ld [$0818], sp                                ; $6c97: $08 $18 $08
    jr @+$06                                      ; $6c9a: $18 $04

    inc e                                         ; $6c9c: $1c
    inc b                                         ; $6c9d: $04
    inc e                                         ; $6c9e: $1c
    ld d, $02                                     ; $6c9f: $16 $02
    ld e, $9f                                     ; $6ca1: $1e $9f
    ld c, $1b                                     ; $6ca3: $0e $1b
    rrca                                          ; $6ca5: $0f
    ld e, $0e                                     ; $6ca6: $1e $0e
    ld e, $0e                                     ; $6ca8: $1e $0e
    ld a, [de]                                    ; $6caa: $1a
    ld e, $1d                                     ; $6cab: $1e $1d
    rra                                           ; $6cad: $1f
    rla                                           ; $6cae: $17
    rra                                           ; $6caf: $1f
    ld c, $1e                                     ; $6cb0: $0e $1e
    sub $fe                                       ; $6cb2: $d6 $fe
    jr z, jr_0df_6cf2                             ; $6cb4: $28 $3c

    ld b, h                                       ; $6cb6: $44
    ld a, a                                       ; $6cb7: $7f
    ld d, e                                       ; $6cb8: $53
    ld a, a                                       ; $6cb9: $7f
    ld h, d                                       ; $6cba: $62
    ld a, a                                       ; $6cbb: $7f
    or b                                          ; $6cbc: $b0
    rst $38                                       ; $6cbd: $ff

jr_0df_6cbe:
    sbc [hl]                                      ; $6cbe: $9e
    rst $38                                       ; $6cbf: $ff
    cp d                                          ; $6cc0: $ba
    rst $38                                       ; $6cc1: $ff
    inc d                                         ; $6cc2: $14
    nop                                           ; $6cc3: $00
    add a                                         ; $6cc4: $87
    ld [hl+], a                                   ; $6cc5: $22
    ld a, $0a                                     ; $6cc6: $3e $0a
    ld a, $09                                     ; $6cc8: $3e $09
    ccf                                           ; $6cca: $3f
    dec c                                         ; $6ccb: $0d
    inc bc                                        ; $6ccc: $03
    ccf                                           ; $6ccd: $3f
    add d                                         ; $6cce: $82
    add hl, de                                    ; $6ccf: $19
    ccf                                           ; $6cd0: $3f
    ld [de], a                                    ; $6cd1: $12
    nop                                           ; $6cd2: $00
    rst $38                                       ; $6cd3: $ff
    dec c                                         ; $6cd4: $0d
    inc b                                         ; $6cd5: $04
    ld sp, hl                                     ; $6cd6: $f9
    ld [$01f2], sp                                ; $6cd7: $08 $f2 $01
    db $ec                                        ; $6cda: $ec
    ei                                            ; $6cdb: $fb
    db $eb                                        ; $6cdc: $eb
    nop                                           ; $6cdd: $00
    ei                                            ; $6cde: $fb
    ld hl, sp-$05                                 ; $6cdf: $f8 $fb
    nop                                           ; $6ce1: $00
    ld [bc], a                                    ; $6ce2: $02
    inc bc                                        ; $6ce3: $03
    add a                                         ; $6ce4: $87
    inc c                                         ; $6ce5: $0c
    rrca                                          ; $6ce6: $0f
    db $10                                        ; $6ce7: $10
    rra                                           ; $6ce8: $1f
    jr nz, @+$41                                  ; $6ce9: $20 $3f

    ld d, e                                       ; $6ceb: $53
    ld [bc], a                                    ; $6cec: $02
    ld a, a                                       ; $6ced: $7f
    sub l                                         ; $6cee: $95
    ld l, h                                       ; $6cef: $6c
    db $e4                                        ; $6cf0: $e4
    rst $18                                       ; $6cf1: $df

jr_0df_6cf2:
    rst $38                                       ; $6cf2: $ff
    ret z                                         ; $6cf3: $c8

    rst $38                                       ; $6cf4: $ff
    call nz, Call_0df_4e77                        ; $6cf5: $c4 $77 $4e
    cp a                                          ; $6cf8: $bf
    xor $ff                                       ; $6cf9: $ee $ff
    pop af                                        ; $6cfb: $f1
    rst $38                                       ; $6cfc: $ff
    cp $7f                                        ; $6cfd: $fe $7f
    ld a, b                                       ; $6cff: $78
    cpl                                           ; $6d00: $2f
    add hl, sp                                    ; $6d01: $39
    ld d, [hl]                                    ; $6d02: $56
    ld a, a                                       ; $6d03: $7f
    ld [bc], a                                    ; $6d04: $02
    jr jr_0df_6c92                                ; $6d05: $18 $8b

    ld [$0418], sp                                ; $6d07: $08 $18 $04
    inc e                                         ; $6d0a: $1c
    inc b                                         ; $6d0b: $04
    inc e                                         ; $6d0c: $1c
    inc b                                         ; $6d0d: $04
    inc e                                         ; $6d0e: $1c
    inc b                                         ; $6d0f: $04
    inc e                                         ; $6d10: $1c
    ld d, $02                                     ; $6d11: $16 $02
    ld e, $91                                     ; $6d13: $1e $91
    ld c, $1a                                     ; $6d15: $0e $1a
    ld c, $1d                                     ; $6d17: $0e $1d
    rrca                                          ; $6d19: $0f
    ld e, $0e                                     ; $6d1a: $1e $0e
    ld a, [de]                                    ; $6d1c: $1a
    ld e, $1d                                     ; $6d1d: $1e $1d
    rra                                           ; $6d1f: $1f
    dec e                                         ; $6d20: $1d
    rra                                           ; $6d21: $1f

jr_0df_6d22:
    ld d, $1e                                     ; $6d22: $16 $1e
    ld c, $1e                                     ; $6d24: $0e $1e
    ld [bc], a                                    ; $6d26: $02
    nop                                           ; $6d27: $00
    adc h                                         ; $6d28: $8c
    ld de, $271f                                  ; $6d29: $11 $1f $27
    ccf                                           ; $6d2c: $3f
    ld a, a                                       ; $6d2d: $7f
    ld a, h                                       ; $6d2e: $7c
    ld c, a                                       ; $6d2f: $4f
    ld a, b                                       ; $6d30: $78
    sbc a                                         ; $6d31: $9f
    rst $38                                       ; $6d32: $ff
    jp c, Jump_000_12ff                           ; $6d33: $da $ff $12

    nop                                           ; $6d36: $00
    adc [hl]                                      ; $6d37: $8e
    ld d, $1e                                     ; $6d38: $16 $1e
    ld [hl+], a                                   ; $6d3a: $22
    cp $ca                                        ; $6d3b: $fe $ca
    cp $c9                                        ; $6d3d: $fe $c9
    ld a, a                                       ; $6d3f: $7f
    adc l                                         ; $6d40: $8d
    rst $38                                       ; $6d41: $ff
    cp a                                          ; $6d42: $bf
    rst $38                                       ; $6d43: $ff
    sbc c                                         ; $6d44: $99
    rst $38                                       ; $6d45: $ff
    ld [de], a                                    ; $6d46: $12
    nop                                           ; $6d47: $00
    rst $38                                       ; $6d48: $ff
    dec c                                         ; $6d49: $0d
    inc b                                         ; $6d4a: $04
    ld sp, hl                                     ; $6d4b: $f9
    ld [$01f2], sp                                ; $6d4c: $08 $f2 $01
    db $ec                                        ; $6d4f: $ec
    ld a, [$00ed]                                 ; $6d50: $fa $ed $00
    db $fc                                        ; $6d53: $fc
    ld hl, sp-$04                                 ; $6d54: $f8 $fc
    nop                                           ; $6d56: $00
    ld [bc], a                                    ; $6d57: $02
    ld bc, $028d                                  ; $6d58: $01 $8d $02
    inc bc                                        ; $6d5b: $03
    inc b                                         ; $6d5c: $04
    rlca                                          ; $6d5d: $07
    ld [$080f], sp                                ; $6d5e: $08 $0f $08
    rrca                                          ; $6d61: $0f
    db $10                                        ; $6d62: $10
    rra                                           ; $6d63: $1f
    jr nc, jr_0df_6da5                            ; $6d64: $30 $3f

    ld l, c                                       ; $6d66: $69
    ld [bc], a                                    ; $6d67: $02
    ld a, a                                       ; $6d68: $7f
    adc a                                         ; $6d69: $8f
    halt                                          ; $6d6a: $76
    ld [hl], d                                    ; $6d6b: $72
    ld l, l                                       ; $6d6c: $6d
    ccf                                           ; $6d6d: $3f
    ld h, $7f                                     ; $6d6e: $26 $7f
    ld l, c                                       ; $6d70: $69
    ld a, a                                       ; $6d71: $7f
    ld [hl], c                                    ; $6d72: $71
    ccf                                           ; $6d73: $3f
    daa                                           ; $6d74: $27
    ld e, a                                       ; $6d75: $5f
    ld a, a                                       ; $6d76: $7f
    sbc a                                         ; $6d77: $9f
    rst $38                                       ; $6d78: $ff
    ld [bc], a                                    ; $6d79: $02
    jr nz, jr_0df_6d22                            ; $6d7a: $20 $a6

    db $10                                        ; $6d7c: $10
    jr nc, jr_0df_6d8f                            ; $6d7d: $30 $10

    jr nc, jr_0df_6d89                            ; $6d7f: $30 $08

    jr c, jr_0df_6d8b                             ; $6d81: $38 $08

    jr c, jr_0df_6d91                             ; $6d83: $38 $0c

    inc a                                         ; $6d85: $3c
    ld h, $3e                                     ; $6d86: $26 $3e

jr_0df_6d88:
    scf                                           ; $6d88: $37

jr_0df_6d89:
    rra                                           ; $6d89: $1f
    add hl, de                                    ; $6d8a: $19

jr_0df_6d8b:
    cpl                                           ; $6d8b: $2f
    ld a, $0e                                     ; $6d8c: $3e $0e
    dec sp                                        ; $6d8e: $3b

jr_0df_6d8f:
    rrca                                          ; $6d8f: $0f
    dec a                                         ; $6d90: $3d

jr_0df_6d91:
    cpl                                           ; $6d91: $2f
    ccf                                           ; $6d92: $3f
    rra                                           ; $6d93: $1f
    cpl                                           ; $6d94: $2f
    ccf                                           ; $6d95: $3f
    ld d, $3e                                     ; $6d96: $16 $3e
    ld [hl+], a                                   ; $6d98: $22
    cp $43                                        ; $6d99: $fe $43
    ld a, a                                       ; $6d9b: $7f
    ld b, [hl]                                    ; $6d9c: $46
    ld a, a                                       ; $6d9d: $7f
    adc h                                         ; $6d9e: $8c
    rst $38                                       ; $6d9f: $ff
    cp h                                          ; $6da0: $bc
    rst $38                                       ; $6da1: $ff
    ld [bc], a                                    ; $6da2: $02
    ld a, a                                       ; $6da3: $7f
    add d                                         ; $6da4: $82

jr_0df_6da5:
    ld c, $0f                                     ; $6da5: $0e $0f
    ld d, $00                                     ; $6da7: $16 $00
    adc d                                         ; $6da9: $8a
    jp z, $89fe                                   ; $6daa: $ca $fe $89

    rst $38                                       ; $6dad: $ff
    dec c                                         ; $6dae: $0d
    rst $38                                       ; $6daf: $ff
    cp a                                          ; $6db0: $bf
    rst $38                                       ; $6db1: $ff
    sbc c                                         ; $6db2: $99
    rst $38                                       ; $6db3: $ff
    inc d                                         ; $6db4: $14
    nop                                           ; $6db5: $00
    rst $38                                       ; $6db6: $ff
    dec c                                         ; $6db7: $0d
    inc b                                         ; $6db8: $04
    ld sp, hl                                     ; $6db9: $f9
    ld [$01f2], sp                                ; $6dba: $08 $f2 $01
    db $ed                                        ; $6dbd: $ed
    ld a, [$00ec]                                 ; $6dbe: $fa $ec $00
    db $fc                                        ; $6dc1: $fc
    ld hl, sp-$04                                 ; $6dc2: $f8 $fc
    nop                                           ; $6dc4: $00
    ld [bc], a                                    ; $6dc5: $02
    ld bc, $0289                                  ; $6dc6: $01 $89 $02
    inc bc                                        ; $6dc9: $03
    inc b                                         ; $6dca: $04
    rlca                                          ; $6dcb: $07
    ld [$100f], sp                                ; $6dcc: $08 $0f $10
    rra                                           ; $6dcf: $1f
    add hl, hl                                    ; $6dd0: $29
    ld [bc], a                                    ; $6dd1: $02
    ccf                                           ; $6dd2: $3f
    sub e                                         ; $6dd3: $93
    ld [hl], $7f                                  ; $6dd4: $36 $7f
    ld l, l                                       ; $6dd6: $6d
    ld a, a                                       ; $6dd7: $7f
    ld h, d                                       ; $6dd8: $62
    ccf                                           ; $6dd9: $3f
    dec h                                         ; $6dda: $25
    ccf                                           ; $6ddb: $3f
    ld h, $5f                                     ; $6ddc: $26 $5f
    ld a, b                                       ; $6dde: $78
    ld a, a                                       ; $6ddf: $7f
    ld [hl], e                                    ; $6de0: $73
    ld e, a                                       ; $6de1: $5f
    ld a, a                                       ; $6de2: $7f
    adc a                                         ; $6de3: $8f
    rst $38                                       ; $6de4: $ff
    add [hl]                                      ; $6de5: $86
    rst $38                                       ; $6de6: $ff
    ld [bc], a                                    ; $6de7: $02
    jr nz, jr_0df_6d88                            ; $6de8: $20 $9e

    db $10                                        ; $6dea: $10
    jr nc, @+$12                                  ; $6deb: $30 $10

    jr nc, @+$0a                                  ; $6ded: $30 $08

    jr c, @+$0a                                   ; $6def: $38 $08

    jr c, @+$06                                   ; $6df1: $38 $04

    inc a                                         ; $6df3: $3c
    inc h                                         ; $6df4: $24
    inc a                                         ; $6df5: $3c
    ld [hl], $1e                                  ; $6df6: $36 $1e
    ld a, $2e                                     ; $6df8: $3e $2e
    dec sp                                        ; $6dfa: $3b
    rrca                                          ; $6dfb: $0f
    ld a, $2e                                     ; $6dfc: $3e $2e
    ld a, $1e                                     ; $6dfe: $3e $1e
    dec sp                                        ; $6e00: $3b
    ccf                                           ; $6e01: $3f
    dec a                                         ; $6e02: $3d
    ccf                                           ; $6e03: $3f
    cpl                                           ; $6e04: $2f
    ccf                                           ; $6e05: $3f
    ld d, $3e                                     ; $6e06: $16 $3e
    ld [bc], a                                    ; $6e08: $02
    ld b, b                                       ; $6e09: $40
    add [hl]                                      ; $6e0a: $86
    ld b, a                                       ; $6e0b: $47
    ld a, a                                       ; $6e0c: $7f
    sbc [hl]                                      ; $6e0d: $9e
    rst $38                                       ; $6e0e: $ff
    db $fc                                        ; $6e0f: $fc
    rst $38                                       ; $6e10: $ff
    ld [bc], a                                    ; $6e11: $02
    ld a, a                                       ; $6e12: $7f
    add d                                         ; $6e13: $82
    ld c, $0f                                     ; $6e14: $0e $0f
    inc d                                         ; $6e16: $14
    nop                                           ; $6e17: $00
    adc h                                         ; $6e18: $8c
    ld [hl+], a                                   ; $6e19: $22
    ld a, $ca                                     ; $6e1a: $3e $ca
    cp $89                                        ; $6e1c: $fe $89
    rst $38                                       ; $6e1e: $ff
    dec c                                         ; $6e1f: $0d
    rst $38                                       ; $6e20: $ff
    cp a                                          ; $6e21: $bf
    rst $38                                       ; $6e22: $ff
    sbc c                                         ; $6e23: $99
    rst $38                                       ; $6e24: $ff
    inc d                                         ; $6e25: $14
    nop                                           ; $6e26: $00
    rst $38                                       ; $6e27: $ff
    dec c                                         ; $6e28: $0d
    inc b                                         ; $6e29: $04
    ld sp, hl                                     ; $6e2a: $f9
    ld [$01f2], sp                                ; $6e2b: $08 $f2 $01
    db $eb                                        ; $6e2e: $eb
    ei                                            ; $6e2f: $fb
    db $ec                                        ; $6e30: $ec
    nop                                           ; $6e31: $00
    ei                                            ; $6e32: $fb
    ld hl, sp-$05                                 ; $6e33: $f8 $fb
    nop                                           ; $6e35: $00
    ld [bc], a                                    ; $6e36: $02
    ld bc, $028b                                  ; $6e37: $01 $8b $02
    inc bc                                        ; $6e3a: $03
    inc b                                         ; $6e3b: $04
    rlca                                          ; $6e3c: $07
    ld [$100f], sp                                ; $6e3d: $08 $0f $10
    rra                                           ; $6e40: $1f
    jr nz, jr_0df_6e82                            ; $6e41: $20 $3f

    ld d, e                                       ; $6e43: $53
    ld [bc], a                                    ; $6e44: $02
    ld a, a                                       ; $6e45: $7f
    sub c                                         ; $6e46: $91
    ld l, h                                       ; $6e47: $6c
    rst $38                                       ; $6e48: $ff
    db $db                                        ; $6e49: $db
    rst $38                                       ; $6e4a: $ff
    call nz, Call_0df_487f                        ; $6e4b: $c4 $7f $48
    ld a, a                                       ; $6e4e: $7f
    ld b, l                                       ; $6e4f: $45
    cp a                                          ; $6e50: $bf
    xor $ff                                       ; $6e51: $ee $ff
    pop af                                        ; $6e53: $f1
    ld a, a                                       ; $6e54: $7f
    ld a, [hl]                                    ; $6e55: $7e
    cpl                                           ; $6e56: $2f

jr_0df_6e57:
    add hl, sp                                    ; $6e57: $39
    inc b                                         ; $6e58: $04
    db $10                                        ; $6e59: $10
    adc c                                         ; $6e5a: $89
    ld [$0818], sp                                ; $6e5b: $08 $18 $08
    jr @+$06                                      ; $6e5e: $18 $04

    inc e                                         ; $6e60: $1c
    inc b                                         ; $6e61: $04
    inc e                                         ; $6e62: $1c
    ld d, $02                                     ; $6e63: $16 $02
    ld e, $9f                                     ; $6e65: $1e $9f
    ld c, $1b                                     ; $6e67: $0e $1b
    rrca                                          ; $6e69: $0f
    ld e, $0e                                     ; $6e6a: $1e $0e
    ld e, $0e                                     ; $6e6c: $1e $0e
    ld a, [de]                                    ; $6e6e: $1a
    ld e, $1d                                     ; $6e6f: $1e $1d
    rra                                           ; $6e71: $1f
    rla                                           ; $6e72: $17
    rra                                           ; $6e73: $1f
    ld c, $1e                                     ; $6e74: $0e $1e
    sub $fe                                       ; $6e76: $d6 $fe
    ld a, [bc]                                    ; $6e78: $0a

jr_0df_6e79:
    rrca                                          ; $6e79: $0f
    ld de, $271f                                  ; $6e7a: $11 $1f $27
    ccf                                           ; $6e7d: $3f
    ld a, a                                       ; $6e7e: $7f
    ld a, h                                       ; $6e7f: $7c
    ld c, a                                       ; $6e80: $4f
    ld a, b                                       ; $6e81: $78

jr_0df_6e82:
    sbc a                                         ; $6e82: $9f
    rst $38                                       ; $6e83: $ff
    jp c, Jump_000_14ff                           ; $6e84: $da $ff $14

    nop                                           ; $6e87: $00
    adc h                                         ; $6e88: $8c
    ld [hl+], a                                   ; $6e89: $22
    cp $ca                                        ; $6e8a: $fe $ca
    cp $c9                                        ; $6e8c: $fe $c9
    ld a, a                                       ; $6e8e: $7f
    adc l                                         ; $6e8f: $8d
    rst $38                                       ; $6e90: $ff
    cp a                                          ; $6e91: $bf
    rst $38                                       ; $6e92: $ff
    sbc c                                         ; $6e93: $99
    rst $38                                       ; $6e94: $ff
    ld [de], a                                    ; $6e95: $12
    nop                                           ; $6e96: $00
    rst $38                                       ; $6e97: $ff
    dec c                                         ; $6e98: $0d
    inc b                                         ; $6e99: $04
    ld sp, hl                                     ; $6e9a: $f9
    ld [$00f1], sp                                ; $6e9b: $08 $f1 $00
    jp hl                                         ; $6e9e: $e9


    ld a, [$ffec]                                 ; $6e9f: $fa $ec $ff
    ld sp, hl                                     ; $6ea2: $f9
    ld a, [$00f9]                                 ; $6ea3: $fa $f9 $00
    ld [bc], a                                    ; $6ea6: $02
    ld [bc], a                                    ; $6ea7: $02
    adc l                                         ; $6ea8: $8d
    dec b                                         ; $6ea9: $05
    rlca                                          ; $6eaa: $07
    add hl, bc                                    ; $6eab: $09
    rrca                                          ; $6eac: $0f
    db $10                                        ; $6ead: $10
    rra                                           ; $6eae: $1f
    db $10                                        ; $6eaf: $10
    rra                                           ; $6eb0: $1f
    inc h                                         ; $6eb1: $24
    ccf                                           ; $6eb2: $3f
    inc h                                         ; $6eb3: $24
    ccf                                           ; $6eb4: $3f
    ld c, d                                       ; $6eb5: $4a
    ld [bc], a                                    ; $6eb6: $02
    ld a, a                                       ; $6eb7: $7f
    adc d                                         ; $6eb8: $8a
    ld h, h                                       ; $6eb9: $64
    and h                                         ; $6eba: $a4
    ei                                            ; $6ebb: $fb
    cp a                                          ; $6ebc: $bf
    db $db                                        ; $6ebd: $db
    ld a, a                                       ; $6ebe: $7f
    ld b, b                                       ; $6ebf: $40
    ld a, a                                       ; $6ec0: $7f
    ld c, d                                       ; $6ec1: $4a
    dec [hl]                                      ; $6ec2: $35
    ld [bc], a                                    ; $6ec3: $02
    ld l, $83                                     ; $6ec4: $2e $83
    dec sp                                        ; $6ec6: $3b
    ld d, c                                       ; $6ec7: $51
    ld a, a                                       ; $6ec8: $7f
    inc b                                         ; $6ec9: $04
    db $10                                        ; $6eca: $10
    add l                                         ; $6ecb: $85
    ld [$0818], sp                                ; $6ecc: $08 $18 $08
    jr jr_0df_6ed9                                ; $6ecf: $18 $08

    inc bc                                        ; $6ed1: $03
    jr jr_0df_6e57                                ; $6ed2: $18 $83

    inc d                                         ; $6ed4: $14
    inc e                                         ; $6ed5: $1c
    inc d                                         ; $6ed6: $14
    ld [bc], a                                    ; $6ed7: $02
    inc c                                         ; $6ed8: $0c

jr_0df_6ed9:
    add e                                         ; $6ed9: $83
    inc d                                         ; $6eda: $14
    jr @+$0a                                      ; $6edb: $18 $08

    inc b                                         ; $6edd: $04
    db $10                                        ; $6ede: $10
    adc b                                         ; $6edf: $88
    ld [$7418], sp                                ; $6ee0: $08 $18 $74
    call c, $beea                                 ; $6ee3: $dc $ea $be
    pop de                                        ; $6ee6: $d1
    rst $38                                       ; $6ee7: $ff
    ld [bc], a                                    ; $6ee8: $02
    jr z, jr_0df_6e79                             ; $6ee9: $28 $8e

    jr nc, jr_0df_6f25                            ; $6eeb: $30 $38

    ld d, b                                       ; $6eed: $50
    ld a, b                                       ; $6eee: $78
    ld l, c                                       ; $6eef: $69
    ld a, a                                       ; $6ef0: $7f
    and [hl]                                      ; $6ef1: $a6
    rst $38                                       ; $6ef2: $ff
    sub b                                         ; $6ef3: $90
    rst $38                                       ; $6ef4: $ff
    sub b                                         ; $6ef5: $90
    rst $38                                       ; $6ef6: $ff
    or b                                          ; $6ef7: $b0
    rst $38                                       ; $6ef8: $ff
    ld d, $00                                     ; $6ef9: $16 $00
    adc d                                         ; $6efb: $8a
    ld b, $3e                                     ; $6efc: $06 $3e
    ld a, [bc]                                    ; $6efe: $0a
    ld a, $19                                     ; $6eff: $3e $19
    ccf                                           ; $6f01: $3f
    add hl, de                                    ; $6f02: $19
    ccf                                           ; $6f03: $3f
    dec a                                         ; $6f04: $3d
    ccf                                           ; $6f05: $3f
    stop                                          ; $6f06: $10 $00
    rst $38                                       ; $6f08: $ff
    dec c                                         ; $6f09: $0d
    inc b                                         ; $6f0a: $04
    ld sp, hl                                     ; $6f0b: $f9
    ld [$00f1], sp                                ; $6f0c: $08 $f1 $00
    jp hl                                         ; $6f0f: $e9


    ld a, [$fdea]                                 ; $6f10: $fa $ea $fd
    ld sp, hl                                     ; $6f13: $f9
    ld a, [$00f9]                                 ; $6f14: $fa $f9 $00
    ld [bc], a                                    ; $6f17: $02
    ld bc, $028d                                  ; $6f18: $01 $8d $02
    inc bc                                        ; $6f1b: $03
    inc b                                         ; $6f1c: $04
    rlca                                          ; $6f1d: $07
    ld [$100f], sp                                ; $6f1e: $08 $0f $10
    rra                                           ; $6f21: $1f
    inc h                                         ; $6f22: $24
    ccf                                           ; $6f23: $3f
    ld c, b                                       ; $6f24: $48

jr_0df_6f25:
    ld a, a                                       ; $6f25: $7f
    sub h                                         ; $6f26: $94
    ld [bc], a                                    ; $6f27: $02
    rst $38                                       ; $6f28: $ff
    adc a                                         ; $6f29: $8f
    ret                                           ; $6f2a: $c9


    ld c, c                                       ; $6f2b: $49
    ld [hl], a                                    ; $6f2c: $77
    ld a, a                                       ; $6f2d: $7f
    halt                                          ; $6f2e: $76
    ld a, a                                       ; $6f2f: $7f
    ld d, b                                       ; $6f30: $50
    ld a, a                                       ; $6f31: $7f
    ld d, h                                       ; $6f32: $54
    add hl, hl                                    ; $6f33: $29
    ld a, $5d                                     ; $6f34: $3e $5d
    ld [hl], a                                    ; $6f36: $77
    or d                                          ; $6f37: $b2
    rst $38                                       ; $6f38: $ff
    ld b, $04                                     ; $6f39: $06 $04
    sub d                                         ; $6f3b: $92
    ld [bc], a                                    ; $6f3c: $02
    ld b, $02                                     ; $6f3d: $06 $02
    ld b, $02                                     ; $6f3f: $06 $02
    ld b, $01                                     ; $6f41: $06 $01
    rlca                                          ; $6f43: $07
    dec b                                         ; $6f44: $05
    rlca                                          ; $6f45: $07
    inc bc                                        ; $6f46: $03
    rlca                                          ; $6f47: $07
    inc bc                                        ; $6f48: $03
    dec b                                         ; $6f49: $05
    inc bc                                        ; $6f4a: $03
    dec b                                         ; $6f4b: $05
    ld b, $02                                     ; $6f4c: $06 $02
    ld [bc], a                                    ; $6f4e: $02
    inc b                                         ; $6f4f: $04
    ld [bc], a                                    ; $6f50: $02
    nop                                           ; $6f51: $00
    ld [bc], a                                    ; $6f52: $02
    ld b, $82                                     ; $6f53: $06 $82
    cp l                                          ; $6f55: $bd
    rst $28                                       ; $6f56: $ef
    ld [bc], a                                    ; $6f57: $02
    ld b, b                                       ; $6f58: $40
    adc [hl]                                      ; $6f59: $8e
    ccf                                           ; $6f5a: $3f
    dec a                                         ; $6f5b: $3d
    ld d, [hl]                                    ; $6f5c: $56
    ld a, a                                       ; $6f5d: $7f
    ld l, c                                       ; $6f5e: $69
    ld a, a                                       ; $6f5f: $7f
    and [hl]                                      ; $6f60: $a6
    rst $38                                       ; $6f61: $ff
    sub b                                         ; $6f62: $90
    rst $38                                       ; $6f63: $ff
    sub b                                         ; $6f64: $90
    rst $38                                       ; $6f65: $ff
    or b                                          ; $6f66: $b0
    rst $38                                       ; $6f67: $ff
    ld [de], a                                    ; $6f68: $12
    nop                                           ; $6f69: $00
    adc [hl]                                      ; $6f6a: $8e
    inc d                                         ; $6f6b: $14
    inc a                                         ; $6f6c: $3c
    ld [hl+], a                                   ; $6f6d: $22
    ld a, $06                                     ; $6f6e: $3e $06
    ld a, $0a                                     ; $6f70: $3e $0a
    ld a, $19                                     ; $6f72: $3e $19
    ccf                                           ; $6f74: $3f
    add hl, de                                    ; $6f75: $19
    ccf                                           ; $6f76: $3f
    dec a                                         ; $6f77: $3d
    ccf                                           ; $6f78: $3f
    stop                                          ; $6f79: $10 $00
    rst $38                                       ; $6f7b: $ff
    dec c                                         ; $6f7c: $0d
    inc b                                         ; $6f7d: $04
    ld hl, sp+$07                                 ; $6f7e: $f8 $07
    pop af                                        ; $6f80: $f1
    nop                                           ; $6f81: $00
    db $ed                                        ; $6f82: $ed
    ld sp, hl                                     ; $6f83: $f9
    db $ed                                        ; $6f84: $ed
    rst $38                                       ; $6f85: $ff
    db $fd                                        ; $6f86: $fd
    ld sp, hl                                     ; $6f87: $f9
    db $fd                                        ; $6f88: $fd
    nop                                           ; $6f89: $00
    ld [bc], a                                    ; $6f8a: $02
    inc d                                         ; $6f8b: $14
    sbc [hl]                                      ; $6f8c: $9e
    ld l, e                                       ; $6f8d: $6b
    ld a, a                                       ; $6f8e: $7f
    and a                                         ; $6f8f: $a7
    db $fc                                        ; $6f90: $fc
    adc a                                         ; $6f91: $8f
    ld hl, sp+$51                                 ; $6f92: $f8 $51
    ld a, [hl]                                    ; $6f94: $7e
    ld e, a                                       ; $6f95: $5f
    halt                                          ; $6f96: $76
    ccf                                           ; $6f97: $3f
    jr z, jr_0df_6fd9                             ; $6f98: $28 $3f

    ld a, [hl+]                                   ; $6f9a: $2a
    dec e                                         ; $6f9b: $1d
    inc de                                        ; $6f9c: $13
    dec de                                        ; $6f9d: $1b
    ld d, $0b                                     ; $6f9e: $16 $0b
    dec c                                         ; $6fa0: $0d
    dec de                                        ; $6fa1: $1b
    rra                                           ; $6fa2: $1f
    rla                                           ; $6fa3: $17
    ld e, $33                                     ; $6fa4: $1e $33
    ccf                                           ; $6fa6: $3f
    ld a, [hl]                                    ; $6fa7: $7e
    ld a, a                                       ; $6fa8: $7f
    ld e, h                                       ; $6fa9: $5c
    ld a, a                                       ; $6faa: $7f
    ld [bc], a                                    ; $6fab: $02
    ld a, [hl+]                                   ; $6fac: $2a
    and e                                         ; $6fad: $a3
    dec d                                         ; $6fae: $15
    ccf                                           ; $6faf: $3f
    ld [hl+], a                                   ; $6fb0: $22
    ld e, $39                                     ; $6fb1: $1e $39
    rrca                                          ; $6fb3: $0f
    ld b, $3e                                     ; $6fb4: $06 $3e
    inc a                                         ; $6fb6: $3c
    inc [hl]                                      ; $6fb7: $34
    inc a                                         ; $6fb8: $3c
    inc h                                         ; $6fb9: $24
    inc a                                         ; $6fba: $3c
    inc h                                         ; $6fbb: $24
    inc e                                         ; $6fbc: $1c
    inc h                                         ; $6fbd: $24
    inc c                                         ; $6fbe: $0c
    inc [hl]                                      ; $6fbf: $34
    jr z, jr_0df_6fda                             ; $6fc0: $28 $18

    inc l                                         ; $6fc2: $2c
    inc a                                         ; $6fc3: $3c
    inc [hl]                                      ; $6fc4: $34
    inc a                                         ; $6fc5: $3c
    ld b, $3e                                     ; $6fc6: $06 $3e
    dec c                                         ; $6fc8: $0d
    ccf                                           ; $6fc9: $3f
    rra                                           ; $6fca: $1f
    ccf                                           ; $6fcb: $3f
    cp h                                          ; $6fcc: $bc
    rst $38                                       ; $6fcd: $ff
    db $fc                                        ; $6fce: $fc
    rst $38                                       ; $6fcf: $ff
    db $fc                                        ; $6fd0: $fc
    ld [bc], a                                    ; $6fd1: $02
    rst $38                                       ; $6fd2: $ff
    add e                                         ; $6fd3: $83
    sbc a                                         ; $6fd4: $9f
    ld hl, sp-$78                                 ; $6fd5: $f8 $88
    ld [bc], a                                    ; $6fd7: $02
    ld [hl], b                                    ; $6fd8: $70

jr_0df_6fd9:
    inc d                                         ; $6fd9: $14

jr_0df_6fda:
    nop                                           ; $6fda: $00
    adc h                                         ; $6fdb: $8c
    dec [hl]                                      ; $6fdc: $35
    ld a, a                                       ; $6fdd: $7f
    scf                                           ; $6fde: $37
    ld a, a                                       ; $6fdf: $7f
    dec a                                         ; $6fe0: $3d
    ld a, a                                       ; $6fe1: $7f
    ld a, e                                       ; $6fe2: $7b
    ld a, a                                       ; $6fe3: $7f
    ld a, $26                                     ; $6fe4: $3e $26
    ld a, $22                                     ; $6fe6: $3e $22
    ld [bc], a                                    ; $6fe8: $02
    inc e                                         ; $6fe9: $1c
    ld [de], a                                    ; $6fea: $12
    nop                                           ; $6feb: $00
    rst $38                                       ; $6fec: $ff
    dec c                                         ; $6fed: $0d
    inc b                                         ; $6fee: $04
    ld hl, sp+$07                                 ; $6fef: $f8 $07
    pop af                                        ; $6ff1: $f1
    nop                                           ; $6ff2: $00
    db $ed                                        ; $6ff3: $ed
    ld sp, hl                                     ; $6ff4: $f9
    db $ed                                        ; $6ff5: $ed
    rst $38                                       ; $6ff6: $ff
    db $fd                                        ; $6ff7: $fd
    ld sp, hl                                     ; $6ff8: $f9
    db $fd                                        ; $6ff9: $fd
    nop                                           ; $6ffa: $00
    ld [bc], a                                    ; $6ffb: $02
    inc d                                         ; $6ffc: $14
    sbc [hl]                                      ; $6ffd: $9e
    ld l, e                                       ; $6ffe: $6b
    ld a, a                                       ; $6fff: $7f
    and a                                         ; $7000: $a7
    db $fc                                        ; $7001: $fc
    adc a                                         ; $7002: $8f
    ld hl, sp+$51                                 ; $7003: $f8 $51
    ld a, [hl]                                    ; $7005: $7e
    ld e, c                                       ; $7006: $59
    halt                                          ; $7007: $76
    ccf                                           ; $7008: $3f
    jr z, jr_0df_704a                             ; $7009: $28 $3f

    ld a, [hl+]                                   ; $700b: $2a
    dec e                                         ; $700c: $1d
    inc de                                        ; $700d: $13
    dec de                                        ; $700e: $1b
    ld d, $0b                                     ; $700f: $16 $0b
    dec c                                         ; $7011: $0d
    dec de                                        ; $7012: $1b
    rra                                           ; $7013: $1f
    rla                                           ; $7014: $17
    ld e, $33                                     ; $7015: $1e $33
    ccf                                           ; $7017: $3f
    ld a, [hl]                                    ; $7018: $7e
    ld a, a                                       ; $7019: $7f
    ld e, h                                       ; $701a: $5c
    ld a, a                                       ; $701b: $7f
    ld [bc], a                                    ; $701c: $02
    ld a, [hl+]                                   ; $701d: $2a
    and e                                         ; $701e: $a3
    dec d                                         ; $701f: $15
    ccf                                           ; $7020: $3f
    ld [hl+], a                                   ; $7021: $22
    ld e, $39                                     ; $7022: $1e $39
    rrca                                          ; $7024: $0f
    ld b, $3e                                     ; $7025: $06 $3e
    inc l                                         ; $7027: $2c
    inc [hl]                                      ; $7028: $34
    inc a                                         ; $7029: $3c
    inc h                                         ; $702a: $24
    inc a                                         ; $702b: $3c
    inc h                                         ; $702c: $24
    inc e                                         ; $702d: $1c
    inc h                                         ; $702e: $24
    inc c                                         ; $702f: $0c
    inc [hl]                                      ; $7030: $34
    jr z, jr_0df_704b                             ; $7031: $28 $18

    inc l                                         ; $7033: $2c
    inc a                                         ; $7034: $3c
    inc [hl]                                      ; $7035: $34
    inc a                                         ; $7036: $3c
    ld b, $3e                                     ; $7037: $06 $3e
    dec c                                         ; $7039: $0d
    ccf                                           ; $703a: $3f
    rra                                           ; $703b: $1f
    ccf                                           ; $703c: $3f
    cp h                                          ; $703d: $bc
    rst $38                                       ; $703e: $ff
    db $fc                                        ; $703f: $fc
    rst $38                                       ; $7040: $ff
    db $fc                                        ; $7041: $fc
    ld [bc], a                                    ; $7042: $02
    rst $38                                       ; $7043: $ff
    add e                                         ; $7044: $83
    sbc a                                         ; $7045: $9f
    ld hl, sp-$78                                 ; $7046: $f8 $88
    ld [bc], a                                    ; $7048: $02
    ld [hl], b                                    ; $7049: $70

jr_0df_704a:
    inc d                                         ; $704a: $14

jr_0df_704b:
    nop                                           ; $704b: $00
    adc h                                         ; $704c: $8c
    dec [hl]                                      ; $704d: $35
    ld a, a                                       ; $704e: $7f
    scf                                           ; $704f: $37
    ld a, a                                       ; $7050: $7f
    dec a                                         ; $7051: $3d
    ld a, a                                       ; $7052: $7f
    ld a, e                                       ; $7053: $7b
    ld a, a                                       ; $7054: $7f
    ld a, $26                                     ; $7055: $3e $26
    ld a, $22                                     ; $7057: $3e $22
    ld [bc], a                                    ; $7059: $02
    inc e                                         ; $705a: $1c
    ld [de], a                                    ; $705b: $12
    nop                                           ; $705c: $00
    rst $38                                       ; $705d: $ff
    dec c                                         ; $705e: $0d
    inc b                                         ; $705f: $04
    ld sp, hl                                     ; $7060: $f9
    ld [$00f1], sp                                ; $7061: $08 $f1 $00
    db $ec                                        ; $7064: $ec
    ld a, [$feed]                                 ; $7065: $fa $ed $fe
    db $fc                                        ; $7068: $fc
    ld a, [$00fc]                                 ; $7069: $fa $fc $00
    ld [bc], a                                    ; $706c: $02
    ld e, $9e                                     ; $706d: $1e $9e
    ld hl, $403f                                  ; $706f: $21 $3f $40
    ld a, a                                       ; $7072: $7f
    add e                                         ; $7073: $83
    rst $38                                       ; $7074: $ff
    add h                                         ; $7075: $84
    rst $38                                       ; $7076: $ff
    add h                                         ; $7077: $84
    rst $38                                       ; $7078: $ff
    sbc e                                         ; $7079: $9b
    rst $38                                       ; $707a: $ff
    rst $30                                       ; $707b: $f7
    db $fc                                        ; $707c: $fc
    ld c, a                                       ; $707d: $4f
    ld a, [hl]                                    ; $707e: $7e
    ld a, a                                       ; $707f: $7f
    ld [hl], b                                    ; $7080: $70
    ccf                                           ; $7081: $3f
    jr nz, jr_0df_70c3                            ; $7082: $20 $3f

    inc sp                                        ; $7084: $33
    ld e, a                                       ; $7085: $5f
    ld a, b                                       ; $7086: $78
    sbc a                                         ; $7087: $9f
    rst $30                                       ; $7088: $f7
    ld l, a                                       ; $7089: $6f
    ld a, c                                       ; $708a: $79
    ld d, [hl]                                    ; $708b: $56
    ld a, a                                       ; $708c: $7f
    ld [bc], a                                    ; $708d: $02
    ld [$048c], sp                                ; $708e: $08 $8c $04
    inc c                                         ; $7091: $0c
    ld [bc], a                                    ; $7092: $02
    ld c, $09                                     ; $7093: $0e $09
    rrca                                          ; $7095: $0f
    add hl, bc                                    ; $7096: $09
    rrca                                          ; $7097: $0f

jr_0df_7098:
    dec b                                         ; $7098: $05
    rrca                                          ; $7099: $0f
    ld a, [bc]                                    ; $709a: $0a
    ld b, $02                                     ; $709b: $06 $02
    ld c, $82                                     ; $709d: $0e $82
    inc c                                         ; $709f: $0c
    inc b                                         ; $70a0: $04
    inc bc                                        ; $70a1: $03
    inc c                                         ; $70a2: $0c
    add c                                         ; $70a3: $81
    inc b                                         ; $70a4: $04
    ld [bc], a                                    ; $70a5: $02
    inc c                                         ; $70a6: $0c
    sub h                                         ; $70a7: $94
    ld [bc], a                                    ; $70a8: $02
    ld c, $04                                     ; $70a9: $0e $04
    inc c                                         ; $70ab: $0c
    ld a, [bc]                                    ; $70ac: $0a
    ld c, $b6                                     ; $70ad: $0e $b6

jr_0df_70af:
    cp $d0                                        ; $70af: $fe $d0
    ldh a, [$a6]                                  ; $70b1: $f0 $a6
    rst $38                                       ; $70b3: $ff
    and b                                         ; $70b4: $a0
    rst $38                                       ; $70b5: $ff
    sbc a                                         ; $70b6: $9f
    rst $38                                       ; $70b7: $ff
    and c                                         ; $70b8: $a1
    rst $38                                       ; $70b9: $ff
    ld b, b                                       ; $70ba: $40
    ld a, a                                       ; $70bb: $7f
    ld [bc], a                                    ; $70bc: $02
    ccf                                           ; $70bd: $3f
    inc d                                         ; $70be: $14
    nop                                           ; $70bf: $00
    add l                                         ; $70c0: $85
    inc c                                         ; $70c1: $0c
    inc a                                         ; $70c2: $3c

jr_0df_70c3:
    inc c                                         ; $70c3: $0c
    inc a                                         ; $70c4: $3c
    ld [hl-], a                                   ; $70c5: $32
    ld [bc], a                                    ; $70c6: $02
    ld a, $83                                     ; $70c7: $3e $83
    ld a, [bc]                                    ; $70c9: $0a
    ccf                                           ; $70ca: $3f
    dec h                                         ; $70cb: $25
    ld [bc], a                                    ; $70cc: $02
    ld a, [hl-]                                   ; $70cd: $3a
    ld [de], a                                    ; $70ce: $12
    nop                                           ; $70cf: $00
    rst $38                                       ; $70d0: $ff
    dec c                                         ; $70d1: $0d
    inc b                                         ; $70d2: $04
    ld sp, hl                                     ; $70d3: $f9
    ld [$00f1], sp                                ; $70d4: $08 $f1 $00
    db $ec                                        ; $70d7: $ec
    ld a, [$00ed]                                 ; $70d8: $fa $ed $00
    db $fc                                        ; $70db: $fc
    ld a, [$02fc]                                 ; $70dc: $fa $fc $02
    ld [bc], a                                    ; $70df: $02
    ld e, $9e                                     ; $70e0: $1e $9e
    ld hl, $403f                                  ; $70e2: $21 $3f $40
    ld a, a                                       ; $70e5: $7f
    add e                                         ; $70e6: $83
    rst $38                                       ; $70e7: $ff
    add h                                         ; $70e8: $84
    rst $38                                       ; $70e9: $ff
    add h                                         ; $70ea: $84
    rst $38                                       ; $70eb: $ff
    sbc e                                         ; $70ec: $9b
    rst $38                                       ; $70ed: $ff
    rst $30                                       ; $70ee: $f7
    db $fc                                        ; $70ef: $fc
    ld c, a                                       ; $70f0: $4f
    ld a, [hl]                                    ; $70f1: $7e
    ld a, a                                       ; $70f2: $7f
    ld [hl], b                                    ; $70f3: $70
    ccf                                           ; $70f4: $3f
    jr nz, jr_0df_7136                            ; $70f5: $20 $3f

    inc sp                                        ; $70f7: $33
    ld e, a                                       ; $70f8: $5f
    ld a, e                                       ; $70f9: $7b
    sbc a                                         ; $70fa: $9f
    rst $30                                       ; $70fb: $f7
    ld l, a                                       ; $70fc: $6f
    ld a, c                                       ; $70fd: $79
    ld d, [hl]                                    ; $70fe: $56
    ld a, a                                       ; $70ff: $7f
    ld [bc], a                                    ; $7100: $02
    jr nz, @-$72                                  ; $7101: $20 $8c

    db $10                                        ; $7103: $10
    jr nc, @+$0a                                  ; $7104: $30 $08

    jr c, jr_0df_712c                             ; $7106: $38 $24

    inc a                                         ; $7108: $3c
    inc h                                         ; $7109: $24
    inc a                                         ; $710a: $3c
    inc d                                         ; $710b: $14
    inc a                                         ; $710c: $3c
    jr z, jr_0df_7127                             ; $710d: $28 $18

    ld [bc], a                                    ; $710f: $02
    jr c, @-$7c                                   ; $7110: $38 $82

    jr nc, jr_0df_7124                            ; $7112: $30 $10

    inc bc                                        ; $7114: $03
    jr nc, jr_0df_7098                            ; $7115: $30 $81

    db $10                                        ; $7117: $10
    ld [bc], a                                    ; $7118: $02
    jr nc, jr_0df_70af                            ; $7119: $30 $94

    ld c, $3e                                     ; $711b: $0e $3e
    rra                                           ; $711d: $1f
    add hl, sp                                    ; $711e: $39

jr_0df_711f:
    cpl                                           ; $711f: $2f
    add hl, sp                                    ; $7120: $39
    rst $18                                       ; $7121: $df
    db $fd                                        ; $7122: $fd
    ret c                                         ; $7123: $d8

jr_0df_7124:
    db $fc                                        ; $7124: $fc
    and [hl]                                      ; $7125: $a6
    rst $38                                       ; $7126: $ff

jr_0df_7127:
    and b                                         ; $7127: $a0
    rst $38                                       ; $7128: $ff
    sbc a                                         ; $7129: $9f
    rst $38                                       ; $712a: $ff
    and c                                         ; $712b: $a1

jr_0df_712c:
    rst $38                                       ; $712c: $ff
    ld b, b                                       ; $712d: $40
    ld a, a                                       ; $712e: $7f
    ld [bc], a                                    ; $712f: $02
    ccf                                           ; $7130: $3f
    inc d                                         ; $7131: $14
    nop                                           ; $7132: $00
    adc d                                         ; $7133: $8a
    ld l, $fe                                     ; $7134: $2e $fe

jr_0df_7136:
    ld a, [hl-]                                   ; $7136: $3a
    cp $f9                                        ; $7137: $fe $f9
    rst $38                                       ; $7139: $ff
    cp $3e                                        ; $713a: $fe $3e
    ldh a, [$90]                                  ; $713c: $f0 $90
    ld [bc], a                                    ; $713e: $02
    ldh [rNR12], a                                ; $713f: $e0 $12
    nop                                           ; $7141: $00
    rst $38                                       ; $7142: $ff
    dec c                                         ; $7143: $0d
    inc b                                         ; $7144: $04
    ld sp, hl                                     ; $7145: $f9
    ld [$00f1], sp                                ; $7146: $08 $f1 $00
    db $ec                                        ; $7149: $ec
    ld a, [$ffed]                                 ; $714a: $fa $ed $ff
    db $fc                                        ; $714d: $fc
    ld a, [$01fc]                                 ; $714e: $fa $fc $01
    ld [bc], a                                    ; $7151: $02
    ld e, $9e                                     ; $7152: $1e $9e
    ld hl, $403f                                  ; $7154: $21 $3f $40
    ld a, a                                       ; $7157: $7f
    add e                                         ; $7158: $83
    rst $38                                       ; $7159: $ff
    add h                                         ; $715a: $84
    rst $38                                       ; $715b: $ff
    add h                                         ; $715c: $84
    rst $38                                       ; $715d: $ff
    sbc e                                         ; $715e: $9b
    rst $38                                       ; $715f: $ff
    rst $30                                       ; $7160: $f7
    db $fc                                        ; $7161: $fc
    ld c, c                                       ; $7162: $49
    ld a, [hl]                                    ; $7163: $7e
    ld a, a                                       ; $7164: $7f
    ld [hl], b                                    ; $7165: $70
    ccf                                           ; $7166: $3f
    jr nz, jr_0df_71a8                            ; $7167: $20 $3f

    inc sp                                        ; $7169: $33
    ld e, a                                       ; $716a: $5f
    ld a, d                                       ; $716b: $7a
    sbc a                                         ; $716c: $9f
    rst $30                                       ; $716d: $f7
    ld l, a                                       ; $716e: $6f
    ld a, c                                       ; $716f: $79
    ld d, [hl]                                    ; $7170: $56
    ld a, a                                       ; $7171: $7f

jr_0df_7172:
    ld [bc], a                                    ; $7172: $02
    db $10                                        ; $7173: $10
    sub b                                         ; $7174: $90
    ld [$0418], sp                                ; $7175: $08 $18 $04
    inc e                                         ; $7178: $1c
    ld [de], a                                    ; $7179: $12
    ld e, $12                                     ; $717a: $1e $12
    ld e, $0a                                     ; $717c: $1e $0a
    ld e, $14                                     ; $717e: $1e $14
    inc c                                         ; $7180: $0c
    inc b                                         ; $7181: $04
    inc e                                         ; $7182: $1c
    jr jr_0df_718d                                ; $7183: $18 $08

    inc bc                                        ; $7185: $03
    jr jr_0df_711f                                ; $7186: $18 $97

    ld [$041c], sp                                ; $7188: $08 $1c $04
    inc e                                         ; $718b: $1c
    inc b                                         ; $718c: $04

jr_0df_718d:
    ld e, $16                                     ; $718d: $1e $16
    ld a, [de]                                    ; $718f: $1a
    ld e, $7d                                     ; $7190: $1e $7d

jr_0df_7192:
    rst $38                                       ; $7192: $ff
    ret c                                         ; $7193: $d8

    ld hl, sp-$5a                                 ; $7194: $f8 $a6
    rst $38                                       ; $7196: $ff
    and b                                         ; $7197: $a0
    rst $38                                       ; $7198: $ff
    sbc a                                         ; $7199: $9f
    rst $38                                       ; $719a: $ff
    and c                                         ; $719b: $a1
    rst $38                                       ; $719c: $ff
    ld b, b                                       ; $719d: $40
    ld a, a                                       ; $719e: $7f
    ld [bc], a                                    ; $719f: $02
    ccf                                           ; $71a0: $3f
    inc d                                         ; $71a1: $14
    nop                                           ; $71a2: $00
    add h                                         ; $71a3: $84
    ld [hl-], a                                   ; $71a4: $32
    ld a, [hl]                                    ; $71a5: $7e
    add hl, de                                    ; $71a6: $19
    ld a, a                                       ; $71a7: $7f

jr_0df_71a8:
    ld [bc], a                                    ; $71a8: $02
    ld a, [hl]                                    ; $71a9: $7e
    add h                                         ; $71aa: $84
    ld a, h                                       ; $71ab: $7c
    inc e                                         ; $71ac: $1c
    ld a, b                                       ; $71ad: $78
    ld c, b                                       ; $71ae: $48
    ld [bc], a                                    ; $71af: $02
    ld [hl], b                                    ; $71b0: $70
    ld [de], a                                    ; $71b1: $12
    nop                                           ; $71b2: $00
    rst $38                                       ; $71b3: $ff
    dec c                                         ; $71b4: $0d
    inc b                                         ; $71b5: $04
    ld sp, hl                                     ; $71b6: $f9
    ld [$00f1], sp                                ; $71b7: $08 $f1 $00
    db $ec                                        ; $71ba: $ec
    ld a, [$00ed]                                 ; $71bb: $fa $ed $00
    db $fc                                        ; $71be: $fc
    ld a, [$02fc]                                 ; $71bf: $fa $fc $02
    ld [bc], a                                    ; $71c2: $02
    ld e, $9e                                     ; $71c3: $1e $9e
    ld hl, $403f                                  ; $71c5: $21 $3f $40
    ld a, a                                       ; $71c8: $7f
    add e                                         ; $71c9: $83
    rst $38                                       ; $71ca: $ff
    add h                                         ; $71cb: $84
    rst $38                                       ; $71cc: $ff
    add h                                         ; $71cd: $84
    rst $38                                       ; $71ce: $ff
    sbc e                                         ; $71cf: $9b
    rst $38                                       ; $71d0: $ff
    rst $30                                       ; $71d1: $f7
    db $fc                                        ; $71d2: $fc
    ld c, a                                       ; $71d3: $4f
    ld a, [hl]                                    ; $71d4: $7e
    ld a, a                                       ; $71d5: $7f
    ld [hl], b                                    ; $71d6: $70
    ccf                                           ; $71d7: $3f
    jr nz, jr_0df_7219                            ; $71d8: $20 $3f

    inc sp                                        ; $71da: $33
    ld e, a                                       ; $71db: $5f
    ld a, b                                       ; $71dc: $78
    sbc a                                         ; $71dd: $9f
    rst $30                                       ; $71de: $f7
    ld l, a                                       ; $71df: $6f
    ld a, c                                       ; $71e0: $79
    ld d, [hl]                                    ; $71e1: $56
    ld a, a                                       ; $71e2: $7f
    ld [bc], a                                    ; $71e3: $02
    jr nz, jr_0df_7172                            ; $71e4: $20 $8c

    db $10                                        ; $71e6: $10
    jr nc, @+$0a                                  ; $71e7: $30 $08

    jr c, jr_0df_720f                             ; $71e9: $38 $24

    inc a                                         ; $71eb: $3c
    inc h                                         ; $71ec: $24
    inc a                                         ; $71ed: $3c
    inc d                                         ; $71ee: $14
    inc a                                         ; $71ef: $3c
    jr z, jr_0df_720a                             ; $71f0: $28 $18

    ld [bc], a                                    ; $71f2: $02
    jr c, @-$7c                                   ; $71f3: $38 $82

    jr nc, jr_0df_7207                            ; $71f5: $30 $10

    inc bc                                        ; $71f7: $03
    jr nc, @-$7d                                  ; $71f8: $30 $81

    db $10                                        ; $71fa: $10
    ld [bc], a                                    ; $71fb: $02
    jr nc, jr_0df_7192                            ; $71fc: $30 $94

    ld c, $3e                                     ; $71fe: $0e $3e
    rra                                           ; $7200: $1f
    add hl, sp                                    ; $7201: $39
    cpl                                           ; $7202: $2f
    add hl, sp                                    ; $7203: $39
    rst $18                                       ; $7204: $df
    db $fd                                        ; $7205: $fd
    ret c                                         ; $7206: $d8

jr_0df_7207:
    db $fc                                        ; $7207: $fc
    and [hl]                                      ; $7208: $a6
    rst $38                                       ; $7209: $ff

jr_0df_720a:
    and b                                         ; $720a: $a0
    rst $38                                       ; $720b: $ff
    sbc a                                         ; $720c: $9f
    rst $38                                       ; $720d: $ff
    and c                                         ; $720e: $a1

jr_0df_720f:
    rst $38                                       ; $720f: $ff
    ld b, b                                       ; $7210: $40
    ld a, a                                       ; $7211: $7f
    ld [bc], a                                    ; $7212: $02
    ccf                                           ; $7213: $3f
    inc d                                         ; $7214: $14
    nop                                           ; $7215: $00
    adc d                                         ; $7216: $8a
    ld l, $fe                                     ; $7217: $2e $fe

jr_0df_7219:
    ld a, [hl-]                                   ; $7219: $3a
    cp $f9                                        ; $721a: $fe $f9
    rst $38                                       ; $721c: $ff
    cp $3e                                        ; $721d: $fe $3e
    ldh a, [$90]                                  ; $721f: $f0 $90
    ld [bc], a                                    ; $7221: $02
    ldh [rNR12], a                                ; $7222: $e0 $12
    nop                                           ; $7224: $00
    rst $38                                       ; $7225: $ff
    dec c                                         ; $7226: $0d
    inc b                                         ; $7227: $04
    ld sp, hl                                     ; $7228: $f9
    ld [$00f1], sp                                ; $7229: $08 $f1 $00
    xor $f9                                       ; $722c: $ee $f9
    xor $01                                       ; $722e: $ee $01
    cp $f9                                        ; $7230: $fe $f9
    cp $01                                        ; $7232: $fe $01
    ld [bc], a                                    ; $7234: $02
    inc bc                                        ; $7235: $03
    ld [bc], a                                    ; $7236: $02
    rra                                           ; $7237: $1f
    sbc h                                         ; $7238: $9c
    inc sp                                        ; $7239: $33
    ccf                                           ; $723a: $3f
    ld d, c                                       ; $723b: $51
    ld a, a                                       ; $723c: $7f
    ld e, e                                       ; $723d: $5b
    halt                                          ; $723e: $76
    ld l, a                                       ; $723f: $6f
    ld [hl], d                                    ; $7240: $72
    ccf                                           ; $7241: $3f
    dec l                                         ; $7242: $2d
    ld h, $3d                                     ; $7243: $26 $3d
    ccf                                           ; $7245: $3f
    jr z, jr_0df_7287                             ; $7246: $28 $3f

    ld h, $1c                                     ; $7248: $26 $1c
    inc de                                        ; $724a: $13
    ccf                                           ; $724b: $3f
    jr c, jr_0df_72c5                             ; $724c: $38 $77

    ld a, a                                       ; $724e: $7f
    ld e, b                                       ; $724f: $58
    ld a, a                                       ; $7250: $7f
    rst $20                                       ; $7251: $e7
    rst $38                                       ; $7252: $ff
    ret nz                                        ; $7253: $c0

    rst $38                                       ; $7254: $ff
    ld [bc], a                                    ; $7255: $02
    ldh [$ac], a                                  ; $7256: $e0 $ac
    sub b                                         ; $7258: $90
    ldh a, [rOBP0]                                ; $7259: $f0 $48
    ld hl, sp-$48                                 ; $725b: $f8 $b8
    ld hl, sp-$38                                 ; $725d: $f8 $c8
    ld a, b                                       ; $725f: $78
    ld hl, sp+$38                                 ; $7260: $f8 $38
    ld hl, sp-$68                                 ; $7262: $f8 $98
    ld [hl], b                                    ; $7264: $70
    ret nc                                        ; $7265: $d0

    ldh [rNR41], a                                ; $7266: $e0 $20
    ld [hl], b                                    ; $7268: $70
    or b                                          ; $7269: $b0
    ld hl, sp+$78                                 ; $726a: $f8 $78
    call c, Call_000_22fc                         ; $726c: $dc $fc $22
    cp $c5                                        ; $726f: $fe $c5
    rst $38                                       ; $7271: $ff
    dec c                                         ; $7272: $0d
    rst $38                                       ; $7273: $ff
    dec b                                         ; $7274: $05
    rst $38                                       ; $7275: $ff
    and c                                         ; $7276: $a1
    rst $38                                       ; $7277: $ff
    sbc h                                         ; $7278: $9c
    rst $38                                       ; $7279: $ff
    rst $08                                       ; $727a: $cf
    rst $38                                       ; $727b: $ff
    add h                                         ; $727c: $84
    db $fc                                        ; $727d: $fc
    ld l, a                                       ; $727e: $6f
    ld a, d                                       ; $727f: $7a
    ccf                                           ; $7280: $3f
    ld sp, $090f                                  ; $7281: $31 $0f $09
    ld [bc], a                                    ; $7284: $02
    ld b, $10                                     ; $7285: $06 $10

jr_0df_7287:
    nop                                           ; $7287: $00
    adc h                                         ; $7288: $8c
    dec c                                         ; $7289: $0d
    rst $38                                       ; $728a: $ff
    ld sp, hl                                     ; $728b: $f9
    rst $38                                       ; $728c: $ff
    db $e3                                        ; $728d: $e3
    rst $38                                       ; $728e: $ff
    pop bc                                        ; $728f: $c1
    rst $38                                       ; $7290: $ff
    and $3e                                       ; $7291: $e6 $3e
    ld hl, sp+$18                                 ; $7293: $f8 $18
    ld [bc], a                                    ; $7295: $02
    ldh [rNR12], a                                ; $7296: $e0 $12
    nop                                           ; $7298: $00
    rst $38                                       ; $7299: $ff
    dec c                                         ; $729a: $0d
    inc b                                         ; $729b: $04
    ld sp, hl                                     ; $729c: $f9
    ld [$00f1], sp                                ; $729d: $08 $f1 $00
    xor $f9                                       ; $72a0: $ee $f9
    xor $01                                       ; $72a2: $ee $01
    cp $f9                                        ; $72a4: $fe $f9
    cp $01                                        ; $72a6: $fe $01
    ld [bc], a                                    ; $72a8: $02
    ld bc, $0f02                                  ; $72a9: $01 $02 $0f
    sbc h                                         ; $72ac: $9c
    ld sp, $533f                                  ; $72ad: $31 $3f $53
    ld a, a                                       ; $72b0: $7f

jr_0df_72b1:
    ld [hl], a                                    ; $72b1: $77
    ld l, h                                       ; $72b2: $6c
    ccf                                           ; $72b3: $3f
    inc h                                         ; $72b4: $24
    ccf                                           ; $72b5: $3f
    dec sp                                        ; $72b6: $3b
    ld c, h                                       ; $72b7: $4c
    ld a, e                                       ; $72b8: $7b
    ccf                                           ; $72b9: $3f
    jr nc, @+$40                                  ; $72ba: $30 $3e

    dec l                                         ; $72bc: $2d
    add hl, de                                    ; $72bd: $19
    ld d, $3e                                     ; $72be: $16 $3e
    add hl, sp                                    ; $72c0: $39
    ld [hl], a                                    ; $72c1: $77
    ld a, a                                       ; $72c2: $7f
    ld e, b                                       ; $72c3: $58
    ld a, a                                       ; $72c4: $7f

jr_0df_72c5:
    rst $20                                       ; $72c5: $e7
    rst $38                                       ; $72c6: $ff
    ret nz                                        ; $72c7: $c0

    rst $38                                       ; $72c8: $ff
    ld [bc], a                                    ; $72c9: $02
    ldh a, [$ac]                                  ; $72ca: $f0 $ac
    adc b                                         ; $72cc: $88

jr_0df_72cd:
    ld hl, sp+$64                                 ; $72cd: $f8 $64
    db $fc                                        ; $72cf: $fc
    inc [hl]                                      ; $72d0: $34
    db $fc                                        ; $72d1: $fc
    sbc h                                         ; $72d2: $9c
    db $fc                                        ; $72d3: $fc
    call z, $f87c                                 ; $72d4: $cc $7c $f8
    jr c, jr_0df_72b1                             ; $72d7: $38 $d8

    ld hl, sp-$30                                 ; $72d9: $f8 $d0
    jr nc, jr_0df_72cd                            ; $72db: $30 $f0

    jr nc, @-$46                                  ; $72dd: $30 $b8

    ld a, b                                       ; $72df: $78
    call c, Call_000_22fc                         ; $72e0: $dc $fc $22
    cp $c5                                        ; $72e3: $fe $c5
    rst $38                                       ; $72e5: $ff
    dec c                                         ; $72e6: $0d
    rst $38                                       ; $72e7: $ff
    dec b                                         ; $72e8: $05
    rst $38                                       ; $72e9: $ff
    and c                                         ; $72ea: $a1
    rst $38                                       ; $72eb: $ff
    sbc h                                         ; $72ec: $9c
    rst $38                                       ; $72ed: $ff
    rst $08                                       ; $72ee: $cf
    rst $38                                       ; $72ef: $ff
    add h                                         ; $72f0: $84
    db $fc                                        ; $72f1: $fc
    ld l, a                                       ; $72f2: $6f
    ld a, d                                       ; $72f3: $7a
    ccf                                           ; $72f4: $3f
    ld sp, $090f                                  ; $72f5: $31 $0f $09
    ld [bc], a                                    ; $72f8: $02
    ld b, $10                                     ; $72f9: $06 $10
    nop                                           ; $72fb: $00
    adc h                                         ; $72fc: $8c
    dec c                                         ; $72fd: $0d
    rst $38                                       ; $72fe: $ff
    ld sp, hl                                     ; $72ff: $f9
    rst $38                                       ; $7300: $ff
    db $e3                                        ; $7301: $e3
    rst $38                                       ; $7302: $ff
    pop bc                                        ; $7303: $c1
    rst $38                                       ; $7304: $ff
    and $3e                                       ; $7305: $e6 $3e
    ld hl, sp+$18                                 ; $7307: $f8 $18
    ld [bc], a                                    ; $7309: $02
    ldh [rNR12], a                                ; $730a: $e0 $12
    nop                                           ; $730c: $00
    rst $38                                       ; $730d: $ff
    dec c                                         ; $730e: $0d
    inc b                                         ; $730f: $04
    ld sp, hl                                     ; $7310: $f9
    ld [$00f1], sp                                ; $7311: $08 $f1 $00
    xor $f9                                       ; $7314: $ee $f9
    xor $01                                       ; $7316: $ee $01
    cp $f9                                        ; $7318: $fe $f9
    cp $01                                        ; $731a: $fe $01
    ld [bc], a                                    ; $731c: $02
    inc bc                                        ; $731d: $03
    ld [bc], a                                    ; $731e: $02
    rra                                           ; $731f: $1f
    sbc h                                         ; $7320: $9c
    inc sp                                        ; $7321: $33
    ccf                                           ; $7322: $3f
    ld d, c                                       ; $7323: $51
    ld a, a                                       ; $7324: $7f
    ld e, e                                       ; $7325: $5b
    halt                                          ; $7326: $76
    ld l, a                                       ; $7327: $6f
    ld [hl], d                                    ; $7328: $72
    ld [hl-], a                                   ; $7329: $32
    dec a                                         ; $732a: $3d
    ld h, $3d                                     ; $732b: $26 $3d
    ccf                                           ; $732d: $3f
    jr z, jr_0df_736f                             ; $732e: $28 $3f

    ld h, $1c                                     ; $7330: $26 $1c
    inc de                                        ; $7332: $13
    ccf                                           ; $7333: $3f
    jr c, @+$79                                   ; $7334: $38 $77

    ld a, a                                       ; $7336: $7f
    ld e, b                                       ; $7337: $58
    ld a, a                                       ; $7338: $7f
    rst $20                                       ; $7339: $e7
    rst $38                                       ; $733a: $ff
    ret nz                                        ; $733b: $c0

    rst $38                                       ; $733c: $ff
    ld [bc], a                                    ; $733d: $02
    ldh [$ac], a                                  ; $733e: $e0 $ac
    sub b                                         ; $7340: $90
    ldh a, [rOBP0]                                ; $7341: $f0 $48
    ld hl, sp-$48                                 ; $7343: $f8 $b8
    ld hl, sp-$38                                 ; $7345: $f8 $c8
    ld a, b                                       ; $7347: $78
    ld hl, sp+$38                                 ; $7348: $f8 $38
    ld a, b                                       ; $734a: $78
    ret c                                         ; $734b: $d8

    ld [hl], b                                    ; $734c: $70
    ret nc                                        ; $734d: $d0

    ldh [rNR41], a                                ; $734e: $e0 $20
    ld [hl], b                                    ; $7350: $70
    or b                                          ; $7351: $b0
    ld hl, sp+$78                                 ; $7352: $f8 $78
    call c, Call_000_22fc                         ; $7354: $dc $fc $22
    cp $c5                                        ; $7357: $fe $c5
    rst $38                                       ; $7359: $ff
    dec c                                         ; $735a: $0d
    rst $38                                       ; $735b: $ff
    dec b                                         ; $735c: $05
    rst $38                                       ; $735d: $ff
    and c                                         ; $735e: $a1
    rst $38                                       ; $735f: $ff
    sbc h                                         ; $7360: $9c
    rst $38                                       ; $7361: $ff
    rst $08                                       ; $7362: $cf
    rst $38                                       ; $7363: $ff
    add h                                         ; $7364: $84
    db $fc                                        ; $7365: $fc
    ld l, a                                       ; $7366: $6f
    ld a, d                                       ; $7367: $7a
    ccf                                           ; $7368: $3f
    ld sp, $090f                                  ; $7369: $31 $0f $09
    ld [bc], a                                    ; $736c: $02
    ld b, $10                                     ; $736d: $06 $10

jr_0df_736f:
    nop                                           ; $736f: $00
    adc h                                         ; $7370: $8c
    dec c                                         ; $7371: $0d
    rst $38                                       ; $7372: $ff
    ld sp, hl                                     ; $7373: $f9
    rst $38                                       ; $7374: $ff
    db $e3                                        ; $7375: $e3
    rst $38                                       ; $7376: $ff
    pop bc                                        ; $7377: $c1
    rst $38                                       ; $7378: $ff
    and $3e                                       ; $7379: $e6 $3e
    ld hl, sp+$18                                 ; $737b: $f8 $18
    ld [bc], a                                    ; $737d: $02
    ldh [rNR12], a                                ; $737e: $e0 $12
    nop                                           ; $7380: $00
    rst $38                                       ; $7381: $ff

    db $0d, $04, $f8

    rlca                                          ; $7385: $07
    ld a, [c]                                     ; $7386: $f2
    db $01                                        ; $7387: $01

    db $ed, $f9, $f0, $00, $fd, $f8, $fd, $00, $02, $0c, $88, $0a, $0e, $1d, $1f, $1c
    db $1f, $1a, $1f, $02, $3f, $94, $3d, $3e, $7f, $78, $b8, $f7, $5f, $76, $3f, $30
    db $1c, $1b, $13, $1e, $32, $3f, $71, $7f, $54, $7f, $02, $40, $aa, $20, $60, $50
    db $70, $78, $38, $78, $18, $48, $38, $78, $38, $78, $28, $68, $78, $58, $38, $68
    db $78, $24, $7c, $44, $7c, $4a, $fe, $0e, $fe, $59, $ff, $7a, $7f, $5d, $7f, $cf
    db $ff, $f3, $ff, $6f, $7e, $1f, $1c, $02, $03, $18, $00, $88, $f3, $ff, $fa, $6e
    db $fc, $2c, $f0, $70, $02, $80, $10, $00, $ff, $0d, $04, $f8

    rlca                                          ; $73f4: $07
    ld a, [c]                                     ; $73f5: $f2
    db $01                                        ; $73f6: $01

    db $eb, $f9, $ed, $ff, $fb, $f8, $fb, $00, $02, $02, $88, $05, $07, $06, $07, $0e
    db $0f, $0c, $0f, $04, $1f, $92, $3e, $3f, $3c, $3f, $77, $78, $98, $f7, $5f, $76
    db $3f, $38, $17, $1b, $33, $3e, $61, $7f, $04, $20, $ac, $10, $30, $10, $30, $08
    db $38, $08, $38, $1c, $3c, $34, $0c, $24, $1c, $3c, $1c, $3c, $14, $2c, $3c, $34
    db $3c, $16, $3e, $22, $fe, $03, $ff, $28, $3e, $7a, $7e, $5d, $7f, $9f, $ff, $f3
    db $ff, $ef, $fc, $3f, $38, $07, $06, $02, $01, $12, $00, $8a, $2a, $fe, $5e, $fe
    db $f1, $ff, $fb, $ef, $fe, $76, $02, $88, $10, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7465: $07
    ld a, [c]                                     ; $7466: $f2
    db $01                                        ; $7467: $01

    db $ed, $f9, $ef, $ff, $fd, $f8, $fd, $00, $02, $03, $88, $05, $07, $06, $07, $0e
    db $0f, $0e, $0f, $04, $1f, $81, $3e, $03, $3f, $8e, $73, $7c, $98, $f7, $5f, $76
    db $3f, $38, $37, $3b, $63, $7e, $61, $7f, $04, $20, $88, $10, $30, $10, $30, $08
    db $38, $08, $38, $02, $3c, $9e, $34, $0c, $24, $1c, $3c, $1c, $3c, $14, $2c, $3c
    db $36, $3e, $16, $3e, $23, $ff, $03, $ff, $78, $7e, $5a, $7e, $9f, $ff, $ef, $f9
    db $7f, $71, $1e, $1a, $02, $04, $16, $00, $86, $29, $ff, $fd, $f7, $1e, $1a, $02
    db $04, $14, $00, $ff, $0d, $04, $f8

    rlca                                          ; $74cf: $07
    ld a, [c]                                     ; $74d0: $f2
    db $01                                        ; $74d1: $01

    db $ee, $f9, $ef, $ff, $fe, $f8, $fe, $00, $02, $03, $85, $04, $07, $06, $07, $0e
    db $03, $0f, $04, $1f, $81, $3e, $03, $3f, $8e, $73, $7c, $98, $f7, $5f, $76, $3f
    db $38, $37, $3b, $63, $7e, $61, $7f, $06, $20, $88, $10, $30, $10, $30, $08, $38
    db $08, $38, $02, $3c, $93, $34, $0c, $24, $1c, $3c, $1c, $3c, $14, $2c, $3c, $36
    db $3e, $16, $3e, $23, $ff, $48, $7e, $9e, $02, $ff, $83, $e3, $7e, $72, $02, $0c
    db $18, $00, $84, $2d, $ff, $bf, $f3, $02, $0c, $18, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7531: $07
    ld a, [c]                                     ; $7532: $f2
    db $01                                        ; $7533: $01

    db $ee, $f9, $ef, $ff, $fe, $f9, $fe, $00, $02, $01, $86, $02, $03, $06, $07, $06
    db $07, $04, $0f, $02, $1f, $82, $1e, $1f, $02, $3f, $8e, $73, $7c, $98, $f7, $5f
    db $76, $3f, $38, $37, $3b, $23, $3e, $69, $7f, $04, $20, $89, $10, $30, $10, $30
    db $18, $38, $08, $38, $0c, $03, $3c, $96, $34, $0c, $24, $1c, $3c, $1c, $3c, $14
    db $2c, $3c, $36, $3e, $16, $3e, $23, $ff, $9c, $f4, $bf, $e3, $ff, $ef, $02, $f0
    db $1a, $00, $84, $2d, $7f, $3f, $73, $02, $0c, $18, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7593: $07
    ld a, [c]                                     ; $7594: $f2
    db $01                                        ; $7595: $01

    db $ee, $f9, $ef, $ff, $fe, $f9, $fe, $00, $02, $01, $86, $02, $03, $06, $07, $06
    db $07, $04, $0f, $02, $1f, $82, $1e, $1f, $02, $3f, $8e, $73, $7c, $98, $f7, $5f
    db $76, $3f, $38, $37, $3b, $23, $3e, $61, $7f, $04, $20, $89, $10, $30, $10, $30
    db $18, $38, $08, $38, $0c, $03, $3c, $93, $34, $0c, $24, $1c, $3c, $1c, $3c, $14
    db $2c, $3c, $36, $3e, $16, $3e, $23, $ff, $70, $7c, $97, $02, $ff, $81, $f9, $1c
    db $00, $84, $2d, $7f, $3f, $73, $02, $0c, $18, $00, $ff, $0d, $04, $f8

    rlca                                          ; $75f4: $07
    ld a, [c]                                     ; $75f5: $f2
    db $01                                        ; $75f6: $01

    db $ee, $f9, $ef, $ff, $fe, $f9, $fe, $00, $02, $01, $86, $02, $03, $06, $07, $06
    db $07, $04, $0f, $02, $1f, $82, $1e, $1f, $02, $3f, $8e, $73, $7c, $98, $f7, $5f
    db $76, $3f, $38, $37, $3b, $23, $3e, $61, $7f, $04, $20, $89, $10, $30, $10, $30
    db $18, $38, $08, $38, $0c, $03, $3c, $96, $34, $0c, $24, $1c, $3c, $1c, $3c, $14
    db $2c, $3c, $36, $3e, $16, $3e, $23, $ff, $70, $7c, $55, $7f, $cb, $ff, $1c, $00
    db $84, $2d, $7f, $3f, $73, $02, $0c, $18, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7654: $07
    ld a, [c]                                     ; $7655: $f2
    db $01                                        ; $7656: $01

    db $ed, $f9, $ef, $ff, $fd, $f8, $fd, $00, $02, $03, $88, $05, $07, $06, $07, $0e
    db $0f, $0e, $0f, $04, $1f, $81, $3e, $03, $3f, $8e, $73, $7c, $98, $f7, $5f, $76
    db $3f, $38, $37, $3b, $63, $7e, $61, $7f, $04, $20, $88, $10, $30, $10, $30, $08
    db $38, $08, $38, $02, $3c, $97, $34, $0c, $24, $1c, $3c, $1c, $3c, $14, $2c, $3c
    db $36, $3e, $16, $3e, $23, $ff, $03, $ff, $78, $7e, $5a, $7e, $9f, $02, $ff, $81
    db $fc, $1c, $00, $84, $29, $ff, $bf, $f3, $02, $0c, $16, $00, $ff, $0d, $04, $f8

    rlca                                          ; $76b7: $07
    ld a, [c]                                     ; $76b8: $f2
    db $01                                        ; $76b9: $01

    db $ed, $f9, $f0, $00, $fd, $f8, $fd, $00, $02, $0c, $88, $0a, $0e, $1d, $1f, $1c
    db $1f, $1a, $1f, $02, $3f, $94, $3d, $3e, $7f, $78, $b8, $f7, $5f, $76, $3f, $30
    db $1c, $1b, $13, $1e, $32, $3f, $71, $7f, $74, $7f, $02, $40, $a6, $20, $60, $50
    db $70, $78, $38, $78, $18, $48, $38, $78, $38, $78, $28, $68, $78, $58, $38, $68
    db $78, $24, $7c, $44, $7c, $4a, $fe, $8e, $fe, $d9, $7f, $5b, $7f, $57, $7c, $af
    db $f8, $ff, $fd, $1e, $00, $82, $bf, $f3, $02, $0c, $16, $00, $ff, $0d, $04, $f8

    rlca                                          ; $771a: $07
    ld a, [c]                                     ; $771b: $f2
    db $01                                        ; $771c: $01

    db $ed, $fa, $f0, $00, $fd, $f8, $fd, $00, $02, $04, $87, $0a, $0e, $1d, $1f, $1c
    db $1f, $38, $03, $3f, $8b, $77, $78, $bf, $e0, $c2, $fd, $ff, $d9, $5f, $61, $31
    db $02, $2f, $87, $38, $4b, $7f, $c5, $ff, $d2, $ff, $04, $20, $82, $10, $30, $02
    db $38, $83, $28, $18, $04, $02, $3c, $82, $2c, $28, $02, $18, $92, $38, $2c, $3c
    db $14, $3c, $0c, $3c, $0c, $3c, $96, $fe, $0e, $fe, $59, $ff, $74, $7f, $5d, $03
    db $7f, $8a, $cf, $ff, $73, $7f, $37, $3c, $1f, $18, $07, $05, $02, $02, $14, $00
    db $82, $ff, $f3, $02, $0c, $04, $80, $12, $00, $ff, $0d, $04, $f8

    rlca                                          ; $778a: $07
    ld a, [c]                                     ; $778b: $f2
    db $01                                        ; $778c: $01

    db $ed, $fa, $f0, $00, $fd, $f9, $fd, $00, $02, $04, $87, $0a, $0e, $1d, $1f, $1c
    db $1f, $38, $03, $3f, $8b, $77, $78, $bf, $e0, $c2, $fd, $ff, $d9, $5f, $61, $31
    db $02, $2f, $87, $38, $4b, $7f, $45, $7f, $d2, $ff, $04, $20, $82, $10, $30, $02
    db $38, $83, $28, $18, $04, $02, $3c, $82, $2c, $28, $02, $18, $a3, $38, $2c, $3c
    db $14, $3c, $0c, $3c, $0c, $3c, $96, $fe, $0e, $fe, $5b, $ff, $68, $7e, $5a, $7e
    db $be, $fe, $9f, $ff, $dc, $fc, $74, $7c, $63, $7f, $2f, $3e, $1f, $19, $0f, $0c
    db $02, $03, $10, $00, $84, $7d, $77, $1e, $1a, $02, $04, $02, $00, $02, $40, $02
    db $00, $02, $40, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7806: $07
    ld a, [c]                                     ; $7807: $f2
    db $01                                        ; $7808: $01

    db $ed, $fa, $f0, $00, $fd, $f8, $fd, $00, $02, $04, $87, $0a, $0e, $1d, $1f, $1c
    db $1f, $38, $03, $3f, $8b, $77, $78, $bf, $e0, $c2, $fd, $ff, $d9, $5f, $61, $31
    db $02, $2f, $87, $38, $4b, $7f, $c5, $ff, $d2, $ff, $04, $20, $82, $10, $30, $02
    db $38, $83, $28, $18, $04, $02, $3c, $82, $2c, $28, $02, $18, $92, $38, $2c, $3c
    db $14, $3c, $0c, $3c, $0c, $3c, $96, $fe, $0e, $fe, $59, $ff, $74, $7f, $5d, $03
    db $7f, $8a, $cf, $ff, $73, $7f, $37, $3c, $1f, $19, $07, $04, $02, $03, $14, $00
    db $86, $f3, $ff, $7a, $4e, $bc, $a4, $02, $98, $02, $80, $10, $00, $ff, $0d, $04
    db $f8

    rlca                                          ; $787a: $07
    or $05                                        ; $787b: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $9e, $18, $17, $30, $2f, $27
    db $3f, $6f, $78, $7f, $70, $ff, $ec, $7f, $60, $ff, $f2, $7f, $74, $ef, $fb, $7f
    db $7c, $7f, $7b, $5f, $78, $af, $fc, $97, $ff, $02, $60, $a6, $30, $50, $18, $68
    db $48, $78, $6c, $3c, $7c, $1c, $7e, $6e, $7c, $0c, $7e, $1e, $7c, $5c, $7e, $3e
    db $7c, $4c, $7c, $64, $7e, $26, $5a, $7e, $67, $7f, $bf, $ff, $7d, $4f, $fb, $8e
    db $7b, $7f, $02, $07, $02, $3b, $86, $2f, $36, $7a, $4b, $cb, $ba, $02, $7b, $0c
    db $00, $8a, $1f, $fb, $ef, $f9, $ff, $19, $f6, $36, $f0, $d0, $02, $fc, $86, $74
    db $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $78fa: $07
    or $05                                        ; $78fb: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $85, $18, $17, $10, $1f, $2f
    db $02, $3f, $97, $30, $7f, $70, $7f, $79, $3f, $20, $7f, $74, $3f, $3d, $7f, $7a
    db $3f, $3c, $7f, $7b, $5f, $7b, $b7, $fc, $f7, $dc, $02, $60, $a4, $10, $70, $08
    db $78, $4c, $7c, $6c, $7c, $7e, $16, $7e, $5e, $7f, $0f, $7e, $0e, $7e, $5e, $7f
    db $3f, $7e, $4e, $7c, $64, $7e, $26, $5a, $7e, $67, $3f, $fb, $cf, $fd, $8f, $ff
    db $9f, $02, $61, $02, $01, $02, $3b, $86, $2f, $36, $7a, $4b, $cb, $ba, $02, $7b
    db $0c, $00, $8a, $ff, $bb, $4f, $f9, $ff, $f9, $26, $e6, $f0, $10, $02, $fc, $86
    db $74, $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $797b: $07
    or $05                                        ; $797c: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $85, $18, $17, $10, $1f, $2f
    db $02, $3f, $97, $30, $7f, $70, $7f, $79, $3f, $20, $7f, $74, $3f, $3d, $7f, $7a
    db $bf, $dc, $4f, $7b, $ff, $98, $ff, $8c, $ff, $cf, $02, $60, $a4, $10, $70, $08
    db $78, $4c, $7c, $6c, $7c, $7e, $16, $7e, $5e, $7f, $0f, $7e, $0e, $7e, $5e, $7f
    db $3f, $7e, $4e, $7c, $64, $7e, $26, $5a, $7e, $67, $7f, $5a, $7f, $e4, $bf, $ff
    db $df, $02, $79, $02, $01, $02, $3b, $86, $2f, $36, $7a, $4b, $cb, $ba, $02, $7b
    db $0c, $00, $8a, $1f, $fb, $0f, $f9, $ff, $f9, $26, $e6, $f0, $10, $02, $fc, $86
    db $74, $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $79fc: $07
    or $05                                        ; $79fd: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $85, $18, $17, $10, $1f, $2f
    db $02, $3f, $97, $30, $7f, $70, $7f, $79, $3f, $20, $7f, $74, $3f, $3d, $7f, $7a
    db $3f, $3c, $7f, $7b, $5f, $78, $af, $fc, $97, $ff, $02, $60, $b0, $10, $70, $08
    db $78, $4c, $7c, $6c, $7c, $7e, $16, $7e, $5e, $7f, $0f, $7e, $0e, $7e, $5e, $7f
    db $3f, $7e, $4e, $7c, $64, $7e, $26, $5a, $7e, $67, $7f, $74, $7f, $fc, $cf, $ff
    db $8f, $f9, $b9, $f9, $d9, $ff, $bf, $8f, $fe, $7a, $7b, $fb, $ca, $02, $7b, $0c
    db $00, $8a, $1f, $fb, $0f, $f9, $ff, $f9, $26, $e6, $f0, $10, $02, $fc, $86, $74
    db $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7a7c: $07
    or $05                                        ; $7a7d: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $85, $18, $17, $10, $1f, $2f
    db $02, $3f, $97, $30, $7f, $70, $7f, $79, $3f, $20, $7f, $74, $3f, $3d, $7f, $7a
    db $3f, $3c, $7f, $7b, $5f, $78, $af, $fc, $97, $ff, $02, $60, $b0, $10, $70, $08
    db $78, $4c, $7c, $6c, $7c, $7e, $16, $7e, $5e, $7f, $0f, $7e, $0e, $7e, $5e, $7f
    db $3f, $7e, $4e, $7c, $64, $7e, $26, $5a, $7e, $67, $7f, $74, $7f, $7c, $5f, $ff
    db $8f, $f9, $e9, $f9, $99, $ff, $bf, $ef, $b6, $7a, $4b, $cb, $ba, $02, $7b, $0c
    db $00, $8a, $1f, $fb, $0f, $f9, $ff, $f9, $26, $e6, $f0, $10, $02, $fc, $86, $74
    db $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff, $0d, $04, $f8

    rlca                                          ; $7afc: $07
    or $05                                        ; $7afd: $f6 $05

    db $ec, $f9, $ec, $00, $fc, $f8, $fc, $00, $02, $0f, $85, $18, $17, $10, $1f, $2f
    db $02, $3f, $97, $30, $7f, $70, $7f, $79, $3f, $20, $7f, $74, $3f, $3d, $7f, $7a
    db $3f, $3c, $7f, $7b, $5f, $78, $af, $fc, $97, $ff, $02, $60, $a8, $10, $70, $08
    db $78, $4c, $7c, $6c, $7c, $7e, $16, $7e, $5e, $7f, $0f, $7e, $0e, $7e, $5e, $7f
    db $3f, $7e, $4e, $7c, $64, $7e, $26, $5a, $7e, $67, $7f, $bc, $ff, $7e, $4f, $ff
    db $b3, $7f, $63, $3d, $2d, $02, $3b, $86, $2f, $36, $7a, $4b, $cb, $ba, $02, $7b
    db $0c, $00, $8a, $1f, $fb, $0f, $f9, $ff, $f9, $26, $e6, $f0, $10, $02, $fc, $86
    db $74, $ec, $da, $56, $57, $d9, $02, $de, $0c, $00, $ff

    dec c                                         ; $7b7a: $0d
    inc b                                         ; $7b7b: $04
    ld sp, hl                                     ; $7b7c: $f9
    ld [$00f1], sp                                ; $7b7d: $08 $f1 $00
    db $eb                                        ; $7b80: $eb
    ld sp, hl                                     ; $7b81: $f9
    db $eb                                        ; $7b82: $eb
    nop                                           ; $7b83: $00
    ei                                            ; $7b84: $fb
    ld sp, hl                                     ; $7b85: $f9
    ei                                            ; $7b86: $fb
    nop                                           ; $7b87: $00
    ld [bc], a                                    ; $7b88: $02
    rrca                                          ; $7b89: $0f
    sbc [hl]                                      ; $7b8a: $9e
    rra                                           ; $7b8b: $1f
    inc d                                         ; $7b8c: $14
    ccf                                           ; $7b8d: $3f
    ld a, $3f                                     ; $7b8e: $3e $3f
    add hl, hl                                    ; $7b90: $29
    ccf                                           ; $7b91: $3f
    jr c, jr_0df_7bd3                             ; $7b92: $38 $3f

    ld [hl], $19                                  ; $7b94: $36 $19
    ld e, $1f                                     ; $7b96: $1e $1f
    db $10                                        ; $7b98: $10
    rrca                                          ; $7b99: $0f
    ld a, [bc]                                    ; $7b9a: $0a
    cpl                                           ; $7b9b: $2f
    dec hl                                        ; $7b9c: $2b
    rra                                           ; $7b9d: $1f
    ld e, $2f                                     ; $7b9e: $1e $2f
    inc a                                         ; $7ba0: $3c
    ld c, a                                       ; $7ba1: $4f
    ld a, a                                       ; $7ba2: $7f
    add a                                         ; $7ba3: $87
    cp $73                                        ; $7ba4: $fe $73
    ld a, [hl]                                    ; $7ba6: $7e
    dec a                                         ; $7ba7: $3d
    ccf                                           ; $7ba8: $3f
    ld [bc], a                                    ; $7ba9: $02
    ld [hl], b                                    ; $7baa: $70
    adc e                                         ; $7bab: $8b
    ld a, b                                       ; $7bac: $78
    ld e, b                                       ; $7bad: $58
    ld a, h                                       ; $7bae: $7c
    ld [hl], h                                    ; $7baf: $74
    ld a, h                                       ; $7bb0: $7c
    inc d                                         ; $7bb1: $14
    ld a, h                                       ; $7bb2: $7c
    inc e                                         ; $7bb3: $1c
    ld a, h                                       ; $7bb4: $7c
    ld l, h                                       ; $7bb5: $6c
    jr jr_0df_7bba                                ; $7bb6: $18 $02

    ld a, b                                       ; $7bb8: $78
    add l                                         ; $7bb9: $85

jr_0df_7bba:
    ld c, b                                       ; $7bba: $48
    ld [hl], b                                    ; $7bbb: $70
    ld d, b                                       ; $7bbc: $50
    ld [hl], h                                    ; $7bbd: $74
    ld d, h                                       ; $7bbe: $54
    ld [bc], a                                    ; $7bbf: $02
    ld a, b                                       ; $7bc0: $78
    sub [hl]                                      ; $7bc1: $96
    ld h, h                                       ; $7bc2: $64
    inc a                                         ; $7bc3: $3c
    ld [hl], d                                    ; $7bc4: $72
    ld a, [hl]                                    ; $7bc5: $7e
    ld h, c                                       ; $7bc6: $61
    ccf                                           ; $7bc7: $3f
    ld c, [hl]                                    ; $7bc8: $4e
    ld a, [hl]                                    ; $7bc9: $7e
    inc [hl]                                      ; $7bca: $34
    ld a, h                                       ; $7bcb: $7c
    ld b, e                                       ; $7bcc: $43
    ld a, [hl]                                    ; $7bcd: $7e
    ld e, [hl]                                    ; $7bce: $5e
    ld a, l                                       ; $7bcf: $7d
    cp a                                          ; $7bd0: $bf
    cp $ff                                        ; $7bd1: $fe $ff

jr_0df_7bd3:
    rst $00                                       ; $7bd3: $c7
    rst $38                                       ; $7bd4: $ff
    ldh a, [rIF]                                  ; $7bd5: $f0 $0f
    inc c                                         ; $7bd7: $0c
    ld [bc], a                                    ; $7bd8: $02
    inc bc                                        ; $7bd9: $03
    ld [de], a                                    ; $7bda: $12
    nop                                           ; $7bdb: $00
    add l                                         ; $7bdc: $85
    ld b, d                                       ; $7bdd: $42
    ld a, [hl]                                    ; $7bde: $7e
    ld a, d                                       ; $7bdf: $7a
    ld a, $7d                                     ; $7be0: $3e $7d
    ld [bc], a                                    ; $7be2: $02
    ld a, a                                       ; $7be3: $7f
    add a                                         ; $7be4: $87
    ld a, e                                       ; $7be5: $7b
    ld a, a                                       ; $7be6: $7f
    inc sp                                        ; $7be7: $33
    ld a, h                                       ; $7be8: $7c
    ld b, h                                       ; $7be9: $44
    ld a, b                                       ; $7bea: $78
    ld c, b                                       ; $7beb: $48
    ld [bc], a                                    ; $7bec: $02
    jr nc, jr_0df_7bff                            ; $7bed: $30 $10

    nop                                           ; $7bef: $00
    rst $38                                       ; $7bf0: $ff
    dec c                                         ; $7bf1: $0d
    inc b                                         ; $7bf2: $04
    ld sp, hl                                     ; $7bf3: $f9
    ld [$00f1], sp                                ; $7bf4: $08 $f1 $00
    db $eb                                        ; $7bf7: $eb
    ld sp, hl                                     ; $7bf8: $f9
    db $eb                                        ; $7bf9: $eb
    nop                                           ; $7bfa: $00
    ei                                            ; $7bfb: $fb
    ld sp, hl                                     ; $7bfc: $f9
    ei                                            ; $7bfd: $fb
    nop                                           ; $7bfe: $00

jr_0df_7bff:
    ld [bc], a                                    ; $7bff: $02
    rrca                                          ; $7c00: $0f
    sub d                                         ; $7c01: $92
    rra                                           ; $7c02: $1f
    add hl, de                                    ; $7c03: $19
    ccf                                           ; $7c04: $3f
    scf                                           ; $7c05: $37
    ccf                                           ; $7c06: $3f
    inc l                                         ; $7c07: $2c
    ccf                                           ; $7c08: $3f
    inc l                                         ; $7c09: $2c
    ccf                                           ; $7c0a: $3f
    dec sp                                        ; $7c0b: $3b
    inc a                                         ; $7c0c: $3c
    scf                                           ; $7c0d: $37
    rra                                           ; $7c0e: $1f
    jr jr_0df_7c20                                ; $7c0f: $18 $0f

    add hl, bc                                    ; $7c11: $09
    rra                                           ; $7c12: $1f
    dec e                                         ; $7c13: $1d
    ld [bc], a                                    ; $7c14: $02
    rra                                           ; $7c15: $1f
    adc d                                         ; $7c16: $8a
    cpl                                           ; $7c17: $2f
    ld a, $4f                                     ; $7c18: $3e $4f
    ld a, a                                       ; $7c1a: $7f
    add a                                         ; $7c1b: $87
    cp $73                                        ; $7c1c: $fe $73
    ld a, [hl]                                    ; $7c1e: $7e
    dec a                                         ; $7c1f: $3d

jr_0df_7c20:
    ccf                                           ; $7c20: $3f
    ld [bc], a                                    ; $7c21: $02
    ld [hl], b                                    ; $7c22: $70
    sub b                                         ; $7c23: $90
    ld a, b                                       ; $7c24: $78
    jr z, jr_0df_7ca3                             ; $7c25: $28 $7c

    ld [hl], h                                    ; $7c27: $74
    ld a, h                                       ; $7c28: $7c
    ld e, h                                       ; $7c29: $5c
    ld a, h                                       ; $7c2a: $7c
    inc c                                         ; $7c2b: $0c
    ld a, b                                       ; $7c2c: $78
    jr c, jr_0df_7c77                             ; $7c2d: $38 $48

    jr c, jr_0df_7ca9                             ; $7c2f: $38 $78

    jr z, jr_0df_7cab                             ; $7c31: $28 $78

    jr z, jr_0df_7c37                             ; $7c33: $28 $02

    ld [hl], h                                    ; $7c35: $74
    sbc b                                         ; $7c36: $98

jr_0df_7c37:
    ld a, b                                       ; $7c37: $78
    jr c, jr_0df_7cae                             ; $7c38: $38 $74

    inc e                                         ; $7c3a: $1c
    ld [hl], d                                    ; $7c3b: $72
    ld a, [hl]                                    ; $7c3c: $7e
    ld h, c                                       ; $7c3d: $61
    ccf                                           ; $7c3e: $3f
    ld c, [hl]                                    ; $7c3f: $4e
    ld a, [hl]                                    ; $7c40: $7e
    inc [hl]                                      ; $7c41: $34
    ld a, h                                       ; $7c42: $7c
    ld b, e                                       ; $7c43: $43
    ld a, [hl]                                    ; $7c44: $7e
    ld e, [hl]                                    ; $7c45: $5e
    ld a, l                                       ; $7c46: $7d
    cp a                                          ; $7c47: $bf
    cp $ff                                        ; $7c48: $fe $ff
    rst $00                                       ; $7c4a: $c7
    rst $38                                       ; $7c4b: $ff
    ldh a, [rIF]                                  ; $7c4c: $f0 $0f
    inc c                                         ; $7c4e: $0c
    ld [bc], a                                    ; $7c4f: $02
    inc bc                                        ; $7c50: $03
    ld [de], a                                    ; $7c51: $12
    nop                                           ; $7c52: $00
    add l                                         ; $7c53: $85
    ld b, d                                       ; $7c54: $42
    ld a, [hl]                                    ; $7c55: $7e
    ld a, d                                       ; $7c56: $7a
    ld a, $7d                                     ; $7c57: $3e $7d
    ld [bc], a                                    ; $7c59: $02
    ld a, a                                       ; $7c5a: $7f
    add a                                         ; $7c5b: $87
    ld a, e                                       ; $7c5c: $7b
    ld a, a                                       ; $7c5d: $7f
    inc sp                                        ; $7c5e: $33
    ld a, h                                       ; $7c5f: $7c
    ld b, h                                       ; $7c60: $44
    ld a, b                                       ; $7c61: $78
    ld c, b                                       ; $7c62: $48
    ld [bc], a                                    ; $7c63: $02
    jr nc, jr_0df_7c76                            ; $7c64: $30 $10

    nop                                           ; $7c66: $00
    rst $38                                       ; $7c67: $ff
    dec c                                         ; $7c68: $0d
    inc b                                         ; $7c69: $04
    ld sp, hl                                     ; $7c6a: $f9
    ld [$03f4], sp                                ; $7c6b: $08 $f4 $03
    db $ed                                        ; $7c6e: $ed
    ei                                            ; $7c6f: $fb
    db $ed                                        ; $7c70: $ed
    rst $38                                       ; $7c71: $ff
    db $fd                                        ; $7c72: $fd
    ld a, [$00fd]                                 ; $7c73: $fa $fd $00

jr_0df_7c76:
    ld [bc], a                                    ; $7c76: $02

jr_0df_7c77:
    inc bc                                        ; $7c77: $03
    sub [hl]                                      ; $7c78: $96
    ld e, $1f                                     ; $7c79: $1e $1f
    ld h, d                                       ; $7c7b: $62
    ld a, a                                       ; $7c7c: $7f
    ld [hl], d                                    ; $7c7d: $72
    ld a, a                                       ; $7c7e: $7f
    rst $18                                       ; $7c7f: $df
    db $fd                                        ; $7c80: $fd
    and [hl]                                      ; $7c81: $a6
    ld sp, hl                                     ; $7c82: $f9
    ld a, a                                       ; $7c83: $7f
    ld l, c                                       ; $7c84: $69
    ld a, a                                       ; $7c85: $7f
    ld b, b                                       ; $7c86: $40
    ld a, a                                       ; $7c87: $7f
    ld h, d                                       ; $7c88: $62
    ccf                                           ; $7c89: $3f
    add hl, hl                                    ; $7c8a: $29
    ccf                                           ; $7c8b: $3f
    ld h, $3f                                     ; $7c8c: $26 $3f
    jr nc, jr_0df_7c92                            ; $7c8e: $30 $02

    ccf                                           ; $7c90: $3f
    add [hl]                                      ; $7c91: $86

jr_0df_7c92:
    ld h, l                                       ; $7c92: $65
    ld a, a                                       ; $7c93: $7f
    and $bf                                       ; $7c94: $e6 $bf
    rst $38                                       ; $7c96: $ff
    cp c                                          ; $7c97: $b9
    ld [bc], a                                    ; $7c98: $02
    ld [$0494], sp                                ; $7c99: $08 $94 $04
    inc c                                         ; $7c9c: $0c
    inc b                                         ; $7c9d: $04
    inc c                                         ; $7c9e: $0c
    ld a, [bc]                                    ; $7c9f: $0a
    ld c, $0b                                     ; $7ca0: $0e $0b
    rrca                                          ; $7ca2: $0f

jr_0df_7ca3:
    dec b                                         ; $7ca3: $05
    rrca                                          ; $7ca4: $0f
    ld c, $06                                     ; $7ca5: $0e $06
    ld c, $02                                     ; $7ca7: $0e $02

jr_0df_7ca9:
    inc c                                         ; $7ca9: $0c
    inc b                                         ; $7caa: $04

jr_0df_7cab:
    inc c                                         ; $7cab: $0c
    inc b                                         ; $7cac: $04
    inc c                                         ; $7cad: $0c

jr_0df_7cae:
    inc b                                         ; $7cae: $04
    ld [bc], a                                    ; $7caf: $02
    ld [$0c02], sp                                ; $7cb0: $08 $02 $0c
    sub d                                         ; $7cb3: $92
    ld b, $0e                                     ; $7cb4: $06 $0e
    rlca                                          ; $7cb6: $07
    dec c                                         ; $7cb7: $0d
    rrca                                          ; $7cb8: $0f
    dec c                                         ; $7cb9: $0d
    or a                                          ; $7cba: $b7
    rst $38                                       ; $7cbb: $ff
    ldh a, [rIE]                                  ; $7cbc: $f0 $ff
    ld hl, sp-$71                                 ; $7cbe: $f8 $8f
    rst $38                                       ; $7cc0: $ff
    cp a                                          ; $7cc1: $bf
    ld a, [hl]                                    ; $7cc2: $7e
    ld h, d                                       ; $7cc3: $62
    inc a                                         ; $7cc4: $3c
    inc h                                         ; $7cc5: $24
    ld [bc], a                                    ; $7cc6: $02
    jr jr_0df_7cdb                                ; $7cc7: $18 $12

    nop                                           ; $7cc9: $00
    adc d                                         ; $7cca: $8a
    dec l                                         ; $7ccb: $2d
    ccf                                           ; $7ccc: $3f
    rrca                                          ; $7ccd: $0f
    add hl, sp                                    ; $7cce: $39
    rra                                           ; $7ccf: $1f
    scf                                           ; $7cd0: $37
    ccf                                           ; $7cd1: $3f
    add hl, sp                                    ; $7cd2: $39
    rra                                           ; $7cd3: $1f
    ld de, $0e02                                  ; $7cd4: $11 $02 $0e
    inc d                                         ; $7cd7: $14
    nop                                           ; $7cd8: $00
    rst $38                                       ; $7cd9: $ff
    add hl, bc                                    ; $7cda: $09

jr_0df_7cdb:
    ld [bc], a                                    ; $7cdb: $02
    ei                                            ; $7cdc: $fb
    inc bc                                        ; $7cdd: $03
    or $00                                        ; $7cde: $f6 $00
    or $fb                                        ; $7ce0: $f6 $fb
    or $fc                                        ; $7ce2: $f6 $fc
    add d                                         ; $7ce4: $82
    ld a, [de]                                    ; $7ce5: $1a
    ld e, $03                                     ; $7ce6: $1e $03
    ccf                                           ; $7ce8: $3f
    adc l                                         ; $7ce9: $8d
    inc sp                                        ; $7cea: $33
    ccf                                           ; $7ceb: $3f
    dec l                                         ; $7cec: $2d
    sbc $40                                       ; $7ced: $de $40
    rst $30                                       ; $7cef: $f7
    ei                                            ; $7cf0: $fb
    ld a, d                                       ; $7cf1: $7a
    rst $38                                       ; $7cf2: $ff
    ld a, [de]                                    ; $7cf3: $1a
    ld a, a                                       ; $7cf4: $7f
    dec de                                        ; $7cf5: $1b
    ld e, $02                                     ; $7cf6: $1e $02
    rra                                           ; $7cf8: $1f
    add d                                         ; $7cf9: $82
    add hl, bc                                    ; $7cfa: $09
    dec de                                        ; $7cfb: $1b
    ld d, $00                                     ; $7cfc: $16 $00
    ld b, $01                                     ; $7cfe: $06 $01
    ld c, $00                                     ; $7d00: $0e $00
    rst $38                                       ; $7d02: $ff
    add hl, bc                                    ; $7d03: $09
    ld [bc], a                                    ; $7d04: $02
    ei                                            ; $7d05: $fb
    inc bc                                        ; $7d06: $03
    or $00                                        ; $7d07: $f6 $00
    or $fa                                        ; $7d09: $f6 $fa
    or $fc                                        ; $7d0b: $f6 $fc
    add d                                         ; $7d0d: $82
    dec c                                         ; $7d0e: $0d
    rrca                                          ; $7d0f: $0f
    inc bc                                        ; $7d10: $03
    rra                                           ; $7d11: $1f
    adc h                                         ; $7d12: $8c
    add hl, de                                    ; $7d13: $19
    rst $18                                       ; $7d14: $df
    ld d, [hl]                                    ; $7d15: $56
    rst $08                                       ; $7d16: $cf
    ldh [$fb], a                                  ; $7d17: $e0 $fb
    db $fd                                        ; $7d19: $fd
    dec a                                         ; $7d1a: $3d
    ld a, a                                       ; $7d1b: $7f
    dec c                                         ; $7d1c: $0d
    ccf                                           ; $7d1d: $3f
    dec c                                         ; $7d1e: $0d
    inc bc                                        ; $7d1f: $03
    rrca                                          ; $7d20: $0f
    add d                                         ; $7d21: $82
    inc b                                         ; $7d22: $04
    dec c                                         ; $7d23: $0d
    inc c                                         ; $7d24: $0c
    nop                                           ; $7d25: $00
    ld b, $02                                     ; $7d26: $06 $02
    ld [bc], a                                    ; $7d28: $02
    nop                                           ; $7d29: $00
    ld [bc], a                                    ; $7d2a: $02
    ld [bc], a                                    ; $7d2b: $02
    add c                                         ; $7d2c: $81
    ld bc, $0302                                  ; $7d2d: $01 $02 $03
    add c                                         ; $7d30: $81
    ld bc, $0206                                  ; $7d31: $01 $06 $02
    ld a, [bc]                                    ; $7d34: $0a
    nop                                           ; $7d35: $00
    rst $38                                       ; $7d36: $ff
    add hl, bc                                    ; $7d37: $09
    ld [bc], a                                    ; $7d38: $02
    ei                                            ; $7d39: $fb
    inc bc                                        ; $7d3a: $03
    or $00                                        ; $7d3b: $f6 $00
    or $fb                                        ; $7d3d: $f6 $fb
    or $fc                                        ; $7d3f: $f6 $fc
    add d                                         ; $7d41: $82
    ld a, [de]                                    ; $7d42: $1a
    ld e, $03                                     ; $7d43: $1e $03
    ccf                                           ; $7d45: $3f
    adc l                                         ; $7d46: $8d
    inc sp                                        ; $7d47: $33
    rst $38                                       ; $7d48: $ff
    ld l, l                                       ; $7d49: $6d
    sbc $e0                                       ; $7d4a: $de $e0
    rst $30                                       ; $7d4c: $f7
    ei                                            ; $7d4d: $fb
    ld a, [hl-]                                   ; $7d4e: $3a
    ld a, a                                       ; $7d4f: $7f
    ld a, [de]                                    ; $7d50: $1a
    ccf                                           ; $7d51: $3f
    dec de                                        ; $7d52: $1b
    ld e, $02                                     ; $7d53: $1e $02
    rra                                           ; $7d55: $1f
    add d                                         ; $7d56: $82
    add hl, bc                                    ; $7d57: $09
    dec de                                        ; $7d58: $1b
    ld d, $00                                     ; $7d59: $16 $00
    ld b, $01                                     ; $7d5b: $06 $01
    ld c, $00                                     ; $7d5d: $0e $00
    rst $38                                       ; $7d5f: $ff
    rlca                                          ; $7d60: $07
    ld bc, $03fb                                  ; $7d61: $01 $fb $03
    or $00                                        ; $7d64: $f6 $00
    or $fc                                        ; $7d66: $f6 $fc
    add d                                         ; $7d68: $82
    inc [hl]                                      ; $7d69: $34
    inc a                                         ; $7d6a: $3c
    inc bc                                        ; $7d6b: $03
    ld a, [hl]                                    ; $7d6c: $7e
    adc l                                         ; $7d6d: $8d
    ld h, [hl]                                    ; $7d6e: $66
    ld a, [hl]                                    ; $7d6f: $7e
    ld e, d                                       ; $7d70: $5a
    db $fc                                        ; $7d71: $fc
    ld b, b                                       ; $7d72: $40
    xor $f6                                       ; $7d73: $ee $f6
    ld [hl], l                                    ; $7d75: $75
    rst $38                                       ; $7d76: $ff
    dec d                                         ; $7d77: $15
    ld a, a                                       ; $7d78: $7f
    scf                                           ; $7d79: $37
    dec a                                         ; $7d7a: $3d
    ld [bc], a                                    ; $7d7b: $02
    ld a, $82                                     ; $7d7c: $3e $82
    ld [de], a                                    ; $7d7e: $12
    ld [hl], $0a                                  ; $7d7f: $36 $0a
    nop                                           ; $7d81: $00
    rst $38                                       ; $7d82: $ff
    rlca                                          ; $7d83: $07
    ld bc, $03fc                                  ; $7d84: $01 $fc $03
    or $00                                        ; $7d87: $f6 $00
    or $fc                                        ; $7d89: $f6 $fc
    ld [bc], a                                    ; $7d8b: $02
    inc e                                         ; $7d8c: $1c
    adc c                                         ; $7d8d: $89
    ld h, $3e                                     ; $7d8e: $26 $3e
    ld a, d                                       ; $7d90: $7a
    ld b, [hl]                                    ; $7d91: $46
    ld a, [hl]                                    ; $7d92: $7e
    ld e, d                                       ; $7d93: $5a
    inc a                                         ; $7d94: $3c
    nop                                           ; $7d95: $00
    ld a, h                                       ; $7d96: $7c
    ld [bc], a                                    ; $7d97: $02
    ld l, [hl]                                    ; $7d98: $6e
    add l                                         ; $7d99: $85
    rst $38                                       ; $7d9a: $ff
    rst $28                                       ; $7d9b: $ef
    db $fd                                        ; $7d9c: $fd
    ld a, [hl]                                    ; $7d9d: $7e
    ld e, d                                       ; $7d9e: $5a
    ld [bc], a                                    ; $7d9f: $02
    ld a, [hl]                                    ; $7da0: $7e
    add d                                         ; $7da1: $82
    inc h                                         ; $7da2: $24
    ld [hl], $0a                                  ; $7da3: $36 $0a
    nop                                           ; $7da5: $00
    rst $38                                       ; $7da6: $ff
    add hl, bc                                    ; $7da7: $09
    ld [bc], a                                    ; $7da8: $02
    db $fc                                        ; $7da9: $fc
    inc bc                                        ; $7daa: $03
    or $00                                        ; $7dab: $f6 $00
    push af                                       ; $7dad: $f5
    ei                                            ; $7dae: $fb
    push af                                       ; $7daf: $f5
    db $fd                                        ; $7db0: $fd
    ld [bc], a                                    ; $7db1: $02
    ld c, $8f                                     ; $7db2: $0e $8f
    inc de                                        ; $7db4: $13
    rra                                           ; $7db5: $1f
    dec a                                         ; $7db6: $3d
    inc hl                                        ; $7db7: $23
    ccf                                           ; $7db8: $3f
    dec l                                         ; $7db9: $2d
    sbc $40                                       ; $7dba: $de $40
    rst $38                                       ; $7dbc: $ff
    rst $30                                       ; $7dbd: $f7
    dec [hl]                                      ; $7dbe: $35
    ld a, a                                       ; $7dbf: $7f
    ld d, $3f                                     ; $7dc0: $16 $3f
    ld e, $03                                     ; $7dc2: $1e $03
    rra                                           ; $7dc4: $1f
    ld [bc], a                                    ; $7dc5: $02
    dec de                                        ; $7dc6: $1b
    add d                                         ; $7dc7: $82
    ld [de], a                                    ; $7dc8: $12
    dec de                                        ; $7dc9: $1b
    stop                                          ; $7dca: $10 $00
    add d                                         ; $7dcc: $82
    inc bc                                        ; $7dcd: $03
    ld [bc], a                                    ; $7dce: $02
    ld [bc], a                                    ; $7dcf: $02
    inc bc                                        ; $7dd0: $03
    add d                                         ; $7dd1: $82
    nop                                           ; $7dd2: $00
    ld [bc], a                                    ; $7dd3: $02
    ld [de], a                                    ; $7dd4: $12
    nop                                           ; $7dd5: $00
    rst $38                                       ; $7dd6: $ff
    add hl, bc                                    ; $7dd7: $09
    ld [bc], a                                    ; $7dd8: $02
    db $fc                                        ; $7dd9: $fc
    inc bc                                        ; $7dda: $03
    or $00                                        ; $7ddb: $f6 $00
    di                                            ; $7ddd: $f3
    ei                                            ; $7dde: $fb
    di                                            ; $7ddf: $f3
    db $fd                                        ; $7de0: $fd
    ld [bc], a                                    ; $7de1: $02
    ld c, $8f                                     ; $7de2: $0e $8f
    inc de                                        ; $7de4: $13
    rra                                           ; $7de5: $1f
    dec a                                         ; $7de6: $3d
    inc hl                                        ; $7de7: $23
    ccf                                           ; $7de8: $3f
    dec l                                         ; $7de9: $2d
    rst $18                                       ; $7dea: $df
    ld b, c                                       ; $7deb: $41
    rst $38                                       ; $7dec: $ff
    rst $30                                       ; $7ded: $f7
    dec [hl]                                      ; $7dee: $35
    ld a, a                                       ; $7def: $7f
    ld d, $3f                                     ; $7df0: $16 $3f
    ld e, $05                                     ; $7df2: $1e $05
    rra                                           ; $7df4: $1f
    add d                                         ; $7df5: $82
    ld [de], a                                    ; $7df6: $12
    dec de                                        ; $7df7: $1b
    ld c, $00                                     ; $7df8: $0e $00
    add d                                         ; $7dfa: $82
    inc bc                                        ; $7dfb: $03
    ld [bc], a                                    ; $7dfc: $02
    ld [bc], a                                    ; $7dfd: $02
    inc bc                                        ; $7dfe: $03
    add d                                         ; $7dff: $82
    nop                                           ; $7e00: $00
    ld [bc], a                                    ; $7e01: $02
    inc d                                         ; $7e02: $14
    nop                                           ; $7e03: $00
    rst $38                                       ; $7e04: $ff
    add hl, bc                                    ; $7e05: $09

jr_0df_7e06:
    ld [bc], a                                    ; $7e06: $02
    db $fc                                        ; $7e07: $fc
    inc bc                                        ; $7e08: $03
    or $00                                        ; $7e09: $f6 $00
    db $f4                                        ; $7e0b: $f4
    ei                                            ; $7e0c: $fb
    db $f4                                        ; $7e0d: $f4
    db $fd                                        ; $7e0e: $fd
    ld [bc], a                                    ; $7e0f: $02
    ld c, $8f                                     ; $7e10: $0e $8f
    inc de                                        ; $7e12: $13
    rra                                           ; $7e13: $1f
    dec a                                         ; $7e14: $3d
    inc hl                                        ; $7e15: $23
    ccf                                           ; $7e16: $3f
    dec l                                         ; $7e17: $2d
    sbc $40                                       ; $7e18: $de $40
    rst $38                                       ; $7e1a: $ff
    rst $30                                       ; $7e1b: $f7
    dec [hl]                                      ; $7e1c: $35
    ld a, a                                       ; $7e1d: $7f
    ld d, $3f                                     ; $7e1e: $16 $3f
    ld e, $05                                     ; $7e20: $1e $05
    rra                                           ; $7e22: $1f
    add d                                         ; $7e23: $82
    ld [de], a                                    ; $7e24: $12
    dec de                                        ; $7e25: $1b
    stop                                          ; $7e26: $10 $00
    add d                                         ; $7e28: $82
    inc bc                                        ; $7e29: $03
    ld [bc], a                                    ; $7e2a: $02
    ld [bc], a                                    ; $7e2b: $02
    inc bc                                        ; $7e2c: $03
    add d                                         ; $7e2d: $82
    nop                                           ; $7e2e: $00
    ld [bc], a                                    ; $7e2f: $02
    ld [de], a                                    ; $7e30: $12
    nop                                           ; $7e31: $00
    rst $38                                       ; $7e32: $ff
    dec c                                         ; $7e33: $0d
    inc b                                         ; $7e34: $04
    ld sp, hl                                     ; $7e35: $f9
    ld b, $ea                                     ; $7e36: $06 $ea
    nop                                           ; $7e38: $00
    ld [$eaf9], a                                 ; $7e39: $ea $f9 $ea
    rst $38                                       ; $7e3c: $ff
    ld a, [$fafb]                                 ; $7e3d: $fa $fb $fa
    rst $38                                       ; $7e40: $ff
    ld [bc], a                                    ; $7e41: $02
    rlca                                          ; $7e42: $07
    sbc [hl]                                      ; $7e43: $9e
    rrca                                          ; $7e44: $0f
    dec c                                         ; $7e45: $0d
    add hl, bc                                    ; $7e46: $09
    rrca                                          ; $7e47: $0f
    rra                                           ; $7e48: $1f
    ld a, [de]                                    ; $7e49: $1a
    rla                                           ; $7e4a: $17
    ld a, [de]                                    ; $7e4b: $1a
    add hl, de                                    ; $7e4c: $19
    ld e, $2c                                     ; $7e4d: $1e $2c
    ccf                                           ; $7e4f: $3f
    ld d, d                                       ; $7e50: $52
    ld a, a                                       ; $7e51: $7f
    ld d, a                                       ; $7e52: $57
    ld a, a                                       ; $7e53: $7f
    ld e, e                                       ; $7e54: $5b
    ld a, a                                       ; $7e55: $7f
    cp [hl]                                       ; $7e56: $be
    rst $38                                       ; $7e57: $ff
    or [hl]                                       ; $7e58: $b6
    rst $38                                       ; $7e59: $ff
    cp a                                          ; $7e5a: $bf
    rst $38                                       ; $7e5b: $ff
    rst $30                                       ; $7e5c: $f7
    rst $38                                       ; $7e5d: $ff
    ld [hl], l                                    ; $7e5e: $75
    sbc a                                         ; $7e5f: $9f
    ld [hl], h                                    ; $7e60: $74
    ld e, a                                       ; $7e61: $5f
    ld [bc], a                                    ; $7e62: $02
    jr nc, jr_0df_7e06                            ; $7e63: $30 $a1

    jr z, jr_0df_7e7f                             ; $7e65: $28 $18

    db $10                                        ; $7e67: $10
    jr c, jr_0df_7e96                             ; $7e68: $38 $2c

    inc e                                         ; $7e6a: $1c
    inc l                                         ; $7e6b: $2c
    inc e                                         ; $7e6c: $1c
    inc d                                         ; $7e6d: $14
    inc a                                         ; $7e6e: $3c
    inc c                                         ; $7e6f: $0c
    inc a                                         ; $7e70: $3c
    ld [hl], $3e                                  ; $7e71: $36 $3e
    ld [hl-], a                                   ; $7e73: $32
    ld a, $29                                     ; $7e74: $3e $29
    ccf                                           ; $7e76: $3f
    dec a                                         ; $7e77: $3d
    cpl                                           ; $7e78: $2f

jr_0df_7e79:
    dec d                                         ; $7e79: $15
    ccf                                           ; $7e7a: $3f
    dec [hl]                                      ; $7e7b: $35
    ccf                                           ; $7e7c: $3f
    dec l                                         ; $7e7d: $2d
    ccf                                           ; $7e7e: $3f

jr_0df_7e7f:
    scf                                           ; $7e7f: $37
    ccf                                           ; $7e80: $3f
    scf                                           ; $7e81: $37
    inc l                                         ; $7e82: $2c
    push af                                       ; $7e83: $f5
    rst $38                                       ; $7e84: $ff
    ld e, [hl]                                    ; $7e85: $5e
    inc bc                                        ; $7e86: $03
    ld a, a                                       ; $7e87: $7f
    ld [bc], a                                    ; $7e88: $02
    dec sp                                        ; $7e89: $3b
    add h                                         ; $7e8a: $84
    ld l, d                                       ; $7e8b: $6a
    ld a, e                                       ; $7e8c: $7b
    pop de                                        ; $7e8d: $d1
    pop af                                        ; $7e8e: $f1
    ld [bc], a                                    ; $7e8f: $02
    ld h, b                                       ; $7e90: $60
    ld [de], a                                    ; $7e91: $12
    nop                                           ; $7e92: $00
    add d                                         ; $7e93: $82
    rlca                                          ; $7e94: $07
    dec c                                         ; $7e95: $0d

jr_0df_7e96:
    ld [bc], a                                    ; $7e96: $02
    ld c, $02                                     ; $7e97: $0e $02
    inc c                                         ; $7e99: $0c
    ld [bc], a                                    ; $7e9a: $02
    ld [$0c02], sp                                ; $7e9b: $08 $02 $0c
    add d                                         ; $7e9e: $82
    ld [bc], a                                    ; $7e9f: $02
    ld c, $02                                     ; $7ea0: $0e $02
    inc c                                         ; $7ea2: $0c
    ld [de], a                                    ; $7ea3: $12
    nop                                           ; $7ea4: $00
    rst $38                                       ; $7ea5: $ff
    dec c                                         ; $7ea6: $0d
    inc b                                         ; $7ea7: $04
    ld sp, hl                                     ; $7ea8: $f9
    ld b, $ea                                     ; $7ea9: $06 $ea
    nop                                           ; $7eab: $00
    ld [$eaf9], a                                 ; $7eac: $ea $f9 $ea
    rst $38                                       ; $7eaf: $ff
    ld a, [$fafb]                                 ; $7eb0: $fa $fb $fa
    cp $02                                        ; $7eb3: $fe $02
    rlca                                          ; $7eb5: $07
    sbc [hl]                                      ; $7eb6: $9e
    rrca                                          ; $7eb7: $0f
    dec c                                         ; $7eb8: $0d
    add hl, bc                                    ; $7eb9: $09
    rrca                                          ; $7eba: $0f
    rra                                           ; $7ebb: $1f
    ld a, [de]                                    ; $7ebc: $1a
    rla                                           ; $7ebd: $17
    ld a, [de]                                    ; $7ebe: $1a
    add hl, de                                    ; $7ebf: $19
    ld e, $2c                                     ; $7ec0: $1e $2c
    ccf                                           ; $7ec2: $3f
    ld d, d                                       ; $7ec3: $52
    ld a, a                                       ; $7ec4: $7f
    ld d, a                                       ; $7ec5: $57
    ld a, a                                       ; $7ec6: $7f
    ld e, e                                       ; $7ec7: $5b
    ld a, a                                       ; $7ec8: $7f
    cp [hl]                                       ; $7ec9: $be
    rst $38                                       ; $7eca: $ff
    or [hl]                                       ; $7ecb: $b6
    rst $38                                       ; $7ecc: $ff
    cp a                                          ; $7ecd: $bf
    rst $38                                       ; $7ece: $ff
    rst $30                                       ; $7ecf: $f7
    rst $38                                       ; $7ed0: $ff
    ld [hl], l                                    ; $7ed1: $75
    sbc a                                         ; $7ed2: $9f
    ld [hl], h                                    ; $7ed3: $74
    ld e, a                                       ; $7ed4: $5f
    ld [bc], a                                    ; $7ed5: $02
    jr nc, jr_0df_7e79                            ; $7ed6: $30 $a1

    jr z, @+$1a                                   ; $7ed8: $28 $18

    db $10                                        ; $7eda: $10
    jr c, jr_0df_7f09                             ; $7edb: $38 $2c

    inc e                                         ; $7edd: $1c
    inc l                                         ; $7ede: $2c
    inc e                                         ; $7edf: $1c
    inc d                                         ; $7ee0: $14
    inc a                                         ; $7ee1: $3c
    inc c                                         ; $7ee2: $0c
    inc a                                         ; $7ee3: $3c
    ld [hl], $3e                                  ; $7ee4: $36 $3e
    ld [hl-], a                                   ; $7ee6: $32
    ld a, $29                                     ; $7ee7: $3e $29
    ccf                                           ; $7ee9: $3f
    dec a                                         ; $7eea: $3d
    cpl                                           ; $7eeb: $2f
    dec d                                         ; $7eec: $15
    ccf                                           ; $7eed: $3f
    add hl, sp                                    ; $7eee: $39
    ccf                                           ; $7eef: $3f
    ld a, [hl-]                                   ; $7ef0: $3a
    ld c, $3e                                     ; $7ef1: $0e $3e
    ld c, $34                                     ; $7ef3: $0e $34
    inc a                                         ; $7ef5: $3c
    push af                                       ; $7ef6: $f5
    rst $38                                       ; $7ef7: $ff
    ld e, [hl]                                    ; $7ef8: $5e
    inc bc                                        ; $7ef9: $03
    ld a, a                                       ; $7efa: $7f
    ld [bc], a                                    ; $7efb: $02
    dec sp                                        ; $7efc: $3b
    add h                                         ; $7efd: $84
    ld l, d                                       ; $7efe: $6a
    ld a, e                                       ; $7eff: $7b
    pop de                                        ; $7f00: $d1
    pop af                                        ; $7f01: $f1
    ld [bc], a                                    ; $7f02: $02
    ld h, b                                       ; $7f03: $60
    ld [de], a                                    ; $7f04: $12
    nop                                           ; $7f05: $00
    add c                                         ; $7f06: $81
    ld [bc], a                                    ; $7f07: $02
    dec b                                         ; $7f08: $05

jr_0df_7f09:
    ld b, $02                                     ; $7f09: $06 $02
    inc b                                         ; $7f0b: $04
    ld [bc], a                                    ; $7f0c: $02
    ld b, $82                                     ; $7f0d: $06 $82
    ld bc, $0207                                  ; $7f0f: $01 $07 $02
    ld b, $12                                     ; $7f12: $06 $12
    nop                                           ; $7f14: $00
    rst $38                                       ; $7f15: $ff
    dec c                                         ; $7f16: $0d
    inc b                                         ; $7f17: $04
    ld sp, hl                                     ; $7f18: $f9
    ld b, $ea                                     ; $7f19: $06 $ea
    nop                                           ; $7f1b: $00
    db $eb                                        ; $7f1c: $eb
    ld sp, hl                                     ; $7f1d: $f9
    db $eb                                        ; $7f1e: $eb
    nop                                           ; $7f1f: $00
    ei                                            ; $7f20: $fb
    ei                                            ; $7f21: $fb
    ei                                            ; $7f22: $fb
    cp $02                                        ; $7f23: $fe $02
    rlca                                          ; $7f25: $07
    ld [bc], a                                    ; $7f26: $02
    rrca                                          ; $7f27: $0f
    add e                                         ; $7f28: $83
    dec bc                                        ; $7f29: $0b
    dec c                                         ; $7f2a: $0d
    ld [de], a                                    ; $7f2b: $12
    ld [bc], a                                    ; $7f2c: $02
    rra                                           ; $7f2d: $1f
    sub a                                         ; $7f2e: $97
    ld a, [de]                                    ; $7f2f: $1a
    add hl, de                                    ; $7f30: $19
    ld e, $2d                                     ; $7f31: $1e $2d
    ld a, $37                                     ; $7f33: $3e $37
    ccf                                           ; $7f35: $3f
    ld d, a                                       ; $7f36: $57
    ld a, a                                       ; $7f37: $7f
    ld e, e                                       ; $7f38: $5b
    ld a, a                                       ; $7f39: $7f
    cp a                                          ; $7f3a: $bf
    db $fc                                        ; $7f3b: $fc
    or a                                          ; $7f3c: $b7
    db $fd                                        ; $7f3d: $fd
    cp a                                          ; $7f3e: $bf
    rst $38                                       ; $7f3f: $ff
    push af                                       ; $7f40: $f5
    rst $38                                       ; $7f41: $ff
    ld [hl], h                                    ; $7f42: $74
    sbc a                                         ; $7f43: $9f
    ld a, l                                       ; $7f44: $7d
    ld e, a                                       ; $7f45: $5f
    ld [bc], a                                    ; $7f46: $02
    ld h, b                                       ; $7f47: $60
    add c                                         ; $7f48: $81
    ld d, b                                       ; $7f49: $50
    ld [bc], a                                    ; $7f4a: $02
    ld [hl], b                                    ; $7f4b: $70
    sub c                                         ; $7f4c: $91
    jr nc, jr_0df_7f67                            ; $7f4d: $30 $18

    ld a, b                                       ; $7f4f: $78
    ld e, b                                       ; $7f50: $58
    jr c, jr_0df_7fbb                             ; $7f51: $38 $68

    jr c, jr_0df_7f59                             ; $7f53: $38 $04

    ld a, h                                       ; $7f55: $7c
    ld l, d                                       ; $7f56: $6a
    ld a, [hl]                                    ; $7f57: $7e
    ld e, c                                       ; $7f58: $59

jr_0df_7f59:
    ld a, a                                       ; $7f59: $7f
    ld a, l                                       ; $7f5a: $7d
    ld a, a                                       ; $7f5b: $7f

jr_0df_7f5c:
    ld b, e                                       ; $7f5c: $43
    ld a, a                                       ; $7f5d: $7f
    ld [bc], a                                    ; $7f5e: $02
    ld a, [hl]                                    ; $7f5f: $7e
    adc d                                         ; $7f60: $8a
    ld l, b                                       ; $7f61: $68
    ld a, b                                       ; $7f62: $78
    ld c, b                                       ; $7f63: $48
    ld a, b                                       ; $7f64: $78
    ld l, b                                       ; $7f65: $68
    ld e, b                                       ; $7f66: $58

jr_0df_7f67:
    jr z, jr_0df_7fe1                             ; $7f67: $28 $78

    sbc $ff                                       ; $7f69: $de $ff
    ld [bc], a                                    ; $7f6b: $02
    ld a, a                                       ; $7f6c: $7f
    ld [bc], a                                    ; $7f6d: $02
    dec sp                                        ; $7f6e: $3b
    add h                                         ; $7f6f: $84
    ld l, d                                       ; $7f70: $6a
    ld a, e                                       ; $7f71: $7b
    pop de                                        ; $7f72: $d1
    pop af                                        ; $7f73: $f1
    ld [bc], a                                    ; $7f74: $02
    ld h, b                                       ; $7f75: $60
    inc d                                         ; $7f76: $14
    nop                                           ; $7f77: $00
    inc b                                         ; $7f78: $04
    ld b, $02                                     ; $7f79: $06 $02
    inc b                                         ; $7f7b: $04
    ld [bc], a                                    ; $7f7c: $02
    ld b, $82                                     ; $7f7d: $06 $82
    ld bc, $0207                                  ; $7f7f: $01 $07 $02
    ld b, $14                                     ; $7f82: $06 $14
    nop                                           ; $7f84: $00
    rst $38                                       ; $7f85: $ff
    dec c                                         ; $7f86: $0d
    inc b                                         ; $7f87: $04
    ld sp, hl                                     ; $7f88: $f9
    ld [$01f2], sp                                ; $7f89: $08 $f2 $01
    rst $28                                       ; $7f8c: $ef
    ld a, [$00f0]                                 ; $7f8d: $fa $f0 $00
    rst $38                                       ; $7f90: $ff
    ld sp, hl                                     ; $7f91: $f9
    rst $38                                       ; $7f92: $ff
    nop                                           ; $7f93: $00
    ld [bc], a                                    ; $7f94: $02
    rlca                                          ; $7f95: $07
    sbc [hl]                                      ; $7f96: $9e
    rra                                           ; $7f97: $1f
    inc e                                         ; $7f98: $1c
    ccf                                           ; $7f99: $3f
    scf                                           ; $7f9a: $37
    ld a, a                                       ; $7f9b: $7f
    ld e, d                                       ; $7f9c: $5a
    ld a, a                                       ; $7f9d: $7f
    ld [hl], b                                    ; $7f9e: $70
    ld a, a                                       ; $7f9f: $7f
    ld l, l                                       ; $7fa0: $6d
    ld [hl-], a                                   ; $7fa1: $32
    dec a                                         ; $7fa2: $3d
    rra                                           ; $7fa3: $1f
    ld [de], a                                    ; $7fa4: $12
    rra                                           ; $7fa5: $1f
    ld d, $3f                                     ; $7fa6: $16 $3f
    jr c, jr_0df_7fd9                             ; $7fa8: $38 $2f

    ccf                                           ; $7faa: $3f
    ld [hl], a                                    ; $7fab: $77
    ld a, a                                       ; $7fac: $7f
    xor a                                         ; $7fad: $af
    db $fd                                        ; $7fae: $fd
    or a                                          ; $7faf: $b7
    rst $38                                       ; $7fb0: $ff
    and a                                         ; $7fb1: $a7
    rst $38                                       ; $7fb2: $ff
    or a                                          ; $7fb3: $b7
    rst $38                                       ; $7fb4: $ff
    ld [bc], a                                    ; $7fb5: $02
    jr nc, jr_0df_7f5c                            ; $7fb6: $30 $a4

    jr c, jr_0df_7fe2                             ; $7fb8: $38 $28

    inc a                                         ; $7fba: $3c

jr_0df_7fbb:
    inc [hl]                                      ; $7fbb: $34
    inc a                                         ; $7fbc: $3c
    inc e                                         ; $7fbd: $1c
    inc a                                         ; $7fbe: $3c
    inc l                                         ; $7fbf: $2c
    jr jr_0df_7ffa                                ; $7fc0: $18 $38

    jr nc, @+$12                                  ; $7fc2: $30 $10

    jr nc, jr_0df_7fd6                            ; $7fc4: $30 $10

    jr z, @+$3a                                   ; $7fc6: $28 $38

    jr z, @+$3a                                   ; $7fc8: $28 $38

    inc e                                         ; $7fca: $1c
    inc a                                         ; $7fcb: $3c
    ld a, [hl+]                                   ; $7fcc: $2a
    ld a, $1a                                     ; $7fcd: $3e $1a
    ld a, $0a                                     ; $7fcf: $3e $0a
    ld a, $1a                                     ; $7fd1: $3e $1a
    ld a, $e9                                     ; $7fd3: $3e $e9
    rst $38                                       ; $7fd5: $ff

jr_0df_7fd6:
    sub [hl]                                      ; $7fd6: $96
    cp $bf                                        ; $7fd7: $fe $bf

jr_0df_7fd9:
    rst $38                                       ; $7fd9: $ff
    rst $08                                       ; $7fda: $cf
    ei                                            ; $7fdb: $fb
    inc e                                         ; $7fdc: $1c
    nop                                           ; $7fdd: $00
    add h                                         ; $7fde: $84
    ld a, l                                       ; $7fdf: $7d
    ld a, a                                       ; $7fe0: $7f

jr_0df_7fe1:
    ld [hl], e                                    ; $7fe1: $73

jr_0df_7fe2:
    ld e, a                                       ; $7fe2: $5f
    ld a, [de]                                    ; $7fe3: $1a
    nop                                           ; $7fe4: $00
    rst $38                                       ; $7fe5: $ff
    rlca                                          ; $7fe6: $07
    ld bc, $07f8                                  ; $7fe7: $01 $f8 $07
    pop af                                        ; $7fea: $f1
    nop                                           ; $7feb: $00
    di                                            ; $7fec: $f3
    ld hl, sp-$7c                                 ; $7fed: $f8 $84
    nop                                           ; $7fef: $00
    ld [bc], a                                    ; $7ff0: $02
    nop                                           ; $7ff1: $00
    ld bc, $001c                                  ; $7ff2: $01 $1c $00
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff

jr_0df_7ffa:
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_0df_7fff:
    rst $38                                       ; $7fff: $ff
