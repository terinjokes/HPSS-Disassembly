; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e1", ROMX[$4000], BANK[$e1]

    pop hl                                        ; $4000: $e1
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld a, [$f204]                                 ; $4003: $fa $04 $f2
    ei                                            ; $4006: $fb
    ld [c], a                                     ; $4007: $e2
    ld sp, hl                                     ; $4008: $f9
    ld [c], a                                     ; $4009: $e2
    cp $f2                                        ; $400a: $fe $f2
    ld hl, sp-$0e                                 ; $400c: $f8 $f2
    rst $38                                       ; $400e: $ff
    ld [bc], a                                    ; $400f: $02
    rrca                                          ; $4010: $0f
    adc h                                         ; $4011: $8c
    rla                                           ; $4012: $17
    rra                                           ; $4013: $1f
    add hl, de                                    ; $4014: $19
    rra                                           ; $4015: $1f
    ld l, $3f                                     ; $4016: $2e $3f
    ld b, a                                       ; $4018: $47
    ld a, a                                       ; $4019: $7f
    ld d, b                                       ; $401a: $50
    ld a, a                                       ; $401b: $7f
    ld l, l                                       ; $401c: $6d
    ld a, a                                       ; $401d: $7f
    ld [bc], a                                    ; $401e: $02
    ccf                                           ; $401f: $3f
    inc bc                                        ; $4020: $03
    rra                                           ; $4021: $1f
    adc l                                         ; $4022: $8d
    jr jr_0e1_4054                                ; $4023: $18 $2f

    ccf                                           ; $4025: $3f
    ld d, b                                       ; $4026: $50
    ld a, a                                       ; $4027: $7f
    rst $28                                       ; $4028: $ef
    rst $38                                       ; $4029: $ff
    or b                                          ; $402a: $b0
    rst $38                                       ; $402b: $ff
    sbc d                                         ; $402c: $9a
    rst $38                                       ; $402d: $ff
    sbc l                                         ; $402e: $9d
    rst $38                                       ; $402f: $ff
    ld [bc], a                                    ; $4030: $02
    db $10                                        ; $4031: $10
    adc [hl]                                      ; $4032: $8e
    inc c                                         ; $4033: $0c
    inc e                                         ; $4034: $1c
    ld d, $1e                                     ; $4035: $16 $1e
    inc c                                         ; $4037: $0c
    inc e                                         ; $4038: $1c
    ld a, [de]                                    ; $4039: $1a
    ld e, $0a                                     ; $403a: $1e $0a
    ld e, $16                                     ; $403c: $1e $16
    ld e, $0c                                     ; $403e: $1e $0c
    inc e                                         ; $4040: $1c
    inc b                                         ; $4041: $04
    db $18, $aa                                   ; $4042: $18 $aa
    inc d                                         ; $4044: $14
    inc e                                         ; $4045: $1c
    ld a, [bc]                                    ; $4046: $0a
    ld e, $17                                     ; $4047: $1e $17
    rra                                           ; $4049: $1f
    dec c                                         ; $404a: $0d
    rra                                           ; $404b: $1f
    dec e                                         ; $404c: $1d
    rra                                           ; $404d: $1f
    add hl, de                                    ; $404e: $19
    rra                                           ; $404f: $1f
    rst $08                                       ; $4050: $cf
    rst $38                                       ; $4051: $ff
    sbc h                                         ; $4052: $9c
    rst $38                                       ; $4053: $ff

jr_0e1_4054:
    sbc b                                         ; $4054: $98
    rst $38                                       ; $4055: $ff
    sub b                                         ; $4056: $90
    rst $38                                       ; $4057: $ff
    or b                                          ; $4058: $b0
    rst $38                                       ; $4059: $ff
    ldh [rIE], a                                  ; $405a: $e0 $ff
    ld h, b                                       ; $405c: $60
    ld a, a                                       ; $405d: $7f
    jr nz, jr_0e1_409f                            ; $405e: $20 $3f

    ld b, b                                       ; $4060: $40
    ld a, a                                       ; $4061: $7f
    ld b, b                                       ; $4062: $40
    ld a, a                                       ; $4063: $7f
    ld b, d                                       ; $4064: $42
    ld a, a                                       ; $4065: $7f
    ld h, b                                       ; $4066: $60
    ld a, a                                       ; $4067: $7f
    ld d, c                                       ; $4068: $51
    ld a, a                                       ; $4069: $7f
    ld a, [hl+]                                   ; $406a: $2a
    ccf                                           ; $406b: $3f
    dec e                                         ; $406c: $1d
    rra                                           ; $406d: $1f
    ld [bc], a                                    ; $406e: $02
    inc bc                                        ; $406f: $03
    sbc [hl]                                      ; $4070: $9e
    ld a, c                                       ; $4071: $79
    ld a, a                                       ; $4072: $7f
    add hl, sp                                    ; $4073: $39
    ld a, a                                       ; $4074: $7f
    dec e                                         ; $4075: $1d
    ld a, a                                       ; $4076: $7f
    dec c                                         ; $4077: $0d
    ld a, a                                       ; $4078: $7f
    rrca                                          ; $4079: $0f
    ld a, a                                       ; $407a: $7f
    ld b, $7e                                     ; $407b: $06 $7e

jr_0e1_407d:
    inc b                                         ; $407d: $04
    ld a, h                                       ; $407e: $7c
    inc b                                         ; $407f: $04
    ld a, h                                       ; $4080: $7c
    inc b                                         ; $4081: $04
    ld a, h                                       ; $4082: $7c
    inc b                                         ; $4083: $04
    ld a, h                                       ; $4084: $7c
    ld [bc], a                                    ; $4085: $02
    ld a, [hl]                                    ; $4086: $7e
    ld [bc], a                                    ; $4087: $02
    ld a, [hl]                                    ; $4088: $7e
    ld [bc], a                                    ; $4089: $02
    ld a, [hl]                                    ; $408a: $7e
    ld d, [hl]                                    ; $408b: $56
    ld a, [hl]                                    ; $408c: $7e
    inc l                                         ; $408d: $2c
    ld a, h                                       ; $408e: $7c
    ld [bc], a                                    ; $408f: $02
    ld a, b                                       ; $4090: $78
    rst $38                                       ; $4091: $ff
    dec c                                         ; $4092: $0d
    inc b                                         ; $4093: $04
    ld a, [$f204]                                 ; $4094: $fa $04 $f2
    ei                                            ; $4097: $fb
    db $e3                                        ; $4098: $e3
    ld sp, hl                                     ; $4099: $f9
    db $e3                                        ; $409a: $e3
    cp $f3                                        ; $409b: $fe $f3
    ld hl, sp-$0d                                 ; $409d: $f8 $f3

jr_0e1_409f:
    rst $38                                       ; $409f: $ff
    ld [bc], a                                    ; $40a0: $02
    rrca                                          ; $40a1: $0f
    adc h                                         ; $40a2: $8c
    rla                                           ; $40a3: $17
    rra                                           ; $40a4: $1f
    add hl, de                                    ; $40a5: $19
    rra                                           ; $40a6: $1f
    ld l, $3f                                     ; $40a7: $2e $3f
    ld b, a                                       ; $40a9: $47
    ld a, a                                       ; $40aa: $7f
    ld d, b                                       ; $40ab: $50
    ld a, a                                       ; $40ac: $7f
    ld l, l                                       ; $40ad: $6d
    ld a, a                                       ; $40ae: $7f
    ld [bc], a                                    ; $40af: $02
    ccf                                           ; $40b0: $3f
    inc bc                                        ; $40b1: $03
    rra                                           ; $40b2: $1f
    adc l                                         ; $40b3: $8d
    jr jr_0e1_40e5                                ; $40b4: $18 $2f

    ccf                                           ; $40b6: $3f
    ld d, b                                       ; $40b7: $50
    ld a, a                                       ; $40b8: $7f
    rst $28                                       ; $40b9: $ef
    rst $38                                       ; $40ba: $ff
    or b                                          ; $40bb: $b0
    rst $38                                       ; $40bc: $ff
    sbc d                                         ; $40bd: $9a
    rst $38                                       ; $40be: $ff
    sbc l                                         ; $40bf: $9d
    rst $38                                       ; $40c0: $ff
    ld [bc], a                                    ; $40c1: $02
    db $10                                        ; $40c2: $10
    adc [hl]                                      ; $40c3: $8e
    inc c                                         ; $40c4: $0c
    inc e                                         ; $40c5: $1c
    ld d, $1e                                     ; $40c6: $16 $1e
    inc c                                         ; $40c8: $0c
    inc e                                         ; $40c9: $1c
    ld a, [de]                                    ; $40ca: $1a
    ld e, $0a                                     ; $40cb: $1e $0a
    ld e, $16                                     ; $40cd: $1e $16
    ld e, $0c                                     ; $40cf: $1e $0c
    inc e                                         ; $40d1: $1c
    inc b                                         ; $40d2: $04
    jr jr_0e1_407d                                ; $40d3: $18 $a8

    inc d                                         ; $40d5: $14
    inc e                                         ; $40d6: $1c
    ld a, [bc]                                    ; $40d7: $0a
    ld e, $17                                     ; $40d8: $1e $17
    rra                                           ; $40da: $1f
    dec c                                         ; $40db: $0d
    rra                                           ; $40dc: $1f
    add hl, de                                    ; $40dd: $19
    rra                                           ; $40de: $1f
    add hl, de                                    ; $40df: $19
    rra                                           ; $40e0: $1f
    ld e, a                                       ; $40e1: $5f
    ld a, a                                       ; $40e2: $7f
    sbc h                                         ; $40e3: $9c
    rst $38                                       ; $40e4: $ff

jr_0e1_40e5:
    sbc b                                         ; $40e5: $98
    rst $38                                       ; $40e6: $ff
    or b                                          ; $40e7: $b0
    rst $38                                       ; $40e8: $ff
    ldh [rIE], a                                  ; $40e9: $e0 $ff
    ldh [rIE], a                                  ; $40eb: $e0 $ff
    ld h, b                                       ; $40ed: $60
    ld a, a                                       ; $40ee: $7f
    jr nz, jr_0e1_4130                            ; $40ef: $20 $3f

    ld b, b                                       ; $40f1: $40
    ld a, a                                       ; $40f2: $7f
    ld b, b                                       ; $40f3: $40
    ld a, a                                       ; $40f4: $7f
    ld b, b                                       ; $40f5: $40
    ld a, a                                       ; $40f6: $7f
    ld h, b                                       ; $40f7: $60
    ld a, a                                       ; $40f8: $7f
    ld d, l                                       ; $40f9: $55
    ld a, a                                       ; $40fa: $7f
    ld a, [hl-]                                   ; $40fb: $3a
    ccf                                           ; $40fc: $3f
    ld [bc], a                                    ; $40fd: $02
    rrca                                          ; $40fe: $0f
    ld [bc], a                                    ; $40ff: $02
    nop                                           ; $4100: $00
    sbc h                                         ; $4101: $9c
    ld a, d                                       ; $4102: $7a
    ld a, [hl]                                    ; $4103: $7e
    add hl, sp                                    ; $4104: $39
    ld a, a                                       ; $4105: $7f
    add hl, de                                    ; $4106: $19
    ld a, a                                       ; $4107: $7f
    dec c                                         ; $4108: $0d
    ld a, a                                       ; $4109: $7f
    rlca                                          ; $410a: $07
    ld a, a                                       ; $410b: $7f
    rlca                                          ; $410c: $07
    ld a, a                                       ; $410d: $7f
    ld b, $7e                                     ; $410e: $06 $7e

jr_0e1_4110:
    inc b                                         ; $4110: $04
    ld a, h                                       ; $4111: $7c
    ld [bc], a                                    ; $4112: $02
    ld a, [hl]                                    ; $4113: $7e
    ld [bc], a                                    ; $4114: $02
    ld a, [hl]                                    ; $4115: $7e
    ld [bc], a                                    ; $4116: $02
    ld a, [hl]                                    ; $4117: $7e
    ld b, $7e                                     ; $4118: $06 $7e
    ld a, [hl+]                                   ; $411a: $2a
    ld a, [hl]                                    ; $411b: $7e
    ld e, h                                       ; $411c: $5c
    ld a, h                                       ; $411d: $7c
    ld [bc], a                                    ; $411e: $02
    ld [hl], b                                    ; $411f: $70
    ld [bc], a                                    ; $4120: $02
    nop                                           ; $4121: $00
    rst $38                                       ; $4122: $ff
    dec c                                         ; $4123: $0d
    inc b                                         ; $4124: $04
    ld a, [$f204]                                 ; $4125: $fa $04 $f2
    ei                                            ; $4128: $fb
    ld [c], a                                     ; $4129: $e2
    ld sp, hl                                     ; $412a: $f9
    ld [c], a                                     ; $412b: $e2
    cp $f2                                        ; $412c: $fe $f2
    ld hl, sp-$0e                                 ; $412e: $f8 $f2

jr_0e1_4130:
    rst $38                                       ; $4130: $ff
    ld [bc], a                                    ; $4131: $02
    rrca                                          ; $4132: $0f
    adc h                                         ; $4133: $8c
    rla                                           ; $4134: $17
    rra                                           ; $4135: $1f
    add hl, de                                    ; $4136: $19
    rra                                           ; $4137: $1f
    ld l, $3f                                     ; $4138: $2e $3f
    ld b, a                                       ; $413a: $47
    ld a, a                                       ; $413b: $7f
    ld d, b                                       ; $413c: $50
    ld a, a                                       ; $413d: $7f
    ld l, l                                       ; $413e: $6d
    ld a, a                                       ; $413f: $7f
    ld [bc], a                                    ; $4140: $02
    ccf                                           ; $4141: $3f
    inc bc                                        ; $4142: $03
    rra                                           ; $4143: $1f
    adc l                                         ; $4144: $8d
    jr jr_0e1_4176                                ; $4145: $18 $2f

    ccf                                           ; $4147: $3f
    ld d, b                                       ; $4148: $50
    ld a, a                                       ; $4149: $7f
    rst $28                                       ; $414a: $ef
    rst $38                                       ; $414b: $ff
    or b                                          ; $414c: $b0
    rst $38                                       ; $414d: $ff
    cp d                                          ; $414e: $ba
    rst $38                                       ; $414f: $ff
    sbc l                                         ; $4150: $9d
    rst $38                                       ; $4151: $ff
    ld [bc], a                                    ; $4152: $02
    db $10                                        ; $4153: $10
    adc [hl]                                      ; $4154: $8e
    inc c                                         ; $4155: $0c
    inc e                                         ; $4156: $1c
    ld d, $1e                                     ; $4157: $16 $1e
    inc c                                         ; $4159: $0c
    inc e                                         ; $415a: $1c
    ld a, [de]                                    ; $415b: $1a
    ld e, $0a                                     ; $415c: $1e $0a
    ld e, $16                                     ; $415e: $1e $16
    ld e, $0c                                     ; $4160: $1e $0c
    inc e                                         ; $4162: $1c
    inc b                                         ; $4163: $04
    jr jr_0e1_4110                                ; $4164: $18 $aa

    inc d                                         ; $4166: $14
    inc e                                         ; $4167: $1c
    ld a, [bc]                                    ; $4168: $0a
    ld e, $17                                     ; $4169: $1e $17
    rra                                           ; $416b: $1f
    dec c                                         ; $416c: $0d
    rra                                           ; $416d: $1f
    add hl, de                                    ; $416e: $19
    rra                                           ; $416f: $1f
    add hl, de                                    ; $4170: $19
    rra                                           ; $4171: $1f
    sbc a                                         ; $4172: $9f
    rst $38                                       ; $4173: $ff
    sbc h                                         ; $4174: $9c
    rst $38                                       ; $4175: $ff

jr_0e1_4176:
    cp b                                          ; $4176: $b8
    rst $38                                       ; $4177: $ff
    or b                                          ; $4178: $b0
    rst $38                                       ; $4179: $ff
    ldh a, [rIE]                                  ; $417a: $f0 $ff
    ld h, b                                       ; $417c: $60
    ld a, a                                       ; $417d: $7f
    jr nz, jr_0e1_41bf                            ; $417e: $20 $3f

    jr nz, jr_0e1_41c1                            ; $4180: $20 $3f

    jr nz, jr_0e1_41c3                            ; $4182: $20 $3f

    jr nz, jr_0e1_41c5                            ; $4184: $20 $3f

    ld b, b                                       ; $4186: $40
    ld a, a                                       ; $4187: $7f
    ld b, b                                       ; $4188: $40
    ld a, a                                       ; $4189: $7f
    ld b, c                                       ; $418a: $41
    ld a, a                                       ; $418b: $7f
    ld l, d                                       ; $418c: $6a
    ld a, a                                       ; $418d: $7f
    dec [hl]                                      ; $418e: $35
    ccf                                           ; $418f: $3f
    ld [bc], a                                    ; $4190: $02
    rra                                           ; $4191: $1f
    sbc [hl]                                      ; $4192: $9e
    ld [hl], e                                    ; $4193: $73
    ld a, a                                       ; $4194: $7f
    add hl, sp                                    ; $4195: $39
    ld a, a                                       ; $4196: $7f
    add hl, de                                    ; $4197: $19
    ld a, a                                       ; $4198: $7f
    add hl, bc                                    ; $4199: $09
    ld a, a                                       ; $419a: $7f
    dec c                                         ; $419b: $0d
    ld a, a                                       ; $419c: $7f
    rlca                                          ; $419d: $07
    ld a, a                                       ; $419e: $7f
    ld b, $7e                                     ; $419f: $06 $7e
    inc b                                         ; $41a1: $04
    ld a, h                                       ; $41a2: $7c
    ld [bc], a                                    ; $41a3: $02
    ld a, [hl]                                    ; $41a4: $7e
    ld [bc], a                                    ; $41a5: $02
    ld a, [hl]                                    ; $41a6: $7e
    ld b, d                                       ; $41a7: $42
    ld a, [hl]                                    ; $41a8: $7e
    ld b, $7e                                     ; $41a9: $06 $7e
    ld a, [bc]                                    ; $41ab: $0a
    ld a, [hl]                                    ; $41ac: $7e
    ld d, h                                       ; $41ad: $54
    ld a, h                                       ; $41ae: $7c
    jr c, @+$7a                                   ; $41af: $38 $78

    ld [bc], a                                    ; $41b1: $02
    ld b, b                                       ; $41b2: $40
    rst $38                                       ; $41b3: $ff
    dec c                                         ; $41b4: $0d
    inc b                                         ; $41b5: $04
    ld a, [$f204]                                 ; $41b6: $fa $04 $f2
    ei                                            ; $41b9: $fb
    ld [c], a                                     ; $41ba: $e2
    ld sp, hl                                     ; $41bb: $f9
    ld [c], a                                     ; $41bc: $e2
    cp $f2                                        ; $41bd: $fe $f2

jr_0e1_41bf:
    ld hl, sp-$0e                                 ; $41bf: $f8 $f2

jr_0e1_41c1:
    rst $38                                       ; $41c1: $ff
    ld [bc], a                                    ; $41c2: $02

jr_0e1_41c3:
    rrca                                          ; $41c3: $0f
    add [hl]                                      ; $41c4: $86

jr_0e1_41c5:
    inc sp                                        ; $41c5: $33
    ccf                                           ; $41c6: $3f
    ld e, [hl]                                    ; $41c7: $5e
    ld a, a                                       ; $41c8: $7f
    dec [hl]                                      ; $41c9: $35
    dec hl                                        ; $41ca: $2b
    ld [bc], a                                    ; $41cb: $02
    ld a, a                                       ; $41cc: $7f
    sub [hl]                                      ; $41cd: $96
    ld e, a                                       ; $41ce: $5f
    ld [hl], h                                    ; $41cf: $74
    ld a, a                                       ; $41d0: $7f
    ld l, l                                       ; $41d1: $6d
    ccf                                           ; $41d2: $3f
    jr nz, jr_0e1_41f4                            ; $41d3: $20 $1f

    ld [de], a                                    ; $41d5: $12
    add hl, de                                    ; $41d6: $19
    ld d, $2f                                     ; $41d7: $16 $2f
    jr c, jr_0e1_4232                             ; $41d9: $38 $57

    ld a, a                                       ; $41db: $7f
    ret z                                         ; $41dc: $c8

    rst $38                                       ; $41dd: $ff
    and a                                         ; $41de: $a7
    rst $38                                       ; $41df: $ff
    ld hl, sp-$01                                 ; $41e0: $f8 $ff
    cp a                                          ; $41e2: $bf
    rst $38                                       ; $41e3: $ff
    ld [bc], a                                    ; $41e4: $02
    db $10                                        ; $41e5: $10
    add c                                         ; $41e6: $81
    ld [$1803], sp                                ; $41e7: $08 $03 $18
    ld [bc], a                                    ; $41ea: $02
    inc e                                         ; $41eb: $1c
    sub e                                         ; $41ec: $93
    ld d, $1e                                     ; $41ed: $16 $1e
    ld a, [de]                                    ; $41ef: $1a
    ld c, $1e                                     ; $41f0: $0e $1e
    ld d, $1c                                     ; $41f2: $16 $1c

jr_0e1_41f4:
    inc b                                         ; $41f4: $04
    jr jr_0e1_41ff                                ; $41f5: $18 $08

    jr jr_0e1_4201                                ; $41f7: $18 $08

    inc d                                         ; $41f9: $14
    inc e                                         ; $41fa: $1c
    ld a, [bc]                                    ; $41fb: $0a
    ld e, $13                                     ; $41fc: $1e $13
    rra                                           ; $41fe: $1f

jr_0e1_41ff:
    dec b                                         ; $41ff: $05
    inc bc                                        ; $4200: $03

jr_0e1_4201:
    rra                                           ; $4201: $1f
    sbc [hl]                                      ; $4202: $9e
    dec e                                         ; $4203: $1d
    rra                                           ; $4204: $1f
    ld c, a                                       ; $4205: $4f
    ld a, a                                       ; $4206: $7f
    adc l                                         ; $4207: $8d
    rst $38                                       ; $4208: $ff
    cp b                                          ; $4209: $b8
    rst $38                                       ; $420a: $ff
    ld sp, hl                                     ; $420b: $f9
    rst $18                                       ; $420c: $df
    ldh a, [$df]                                  ; $420d: $f0 $df
    or b                                          ; $420f: $b0
    rst $38                                       ; $4210: $ff
    ld h, b                                       ; $4211: $60
    ld a, a                                       ; $4212: $7f
    jr nz, jr_0e1_4254                            ; $4213: $20 $3f

    jr nz, jr_0e1_4256                            ; $4215: $20 $3f

    ld b, b                                       ; $4217: $40
    ld a, a                                       ; $4218: $7f
    ld b, b                                       ; $4219: $40
    ld a, a                                       ; $421a: $7f
    ld h, b                                       ; $421b: $60
    ld a, a                                       ; $421c: $7f
    ld d, l                                       ; $421d: $55
    ld a, a                                       ; $421e: $7f
    ld a, [hl-]                                   ; $421f: $3a
    ccf                                           ; $4220: $3f
    ld [bc], a                                    ; $4221: $02
    rrca                                          ; $4222: $0f
    ld [bc], a                                    ; $4223: $02
    nop                                           ; $4224: $00
    sbc h                                         ; $4225: $9c
    ld [hl], d                                    ; $4226: $72
    ld a, [hl]                                    ; $4227: $7e
    ld sp, $1d7f                                  ; $4228: $31 $7f $1d
    ld a, a                                       ; $422b: $7f
    rra                                           ; $422c: $1f
    ld a, e                                       ; $422d: $7b
    rrca                                          ; $422e: $0f
    ld a, e                                       ; $422f: $7b
    dec c                                         ; $4230: $0d
    ld a, a                                       ; $4231: $7f

jr_0e1_4232:
    ld b, $7e                                     ; $4232: $06 $7e
    inc b                                         ; $4234: $04
    ld a, h                                       ; $4235: $7c
    inc b                                         ; $4236: $04
    ld a, h                                       ; $4237: $7c
    ld [bc], a                                    ; $4238: $02
    ld a, [hl]                                    ; $4239: $7e
    ld [bc], a                                    ; $423a: $02
    ld a, [hl]                                    ; $423b: $7e
    ld b, $7e                                     ; $423c: $06 $7e
    ld a, [hl+]                                   ; $423e: $2a
    ld a, [hl]                                    ; $423f: $7e
    ld e, h                                       ; $4240: $5c
    ld a, h                                       ; $4241: $7c
    ld [bc], a                                    ; $4242: $02
    ld [hl], b                                    ; $4243: $70
    ld [bc], a                                    ; $4244: $02
    nop                                           ; $4245: $00
    rst $38                                       ; $4246: $ff
    dec c                                         ; $4247: $0d
    inc b                                         ; $4248: $04
    ld a, [$f204]                                 ; $4249: $fa $04 $f2
    ei                                            ; $424c: $fb
    db $e3                                        ; $424d: $e3
    ld sp, hl                                     ; $424e: $f9
    db $e3                                        ; $424f: $e3
    cp $f3                                        ; $4250: $fe $f3
    ld hl, sp-$0d                                 ; $4252: $f8 $f3

jr_0e1_4254:
    rst $38                                       ; $4254: $ff
    ld [bc], a                                    ; $4255: $02

jr_0e1_4256:
    rrca                                          ; $4256: $0f
    add [hl]                                      ; $4257: $86
    inc sp                                        ; $4258: $33
    ccf                                           ; $4259: $3f
    ld e, [hl]                                    ; $425a: $5e
    ld a, a                                       ; $425b: $7f
    dec [hl]                                      ; $425c: $35
    dec hl                                        ; $425d: $2b
    ld [bc], a                                    ; $425e: $02
    ld a, a                                       ; $425f: $7f
    sub [hl]                                      ; $4260: $96
    ld e, a                                       ; $4261: $5f
    ld [hl], h                                    ; $4262: $74
    ld a, a                                       ; $4263: $7f
    ld l, l                                       ; $4264: $6d
    ccf                                           ; $4265: $3f
    jr nz, jr_0e1_4287                            ; $4266: $20 $1f

    ld [de], a                                    ; $4268: $12
    add hl, de                                    ; $4269: $19
    ld d, $2f                                     ; $426a: $16 $2f
    jr c, jr_0e1_42c5                             ; $426c: $38 $57

    ld a, a                                       ; $426e: $7f
    ret z                                         ; $426f: $c8

    rst $38                                       ; $4270: $ff
    and a                                         ; $4271: $a7
    rst $38                                       ; $4272: $ff
    ld hl, sp-$01                                 ; $4273: $f8 $ff
    cp a                                          ; $4275: $bf
    rst $38                                       ; $4276: $ff
    ld [bc], a                                    ; $4277: $02
    db $10                                        ; $4278: $10
    add c                                         ; $4279: $81
    ld [$1803], sp                                ; $427a: $08 $03 $18
    ld [bc], a                                    ; $427d: $02
    inc e                                         ; $427e: $1c
    sub e                                         ; $427f: $93
    ld d, $1e                                     ; $4280: $16 $1e
    ld a, [de]                                    ; $4282: $1a
    ld c, $1e                                     ; $4283: $0e $1e
    ld d, $1c                                     ; $4285: $16 $1c

jr_0e1_4287:
    inc b                                         ; $4287: $04
    jr jr_0e1_4292                                ; $4288: $18 $08

    jr jr_0e1_4294                                ; $428a: $18 $08

    inc d                                         ; $428c: $14
    inc e                                         ; $428d: $1c
    ld a, [bc]                                    ; $428e: $0a
    ld e, $13                                     ; $428f: $1e $13
    rra                                           ; $4291: $1f

jr_0e1_4292:
    dec b                                         ; $4292: $05
    inc bc                                        ; $4293: $03

jr_0e1_4294:
    rra                                           ; $4294: $1f
    sbc h                                         ; $4295: $9c
    dec e                                         ; $4296: $1d
    rra                                           ; $4297: $1f
    ld c, a                                       ; $4298: $4f
    ld a, a                                       ; $4299: $7f
    adc l                                         ; $429a: $8d
    rst $38                                       ; $429b: $ff
    cp c                                          ; $429c: $b9
    rst $38                                       ; $429d: $ff
    ld hl, sp-$21                                 ; $429e: $f8 $df
    ldh a, [$df]                                  ; $42a0: $f0 $df
    or b                                          ; $42a2: $b0
    rst $38                                       ; $42a3: $ff
    ld h, b                                       ; $42a4: $60
    ld a, a                                       ; $42a5: $7f
    jr nz, jr_0e1_42e7                            ; $42a6: $20 $3f

    ld b, b                                       ; $42a8: $40
    ld a, a                                       ; $42a9: $7f
    ld b, b                                       ; $42aa: $40
    ld a, a                                       ; $42ab: $7f
    ld l, b                                       ; $42ac: $68
    ld a, a                                       ; $42ad: $7f
    dec [hl]                                      ; $42ae: $35
    ccf                                           ; $42af: $3f
    ld a, [de]                                    ; $42b0: $1a
    rra                                           ; $42b1: $1f
    ld [bc], a                                    ; $42b2: $02
    rlca                                          ; $42b3: $07
    inc b                                         ; $42b4: $04
    nop                                           ; $42b5: $00
    sbc d                                         ; $42b6: $9a
    ld [hl], d                                    ; $42b7: $72
    ld a, [hl]                                    ; $42b8: $7e
    ld sp, $1d7f                                  ; $42b9: $31 $7f $1d
    ld a, a                                       ; $42bc: $7f
    rra                                           ; $42bd: $1f
    ld a, e                                       ; $42be: $7b
    rrca                                          ; $42bf: $0f
    ld a, e                                       ; $42c0: $7b
    dec c                                         ; $42c1: $0d
    ld a, a                                       ; $42c2: $7f
    ld b, $7e                                     ; $42c3: $06 $7e

jr_0e1_42c5:
    inc b                                         ; $42c5: $04
    ld a, h                                       ; $42c6: $7c
    ld [bc], a                                    ; $42c7: $02
    ld a, [hl]                                    ; $42c8: $7e
    ld [bc], a                                    ; $42c9: $02
    ld a, [hl]                                    ; $42ca: $7e
    ld b, $7e                                     ; $42cb: $06 $7e
    ld a, [hl+]                                   ; $42cd: $2a
    ld a, [hl]                                    ; $42ce: $7e
    ld e, h                                       ; $42cf: $5c
    ld a, h                                       ; $42d0: $7c
    ld [bc], a                                    ; $42d1: $02
    ld [hl], b                                    ; $42d2: $70
    inc b                                         ; $42d3: $04
    nop                                           ; $42d4: $00
    rst $38                                       ; $42d5: $ff
    dec c                                         ; $42d6: $0d
    inc b                                         ; $42d7: $04
    ld a, [$f204]                                 ; $42d8: $fa $04 $f2
    ei                                            ; $42db: $fb
    ld [c], a                                     ; $42dc: $e2
    ld sp, hl                                     ; $42dd: $f9
    ld [c], a                                     ; $42de: $e2
    cp $f2                                        ; $42df: $fe $f2
    ld hl, sp-$0e                                 ; $42e1: $f8 $f2
    rst $38                                       ; $42e3: $ff
    ld [bc], a                                    ; $42e4: $02
    rrca                                          ; $42e5: $0f
    add [hl]                                      ; $42e6: $86

jr_0e1_42e7:
    inc sp                                        ; $42e7: $33
    ccf                                           ; $42e8: $3f
    ld e, [hl]                                    ; $42e9: $5e
    ld a, a                                       ; $42ea: $7f
    dec [hl]                                      ; $42eb: $35
    dec hl                                        ; $42ec: $2b
    ld [bc], a                                    ; $42ed: $02
    ld a, a                                       ; $42ee: $7f
    sub e                                         ; $42ef: $93
    ld e, a                                       ; $42f0: $5f
    ld [hl], h                                    ; $42f1: $74
    ld a, a                                       ; $42f2: $7f
    ld l, l                                       ; $42f3: $6d
    ccf                                           ; $42f4: $3f
    jr nz, jr_0e1_4316                            ; $42f5: $20 $1f

    ld [de], a                                    ; $42f7: $12
    add hl, de                                    ; $42f8: $19
    ld d, $2f                                     ; $42f9: $16 $2f
    jr c, jr_0e1_4354                             ; $42fb: $38 $57

    ld a, a                                       ; $42fd: $7f
    ld c, b                                       ; $42fe: $48
    ld a, a                                       ; $42ff: $7f
    and a                                         ; $4300: $a7
    rst $38                                       ; $4301: $ff
    ldh a, [$03]                                  ; $4302: $f0 $03
    rst $38                                       ; $4304: $ff
    ld [bc], a                                    ; $4305: $02
    db $10                                        ; $4306: $10
    add c                                         ; $4307: $81
    ld [$1803], sp                                ; $4308: $08 $03 $18
    ld [bc], a                                    ; $430b: $02
    inc e                                         ; $430c: $1c
    or h                                          ; $430d: $b4
    ld d, $1e                                     ; $430e: $16 $1e
    ld a, [de]                                    ; $4310: $1a
    ld c, $1e                                     ; $4311: $0e $1e
    ld d, $1c                                     ; $4313: $16 $1c
    inc b                                         ; $4315: $04

jr_0e1_4316:
    jr jr_0e1_4320                                ; $4316: $18 $08

    jr jr_0e1_4322                                ; $4318: $18 $08

    inc d                                         ; $431a: $14
    inc e                                         ; $431b: $1c
    ld a, [bc]                                    ; $431c: $0a
    ld e, $13                                     ; $431d: $1e $13
    rra                                           ; $431f: $1f

jr_0e1_4320:
    dec b                                         ; $4320: $05
    rra                                           ; $4321: $1f

jr_0e1_4322:
    dec c                                         ; $4322: $0d
    rra                                           ; $4323: $1f
    dec e                                         ; $4324: $1d
    rra                                           ; $4325: $1f
    ld e, a                                       ; $4326: $5f
    ld a, a                                       ; $4327: $7f
    ld c, l                                       ; $4328: $4d
    ld a, a                                       ; $4329: $7f
    adc h                                         ; $432a: $8c
    rst $38                                       ; $432b: $ff
    sbc c                                         ; $432c: $99
    rst $38                                       ; $432d: $ff
    cp b                                          ; $432e: $b8
    rst $28                                       ; $432f: $ef
    ldh a, [$df]                                  ; $4330: $f0 $df
    ld [hl], b                                    ; $4332: $70
    ld a, a                                       ; $4333: $7f
    jr nc, jr_0e1_4375                            ; $4334: $30 $3f

    jr nz, jr_0e1_4377                            ; $4336: $20 $3f

    ld hl, $203f                                  ; $4338: $21 $3f $20
    ccf                                           ; $433b: $3f
    jr nc, jr_0e1_437d                            ; $433c: $30 $3f

    ld a, [de]                                    ; $433e: $1a
    rra                                           ; $433f: $1f
    dec c                                         ; $4340: $0d
    rrca                                          ; $4341: $0f
    ld [bc], a                                    ; $4342: $02
    inc bc                                        ; $4343: $03
    ld [bc], a                                    ; $4344: $02
    nop                                           ; $4345: $00
    sbc [hl]                                      ; $4346: $9e
    ld [hl], d                                    ; $4347: $72
    ld a, [hl]                                    ; $4348: $7e
    add hl, sp                                    ; $4349: $39
    ld a, a                                       ; $434a: $7f
    rla                                           ; $434b: $17
    ld a, a                                       ; $434c: $7f
    rra                                           ; $434d: $1f
    ld a, e                                       ; $434e: $7b
    dec c                                         ; $434f: $0d
    ld a, e                                       ; $4350: $7b
    ld c, $7e                                     ; $4351: $0e $7e
    inc b                                         ; $4353: $04

jr_0e1_4354:
    ld a, h                                       ; $4354: $7c
    ld b, h                                       ; $4355: $44
    ld a, h                                       ; $4356: $7c
    ld [bc], a                                    ; $4357: $02
    ld a, [hl]                                    ; $4358: $7e
    ld [bc], a                                    ; $4359: $02
    ld a, [hl]                                    ; $435a: $7e
    ld [bc], a                                    ; $435b: $02
    ld a, [hl]                                    ; $435c: $7e
    ld [bc], a                                    ; $435d: $02
    ld a, [hl]                                    ; $435e: $7e
    ld d, $7e                                     ; $435f: $16 $7e
    inc l                                         ; $4361: $2c
    ld a, h                                       ; $4362: $7c
    ld e, b                                       ; $4363: $58
    ld a, b                                       ; $4364: $78
    ld [bc], a                                    ; $4365: $02
    ld [hl], b                                    ; $4366: $70
    rst $38                                       ; $4367: $ff
    dec c                                         ; $4368: $0d
    inc b                                         ; $4369: $04
    ld a, [$f204]                                 ; $436a: $fa $04 $f2
    ei                                            ; $436d: $fb
    db $e3                                        ; $436e: $e3
    ld sp, hl                                     ; $436f: $f9
    db $e3                                        ; $4370: $e3
    cp $f3                                        ; $4371: $fe $f3
    ld hl, sp-$0d                                 ; $4373: $f8 $f3

jr_0e1_4375:
    rst $38                                       ; $4375: $ff
    ld [bc], a                                    ; $4376: $02

jr_0e1_4377:
    rrca                                          ; $4377: $0f
    add [hl]                                      ; $4378: $86
    inc sp                                        ; $4379: $33
    ccf                                           ; $437a: $3f
    ld e, [hl]                                    ; $437b: $5e
    ld a, a                                       ; $437c: $7f

jr_0e1_437d:
    dec [hl]                                      ; $437d: $35
    dec hl                                        ; $437e: $2b
    ld [bc], a                                    ; $437f: $02
    ld a, a                                       ; $4380: $7f
    sub [hl]                                      ; $4381: $96
    ld e, a                                       ; $4382: $5f
    ld [hl], h                                    ; $4383: $74
    ld a, a                                       ; $4384: $7f
    ld l, l                                       ; $4385: $6d
    ccf                                           ; $4386: $3f
    jr nz, jr_0e1_43a8                            ; $4387: $20 $1f

    ld [de], a                                    ; $4389: $12
    add hl, de                                    ; $438a: $19
    ld d, $2f                                     ; $438b: $16 $2f
    jr c, jr_0e1_43e6                             ; $438d: $38 $57

    ld a, a                                       ; $438f: $7f
    ret z                                         ; $4390: $c8

    rst $38                                       ; $4391: $ff
    and a                                         ; $4392: $a7
    rst $38                                       ; $4393: $ff
    ld hl, sp-$01                                 ; $4394: $f8 $ff
    cp a                                          ; $4396: $bf
    rst $38                                       ; $4397: $ff
    ld [bc], a                                    ; $4398: $02
    db $10                                        ; $4399: $10
    add c                                         ; $439a: $81
    ld [$1803], sp                                ; $439b: $08 $03 $18
    ld [bc], a                                    ; $439e: $02
    inc e                                         ; $439f: $1c
    sub e                                         ; $43a0: $93
    ld d, $1e                                     ; $43a1: $16 $1e
    ld a, [de]                                    ; $43a3: $1a
    ld c, $1e                                     ; $43a4: $0e $1e
    ld d, $1c                                     ; $43a6: $16 $1c

jr_0e1_43a8:
    inc b                                         ; $43a8: $04
    jr jr_0e1_43b3                                ; $43a9: $18 $08

    jr jr_0e1_43b5                                ; $43ab: $18 $08

    inc d                                         ; $43ad: $14
    inc e                                         ; $43ae: $1c
    ld a, [bc]                                    ; $43af: $0a
    ld e, $13                                     ; $43b0: $1e $13
    rra                                           ; $43b2: $1f

jr_0e1_43b3:
    dec b                                         ; $43b3: $05
    inc bc                                        ; $43b4: $03

jr_0e1_43b5:
    rra                                           ; $43b5: $1f
    sbc h                                         ; $43b6: $9c
    dec e                                         ; $43b7: $1d
    rra                                           ; $43b8: $1f
    ld c, a                                       ; $43b9: $4f
    ld a, a                                       ; $43ba: $7f
    adc l                                         ; $43bb: $8d
    rst $38                                       ; $43bc: $ff
    cp c                                          ; $43bd: $b9
    rst $38                                       ; $43be: $ff
    ld hl, sp-$21                                 ; $43bf: $f8 $df
    ldh a, [$df]                                  ; $43c1: $f0 $df
    or b                                          ; $43c3: $b0
    rst $38                                       ; $43c4: $ff
    ld h, b                                       ; $43c5: $60
    ld a, a                                       ; $43c6: $7f
    jr nz, jr_0e1_4408                            ; $43c7: $20 $3f

    ld b, b                                       ; $43c9: $40
    ld a, a                                       ; $43ca: $7f
    ld b, b                                       ; $43cb: $40
    ld a, a                                       ; $43cc: $7f
    ld h, b                                       ; $43cd: $60
    ld a, a                                       ; $43ce: $7f
    ld d, l                                       ; $43cf: $55
    ld a, a                                       ; $43d0: $7f
    ld a, [hl-]                                   ; $43d1: $3a
    ccf                                           ; $43d2: $3f
    ld [bc], a                                    ; $43d3: $02
    rrca                                          ; $43d4: $0f
    inc b                                         ; $43d5: $04
    nop                                           ; $43d6: $00
    sbc d                                         ; $43d7: $9a
    ld [hl], d                                    ; $43d8: $72
    ld a, [hl]                                    ; $43d9: $7e
    ld sp, $1d7f                                  ; $43da: $31 $7f $1d
    ld a, a                                       ; $43dd: $7f
    rra                                           ; $43de: $1f
    ld a, e                                       ; $43df: $7b
    rrca                                          ; $43e0: $0f
    ld a, e                                       ; $43e1: $7b
    dec c                                         ; $43e2: $0d
    ld a, a                                       ; $43e3: $7f
    ld b, $7e                                     ; $43e4: $06 $7e

jr_0e1_43e6:
    inc b                                         ; $43e6: $04
    ld a, h                                       ; $43e7: $7c
    ld [bc], a                                    ; $43e8: $02
    ld a, [hl]                                    ; $43e9: $7e
    ld [bc], a                                    ; $43ea: $02
    ld a, [hl]                                    ; $43eb: $7e
    ld d, $7e                                     ; $43ec: $16 $7e
    inc l                                         ; $43ee: $2c
    ld a, h                                       ; $43ef: $7c
    ld e, b                                       ; $43f0: $58
    ld a, b                                       ; $43f1: $78
    ld [bc], a                                    ; $43f2: $02
    ld h, b                                       ; $43f3: $60
    inc b                                         ; $43f4: $04
    nop                                           ; $43f5: $00
    rst $38                                       ; $43f6: $ff
    dec c                                         ; $43f7: $0d
    inc b                                         ; $43f8: $04
    ld a, [$f204]                                 ; $43f9: $fa $04 $f2
    ei                                            ; $43fc: $fb
    ld [c], a                                     ; $43fd: $e2
    ld sp, hl                                     ; $43fe: $f9
    ld [c], a                                     ; $43ff: $e2
    cp $f2                                        ; $4400: $fe $f2
    ld hl, sp-$0e                                 ; $4402: $f8 $f2
    rst $38                                       ; $4404: $ff
    ld [bc], a                                    ; $4405: $02
    rrca                                          ; $4406: $0f
    add [hl]                                      ; $4407: $86

jr_0e1_4408:
    inc sp                                        ; $4408: $33
    ccf                                           ; $4409: $3f
    ld e, [hl]                                    ; $440a: $5e
    ld a, a                                       ; $440b: $7f
    dec [hl]                                      ; $440c: $35
    dec hl                                        ; $440d: $2b
    ld [bc], a                                    ; $440e: $02
    ld a, a                                       ; $440f: $7f
    sub [hl]                                      ; $4410: $96
    ld e, a                                       ; $4411: $5f
    ld [hl], h                                    ; $4412: $74
    ld a, a                                       ; $4413: $7f
    ld l, l                                       ; $4414: $6d
    ccf                                           ; $4415: $3f
    jr nz, jr_0e1_4437                            ; $4416: $20 $1f

    ld [de], a                                    ; $4418: $12
    add hl, de                                    ; $4419: $19
    ld d, $2f                                     ; $441a: $16 $2f
    jr c, jr_0e1_4475                             ; $441c: $38 $57

    ld a, a                                       ; $441e: $7f
    ret z                                         ; $441f: $c8

    rst $38                                       ; $4420: $ff
    and a                                         ; $4421: $a7
    rst $38                                       ; $4422: $ff
    or b                                          ; $4423: $b0
    rst $38                                       ; $4424: $ff
    cp a                                          ; $4425: $bf
    rst $38                                       ; $4426: $ff
    ld [bc], a                                    ; $4427: $02
    db $10                                        ; $4428: $10
    add c                                         ; $4429: $81
    ld [$1803], sp                                ; $442a: $08 $03 $18
    ld [bc], a                                    ; $442d: $02
    inc e                                         ; $442e: $1c
    sub l                                         ; $442f: $95
    ld d, $1e                                     ; $4430: $16 $1e
    ld a, [de]                                    ; $4432: $1a
    ld c, $1e                                     ; $4433: $0e $1e
    ld d, $1c                                     ; $4435: $16 $1c

jr_0e1_4437:
    inc b                                         ; $4437: $04
    jr @+$0a                                      ; $4438: $18 $08

    jr jr_0e1_4444                                ; $443a: $18 $08

    inc d                                         ; $443c: $14
    inc e                                         ; $443d: $1c
    ld a, [bc]                                    ; $443e: $0a
    ld e, $12                                     ; $443f: $1e $12
    ld e, $05                                     ; $4441: $1e $05
    rra                                           ; $4443: $1f

jr_0e1_4444:
    rrca                                          ; $4444: $0f
    inc bc                                        ; $4445: $03
    rra                                           ; $4446: $1f
    sbc [hl]                                      ; $4447: $9e
    ld c, a                                       ; $4448: $4f
    ld a, a                                       ; $4449: $7f
    sbc l                                         ; $444a: $9d
    rst $38                                       ; $444b: $ff
    add sp, -$01                                  ; $444c: $e8 $ff
    ld sp, hl                                     ; $444e: $f9
    rst $18                                       ; $444f: $df
    or b                                          ; $4450: $b0
    rst $18                                       ; $4451: $df
    ld [hl], b                                    ; $4452: $70
    ld a, a                                       ; $4453: $7f
    jr nz, jr_0e1_4495                            ; $4454: $20 $3f

    ld [hl+], a                                   ; $4456: $22
    ccf                                           ; $4457: $3f
    ld b, b                                       ; $4458: $40
    ld a, a                                       ; $4459: $7f
    ld b, c                                       ; $445a: $41
    ld a, a                                       ; $445b: $7f
    ld b, b                                       ; $445c: $40
    ld a, a                                       ; $445d: $7f
    ld b, b                                       ; $445e: $40
    ld a, a                                       ; $445f: $7f
    ld l, b                                       ; $4460: $68
    ld a, a                                       ; $4461: $7f
    dec [hl]                                      ; $4462: $35
    ccf                                           ; $4463: $3f
    dec de                                        ; $4464: $1b
    rra                                           ; $4465: $1f
    ld [bc], a                                    ; $4466: $02
    ld c, $9c                                     ; $4467: $0e $9c
    ld a, d                                       ; $4469: $7a
    ld a, [hl]                                    ; $446a: $7e
    ld [hl-], a                                   ; $446b: $32
    ld a, [hl]                                    ; $446c: $7e
    ld sp, $197f                                  ; $446d: $31 $7f $19
    ld a, a                                       ; $4470: $7f
    dec e                                         ; $4471: $1d
    ld [hl], a                                    ; $4472: $77
    rrca                                          ; $4473: $0f
    ld a, e                                       ; $4474: $7b

jr_0e1_4475:
    ld c, $7e                                     ; $4475: $0e $7e
    inc c                                         ; $4477: $0c
    ld a, h                                       ; $4478: $7c
    inc b                                         ; $4479: $04
    ld a, h                                       ; $447a: $7c
    inc b                                         ; $447b: $04
    ld a, h                                       ; $447c: $7c
    inc b                                         ; $447d: $04
    ld a, h                                       ; $447e: $7c
    inc c                                         ; $447f: $0c
    ld a, h                                       ; $4480: $7c
    ld e, b                                       ; $4481: $58
    ld a, b                                       ; $4482: $78
    jr nc, jr_0e1_44f5                            ; $4483: $30 $70

    ld [bc], a                                    ; $4485: $02
    ld b, b                                       ; $4486: $40
    ld [bc], a                                    ; $4487: $02
    nop                                           ; $4488: $00
    rst $38                                       ; $4489: $ff
    dec c                                         ; $448a: $0d
    inc b                                         ; $448b: $04
    ld a, [$f204]                                 ; $448c: $fa $04 $f2
    ei                                            ; $448f: $fb
    ld [c], a                                     ; $4490: $e2
    ld sp, hl                                     ; $4491: $f9
    db $e3                                        ; $4492: $e3
    db $fc                                        ; $4493: $fc
    ld a, [c]                                     ; $4494: $f2

jr_0e1_4495:
    ld hl, sp-$0e                                 ; $4495: $f8 $f2
    db $fc                                        ; $4497: $fc
    ld [bc], a                                    ; $4498: $02
    ccf                                           ; $4499: $3f
    sbc [hl]                                      ; $449a: $9e
    ld [hl], c                                    ; $449b: $71
    ld a, a                                       ; $449c: $7f
    ld e, a                                       ; $449d: $5f
    ld a, [hl]                                    ; $449e: $7e
    db $eb                                        ; $449f: $eb
    push af                                       ; $44a0: $f5
    cp a                                          ; $44a1: $bf
    cp $cf                                        ; $44a2: $fe $cf
    ei                                            ; $44a4: $fb
    ld a, a                                       ; $44a5: $7f
    ld [hl], b                                    ; $44a6: $70
    ccf                                           ; $44a7: $3f
    inc a                                         ; $44a8: $3c
    rrca                                          ; $44a9: $0f
    ld [$1c1f], sp                                ; $44aa: $08 $1f $1c
    inc sp                                        ; $44ad: $33
    ccf                                           ; $44ae: $3f
    ld l, $3f                                     ; $44af: $2e $3f
    ld sp, $6c3f                                  ; $44b1: $31 $3f $6c
    ld a, a                                       ; $44b4: $7f
    ld b, h                                       ; $44b5: $44
    ld a, a                                       ; $44b6: $7f
    ld c, a                                       ; $44b7: $4f
    ld a, a                                       ; $44b8: $7f
    inc b                                         ; $44b9: $04
    inc b                                         ; $44ba: $04
    ld [bc], a                                    ; $44bb: $02
    ld b, $87                                     ; $44bc: $06 $87
    rlca                                          ; $44be: $07
    inc bc                                        ; $44bf: $03
    ld b, $02                                     ; $44c0: $06 $02
    rlca                                          ; $44c2: $07
    ld bc, $0206                                  ; $44c3: $01 $06 $02
    ld [bc], a                                    ; $44c6: $02
    add c                                         ; $44c7: $81
    ld b, $04                                     ; $44c8: $06 $04
    inc b                                         ; $44ca: $04
    add c                                         ; $44cb: $81
    ld [bc], a                                    ; $44cc: $02
    inc bc                                        ; $44cd: $03
    ld b, $81                                     ; $44ce: $06 $81
    ld bc, $0703                                  ; $44d0: $01 $03 $07
    ld [bc], a                                    ; $44d3: $02
    ld b, $a0                                     ; $44d4: $06 $a0
    ld a, h                                       ; $44d6: $7c
    db $fc                                        ; $44d7: $fc
    jr nz, @+$32                                  ; $44d8: $20 $30

    dec hl                                        ; $44da: $2b
    ccf                                           ; $44db: $3f
    inc hl                                        ; $44dc: $23
    ccf                                           ; $44dd: $3f
    inc hl                                        ; $44de: $23
    ccf                                           ; $44df: $3f
    ld h, a                                       ; $44e0: $67
    ld a, l                                       ; $44e1: $7d
    halt                                          ; $44e2: $76
    ld a, e                                       ; $44e3: $7b
    ld [hl], h                                    ; $44e4: $74
    ld a, a                                       ; $44e5: $7f
    ld e, b                                       ; $44e6: $58
    ld a, a                                       ; $44e7: $7f
    ret nz                                        ; $44e8: $c0

    rst $38                                       ; $44e9: $ff
    add b                                         ; $44ea: $80
    rst $38                                       ; $44eb: $ff
    add b                                         ; $44ec: $80
    rst $38                                       ; $44ed: $ff
    add b                                         ; $44ee: $80
    rst $38                                       ; $44ef: $ff
    and b                                         ; $44f0: $a0
    rst $38                                       ; $44f1: $ff
    push de                                       ; $44f2: $d5
    rst $38                                       ; $44f3: $ff
    ld l, d                                       ; $44f4: $6a

jr_0e1_44f5:
    ld a, a                                       ; $44f5: $7f
    ld [bc], a                                    ; $44f6: $02
    rra                                           ; $44f7: $1f
    ld [bc], a                                    ; $44f8: $02
    nop                                           ; $44f9: $00
    inc b                                         ; $44fa: $04
    inc c                                         ; $44fb: $0c
    sub [hl]                                      ; $44fc: $96
    ld b, $0e                                     ; $44fd: $06 $0e
    ld [bc], a                                    ; $44ff: $02
    ld c, $02                                     ; $4500: $0e $02
    ld c, $02                                     ; $4502: $0e $02
    ld c, $02                                     ; $4504: $0e $02
    ld c, $01                                     ; $4506: $0e $01
    rrca                                          ; $4508: $0f
    ld bc, $010f                                  ; $4509: $01 $0f $01
    rrca                                          ; $450c: $0f
    ld bc, $030f                                  ; $450d: $01 $0f $03
    rrca                                          ; $4510: $0f
    dec b                                         ; $4511: $05
    rrca                                          ; $4512: $0f
    ld [bc], a                                    ; $4513: $02
    ld c, $02                                     ; $4514: $0e $02
    ld [$0dff], sp                                ; $4516: $08 $ff $0d
    inc b                                         ; $4519: $04
    ld a, [$f204]                                 ; $451a: $fa $04 $f2
    ei                                            ; $451d: $fb
    db $e3                                        ; $451e: $e3
    ld sp, hl                                     ; $451f: $f9
    db $e4                                        ; $4520: $e4
    db $fc                                        ; $4521: $fc
    di                                            ; $4522: $f3
    ld hl, sp-$0d                                 ; $4523: $f8 $f3
    db $fc                                        ; $4525: $fc
    ld [bc], a                                    ; $4526: $02
    ccf                                           ; $4527: $3f
    sbc [hl]                                      ; $4528: $9e
    ld [hl], c                                    ; $4529: $71
    ld a, a                                       ; $452a: $7f
    ld e, a                                       ; $452b: $5f
    ld a, [hl]                                    ; $452c: $7e
    db $eb                                        ; $452d: $eb
    push af                                       ; $452e: $f5
    cp a                                          ; $452f: $bf
    cp $cf                                        ; $4530: $fe $cf
    ei                                            ; $4532: $fb
    ld a, a                                       ; $4533: $7f
    ld [hl], b                                    ; $4534: $70
    ccf                                           ; $4535: $3f
    inc a                                         ; $4536: $3c
    rrca                                          ; $4537: $0f
    ld [$1c1f], sp                                ; $4538: $08 $1f $1c
    inc sp                                        ; $453b: $33
    ccf                                           ; $453c: $3f
    inc l                                         ; $453d: $2c
    ccf                                           ; $453e: $3f
    inc sp                                        ; $453f: $33
    ccf                                           ; $4540: $3f
    ld l, h                                       ; $4541: $6c
    ld a, a                                       ; $4542: $7f
    ld b, h                                       ; $4543: $44
    ld a, a                                       ; $4544: $7f
    ld c, a                                       ; $4545: $4f
    ld a, a                                       ; $4546: $7f
    inc b                                         ; $4547: $04
    inc b                                         ; $4548: $04
    ld [bc], a                                    ; $4549: $02
    ld b, $87                                     ; $454a: $06 $87
    rlca                                          ; $454c: $07
    inc bc                                        ; $454d: $03
    ld b, $02                                     ; $454e: $06 $02
    rlca                                          ; $4550: $07
    ld bc, $0206                                  ; $4551: $01 $06 $02
    ld [bc], a                                    ; $4554: $02
    add c                                         ; $4555: $81
    ld b, $04                                     ; $4556: $06 $04
    inc b                                         ; $4558: $04
    add c                                         ; $4559: $81
    ld [bc], a                                    ; $455a: $02
    inc bc                                        ; $455b: $03
    ld b, $84                                     ; $455c: $06 $84
    ld bc, $0307                                  ; $455e: $01 $07 $03
    rlca                                          ; $4561: $07
    ld [bc], a                                    ; $4562: $02
    ld b, $9e                                     ; $4563: $06 $9e
    ld a, h                                       ; $4565: $7c
    db $fc                                        ; $4566: $fc
    jr nz, @+$32                                  ; $4567: $20 $30

    dec hl                                        ; $4569: $2b
    ccf                                           ; $456a: $3f
    inc hl                                        ; $456b: $23
    ccf                                           ; $456c: $3f
    ld h, e                                       ; $456d: $63
    ld a, a                                       ; $456e: $7f
    ld h, a                                       ; $456f: $67
    ld a, l                                       ; $4570: $7d
    halt                                          ; $4571: $76
    ld a, e                                       ; $4572: $7b
    ld [hl], h                                    ; $4573: $74
    ld a, a                                       ; $4574: $7f
    ld e, b                                       ; $4575: $58
    ld a, a                                       ; $4576: $7f
    ret nz                                        ; $4577: $c0

    rst $38                                       ; $4578: $ff
    add b                                         ; $4579: $80
    rst $38                                       ; $457a: $ff
    add b                                         ; $457b: $80
    rst $38                                       ; $457c: $ff
    and b                                         ; $457d: $a0
    rst $38                                       ; $457e: $ff
    push de                                       ; $457f: $d5
    rst $38                                       ; $4580: $ff
    ld l, d                                       ; $4581: $6a
    ld a, a                                       ; $4582: $7f
    ld [bc], a                                    ; $4583: $02
    rra                                           ; $4584: $1f
    inc b                                         ; $4585: $04
    nop                                           ; $4586: $00
    ld [bc], a                                    ; $4587: $02
    inc c                                         ; $4588: $0c
    ld [bc], a                                    ; $4589: $02
    ld c, $94                                     ; $458a: $0e $94
    ld b, $0e                                     ; $458c: $06 $0e
    ld [bc], a                                    ; $458e: $02
    ld c, $02                                     ; $458f: $0e $02
    ld c, $02                                     ; $4591: $0e $02
    ld c, $02                                     ; $4593: $0e $02
    ld c, $01                                     ; $4595: $0e $01
    rrca                                          ; $4597: $0f
    ld bc, $010f                                  ; $4598: $01 $0f $01
    rrca                                          ; $459b: $0f
    inc bc                                        ; $459c: $03
    rrca                                          ; $459d: $0f
    dec b                                         ; $459e: $05
    rrca                                          ; $459f: $0f
    ld [bc], a                                    ; $45a0: $02
    ld c, $02                                     ; $45a1: $0e $02
    ld [$0002], sp                                ; $45a3: $08 $02 $00
    rst $38                                       ; $45a6: $ff
    dec c                                         ; $45a7: $0d
    inc b                                         ; $45a8: $04
    ld a, [$f204]                                 ; $45a9: $fa $04 $f2
    ei                                            ; $45ac: $fb
    ld [c], a                                     ; $45ad: $e2
    ld sp, hl                                     ; $45ae: $f9
    db $e3                                        ; $45af: $e3
    db $fc                                        ; $45b0: $fc
    ld a, [c]                                     ; $45b1: $f2

jr_0e1_45b2:
    ld hl, sp-$0e                                 ; $45b2: $f8 $f2
    db $fd                                        ; $45b4: $fd
    ld [bc], a                                    ; $45b5: $02
    ccf                                           ; $45b6: $3f
    sbc [hl]                                      ; $45b7: $9e
    ld [hl], c                                    ; $45b8: $71
    ld a, a                                       ; $45b9: $7f
    ld e, a                                       ; $45ba: $5f
    ld a, [hl]                                    ; $45bb: $7e
    db $eb                                        ; $45bc: $eb
    push af                                       ; $45bd: $f5
    cp a                                          ; $45be: $bf
    cp $cf                                        ; $45bf: $fe $cf
    ei                                            ; $45c1: $fb
    ld a, a                                       ; $45c2: $7f
    ld [hl], b                                    ; $45c3: $70
    ccf                                           ; $45c4: $3f
    inc a                                         ; $45c5: $3c
    rrca                                          ; $45c6: $0f
    ld [$1c1f], sp                                ; $45c7: $08 $1f $1c
    inc sp                                        ; $45ca: $33
    ccf                                           ; $45cb: $3f
    ld l, $3f                                     ; $45cc: $2e $3f
    ld sp, $6c3f                                  ; $45ce: $31 $3f $6c
    ld a, a                                       ; $45d1: $7f
    ld b, h                                       ; $45d2: $44
    ld a, a                                       ; $45d3: $7f
    ld c, a                                       ; $45d4: $4f
    ld a, a                                       ; $45d5: $7f
    inc b                                         ; $45d6: $04
    inc b                                         ; $45d7: $04
    ld [bc], a                                    ; $45d8: $02
    ld b, $87                                     ; $45d9: $06 $87
    rlca                                          ; $45db: $07
    inc bc                                        ; $45dc: $03
    ld b, $02                                     ; $45dd: $06 $02
    rlca                                          ; $45df: $07
    ld bc, $0206                                  ; $45e0: $01 $06 $02
    ld [bc], a                                    ; $45e3: $02
    add c                                         ; $45e4: $81
    ld b, $04                                     ; $45e5: $06 $04
    inc b                                         ; $45e7: $04
    add c                                         ; $45e8: $81
    ld [bc], a                                    ; $45e9: $02
    inc bc                                        ; $45ea: $03
    ld b, $81                                     ; $45eb: $06 $81
    ld bc, $0703                                  ; $45ed: $01 $03 $07
    ld [bc], a                                    ; $45f0: $02
    ld b, $a0                                     ; $45f1: $06 $a0
    ld a, h                                       ; $45f3: $7c
    db $fc                                        ; $45f4: $fc
    jr nz, jr_0e1_4627                            ; $45f5: $20 $30

    dec hl                                        ; $45f7: $2b
    ccf                                           ; $45f8: $3f
    inc hl                                        ; $45f9: $23
    ccf                                           ; $45fa: $3f
    ld h, c                                       ; $45fb: $61
    ld a, a                                       ; $45fc: $7f
    ld [hl], e                                    ; $45fd: $73
    ld a, [hl]                                    ; $45fe: $7e
    ld [hl], e                                    ; $45ff: $73
    ld a, l                                       ; $4600: $7d
    ld a, d                                       ; $4601: $7a
    ld a, a                                       ; $4602: $7f
    call z, $80ff                                 ; $4603: $cc $ff $80
    rst $38                                       ; $4606: $ff
    add b                                         ; $4607: $80
    rst $38                                       ; $4608: $ff
    add b                                         ; $4609: $80
    rst $38                                       ; $460a: $ff
    add b                                         ; $460b: $80
    rst $38                                       ; $460c: $ff
    ret nz                                        ; $460d: $c0

    rst $38                                       ; $460e: $ff
    xor d                                         ; $460f: $aa
    rst $38                                       ; $4610: $ff
    ld [hl], l                                    ; $4611: $75
    ld a, a                                       ; $4612: $7f
    ld [bc], a                                    ; $4613: $02
    rra                                           ; $4614: $1f
    ld [bc], a                                    ; $4615: $02
    nop                                           ; $4616: $00
    inc b                                         ; $4617: $04
    jr jr_0e1_45b2                                ; $4618: $18 $98

    inc c                                         ; $461a: $0c
    inc e                                         ; $461b: $1c
    inc d                                         ; $461c: $14
    inc e                                         ; $461d: $1c
    inc b                                         ; $461e: $04
    inc e                                         ; $461f: $1c
    ld [bc], a                                    ; $4620: $02
    ld e, $02                                     ; $4621: $1e $02
    ld e, $02                                     ; $4623: $1e $02
    ld e, $02                                     ; $4625: $1e $02

jr_0e1_4627:
    ld e, $09                                     ; $4627: $1e $09
    rra                                           ; $4629: $1f
    ld bc, $131f                                  ; $462a: $01 $1f $13
    rra                                           ; $462d: $1f
    dec d                                         ; $462e: $15
    rra                                           ; $462f: $1f
    ld c, $1e                                     ; $4630: $0e $1e
    ld [bc], a                                    ; $4632: $02
    db $10                                        ; $4633: $10
    rst $38                                       ; $4634: $ff
    dec c                                         ; $4635: $0d
    inc b                                         ; $4636: $04
    ld a, [$f204]                                 ; $4637: $fa $04 $f2
    ei                                            ; $463a: $fb
    db $e3                                        ; $463b: $e3
    ld sp, hl                                     ; $463c: $f9
    db $e4                                        ; $463d: $e4
    db $fc                                        ; $463e: $fc
    di                                            ; $463f: $f3
    ld hl, sp-$0d                                 ; $4640: $f8 $f3
    db $fc                                        ; $4642: $fc
    ld [bc], a                                    ; $4643: $02
    ccf                                           ; $4644: $3f
    sbc [hl]                                      ; $4645: $9e
    ld [hl], c                                    ; $4646: $71
    ld a, a                                       ; $4647: $7f
    ld e, a                                       ; $4648: $5f
    ld a, [hl]                                    ; $4649: $7e
    db $eb                                        ; $464a: $eb
    push af                                       ; $464b: $f5
    cp a                                          ; $464c: $bf
    cp $cf                                        ; $464d: $fe $cf
    ei                                            ; $464f: $fb
    ld a, a                                       ; $4650: $7f
    ld [hl], b                                    ; $4651: $70
    ccf                                           ; $4652: $3f
    inc a                                         ; $4653: $3c
    rrca                                          ; $4654: $0f
    ld [$1c1f], sp                                ; $4655: $08 $1f $1c
    inc sp                                        ; $4658: $33
    ccf                                           ; $4659: $3f
    inc l                                         ; $465a: $2c
    ccf                                           ; $465b: $3f
    inc sp                                        ; $465c: $33
    ccf                                           ; $465d: $3f
    ld l, h                                       ; $465e: $6c
    ld a, a                                       ; $465f: $7f
    ld b, h                                       ; $4660: $44
    ld a, a                                       ; $4661: $7f
    ld c, a                                       ; $4662: $4f
    ld a, a                                       ; $4663: $7f
    inc b                                         ; $4664: $04
    inc b                                         ; $4665: $04
    ld [bc], a                                    ; $4666: $02
    ld b, $87                                     ; $4667: $06 $87
    rlca                                          ; $4669: $07
    inc bc                                        ; $466a: $03
    ld b, $02                                     ; $466b: $06 $02
    rlca                                          ; $466d: $07
    ld bc, $0206                                  ; $466e: $01 $06 $02
    ld [bc], a                                    ; $4671: $02
    add c                                         ; $4672: $81
    ld b, $04                                     ; $4673: $06 $04
    inc b                                         ; $4675: $04
    add c                                         ; $4676: $81
    ld [bc], a                                    ; $4677: $02
    inc bc                                        ; $4678: $03
    ld b, $84                                     ; $4679: $06 $84
    ld bc, $0307                                  ; $467b: $01 $07 $03
    rlca                                          ; $467e: $07
    ld [bc], a                                    ; $467f: $02
    ld b, $9e                                     ; $4680: $06 $9e
    ld a, h                                       ; $4682: $7c
    db $fc                                        ; $4683: $fc
    jr nz, @+$32                                  ; $4684: $20 $30

    dec hl                                        ; $4686: $2b
    ccf                                           ; $4687: $3f
    inc hl                                        ; $4688: $23
    ccf                                           ; $4689: $3f
    ld h, e                                       ; $468a: $63
    ld a, a                                       ; $468b: $7f
    ld h, a                                       ; $468c: $67
    ld a, l                                       ; $468d: $7d
    halt                                          ; $468e: $76
    ld a, e                                       ; $468f: $7b
    ld [hl], h                                    ; $4690: $74
    ld a, a                                       ; $4691: $7f
    ld e, b                                       ; $4692: $58
    ld a, a                                       ; $4693: $7f
    ret nz                                        ; $4694: $c0

    rst $38                                       ; $4695: $ff
    add b                                         ; $4696: $80
    rst $38                                       ; $4697: $ff
    add b                                         ; $4698: $80
    rst $38                                       ; $4699: $ff
    and b                                         ; $469a: $a0
    rst $38                                       ; $469b: $ff
    push de                                       ; $469c: $d5
    rst $38                                       ; $469d: $ff
    ld l, d                                       ; $469e: $6a
    ld a, a                                       ; $469f: $7f
    ld [bc], a                                    ; $46a0: $02
    rra                                           ; $46a1: $1f
    inc b                                         ; $46a2: $04
    nop                                           ; $46a3: $00
    ld [bc], a                                    ; $46a4: $02
    inc c                                         ; $46a5: $0c
    ld [bc], a                                    ; $46a6: $02
    ld c, $94                                     ; $46a7: $0e $94
    ld b, $0e                                     ; $46a9: $06 $0e
    ld [bc], a                                    ; $46ab: $02
    ld c, $02                                     ; $46ac: $0e $02
    ld c, $02                                     ; $46ae: $0e $02
    ld c, $02                                     ; $46b0: $0e $02
    ld c, $01                                     ; $46b2: $0e $01
    rrca                                          ; $46b4: $0f
    ld bc, $050f                                  ; $46b5: $01 $0f $05
    rrca                                          ; $46b8: $0f
    rlca                                          ; $46b9: $07
    rrca                                          ; $46ba: $0f
    dec b                                         ; $46bb: $05
    rrca                                          ; $46bc: $0f
    ld [bc], a                                    ; $46bd: $02
    ld c, $02                                     ; $46be: $0e $02
    ld [$0002], sp                                ; $46c0: $08 $02 $00
    rst $38                                       ; $46c3: $ff
    dec c                                         ; $46c4: $0d
    inc b                                         ; $46c5: $04
    ld a, [$f204]                                 ; $46c6: $fa $04 $f2
    ei                                            ; $46c9: $fb
    ld [c], a                                     ; $46ca: $e2
    ld sp, hl                                     ; $46cb: $f9
    db $e3                                        ; $46cc: $e3
    db $fc                                        ; $46cd: $fc
    ld a, [c]                                     ; $46ce: $f2

jr_0e1_46cf:
    ld hl, sp-$0e                                 ; $46cf: $f8 $f2
    db $fd                                        ; $46d1: $fd
    ld [bc], a                                    ; $46d2: $02
    ccf                                           ; $46d3: $3f
    sbc [hl]                                      ; $46d4: $9e
    ld [hl], c                                    ; $46d5: $71
    ld a, a                                       ; $46d6: $7f
    ld e, a                                       ; $46d7: $5f
    ld a, [hl]                                    ; $46d8: $7e
    db $eb                                        ; $46d9: $eb
    push af                                       ; $46da: $f5
    cp a                                          ; $46db: $bf
    cp $cf                                        ; $46dc: $fe $cf
    ei                                            ; $46de: $fb
    ld a, a                                       ; $46df: $7f
    ld [hl], b                                    ; $46e0: $70
    ccf                                           ; $46e1: $3f
    inc a                                         ; $46e2: $3c
    rrca                                          ; $46e3: $0f
    ld [$1c1f], sp                                ; $46e4: $08 $1f $1c
    inc sp                                        ; $46e7: $33
    ccf                                           ; $46e8: $3f
    ld l, $3f                                     ; $46e9: $2e $3f
    ld sp, $6c3f                                  ; $46eb: $31 $3f $6c
    ld a, a                                       ; $46ee: $7f
    ld b, h                                       ; $46ef: $44
    ld a, a                                       ; $46f0: $7f
    ld c, a                                       ; $46f1: $4f
    ld a, a                                       ; $46f2: $7f
    inc b                                         ; $46f3: $04
    inc b                                         ; $46f4: $04
    ld [bc], a                                    ; $46f5: $02
    ld b, $87                                     ; $46f6: $06 $87
    rlca                                          ; $46f8: $07
    inc bc                                        ; $46f9: $03
    ld b, $02                                     ; $46fa: $06 $02
    rlca                                          ; $46fc: $07
    ld bc, $0206                                  ; $46fd: $01 $06 $02
    ld [bc], a                                    ; $4700: $02
    add c                                         ; $4701: $81
    ld b, $04                                     ; $4702: $06 $04
    inc b                                         ; $4704: $04
    add c                                         ; $4705: $81
    ld [bc], a                                    ; $4706: $02
    inc bc                                        ; $4707: $03
    ld b, $81                                     ; $4708: $06 $81
    ld bc, $0703                                  ; $470a: $01 $03 $07
    ld [bc], a                                    ; $470d: $02
    ld b, $a0                                     ; $470e: $06 $a0
    ld a, h                                       ; $4710: $7c
    db $fc                                        ; $4711: $fc
    jr nz, jr_0e1_4744                            ; $4712: $20 $30

    ld d, a                                       ; $4714: $57
    ld a, a                                       ; $4715: $7f
    ld b, a                                       ; $4716: $47
    ld a, a                                       ; $4717: $7f
    ld b, a                                       ; $4718: $47
    ld a, a                                       ; $4719: $7f
    ld l, a                                       ; $471a: $6f
    ld a, e                                       ; $471b: $7b
    ld l, h                                       ; $471c: $6c
    ld [hl], a                                    ; $471d: $77
    ld a, b                                       ; $471e: $78
    ld a, a                                       ; $471f: $7f
    ld [hl], b                                    ; $4720: $70
    ld a, a                                       ; $4721: $7f
    ld d, b                                       ; $4722: $50
    ld a, a                                       ; $4723: $7f
    ld c, b                                       ; $4724: $48
    ld a, a                                       ; $4725: $7f
    ret nz                                        ; $4726: $c0

    rst $38                                       ; $4727: $ff
    add b                                         ; $4728: $80
    rst $38                                       ; $4729: $ff
    jp nz, $aaff                                  ; $472a: $c2 $ff $aa

    rst $38                                       ; $472d: $ff
    ld [hl], l                                    ; $472e: $75
    ld a, a                                       ; $472f: $7f
    ld [bc], a                                    ; $4730: $02
    rra                                           ; $4731: $1f
    ld [bc], a                                    ; $4732: $02
    nop                                           ; $4733: $00
    inc b                                         ; $4734: $04
    jr jr_0e1_46cf                                ; $4735: $18 $98

    inc c                                         ; $4737: $0c
    inc e                                         ; $4738: $1c
    inc b                                         ; $4739: $04
    inc e                                         ; $473a: $1c
    inc b                                         ; $473b: $04
    inc e                                         ; $473c: $1c
    ld [bc], a                                    ; $473d: $02
    ld e, $02                                     ; $473e: $1e $02
    ld e, $02                                     ; $4740: $1e $02
    ld e, $02                                     ; $4742: $1e $02

jr_0e1_4744:
    ld e, $01                                     ; $4744: $1e $01
    rra                                           ; $4746: $1f
    ld bc, $031f                                  ; $4747: $01 $1f $03
    rra                                           ; $474a: $1f
    dec d                                         ; $474b: $15
    rra                                           ; $474c: $1f
    ld c, $1e                                     ; $474d: $0e $1e
    ld [bc], a                                    ; $474f: $02
    jr @+$01                                      ; $4750: $18 $ff

    dec c                                         ; $4752: $0d
    inc b                                         ; $4753: $04
    ld a, [$f204]                                 ; $4754: $fa $04 $f2
    ei                                            ; $4757: $fb
    ld [c], a                                     ; $4758: $e2
    ld hl, sp-$1e                                 ; $4759: $f8 $e2
    rst $38                                       ; $475b: $ff
    ld a, [c]                                     ; $475c: $f2
    ld hl, sp-$0e                                 ; $475d: $f8 $f2
    rst $38                                       ; $475f: $ff
    ld [bc], a                                    ; $4760: $02
    rlca                                          ; $4761: $07
    adc [hl]                                      ; $4762: $8e
    add hl, bc                                    ; $4763: $09
    rrca                                          ; $4764: $0f
    add hl, de                                    ; $4765: $19
    rra                                           ; $4766: $1f
    scf                                           ; $4767: $37
    ccf                                           ; $4768: $3f
    ld e, a                                       ; $4769: $5f
    ld a, a                                       ; $476a: $7f
    ld e, a                                       ; $476b: $5f
    ld a, a                                       ; $476c: $7f
    ld l, d                                       ; $476d: $6a
    ld a, a                                       ; $476e: $7f
    dec a                                         ; $476f: $3d
    ccf                                           ; $4770: $3f
    ld [bc], a                                    ; $4771: $02
    rra                                           ; $4772: $1f
    ld [bc], a                                    ; $4773: $02
    rrca                                          ; $4774: $0f
    adc h                                         ; $4775: $8c
    jr jr_0e1_4797                                ; $4776: $18 $1f

    scf                                           ; $4778: $37
    ccf                                           ; $4779: $3f
    ld d, b                                       ; $477a: $50
    ld a, a                                       ; $477b: $7f
    ld d, b                                       ; $477c: $50
    ld a, a                                       ; $477d: $7f
    ret c                                         ; $477e: $d8

    rst $38                                       ; $477f: $ff
    sbc a                                         ; $4780: $9f
    rst $38                                       ; $4781: $ff
    ld [bc], a                                    ; $4782: $02
    ld h, b                                       ; $4783: $60
    adc [hl]                                      ; $4784: $8e
    db $10                                        ; $4785: $10
    ld [hl], b                                    ; $4786: $70
    jr jr_0e1_4801                                ; $4787: $18 $78

    ld l, h                                       ; $4789: $6c
    ld a, h                                       ; $478a: $7c
    ld a, d                                       ; $478b: $7a
    ld a, [hl]                                    ; $478c: $7e
    ld a, d                                       ; $478d: $7a
    ld a, [hl]                                    ; $478e: $7e
    ld d, [hl]                                    ; $478f: $56
    ld a, [hl]                                    ; $4790: $7e
    inc a                                         ; $4791: $3c
    ld a, h                                       ; $4792: $7c
    ld [bc], a                                    ; $4793: $02
    ld a, b                                       ; $4794: $78
    ld [bc], a                                    ; $4795: $02
    ld [hl], b                                    ; $4796: $70

jr_0e1_4797:
    xor d                                         ; $4797: $aa
    jr jr_0e1_4812                                ; $4798: $18 $78

    ld l, h                                       ; $479a: $6c
    ld a, h                                       ; $479b: $7c
    ld a, [bc]                                    ; $479c: $0a
    ld a, [hl]                                    ; $479d: $7e
    ld a, [bc]                                    ; $479e: $0a
    ld a, [hl]                                    ; $479f: $7e
    dec de                                        ; $47a0: $1b
    ld a, a                                       ; $47a1: $7f
    ld a, c                                       ; $47a2: $79
    ld a, a                                       ; $47a3: $7f
    sbc a                                         ; $47a4: $9f
    rst $38                                       ; $47a5: $ff
    cp a                                          ; $47a6: $bf
    rst $38                                       ; $47a7: $ff
    ld a, [$f4ff]                                 ; $47a8: $fa $ff $f4
    rst $38                                       ; $47ab: $ff
    db $f4                                        ; $47ac: $f4
    cp a                                          ; $47ad: $bf
    ld h, h                                       ; $47ae: $64
    ld a, a                                       ; $47af: $7f
    ld h, b                                       ; $47b0: $60
    ld a, a                                       ; $47b1: $7f
    ld b, b                                       ; $47b2: $40
    ld a, a                                       ; $47b3: $7f
    ld b, b                                       ; $47b4: $40
    ld a, a                                       ; $47b5: $7f
    ld b, b                                       ; $47b6: $40
    ld a, a                                       ; $47b7: $7f
    ld b, b                                       ; $47b8: $40
    ld a, a                                       ; $47b9: $7f
    ld b, b                                       ; $47ba: $40
    ld a, a                                       ; $47bb: $7f
    ld b, a                                       ; $47bc: $47
    ld a, a                                       ; $47bd: $7f
    jr nz, jr_0e1_47ff                            ; $47be: $20 $3f

    inc e                                         ; $47c0: $1c
    rra                                           ; $47c1: $1f
    ld [bc], a                                    ; $47c2: $02
    inc bc                                        ; $47c3: $03
    add e                                         ; $47c4: $83
    ld a, c                                       ; $47c5: $79
    ld a, a                                       ; $47c6: $7f
    ld a, l                                       ; $47c7: $7d
    inc bc                                        ; $47c8: $03
    ld a, a                                       ; $47c9: $7f
    sbc b                                         ; $47ca: $98
    cpl                                           ; $47cb: $2f
    ld a, a                                       ; $47cc: $7f
    cpl                                           ; $47cd: $2f
    ld a, l                                       ; $47ce: $7d
    ld d, $7e                                     ; $47cf: $16 $7e
    ld d, $7e                                     ; $47d1: $16 $7e
    ld [de], a                                    ; $47d3: $12
    ld a, [hl]                                    ; $47d4: $7e
    ld [bc], a                                    ; $47d5: $02
    ld a, [hl]                                    ; $47d6: $7e
    ld [de], a                                    ; $47d7: $12
    ld a, [hl]                                    ; $47d8: $7e
    ld [bc], a                                    ; $47d9: $02
    ld a, [hl]                                    ; $47da: $7e
    ld [bc], a                                    ; $47db: $02
    ld a, [hl]                                    ; $47dc: $7e
    ld [hl+], a                                   ; $47dd: $22
    ld a, [hl]                                    ; $47de: $7e
    inc b                                         ; $47df: $04
    ld a, h                                       ; $47e0: $7c
    jr c, jr_0e1_485b                             ; $47e1: $38 $78

    ld [bc], a                                    ; $47e3: $02
    ld b, b                                       ; $47e4: $40
    rst $38                                       ; $47e5: $ff
    dec c                                         ; $47e6: $0d
    inc b                                         ; $47e7: $04
    ld a, [$f204]                                 ; $47e8: $fa $04 $f2
    ei                                            ; $47eb: $fb
    db $e3                                        ; $47ec: $e3
    ld hl, sp-$1d                                 ; $47ed: $f8 $e3
    rst $38                                       ; $47ef: $ff
    di                                            ; $47f0: $f3
    ld hl, sp-$0d                                 ; $47f1: $f8 $f3
    rst $38                                       ; $47f3: $ff
    ld [bc], a                                    ; $47f4: $02
    rlca                                          ; $47f5: $07
    adc [hl]                                      ; $47f6: $8e
    add hl, bc                                    ; $47f7: $09
    rrca                                          ; $47f8: $0f
    add hl, de                                    ; $47f9: $19
    rra                                           ; $47fa: $1f
    scf                                           ; $47fb: $37
    ccf                                           ; $47fc: $3f
    ld e, a                                       ; $47fd: $5f
    ld a, a                                       ; $47fe: $7f

jr_0e1_47ff:
    ld e, a                                       ; $47ff: $5f
    ld a, a                                       ; $4800: $7f

jr_0e1_4801:
    ld l, d                                       ; $4801: $6a
    ld a, a                                       ; $4802: $7f
    dec a                                         ; $4803: $3d
    ccf                                           ; $4804: $3f
    ld [bc], a                                    ; $4805: $02
    rra                                           ; $4806: $1f
    ld [bc], a                                    ; $4807: $02
    rrca                                          ; $4808: $0f
    adc h                                         ; $4809: $8c
    jr jr_0e1_482b                                ; $480a: $18 $1f

    scf                                           ; $480c: $37
    ccf                                           ; $480d: $3f
    ld d, b                                       ; $480e: $50
    ld a, a                                       ; $480f: $7f
    ld d, b                                       ; $4810: $50
    ld a, a                                       ; $4811: $7f

jr_0e1_4812:
    ret c                                         ; $4812: $d8

    rst $38                                       ; $4813: $ff
    sbc a                                         ; $4814: $9f
    rst $38                                       ; $4815: $ff
    ld [bc], a                                    ; $4816: $02
    ld h, b                                       ; $4817: $60
    adc [hl]                                      ; $4818: $8e
    db $10                                        ; $4819: $10
    ld [hl], b                                    ; $481a: $70
    jr jr_0e1_4895                                ; $481b: $18 $78

    ld l, h                                       ; $481d: $6c
    ld a, h                                       ; $481e: $7c
    ld a, d                                       ; $481f: $7a
    ld a, [hl]                                    ; $4820: $7e
    ld a, d                                       ; $4821: $7a
    ld a, [hl]                                    ; $4822: $7e
    ld d, [hl]                                    ; $4823: $56
    ld a, [hl]                                    ; $4824: $7e
    inc a                                         ; $4825: $3c
    ld a, h                                       ; $4826: $7c
    ld [bc], a                                    ; $4827: $02
    ld a, b                                       ; $4828: $78
    ld [bc], a                                    ; $4829: $02
    ld [hl], b                                    ; $482a: $70

jr_0e1_482b:
    xor b                                         ; $482b: $a8
    jr jr_0e1_48a6                                ; $482c: $18 $78

    ld l, h                                       ; $482e: $6c
    ld a, h                                       ; $482f: $7c
    ld a, [bc]                                    ; $4830: $0a
    ld a, [hl]                                    ; $4831: $7e
    ld a, [bc]                                    ; $4832: $0a
    ld a, [hl]                                    ; $4833: $7e
    dec de                                        ; $4834: $1b
    ld a, a                                       ; $4835: $7f
    ld a, c                                       ; $4836: $79
    ld a, a                                       ; $4837: $7f
    sbc a                                         ; $4838: $9f
    rst $38                                       ; $4839: $ff
    cp a                                          ; $483a: $bf
    rst $38                                       ; $483b: $ff
    ld a, [$f4ff]                                 ; $483c: $fa $ff $f4
    rst $38                                       ; $483f: $ff
    db $f4                                        ; $4840: $f4
    cp a                                          ; $4841: $bf
    ld h, h                                       ; $4842: $64
    ld a, a                                       ; $4843: $7f
    ld b, b                                       ; $4844: $40
    ld a, a                                       ; $4845: $7f
    ld b, b                                       ; $4846: $40
    ld a, a                                       ; $4847: $7f
    ld b, b                                       ; $4848: $40
    ld a, a                                       ; $4849: $7f
    ld b, b                                       ; $484a: $40
    ld a, a                                       ; $484b: $7f
    ld b, b                                       ; $484c: $40
    ld a, a                                       ; $484d: $7f
    inc hl                                        ; $484e: $23
    ccf                                           ; $484f: $3f
    db $10                                        ; $4850: $10
    rra                                           ; $4851: $1f
    inc c                                         ; $4852: $0c
    rrca                                          ; $4853: $0f
    ld [bc], a                                    ; $4854: $02
    inc bc                                        ; $4855: $03
    ld [bc], a                                    ; $4856: $02
    nop                                           ; $4857: $00
    add e                                         ; $4858: $83
    ld a, c                                       ; $4859: $79
    ld a, a                                       ; $485a: $7f

jr_0e1_485b:
    ld a, l                                       ; $485b: $7d
    inc bc                                        ; $485c: $03
    ld a, a                                       ; $485d: $7f
    sub [hl]                                      ; $485e: $96
    cpl                                           ; $485f: $2f
    ld a, a                                       ; $4860: $7f
    cpl                                           ; $4861: $2f
    ld a, l                                       ; $4862: $7d
    ld d, $7e                                     ; $4863: $16 $7e
    ld [de], a                                    ; $4865: $12
    ld a, [hl]                                    ; $4866: $7e
    ld [de], a                                    ; $4867: $12
    ld a, [hl]                                    ; $4868: $7e
    ld [bc], a                                    ; $4869: $02
    ld a, [hl]                                    ; $486a: $7e
    ld [de], a                                    ; $486b: $12
    ld a, [hl]                                    ; $486c: $7e
    ld [bc], a                                    ; $486d: $02
    ld a, [hl]                                    ; $486e: $7e
    ld b, d                                       ; $486f: $42
    ld a, [hl]                                    ; $4870: $7e
    inc b                                         ; $4871: $04
    ld a, h                                       ; $4872: $7c
    jr c, @+$7a                                   ; $4873: $38 $78

    ld [bc], a                                    ; $4875: $02
    ld b, b                                       ; $4876: $40
    ld [bc], a                                    ; $4877: $02
    nop                                           ; $4878: $00
    rst $38                                       ; $4879: $ff
    dec c                                         ; $487a: $0d
    inc b                                         ; $487b: $04
    ld a, [$f204]                                 ; $487c: $fa $04 $f2
    ei                                            ; $487f: $fb
    ld [c], a                                     ; $4880: $e2
    ld hl, sp-$1e                                 ; $4881: $f8 $e2
    rst $38                                       ; $4883: $ff
    ld a, [c]                                     ; $4884: $f2
    ld hl, sp-$0e                                 ; $4885: $f8 $f2
    rst $38                                       ; $4887: $ff
    ld [bc], a                                    ; $4888: $02
    rlca                                          ; $4889: $07
    adc [hl]                                      ; $488a: $8e
    add hl, bc                                    ; $488b: $09
    rrca                                          ; $488c: $0f
    add hl, de                                    ; $488d: $19
    rra                                           ; $488e: $1f
    scf                                           ; $488f: $37
    ccf                                           ; $4890: $3f
    ld e, a                                       ; $4891: $5f
    ld a, a                                       ; $4892: $7f
    ld e, a                                       ; $4893: $5f
    ld a, a                                       ; $4894: $7f

jr_0e1_4895:
    ld l, d                                       ; $4895: $6a
    ld a, a                                       ; $4896: $7f
    dec a                                         ; $4897: $3d
    ccf                                           ; $4898: $3f
    ld [bc], a                                    ; $4899: $02
    rra                                           ; $489a: $1f
    ld [bc], a                                    ; $489b: $02
    rrca                                          ; $489c: $0f
    adc h                                         ; $489d: $8c
    jr jr_0e1_48bf                                ; $489e: $18 $1f

    daa                                           ; $48a0: $27
    ccf                                           ; $48a1: $3f
    ld d, b                                       ; $48a2: $50
    ld a, a                                       ; $48a3: $7f
    ld d, b                                       ; $48a4: $50
    ld a, a                                       ; $48a5: $7f

jr_0e1_48a6:
    ld e, b                                       ; $48a6: $58
    ld a, a                                       ; $48a7: $7f
    rst $18                                       ; $48a8: $df
    rst $38                                       ; $48a9: $ff
    ld [bc], a                                    ; $48aa: $02
    ld h, b                                       ; $48ab: $60
    adc [hl]                                      ; $48ac: $8e
    db $10                                        ; $48ad: $10
    ld [hl], b                                    ; $48ae: $70
    jr jr_0e1_4929                                ; $48af: $18 $78

    ld l, h                                       ; $48b1: $6c
    ld a, h                                       ; $48b2: $7c
    ld a, d                                       ; $48b3: $7a
    ld a, [hl]                                    ; $48b4: $7e
    ld a, d                                       ; $48b5: $7a
    ld a, [hl]                                    ; $48b6: $7e
    ld d, [hl]                                    ; $48b7: $56
    ld a, [hl]                                    ; $48b8: $7e
    inc a                                         ; $48b9: $3c
    ld a, h                                       ; $48ba: $7c
    ld [bc], a                                    ; $48bb: $02
    ld a, b                                       ; $48bc: $78
    ld [bc], a                                    ; $48bd: $02
    ld [hl], b                                    ; $48be: $70

jr_0e1_48bf:
    xor d                                         ; $48bf: $aa
    jr jr_0e1_493a                                ; $48c0: $18 $78

    ld l, h                                       ; $48c2: $6c
    ld a, h                                       ; $48c3: $7c
    ld a, [bc]                                    ; $48c4: $0a
    ld a, [hl]                                    ; $48c5: $7e
    ld a, [bc]                                    ; $48c6: $0a
    ld a, [hl]                                    ; $48c7: $7e
    dec de                                        ; $48c8: $1b
    ld a, a                                       ; $48c9: $7f
    ld a, c                                       ; $48ca: $79
    ld a, a                                       ; $48cb: $7f
    sbc a                                         ; $48cc: $9f
    rst $38                                       ; $48cd: $ff
    sbc a                                         ; $48ce: $9f
    rst $38                                       ; $48cf: $ff
    sbc l                                         ; $48d0: $9d
    rst $38                                       ; $48d1: $ff
    cp d                                          ; $48d2: $ba
    rst $38                                       ; $48d3: $ff
    ld a, [$f2bf]                                 ; $48d4: $fa $bf $f2
    cp a                                          ; $48d7: $bf
    ld [hl], d                                    ; $48d8: $72
    ld a, a                                       ; $48d9: $7f
    ld h, d                                       ; $48da: $62
    ld a, a                                       ; $48db: $7f
    ld b, d                                       ; $48dc: $42
    ld a, a                                       ; $48dd: $7f
    ld b, b                                       ; $48de: $40
    ld a, a                                       ; $48df: $7f
    ld h, b                                       ; $48e0: $60
    ld a, a                                       ; $48e1: $7f
    jr nz, jr_0e1_4923                            ; $48e2: $20 $3f

    ld d, $1f                                     ; $48e4: $16 $1f
    add hl, bc                                    ; $48e6: $09
    rrca                                          ; $48e7: $0f
    ld b, $07                                     ; $48e8: $06 $07
    ld [bc], a                                    ; $48ea: $02
    ld bc, $7d81                                  ; $48eb: $01 $81 $7d
    inc bc                                        ; $48ee: $03
    ld a, a                                       ; $48ef: $7f
    sbc d                                         ; $48f0: $9a
    ccf                                           ; $48f1: $3f
    ld a, a                                       ; $48f2: $7f
    cpl                                           ; $48f3: $2f
    ld a, e                                       ; $48f4: $7b
    ld d, $7e                                     ; $48f5: $16 $7e
    ld d, $7e                                     ; $48f7: $16 $7e
    ld [bc], a                                    ; $48f9: $02
    ld a, [hl]                                    ; $48fa: $7e
    ld a, [bc]                                    ; $48fb: $0a
    ld a, [hl]                                    ; $48fc: $7e
    ld [bc], a                                    ; $48fd: $02
    ld a, [hl]                                    ; $48fe: $7e
    ld [bc], a                                    ; $48ff: $02
    ld a, [hl]                                    ; $4900: $7e
    ld [bc], a                                    ; $4901: $02
    ld a, [hl]                                    ; $4902: $7e
    ld [bc], a                                    ; $4903: $02
    ld a, [hl]                                    ; $4904: $7e
    ld [bc], a                                    ; $4905: $02
    ld a, [hl]                                    ; $4906: $7e
    ld b, d                                       ; $4907: $42
    ld a, [hl]                                    ; $4908: $7e
    inc b                                         ; $4909: $04
    ld a, h                                       ; $490a: $7c
    ld [bc], a                                    ; $490b: $02
    ld a, b                                       ; $490c: $78
    rst $38                                       ; $490d: $ff
    dec c                                         ; $490e: $0d
    inc b                                         ; $490f: $04
    ld a, [$f204]                                 ; $4910: $fa $04 $f2
    ei                                            ; $4913: $fb
    db $e3                                        ; $4914: $e3
    ld hl, sp-$1d                                 ; $4915: $f8 $e3
    rst $38                                       ; $4917: $ff
    di                                            ; $4918: $f3
    ld hl, sp-$0d                                 ; $4919: $f8 $f3
    rst $38                                       ; $491b: $ff
    ld [bc], a                                    ; $491c: $02
    rlca                                          ; $491d: $07
    adc [hl]                                      ; $491e: $8e
    add hl, bc                                    ; $491f: $09
    rrca                                          ; $4920: $0f
    add hl, de                                    ; $4921: $19
    rra                                           ; $4922: $1f

jr_0e1_4923:
    scf                                           ; $4923: $37
    ccf                                           ; $4924: $3f
    ld e, a                                       ; $4925: $5f
    ld a, a                                       ; $4926: $7f
    ld e, a                                       ; $4927: $5f
    ld a, a                                       ; $4928: $7f

jr_0e1_4929:
    ld l, d                                       ; $4929: $6a
    ld a, a                                       ; $492a: $7f
    dec a                                         ; $492b: $3d
    ccf                                           ; $492c: $3f
    ld [bc], a                                    ; $492d: $02
    rra                                           ; $492e: $1f
    ld [bc], a                                    ; $492f: $02
    rrca                                          ; $4930: $0f
    adc h                                         ; $4931: $8c
    jr jr_0e1_4953                                ; $4932: $18 $1f

    scf                                           ; $4934: $37
    ccf                                           ; $4935: $3f
    ld d, b                                       ; $4936: $50
    ld a, a                                       ; $4937: $7f
    ld d, b                                       ; $4938: $50
    ld a, a                                       ; $4939: $7f

jr_0e1_493a:
    ret c                                         ; $493a: $d8

    rst $38                                       ; $493b: $ff
    sbc a                                         ; $493c: $9f
    rst $38                                       ; $493d: $ff
    ld [bc], a                                    ; $493e: $02
    ld h, b                                       ; $493f: $60
    adc [hl]                                      ; $4940: $8e
    db $10                                        ; $4941: $10
    ld [hl], b                                    ; $4942: $70
    jr jr_0e1_49bd                                ; $4943: $18 $78

    ld l, h                                       ; $4945: $6c
    ld a, h                                       ; $4946: $7c
    ld a, d                                       ; $4947: $7a
    ld a, [hl]                                    ; $4948: $7e
    ld a, d                                       ; $4949: $7a
    ld a, [hl]                                    ; $494a: $7e
    ld d, [hl]                                    ; $494b: $56
    ld a, [hl]                                    ; $494c: $7e
    inc a                                         ; $494d: $3c
    ld a, h                                       ; $494e: $7c
    ld [bc], a                                    ; $494f: $02
    ld a, b                                       ; $4950: $78
    ld [bc], a                                    ; $4951: $02
    ld [hl], b                                    ; $4952: $70

jr_0e1_4953:
    xor b                                         ; $4953: $a8
    jr jr_0e1_49ce                                ; $4954: $18 $78

    ld l, h                                       ; $4956: $6c
    ld a, h                                       ; $4957: $7c
    ld a, [bc]                                    ; $4958: $0a
    ld a, [hl]                                    ; $4959: $7e
    ld a, [bc]                                    ; $495a: $0a
    ld a, [hl]                                    ; $495b: $7e
    dec de                                        ; $495c: $1b
    ld a, a                                       ; $495d: $7f
    ld a, c                                       ; $495e: $79
    ld a, a                                       ; $495f: $7f
    sbc a                                         ; $4960: $9f
    rst $38                                       ; $4961: $ff
    cp a                                          ; $4962: $bf
    rst $38                                       ; $4963: $ff
    ld a, [$f4ff]                                 ; $4964: $fa $ff $f4
    rst $38                                       ; $4967: $ff
    db $f4                                        ; $4968: $f4
    cp a                                          ; $4969: $bf
    ld h, h                                       ; $496a: $64
    ld a, a                                       ; $496b: $7f
    ld b, b                                       ; $496c: $40
    ld a, a                                       ; $496d: $7f
    ld b, b                                       ; $496e: $40
    ld a, a                                       ; $496f: $7f
    ld b, b                                       ; $4970: $40
    ld a, a                                       ; $4971: $7f
    ld b, b                                       ; $4972: $40
    ld a, a                                       ; $4973: $7f
    ld b, b                                       ; $4974: $40
    ld a, a                                       ; $4975: $7f
    ld b, e                                       ; $4976: $43
    ld a, a                                       ; $4977: $7f
    jr nz, jr_0e1_49b9                            ; $4978: $20 $3f

    inc e                                         ; $497a: $1c
    rra                                           ; $497b: $1f
    ld [bc], a                                    ; $497c: $02
    inc bc                                        ; $497d: $03
    ld [bc], a                                    ; $497e: $02
    nop                                           ; $497f: $00
    add e                                         ; $4980: $83
    ld a, c                                       ; $4981: $79
    ld a, a                                       ; $4982: $7f
    ld a, l                                       ; $4983: $7d
    inc bc                                        ; $4984: $03
    ld a, a                                       ; $4985: $7f
    sub [hl]                                      ; $4986: $96
    cpl                                           ; $4987: $2f
    ld a, a                                       ; $4988: $7f
    cpl                                           ; $4989: $2f
    ld a, l                                       ; $498a: $7d
    ld d, $7e                                     ; $498b: $16 $7e
    ld [de], a                                    ; $498d: $12
    ld a, [hl]                                    ; $498e: $7e
    ld [de], a                                    ; $498f: $12
    ld a, [hl]                                    ; $4990: $7e
    ld [bc], a                                    ; $4991: $02
    ld a, [hl]                                    ; $4992: $7e
    ld [de], a                                    ; $4993: $12
    ld a, [hl]                                    ; $4994: $7e
    ld [bc], a                                    ; $4995: $02
    ld a, [hl]                                    ; $4996: $7e
    ld b, h                                       ; $4997: $44
    ld a, h                                       ; $4998: $7c
    ld [$3078], sp                                ; $4999: $08 $78 $30
    ld [hl], b                                    ; $499c: $70
    ld [bc], a                                    ; $499d: $02
    ld b, b                                       ; $499e: $40
    ld [bc], a                                    ; $499f: $02
    nop                                           ; $49a0: $00
    rst $38                                       ; $49a1: $ff
    dec c                                         ; $49a2: $0d
    inc b                                         ; $49a3: $04
    ld a, [$f204]                                 ; $49a4: $fa $04 $f2
    ei                                            ; $49a7: $fb
    ld [c], a                                     ; $49a8: $e2
    ld hl, sp-$1e                                 ; $49a9: $f8 $e2
    rst $38                                       ; $49ab: $ff
    ld a, [c]                                     ; $49ac: $f2
    ld hl, sp-$0e                                 ; $49ad: $f8 $f2
    rst $38                                       ; $49af: $ff
    ld [bc], a                                    ; $49b0: $02
    rlca                                          ; $49b1: $07
    adc [hl]                                      ; $49b2: $8e
    add hl, bc                                    ; $49b3: $09
    rrca                                          ; $49b4: $0f
    add hl, de                                    ; $49b5: $19
    rra                                           ; $49b6: $1f
    scf                                           ; $49b7: $37
    ccf                                           ; $49b8: $3f

jr_0e1_49b9:
    ld e, a                                       ; $49b9: $5f
    ld a, a                                       ; $49ba: $7f
    ld e, a                                       ; $49bb: $5f
    ld a, a                                       ; $49bc: $7f

jr_0e1_49bd:
    ld l, d                                       ; $49bd: $6a
    ld a, a                                       ; $49be: $7f
    dec a                                         ; $49bf: $3d
    ccf                                           ; $49c0: $3f
    ld [bc], a                                    ; $49c1: $02
    rra                                           ; $49c2: $1f
    ld [bc], a                                    ; $49c3: $02
    rrca                                          ; $49c4: $0f
    adc h                                         ; $49c5: $8c
    jr jr_0e1_49e7                                ; $49c6: $18 $1f

    scf                                           ; $49c8: $37
    ccf                                           ; $49c9: $3f
    ld d, b                                       ; $49ca: $50
    ld a, a                                       ; $49cb: $7f
    ld d, b                                       ; $49cc: $50
    ld a, a                                       ; $49cd: $7f

jr_0e1_49ce:
    ret c                                         ; $49ce: $d8

    rst $38                                       ; $49cf: $ff
    sbc a                                         ; $49d0: $9f
    rst $38                                       ; $49d1: $ff
    ld [bc], a                                    ; $49d2: $02
    ld h, b                                       ; $49d3: $60
    adc [hl]                                      ; $49d4: $8e
    db $10                                        ; $49d5: $10
    ld [hl], b                                    ; $49d6: $70
    jr jr_0e1_4a51                                ; $49d7: $18 $78

    ld l, h                                       ; $49d9: $6c
    ld a, h                                       ; $49da: $7c
    ld a, d                                       ; $49db: $7a
    ld a, [hl]                                    ; $49dc: $7e
    ld a, d                                       ; $49dd: $7a
    ld a, [hl]                                    ; $49de: $7e
    ld d, [hl]                                    ; $49df: $56
    ld a, [hl]                                    ; $49e0: $7e
    inc a                                         ; $49e1: $3c
    ld a, h                                       ; $49e2: $7c
    ld [bc], a                                    ; $49e3: $02
    ld a, b                                       ; $49e4: $78
    ld [bc], a                                    ; $49e5: $02
    ld [hl], b                                    ; $49e6: $70

jr_0e1_49e7:
    adc l                                         ; $49e7: $8d
    jr jr_0e1_4a62                                ; $49e8: $18 $78

    ld h, h                                       ; $49ea: $64
    ld a, h                                       ; $49eb: $7c
    ld a, [bc]                                    ; $49ec: $0a
    ld a, [hl]                                    ; $49ed: $7e
    ld a, [bc]                                    ; $49ee: $0a
    ld a, [hl]                                    ; $49ef: $7e
    ld a, [de]                                    ; $49f0: $1a
    ld a, [hl]                                    ; $49f1: $7e
    ld a, e                                       ; $49f2: $7b
    ld a, a                                       ; $49f3: $7f
    cp a                                          ; $49f4: $bf
    inc bc                                        ; $49f5: $03
    rst $38                                       ; $49f6: $ff
    sbc d                                         ; $49f7: $9a
    ld a, [$f4ff]                                 ; $49f8: $fa $ff $f4
    rst $18                                       ; $49fb: $df
    ld h, b                                       ; $49fc: $60
    ld a, a                                       ; $49fd: $7f
    ld h, b                                       ; $49fe: $60
    ld a, a                                       ; $49ff: $7f
    ld b, b                                       ; $4a00: $40
    ld a, a                                       ; $4a01: $7f
    ld b, b                                       ; $4a02: $40
    ld a, a                                       ; $4a03: $7f
    ld b, b                                       ; $4a04: $40
    ld a, a                                       ; $4a05: $7f
    ld b, b                                       ; $4a06: $40
    ld a, a                                       ; $4a07: $7f
    ld b, b                                       ; $4a08: $40
    ld a, a                                       ; $4a09: $7f
    ld b, b                                       ; $4a0a: $40
    ld a, a                                       ; $4a0b: $7f
    ld b, b                                       ; $4a0c: $40
    ld a, a                                       ; $4a0d: $7f
    ld b, e                                       ; $4a0e: $43
    ld a, a                                       ; $4a0f: $7f
    jr nz, jr_0e1_4a51                            ; $4a10: $20 $3f

    ld [bc], a                                    ; $4a12: $02
    rra                                           ; $4a13: $1f
    sbc h                                         ; $4a14: $9c
    ld a, c                                       ; $4a15: $79
    ld a, a                                       ; $4a16: $7f
    ld a, c                                       ; $4a17: $79
    ld a, a                                       ; $4a18: $7f
    ld a, c                                       ; $4a19: $79
    ld a, a                                       ; $4a1a: $7f
    ld a, l                                       ; $4a1b: $7d
    ld a, a                                       ; $4a1c: $7f
    ld l, a                                       ; $4a1d: $6f
    ld a, l                                       ; $4a1e: $7d
    cpl                                           ; $4a1f: $2f
    ld a, l                                       ; $4a20: $7d
    ld l, $7e                                     ; $4a21: $2e $7e
    ld h, $7e                                     ; $4a23: $26 $7e
    ld [hl+], a                                   ; $4a25: $22
    ld a, [hl]                                    ; $4a26: $7e
    ld [hl+], a                                   ; $4a27: $22
    ld a, [hl]                                    ; $4a28: $7e
    ld h, $7e                                     ; $4a29: $26 $7e
    inc b                                         ; $4a2b: $04
    ld a, h                                       ; $4a2c: $7c
    ld l, b                                       ; $4a2d: $68
    ld a, b                                       ; $4a2e: $78
    db $10                                        ; $4a2f: $10
    ld [hl], b                                    ; $4a30: $70
    ld [bc], a                                    ; $4a31: $02
    ld h, b                                       ; $4a32: $60
    ld [bc], a                                    ; $4a33: $02
    nop                                           ; $4a34: $00
    rst $38                                       ; $4a35: $ff
    dec c                                         ; $4a36: $0d
    inc b                                         ; $4a37: $04
    ld a, [$f204]                                 ; $4a38: $fa $04 $f2
    ei                                            ; $4a3b: $fb
    ld [c], a                                     ; $4a3c: $e2
    ld hl, sp-$1e                                 ; $4a3d: $f8 $e2
    rst $38                                       ; $4a3f: $ff
    ld a, [c]                                     ; $4a40: $f2
    ld hl, sp-$0e                                 ; $4a41: $f8 $f2
    rst $38                                       ; $4a43: $ff
    ld [bc], a                                    ; $4a44: $02
    rlca                                          ; $4a45: $07
    sbc [hl]                                      ; $4a46: $9e
    add hl, bc                                    ; $4a47: $09
    rrca                                          ; $4a48: $0f
    db $10                                        ; $4a49: $10
    rra                                           ; $4a4a: $1f
    scf                                           ; $4a4b: $37
    ccf                                           ; $4a4c: $3f
    ld e, [hl]                                    ; $4a4d: $5e
    ld a, c                                       ; $4a4e: $79
    ld e, a                                       ; $4a4f: $5f
    halt                                          ; $4a50: $76

jr_0e1_4a51:
    ld a, a                                       ; $4a51: $7f
    ld [hl], c                                    ; $4a52: $71
    ccf                                           ; $4a53: $3f
    ld [hl-], a                                   ; $4a54: $32
    rra                                           ; $4a55: $1f
    ld de, $090e                                  ; $4a56: $11 $0e $09
    rra                                           ; $4a59: $1f
    inc e                                         ; $4a5a: $1c
    scf                                           ; $4a5b: $37
    ccf                                           ; $4a5c: $3f
    ld d, a                                       ; $4a5d: $57
    ld a, h                                       ; $4a5e: $7c
    ld e, e                                       ; $4a5f: $5b
    ld a, [hl]                                    ; $4a60: $7e
    ld h, l                                       ; $4a61: $65

jr_0e1_4a62:
    ld a, a                                       ; $4a62: $7f
    and d                                         ; $4a63: $a2
    rst $38                                       ; $4a64: $ff
    ld [bc], a                                    ; $4a65: $02
    ld h, b                                       ; $4a66: $60
    cp d                                          ; $4a67: $ba
    db $10                                        ; $4a68: $10
    ld [hl], b                                    ; $4a69: $70
    ld [$6c78], sp                                ; $4a6a: $08 $78 $6c
    ld a, h                                       ; $4a6d: $7c
    ld a, d                                       ; $4a6e: $7a
    ld e, $7a                                     ; $4a6f: $1e $7a
    ld l, [hl]                                    ; $4a71: $6e
    ld a, [hl]                                    ; $4a72: $7e
    ld c, $7c                                     ; $4a73: $0e $7c
    inc c                                         ; $4a75: $0c
    ld a, b                                       ; $4a76: $78
    ld [$5030], sp                                ; $4a77: $08 $30 $50
    ld a, b                                       ; $4a7a: $78
    jr c, @+$6e                                   ; $4a7b: $38 $6c

    ld a, h                                       ; $4a7d: $7c
    ld l, d                                       ; $4a7e: $6a
    ld a, $5a                                     ; $4a7f: $3e $5a
    ld a, [hl]                                    ; $4a81: $7e
    ld h, $7e                                     ; $4a82: $26 $7e
    ld b, l                                       ; $4a84: $45
    ld a, a                                       ; $4a85: $7f
    pop af                                        ; $4a86: $f1
    rst $38                                       ; $4a87: $ff
    cp a                                          ; $4a88: $bf
    rst $38                                       ; $4a89: $ff
    sbc [hl]                                      ; $4a8a: $9e
    rst $38                                       ; $4a8b: $ff
    cp d                                          ; $4a8c: $ba
    rst $38                                       ; $4a8d: $ff
    ld a, [c]                                     ; $4a8e: $f2
    sbc a                                         ; $4a8f: $9f
    ld [hl], d                                    ; $4a90: $72
    ld e, a                                       ; $4a91: $5f
    ld [hl], b                                    ; $4a92: $70
    ld a, a                                       ; $4a93: $7f
    ld h, h                                       ; $4a94: $64
    ld a, a                                       ; $4a95: $7f
    ld h, h                                       ; $4a96: $64
    ld a, a                                       ; $4a97: $7f
    ld h, b                                       ; $4a98: $60
    ld a, a                                       ; $4a99: $7f
    ld b, b                                       ; $4a9a: $40
    ld a, a                                       ; $4a9b: $7f
    ld b, b                                       ; $4a9c: $40
    ld a, a                                       ; $4a9d: $7f
    ld b, b                                       ; $4a9e: $40
    ld a, a                                       ; $4a9f: $7f
    jr nc, jr_0e1_4ae1                            ; $4aa0: $30 $3f

    ld [bc], a                                    ; $4aa2: $02
    rrca                                          ; $4aa3: $0f
    ld [bc], a                                    ; $4aa4: $02
    nop                                           ; $4aa5: $00
    sbc h                                         ; $4aa6: $9c
    rrca                                          ; $4aa7: $0f
    ld a, a                                       ; $4aa8: $7f
    ld a, l                                       ; $4aa9: $7d
    ld a, a                                       ; $4aaa: $7f
    add hl, sp                                    ; $4aab: $39
    ld a, a                                       ; $4aac: $7f
    dec e                                         ; $4aad: $1d
    ld a, a                                       ; $4aae: $7f
    rrca                                          ; $4aaf: $0f
    ld a, c                                       ; $4ab0: $79
    ld c, $7a                                     ; $4ab1: $0e $7a
    ld b, $7e                                     ; $4ab3: $06 $7e
    ld b, $7e                                     ; $4ab5: $06 $7e
    ld [bc], a                                    ; $4ab7: $02
    ld a, [hl]                                    ; $4ab8: $7e
    ld [bc], a                                    ; $4ab9: $02
    ld a, [hl]                                    ; $4aba: $7e
    ld [bc], a                                    ; $4abb: $02
    ld a, [hl]                                    ; $4abc: $7e
    ld [bc], a                                    ; $4abd: $02
    ld a, [hl]                                    ; $4abe: $7e
    ld [bc], a                                    ; $4abf: $02
    ld a, [hl]                                    ; $4ac0: $7e
    inc c                                         ; $4ac1: $0c
    ld a, h                                       ; $4ac2: $7c
    ld [bc], a                                    ; $4ac3: $02
    ld [hl], b                                    ; $4ac4: $70
    ld [bc], a                                    ; $4ac5: $02
    nop                                           ; $4ac6: $00
    rst $38                                       ; $4ac7: $ff
    dec c                                         ; $4ac8: $0d
    inc b                                         ; $4ac9: $04
    ld a, [$f204]                                 ; $4aca: $fa $04 $f2
    ei                                            ; $4acd: $fb
    db $e3                                        ; $4ace: $e3
    ld hl, sp-$1d                                 ; $4acf: $f8 $e3
    rst $38                                       ; $4ad1: $ff
    di                                            ; $4ad2: $f3
    ld hl, sp-$0d                                 ; $4ad3: $f8 $f3
    rst $38                                       ; $4ad5: $ff
    ld [bc], a                                    ; $4ad6: $02
    rlca                                          ; $4ad7: $07
    sbc [hl]                                      ; $4ad8: $9e
    add hl, bc                                    ; $4ad9: $09
    rrca                                          ; $4ada: $0f
    db $10                                        ; $4adb: $10
    rra                                           ; $4adc: $1f
    scf                                           ; $4add: $37
    ccf                                           ; $4ade: $3f
    ld e, [hl]                                    ; $4adf: $5e
    ld a, c                                       ; $4ae0: $79

jr_0e1_4ae1:
    ld e, a                                       ; $4ae1: $5f
    halt                                          ; $4ae2: $76
    ld a, a                                       ; $4ae3: $7f
    ld [hl], c                                    ; $4ae4: $71
    ccf                                           ; $4ae5: $3f
    ld [hl-], a                                   ; $4ae6: $32
    rra                                           ; $4ae7: $1f
    ld de, $090e                                  ; $4ae8: $11 $0e $09
    rra                                           ; $4aeb: $1f
    inc e                                         ; $4aec: $1c
    scf                                           ; $4aed: $37
    ccf                                           ; $4aee: $3f
    ld d, a                                       ; $4aef: $57
    ld a, h                                       ; $4af0: $7c
    ld e, e                                       ; $4af1: $5b
    ld a, [hl]                                    ; $4af2: $7e
    ld h, l                                       ; $4af3: $65
    ld a, a                                       ; $4af4: $7f
    and d                                         ; $4af5: $a2
    rst $38                                       ; $4af6: $ff
    ld [bc], a                                    ; $4af7: $02
    ld h, b                                       ; $4af8: $60
    cp b                                          ; $4af9: $b8
    db $10                                        ; $4afa: $10
    ld [hl], b                                    ; $4afb: $70
    ld [$6c78], sp                                ; $4afc: $08 $78 $6c
    ld a, h                                       ; $4aff: $7c
    ld a, d                                       ; $4b00: $7a
    ld e, $7a                                     ; $4b01: $1e $7a
    ld l, [hl]                                    ; $4b03: $6e
    ld a, [hl]                                    ; $4b04: $7e
    ld c, $7c                                     ; $4b05: $0e $7c
    inc c                                         ; $4b07: $0c
    ld a, b                                       ; $4b08: $78
    ld [$5030], sp                                ; $4b09: $08 $30 $50
    ld a, b                                       ; $4b0c: $78
    jr c, jr_0e1_4b7b                             ; $4b0d: $38 $6c

    ld a, h                                       ; $4b0f: $7c
    ld l, d                                       ; $4b10: $6a
    ld a, $5a                                     ; $4b11: $3e $5a
    ld a, [hl]                                    ; $4b13: $7e
    ld h, $7e                                     ; $4b14: $26 $7e
    ld b, l                                       ; $4b16: $45
    ld a, a                                       ; $4b17: $7f
    pop af                                        ; $4b18: $f1
    rst $38                                       ; $4b19: $ff
    cp a                                          ; $4b1a: $bf
    rst $38                                       ; $4b1b: $ff
    sbc [hl]                                      ; $4b1c: $9e
    rst $38                                       ; $4b1d: $ff
    cp d                                          ; $4b1e: $ba
    rst $38                                       ; $4b1f: $ff
    ld a, [c]                                     ; $4b20: $f2
    sbc a                                         ; $4b21: $9f
    ld [hl], d                                    ; $4b22: $72
    ld e, a                                       ; $4b23: $5f
    ld h, h                                       ; $4b24: $64
    ld a, a                                       ; $4b25: $7f
    ld h, h                                       ; $4b26: $64
    ld a, a                                       ; $4b27: $7f
    ld h, b                                       ; $4b28: $60
    ld a, a                                       ; $4b29: $7f
    ld b, b                                       ; $4b2a: $40
    ld a, a                                       ; $4b2b: $7f
    ld b, b                                       ; $4b2c: $40
    ld a, a                                       ; $4b2d: $7f
    ld b, b                                       ; $4b2e: $40
    ld a, a                                       ; $4b2f: $7f
    ld a, $3f                                     ; $4b30: $3e $3f
    ld [bc], a                                    ; $4b32: $02
    rrca                                          ; $4b33: $0f
    inc b                                         ; $4b34: $04
    nop                                           ; $4b35: $00
    sbc d                                         ; $4b36: $9a
    rrca                                          ; $4b37: $0f
    ld a, a                                       ; $4b38: $7f
    ld a, l                                       ; $4b39: $7d
    ld a, a                                       ; $4b3a: $7f
    add hl, sp                                    ; $4b3b: $39
    ld a, a                                       ; $4b3c: $7f
    dec e                                         ; $4b3d: $1d
    ld a, a                                       ; $4b3e: $7f
    rrca                                          ; $4b3f: $0f
    ld a, c                                       ; $4b40: $79
    ld c, $7a                                     ; $4b41: $0e $7a
    ld b, $7e                                     ; $4b43: $06 $7e
    ld b, $7e                                     ; $4b45: $06 $7e
    ld [bc], a                                    ; $4b47: $02
    ld a, [hl]                                    ; $4b48: $7e
    ld [bc], a                                    ; $4b49: $02
    ld a, [hl]                                    ; $4b4a: $7e
    ld [bc], a                                    ; $4b4b: $02
    ld a, [hl]                                    ; $4b4c: $7e
    inc b                                         ; $4b4d: $04
    ld a, h                                       ; $4b4e: $7c
    jr jr_0e1_4bc9                                ; $4b4f: $18 $78

    ld [bc], a                                    ; $4b51: $02
    ld h, b                                       ; $4b52: $60
    inc b                                         ; $4b53: $04
    nop                                           ; $4b54: $00
    rst $38                                       ; $4b55: $ff
    dec c                                         ; $4b56: $0d
    inc b                                         ; $4b57: $04
    ld a, [$f204]                                 ; $4b58: $fa $04 $f2
    ei                                            ; $4b5b: $fb
    ld [c], a                                     ; $4b5c: $e2
    ld hl, sp-$1e                                 ; $4b5d: $f8 $e2
    rst $38                                       ; $4b5f: $ff
    ld a, [c]                                     ; $4b60: $f2
    ld hl, sp-$0e                                 ; $4b61: $f8 $f2
    rst $38                                       ; $4b63: $ff
    ld [bc], a                                    ; $4b64: $02
    rlca                                          ; $4b65: $07
    sbc [hl]                                      ; $4b66: $9e
    add hl, bc                                    ; $4b67: $09
    rrca                                          ; $4b68: $0f
    db $10                                        ; $4b69: $10
    rra                                           ; $4b6a: $1f
    scf                                           ; $4b6b: $37
    ccf                                           ; $4b6c: $3f
    ld e, [hl]                                    ; $4b6d: $5e
    ld a, c                                       ; $4b6e: $79
    ld e, a                                       ; $4b6f: $5f
    halt                                          ; $4b70: $76
    ld a, a                                       ; $4b71: $7f
    ld [hl], c                                    ; $4b72: $71
    ccf                                           ; $4b73: $3f
    ld [hl-], a                                   ; $4b74: $32
    rra                                           ; $4b75: $1f
    ld de, $090e                                  ; $4b76: $11 $0e $09
    rra                                           ; $4b79: $1f
    inc e                                         ; $4b7a: $1c

jr_0e1_4b7b:
    scf                                           ; $4b7b: $37
    ccf                                           ; $4b7c: $3f
    ld d, a                                       ; $4b7d: $57
    ld a, h                                       ; $4b7e: $7c
    ld e, e                                       ; $4b7f: $5b
    ld a, [hl]                                    ; $4b80: $7e
    ld h, l                                       ; $4b81: $65
    ld a, a                                       ; $4b82: $7f
    and d                                         ; $4b83: $a2
    rst $38                                       ; $4b84: $ff
    ld [bc], a                                    ; $4b85: $02
    ld h, b                                       ; $4b86: $60
    sbc a                                         ; $4b87: $9f
    db $10                                        ; $4b88: $10
    ld [hl], b                                    ; $4b89: $70
    ld [$6c78], sp                                ; $4b8a: $08 $78 $6c
    ld a, h                                       ; $4b8d: $7c
    ld a, d                                       ; $4b8e: $7a
    ld e, $7a                                     ; $4b8f: $1e $7a
    ld l, [hl]                                    ; $4b91: $6e
    ld a, [hl]                                    ; $4b92: $7e
    ld c, $7c                                     ; $4b93: $0e $7c
    inc c                                         ; $4b95: $0c
    ld a, b                                       ; $4b96: $78
    ld [$5030], sp                                ; $4b97: $08 $30 $50
    ld a, b                                       ; $4b9a: $78
    jr c, @+$6e                                   ; $4b9b: $38 $6c

    ld a, h                                       ; $4b9d: $7c
    ld l, d                                       ; $4b9e: $6a
    ld a, $5a                                     ; $4b9f: $3e $5a
    ld a, [hl]                                    ; $4ba1: $7e
    ld h, $7e                                     ; $4ba2: $26 $7e
    ld b, l                                       ; $4ba4: $45
    ld a, a                                       ; $4ba5: $7f
    or c                                          ; $4ba6: $b1
    inc bc                                        ; $4ba7: $03
    rst $38                                       ; $4ba8: $ff
    sbc b                                         ; $4ba9: $98
    sbc [hl]                                      ; $4baa: $9e
    rst $38                                       ; $4bab: $ff
    sbc d                                         ; $4bac: $9a
    rst $38                                       ; $4bad: $ff
    cp d                                          ; $4bae: $ba
    rst $08                                       ; $4baf: $cf
    ld a, [c]                                     ; $4bb0: $f2
    rst $18                                       ; $4bb1: $df
    ld [hl], d                                    ; $4bb2: $72
    ld a, a                                       ; $4bb3: $7f
    ld h, d                                       ; $4bb4: $62
    ld a, a                                       ; $4bb5: $7f
    ld h, b                                       ; $4bb6: $60
    ld a, a                                       ; $4bb7: $7f
    ld h, b                                       ; $4bb8: $60
    ld a, a                                       ; $4bb9: $7f
    ld b, b                                       ; $4bba: $40
    ld a, a                                       ; $4bbb: $7f
    ld h, h                                       ; $4bbc: $64
    ld a, a                                       ; $4bbd: $7f
    jr nc, jr_0e1_4bff                            ; $4bbe: $30 $3f

    dec c                                         ; $4bc0: $0d
    rrca                                          ; $4bc1: $0f
    ld [bc], a                                    ; $4bc2: $02
    inc bc                                        ; $4bc3: $03
    ld [bc], a                                    ; $4bc4: $02
    nop                                           ; $4bc5: $00
    sbc [hl]                                      ; $4bc6: $9e
    rrca                                          ; $4bc7: $0f
    ld a, a                                       ; $4bc8: $7f

jr_0e1_4bc9:
    ld a, l                                       ; $4bc9: $7d
    ld a, a                                       ; $4bca: $7f
    ccf                                           ; $4bcb: $3f
    ld a, a                                       ; $4bcc: $7f
    rra                                           ; $4bcd: $1f
    ld a, a                                       ; $4bce: $7f
    ld c, $7c                                     ; $4bcf: $0e $7c
    ld c, $7a                                     ; $4bd1: $0e $7a
    ld b, $7e                                     ; $4bd3: $06 $7e
    ld b, $7e                                     ; $4bd5: $06 $7e
    ld [bc], a                                    ; $4bd7: $02
    ld a, [hl]                                    ; $4bd8: $7e
    ld [bc], a                                    ; $4bd9: $02
    ld a, [hl]                                    ; $4bda: $7e
    ld [bc], a                                    ; $4bdb: $02
    ld a, [hl]                                    ; $4bdc: $7e
    ld [bc], a                                    ; $4bdd: $02
    ld a, [hl]                                    ; $4bde: $7e
    ld b, $7e                                     ; $4bdf: $06 $7e
    ld [hl], d                                    ; $4be1: $72
    ld a, [hl]                                    ; $4be2: $7e
    inc e                                         ; $4be3: $1c
    ld a, h                                       ; $4be4: $7c
    ld [bc], a                                    ; $4be5: $02
    ld h, b                                       ; $4be6: $60
    rst $38                                       ; $4be7: $ff
    dec c                                         ; $4be8: $0d
    inc b                                         ; $4be9: $04
    ld a, [$f204]                                 ; $4bea: $fa $04 $f2
    ei                                            ; $4bed: $fb
    db $e3                                        ; $4bee: $e3
    ld hl, sp-$1d                                 ; $4bef: $f8 $e3
    rst $38                                       ; $4bf1: $ff
    di                                            ; $4bf2: $f3
    ld hl, sp-$0d                                 ; $4bf3: $f8 $f3
    rst $38                                       ; $4bf5: $ff
    ld [bc], a                                    ; $4bf6: $02
    rlca                                          ; $4bf7: $07
    sbc [hl]                                      ; $4bf8: $9e
    add hl, bc                                    ; $4bf9: $09
    rrca                                          ; $4bfa: $0f
    db $10                                        ; $4bfb: $10
    rra                                           ; $4bfc: $1f
    scf                                           ; $4bfd: $37
    ccf                                           ; $4bfe: $3f

jr_0e1_4bff:
    ld e, [hl]                                    ; $4bff: $5e
    ld a, c                                       ; $4c00: $79
    ld e, a                                       ; $4c01: $5f
    halt                                          ; $4c02: $76
    ld a, a                                       ; $4c03: $7f
    ld [hl], c                                    ; $4c04: $71
    ccf                                           ; $4c05: $3f
    ld [hl-], a                                   ; $4c06: $32
    rra                                           ; $4c07: $1f
    ld de, $090e                                  ; $4c08: $11 $0e $09
    rra                                           ; $4c0b: $1f
    inc e                                         ; $4c0c: $1c
    scf                                           ; $4c0d: $37
    ccf                                           ; $4c0e: $3f
    ld d, a                                       ; $4c0f: $57
    ld a, h                                       ; $4c10: $7c
    ld e, e                                       ; $4c11: $5b
    ld a, [hl]                                    ; $4c12: $7e
    ld h, l                                       ; $4c13: $65
    ld a, a                                       ; $4c14: $7f
    and d                                         ; $4c15: $a2
    rst $38                                       ; $4c16: $ff
    ld [bc], a                                    ; $4c17: $02
    ld h, b                                       ; $4c18: $60
    cp b                                          ; $4c19: $b8
    db $10                                        ; $4c1a: $10
    ld [hl], b                                    ; $4c1b: $70
    ld [$6c78], sp                                ; $4c1c: $08 $78 $6c
    ld a, h                                       ; $4c1f: $7c
    ld a, d                                       ; $4c20: $7a
    ld e, $7a                                     ; $4c21: $1e $7a
    ld l, [hl]                                    ; $4c23: $6e
    ld a, [hl]                                    ; $4c24: $7e
    ld c, $7c                                     ; $4c25: $0e $7c
    inc c                                         ; $4c27: $0c
    ld a, b                                       ; $4c28: $78
    ld [$5030], sp                                ; $4c29: $08 $30 $50
    ld a, b                                       ; $4c2c: $78
    jr c, jr_0e1_4c9b                             ; $4c2d: $38 $6c

    ld a, h                                       ; $4c2f: $7c
    ld l, d                                       ; $4c30: $6a
    ld a, $5a                                     ; $4c31: $3e $5a
    ld a, [hl]                                    ; $4c33: $7e
    ld h, $7e                                     ; $4c34: $26 $7e
    ld b, l                                       ; $4c36: $45
    ld a, a                                       ; $4c37: $7f
    pop af                                        ; $4c38: $f1
    rst $38                                       ; $4c39: $ff
    cp a                                          ; $4c3a: $bf
    rst $38                                       ; $4c3b: $ff
    sbc [hl]                                      ; $4c3c: $9e
    rst $38                                       ; $4c3d: $ff
    cp d                                          ; $4c3e: $ba
    rst $38                                       ; $4c3f: $ff
    ld a, [c]                                     ; $4c40: $f2
    sbc a                                         ; $4c41: $9f
    ld [hl], h                                    ; $4c42: $74
    ld e, a                                       ; $4c43: $5f
    ld h, h                                       ; $4c44: $64
    ld a, a                                       ; $4c45: $7f
    ld h, b                                       ; $4c46: $60
    ld a, a                                       ; $4c47: $7f
    ld b, b                                       ; $4c48: $40
    ld a, a                                       ; $4c49: $7f
    ld b, b                                       ; $4c4a: $40
    ld a, a                                       ; $4c4b: $7f
    ld b, b                                       ; $4c4c: $40
    ld a, a                                       ; $4c4d: $7f
    jr nz, jr_0e1_4c8f                            ; $4c4e: $20 $3f

    jr jr_0e1_4c71                                ; $4c50: $18 $1f

    ld [bc], a                                    ; $4c52: $02
    rlca                                          ; $4c53: $07
    inc b                                         ; $4c54: $04
    nop                                           ; $4c55: $00
    sbc b                                         ; $4c56: $98
    rrca                                          ; $4c57: $0f
    ld a, a                                       ; $4c58: $7f
    ld a, l                                       ; $4c59: $7d
    ld a, a                                       ; $4c5a: $7f
    add hl, sp                                    ; $4c5b: $39
    ld a, a                                       ; $4c5c: $7f
    dec e                                         ; $4c5d: $1d
    ld a, a                                       ; $4c5e: $7f
    rrca                                          ; $4c5f: $0f
    ld a, c                                       ; $4c60: $79
    ld c, $7a                                     ; $4c61: $0e $7a
    ld b, $7e                                     ; $4c63: $06 $7e
    ld b, $7e                                     ; $4c65: $06 $7e
    ld [bc], a                                    ; $4c67: $02
    ld a, [hl]                                    ; $4c68: $7e
    ld [bc], a                                    ; $4c69: $02
    ld a, [hl]                                    ; $4c6a: $7e
    ld [bc], a                                    ; $4c6b: $02
    ld a, [hl]                                    ; $4c6c: $7e
    ld [bc], a                                    ; $4c6d: $02
    ld a, [hl]                                    ; $4c6e: $7e
    ld [bc], a                                    ; $4c6f: $02
    ld a, h                                       ; $4c70: $7c

jr_0e1_4c71:
    ld [bc], a                                    ; $4c71: $02
    ld [hl], b                                    ; $4c72: $70
    inc b                                         ; $4c73: $04
    nop                                           ; $4c74: $00
    rst $38                                       ; $4c75: $ff
    dec c                                         ; $4c76: $0d
    inc b                                         ; $4c77: $04
    ld a, [$f204]                                 ; $4c78: $fa $04 $f2
    ei                                            ; $4c7b: $fb
    ld [c], a                                     ; $4c7c: $e2
    ld hl, sp-$1e                                 ; $4c7d: $f8 $e2
    rst $38                                       ; $4c7f: $ff
    ld a, [c]                                     ; $4c80: $f2
    ld hl, sp-$0e                                 ; $4c81: $f8 $f2
    rst $38                                       ; $4c83: $ff
    ld [bc], a                                    ; $4c84: $02
    rlca                                          ; $4c85: $07
    sbc [hl]                                      ; $4c86: $9e
    add hl, bc                                    ; $4c87: $09
    rrca                                          ; $4c88: $0f
    db $10                                        ; $4c89: $10
    rra                                           ; $4c8a: $1f
    scf                                           ; $4c8b: $37
    ccf                                           ; $4c8c: $3f
    ld e, [hl]                                    ; $4c8d: $5e
    ld a, c                                       ; $4c8e: $79

jr_0e1_4c8f:
    ld e, a                                       ; $4c8f: $5f
    halt                                          ; $4c90: $76
    ld a, a                                       ; $4c91: $7f
    ld [hl], c                                    ; $4c92: $71
    ccf                                           ; $4c93: $3f
    ld [hl-], a                                   ; $4c94: $32
    rra                                           ; $4c95: $1f
    ld de, $090e                                  ; $4c96: $11 $0e $09
    rra                                           ; $4c99: $1f
    inc e                                         ; $4c9a: $1c

jr_0e1_4c9b:
    scf                                           ; $4c9b: $37
    ccf                                           ; $4c9c: $3f
    ld d, a                                       ; $4c9d: $57
    ld a, h                                       ; $4c9e: $7c
    ld e, e                                       ; $4c9f: $5b
    ld a, [hl]                                    ; $4ca0: $7e
    ld h, l                                       ; $4ca1: $65
    ld a, a                                       ; $4ca2: $7f
    and d                                         ; $4ca3: $a2
    rst $38                                       ; $4ca4: $ff
    ld [bc], a                                    ; $4ca5: $02
    ld h, b                                       ; $4ca6: $60
    cp h                                          ; $4ca7: $bc
    db $10                                        ; $4ca8: $10
    ld [hl], b                                    ; $4ca9: $70
    ld [$6c78], sp                                ; $4caa: $08 $78 $6c
    ld a, h                                       ; $4cad: $7c
    ld a, d                                       ; $4cae: $7a
    ld e, $7a                                     ; $4caf: $1e $7a
    ld l, [hl]                                    ; $4cb1: $6e
    ld a, [hl]                                    ; $4cb2: $7e
    ld c, $7c                                     ; $4cb3: $0e $7c
    inc c                                         ; $4cb5: $0c
    ld a, b                                       ; $4cb6: $78
    ld [$5030], sp                                ; $4cb7: $08 $30 $50
    ld a, b                                       ; $4cba: $78
    jr c, @+$6e                                   ; $4cbb: $38 $6c

    ld a, h                                       ; $4cbd: $7c
    ld l, d                                       ; $4cbe: $6a
    ld a, $5a                                     ; $4cbf: $3e $5a
    ld a, [hl]                                    ; $4cc1: $7e
    ld h, $7e                                     ; $4cc2: $26 $7e
    ld b, l                                       ; $4cc4: $45
    ld a, a                                       ; $4cc5: $7f
    pop af                                        ; $4cc6: $f1
    rst $38                                       ; $4cc7: $ff
    cp a                                          ; $4cc8: $bf
    rst $38                                       ; $4cc9: $ff
    cp $ff                                        ; $4cca: $fe $ff
    ld a, [$f4ff]                                 ; $4ccc: $fa $ff $f4
    cp a                                          ; $4ccf: $bf
    ld [hl], b                                    ; $4cd0: $70
    ld e, a                                       ; $4cd1: $5f
    ld h, b                                       ; $4cd2: $60
    ld a, a                                       ; $4cd3: $7f
    ld h, b                                       ; $4cd4: $60
    ld a, a                                       ; $4cd5: $7f
    ld b, b                                       ; $4cd6: $40
    ld a, a                                       ; $4cd7: $7f
    ld b, b                                       ; $4cd8: $40
    ld a, a                                       ; $4cd9: $7f
    ld b, b                                       ; $4cda: $40
    ld a, a                                       ; $4cdb: $7f
    ld b, b                                       ; $4cdc: $40
    ld a, a                                       ; $4cdd: $7f
    ld h, b                                       ; $4cde: $60
    ld a, a                                       ; $4cdf: $7f
    ld c, a                                       ; $4ce0: $4f
    ld a, a                                       ; $4ce1: $7f
    add hl, sp                                    ; $4ce2: $39
    ccf                                           ; $4ce3: $3f
    ld [bc], a                                    ; $4ce4: $02
    ld b, $81                                     ; $4ce5: $06 $81
    dec c                                         ; $4ce7: $0d
    inc bc                                        ; $4ce8: $03
    ld a, a                                       ; $4ce9: $7f
    sbc b                                         ; $4cea: $98
    add hl, sp                                    ; $4ceb: $39
    ld a, a                                       ; $4cec: $7f
    add hl, de                                    ; $4ced: $19
    ld a, a                                       ; $4cee: $7f
    dec e                                         ; $4cef: $1d
    ld [hl], e                                    ; $4cf0: $73
    rrca                                          ; $4cf1: $0f
    ld a, e                                       ; $4cf2: $7b
    ld c, $7e                                     ; $4cf3: $0e $7e
    ld b, $7e                                     ; $4cf5: $06 $7e
    ld b, $7e                                     ; $4cf7: $06 $7e
    ld b, $7e                                     ; $4cf9: $06 $7e
    ld [bc], a                                    ; $4cfb: $02
    ld a, [hl]                                    ; $4cfc: $7e
    ld h, $7e                                     ; $4cfd: $26 $7e
    inc c                                         ; $4cff: $0c
    ld a, h                                       ; $4d00: $7c
    jr nc, jr_0e1_4d73                            ; $4d01: $30 $70

    ld [bc], a                                    ; $4d03: $02
    ld b, b                                       ; $4d04: $40
    ld [bc], a                                    ; $4d05: $02
    nop                                           ; $4d06: $00
    rst $38                                       ; $4d07: $ff
    dec c                                         ; $4d08: $0d
    inc b                                         ; $4d09: $04
    ld a, [$f204]                                 ; $4d0a: $fa $04 $f2
    ei                                            ; $4d0d: $fb
    ld [c], a                                     ; $4d0e: $e2
    ld a, [$fee3]                                 ; $4d0f: $fa $e3 $fe
    ld a, [c]                                     ; $4d12: $f2
    ld sp, hl                                     ; $4d13: $f9
    ld a, [c]                                     ; $4d14: $f2
    db $fd                                        ; $4d15: $fd
    ld [bc], a                                    ; $4d16: $02
    ld e, $9e                                     ; $4d17: $1e $9e
    ld hl, $723f                                  ; $4d19: $21 $3f $72
    ld a, a                                       ; $4d1c: $7f
    ld a, l                                       ; $4d1d: $7d
    ld a, a                                       ; $4d1e: $7f
    ld b, a                                       ; $4d1f: $47
    ld a, a                                       ; $4d20: $7f
    add e                                         ; $4d21: $83
    cp $c7                                        ; $4d22: $fe $c7
    db $fc                                        ; $4d24: $fc
    ld a, a                                       ; $4d25: $7f
    ld a, [hl]                                    ; $4d26: $7e
    ccf                                           ; $4d27: $3f
    jr c, jr_0e1_4d69                             ; $4d28: $38 $3f

    inc a                                         ; $4d2a: $3c
    cpl                                           ; $4d2b: $2f
    ld a, $17                                     ; $4d2c: $3e $17
    dec e                                         ; $4d2e: $1d
    add hl, hl                                    ; $4d2f: $29
    ld a, $66                                     ; $4d30: $3e $66
    ld a, a                                       ; $4d32: $7f
    ld h, e                                       ; $4d33: $63
    ld a, a                                       ; $4d34: $7f
    ld b, h                                       ; $4d35: $44
    ld a, a                                       ; $4d36: $7f
    ld [bc], a                                    ; $4d37: $02
    ld [$0686], sp                                ; $4d38: $08 $86 $06
    ld c, $0d                                     ; $4d3b: $0e $0d
    rrca                                          ; $4d3d: $0f
    ld c, $02                                     ; $4d3e: $0e $02
    inc bc                                        ; $4d40: $03
    ld c, $89                                     ; $4d41: $0e $89
    ld [bc], a                                    ; $4d43: $02
    rrca                                          ; $4d44: $0f
    ld bc, $020e                                  ; $4d45: $01 $0e $02
    ld a, [bc]                                    ; $4d48: $0a
    ld b, $0c                                     ; $4d49: $06 $0c
    inc b                                         ; $4d4b: $04
    inc b                                         ; $4d4c: $04
    ld [$04a6], sp                                ; $4d4d: $08 $a6 $04
    inc c                                         ; $4d50: $0c
    ld a, [bc]                                    ; $4d51: $0a
    ld c, $06                                     ; $4d52: $0e $06
    ld c, $46                                     ; $4d54: $0e $46
    cp $20                                        ; $4d56: $fe $20
    jr c, jr_0e1_4d81                             ; $4d58: $38 $27

    ccf                                           ; $4d5a: $3f
    inc sp                                        ; $4d5b: $33
    ccf                                           ; $4d5c: $3f
    ld [hl-], a                                   ; $4d5d: $32
    ccf                                           ; $4d5e: $3f
    ld [hl], a                                    ; $4d5f: $77
    ld a, l                                       ; $4d60: $7d
    ld a, a                                       ; $4d61: $7f
    ld a, c                                       ; $4d62: $79
    xor $ff                                       ; $4d63: $ee $ff
    ret nz                                        ; $4d65: $c0

    rst $38                                       ; $4d66: $ff
    ret nz                                        ; $4d67: $c0

    rst $38                                       ; $4d68: $ff

jr_0e1_4d69:
    add b                                         ; $4d69: $80
    rst $38                                       ; $4d6a: $ff
    add b                                         ; $4d6b: $80
    rst $38                                       ; $4d6c: $ff
    add b                                         ; $4d6d: $80
    rst $38                                       ; $4d6e: $ff
    add b                                         ; $4d6f: $80
    rst $38                                       ; $4d70: $ff
    add b                                         ; $4d71: $80
    rst $38                                       ; $4d72: $ff

jr_0e1_4d73:
    ld h, b                                       ; $4d73: $60
    ld a, a                                       ; $4d74: $7f
    ld [bc], a                                    ; $4d75: $02
    rra                                           ; $4d76: $1f
    ld [bc], a                                    ; $4d77: $02
    nop                                           ; $4d78: $00
    ld [bc], a                                    ; $4d79: $02
    ld c, $02                                     ; $4d7a: $0e $02
    inc c                                         ; $4d7c: $0c
    sub [hl]                                      ; $4d7d: $96
    ld a, [bc]                                    ; $4d7e: $0a
    ld c, $02                                     ; $4d7f: $0e $02

jr_0e1_4d81:
    ld c, $02                                     ; $4d81: $0e $02
    ld c, $02                                     ; $4d83: $0e $02
    ld c, $01                                     ; $4d85: $0e $01
    rrca                                          ; $4d87: $0f
    ld bc, $010f                                  ; $4d88: $01 $0f $01
    rrca                                          ; $4d8b: $0f
    ld bc, $010f                                  ; $4d8c: $01 $0f $01
    rrca                                          ; $4d8f: $0f
    ld bc, $010f                                  ; $4d90: $01 $0f $01
    rrca                                          ; $4d93: $0f
    ld [bc], a                                    ; $4d94: $02
    ld c, $02                                     ; $4d95: $0e $02
    nop                                           ; $4d97: $00
    rst $38                                       ; $4d98: $ff
    dec c                                         ; $4d99: $0d
    inc b                                         ; $4d9a: $04
    ld a, [$f204]                                 ; $4d9b: $fa $04 $f2
    ei                                            ; $4d9e: $fb
    db $e3                                        ; $4d9f: $e3
    ld a, [$fee4]                                 ; $4da0: $fa $e4 $fe
    di                                            ; $4da3: $f3
    ld hl, sp-$0d                                 ; $4da4: $f8 $f3
    db $fd                                        ; $4da6: $fd
    ld [bc], a                                    ; $4da7: $02
    ld e, $9e                                     ; $4da8: $1e $9e
    ld hl, $723f                                  ; $4daa: $21 $3f $72
    ld a, a                                       ; $4dad: $7f
    ld a, l                                       ; $4dae: $7d
    ld a, a                                       ; $4daf: $7f
    ld b, a                                       ; $4db0: $47
    ld a, a                                       ; $4db1: $7f
    add e                                         ; $4db2: $83
    cp $c7                                        ; $4db3: $fe $c7
    db $fc                                        ; $4db5: $fc
    ld a, a                                       ; $4db6: $7f
    ld a, [hl]                                    ; $4db7: $7e
    ccf                                           ; $4db8: $3f
    jr c, jr_0e1_4dfa                             ; $4db9: $38 $3f

    inc a                                         ; $4dbb: $3c
    cpl                                           ; $4dbc: $2f
    ld a, $17                                     ; $4dbd: $3e $17
    dec e                                         ; $4dbf: $1d
    add hl, hl                                    ; $4dc0: $29
    ld a, $66                                     ; $4dc1: $3e $66
    ld a, a                                       ; $4dc3: $7f
    ld h, e                                       ; $4dc4: $63
    ld a, a                                       ; $4dc5: $7f
    ld b, h                                       ; $4dc6: $44
    ld a, a                                       ; $4dc7: $7f
    ld [bc], a                                    ; $4dc8: $02
    ld [$0686], sp                                ; $4dc9: $08 $86 $06
    ld c, $0d                                     ; $4dcc: $0e $0d
    rrca                                          ; $4dce: $0f
    ld c, $02                                     ; $4dcf: $0e $02
    inc bc                                        ; $4dd1: $03
    ld c, $89                                     ; $4dd2: $0e $89
    ld [bc], a                                    ; $4dd4: $02
    rrca                                          ; $4dd5: $0f
    ld bc, $020e                                  ; $4dd6: $01 $0e $02
    ld a, [bc]                                    ; $4dd9: $0a
    ld b, $0c                                     ; $4dda: $06 $0c
    inc b                                         ; $4ddc: $04
    inc b                                         ; $4ddd: $04
    ld [$0494], sp                                ; $4dde: $08 $94 $04
    inc c                                         ; $4de1: $0c
    ld a, [bc]                                    ; $4de2: $0a
    ld c, $06                                     ; $4de3: $0e $06
    ld c, $46                                     ; $4de5: $0e $46
    cp $10                                        ; $4de7: $fe $10
    inc e                                         ; $4de9: $1c
    inc de                                        ; $4dea: $13
    rra                                           ; $4deb: $1f
    add hl, de                                    ; $4dec: $19
    rra                                           ; $4ded: $1f
    add hl, sp                                    ; $4dee: $39
    ccf                                           ; $4def: $3f
    dec sp                                        ; $4df0: $3b
    ld a, $7f                                     ; $4df1: $3e $7f
    ld a, h                                       ; $4df3: $7c
    ld [bc], a                                    ; $4df4: $02
    ld a, a                                       ; $4df5: $7f
    adc [hl]                                      ; $4df6: $8e
    ld [hl], h                                    ; $4df7: $74
    ld a, a                                       ; $4df8: $7f
    ld h, b                                       ; $4df9: $60

jr_0e1_4dfa:
    ld a, a                                       ; $4dfa: $7f
    ld b, b                                       ; $4dfb: $40
    ld a, a                                       ; $4dfc: $7f
    ld b, b                                       ; $4dfd: $40
    ld a, a                                       ; $4dfe: $7f
    add b                                         ; $4dff: $80
    rst $38                                       ; $4e00: $ff
    add b                                         ; $4e01: $80
    rst $38                                       ; $4e02: $ff
    ld h, b                                       ; $4e03: $60
    ld a, a                                       ; $4e04: $7f
    ld [bc], a                                    ; $4e05: $02
    rra                                           ; $4e06: $1f
    inc b                                         ; $4e07: $04
    nop                                           ; $4e08: $00
    ld [bc], a                                    ; $4e09: $02
    ld e, $02                                     ; $4e0a: $1e $02
    inc e                                         ; $4e0c: $1c
    sub [hl]                                      ; $4e0d: $96
    ld a, [bc]                                    ; $4e0e: $0a
    ld e, $12                                     ; $4e0f: $1e $12
    ld e, $12                                     ; $4e11: $1e $12
    ld e, $02                                     ; $4e13: $1e $02
    ld e, $01                                     ; $4e15: $1e $01
    rra                                           ; $4e17: $1f
    ld bc, $011f                                  ; $4e18: $01 $1f $01
    rra                                           ; $4e1b: $1f
    ld bc, $011f                                  ; $4e1c: $01 $1f $01
    rra                                           ; $4e1f: $1f
    ld bc, $0e1f                                  ; $4e20: $01 $1f $0e
    ld e, $02                                     ; $4e23: $1e $02
    inc e                                         ; $4e25: $1c
    ld [bc], a                                    ; $4e26: $02
    nop                                           ; $4e27: $00
    rst $38                                       ; $4e28: $ff
    dec c                                         ; $4e29: $0d
    inc b                                         ; $4e2a: $04
    ld a, [$f204]                                 ; $4e2b: $fa $04 $f2
    ei                                            ; $4e2e: $fb
    ld [c], a                                     ; $4e2f: $e2
    ld a, [$fee3]                                 ; $4e30: $fa $e3 $fe
    ld a, [c]                                     ; $4e33: $f2
    ld hl, sp-$0e                                 ; $4e34: $f8 $f2
    rst $38                                       ; $4e36: $ff
    ld [bc], a                                    ; $4e37: $02
    ld e, $9e                                     ; $4e38: $1e $9e
    ld hl, $723f                                  ; $4e3a: $21 $3f $72
    ld a, a                                       ; $4e3d: $7f
    ld a, l                                       ; $4e3e: $7d
    ld a, a                                       ; $4e3f: $7f
    ld b, a                                       ; $4e40: $47
    ld a, a                                       ; $4e41: $7f
    add e                                         ; $4e42: $83
    cp $c7                                        ; $4e43: $fe $c7
    db $fc                                        ; $4e45: $fc
    ld a, a                                       ; $4e46: $7f
    ld a, [hl]                                    ; $4e47: $7e
    ccf                                           ; $4e48: $3f
    jr c, jr_0e1_4e8a                             ; $4e49: $38 $3f

    inc a                                         ; $4e4b: $3c
    cpl                                           ; $4e4c: $2f
    ld a, $17                                     ; $4e4d: $3e $17
    dec e                                         ; $4e4f: $1d
    add hl, hl                                    ; $4e50: $29
    ld a, $66                                     ; $4e51: $3e $66
    ld a, a                                       ; $4e53: $7f
    ld h, e                                       ; $4e54: $63
    ld a, a                                       ; $4e55: $7f
    ld b, h                                       ; $4e56: $44
    ld a, a                                       ; $4e57: $7f
    ld [bc], a                                    ; $4e58: $02
    ld [$0686], sp                                ; $4e59: $08 $86 $06
    ld c, $0d                                     ; $4e5c: $0e $0d
    rrca                                          ; $4e5e: $0f
    ld c, $02                                     ; $4e5f: $0e $02
    inc bc                                        ; $4e61: $03
    ld c, $89                                     ; $4e62: $0e $89
    ld [bc], a                                    ; $4e64: $02
    rrca                                          ; $4e65: $0f
    ld bc, $020e                                  ; $4e66: $01 $0e $02
    ld a, [bc]                                    ; $4e69: $0a
    ld b, $0c                                     ; $4e6a: $06 $0c
    inc b                                         ; $4e6c: $04
    inc b                                         ; $4e6d: $04
    ld [$048f], sp                                ; $4e6e: $08 $8f $04
    inc c                                         ; $4e71: $0c
    ld a, [bc]                                    ; $4e72: $0a
    ld c, $06                                     ; $4e73: $0e $06
    ld c, $c6                                     ; $4e75: $0e $c6
    cp $10                                        ; $4e77: $fe $10
    inc e                                         ; $4e79: $1c
    add hl, de                                    ; $4e7a: $19
    rra                                           ; $4e7b: $1f
    jr jr_0e1_4e9d                                ; $4e7c: $18 $1f

    inc a                                         ; $4e7e: $3c
    ld [bc], a                                    ; $4e7f: $02
    ccf                                           ; $4e80: $3f
    sub l                                         ; $4e81: $95
    ld a, $7f                                     ; $4e82: $3e $7f
    ld a, [hl]                                    ; $4e84: $7e
    ld [hl], c                                    ; $4e85: $71
    ld a, a                                       ; $4e86: $7f
    ld h, b                                       ; $4e87: $60
    ld a, a                                       ; $4e88: $7f
    ld h, b                                       ; $4e89: $60

jr_0e1_4e8a:
    ld a, a                                       ; $4e8a: $7f
    ld b, b                                       ; $4e8b: $40
    ld a, a                                       ; $4e8c: $7f
    ld b, b                                       ; $4e8d: $40
    ld a, a                                       ; $4e8e: $7f
    add b                                         ; $4e8f: $80
    rst $38                                       ; $4e90: $ff
    add b                                         ; $4e91: $80
    rst $38                                       ; $4e92: $ff
    add b                                         ; $4e93: $80
    rst $38                                       ; $4e94: $ff
    ld b, b                                       ; $4e95: $40
    ld a, a                                       ; $4e96: $7f
    ld [bc], a                                    ; $4e97: $02
    ccf                                           ; $4e98: $3f
    ld [bc], a                                    ; $4e99: $02
    nop                                           ; $4e9a: $00
    ld [bc], a                                    ; $4e9b: $02
    ld a, b                                       ; $4e9c: $78

jr_0e1_4e9d:
    ld [bc], a                                    ; $4e9d: $02
    ld [hl], b                                    ; $4e9e: $70
    sub [hl]                                      ; $4e9f: $96
    ld l, b                                       ; $4ea0: $68
    ld a, b                                       ; $4ea1: $78
    ld l, b                                       ; $4ea2: $68
    jr c, jr_0e1_4ee9                             ; $4ea3: $38 $44

    ld a, h                                       ; $4ea5: $7c
    inc b                                         ; $4ea6: $04
    ld a, h                                       ; $4ea7: $7c
    inc b                                         ; $4ea8: $04
    ld a, h                                       ; $4ea9: $7c
    inc b                                         ; $4eaa: $04
    ld a, h                                       ; $4eab: $7c
    ld [hl+], a                                   ; $4eac: $22
    ld a, [hl]                                    ; $4ead: $7e
    ld [bc], a                                    ; $4eae: $02
    ld a, [hl]                                    ; $4eaf: $7e
    ld b, d                                       ; $4eb0: $42
    ld a, [hl]                                    ; $4eb1: $7e
    ld b, l                                       ; $4eb2: $45
    ld a, a                                       ; $4eb3: $7f
    ld c, $7e                                     ; $4eb4: $0e $7e
    ld [bc], a                                    ; $4eb6: $02
    ld [hl], b                                    ; $4eb7: $70
    ld [bc], a                                    ; $4eb8: $02
    nop                                           ; $4eb9: $00
    rst $38                                       ; $4eba: $ff
    dec c                                         ; $4ebb: $0d
    inc b                                         ; $4ebc: $04
    ld a, [$f204]                                 ; $4ebd: $fa $04 $f2
    ei                                            ; $4ec0: $fb
    db $e3                                        ; $4ec1: $e3
    ld a, [$fee4]                                 ; $4ec2: $fa $e4 $fe
    di                                            ; $4ec5: $f3
    ld hl, sp-$0d                                 ; $4ec6: $f8 $f3
    db $fd                                        ; $4ec8: $fd
    ld [bc], a                                    ; $4ec9: $02
    ld e, $9e                                     ; $4eca: $1e $9e
    ld hl, $723f                                  ; $4ecc: $21 $3f $72
    ld a, a                                       ; $4ecf: $7f
    ld a, l                                       ; $4ed0: $7d
    ld a, a                                       ; $4ed1: $7f
    ld b, a                                       ; $4ed2: $47
    ld a, a                                       ; $4ed3: $7f
    add e                                         ; $4ed4: $83
    cp $c7                                        ; $4ed5: $fe $c7
    db $fc                                        ; $4ed7: $fc
    ld a, a                                       ; $4ed8: $7f
    ld a, [hl]                                    ; $4ed9: $7e
    ccf                                           ; $4eda: $3f
    jr c, jr_0e1_4f1c                             ; $4edb: $38 $3f

    inc a                                         ; $4edd: $3c
    cpl                                           ; $4ede: $2f
    ld a, $17                                     ; $4edf: $3e $17
    dec e                                         ; $4ee1: $1d
    add hl, hl                                    ; $4ee2: $29
    ld a, $66                                     ; $4ee3: $3e $66
    ld a, a                                       ; $4ee5: $7f
    ld h, e                                       ; $4ee6: $63
    ld a, a                                       ; $4ee7: $7f
    ld b, h                                       ; $4ee8: $44

jr_0e1_4ee9:
    ld a, a                                       ; $4ee9: $7f
    ld [bc], a                                    ; $4eea: $02
    ld [$0686], sp                                ; $4eeb: $08 $86 $06
    ld c, $0d                                     ; $4eee: $0e $0d
    rrca                                          ; $4ef0: $0f
    ld c, $02                                     ; $4ef1: $0e $02
    inc bc                                        ; $4ef3: $03
    ld c, $89                                     ; $4ef4: $0e $89
    ld [bc], a                                    ; $4ef6: $02
    rrca                                          ; $4ef7: $0f
    ld bc, $020e                                  ; $4ef8: $01 $0e $02
    ld a, [bc]                                    ; $4efb: $0a
    ld b, $0c                                     ; $4efc: $06 $0c
    inc b                                         ; $4efe: $04
    inc b                                         ; $4eff: $04
    ld [$04a4], sp                                ; $4f00: $08 $a4 $04
    inc c                                         ; $4f03: $0c
    ld a, [bc]                                    ; $4f04: $0a
    ld c, $06                                     ; $4f05: $0e $06
    ld c, $46                                     ; $4f07: $0e $46
    cp $10                                        ; $4f09: $fe $10
    inc e                                         ; $4f0b: $1c
    inc de                                        ; $4f0c: $13
    rra                                           ; $4f0d: $1f
    add hl, de                                    ; $4f0e: $19
    rra                                           ; $4f0f: $1f
    add hl, sp                                    ; $4f10: $39
    ccf                                           ; $4f11: $3f
    dec sp                                        ; $4f12: $3b
    ld a, $7f                                     ; $4f13: $3e $7f
    ld a, h                                       ; $4f15: $7c
    ld [hl], a                                    ; $4f16: $77
    ld a, a                                       ; $4f17: $7f
    ld h, h                                       ; $4f18: $64
    ld a, a                                       ; $4f19: $7f
    ld h, b                                       ; $4f1a: $60
    ld a, a                                       ; $4f1b: $7f

jr_0e1_4f1c:
    ld b, b                                       ; $4f1c: $40
    ld a, a                                       ; $4f1d: $7f
    ld b, b                                       ; $4f1e: $40
    ld a, a                                       ; $4f1f: $7f
    add b                                         ; $4f20: $80
    rst $38                                       ; $4f21: $ff
    add b                                         ; $4f22: $80
    rst $38                                       ; $4f23: $ff
    ld h, b                                       ; $4f24: $60
    ld a, a                                       ; $4f25: $7f
    ld [bc], a                                    ; $4f26: $02
    rra                                           ; $4f27: $1f
    inc b                                         ; $4f28: $04
    nop                                           ; $4f29: $00
    ld [bc], a                                    ; $4f2a: $02
    ld e, $02                                     ; $4f2b: $1e $02
    inc e                                         ; $4f2d: $1c
    sub [hl]                                      ; $4f2e: $96
    ld a, [bc]                                    ; $4f2f: $0a
    ld e, $12                                     ; $4f30: $1e $12
    ld e, $12                                     ; $4f32: $1e $12
    ld e, $01                                     ; $4f34: $1e $01
    rra                                           ; $4f36: $1f
    ld bc, $011f                                  ; $4f37: $01 $1f $01
    rra                                           ; $4f3a: $1f
    ld bc, $011f                                  ; $4f3b: $01 $1f $01
    rra                                           ; $4f3e: $1f
    dec b                                         ; $4f3f: $05
    rra                                           ; $4f40: $1f
    rlca                                          ; $4f41: $07
    rra                                           ; $4f42: $1f
    ld c, $1e                                     ; $4f43: $0e $1e
    ld [bc], a                                    ; $4f45: $02
    db $10                                        ; $4f46: $10
    ld [bc], a                                    ; $4f47: $02
    nop                                           ; $4f48: $00
    rst $38                                       ; $4f49: $ff
    dec c                                         ; $4f4a: $0d
    inc b                                         ; $4f4b: $04
    ld a, [$f204]                                 ; $4f4c: $fa $04 $f2
    ei                                            ; $4f4f: $fb
    ld [c], a                                     ; $4f50: $e2
    ld a, [$fee3]                                 ; $4f51: $fa $e3 $fe
    ld a, [c]                                     ; $4f54: $f2
    ld hl, sp-$0e                                 ; $4f55: $f8 $f2
    rst $38                                       ; $4f57: $ff
    ld [bc], a                                    ; $4f58: $02
    ld e, $9e                                     ; $4f59: $1e $9e
    ld hl, $723f                                  ; $4f5b: $21 $3f $72
    ld a, a                                       ; $4f5e: $7f
    ld a, l                                       ; $4f5f: $7d
    ld a, a                                       ; $4f60: $7f
    ld b, a                                       ; $4f61: $47
    ld a, a                                       ; $4f62: $7f
    add e                                         ; $4f63: $83
    cp $c7                                        ; $4f64: $fe $c7
    db $fc                                        ; $4f66: $fc
    ld a, a                                       ; $4f67: $7f
    ld a, [hl]                                    ; $4f68: $7e
    ccf                                           ; $4f69: $3f
    jr c, jr_0e1_4fab                             ; $4f6a: $38 $3f

    inc a                                         ; $4f6c: $3c
    cpl                                           ; $4f6d: $2f
    ld a, $17                                     ; $4f6e: $3e $17
    dec e                                         ; $4f70: $1d
    add hl, hl                                    ; $4f71: $29
    ld a, $66                                     ; $4f72: $3e $66
    ld a, a                                       ; $4f74: $7f
    ld b, e                                       ; $4f75: $43
    ld a, a                                       ; $4f76: $7f
    ld b, h                                       ; $4f77: $44
    ld a, a                                       ; $4f78: $7f
    ld [bc], a                                    ; $4f79: $02
    ld [$0686], sp                                ; $4f7a: $08 $86 $06
    ld c, $0d                                     ; $4f7d: $0e $0d
    rrca                                          ; $4f7f: $0f
    ld c, $02                                     ; $4f80: $0e $02
    inc bc                                        ; $4f82: $03
    ld c, $89                                     ; $4f83: $0e $89
    ld [bc], a                                    ; $4f85: $02
    rrca                                          ; $4f86: $0f
    ld bc, $020e                                  ; $4f87: $01 $0e $02
    ld a, [bc]                                    ; $4f8a: $0a
    ld b, $0c                                     ; $4f8b: $06 $0c
    inc b                                         ; $4f8d: $04
    inc b                                         ; $4f8e: $04
    ld [$04a6], sp                                ; $4f8f: $08 $a6 $04
    inc c                                         ; $4f92: $0c
    ld a, [bc]                                    ; $4f93: $0a
    ld c, $06                                     ; $4f94: $0e $06
    ld c, $c6                                     ; $4f96: $0e $c6
    cp $10                                        ; $4f98: $fe $10
    inc e                                         ; $4f9a: $1c
    inc de                                        ; $4f9b: $13
    rra                                           ; $4f9c: $1f
    inc de                                        ; $4f9d: $13
    rra                                           ; $4f9e: $1f
    ld de, $1b1f                                  ; $4f9f: $11 $1f $1b
    dec e                                         ; $4fa2: $1d
    ccf                                           ; $4fa3: $3f
    add hl, sp                                    ; $4fa4: $39
    ld a, $3f                                     ; $4fa5: $3e $3f
    halt                                          ; $4fa7: $76
    ld a, a                                       ; $4fa8: $7f
    ld [hl], d                                    ; $4fa9: $72
    ld a, a                                       ; $4faa: $7f

jr_0e1_4fab:
    ld h, b                                       ; $4fab: $60
    ld a, a                                       ; $4fac: $7f
    ld h, c                                       ; $4fad: $61
    ld a, a                                       ; $4fae: $7f
    ld b, b                                       ; $4faf: $40
    ld a, a                                       ; $4fb0: $7f
    ret nz                                        ; $4fb1: $c0

    rst $38                                       ; $4fb2: $ff
    add b                                         ; $4fb3: $80
    rst $38                                       ; $4fb4: $ff
    ld [hl], b                                    ; $4fb5: $70
    ld a, a                                       ; $4fb6: $7f
    ld [bc], a                                    ; $4fb7: $02
    rrca                                          ; $4fb8: $0f
    ld [bc], a                                    ; $4fb9: $02
    nop                                           ; $4fba: $00
    ld [bc], a                                    ; $4fbb: $02
    ld a, b                                       ; $4fbc: $78
    ld [bc], a                                    ; $4fbd: $02
    ld [hl], b                                    ; $4fbe: $70
    sbc b                                         ; $4fbf: $98
    jr z, jr_0e1_503a                             ; $4fc0: $28 $78

    ld [$0478], sp                                ; $4fc2: $08 $78 $04
    ld a, h                                       ; $4fc5: $7c
    inc b                                         ; $4fc6: $04
    ld a, h                                       ; $4fc7: $7c
    inc b                                         ; $4fc8: $04
    ld a, h                                       ; $4fc9: $7c
    inc b                                         ; $4fca: $04
    ld a, h                                       ; $4fcb: $7c
    inc b                                         ; $4fcc: $04
    ld a, h                                       ; $4fcd: $7c
    ld [bc], a                                    ; $4fce: $02
    ld a, [hl]                                    ; $4fcf: $7e
    ld [bc], a                                    ; $4fd0: $02
    ld a, [hl]                                    ; $4fd1: $7e
    rlca                                          ; $4fd2: $07
    ld a, a                                       ; $4fd3: $7f
    dec bc                                        ; $4fd4: $0b
    ld a, a                                       ; $4fd5: $7f
    inc e                                         ; $4fd6: $1c
    ld a, h                                       ; $4fd7: $7c
    ld [bc], a                                    ; $4fd8: $02
    ld [hl], b                                    ; $4fd9: $70
    rst $38                                       ; $4fda: $ff
    dec c                                         ; $4fdb: $0d
    inc b                                         ; $4fdc: $04
    db $fc                                        ; $4fdd: $fc
    inc b                                         ; $4fde: $04
    ld a, [c]                                     ; $4fdf: $f2
    ei                                            ; $4fe0: $fb
    ld [c], a                                     ; $4fe1: $e2
    ld a, [$ffe2]                                 ; $4fe2: $fa $e2 $ff
    ld a, [c]                                     ; $4fe5: $f2
    ld sp, hl                                     ; $4fe6: $f9
    ld a, [c]                                     ; $4fe7: $f2
    nop                                           ; $4fe8: $00
    ld [bc], a                                    ; $4fe9: $02
    rrca                                          ; $4fea: $0f
    adc d                                         ; $4feb: $8a
    jr jr_0e1_500d                                ; $4fec: $18 $1f

    ld [hl], b                                    ; $4fee: $70
    ld a, a                                       ; $4fef: $7f
    sub b                                         ; $4ff0: $90
    rst $38                                       ; $4ff1: $ff
    ld a, b                                       ; $4ff2: $78
    ld a, a                                       ; $4ff3: $7f
    inc a                                         ; $4ff4: $3c
    ccf                                           ; $4ff5: $3f
    ld [bc], a                                    ; $4ff6: $02
    rra                                           ; $4ff7: $1f
    add d                                         ; $4ff8: $82
    rrca                                          ; $4ff9: $0f
    ld [$3f02], sp                                ; $4ffa: $08 $02 $3f
    adc [hl]                                      ; $4ffd: $8e
    ld [hl], b                                    ; $4ffe: $70
    ld a, a                                       ; $4fff: $7f
    sbc a                                         ; $5000: $9f
    rst $38                                       ; $5001: $ff
    add b                                         ; $5002: $80
    rst $38                                       ; $5003: $ff
    ld [hl], d                                    ; $5004: $72
    ld a, a                                       ; $5005: $7f
    ldh [rIE], a                                  ; $5006: $e0 $ff
    ldh [rIE], a                                  ; $5008: $e0 $ff
    and b                                         ; $500a: $a0
    rst $38                                       ; $500b: $ff
    ld [bc], a                                    ; $500c: $02

jr_0e1_500d:
    db $10                                        ; $500d: $10
    ld [bc], a                                    ; $500e: $02
    jr @-$78                                      ; $500f: $18 $86

    ld c, $1e                                     ; $5011: $0e $1e
    add hl, bc                                    ; $5013: $09
    rra                                           ; $5014: $1f
    ld c, $1e                                     ; $5015: $0e $1e
    ld [bc], a                                    ; $5017: $02
    inc e                                         ; $5018: $1c
    ld [bc], a                                    ; $5019: $02
    jr jr_0e1_501e                                ; $501a: $18 $02

    db $10                                        ; $501c: $10
    ld [bc], a                                    ; $501d: $02

jr_0e1_501e:
    inc e                                         ; $501e: $1c
    xor d                                         ; $501f: $aa
    ld c, $1e                                     ; $5020: $0e $1e
    add hl, de                                    ; $5022: $19
    rra                                           ; $5023: $1f
    ld bc, $0e1f                                  ; $5024: $01 $1f $0e
    ld e, $07                                     ; $5027: $1e $07
    rra                                           ; $5029: $1f
    dec b                                         ; $502a: $05
    rra                                           ; $502b: $1f

jr_0e1_502c:
    dec b                                         ; $502c: $05
    rra                                           ; $502d: $1f
    ld d, b                                       ; $502e: $50
    ld a, a                                       ; $502f: $7f
    sub b                                         ; $5030: $90
    rst $38                                       ; $5031: $ff
    ret nc                                        ; $5032: $d0

    rst $38                                       ; $5033: $ff
    ret nc                                        ; $5034: $d0

    rst $38                                       ; $5035: $ff
    ld [hl], b                                    ; $5036: $70
    ld a, a                                       ; $5037: $7f
    jr nc, @+$41                                  ; $5038: $30 $3f

jr_0e1_503a:
    jr nc, jr_0e1_507b                            ; $503a: $30 $3f

    jr nz, jr_0e1_507d                            ; $503c: $20 $3f

    ld h, b                                       ; $503e: $60
    ld a, a                                       ; $503f: $7f
    and b                                         ; $5040: $a0
    rst $38                                       ; $5041: $ff
    add b                                         ; $5042: $80
    rst $38                                       ; $5043: $ff
    add b                                         ; $5044: $80
    rst $38                                       ; $5045: $ff
    ld b, a                                       ; $5046: $47
    ld a, a                                       ; $5047: $7f
    jr nc, jr_0e1_5089                            ; $5048: $30 $3f

    ld [bc], a                                    ; $504a: $02
    rrca                                          ; $504b: $0f
    ld [bc], a                                    ; $504c: $02
    nop                                           ; $504d: $00
    sbc h                                         ; $504e: $9c
    ld a, [bc]                                    ; $504f: $0a
    ld a, [hl]                                    ; $5050: $7e
    add hl, bc                                    ; $5051: $09
    ld a, a                                       ; $5052: $7f
    dec bc                                        ; $5053: $0b
    ld a, a                                       ; $5054: $7f
    dec bc                                        ; $5055: $0b
    ld a, a                                       ; $5056: $7f
    ld c, $7e                                     ; $5057: $0e $7e
    inc c                                         ; $5059: $0c
    ld a, h                                       ; $505a: $7c
    inc c                                         ; $505b: $0c
    ld a, h                                       ; $505c: $7c
    inc b                                         ; $505d: $04
    ld a, h                                       ; $505e: $7c
    ld b, $7e                                     ; $505f: $06 $7e
    dec b                                         ; $5061: $05
    ld a, a                                       ; $5062: $7f
    ld bc, $117f                                  ; $5063: $01 $7f $11
    ld a, a                                       ; $5066: $7f
    ld b, d                                       ; $5067: $42
    ld a, [hl]                                    ; $5068: $7e
    inc c                                         ; $5069: $0c
    ld a, h                                       ; $506a: $7c
    ld [bc], a                                    ; $506b: $02
    ld [hl], b                                    ; $506c: $70
    ld [bc], a                                    ; $506d: $02
    nop                                           ; $506e: $00
    rst $38                                       ; $506f: $ff
    dec c                                         ; $5070: $0d
    inc b                                         ; $5071: $04
    db $fc                                        ; $5072: $fc
    inc b                                         ; $5073: $04
    ld a, [c]                                     ; $5074: $f2
    ei                                            ; $5075: $fb
    db $e3                                        ; $5076: $e3
    ld a, [$ffe3]                                 ; $5077: $fa $e3 $ff
    di                                            ; $507a: $f3

jr_0e1_507b:
    ld sp, hl                                     ; $507b: $f9
    di                                            ; $507c: $f3

jr_0e1_507d:
    nop                                           ; $507d: $00
    ld [bc], a                                    ; $507e: $02
    rrca                                          ; $507f: $0f
    adc d                                         ; $5080: $8a
    jr jr_0e1_50a2                                ; $5081: $18 $1f

    ld [hl], b                                    ; $5083: $70
    ld a, a                                       ; $5084: $7f
    sub b                                         ; $5085: $90
    rst $38                                       ; $5086: $ff
    ld a, b                                       ; $5087: $78
    ld a, a                                       ; $5088: $7f

jr_0e1_5089:
    inc a                                         ; $5089: $3c
    ccf                                           ; $508a: $3f
    ld [bc], a                                    ; $508b: $02
    rra                                           ; $508c: $1f
    add d                                         ; $508d: $82
    rrca                                          ; $508e: $0f
    ld [$3f02], sp                                ; $508f: $08 $02 $3f
    adc [hl]                                      ; $5092: $8e
    ld [hl], b                                    ; $5093: $70
    ld a, a                                       ; $5094: $7f
    sbc a                                         ; $5095: $9f
    rst $38                                       ; $5096: $ff
    add b                                         ; $5097: $80
    rst $38                                       ; $5098: $ff
    ld [hl], b                                    ; $5099: $70
    ld a, a                                       ; $509a: $7f
    rst $20                                       ; $509b: $e7
    rst $38                                       ; $509c: $ff
    ldh [rIE], a                                  ; $509d: $e0 $ff
    and b                                         ; $509f: $a0
    rst $38                                       ; $50a0: $ff
    ld [bc], a                                    ; $50a1: $02

jr_0e1_50a2:
    db $10                                        ; $50a2: $10
    ld [bc], a                                    ; $50a3: $02
    jr jr_0e1_502c                                ; $50a4: $18 $86

    ld c, $1e                                     ; $50a6: $0e $1e
    add hl, bc                                    ; $50a8: $09
    rra                                           ; $50a9: $1f
    ld c, $1e                                     ; $50aa: $0e $1e
    ld [bc], a                                    ; $50ac: $02
    inc e                                         ; $50ad: $1c
    ld [bc], a                                    ; $50ae: $02
    jr jr_0e1_50b3                                ; $50af: $18 $02

    db $10                                        ; $50b1: $10
    ld [bc], a                                    ; $50b2: $02

jr_0e1_50b3:
    inc e                                         ; $50b3: $1c
    xor b                                         ; $50b4: $a8
    ld c, $1e                                     ; $50b5: $0e $1e
    add hl, de                                    ; $50b7: $19
    rra                                           ; $50b8: $1f
    ld bc, $0e1f                                  ; $50b9: $01 $1f $0e
    ld e, $07                                     ; $50bc: $1e $07
    rra                                           ; $50be: $1f
    dec b                                         ; $50bf: $05
    rra                                           ; $50c0: $1f
    dec b                                         ; $50c1: $05
    rra                                           ; $50c2: $1f
    ld d, b                                       ; $50c3: $50
    ld a, a                                       ; $50c4: $7f
    sub b                                         ; $50c5: $90
    rst $38                                       ; $50c6: $ff
    ret nc                                        ; $50c7: $d0

    rst $38                                       ; $50c8: $ff
    ret nc                                        ; $50c9: $d0

    rst $38                                       ; $50ca: $ff
    ld [hl], b                                    ; $50cb: $70
    ld a, a                                       ; $50cc: $7f
    jr nc, jr_0e1_510e                            ; $50cd: $30 $3f

    jr nz, jr_0e1_5110                            ; $50cf: $20 $3f

    jr nz, jr_0e1_5112                            ; $50d1: $20 $3f

    ld h, b                                       ; $50d3: $60
    ld a, a                                       ; $50d4: $7f
    and b                                         ; $50d5: $a0
    rst $38                                       ; $50d6: $ff
    add b                                         ; $50d7: $80
    rst $38                                       ; $50d8: $ff
    ld h, e                                       ; $50d9: $63
    ld a, a                                       ; $50da: $7f
    inc e                                         ; $50db: $1c
    rra                                           ; $50dc: $1f
    ld [bc], a                                    ; $50dd: $02
    inc bc                                        ; $50de: $03
    inc b                                         ; $50df: $04
    nop                                           ; $50e0: $00
    sbc d                                         ; $50e1: $9a
    ld a, [bc]                                    ; $50e2: $0a
    ld a, [hl]                                    ; $50e3: $7e
    add hl, bc                                    ; $50e4: $09
    ld a, a                                       ; $50e5: $7f
    dec bc                                        ; $50e6: $0b
    ld a, a                                       ; $50e7: $7f
    dec bc                                        ; $50e8: $0b
    ld a, a                                       ; $50e9: $7f
    ld c, $7e                                     ; $50ea: $0e $7e
    inc c                                         ; $50ec: $0c
    ld a, h                                       ; $50ed: $7c
    inc b                                         ; $50ee: $04
    ld a, h                                       ; $50ef: $7c
    ld b, $7e                                     ; $50f0: $06 $7e
    dec b                                         ; $50f2: $05
    ld a, a                                       ; $50f3: $7f
    ld bc, $017f                                  ; $50f4: $01 $7f $01
    ld a, a                                       ; $50f7: $7f
    ld b, d                                       ; $50f8: $42
    ld a, [hl]                                    ; $50f9: $7e
    inc c                                         ; $50fa: $0c
    ld a, h                                       ; $50fb: $7c
    ld [bc], a                                    ; $50fc: $02
    ld [hl], b                                    ; $50fd: $70
    inc b                                         ; $50fe: $04
    nop                                           ; $50ff: $00
    rst $38                                       ; $5100: $ff
    dec c                                         ; $5101: $0d
    inc b                                         ; $5102: $04
    db $fc                                        ; $5103: $fc
    inc b                                         ; $5104: $04
    ld a, [c]                                     ; $5105: $f2
    ei                                            ; $5106: $fb
    ld [c], a                                     ; $5107: $e2
    ld a, [$ffe2]                                 ; $5108: $fa $e2 $ff
    ld a, [c]                                     ; $510b: $f2
    ld sp, hl                                     ; $510c: $f9
    ld a, [c]                                     ; $510d: $f2

jr_0e1_510e:
    nop                                           ; $510e: $00
    ld [bc], a                                    ; $510f: $02

jr_0e1_5110:
    rrca                                          ; $5110: $0f
    adc d                                         ; $5111: $8a

jr_0e1_5112:
    jr jr_0e1_5133                                ; $5112: $18 $1f

    ld [hl], b                                    ; $5114: $70
    ld a, a                                       ; $5115: $7f
    sub b                                         ; $5116: $90
    rst $38                                       ; $5117: $ff
    ld a, b                                       ; $5118: $78
    ld a, a                                       ; $5119: $7f
    inc a                                         ; $511a: $3c
    ccf                                           ; $511b: $3f
    ld [bc], a                                    ; $511c: $02
    rra                                           ; $511d: $1f
    add d                                         ; $511e: $82
    rrca                                          ; $511f: $0f
    ld [$3f02], sp                                ; $5120: $08 $02 $3f
    adc [hl]                                      ; $5123: $8e
    ld [hl], b                                    ; $5124: $70
    ld a, a                                       ; $5125: $7f
    sbc a                                         ; $5126: $9f
    rst $38                                       ; $5127: $ff
    add b                                         ; $5128: $80
    rst $38                                       ; $5129: $ff
    ld a, e                                       ; $512a: $7b
    ld a, a                                       ; $512b: $7f
    ldh a, [rIE]                                  ; $512c: $f0 $ff
    ldh [rIE], a                                  ; $512e: $e0 $ff
    and b                                         ; $5130: $a0
    rst $38                                       ; $5131: $ff
    ld [bc], a                                    ; $5132: $02

jr_0e1_5133:
    db $10                                        ; $5133: $10
    ld [bc], a                                    ; $5134: $02
    jr @-$78                                      ; $5135: $18 $86

    ld c, $1e                                     ; $5137: $0e $1e
    add hl, bc                                    ; $5139: $09
    rra                                           ; $513a: $1f
    ld c, $1e                                     ; $513b: $0e $1e
    ld [bc], a                                    ; $513d: $02
    inc e                                         ; $513e: $1c
    ld [bc], a                                    ; $513f: $02
    jr jr_0e1_5144                                ; $5140: $18 $02

    db $10                                        ; $5142: $10
    ld [bc], a                                    ; $5143: $02

jr_0e1_5144:
    inc e                                         ; $5144: $1c
    xor h                                         ; $5145: $ac
    ld c, $1e                                     ; $5146: $0e $1e
    add hl, de                                    ; $5148: $19
    rra                                           ; $5149: $1f
    ld bc, $0e1f                                  ; $514a: $01 $1f $0e
    ld e, $07                                     ; $514d: $1e $07
    rra                                           ; $514f: $1f
    dec b                                         ; $5150: $05
    rra                                           ; $5151: $1f

jr_0e1_5152:
    dec b                                         ; $5152: $05
    rra                                           ; $5153: $1f
    ld d, b                                       ; $5154: $50
    ld a, a                                       ; $5155: $7f
    ret nc                                        ; $5156: $d0

    rst $38                                       ; $5157: $ff
    sub b                                         ; $5158: $90
    rst $38                                       ; $5159: $ff
    sub b                                         ; $515a: $90
    rst $38                                       ; $515b: $ff
    ret nc                                        ; $515c: $d0

    rst $38                                       ; $515d: $ff
    ld [hl], b                                    ; $515e: $70
    ld a, a                                       ; $515f: $7f
    jr nz, jr_0e1_51a1                            ; $5160: $20 $3f

    jr nz, jr_0e1_51a3                            ; $5162: $20 $3f

    ld h, b                                       ; $5164: $60
    ld a, a                                       ; $5165: $7f
    and b                                         ; $5166: $a0
    rst $38                                       ; $5167: $ff
    add b                                         ; $5168: $80
    rst $38                                       ; $5169: $ff
    adc b                                         ; $516a: $88
    rst $38                                       ; $516b: $ff
    ld b, [hl]                                    ; $516c: $46
    ld a, a                                       ; $516d: $7f
    ld sp, $0c3f                                  ; $516e: $31 $3f $0c
    rrca                                          ; $5171: $0f
    ld [bc], a                                    ; $5172: $02
    inc bc                                        ; $5173: $03
    sbc [hl]                                      ; $5174: $9e
    add hl, bc                                    ; $5175: $09
    ld a, a                                       ; $5176: $7f
    add hl, bc                                    ; $5177: $09
    ld a, a                                       ; $5178: $7f
    dec c                                         ; $5179: $0d
    ld a, a                                       ; $517a: $7f
    ld c, $7e                                     ; $517b: $0e $7e
    inc c                                         ; $517d: $0c
    ld a, h                                       ; $517e: $7c
    inc c                                         ; $517f: $0c
    ld a, h                                       ; $5180: $7c
    inc c                                         ; $5181: $0c
    ld a, h                                       ; $5182: $7c
    inc c                                         ; $5183: $0c
    ld a, h                                       ; $5184: $7c
    inc b                                         ; $5185: $04
    ld a, h                                       ; $5186: $7c
    ld b, $7e                                     ; $5187: $06 $7e
    dec b                                         ; $5189: $05
    ld a, a                                       ; $518a: $7f
    dec b                                         ; $518b: $05
    ld a, a                                       ; $518c: $7f
    dec b                                         ; $518d: $05
    ld a, a                                       ; $518e: $7f
    ld b, d                                       ; $518f: $42
    ld a, [hl]                                    ; $5190: $7e
    inc c                                         ; $5191: $0c
    ld a, h                                       ; $5192: $7c
    ld [bc], a                                    ; $5193: $02
    ld [hl], b                                    ; $5194: $70
    rst $38                                       ; $5195: $ff
    dec c                                         ; $5196: $0d
    inc b                                         ; $5197: $04
    db $fc                                        ; $5198: $fc
    inc b                                         ; $5199: $04
    ld a, [c]                                     ; $519a: $f2
    ei                                            ; $519b: $fb
    db $e3                                        ; $519c: $e3
    ld a, [$ffe3]                                 ; $519d: $fa $e3 $ff
    di                                            ; $51a0: $f3

jr_0e1_51a1:
    ld sp, hl                                     ; $51a1: $f9
    di                                            ; $51a2: $f3

jr_0e1_51a3:
    nop                                           ; $51a3: $00
    ld [bc], a                                    ; $51a4: $02
    rrca                                          ; $51a5: $0f
    adc d                                         ; $51a6: $8a
    jr jr_0e1_51c8                                ; $51a7: $18 $1f

    ld [hl], b                                    ; $51a9: $70
    ld a, a                                       ; $51aa: $7f
    sub b                                         ; $51ab: $90
    rst $38                                       ; $51ac: $ff
    ld a, b                                       ; $51ad: $78
    ld a, a                                       ; $51ae: $7f
    inc a                                         ; $51af: $3c
    ccf                                           ; $51b0: $3f
    ld [bc], a                                    ; $51b1: $02
    rra                                           ; $51b2: $1f
    add d                                         ; $51b3: $82
    rrca                                          ; $51b4: $0f
    ld [$3f02], sp                                ; $51b5: $08 $02 $3f
    adc [hl]                                      ; $51b8: $8e
    ld [hl], b                                    ; $51b9: $70
    ld a, a                                       ; $51ba: $7f
    sbc a                                         ; $51bb: $9f
    rst $38                                       ; $51bc: $ff
    add b                                         ; $51bd: $80
    rst $38                                       ; $51be: $ff
    ld [hl], b                                    ; $51bf: $70
    ld a, a                                       ; $51c0: $7f
    rst $20                                       ; $51c1: $e7
    rst $38                                       ; $51c2: $ff
    ldh [rIE], a                                  ; $51c3: $e0 $ff
    and b                                         ; $51c5: $a0
    rst $38                                       ; $51c6: $ff
    ld [bc], a                                    ; $51c7: $02

jr_0e1_51c8:
    db $10                                        ; $51c8: $10
    ld [bc], a                                    ; $51c9: $02
    jr jr_0e1_5152                                ; $51ca: $18 $86

    ld c, $1e                                     ; $51cc: $0e $1e
    add hl, bc                                    ; $51ce: $09
    rra                                           ; $51cf: $1f
    ld c, $1e                                     ; $51d0: $0e $1e
    ld [bc], a                                    ; $51d2: $02
    inc e                                         ; $51d3: $1c
    ld [bc], a                                    ; $51d4: $02
    jr jr_0e1_51d9                                ; $51d5: $18 $02

    db $10                                        ; $51d7: $10
    ld [bc], a                                    ; $51d8: $02

jr_0e1_51d9:
    inc e                                         ; $51d9: $1c
    xor b                                         ; $51da: $a8
    ld c, $1e                                     ; $51db: $0e $1e
    add hl, de                                    ; $51dd: $19
    rra                                           ; $51de: $1f
    ld bc, $0e1f                                  ; $51df: $01 $1f $0e
    ld e, $07                                     ; $51e2: $1e $07
    rra                                           ; $51e4: $1f
    dec b                                         ; $51e5: $05
    rra                                           ; $51e6: $1f
    dec b                                         ; $51e7: $05
    rra                                           ; $51e8: $1f
    ld d, b                                       ; $51e9: $50
    ld a, a                                       ; $51ea: $7f
    sub b                                         ; $51eb: $90
    rst $38                                       ; $51ec: $ff
    ret nc                                        ; $51ed: $d0

    rst $38                                       ; $51ee: $ff
    ret nc                                        ; $51ef: $d0

    rst $38                                       ; $51f0: $ff
    ld [hl], b                                    ; $51f1: $70
    ld a, a                                       ; $51f2: $7f
    jr nc, jr_0e1_5234                            ; $51f3: $30 $3f

    jr nz, jr_0e1_5236                            ; $51f5: $20 $3f

    ld h, b                                       ; $51f7: $60
    ld a, a                                       ; $51f8: $7f
    and b                                         ; $51f9: $a0
    rst $38                                       ; $51fa: $ff
    add b                                         ; $51fb: $80
    rst $38                                       ; $51fc: $ff
    add b                                         ; $51fd: $80
    rst $38                                       ; $51fe: $ff
    ld b, e                                       ; $51ff: $43
    ld a, a                                       ; $5200: $7f
    jr nc, jr_0e1_5242                            ; $5201: $30 $3f

    ld [bc], a                                    ; $5203: $02
    rrca                                          ; $5204: $0f
    inc b                                         ; $5205: $04
    nop                                           ; $5206: $00
    sbc d                                         ; $5207: $9a
    ld a, [bc]                                    ; $5208: $0a
    ld a, [hl]                                    ; $5209: $7e
    add hl, bc                                    ; $520a: $09
    ld a, a                                       ; $520b: $7f
    dec bc                                        ; $520c: $0b
    ld a, a                                       ; $520d: $7f
    dec bc                                        ; $520e: $0b
    ld a, a                                       ; $520f: $7f
    ld c, $7e                                     ; $5210: $0e $7e
    inc c                                         ; $5212: $0c
    ld a, h                                       ; $5213: $7c
    inc b                                         ; $5214: $04
    ld a, h                                       ; $5215: $7c
    inc b                                         ; $5216: $04
    ld a, h                                       ; $5217: $7c
    ld b, $7e                                     ; $5218: $06 $7e
    dec b                                         ; $521a: $05
    ld a, a                                       ; $521b: $7f
    ld bc, $467f                                  ; $521c: $01 $7f $46
    ld a, [hl]                                    ; $521f: $7e
    jr c, jr_0e1_529a                             ; $5220: $38 $78

    ld [bc], a                                    ; $5222: $02
    ld b, b                                       ; $5223: $40
    inc b                                         ; $5224: $04
    nop                                           ; $5225: $00
    rst $38                                       ; $5226: $ff
    dec c                                         ; $5227: $0d
    inc b                                         ; $5228: $04
    db $fc                                        ; $5229: $fc
    inc b                                         ; $522a: $04
    ld a, [c]                                     ; $522b: $f2
    ei                                            ; $522c: $fb
    ld [c], a                                     ; $522d: $e2
    ld a, [$ffe2]                                 ; $522e: $fa $e2 $ff
    ld a, [c]                                     ; $5231: $f2
    ld sp, hl                                     ; $5232: $f9
    ld a, [c]                                     ; $5233: $f2

jr_0e1_5234:
    nop                                           ; $5234: $00
    ld [bc], a                                    ; $5235: $02

jr_0e1_5236:
    rrca                                          ; $5236: $0f
    adc d                                         ; $5237: $8a
    jr jr_0e1_5259                                ; $5238: $18 $1f

    ld [hl], b                                    ; $523a: $70
    ld a, a                                       ; $523b: $7f
    sub b                                         ; $523c: $90
    rst $38                                       ; $523d: $ff
    ld a, b                                       ; $523e: $78
    ld a, a                                       ; $523f: $7f
    inc a                                         ; $5240: $3c
    ccf                                           ; $5241: $3f

jr_0e1_5242:
    ld [bc], a                                    ; $5242: $02
    rra                                           ; $5243: $1f
    add d                                         ; $5244: $82
    rrca                                          ; $5245: $0f
    ld [$3f02], sp                                ; $5246: $08 $02 $3f
    adc [hl]                                      ; $5249: $8e
    ld [hl], b                                    ; $524a: $70
    ld a, a                                       ; $524b: $7f
    sbc a                                         ; $524c: $9f
    rst $38                                       ; $524d: $ff
    add b                                         ; $524e: $80
    rst $38                                       ; $524f: $ff
    halt                                          ; $5250: $76
    ld a, a                                       ; $5251: $7f
    ldh [rIE], a                                  ; $5252: $e0 $ff
    and b                                         ; $5254: $a0
    rst $38                                       ; $5255: $ff
    and b                                         ; $5256: $a0
    rst $38                                       ; $5257: $ff
    ld [bc], a                                    ; $5258: $02

jr_0e1_5259:
    db $10                                        ; $5259: $10
    ld [bc], a                                    ; $525a: $02
    jr @-$78                                      ; $525b: $18 $86

    ld c, $1e                                     ; $525d: $0e $1e
    add hl, bc                                    ; $525f: $09
    rra                                           ; $5260: $1f
    ld c, $1e                                     ; $5261: $0e $1e
    ld [bc], a                                    ; $5263: $02
    inc e                                         ; $5264: $1c
    ld [bc], a                                    ; $5265: $02
    jr jr_0e1_526a                                ; $5266: $18 $02

    db $10                                        ; $5268: $10
    ld [bc], a                                    ; $5269: $02

jr_0e1_526a:
    inc e                                         ; $526a: $1c
    add [hl]                                      ; $526b: $86
    ld c, $1e                                     ; $526c: $0e $1e
    add hl, de                                    ; $526e: $19
    rra                                           ; $526f: $1f
    ld bc, $021f                                  ; $5270: $01 $1f $02
    ld e, $a4                                     ; $5273: $1e $a4
    rrca                                          ; $5275: $0f
    rra                                           ; $5276: $1f
    rlca                                          ; $5277: $07
    rra                                           ; $5278: $1f
    dec b                                         ; $5279: $05
    rra                                           ; $527a: $1f
    sub b                                         ; $527b: $90
    rst $38                                       ; $527c: $ff
    sub b                                         ; $527d: $90
    rst $38                                       ; $527e: $ff
    or b                                          ; $527f: $b0
    rst $38                                       ; $5280: $ff
    ld [hl], b                                    ; $5281: $70
    ld a, a                                       ; $5282: $7f
    jr nc, jr_0e1_52c4                            ; $5283: $30 $3f

    jr nc, @+$41                                  ; $5285: $30 $3f

    jr nc, jr_0e1_52c8                            ; $5287: $30 $3f

    jr nc, jr_0e1_52ca                            ; $5289: $30 $3f

    jr nz, jr_0e1_52cc                            ; $528b: $20 $3f

    ld h, b                                       ; $528d: $60
    ld a, a                                       ; $528e: $7f
    and b                                         ; $528f: $a0
    rst $38                                       ; $5290: $ff
    and b                                         ; $5291: $a0
    rst $38                                       ; $5292: $ff
    and b                                         ; $5293: $a0
    rst $38                                       ; $5294: $ff
    ld b, e                                       ; $5295: $43
    ld a, a                                       ; $5296: $7f
    jr nc, jr_0e1_52d8                            ; $5297: $30 $3f

    ld [bc], a                                    ; $5299: $02

jr_0e1_529a:
    rrca                                          ; $529a: $0f
    sbc [hl]                                      ; $529b: $9e
    ld a, [bc]                                    ; $529c: $0a
    ld a, [hl]                                    ; $529d: $7e
    dec bc                                        ; $529e: $0b
    ld a, a                                       ; $529f: $7f
    add hl, bc                                    ; $52a0: $09
    ld a, a                                       ; $52a1: $7f
    add hl, bc                                    ; $52a2: $09
    ld a, a                                       ; $52a3: $7f
    dec bc                                        ; $52a4: $0b
    ld a, a                                       ; $52a5: $7f
    ld c, $7e                                     ; $52a6: $0e $7e
    inc b                                         ; $52a8: $04
    ld a, h                                       ; $52a9: $7c
    inc b                                         ; $52aa: $04
    ld a, h                                       ; $52ab: $7c
    ld b, $7e                                     ; $52ac: $06 $7e
    dec b                                         ; $52ae: $05
    ld a, a                                       ; $52af: $7f
    ld bc, $117f                                  ; $52b0: $01 $7f $11
    ld a, a                                       ; $52b3: $7f
    ld h, d                                       ; $52b4: $62
    ld a, [hl]                                    ; $52b5: $7e
    inc c                                         ; $52b6: $0c
    ld a, h                                       ; $52b7: $7c
    jr nc, jr_0e1_532a                            ; $52b8: $30 $70

    ld [bc], a                                    ; $52ba: $02
    ld b, b                                       ; $52bb: $40
    rst $38                                       ; $52bc: $ff
    dec c                                         ; $52bd: $0d
    inc b                                         ; $52be: $04
    db $fc                                        ; $52bf: $fc
    inc b                                         ; $52c0: $04
    ld a, [c]                                     ; $52c1: $f2
    ei                                            ; $52c2: $fb
    ld [c], a                                     ; $52c3: $e2

jr_0e1_52c4:
    ld a, [$ffe2]                                 ; $52c4: $fa $e2 $ff
    ld a, [c]                                     ; $52c7: $f2

jr_0e1_52c8:
    ld sp, hl                                     ; $52c8: $f9
    ld a, [c]                                     ; $52c9: $f2

jr_0e1_52ca:
    nop                                           ; $52ca: $00
    ld [bc], a                                    ; $52cb: $02

jr_0e1_52cc:
    rrca                                          ; $52cc: $0f
    sbc [hl]                                      ; $52cd: $9e
    jr jr_0e1_52ef                                ; $52ce: $18 $1f

    ld [hl], a                                    ; $52d0: $77
    ld a, a                                       ; $52d1: $7f
    sbc a                                         ; $52d2: $9f
    ld hl, sp+$7f                                 ; $52d3: $f8 $7f
    ld [hl], b                                    ; $52d5: $70
    ld [hl-], a                                   ; $52d6: $32
    dec a                                         ; $52d7: $3d

jr_0e1_52d8:
    rra                                           ; $52d8: $1f
    db $10                                        ; $52d9: $10
    ccf                                           ; $52da: $3f
    ld [hl-], a                                   ; $52db: $32
    ld a, [hl-]                                   ; $52dc: $3a
    dec [hl]                                      ; $52dd: $35
    ld l, l                                       ; $52de: $6d
    ld a, d                                       ; $52df: $7a
    xor a                                         ; $52e0: $af
    rst $38                                       ; $52e1: $ff
    sub a                                         ; $52e2: $97
    rst $38                                       ; $52e3: $ff
    ld e, d                                       ; $52e4: $5a
    ld a, a                                       ; $52e5: $7f
    push hl                                       ; $52e6: $e5
    rst $38                                       ; $52e7: $ff
    ld [c], a                                     ; $52e8: $e2
    rst $38                                       ; $52e9: $ff
    and l                                         ; $52ea: $a5
    rst $38                                       ; $52eb: $ff
    ld [bc], a                                    ; $52ec: $02
    db $10                                        ; $52ed: $10
    ld [bc], a                                    ; $52ee: $02

jr_0e1_52ef:
    jr @-$48                                      ; $52ef: $18 $b6

    ld c, $1e                                     ; $52f1: $0e $1e
    add hl, de                                    ; $52f3: $19
    rra                                           ; $52f4: $1f
    ld e, $0e                                     ; $52f5: $1e $0e
    inc c                                         ; $52f7: $0c
    inc e                                         ; $52f8: $1c
    jr jr_0e1_5303                                ; $52f9: $18 $08

    inc e                                         ; $52fb: $1c
    inc c                                         ; $52fc: $0c
    inc e                                         ; $52fd: $1c
    inc c                                         ; $52fe: $0c
    ld d, $1e                                     ; $52ff: $16 $1e
    dec d                                         ; $5301: $15
    rra                                           ; $5302: $1f

jr_0e1_5303:
    add hl, bc                                    ; $5303: $09
    rra                                           ; $5304: $1f
    ld a, [de]                                    ; $5305: $1a
    ld e, $07                                     ; $5306: $1e $07
    rra                                           ; $5308: $1f
    rlca                                          ; $5309: $07
    rra                                           ; $530a: $1f
    dec b                                         ; $530b: $05
    rra                                           ; $530c: $1f
    ld d, c                                       ; $530d: $51
    ld a, a                                       ; $530e: $7f
    or c                                          ; $530f: $b1
    rst $38                                       ; $5310: $ff
    pop de                                        ; $5311: $d1
    rst $38                                       ; $5312: $ff
    pop af                                        ; $5313: $f1
    rst $18                                       ; $5314: $df
    ld [hl], c                                    ; $5315: $71
    ld a, a                                       ; $5316: $7f
    ld sp, $333f                                  ; $5317: $31 $3f $33
    ccf                                           ; $531a: $3f
    inc hl                                        ; $531b: $23
    ccf                                           ; $531c: $3f
    ld h, e                                       ; $531d: $63
    ld a, a                                       ; $531e: $7f
    and a                                         ; $531f: $a7
    rst $38                                       ; $5320: $ff
    add a                                         ; $5321: $87
    rst $38                                       ; $5322: $ff
    adc a                                         ; $5323: $8f
    rst $38                                       ; $5324: $ff
    ld a, e                                       ; $5325: $7b
    ld a, a                                       ; $5326: $7f
    ld [bc], a                                    ; $5327: $02
    ld c, $02                                     ; $5328: $0e $02

jr_0e1_532a:
    inc c                                         ; $532a: $0c
    ld [bc], a                                    ; $532b: $02
    nop                                           ; $532c: $00
    sbc d                                         ; $532d: $9a
    ld a, [bc]                                    ; $532e: $0a
    ld a, [hl]                                    ; $532f: $7e
    dec c                                         ; $5330: $0d
    ld a, a                                       ; $5331: $7f
    dec bc                                        ; $5332: $0b
    ld a, a                                       ; $5333: $7f
    rrca                                          ; $5334: $0f
    ld a, e                                       ; $5335: $7b
    ld c, $7e                                     ; $5336: $0e $7e
    inc c                                         ; $5338: $0c
    ld a, h                                       ; $5339: $7c
    ld c, h                                       ; $533a: $4c
    ld a, h                                       ; $533b: $7c
    ld b, h                                       ; $533c: $44
    ld a, h                                       ; $533d: $7c
    ld b, [hl]                                    ; $533e: $46
    ld a, [hl]                                    ; $533f: $7e
    ld h, l                                       ; $5340: $65
    ld a, a                                       ; $5341: $7f
    ld h, c                                       ; $5342: $61
    ld a, a                                       ; $5343: $7f
    ld [hl], c                                    ; $5344: $71
    ld a, a                                       ; $5345: $7f
    ld e, [hl]                                    ; $5346: $5e
    ld a, [hl]                                    ; $5347: $7e
    ld [bc], a                                    ; $5348: $02
    ld [hl], b                                    ; $5349: $70
    ld [bc], a                                    ; $534a: $02
    jr nc, jr_0e1_534f                            ; $534b: $30 $02

    nop                                           ; $534d: $00
    rst $38                                       ; $534e: $ff

jr_0e1_534f:
    dec c                                         ; $534f: $0d
    inc b                                         ; $5350: $04
    db $fc                                        ; $5351: $fc
    inc b                                         ; $5352: $04
    ld a, [c]                                     ; $5353: $f2
    ei                                            ; $5354: $fb
    db $e3                                        ; $5355: $e3
    ld a, [$ffe3]                                 ; $5356: $fa $e3 $ff
    di                                            ; $5359: $f3
    ld sp, hl                                     ; $535a: $f9
    di                                            ; $535b: $f3
    nop                                           ; $535c: $00
    ld [bc], a                                    ; $535d: $02
    rrca                                          ; $535e: $0f
    sbc [hl]                                      ; $535f: $9e
    jr jr_0e1_5381                                ; $5360: $18 $1f

    ld [hl], a                                    ; $5362: $77
    ld a, a                                       ; $5363: $7f
    sbc a                                         ; $5364: $9f
    ld hl, sp+$7f                                 ; $5365: $f8 $7f
    ld [hl], b                                    ; $5367: $70
    ld [hl-], a                                   ; $5368: $32
    dec a                                         ; $5369: $3d
    rra                                           ; $536a: $1f
    db $10                                        ; $536b: $10
    ccf                                           ; $536c: $3f
    ld [hl-], a                                   ; $536d: $32
    ld a, [hl-]                                   ; $536e: $3a
    dec [hl]                                      ; $536f: $35
    ld l, l                                       ; $5370: $6d
    ld a, d                                       ; $5371: $7a
    xor a                                         ; $5372: $af
    rst $38                                       ; $5373: $ff
    sub a                                         ; $5374: $97
    rst $38                                       ; $5375: $ff
    ld e, d                                       ; $5376: $5a
    ld a, a                                       ; $5377: $7f
    push hl                                       ; $5378: $e5
    rst $38                                       ; $5379: $ff
    ld [c], a                                     ; $537a: $e2
    rst $38                                       ; $537b: $ff
    and l                                         ; $537c: $a5
    rst $38                                       ; $537d: $ff
    ld [bc], a                                    ; $537e: $02
    db $10                                        ; $537f: $10
    ld [bc], a                                    ; $5380: $02

jr_0e1_5381:
    jr @-$4a                                      ; $5381: $18 $b4

    ld c, $1e                                     ; $5383: $0e $1e
    add hl, de                                    ; $5385: $19
    rra                                           ; $5386: $1f
    ld e, $0e                                     ; $5387: $1e $0e
    inc c                                         ; $5389: $0c
    inc e                                         ; $538a: $1c
    jr jr_0e1_5395                                ; $538b: $18 $08

    inc e                                         ; $538d: $1c
    inc c                                         ; $538e: $0c
    inc e                                         ; $538f: $1c
    inc c                                         ; $5390: $0c
    ld d, $1e                                     ; $5391: $16 $1e
    dec d                                         ; $5393: $15
    rra                                           ; $5394: $1f

jr_0e1_5395:
    add hl, bc                                    ; $5395: $09
    rra                                           ; $5396: $1f
    ld a, [de]                                    ; $5397: $1a
    ld e, $07                                     ; $5398: $1e $07
    rra                                           ; $539a: $1f
    rlca                                          ; $539b: $07
    rra                                           ; $539c: $1f
    dec b                                         ; $539d: $05
    rra                                           ; $539e: $1f
    ld d, c                                       ; $539f: $51
    ld a, a                                       ; $53a0: $7f
    or c                                          ; $53a1: $b1
    rst $38                                       ; $53a2: $ff
    pop de                                        ; $53a3: $d1
    rst $38                                       ; $53a4: $ff
    pop af                                        ; $53a5: $f1
    rst $18                                       ; $53a6: $df
    ld [hl], c                                    ; $53a7: $71
    ld a, a                                       ; $53a8: $7f
    inc sp                                        ; $53a9: $33
    ccf                                           ; $53aa: $3f
    inc hl                                        ; $53ab: $23
    ccf                                           ; $53ac: $3f
    ld h, e                                       ; $53ad: $63
    ld a, a                                       ; $53ae: $7f
    and a                                         ; $53af: $a7
    rst $38                                       ; $53b0: $ff
    add a                                         ; $53b1: $87
    rst $38                                       ; $53b2: $ff
    adc a                                         ; $53b3: $8f
    rst $38                                       ; $53b4: $ff
    ld a, d                                       ; $53b5: $7a
    ld a, [hl]                                    ; $53b6: $7e
    ld [bc], a                                    ; $53b7: $02
    ld c, $02                                     ; $53b8: $0e $02
    inc c                                         ; $53ba: $0c
    inc b                                         ; $53bb: $04
    nop                                           ; $53bc: $00
    sub [hl]                                      ; $53bd: $96
    ld a, [bc]                                    ; $53be: $0a
    ld a, [hl]                                    ; $53bf: $7e
    dec c                                         ; $53c0: $0d

jr_0e1_53c1:
    ld a, a                                       ; $53c1: $7f
    dec bc                                        ; $53c2: $0b
    ld a, a                                       ; $53c3: $7f
    rrca                                          ; $53c4: $0f
    ld a, e                                       ; $53c5: $7b
    ld c, $7e                                     ; $53c6: $0e $7e
    inc c                                         ; $53c8: $0c
    ld a, h                                       ; $53c9: $7c
    ld b, h                                       ; $53ca: $44
    ld a, h                                       ; $53cb: $7c
    ld b, [hl]                                    ; $53cc: $46
    ld a, [hl]                                    ; $53cd: $7e
    ld h, l                                       ; $53ce: $65
    ld a, a                                       ; $53cf: $7f
    ld [hl], c                                    ; $53d0: $71
    ld a, a                                       ; $53d1: $7f
    ld e, c                                       ; $53d2: $59
    ld a, a                                       ; $53d3: $7f
    ld [bc], a                                    ; $53d4: $02
    ld [hl], $08                                  ; $53d5: $36 $08
    nop                                           ; $53d7: $00
    rst $38                                       ; $53d8: $ff
    dec c                                         ; $53d9: $0d
    inc b                                         ; $53da: $04
    db $fc                                        ; $53db: $fc
    inc b                                         ; $53dc: $04
    ld a, [c]                                     ; $53dd: $f2
    ei                                            ; $53de: $fb
    ld [c], a                                     ; $53df: $e2
    ld a, [$00e2]                                 ; $53e0: $fa $e2 $00
    ld a, [c]                                     ; $53e3: $f2
    ld sp, hl                                     ; $53e4: $f9
    ld a, [c]                                     ; $53e5: $f2
    nop                                           ; $53e6: $00
    ld [bc], a                                    ; $53e7: $02
    rrca                                          ; $53e8: $0f
    sbc [hl]                                      ; $53e9: $9e
    jr jr_0e1_540b                                ; $53ea: $18 $1f

    ld [hl], a                                    ; $53ec: $77
    ld a, a                                       ; $53ed: $7f
    sbc a                                         ; $53ee: $9f
    ld hl, sp+$7f                                 ; $53ef: $f8 $7f
    ld [hl], b                                    ; $53f1: $70
    ld [hl-], a                                   ; $53f2: $32
    dec a                                         ; $53f3: $3d
    rra                                           ; $53f4: $1f
    db $10                                        ; $53f5: $10
    ccf                                           ; $53f6: $3f
    ld [hl-], a                                   ; $53f7: $32
    ld a, [hl-]                                   ; $53f8: $3a
    dec [hl]                                      ; $53f9: $35
    ld l, l                                       ; $53fa: $6d
    ld a, d                                       ; $53fb: $7a
    xor a                                         ; $53fc: $af
    rst $38                                       ; $53fd: $ff
    sub a                                         ; $53fe: $97
    rst $38                                       ; $53ff: $ff
    ld e, d                                       ; $5400: $5a
    ld a, a                                       ; $5401: $7f
    push hl                                       ; $5402: $e5
    rst $38                                       ; $5403: $ff
    ld [c], a                                     ; $5404: $e2
    rst $38                                       ; $5405: $ff
    and l                                         ; $5406: $a5
    rst $38                                       ; $5407: $ff
    ld [bc], a                                    ; $5408: $02
    jr nz, jr_0e1_540d                            ; $5409: $20 $02

jr_0e1_540b:
    jr nc, jr_0e1_53c1                            ; $540b: $30 $b4

jr_0e1_540d:
    inc e                                         ; $540d: $1c
    inc a                                         ; $540e: $3c
    ld [hl-], a                                   ; $540f: $32
    ld a, $3c                                     ; $5410: $3e $3c
    inc e                                         ; $5412: $1c
    jr @+$3a                                      ; $5413: $18 $38

    jr nc, @+$12                                  ; $5415: $30 $10

    jr c, jr_0e1_5431                             ; $5417: $38 $18

    jr c, jr_0e1_5433                             ; $5419: $38 $18

    inc l                                         ; $541b: $2c
    inc a                                         ; $541c: $3c
    ld a, [hl+]                                   ; $541d: $2a
    ld a, $12                                     ; $541e: $3e $12
    ld a, $34                                     ; $5420: $3e $34
    inc a                                         ; $5422: $3c
    ld c, $3e                                     ; $5423: $0e $3e
    ld a, [bc]                                    ; $5425: $0a
    ld a, $0f                                     ; $5426: $3e $0f
    ccf                                           ; $5428: $3f
    ld [hl], c                                    ; $5429: $71
    ld a, a                                       ; $542a: $7f
    sub c                                         ; $542b: $91
    rst $38                                       ; $542c: $ff
    sub c                                         ; $542d: $91
    rst $38                                       ; $542e: $ff
    pop de                                        ; $542f: $d1
    rst $38                                       ; $5430: $ff

jr_0e1_5431:
    pop af                                        ; $5431: $f1
    rst $28                                       ; $5432: $ef

jr_0e1_5433:
    ld [hl], e                                    ; $5433: $73
    ld e, a                                       ; $5434: $5f
    inc sp                                        ; $5435: $33
    ccf                                           ; $5436: $3f
    ld h, e                                       ; $5437: $63
    ld a, a                                       ; $5438: $7f
    and a                                         ; $5439: $a7
    rst $38                                       ; $543a: $ff
    add a                                         ; $543b: $87
    rst $38                                       ; $543c: $ff
    add a                                         ; $543d: $87
    rst $38                                       ; $543e: $ff
    ld c, a                                       ; $543f: $4f
    ld a, a                                       ; $5440: $7f
    ld [bc], a                                    ; $5441: $02
    add hl, sp                                    ; $5442: $39
    ld b, $00                                     ; $5443: $06 $00
    sbc [hl]                                      ; $5445: $9e
    dec c                                         ; $5446: $0d
    ld a, a                                       ; $5447: $7f
    dec c                                         ; $5448: $0d
    ld a, a                                       ; $5449: $7f
    rrca                                          ; $544a: $0f
    ld a, a                                       ; $544b: $7f
    ld c, $7e                                     ; $544c: $0e $7e
    inc c                                         ; $544e: $0c
    ld a, h                                       ; $544f: $7c
    inc c                                         ; $5450: $0c
    ld a, h                                       ; $5451: $7c
    inc c                                         ; $5452: $0c
    ld a, h                                       ; $5453: $7c
    ld c, h                                       ; $5454: $4c
    ld a, h                                       ; $5455: $7c
    ld b, [hl]                                    ; $5456: $46
    ld a, [hl]                                    ; $5457: $7e
    ld b, [hl]                                    ; $5458: $46
    ld a, [hl]                                    ; $5459: $7e
    ld h, l                                       ; $545a: $65
    ld a, a                                       ; $545b: $7f
    ld h, l                                       ; $545c: $65
    ld a, a                                       ; $545d: $7f
    ld [hl], d                                    ; $545e: $72
    ld a, [hl]                                    ; $545f: $7e
    ld e, h                                       ; $5460: $5c
    ld a, h                                       ; $5461: $7c
    ld d, b                                       ; $5462: $50
    ld [hl], b                                    ; $5463: $70
    ld [bc], a                                    ; $5464: $02
    jr nc, @+$01                                  ; $5465: $30 $ff

    dec c                                         ; $5467: $0d
    inc b                                         ; $5468: $04
    db $fc                                        ; $5469: $fc
    inc b                                         ; $546a: $04
    ld a, [c]                                     ; $546b: $f2
    ei                                            ; $546c: $fb
    db $e3                                        ; $546d: $e3
    ld a, [$ffe3]                                 ; $546e: $fa $e3 $ff
    di                                            ; $5471: $f3
    ld sp, hl                                     ; $5472: $f9
    di                                            ; $5473: $f3
    nop                                           ; $5474: $00
    ld [bc], a                                    ; $5475: $02
    rrca                                          ; $5476: $0f
    sbc [hl]                                      ; $5477: $9e
    jr jr_0e1_5499                                ; $5478: $18 $1f

    ld [hl], a                                    ; $547a: $77
    ld a, a                                       ; $547b: $7f
    sbc a                                         ; $547c: $9f
    ld hl, sp+$7f                                 ; $547d: $f8 $7f
    ld [hl], b                                    ; $547f: $70
    ld [hl-], a                                   ; $5480: $32
    dec a                                         ; $5481: $3d
    rra                                           ; $5482: $1f
    db $10                                        ; $5483: $10
    ccf                                           ; $5484: $3f
    ld [hl-], a                                   ; $5485: $32
    ld a, [hl-]                                   ; $5486: $3a
    dec [hl]                                      ; $5487: $35
    ld l, l                                       ; $5488: $6d
    ld a, d                                       ; $5489: $7a
    xor a                                         ; $548a: $af
    rst $38                                       ; $548b: $ff
    sub a                                         ; $548c: $97
    rst $38                                       ; $548d: $ff
    ld e, d                                       ; $548e: $5a
    ld a, a                                       ; $548f: $7f
    push hl                                       ; $5490: $e5
    rst $38                                       ; $5491: $ff
    ld [c], a                                     ; $5492: $e2
    rst $38                                       ; $5493: $ff
    and l                                         ; $5494: $a5
    rst $38                                       ; $5495: $ff
    ld [bc], a                                    ; $5496: $02
    db $10                                        ; $5497: $10
    ld [bc], a                                    ; $5498: $02

jr_0e1_5499:
    jr @-$4c                                      ; $5499: $18 $b2

    ld c, $1e                                     ; $549b: $0e $1e
    add hl, de                                    ; $549d: $19
    rra                                           ; $549e: $1f
    ld e, $0e                                     ; $549f: $1e $0e
    inc c                                         ; $54a1: $0c
    inc e                                         ; $54a2: $1c
    jr jr_0e1_54ad                                ; $54a3: $18 $08

    inc e                                         ; $54a5: $1c
    inc c                                         ; $54a6: $0c
    inc e                                         ; $54a7: $1c
    inc c                                         ; $54a8: $0c
    ld d, $1e                                     ; $54a9: $16 $1e
    dec d                                         ; $54ab: $15
    rra                                           ; $54ac: $1f

jr_0e1_54ad:
    add hl, bc                                    ; $54ad: $09
    rra                                           ; $54ae: $1f
    ld a, [de]                                    ; $54af: $1a
    ld e, $07                                     ; $54b0: $1e $07
    rra                                           ; $54b2: $1f
    rlca                                          ; $54b3: $07
    rra                                           ; $54b4: $1f
    dec b                                         ; $54b5: $05
    rra                                           ; $54b6: $1f
    ld d, c                                       ; $54b7: $51
    ld a, a                                       ; $54b8: $7f
    or c                                          ; $54b9: $b1
    rst $38                                       ; $54ba: $ff
    pop de                                        ; $54bb: $d1
    rst $38                                       ; $54bc: $ff
    pop af                                        ; $54bd: $f1
    rst $18                                       ; $54be: $df
    ld [hl], c                                    ; $54bf: $71
    ld a, a                                       ; $54c0: $7f
    ld sp, $233f                                  ; $54c1: $31 $3f $23
    ccf                                           ; $54c4: $3f
    ld h, e                                       ; $54c5: $63
    ld a, a                                       ; $54c6: $7f
    and a                                         ; $54c7: $a7
    rst $38                                       ; $54c8: $ff
    adc a                                         ; $54c9: $8f
    rst $38                                       ; $54ca: $ff
    sbc e                                         ; $54cb: $9b
    rst $38                                       ; $54cc: $ff
    ld [bc], a                                    ; $54cd: $02
    ld l, h                                       ; $54ce: $6c
    ld [$9800], sp                                ; $54cf: $08 $00 $98
    ld a, [bc]                                    ; $54d2: $0a
    ld a, [hl]                                    ; $54d3: $7e
    dec c                                         ; $54d4: $0d
    ld a, a                                       ; $54d5: $7f
    dec bc                                        ; $54d6: $0b
    ld a, a                                       ; $54d7: $7f
    rrca                                          ; $54d8: $0f
    ld a, e                                       ; $54d9: $7b
    ld c, $7e                                     ; $54da: $0e $7e
    ld c, h                                       ; $54dc: $4c
    ld a, h                                       ; $54dd: $7c
    ld b, h                                       ; $54de: $44

jr_0e1_54df:
    ld a, h                                       ; $54df: $7c
    ld b, [hl]                                    ; $54e0: $46
    ld a, [hl]                                    ; $54e1: $7e
    ld h, l                                       ; $54e2: $65
    ld a, a                                       ; $54e3: $7f
    ld h, c                                       ; $54e4: $61
    ld a, a                                       ; $54e5: $7f
    ld [hl], c                                    ; $54e6: $71
    ld a, a                                       ; $54e7: $7f
    ld e, [hl]                                    ; $54e8: $5e
    ld a, [hl]                                    ; $54e9: $7e
    ld [bc], a                                    ; $54ea: $02
    ld [hl], b                                    ; $54eb: $70
    ld [bc], a                                    ; $54ec: $02
    jr nc, jr_0e1_54f3                            ; $54ed: $30 $04

    nop                                           ; $54ef: $00
    rst $38                                       ; $54f0: $ff
    dec c                                         ; $54f1: $0d
    inc b                                         ; $54f2: $04

jr_0e1_54f3:
    db $fc                                        ; $54f3: $fc
    inc b                                         ; $54f4: $04
    ld a, [c]                                     ; $54f5: $f2
    ei                                            ; $54f6: $fb
    ld [c], a                                     ; $54f7: $e2
    ld sp, hl                                     ; $54f8: $f9
    ld [c], a                                     ; $54f9: $e2
    rst $38                                       ; $54fa: $ff
    ld a, [c]                                     ; $54fb: $f2
    ld sp, hl                                     ; $54fc: $f9
    ld a, [c]                                     ; $54fd: $f2
    nop                                           ; $54fe: $00
    ld [bc], a                                    ; $54ff: $02
    rlca                                          ; $5500: $07
    sbc [hl]                                      ; $5501: $9e
    inc c                                         ; $5502: $0c
    rrca                                          ; $5503: $0f
    dec sp                                        ; $5504: $3b
    ccf                                           ; $5505: $3f
    ld c, a                                       ; $5506: $4f
    ld a, h                                       ; $5507: $7c
    ccf                                           ; $5508: $3f
    jr c, @+$1b                                   ; $5509: $38 $19

    ld e, $0f                                     ; $550b: $1e $0f
    ld [$191f], sp                                ; $550d: $08 $1f $19
    dec e                                         ; $5510: $1d
    ld a, [de]                                    ; $5511: $1a
    ld [hl], $3d                                  ; $5512: $36 $3d
    ld d, a                                       ; $5514: $57
    ld a, a                                       ; $5515: $7f
    ld c, e                                       ; $5516: $4b
    ld a, a                                       ; $5517: $7f
    dec l                                         ; $5518: $2d
    ccf                                           ; $5519: $3f
    ld [hl], d                                    ; $551a: $72
    ld a, a                                       ; $551b: $7f
    ld d, c                                       ; $551c: $51
    ld a, a                                       ; $551d: $7f
    ld a, [c]                                     ; $551e: $f2
    rst $38                                       ; $551f: $ff
    ld [bc], a                                    ; $5520: $02
    jr nc, jr_0e1_54df                            ; $5521: $30 $bc

    jr @+$3a                                      ; $5523: $18 $38

    ld l, $3e                                     ; $5525: $2e $3e
    add hl, sp                                    ; $5527: $39
    rra                                           ; $5528: $1f
    ld a, $0e                                     ; $5529: $3e $0e
    inc c                                         ; $552b: $0c
    inc a                                         ; $552c: $3c
    jr c, jr_0e1_5537                             ; $552d: $38 $08

    inc a                                         ; $552f: $3c
    inc c                                         ; $5530: $0c
    inc e                                         ; $5531: $1c
    inc l                                         ; $5532: $2c
    ld [hl], $1e                                  ; $5533: $36 $1e
    dec [hl]                                      ; $5535: $35
    ccf                                           ; $5536: $3f

jr_0e1_5537:
    add hl, hl                                    ; $5537: $29
    ccf                                           ; $5538: $3f
    ld a, [de]                                    ; $5539: $1a
    ld a, $27                                     ; $553a: $3e $27
    ccf                                           ; $553c: $3f
    rlca                                          ; $553d: $07
    ccf                                           ; $553e: $3f
    dec h                                         ; $553f: $25
    ccf                                           ; $5540: $3f
    or c                                          ; $5541: $b1
    rst $38                                       ; $5542: $ff
    or c                                          ; $5543: $b1
    rst $38                                       ; $5544: $ff
    pop af                                        ; $5545: $f1
    rst $38                                       ; $5546: $ff
    ld [hl], c                                    ; $5547: $71
    ld a, a                                       ; $5548: $7f
    ld sp, $313f                                  ; $5549: $31 $3f $31
    ccf                                           ; $554c: $3f
    ld sp, $333f                                  ; $554d: $31 $3f $33
    ccf                                           ; $5550: $3f
    ld h, e                                       ; $5551: $63
    ld a, a                                       ; $5552: $7f
    ld h, e                                       ; $5553: $63
    ld a, a                                       ; $5554: $7f
    and a                                         ; $5555: $a7
    rst $38                                       ; $5556: $ff
    and a                                         ; $5557: $a7
    rst $38                                       ; $5558: $ff
    ld c, a                                       ; $5559: $4f
    ld a, a                                       ; $555a: $7f
    ld a, [hl-]                                   ; $555b: $3a
    ld a, $0a                                     ; $555c: $3e $0a
    ld c, $02                                     ; $555e: $0e $02
    inc c                                         ; $5560: $0c
    sbc b                                         ; $5561: $98
    ld c, $7e                                     ; $5562: $0e $7e
    add hl, bc                                    ; $5564: $09
    ld a, a                                       ; $5565: $7f
    add hl, bc                                    ; $5566: $09
    ld a, a                                       ; $5567: $7f
    dec bc                                        ; $5568: $0b
    ld a, a                                       ; $5569: $7f
    rrca                                          ; $556a: $0f
    ld [hl], a                                    ; $556b: $77
    ld c, [hl]                                    ; $556c: $4e
    ld a, d                                       ; $556d: $7a
    ld c, h                                       ; $556e: $4c
    ld a, h                                       ; $556f: $7c
    ld b, [hl]                                    ; $5570: $46
    ld a, [hl]                                    ; $5571: $7e
    ld h, l                                       ; $5572: $65
    ld a, a                                       ; $5573: $7f
    ld h, c                                       ; $5574: $61
    ld a, a                                       ; $5575: $7f
    ld h, c                                       ; $5576: $61
    ld a, a                                       ; $5577: $7f
    ld [hl], d                                    ; $5578: $72
    ld a, [hl]                                    ; $5579: $7e
    ld [bc], a                                    ; $557a: $02
    inc e                                         ; $557b: $1c
    ld b, $00                                     ; $557c: $06 $00
    rst $38                                       ; $557e: $ff
    dec c                                         ; $557f: $0d
    inc b                                         ; $5580: $04
    db $fc                                        ; $5581: $fc
    inc b                                         ; $5582: $04
    ld a, [c]                                     ; $5583: $f2
    ei                                            ; $5584: $fb
    db $e3                                        ; $5585: $e3
    db $fc                                        ; $5586: $fc
    push hl                                       ; $5587: $e5
    cp $f3                                        ; $5588: $fe $f3
    ld sp, hl                                     ; $558a: $f9
    di                                            ; $558b: $f3
    cp $02                                        ; $558c: $fe $02
    ld e, $9e                                     ; $558e: $1e $9e
    ld sp, $633f                                  ; $5590: $31 $3f $63
    ld a, a                                       ; $5593: $7f
    sub a                                         ; $5594: $97
    db $fc                                        ; $5595: $fc
    ld a, h                                       ; $5596: $7c
    ld a, e                                       ; $5597: $7b
    ccf                                           ; $5598: $3f
    jr nc, jr_0e1_55ba                            ; $5599: $30 $1f

    db $10                                        ; $559b: $10
    dec a                                         ; $559c: $3d
    ld a, [hl-]                                   ; $559d: $3a
    ld e, [hl]                                    ; $559e: $5e
    ld a, l                                       ; $559f: $7d
    ld h, a                                       ; $55a0: $67
    ld a, a                                       ; $55a1: $7f
    sbc c                                         ; $55a2: $99
    rst $38                                       ; $55a3: $ff
    add [hl]                                      ; $55a4: $86
    rst $38                                       ; $55a5: $ff
    pop af                                        ; $55a6: $f1
    rst $38                                       ; $55a7: $ff
    ret z                                         ; $55a8: $c8

    rst $38                                       ; $55a9: $ff
    ld c, b                                       ; $55aa: $48
    ld a, a                                       ; $55ab: $7f
    ld e, b                                       ; $55ac: $58
    ld a, a                                       ; $55ad: $7f
    ld b, $02                                     ; $55ae: $06 $02
    add d                                         ; $55b0: $82
    inc bc                                        ; $55b1: $03
    ld bc, $0206                                  ; $55b2: $01 $06 $02
    inc b                                         ; $55b5: $04
    nop                                           ; $55b6: $00
    inc b                                         ; $55b7: $04
    ld [bc], a                                    ; $55b8: $02
    inc b                                         ; $55b9: $04

jr_0e1_55ba:
    inc bc                                        ; $55ba: $03
    ld [bc], a                                    ; $55bb: $02
    ld [bc], a                                    ; $55bc: $02
    add h                                         ; $55bd: $84
    ld h, [hl]                                    ; $55be: $66
    cp $26                                        ; $55bf: $fe $26
    cp $02                                        ; $55c1: $fe $02
    ld [$1088], sp                                ; $55c3: $08 $88 $10
    jr jr_0e1_55d9                                ; $55c6: $18 $11

    rra                                           ; $55c8: $1f
    ld de, $171e                                  ; $55c9: $11 $1e $17
    dec e                                         ; $55cc: $1d
    ld [bc], a                                    ; $55cd: $02
    rrca                                          ; $55ce: $0f
    adc h                                         ; $55cf: $8c
    db $10                                        ; $55d0: $10
    rra                                           ; $55d1: $1f
    jr nc, jr_0e1_5613                            ; $55d2: $30 $3f

    ld [hl], b                                    ; $55d4: $70
    ld a, a                                       ; $55d5: $7f
    ldh [rIE], a                                  ; $55d6: $e0 $ff
    add b                                         ; $55d8: $80

jr_0e1_55d9:
    rst $38                                       ; $55d9: $ff
    ld b, c                                       ; $55da: $41
    ld a, a                                       ; $55db: $7f
    ld [bc], a                                    ; $55dc: $02
    ccf                                           ; $55dd: $3f
    ld a, [bc]                                    ; $55de: $0a
    nop                                           ; $55df: $00
    adc [hl]                                      ; $55e0: $8e
    ld d, $1e                                     ; $55e1: $16 $1e
    ld d, $1e                                     ; $55e3: $16 $1e
    rla                                           ; $55e5: $17
    rra                                           ; $55e6: $1f
    dec b                                         ; $55e7: $05
    rra                                           ; $55e8: $1f
    dec c                                         ; $55e9: $0d
    rra                                           ; $55ea: $1f
    ld c, $1e                                     ; $55eb: $0e $1e
    ld c, $1e                                     ; $55ed: $0e $1e
    inc b                                         ; $55ef: $04
    inc e                                         ; $55f0: $1c
    add d                                         ; $55f1: $82
    inc d                                         ; $55f2: $14
    inc e                                         ; $55f3: $1c
    ld [bc], a                                    ; $55f4: $02
    ld c, $06                                     ; $55f5: $0e $06
    nop                                           ; $55f7: $00
    rst $38                                       ; $55f8: $ff
    dec c                                         ; $55f9: $0d
    inc b                                         ; $55fa: $04
    db $fc                                        ; $55fb: $fc
    inc b                                         ; $55fc: $04
    ld a, [c]                                     ; $55fd: $f2
    ei                                            ; $55fe: $fb
    ld [c], a                                     ; $55ff: $e2
    db $fc                                        ; $5600: $fc
    db $e4                                        ; $5601: $e4
    cp $f2                                        ; $5602: $fe $f2
    ld sp, hl                                     ; $5604: $f9
    ld a, [c]                                     ; $5605: $f2
    nop                                           ; $5606: $00
    ld [bc], a                                    ; $5607: $02
    ld e, $9e                                     ; $5608: $1e $9e
    ld sp, $633f                                  ; $560a: $31 $3f $63
    ld a, a                                       ; $560d: $7f
    sub a                                         ; $560e: $97
    db $fc                                        ; $560f: $fc
    ld a, h                                       ; $5610: $7c
    ld a, e                                       ; $5611: $7b
    ccf                                           ; $5612: $3f

jr_0e1_5613:
    jr nc, jr_0e1_5634                            ; $5613: $30 $1f

    db $10                                        ; $5615: $10
    dec a                                         ; $5616: $3d
    ld a, [hl-]                                   ; $5617: $3a
    ld e, [hl]                                    ; $5618: $5e
    ld a, l                                       ; $5619: $7d
    ld h, a                                       ; $561a: $67
    ld a, a                                       ; $561b: $7f
    sbc c                                         ; $561c: $99
    rst $38                                       ; $561d: $ff
    add [hl]                                      ; $561e: $86
    rst $38                                       ; $561f: $ff
    pop af                                        ; $5620: $f1
    rst $38                                       ; $5621: $ff
    add sp, -$01                                  ; $5622: $e8 $ff
    ld c, b                                       ; $5624: $48
    ld a, a                                       ; $5625: $7f
    ld c, b                                       ; $5626: $48
    ld a, a                                       ; $5627: $7f
    ld b, $02                                     ; $5628: $06 $02
    add d                                         ; $562a: $82
    inc bc                                        ; $562b: $03
    ld bc, $0206                                  ; $562c: $01 $06 $02
    inc b                                         ; $562f: $04
    nop                                           ; $5630: $00
    inc b                                         ; $5631: $04
    ld [bc], a                                    ; $5632: $02
    inc b                                         ; $5633: $04

jr_0e1_5634:
    inc bc                                        ; $5634: $03
    ld [bc], a                                    ; $5635: $02
    ld [bc], a                                    ; $5636: $02
    add h                                         ; $5637: $84
    ld h, [hl]                                    ; $5638: $66
    cp $16                                        ; $5639: $fe $16
    cp $05                                        ; $563b: $fe $05
    ld [$0f85], sp                                ; $563d: $08 $85 $0f
    add hl, bc                                    ; $5640: $09
    rrca                                          ; $5641: $0f
    dec c                                         ; $5642: $0d
    ld c, $02                                     ; $5643: $0e $02
    rrca                                          ; $5645: $0f
    adc [hl]                                      ; $5646: $8e
    ld [$100f], sp                                ; $5647: $08 $0f $10
    rra                                           ; $564a: $1f
    jr nc, @+$41                                  ; $564b: $30 $3f

    ld h, b                                       ; $564d: $60
    ld a, a                                       ; $564e: $7f
    and c                                         ; $564f: $a1
    rst $38                                       ; $5650: $ff
    add e                                         ; $5651: $83
    rst $38                                       ; $5652: $ff
    ld b, [hl]                                    ; $5653: $46
    ld a, [hl]                                    ; $5654: $7e
    ld [bc], a                                    ; $5655: $02
    ccf                                           ; $5656: $3f
    ld [$8100], sp                                ; $5657: $08 $00 $81
    jr c, jr_0e1_565e                             ; $565a: $38 $02

    ld a, b                                       ; $565c: $78
    adc d                                         ; $565d: $8a

jr_0e1_565e:
    jr c, @+$5e                                   ; $565e: $38 $5c

    ld a, h                                       ; $5660: $7c
    inc [hl]                                      ; $5661: $34
    ld a, h                                       ; $5662: $7c
    inc [hl]                                      ; $5663: $34
    ld a, h                                       ; $5664: $7c
    inc [hl]                                      ; $5665: $34
    ld a, h                                       ; $5666: $7c
    ld [hl], h                                    ; $5667: $74
    inc bc                                        ; $5668: $03
    ld a, h                                       ; $5669: $7c
    ld [bc], a                                    ; $566a: $02
    ld a, a                                       ; $566b: $7f
    ld [bc], a                                    ; $566c: $02
    ld d, [hl]                                    ; $566d: $56
    ld [$ff00], sp                                ; $566e: $08 $00 $ff
    dec c                                         ; $5671: $0d
    inc b                                         ; $5672: $04
    db $fc                                        ; $5673: $fc
    inc b                                         ; $5674: $04
    ld a, [c]                                     ; $5675: $f2
    ei                                            ; $5676: $fb
    db $e3                                        ; $5677: $e3
    db $fc                                        ; $5678: $fc
    push hl                                       ; $5679: $e5
    cp $f3                                        ; $567a: $fe $f3
    ld sp, hl                                     ; $567c: $f9
    di                                            ; $567d: $f3
    cp $02                                        ; $567e: $fe $02
    ld e, $9e                                     ; $5680: $1e $9e
    ld sp, $633f                                  ; $5682: $31 $3f $63
    ld a, a                                       ; $5685: $7f
    sub a                                         ; $5686: $97
    db $fc                                        ; $5687: $fc
    ld a, h                                       ; $5688: $7c
    ld a, e                                       ; $5689: $7b
    ccf                                           ; $568a: $3f
    jr nc, jr_0e1_56ac                            ; $568b: $30 $1f

    db $10                                        ; $568d: $10
    dec a                                         ; $568e: $3d
    ld a, [hl-]                                   ; $568f: $3a
    ld e, [hl]                                    ; $5690: $5e
    ld a, l                                       ; $5691: $7d
    ld h, a                                       ; $5692: $67
    ld a, a                                       ; $5693: $7f
    sbc c                                         ; $5694: $99
    rst $38                                       ; $5695: $ff
    add [hl]                                      ; $5696: $86
    rst $38                                       ; $5697: $ff
    pop af                                        ; $5698: $f1
    rst $38                                       ; $5699: $ff
    ret z                                         ; $569a: $c8

    rst $38                                       ; $569b: $ff
    ld c, b                                       ; $569c: $48
    ld a, a                                       ; $569d: $7f
    ld e, b                                       ; $569e: $58
    ld a, a                                       ; $569f: $7f
    ld b, $02                                     ; $56a0: $06 $02
    add d                                         ; $56a2: $82
    inc bc                                        ; $56a3: $03
    ld bc, $0206                                  ; $56a4: $01 $06 $02
    inc b                                         ; $56a7: $04
    nop                                           ; $56a8: $00
    inc b                                         ; $56a9: $04
    ld [bc], a                                    ; $56aa: $02
    inc b                                         ; $56ab: $04

jr_0e1_56ac:
    inc bc                                        ; $56ac: $03
    ld [bc], a                                    ; $56ad: $02
    ld [bc], a                                    ; $56ae: $02
    add h                                         ; $56af: $84
    ld h, d                                       ; $56b0: $62
    cp $22                                        ; $56b1: $fe $22
    cp $02                                        ; $56b3: $fe $02
    ld [$1096], sp                                ; $56b5: $08 $96 $10
    jr jr_0e1_56cb                                ; $56b8: $18 $11

    rra                                           ; $56ba: $1f
    ld de, $171f                                  ; $56bb: $11 $1f $17
    dec e                                         ; $56be: $1d
    rrca                                          ; $56bf: $0f
    dec bc                                        ; $56c0: $0b
    inc c                                         ; $56c1: $0c
    rrca                                          ; $56c2: $0f
    jr @+$21                                      ; $56c3: $18 $1f

    jr c, jr_0e1_5706                             ; $56c5: $38 $3f

    ld [hl], b                                    ; $56c7: $70
    ld a, a                                       ; $56c8: $7f
    add b                                         ; $56c9: $80
    rst $38                                       ; $56ca: $ff

jr_0e1_56cb:
    ld b, c                                       ; $56cb: $41
    ld a, a                                       ; $56cc: $7f
    ld [bc], a                                    ; $56cd: $02
    ld a, $0a                                     ; $56ce: $3e $0a
    nop                                           ; $56d0: $00
    sub b                                         ; $56d1: $90
    ld b, $1e                                     ; $56d2: $06 $1e
    ld d, $1e                                     ; $56d4: $16 $1e
    rla                                           ; $56d6: $17
    rra                                           ; $56d7: $1f
    rlca                                          ; $56d8: $07
    rra                                           ; $56d9: $1f
    rlca                                          ; $56da: $07
    rra                                           ; $56db: $1f
    ld c, $1e                                     ; $56dc: $0e $1e
    ld c, $1e                                     ; $56de: $0e $1e
    inc c                                         ; $56e0: $0c
    inc e                                         ; $56e1: $1c
    ld [bc], a                                    ; $56e2: $02
    ld e, $02                                     ; $56e3: $1e $02
    rrca                                          ; $56e5: $0f
    ld [$ff00], sp                                ; $56e6: $08 $00 $ff
    dec c                                         ; $56e9: $0d
    inc b                                         ; $56ea: $04
    db $fc                                        ; $56eb: $fc
    inc b                                         ; $56ec: $04
    ld a, [c]                                     ; $56ed: $f2
    ei                                            ; $56ee: $fb
    ld [c], a                                     ; $56ef: $e2
    db $fc                                        ; $56f0: $fc
    db $e4                                        ; $56f1: $e4
    cp $f2                                        ; $56f2: $fe $f2
    ld sp, hl                                     ; $56f4: $f9
    ld a, [c]                                     ; $56f5: $f2
    ld bc, $1e02                                  ; $56f6: $01 $02 $1e
    sbc [hl]                                      ; $56f9: $9e
    ld sp, $633f                                  ; $56fa: $31 $3f $63
    ld a, a                                       ; $56fd: $7f
    sub a                                         ; $56fe: $97
    db $fc                                        ; $56ff: $fc
    ld a, h                                       ; $5700: $7c
    ld a, e                                       ; $5701: $7b
    ccf                                           ; $5702: $3f
    jr nc, jr_0e1_5724                            ; $5703: $30 $1f

    db $10                                        ; $5705: $10

jr_0e1_5706:
    dec a                                         ; $5706: $3d
    ld a, [hl-]                                   ; $5707: $3a
    ld e, [hl]                                    ; $5708: $5e
    ld a, l                                       ; $5709: $7d
    ld h, a                                       ; $570a: $67
    ld a, a                                       ; $570b: $7f
    sbc c                                         ; $570c: $99
    rst $38                                       ; $570d: $ff
    add [hl]                                      ; $570e: $86
    rst $38                                       ; $570f: $ff
    pop af                                        ; $5710: $f1
    rst $38                                       ; $5711: $ff
    ret c                                         ; $5712: $d8

    rst $38                                       ; $5713: $ff
    ld c, b                                       ; $5714: $48
    ld a, a                                       ; $5715: $7f
    ret z                                         ; $5716: $c8

    rst $38                                       ; $5717: $ff
    ld b, $02                                     ; $5718: $06 $02
    add d                                         ; $571a: $82
    inc bc                                        ; $571b: $03
    ld bc, $0206                                  ; $571c: $01 $06 $02
    inc b                                         ; $571f: $04
    nop                                           ; $5720: $00
    inc b                                         ; $5721: $04
    ld [bc], a                                    ; $5722: $02
    inc b                                         ; $5723: $04

jr_0e1_5724:
    inc bc                                        ; $5724: $03
    ld [bc], a                                    ; $5725: $02
    ld [bc], a                                    ; $5726: $02
    sbc [hl]                                      ; $5727: $9e
    ld h, d                                       ; $5728: $62
    cp $62                                        ; $5729: $fe $62
    cp $10                                        ; $572b: $fe $10
    jr @+$12                                      ; $572d: $18 $10

    jr jr_0e1_5754                                ; $572f: $18 $23

    ccf                                           ; $5731: $3f
    ld hl, $273f                                  ; $5732: $21 $3f $27
    ccf                                           ; $5735: $3f
    rra                                           ; $5736: $1f
    dec de                                        ; $5737: $1b
    inc c                                         ; $5738: $0c
    rrca                                          ; $5739: $0f
    ld [$180f], sp                                ; $573a: $08 $0f $18
    rra                                           ; $573d: $1f
    jr nc, @+$41                                  ; $573e: $30 $3f

    ld h, b                                       ; $5740: $60
    ld a, a                                       ; $5741: $7f
    add b                                         ; $5742: $80
    rst $38                                       ; $5743: $ff
    ld h, b                                       ; $5744: $60
    ld a, a                                       ; $5745: $7f
    ld [bc], a                                    ; $5746: $02
    rra                                           ; $5747: $1f
    ld [$9400], sp                                ; $5748: $08 $00 $94
    db $10                                        ; $574b: $10
    ldh a, [rNR10]                                ; $574c: $f0 $10
    ldh a, [rNR23]                                ; $574e: $f0 $18
    ld hl, sp+$38                                 ; $5750: $f8 $38
    ld hl, sp+$38                                 ; $5752: $f8 $38

jr_0e1_5754:
    ld hl, sp+$3c                                 ; $5754: $f8 $3c
    db $fc                                        ; $5756: $fc
    inc a                                         ; $5757: $3c
    db $fc                                        ; $5758: $fc
    ld a, h                                       ; $5759: $7c
    db $fc                                        ; $575a: $fc
    ld [hl], h                                    ; $575b: $74
    db $fc                                        ; $575c: $fc
    ld a, e                                       ; $575d: $7b
    rst $38                                       ; $575e: $ff
    ld [bc], a                                    ; $575f: $02
    sub [hl]                                      ; $5760: $96
    ld b, $00                                     ; $5761: $06 $00
    rst $38                                       ; $5763: $ff
    dec c                                         ; $5764: $0d
    inc b                                         ; $5765: $04
    ei                                            ; $5766: $fb
    dec b                                         ; $5767: $05
    di                                            ; $5768: $f3
    db $fc                                        ; $5769: $fc
    ld [c], a                                     ; $576a: $e2
    ld a, [$ffe3]                                 ; $576b: $fa $e3 $ff
    ld a, [c]                                     ; $576e: $f2
    ld sp, hl                                     ; $576f: $f9
    ld a, [c]                                     ; $5770: $f2
    nop                                           ; $5771: $00
    ld [bc], a                                    ; $5772: $02
    rlca                                          ; $5773: $07
    sub d                                         ; $5774: $92
    rrca                                          ; $5775: $0f
    ld [$101f], sp                                ; $5776: $08 $1f $10
    rra                                           ; $5779: $1f
    db $10                                        ; $577a: $10
    rra                                           ; $577b: $1f
    db $10                                        ; $577c: $10
    ccf                                           ; $577d: $3f
    jr z, jr_0e1_57bf                             ; $577e: $28 $3f

    daa                                           ; $5780: $27
    rra                                           ; $5781: $1f
    dec d                                         ; $5782: $15
    cpl                                           ; $5783: $2f
    jr c, jr_0e1_57b5                             ; $5784: $38 $2f

    dec a                                         ; $5786: $3d
    ld [bc], a                                    ; $5787: $02
    ccf                                           ; $5788: $3f
    add c                                         ; $5789: $81
    jr nc, jr_0e1_578f                            ; $578a: $30 $03

    ccf                                           ; $578c: $3f
    add [hl]                                      ; $578d: $86
    ld b, d                                       ; $578e: $42

jr_0e1_578f:
    ld a, a                                       ; $578f: $7f
    ld h, b                                       ; $5790: $60
    ld a, a                                       ; $5791: $7f
    and b                                         ; $5792: $a0
    rst $38                                       ; $5793: $ff
    ld [bc], a                                    ; $5794: $02
    db $10                                        ; $5795: $10
    adc a                                         ; $5796: $8f
    jr jr_0e1_57a1                                ; $5797: $18 $08

    jr jr_0e1_57a3                                ; $5799: $18 $08

    jr jr_0e1_57a5                                ; $579b: $18 $08

    inc e                                         ; $579d: $1c
    inc d                                         ; $579e: $14
    inc e                                         ; $579f: $1c
    inc b                                         ; $57a0: $04

jr_0e1_57a1:
    jr jr_0e1_57ab                                ; $57a1: $18 $08

jr_0e1_57a3:
    inc d                                         ; $57a3: $14
    inc e                                         ; $57a4: $1c

jr_0e1_57a5:
    inc d                                         ; $57a5: $14
    inc bc                                        ; $57a6: $03
    inc e                                         ; $57a7: $1c
    add d                                         ; $57a8: $82
    inc c                                         ; $57a9: $0c
    inc e                                         ; $57aa: $1c

jr_0e1_57ab:
    ld [bc], a                                    ; $57ab: $02
    ld e, $a2                                     ; $57ac: $1e $a2
    ld [bc], a                                    ; $57ae: $02
    ld e, $06                                     ; $57af: $1e $06
    ld e, $05                                     ; $57b1: $1e $05
    rra                                           ; $57b3: $1f
    ld b, l                                       ; $57b4: $45

jr_0e1_57b5:
    rst $38                                       ; $57b5: $ff
    ld d, b                                       ; $57b6: $50
    ld a, h                                       ; $57b7: $7c
    ld d, c                                       ; $57b8: $51
    ld a, a                                       ; $57b9: $7f
    sub b                                         ; $57ba: $90
    rst $38                                       ; $57bb: $ff
    sub b                                         ; $57bc: $90
    rst $38                                       ; $57bd: $ff
    db $f4                                        ; $57be: $f4

jr_0e1_57bf:
    rst $38                                       ; $57bf: $ff
    ld [hl], l                                    ; $57c0: $75
    ld a, a                                       ; $57c1: $7f
    jr nc, @+$41                                  ; $57c2: $30 $3f

    jr nz, jr_0e1_5805                            ; $57c4: $20 $3f

    jr nz, jr_0e1_5807                            ; $57c6: $20 $3f

    ld h, b                                       ; $57c8: $60
    ld a, a                                       ; $57c9: $7f
    ld h, b                                       ; $57ca: $60
    ld a, a                                       ; $57cb: $7f
    ld h, b                                       ; $57cc: $60
    ld a, a                                       ; $57cd: $7f
    jr nc, jr_0e1_580f                            ; $57ce: $30 $3f

    ld [bc], a                                    ; $57d0: $02
    rra                                           ; $57d1: $1f
    add d                                         ; $57d2: $82
    ld a, [de]                                    ; $57d3: $1a
    ld e, $02                                     ; $57d4: $1e $02
    ld c, $02                                     ; $57d6: $0e $02
    nop                                           ; $57d8: $00
    sbc b                                         ; $57d9: $98
    ld a, [bc]                                    ; $57da: $0a
    ld a, [hl]                                    ; $57db: $7e
    add hl, bc                                    ; $57dc: $09
    ld a, a                                       ; $57dd: $7f
    add hl, bc                                    ; $57de: $09
    ld a, a                                       ; $57df: $7f
    scf                                           ; $57e0: $37
    ld a, a                                       ; $57e1: $7f
    ld h, $7e                                     ; $57e2: $26 $7e
    inc b                                         ; $57e4: $04
    ld a, h                                       ; $57e5: $7c
    inc b                                         ; $57e6: $04
    ld a, h                                       ; $57e7: $7c
    inc b                                         ; $57e8: $04
    ld a, h                                       ; $57e9: $7c
    ld [bc], a                                    ; $57ea: $02
    ld a, [hl]                                    ; $57eb: $7e
    ld [bc], a                                    ; $57ec: $02
    ld a, [hl]                                    ; $57ed: $7e
    ld [bc], a                                    ; $57ee: $02
    ld a, [hl]                                    ; $57ef: $7e
    inc b                                         ; $57f0: $04
    ld a, h                                       ; $57f1: $7c
    ld [bc], a                                    ; $57f2: $02
    ld a, b                                       ; $57f3: $78
    add d                                         ; $57f4: $82
    ld l, b                                       ; $57f5: $68
    ld a, b                                       ; $57f6: $78
    ld [bc], a                                    ; $57f7: $02
    ld [hl], b                                    ; $57f8: $70
    rst $38                                       ; $57f9: $ff
    dec c                                         ; $57fa: $0d
    inc b                                         ; $57fb: $04
    ei                                            ; $57fc: $fb
    dec b                                         ; $57fd: $05
    di                                            ; $57fe: $f3
    db $fc                                        ; $57ff: $fc
    ld [c], a                                     ; $5800: $e2
    ld a, [$ffe3]                                 ; $5801: $fa $e3 $ff
    ld a, [c]                                     ; $5804: $f2

jr_0e1_5805:
    ld sp, hl                                     ; $5805: $f9
    ld a, [c]                                     ; $5806: $f2

jr_0e1_5807:
    nop                                           ; $5807: $00
    ld [bc], a                                    ; $5808: $02
    rlca                                          ; $5809: $07
    sub d                                         ; $580a: $92
    rrca                                          ; $580b: $0f
    ld [$101f], sp                                ; $580c: $08 $1f $10

jr_0e1_580f:
    rra                                           ; $580f: $1f
    db $10                                        ; $5810: $10
    rra                                           ; $5811: $1f
    db $10                                        ; $5812: $10
    ccf                                           ; $5813: $3f
    jr z, jr_0e1_5855                             ; $5814: $28 $3f

    daa                                           ; $5816: $27
    rra                                           ; $5817: $1f
    dec d                                         ; $5818: $15
    cpl                                           ; $5819: $2f
    jr c, jr_0e1_584b                             ; $581a: $38 $2f

    dec a                                         ; $581c: $3d
    ld [bc], a                                    ; $581d: $02
    ccf                                           ; $581e: $3f
    add c                                         ; $581f: $81
    jr nc, jr_0e1_5825                            ; $5820: $30 $03

    ccf                                           ; $5822: $3f
    add [hl]                                      ; $5823: $86
    ld b, d                                       ; $5824: $42

jr_0e1_5825:
    ld a, a                                       ; $5825: $7f
    ld h, b                                       ; $5826: $60
    ld a, a                                       ; $5827: $7f
    and b                                         ; $5828: $a0
    rst $38                                       ; $5829: $ff
    ld [bc], a                                    ; $582a: $02
    db $10                                        ; $582b: $10
    adc a                                         ; $582c: $8f
    jr jr_0e1_5837                                ; $582d: $18 $08

    jr jr_0e1_5839                                ; $582f: $18 $08

    jr jr_0e1_583b                                ; $5831: $18 $08

    inc e                                         ; $5833: $1c
    inc d                                         ; $5834: $14
    inc e                                         ; $5835: $1c
    inc b                                         ; $5836: $04

jr_0e1_5837:
    jr jr_0e1_5841                                ; $5837: $18 $08

jr_0e1_5839:
    inc d                                         ; $5839: $14
    inc e                                         ; $583a: $1c

jr_0e1_583b:
    inc d                                         ; $583b: $14
    inc bc                                        ; $583c: $03
    inc e                                         ; $583d: $1c
    add d                                         ; $583e: $82
    inc c                                         ; $583f: $0c
    inc e                                         ; $5840: $1c

jr_0e1_5841:
    ld [bc], a                                    ; $5841: $02
    ld e, $a2                                     ; $5842: $1e $a2
    ld [bc], a                                    ; $5844: $02
    ld e, $06                                     ; $5845: $1e $06
    ld e, $05                                     ; $5847: $1e $05
    rra                                           ; $5849: $1f
    ld b, l                                       ; $584a: $45

jr_0e1_584b:
    rst $38                                       ; $584b: $ff
    ld d, b                                       ; $584c: $50
    ld a, h                                       ; $584d: $7c
    ld d, b                                       ; $584e: $50
    ld a, a                                       ; $584f: $7f
    sub c                                         ; $5850: $91
    rst $38                                       ; $5851: $ff
    sub b                                         ; $5852: $90
    rst $38                                       ; $5853: $ff
    or b                                          ; $5854: $b0

jr_0e1_5855:
    rst $38                                       ; $5855: $ff
    ld [hl], l                                    ; $5856: $75
    ld a, a                                       ; $5857: $7f
    jr nc, jr_0e1_5899                            ; $5858: $30 $3f

    jr nc, jr_0e1_589b                            ; $585a: $30 $3f

    jr nz, @+$41                                  ; $585c: $20 $3f

    jr nz, jr_0e1_589f                            ; $585e: $20 $3f

    ld b, b                                       ; $5860: $40
    ld a, a                                       ; $5861: $7f
    ld b, b                                       ; $5862: $40
    ld a, a                                       ; $5863: $7f
    jr c, jr_0e1_58a5                             ; $5864: $38 $3f

    ld [bc], a                                    ; $5866: $02
    rrca                                          ; $5867: $0f
    ld b, $00                                     ; $5868: $06 $00
    sbc e                                         ; $586a: $9b
    add hl, bc                                    ; $586b: $09
    ld a, a                                       ; $586c: $7f
    add hl, bc                                    ; $586d: $09
    ld a, a                                       ; $586e: $7f
    add hl, bc                                    ; $586f: $09
    ld a, a                                       ; $5870: $7f
    ld a, $7e                                     ; $5871: $3e $7e
    ld l, $7e                                     ; $5873: $2e $7e
    inc b                                         ; $5875: $04
    ld a, h                                       ; $5876: $7c
    inc b                                         ; $5877: $04
    ld a, h                                       ; $5878: $7c
    inc b                                         ; $5879: $04
    ld a, h                                       ; $587a: $7c
    inc b                                         ; $587b: $04
    ld a, h                                       ; $587c: $7c
    inc b                                         ; $587d: $04
    ld a, h                                       ; $587e: $7c
    inc b                                         ; $587f: $04
    ld a, h                                       ; $5880: $7c
    inc b                                         ; $5881: $04
    ld a, h                                       ; $5882: $7c
    inc e                                         ; $5883: $1c
    ld a, h                                       ; $5884: $7c
    ld l, b                                       ; $5885: $68
    inc bc                                        ; $5886: $03
    ld a, b                                       ; $5887: $78
    rst $38                                       ; $5888: $ff
    dec c                                         ; $5889: $0d
    inc b                                         ; $588a: $04
    ei                                            ; $588b: $fb
    dec b                                         ; $588c: $05
    di                                            ; $588d: $f3
    db $fc                                        ; $588e: $fc
    db $e3                                        ; $588f: $e3
    ld a, [$ffe4]                                 ; $5890: $fa $e4 $ff
    di                                            ; $5893: $f3
    ld sp, hl                                     ; $5894: $f9
    di                                            ; $5895: $f3
    nop                                           ; $5896: $00
    ld [bc], a                                    ; $5897: $02
    rlca                                          ; $5898: $07

jr_0e1_5899:
    sub d                                         ; $5899: $92
    rrca                                          ; $589a: $0f

jr_0e1_589b:
    ld [$101f], sp                                ; $589b: $08 $1f $10
    rra                                           ; $589e: $1f

jr_0e1_589f:
    db $10                                        ; $589f: $10
    rra                                           ; $58a0: $1f
    db $10                                        ; $58a1: $10
    ccf                                           ; $58a2: $3f
    jr z, jr_0e1_58e4                             ; $58a3: $28 $3f

jr_0e1_58a5:
    daa                                           ; $58a5: $27
    rra                                           ; $58a6: $1f
    dec d                                         ; $58a7: $15
    cpl                                           ; $58a8: $2f
    jr c, jr_0e1_58da                             ; $58a9: $38 $2f

    dec a                                         ; $58ab: $3d
    ld [bc], a                                    ; $58ac: $02
    ccf                                           ; $58ad: $3f
    add c                                         ; $58ae: $81
    jr nc, jr_0e1_58b4                            ; $58af: $30 $03

    ccf                                           ; $58b1: $3f
    add [hl]                                      ; $58b2: $86
    ld b, d                                       ; $58b3: $42

jr_0e1_58b4:
    ld a, a                                       ; $58b4: $7f
    ldh [rIE], a                                  ; $58b5: $e0 $ff
    and b                                         ; $58b7: $a0
    rst $38                                       ; $58b8: $ff
    ld [bc], a                                    ; $58b9: $02
    db $10                                        ; $58ba: $10
    adc a                                         ; $58bb: $8f
    jr jr_0e1_58c6                                ; $58bc: $18 $08

    jr jr_0e1_58c8                                ; $58be: $18 $08

    jr jr_0e1_58ca                                ; $58c0: $18 $08

    inc e                                         ; $58c2: $1c
    inc d                                         ; $58c3: $14
    inc e                                         ; $58c4: $1c
    inc b                                         ; $58c5: $04

jr_0e1_58c6:
    jr jr_0e1_58d0                                ; $58c6: $18 $08

jr_0e1_58c8:
    inc d                                         ; $58c8: $14
    inc e                                         ; $58c9: $1c

jr_0e1_58ca:
    inc d                                         ; $58ca: $14
    inc bc                                        ; $58cb: $03
    inc e                                         ; $58cc: $1c
    add d                                         ; $58cd: $82
    inc c                                         ; $58ce: $0c
    inc e                                         ; $58cf: $1c

jr_0e1_58d0:
    ld [bc], a                                    ; $58d0: $02
    ld e, $a0                                     ; $58d1: $1e $a0
    ld [bc], a                                    ; $58d3: $02
    ld e, $07                                     ; $58d4: $1e $07
    rra                                           ; $58d6: $1f
    dec b                                         ; $58d7: $05
    rra                                           ; $58d8: $1f
    ld b, l                                       ; $58d9: $45

jr_0e1_58da:
    rst $38                                       ; $58da: $ff
    ld d, b                                       ; $58db: $50
    ld a, h                                       ; $58dc: $7c
    ld d, c                                       ; $58dd: $51
    ld a, a                                       ; $58de: $7f
    sub b                                         ; $58df: $90
    rst $38                                       ; $58e0: $ff
    sub b                                         ; $58e1: $90
    rst $38                                       ; $58e2: $ff
    db $f4                                        ; $58e3: $f4

jr_0e1_58e4:
    rst $38                                       ; $58e4: $ff
    ld [hl], l                                    ; $58e5: $75
    ld a, a                                       ; $58e6: $7f
    jr nz, jr_0e1_5928                            ; $58e7: $20 $3f

    jr nz, jr_0e1_592a                            ; $58e9: $20 $3f

    jr nz, jr_0e1_592c                            ; $58eb: $20 $3f

    jr nz, @+$41                                  ; $58ed: $20 $3f

    ld b, b                                       ; $58ef: $40
    ld a, a                                       ; $58f0: $7f
    jr nc, jr_0e1_5932                            ; $58f1: $30 $3f

    ld [bc], a                                    ; $58f3: $02
    rra                                           ; $58f4: $1f
    add d                                         ; $58f5: $82
    ld a, [de]                                    ; $58f6: $1a
    ld e, $02                                     ; $58f7: $1e $02
    inc c                                         ; $58f9: $0c
    inc b                                         ; $58fa: $04
    nop                                           ; $58fb: $00
    sub [hl]                                      ; $58fc: $96
    ld a, [bc]                                    ; $58fd: $0a
    ld a, [hl]                                    ; $58fe: $7e
    add hl, bc                                    ; $58ff: $09
    ld a, a                                       ; $5900: $7f
    add hl, bc                                    ; $5901: $09
    ld a, a                                       ; $5902: $7f
    scf                                           ; $5903: $37
    ld a, a                                       ; $5904: $7f
    ld h, $7e                                     ; $5905: $26 $7e
    inc b                                         ; $5907: $04
    ld a, h                                       ; $5908: $7c
    inc b                                         ; $5909: $04
    ld a, h                                       ; $590a: $7c
    ld [bc], a                                    ; $590b: $02
    ld a, [hl]                                    ; $590c: $7e
    ld [bc], a                                    ; $590d: $02
    ld a, [hl]                                    ; $590e: $7e
    ld [bc], a                                    ; $590f: $02
    ld a, [hl]                                    ; $5910: $7e
    inc b                                         ; $5911: $04
    ld a, h                                       ; $5912: $7c
    ld [bc], a                                    ; $5913: $02
    ld a, b                                       ; $5914: $78
    ld [bc], a                                    ; $5915: $02
    ld [hl], b                                    ; $5916: $70
    inc b                                         ; $5917: $04
    nop                                           ; $5918: $00
    rst $38                                       ; $5919: $ff
    dec c                                         ; $591a: $0d
    inc b                                         ; $591b: $04
    ei                                            ; $591c: $fb
    dec b                                         ; $591d: $05
    di                                            ; $591e: $f3
    db $fc                                        ; $591f: $fc
    ld [c], a                                     ; $5920: $e2
    ld a, [$ffe3]                                 ; $5921: $fa $e3 $ff
    ld a, [c]                                     ; $5924: $f2
    ld sp, hl                                     ; $5925: $f9
    ld a, [c]                                     ; $5926: $f2
    nop                                           ; $5927: $00

jr_0e1_5928:
    ld [bc], a                                    ; $5928: $02
    rlca                                          ; $5929: $07

jr_0e1_592a:
    sub d                                         ; $592a: $92
    rrca                                          ; $592b: $0f

jr_0e1_592c:
    ld [$101f], sp                                ; $592c: $08 $1f $10
    rra                                           ; $592f: $1f
    db $10                                        ; $5930: $10
    rra                                           ; $5931: $1f

jr_0e1_5932:
    db $10                                        ; $5932: $10
    ccf                                           ; $5933: $3f
    jr z, jr_0e1_5975                             ; $5934: $28 $3f

    daa                                           ; $5936: $27
    rra                                           ; $5937: $1f
    dec d                                         ; $5938: $15
    cpl                                           ; $5939: $2f
    jr c, jr_0e1_596b                             ; $593a: $38 $2f

    dec a                                         ; $593c: $3d
    ld [bc], a                                    ; $593d: $02
    ccf                                           ; $593e: $3f
    add c                                         ; $593f: $81
    jr nc, jr_0e1_5945                            ; $5940: $30 $03

    ccf                                           ; $5942: $3f
    add [hl]                                      ; $5943: $86
    ld b, d                                       ; $5944: $42

jr_0e1_5945:
    ld a, a                                       ; $5945: $7f
    ld h, b                                       ; $5946: $60
    ld a, a                                       ; $5947: $7f
    and b                                         ; $5948: $a0
    rst $38                                       ; $5949: $ff
    ld [bc], a                                    ; $594a: $02
    db $10                                        ; $594b: $10
    adc a                                         ; $594c: $8f
    jr jr_0e1_5957                                ; $594d: $18 $08

    jr jr_0e1_5959                                ; $594f: $18 $08

    jr jr_0e1_595b                                ; $5951: $18 $08

    inc e                                         ; $5953: $1c
    inc d                                         ; $5954: $14
    inc e                                         ; $5955: $1c
    inc b                                         ; $5956: $04

jr_0e1_5957:
    jr jr_0e1_5961                                ; $5957: $18 $08

jr_0e1_5959:
    inc d                                         ; $5959: $14
    inc e                                         ; $595a: $1c

jr_0e1_595b:
    inc d                                         ; $595b: $14
    inc bc                                        ; $595c: $03
    inc e                                         ; $595d: $1c
    add d                                         ; $595e: $82
    inc c                                         ; $595f: $0c
    inc e                                         ; $5960: $1c

jr_0e1_5961:
    ld [bc], a                                    ; $5961: $02
    ld e, $a5                                     ; $5962: $1e $a5
    ld [bc], a                                    ; $5964: $02
    ld e, $06                                     ; $5965: $1e $06
    ld e, $05                                     ; $5967: $1e $05
    rra                                           ; $5969: $1f
    ld b, l                                       ; $596a: $45

jr_0e1_596b:
    rst $38                                       ; $596b: $ff
    ld d, b                                       ; $596c: $50
    ld a, h                                       ; $596d: $7c
    sub b                                         ; $596e: $90
    rst $38                                       ; $596f: $ff
    sub c                                         ; $5970: $91
    rst $38                                       ; $5971: $ff
    sub b                                         ; $5972: $90
    rst $38                                       ; $5973: $ff
    ld [hl], h                                    ; $5974: $74

jr_0e1_5975:
    ld a, a                                       ; $5975: $7f
    ld [hl], l                                    ; $5976: $75
    ld a, a                                       ; $5977: $7f
    jr nc, jr_0e1_59b9                            ; $5978: $30 $3f

    jr nz, jr_0e1_59bb                            ; $597a: $20 $3f

    jr nz, jr_0e1_59bd                            ; $597c: $20 $3f

    jr nz, @+$41                                  ; $597e: $20 $3f

    jr nz, jr_0e1_59c1                            ; $5980: $20 $3f

    jr nz, jr_0e1_59c3                            ; $5982: $20 $3f

    jr nz, jr_0e1_59c5                            ; $5984: $20 $3f

    add hl, sp                                    ; $5986: $39
    ccf                                           ; $5987: $3f
    ld d, $03                                     ; $5988: $16 $03
    ld e, $02                                     ; $598a: $1e $02
    nop                                           ; $598c: $00
    sbc b                                         ; $598d: $98
    ld a, [bc]                                    ; $598e: $0a
    ld a, [hl]                                    ; $598f: $7e
    add hl, bc                                    ; $5990: $09
    ld a, a                                       ; $5991: $7f
    add hl, bc                                    ; $5992: $09
    ld a, a                                       ; $5993: $7f
    dec e                                         ; $5994: $1d
    ld a, a                                       ; $5995: $7f
    ld h, $7e                                     ; $5996: $26 $7e
    inc b                                         ; $5998: $04
    ld a, h                                       ; $5999: $7c
    inc b                                         ; $599a: $04
    ld a, h                                       ; $599b: $7c
    inc b                                         ; $599c: $04
    ld a, h                                       ; $599d: $7c
    inc b                                         ; $599e: $04
    ld a, h                                       ; $599f: $7c
    ld [bc], a                                    ; $59a0: $02
    ld a, [hl]                                    ; $59a1: $7e
    ld [bc], a                                    ; $59a2: $02
    ld a, [hl]                                    ; $59a3: $7e
    inc e                                         ; $59a4: $1c
    ld a, h                                       ; $59a5: $7c
    ld [bc], a                                    ; $59a6: $02
    ld [hl], b                                    ; $59a7: $70
    inc b                                         ; $59a8: $04
    nop                                           ; $59a9: $00
    rst $38                                       ; $59aa: $ff
    dec c                                         ; $59ab: $0d
    inc b                                         ; $59ac: $04
    ei                                            ; $59ad: $fb
    dec b                                         ; $59ae: $05
    di                                            ; $59af: $f3
    db $fc                                        ; $59b0: $fc
    db $e3                                        ; $59b1: $e3
    ld a, [$ffe4]                                 ; $59b2: $fa $e4 $ff
    di                                            ; $59b5: $f3
    ld sp, hl                                     ; $59b6: $f9
    di                                            ; $59b7: $f3
    nop                                           ; $59b8: $00

jr_0e1_59b9:
    ld [bc], a                                    ; $59b9: $02
    rlca                                          ; $59ba: $07

jr_0e1_59bb:
    sub d                                         ; $59bb: $92
    rrca                                          ; $59bc: $0f

jr_0e1_59bd:
    ld [$101f], sp                                ; $59bd: $08 $1f $10
    rra                                           ; $59c0: $1f

jr_0e1_59c1:
    db $10                                        ; $59c1: $10
    rra                                           ; $59c2: $1f

jr_0e1_59c3:
    db $10                                        ; $59c3: $10
    ccf                                           ; $59c4: $3f

jr_0e1_59c5:
    jr z, jr_0e1_5a06                             ; $59c5: $28 $3f

    daa                                           ; $59c7: $27
    rra                                           ; $59c8: $1f
    dec d                                         ; $59c9: $15
    cpl                                           ; $59ca: $2f
    jr c, jr_0e1_59fc                             ; $59cb: $38 $2f

    dec a                                         ; $59cd: $3d
    ld [bc], a                                    ; $59ce: $02
    ccf                                           ; $59cf: $3f
    add c                                         ; $59d0: $81
    jr nc, jr_0e1_59d6                            ; $59d1: $30 $03

    ccf                                           ; $59d3: $3f
    add [hl]                                      ; $59d4: $86
    ld b, d                                       ; $59d5: $42

jr_0e1_59d6:
    ld a, a                                       ; $59d6: $7f
    ldh [rIE], a                                  ; $59d7: $e0 $ff
    and b                                         ; $59d9: $a0
    rst $38                                       ; $59da: $ff
    ld [bc], a                                    ; $59db: $02
    db $10                                        ; $59dc: $10
    adc a                                         ; $59dd: $8f
    jr jr_0e1_59e8                                ; $59de: $18 $08

    jr jr_0e1_59ea                                ; $59e0: $18 $08

    jr jr_0e1_59ec                                ; $59e2: $18 $08

    inc e                                         ; $59e4: $1c
    inc d                                         ; $59e5: $14
    inc e                                         ; $59e6: $1c
    inc b                                         ; $59e7: $04

jr_0e1_59e8:
    jr jr_0e1_59f2                                ; $59e8: $18 $08

jr_0e1_59ea:
    inc d                                         ; $59ea: $14
    inc e                                         ; $59eb: $1c

jr_0e1_59ec:
    inc d                                         ; $59ec: $14
    inc bc                                        ; $59ed: $03
    inc e                                         ; $59ee: $1c
    add d                                         ; $59ef: $82
    inc c                                         ; $59f0: $0c
    inc e                                         ; $59f1: $1c

jr_0e1_59f2:
    ld [bc], a                                    ; $59f2: $02
    ld e, $a0                                     ; $59f3: $1e $a0
    ld [bc], a                                    ; $59f5: $02
    ld e, $07                                     ; $59f6: $1e $07
    rra                                           ; $59f8: $1f
    dec b                                         ; $59f9: $05
    rra                                           ; $59fa: $1f
    ld b, l                                       ; $59fb: $45

jr_0e1_59fc:
    rst $38                                       ; $59fc: $ff
    ld d, b                                       ; $59fd: $50
    ld a, h                                       ; $59fe: $7c
    ld d, c                                       ; $59ff: $51
    ld a, a                                       ; $5a00: $7f
    sub b                                         ; $5a01: $90
    rst $38                                       ; $5a02: $ff
    sub b                                         ; $5a03: $90
    rst $38                                       ; $5a04: $ff
    db $f4                                        ; $5a05: $f4

jr_0e1_5a06:
    rst $38                                       ; $5a06: $ff
    ld [hl], l                                    ; $5a07: $75
    ld a, a                                       ; $5a08: $7f
    jr nz, jr_0e1_5a4a                            ; $5a09: $20 $3f

    jr nz, jr_0e1_5a4c                            ; $5a0b: $20 $3f

    ld b, b                                       ; $5a0d: $40
    ld a, a                                       ; $5a0e: $7f
    ld b, b                                       ; $5a0f: $40
    ld a, a                                       ; $5a10: $7f
    ld b, b                                       ; $5a11: $40
    ld a, a                                       ; $5a12: $7f
    jr nz, jr_0e1_5a54                            ; $5a13: $20 $3f

    ld [bc], a                                    ; $5a15: $02
    rra                                           ; $5a16: $1f
    ld [bc], a                                    ; $5a17: $02
    ld c, $06                                     ; $5a18: $0e $06
    nop                                           ; $5a1a: $00
    sub [hl]                                      ; $5a1b: $96
    ld a, [bc]                                    ; $5a1c: $0a
    ld a, [hl]                                    ; $5a1d: $7e
    add hl, bc                                    ; $5a1e: $09
    ld a, a                                       ; $5a1f: $7f
    add hl, bc                                    ; $5a20: $09
    ld a, a                                       ; $5a21: $7f
    scf                                           ; $5a22: $37
    ld a, a                                       ; $5a23: $7f
    ld h, $7e                                     ; $5a24: $26 $7e
    inc b                                         ; $5a26: $04
    ld a, h                                       ; $5a27: $7c
    inc b                                         ; $5a28: $04
    ld a, h                                       ; $5a29: $7c
    inc b                                         ; $5a2a: $04
    ld a, h                                       ; $5a2b: $7c
    inc b                                         ; $5a2c: $04
    ld a, h                                       ; $5a2d: $7c
    ld [bc], a                                    ; $5a2e: $02
    ld a, [hl]                                    ; $5a2f: $7e
    inc c                                         ; $5a30: $0c
    ld a, h                                       ; $5a31: $7c
    ld [bc], a                                    ; $5a32: $02
    ld a, b                                       ; $5a33: $78
    add d                                         ; $5a34: $82
    ld e, b                                       ; $5a35: $58
    ld a, b                                       ; $5a36: $78
    ld [bc], a                                    ; $5a37: $02
    jr nc, jr_0e1_5a3c                            ; $5a38: $30 $02

    nop                                           ; $5a3a: $00
    rst $38                                       ; $5a3b: $ff

jr_0e1_5a3c:
    dec c                                         ; $5a3c: $0d
    inc b                                         ; $5a3d: $04
    ei                                            ; $5a3e: $fb
    dec b                                         ; $5a3f: $05
    di                                            ; $5a40: $f3
    db $fc                                        ; $5a41: $fc
    ld [c], a                                     ; $5a42: $e2
    ld a, [$ffe3]                                 ; $5a43: $fa $e3 $ff
    ld a, [c]                                     ; $5a46: $f2
    ld sp, hl                                     ; $5a47: $f9
    ld a, [c]                                     ; $5a48: $f2
    nop                                           ; $5a49: $00

jr_0e1_5a4a:
    ld [bc], a                                    ; $5a4a: $02
    rlca                                          ; $5a4b: $07

jr_0e1_5a4c:
    sbc [hl]                                      ; $5a4c: $9e
    rrca                                          ; $5a4d: $0f
    ld [$101f], sp                                ; $5a4e: $08 $1f $10
    rra                                           ; $5a51: $1f
    db $10                                        ; $5a52: $10
    ld [de], a                                    ; $5a53: $12

jr_0e1_5a54:
    dec e                                         ; $5a54: $1d
    ccf                                           ; $5a55: $3f
    dec h                                         ; $5a56: $25
    ccf                                           ; $5a57: $3f
    jr nz, jr_0e1_5a79                            ; $5a58: $20 $1f

    dec d                                         ; $5a5a: $15
    inc hl                                        ; $5a5b: $23
    ccf                                           ; $5a5c: $3f
    daa                                           ; $5a5d: $27
    inc a                                         ; $5a5e: $3c
    daa                                           ; $5a5f: $27
    ccf                                           ; $5a60: $3f
    dec d                                         ; $5a61: $15
    rra                                           ; $5a62: $1f
    ld [hl-], a                                   ; $5a63: $32
    ccf                                           ; $5a64: $3f
    ld l, b                                       ; $5a65: $68
    ld a, a                                       ; $5a66: $7f
    ld [hl], c                                    ; $5a67: $71
    ld a, a                                       ; $5a68: $7f
    xor a                                         ; $5a69: $af
    rst $38                                       ; $5a6a: $ff
    ld [bc], a                                    ; $5a6b: $02
    db $10                                        ; $5a6c: $10
    add e                                         ; $5a6d: $83
    jr jr_0e1_5a78                                ; $5a6e: $18 $08

    jr @+$04                                      ; $5a70: $18 $02

    ld [$18b1], sp                                ; $5a72: $08 $b1 $18
    inc e                                         ; $5a75: $1c
    inc b                                         ; $5a76: $04
    inc e                                         ; $5a77: $1c

jr_0e1_5a78:
    inc b                                         ; $5a78: $04

jr_0e1_5a79:
    jr jr_0e1_5a83                                ; $5a79: $18 $08

    inc b                                         ; $5a7b: $04
    inc e                                         ; $5a7c: $1c
    inc d                                         ; $5a7d: $14
    inc e                                         ; $5a7e: $1c
    inc b                                         ; $5a7f: $04
    inc e                                         ; $5a80: $1c
    inc b                                         ; $5a81: $04
    inc e                                         ; $5a82: $1c

jr_0e1_5a83:
    inc c                                         ; $5a83: $0c
    inc e                                         ; $5a84: $1c
    ld c, $1e                                     ; $5a85: $0e $1e
    ld d, $1e                                     ; $5a87: $16 $1e
    dec b                                         ; $5a89: $05
    rra                                           ; $5a8a: $1f
    xor l                                         ; $5a8b: $ad
    rst $38                                       ; $5a8c: $ff
    ld e, b                                       ; $5a8d: $58
    ld a, h                                       ; $5a8e: $7c
    ld d, [hl]                                    ; $5a8f: $56
    ld a, a                                       ; $5a90: $7f
    and [hl]                                      ; $5a91: $a6
    rst $38                                       ; $5a92: $ff
    ld a, [c]                                     ; $5a93: $f2
    rst $38                                       ; $5a94: $ff
    sub e                                         ; $5a95: $93
    rst $38                                       ; $5a96: $ff
    cp d                                          ; $5a97: $ba
    rst $28                                       ; $5a98: $ef
    ld [hl], e                                    ; $5a99: $73
    ld a, a                                       ; $5a9a: $7f
    inc hl                                        ; $5a9b: $23
    ccf                                           ; $5a9c: $3f
    inc hl                                        ; $5a9d: $23
    ccf                                           ; $5a9e: $3f
    ld b, e                                       ; $5a9f: $43
    ld a, a                                       ; $5aa0: $7f
    ld b, e                                       ; $5aa1: $43
    ld a, a                                       ; $5aa2: $7f
    inc hl                                        ; $5aa3: $23
    ccf                                           ; $5aa4: $3f
    ld [bc], a                                    ; $5aa5: $02
    rra                                           ; $5aa6: $1f
    ld [bc], a                                    ; $5aa7: $02
    rrca                                          ; $5aa8: $0f
    add d                                         ; $5aa9: $82
    ld a, [de]                                    ; $5aaa: $1a
    ld e, $02                                     ; $5aab: $1e $02
    inc e                                         ; $5aad: $1c
    ld [bc], a                                    ; $5aae: $02
    nop                                           ; $5aaf: $00
    sub [hl]                                      ; $5ab0: $96
    ld l, d                                       ; $5ab1: $6a
    ld a, [hl]                                    ; $5ab2: $7e
    ld h, l                                       ; $5ab3: $65
    ld a, a                                       ; $5ab4: $7f
    ld l, a                                       ; $5ab5: $6f
    ld a, a                                       ; $5ab6: $7f
    ld c, c                                       ; $5ab7: $49
    ld a, a                                       ; $5ab8: $7f
    ld e, l                                       ; $5ab9: $5d
    ld [hl], a                                    ; $5aba: $77
    ld l, [hl]                                    ; $5abb: $6e
    ld a, [hl]                                    ; $5abc: $7e
    ld b, h                                       ; $5abd: $44
    ld a, h                                       ; $5abe: $7c
    ld b, h                                       ; $5abf: $44
    ld a, h                                       ; $5ac0: $7c
    ld h, d                                       ; $5ac1: $62
    ld a, [hl]                                    ; $5ac2: $7e
    ld b, d                                       ; $5ac3: $42
    ld a, [hl]                                    ; $5ac4: $7e
    ld b, h                                       ; $5ac5: $44
    ld a, h                                       ; $5ac6: $7c
    ld [bc], a                                    ; $5ac7: $02
    ld a, b                                       ; $5ac8: $78
    ld [bc], a                                    ; $5ac9: $02
    ld [hl], b                                    ; $5aca: $70
    add d                                         ; $5acb: $82
    ld l, b                                       ; $5acc: $68
    ld a, b                                       ; $5acd: $78
    ld [bc], a                                    ; $5ace: $02
    jr c, @+$01                                   ; $5acf: $38 $ff

    dec c                                         ; $5ad1: $0d
    inc b                                         ; $5ad2: $04
    ei                                            ; $5ad3: $fb
    dec b                                         ; $5ad4: $05
    di                                            ; $5ad5: $f3
    db $fc                                        ; $5ad6: $fc
    ld [c], a                                     ; $5ad7: $e2
    ld a, [$ffe3]                                 ; $5ad8: $fa $e3 $ff
    ld a, [c]                                     ; $5adb: $f2
    ld sp, hl                                     ; $5adc: $f9
    ld a, [c]                                     ; $5add: $f2
    nop                                           ; $5ade: $00
    ld [bc], a                                    ; $5adf: $02
    rlca                                          ; $5ae0: $07
    sbc [hl]                                      ; $5ae1: $9e
    rrca                                          ; $5ae2: $0f
    ld [$101f], sp                                ; $5ae3: $08 $1f $10
    rra                                           ; $5ae6: $1f
    db $10                                        ; $5ae7: $10
    ld [de], a                                    ; $5ae8: $12
    dec e                                         ; $5ae9: $1d
    ccf                                           ; $5aea: $3f
    dec h                                         ; $5aeb: $25
    ccf                                           ; $5aec: $3f
    jr nz, jr_0e1_5b0e                            ; $5aed: $20 $1f

    dec d                                         ; $5aef: $15
    inc hl                                        ; $5af0: $23
    ccf                                           ; $5af1: $3f
    daa                                           ; $5af2: $27
    inc a                                         ; $5af3: $3c
    daa                                           ; $5af4: $27
    ccf                                           ; $5af5: $3f
    dec d                                         ; $5af6: $15
    rra                                           ; $5af7: $1f
    ld [hl-], a                                   ; $5af8: $32
    ccf                                           ; $5af9: $3f
    ld l, b                                       ; $5afa: $68
    ld a, a                                       ; $5afb: $7f
    ld [hl], c                                    ; $5afc: $71
    ld a, a                                       ; $5afd: $7f
    xor a                                         ; $5afe: $af
    rst $38                                       ; $5aff: $ff
    ld [bc], a                                    ; $5b00: $02
    db $10                                        ; $5b01: $10
    add e                                         ; $5b02: $83
    jr jr_0e1_5b0d                                ; $5b03: $18 $08

    jr @+$04                                      ; $5b05: $18 $02

    ld [$18b1], sp                                ; $5b07: $08 $b1 $18
    inc e                                         ; $5b0a: $1c
    inc b                                         ; $5b0b: $04
    inc e                                         ; $5b0c: $1c

jr_0e1_5b0d:
    inc b                                         ; $5b0d: $04

jr_0e1_5b0e:
    jr jr_0e1_5b18                                ; $5b0e: $18 $08

    inc b                                         ; $5b10: $04
    inc e                                         ; $5b11: $1c
    inc d                                         ; $5b12: $14
    inc e                                         ; $5b13: $1c
    inc b                                         ; $5b14: $04
    inc e                                         ; $5b15: $1c
    inc b                                         ; $5b16: $04
    inc e                                         ; $5b17: $1c

jr_0e1_5b18:
    inc c                                         ; $5b18: $0c
    inc e                                         ; $5b19: $1c
    ld c, $1e                                     ; $5b1a: $0e $1e
    ld d, $1e                                     ; $5b1c: $16 $1e
    dec d                                         ; $5b1e: $15
    rra                                           ; $5b1f: $1f
    xor l                                         ; $5b20: $ad
    rst $38                                       ; $5b21: $ff
    ld e, b                                       ; $5b22: $58
    ld a, h                                       ; $5b23: $7c
    ld e, d                                       ; $5b24: $5a
    ld a, a                                       ; $5b25: $7f
    and [hl]                                      ; $5b26: $a6
    rst $38                                       ; $5b27: $ff
    ld a, [c]                                     ; $5b28: $f2
    rst $38                                       ; $5b29: $ff
    db $d3                                        ; $5b2a: $d3
    rst $38                                       ; $5b2b: $ff
    cp d                                          ; $5b2c: $ba
    rst $28                                       ; $5b2d: $ef
    or e                                          ; $5b2e: $b3
    rst $38                                       ; $5b2f: $ff
    ld h, e                                       ; $5b30: $63
    ld a, a                                       ; $5b31: $7f
    inc hl                                        ; $5b32: $23
    ccf                                           ; $5b33: $3f
    inc hl                                        ; $5b34: $23
    ccf                                           ; $5b35: $3f
    inc hl                                        ; $5b36: $23
    ccf                                           ; $5b37: $3f
    inc hl                                        ; $5b38: $23
    ccf                                           ; $5b39: $3f
    ld [bc], a                                    ; $5b3a: $02
    rra                                           ; $5b3b: $1f
    add d                                         ; $5b3c: $82
    dec bc                                        ; $5b3d: $0b
    rrca                                          ; $5b3e: $0f
    ld [bc], a                                    ; $5b3f: $02
    ld c, $04                                     ; $5b40: $0e $04
    nop                                           ; $5b42: $00
    sub [hl]                                      ; $5b43: $96
    ld e, e                                       ; $5b44: $5b
    ld a, a                                       ; $5b45: $7f
    ld h, l                                       ; $5b46: $65
    ld a, a                                       ; $5b47: $7f
    ld l, a                                       ; $5b48: $6f
    ld a, a                                       ; $5b49: $7f
    ld c, c                                       ; $5b4a: $49
    ld a, a                                       ; $5b4b: $7f
    ld e, [hl]                                    ; $5b4c: $5e
    halt                                          ; $5b4d: $76
    ld l, [hl]                                    ; $5b4e: $6e
    ld a, [hl]                                    ; $5b4f: $7e
    ld h, h                                       ; $5b50: $64
    ld a, h                                       ; $5b51: $7c
    inc h                                         ; $5b52: $24
    ld a, h                                       ; $5b53: $7c
    ld [hl-], a                                   ; $5b54: $32
    ld a, [hl]                                    ; $5b55: $7e
    ld h, d                                       ; $5b56: $62
    ld a, [hl]                                    ; $5b57: $7e
    ld d, h                                       ; $5b58: $54
    ld a, h                                       ; $5b59: $7c
    ld [bc], a                                    ; $5b5a: $02
    ld a, b                                       ; $5b5b: $78
    add c                                         ; $5b5c: $81
    ld c, b                                       ; $5b5d: $48
    inc bc                                        ; $5b5e: $03
    ld a, b                                       ; $5b5f: $78
    ld [bc], a                                    ; $5b60: $02
    ld [hl], b                                    ; $5b61: $70
    rst $38                                       ; $5b62: $ff
    dec c                                         ; $5b63: $0d
    inc b                                         ; $5b64: $04
    ei                                            ; $5b65: $fb
    dec b                                         ; $5b66: $05
    di                                            ; $5b67: $f3
    db $fc                                        ; $5b68: $fc
    db $e3                                        ; $5b69: $e3
    ld a, [$ffe4]                                 ; $5b6a: $fa $e4 $ff
    di                                            ; $5b6d: $f3
    ld sp, hl                                     ; $5b6e: $f9
    di                                            ; $5b6f: $f3
    nop                                           ; $5b70: $00
    ld [bc], a                                    ; $5b71: $02
    rlca                                          ; $5b72: $07
    sbc [hl]                                      ; $5b73: $9e
    rrca                                          ; $5b74: $0f
    ld [$101f], sp                                ; $5b75: $08 $1f $10
    rra                                           ; $5b78: $1f
    db $10                                        ; $5b79: $10
    ld [de], a                                    ; $5b7a: $12
    dec e                                         ; $5b7b: $1d
    ccf                                           ; $5b7c: $3f
    dec h                                         ; $5b7d: $25
    ccf                                           ; $5b7e: $3f
    jr nz, jr_0e1_5ba0                            ; $5b7f: $20 $1f

    dec d                                         ; $5b81: $15
    inc hl                                        ; $5b82: $23
    ccf                                           ; $5b83: $3f
    daa                                           ; $5b84: $27
    inc a                                         ; $5b85: $3c
    daa                                           ; $5b86: $27
    ccf                                           ; $5b87: $3f
    dec d                                         ; $5b88: $15
    rra                                           ; $5b89: $1f
    ld [hl-], a                                   ; $5b8a: $32
    ccf                                           ; $5b8b: $3f
    ld l, b                                       ; $5b8c: $68
    ld a, a                                       ; $5b8d: $7f
    pop af                                        ; $5b8e: $f1
    rst $38                                       ; $5b8f: $ff
    xor a                                         ; $5b90: $af
    rst $38                                       ; $5b91: $ff
    ld [bc], a                                    ; $5b92: $02
    db $10                                        ; $5b93: $10
    add e                                         ; $5b94: $83
    jr jr_0e1_5b9f                                ; $5b95: $18 $08

    jr @+$04                                      ; $5b97: $18 $02

    ld [$18ac], sp                                ; $5b99: $08 $ac $18
    inc e                                         ; $5b9c: $1c
    inc b                                         ; $5b9d: $04
    inc e                                         ; $5b9e: $1c

jr_0e1_5b9f:
    inc b                                         ; $5b9f: $04

jr_0e1_5ba0:
    jr jr_0e1_5baa                                ; $5ba0: $18 $08

    inc b                                         ; $5ba2: $04
    inc e                                         ; $5ba3: $1c
    inc d                                         ; $5ba4: $14
    inc e                                         ; $5ba5: $1c
    inc b                                         ; $5ba6: $04
    inc e                                         ; $5ba7: $1c
    inc b                                         ; $5ba8: $04
    inc e                                         ; $5ba9: $1c

jr_0e1_5baa:
    inc c                                         ; $5baa: $0c
    inc e                                         ; $5bab: $1c
    ld c, $1e                                     ; $5bac: $0e $1e
    rla                                           ; $5bae: $17
    rra                                           ; $5baf: $1f
    dec b                                         ; $5bb0: $05
    rra                                           ; $5bb1: $1f
    xor l                                         ; $5bb2: $ad
    rst $38                                       ; $5bb3: $ff
    ld e, b                                       ; $5bb4: $58
    ld a, h                                       ; $5bb5: $7c
    or [hl]                                       ; $5bb6: $b6
    rst $38                                       ; $5bb7: $ff
    and [hl]                                      ; $5bb8: $a6
    rst $38                                       ; $5bb9: $ff
    di                                            ; $5bba: $f3
    rst $38                                       ; $5bbb: $ff
    sub e                                         ; $5bbc: $93
    rst $38                                       ; $5bbd: $ff
    cp d                                          ; $5bbe: $ba
    rst $28                                       ; $5bbf: $ef
    ld [hl], e                                    ; $5bc0: $73
    ld a, a                                       ; $5bc1: $7f
    daa                                           ; $5bc2: $27
    ccf                                           ; $5bc3: $3f
    daa                                           ; $5bc4: $27
    ccf                                           ; $5bc5: $3f
    dec hl                                        ; $5bc6: $2b
    inc bc                                        ; $5bc7: $03
    ccf                                           ; $5bc8: $3f
    add d                                         ; $5bc9: $82
    dec bc                                        ; $5bca: $0b
    rrca                                          ; $5bcb: $0f
    ld [bc], a                                    ; $5bcc: $02
    dec c                                         ; $5bcd: $0d
    ld [$9400], sp                                ; $5bce: $08 $00 $94
    ld l, l                                       ; $5bd1: $6d
    ld a, a                                       ; $5bd2: $7f
    ld h, l                                       ; $5bd3: $65
    ld a, a                                       ; $5bd4: $7f
    ld l, a                                       ; $5bd5: $6f
    ld a, a                                       ; $5bd6: $7f
    ld c, c                                       ; $5bd7: $49
    ld a, a                                       ; $5bd8: $7f
    ld e, l                                       ; $5bd9: $5d
    ld [hl], a                                    ; $5bda: $77
    ld l, [hl]                                    ; $5bdb: $6e
    ld a, [hl]                                    ; $5bdc: $7e
    ld b, h                                       ; $5bdd: $44
    ld a, h                                       ; $5bde: $7c
    ld h, h                                       ; $5bdf: $64
    ld a, h                                       ; $5be0: $7c
    ld b, d                                       ; $5be1: $42
    ld a, [hl]                                    ; $5be2: $7e
    ld h, h                                       ; $5be3: $64
    ld a, h                                       ; $5be4: $7c
    ld [bc], a                                    ; $5be5: $02
    ld a, b                                       ; $5be6: $78
    ld [bc], a                                    ; $5be7: $02
    ld [hl], b                                    ; $5be8: $70
    add c                                         ; $5be9: $81
    ld c, b                                       ; $5bea: $48
    inc bc                                        ; $5beb: $03
    ld a, b                                       ; $5bec: $78
    ld [bc], a                                    ; $5bed: $02
    nop                                           ; $5bee: $00
    rst $38                                       ; $5bef: $ff
    dec c                                         ; $5bf0: $0d
    inc b                                         ; $5bf1: $04
    ei                                            ; $5bf2: $fb
    dec b                                         ; $5bf3: $05
    di                                            ; $5bf4: $f3
    db $fc                                        ; $5bf5: $fc
    ld [c], a                                     ; $5bf6: $e2
    ld a, [$ffe3]                                 ; $5bf7: $fa $e3 $ff
    ld a, [c]                                     ; $5bfa: $f2
    ld sp, hl                                     ; $5bfb: $f9
    ld a, [c]                                     ; $5bfc: $f2
    nop                                           ; $5bfd: $00
    ld [bc], a                                    ; $5bfe: $02
    rlca                                          ; $5bff: $07
    sbc [hl]                                      ; $5c00: $9e
    rrca                                          ; $5c01: $0f
    ld [$101f], sp                                ; $5c02: $08 $1f $10
    rra                                           ; $5c05: $1f
    db $10                                        ; $5c06: $10
    ld [de], a                                    ; $5c07: $12
    dec e                                         ; $5c08: $1d
    ccf                                           ; $5c09: $3f
    dec h                                         ; $5c0a: $25
    ccf                                           ; $5c0b: $3f
    jr nz, jr_0e1_5c2d                            ; $5c0c: $20 $1f

    dec d                                         ; $5c0e: $15
    inc hl                                        ; $5c0f: $23
    ccf                                           ; $5c10: $3f
    daa                                           ; $5c11: $27
    inc a                                         ; $5c12: $3c
    daa                                           ; $5c13: $27
    ccf                                           ; $5c14: $3f
    dec d                                         ; $5c15: $15
    rra                                           ; $5c16: $1f
    ld [hl-], a                                   ; $5c17: $32
    ccf                                           ; $5c18: $3f
    ld l, b                                       ; $5c19: $68
    ld a, a                                       ; $5c1a: $7f
    ld [hl], c                                    ; $5c1b: $71
    ld a, a                                       ; $5c1c: $7f
    xor a                                         ; $5c1d: $af
    rst $38                                       ; $5c1e: $ff
    ld [bc], a                                    ; $5c1f: $02
    db $10                                        ; $5c20: $10
    add e                                         ; $5c21: $83
    jr jr_0e1_5c2c                                ; $5c22: $18 $08

    jr @+$04                                      ; $5c24: $18 $02

    ld [$18b1], sp                                ; $5c26: $08 $b1 $18
    inc e                                         ; $5c29: $1c
    inc b                                         ; $5c2a: $04
    inc e                                         ; $5c2b: $1c

jr_0e1_5c2c:
    inc b                                         ; $5c2c: $04

jr_0e1_5c2d:
    jr jr_0e1_5c37                                ; $5c2d: $18 $08

    inc b                                         ; $5c2f: $04
    inc e                                         ; $5c30: $1c
    inc d                                         ; $5c31: $14
    inc e                                         ; $5c32: $1c
    inc b                                         ; $5c33: $04
    inc e                                         ; $5c34: $1c
    inc b                                         ; $5c35: $04
    inc e                                         ; $5c36: $1c

jr_0e1_5c37:
    inc c                                         ; $5c37: $0c
    inc e                                         ; $5c38: $1c
    ld c, $1e                                     ; $5c39: $0e $1e
    ld d, $1e                                     ; $5c3b: $16 $1e
    dec d                                         ; $5c3d: $15
    rra                                           ; $5c3e: $1f
    xor l                                         ; $5c3f: $ad
    rst $38                                       ; $5c40: $ff
    ld e, b                                       ; $5c41: $58
    ld a, h                                       ; $5c42: $7c
    jp c, $a6ff                                   ; $5c43: $da $ff $a6

    rst $38                                       ; $5c46: $ff
    ld a, [c]                                     ; $5c47: $f2
    rst $38                                       ; $5c48: $ff
    sub e                                         ; $5c49: $93
    rst $38                                       ; $5c4a: $ff
    ld a, d                                       ; $5c4b: $7a
    ld l, a                                       ; $5c4c: $6f
    ld [hl], e                                    ; $5c4d: $73
    ld a, a                                       ; $5c4e: $7f
    daa                                           ; $5c4f: $27
    ccf                                           ; $5c50: $3f
    dec h                                         ; $5c51: $25
    ccf                                           ; $5c52: $3f
    ld b, l                                       ; $5c53: $45
    ld a, a                                       ; $5c54: $7f
    ld b, a                                       ; $5c55: $47
    ld a, a                                       ; $5c56: $7f
    dec hl                                        ; $5c57: $2b
    ccf                                           ; $5c58: $3f
    ld [bc], a                                    ; $5c59: $02
    rra                                           ; $5c5a: $1f
    add d                                         ; $5c5b: $82
    inc de                                        ; $5c5c: $13
    rra                                           ; $5c5d: $1f
    ld [bc], a                                    ; $5c5e: $02
    ld e, $02                                     ; $5c5f: $1e $02
    ld c, $02                                     ; $5c61: $0e $02
    nop                                           ; $5c63: $00
    sub [hl]                                      ; $5c64: $96
    ld e, d                                       ; $5c65: $5a
    ld a, [hl]                                    ; $5c66: $7e
    ld h, l                                       ; $5c67: $65
    ld a, a                                       ; $5c68: $7f
    ld l, a                                       ; $5c69: $6f
    ld a, a                                       ; $5c6a: $7f
    ld c, e                                       ; $5c6b: $4b
    ld a, a                                       ; $5c6c: $7f
    ld e, l                                       ; $5c6d: $5d
    ld [hl], a                                    ; $5c6e: $77
    ld l, l                                       ; $5c6f: $6d
    ld a, a                                       ; $5c70: $7f
    ld b, [hl]                                    ; $5c71: $46
    ld a, [hl]                                    ; $5c72: $7e
    ld b, h                                       ; $5c73: $44
    ld a, h                                       ; $5c74: $7c
    ld h, h                                       ; $5c75: $64
    ld a, h                                       ; $5c76: $7c
    ld b, h                                       ; $5c77: $44
    ld a, h                                       ; $5c78: $7c
    ld b, h                                       ; $5c79: $44
    ld a, h                                       ; $5c7a: $7c
    ld [bc], a                                    ; $5c7b: $02
    ld a, b                                       ; $5c7c: $78
    add c                                         ; $5c7d: $81
    ld d, b                                       ; $5c7e: $50
    inc bc                                        ; $5c7f: $03
    ld [hl], b                                    ; $5c80: $70
    ld [bc], a                                    ; $5c81: $02
    nop                                           ; $5c82: $00
    rst $38                                       ; $5c83: $ff
    dec c                                         ; $5c84: $0d
    inc b                                         ; $5c85: $04
    ei                                            ; $5c86: $fb
    dec b                                         ; $5c87: $05
    di                                            ; $5c88: $f3
    db $fc                                        ; $5c89: $fc
    db $e3                                        ; $5c8a: $e3
    ld a, [$ffe4]                                 ; $5c8b: $fa $e4 $ff
    di                                            ; $5c8e: $f3
    ld sp, hl                                     ; $5c8f: $f9
    di                                            ; $5c90: $f3
    nop                                           ; $5c91: $00
    ld [bc], a                                    ; $5c92: $02
    rlca                                          ; $5c93: $07
    sbc [hl]                                      ; $5c94: $9e
    rrca                                          ; $5c95: $0f
    ld [$101f], sp                                ; $5c96: $08 $1f $10
    rra                                           ; $5c99: $1f
    db $10                                        ; $5c9a: $10
    ld [de], a                                    ; $5c9b: $12
    dec e                                         ; $5c9c: $1d
    ccf                                           ; $5c9d: $3f
    dec h                                         ; $5c9e: $25
    ccf                                           ; $5c9f: $3f
    jr nz, jr_0e1_5cc1                            ; $5ca0: $20 $1f

    dec d                                         ; $5ca2: $15
    inc hl                                        ; $5ca3: $23
    ccf                                           ; $5ca4: $3f
    daa                                           ; $5ca5: $27
    inc a                                         ; $5ca6: $3c
    daa                                           ; $5ca7: $27
    ccf                                           ; $5ca8: $3f
    dec d                                         ; $5ca9: $15
    rra                                           ; $5caa: $1f
    ld [hl-], a                                   ; $5cab: $32
    ccf                                           ; $5cac: $3f
    ld l, b                                       ; $5cad: $68
    ld a, a                                       ; $5cae: $7f
    pop af                                        ; $5caf: $f1
    rst $38                                       ; $5cb0: $ff
    xor a                                         ; $5cb1: $af
    rst $38                                       ; $5cb2: $ff
    ld [bc], a                                    ; $5cb3: $02
    db $10                                        ; $5cb4: $10
    add e                                         ; $5cb5: $83
    jr jr_0e1_5cc0                                ; $5cb6: $18 $08

    jr @+$04                                      ; $5cb8: $18 $02

    ld [$18af], sp                                ; $5cba: $08 $af $18
    inc e                                         ; $5cbd: $1c
    inc b                                         ; $5cbe: $04
    inc e                                         ; $5cbf: $1c

jr_0e1_5cc0:
    inc b                                         ; $5cc0: $04

jr_0e1_5cc1:
    jr jr_0e1_5ccb                                ; $5cc1: $18 $08

    inc b                                         ; $5cc3: $04
    inc e                                         ; $5cc4: $1c
    inc d                                         ; $5cc5: $14
    inc e                                         ; $5cc6: $1c
    inc b                                         ; $5cc7: $04
    inc e                                         ; $5cc8: $1c
    inc b                                         ; $5cc9: $04
    inc e                                         ; $5cca: $1c

jr_0e1_5ccb:
    inc c                                         ; $5ccb: $0c
    inc e                                         ; $5ccc: $1c
    ld c, $1e                                     ; $5ccd: $0e $1e
    rla                                           ; $5ccf: $17
    rra                                           ; $5cd0: $1f
    dec b                                         ; $5cd1: $05
    rra                                           ; $5cd2: $1f
    xor l                                         ; $5cd3: $ad
    rst $38                                       ; $5cd4: $ff
    ld e, b                                       ; $5cd5: $58
    ld a, h                                       ; $5cd6: $7c
    or [hl]                                       ; $5cd7: $b6
    rst $38                                       ; $5cd8: $ff
    and [hl]                                      ; $5cd9: $a6
    rst $38                                       ; $5cda: $ff
    di                                            ; $5cdb: $f3
    rst $38                                       ; $5cdc: $ff
    sub e                                         ; $5cdd: $93
    rst $38                                       ; $5cde: $ff
    cp d                                          ; $5cdf: $ba
    rst $28                                       ; $5ce0: $ef
    ld [hl], e                                    ; $5ce1: $73
    ld a, a                                       ; $5ce2: $7f
    inc hl                                        ; $5ce3: $23
    ccf                                           ; $5ce4: $3f
    inc hl                                        ; $5ce5: $23
    ccf                                           ; $5ce6: $3f
    ld b, e                                       ; $5ce7: $43
    ld a, a                                       ; $5ce8: $7f
    daa                                           ; $5ce9: $27
    ccf                                           ; $5cea: $3f
    ld [bc], a                                    ; $5ceb: $02
    rra                                           ; $5cec: $1f
    ld [bc], a                                    ; $5ced: $02
    rrca                                          ; $5cee: $0f
    add c                                         ; $5cef: $81
    ld [de], a                                    ; $5cf0: $12
    inc bc                                        ; $5cf1: $03
    ld e, $04                                     ; $5cf2: $1e $04
    nop                                           ; $5cf4: $00
    sub c                                         ; $5cf5: $91
    ld l, l                                       ; $5cf6: $6d
    ld a, a                                       ; $5cf7: $7f
    ld h, l                                       ; $5cf8: $65
    ld a, a                                       ; $5cf9: $7f
    ld l, a                                       ; $5cfa: $6f
    ld a, a                                       ; $5cfb: $7f
    ld c, c                                       ; $5cfc: $49
    ld a, a                                       ; $5cfd: $7f
    ld e, l                                       ; $5cfe: $5d
    ld [hl], a                                    ; $5cff: $77
    ld e, [hl]                                    ; $5d00: $5e
    ld a, [hl]                                    ; $5d01: $7e
    ld h, h                                       ; $5d02: $64
    ld a, h                                       ; $5d03: $7c
    ld [hl], h                                    ; $5d04: $74
    ld a, h                                       ; $5d05: $7c
    ld d, h                                       ; $5d06: $54
    inc bc                                        ; $5d07: $03
    ld a, h                                       ; $5d08: $7c
    add d                                         ; $5d09: $82
    ld d, b                                       ; $5d0a: $50
    ld [hl], b                                    ; $5d0b: $70
    ld [bc], a                                    ; $5d0c: $02
    jr nc, jr_0e1_5d15                            ; $5d0d: $30 $06

    nop                                           ; $5d0f: $00
    rst $38                                       ; $5d10: $ff
    dec c                                         ; $5d11: $0d
    inc b                                         ; $5d12: $04
    ei                                            ; $5d13: $fb
    dec b                                         ; $5d14: $05

jr_0e1_5d15:
    di                                            ; $5d15: $f3
    db $fc                                        ; $5d16: $fc
    ld [c], a                                     ; $5d17: $e2
    db $fc                                        ; $5d18: $fc
    push hl                                       ; $5d19: $e5
    cp $f2                                        ; $5d1a: $fe $f2
    ei                                            ; $5d1c: $fb
    ld a, [c]                                     ; $5d1d: $f2
    rst $38                                       ; $5d1e: $ff
    ld [bc], a                                    ; $5d1f: $02
    inc c                                         ; $5d20: $0c
    sbc [hl]                                      ; $5d21: $9e
    ld e, $12                                     ; $5d22: $1e $12
    ccf                                           ; $5d24: $3f
    ld hl, $203f                                  ; $5d25: $21 $3f $20
    ld a, $21                                     ; $5d28: $3e $21
    ccf                                           ; $5d2a: $3f
    add hl, hl                                    ; $5d2b: $29
    rra                                           ; $5d2c: $1f
    db $10                                        ; $5d2d: $10
    rra                                           ; $5d2e: $1f
    inc e                                         ; $5d2f: $1c
    ld a, [de]                                    ; $5d30: $1a
    rra                                           ; $5d31: $1f
    db $10                                        ; $5d32: $10
    rra                                           ; $5d33: $1f
    jr @+$21                                      ; $5d34: $18 $1f

    inc l                                         ; $5d36: $2c
    ccf                                           ; $5d37: $3f
    ld [hl], h                                    ; $5d38: $74
    ld a, a                                       ; $5d39: $7f
    ld e, d                                       ; $5d3a: $5a
    ld a, a                                       ; $5d3b: $7f
    ld c, e                                       ; $5d3c: $4b
    ld a, a                                       ; $5d3d: $7f
    adc e                                         ; $5d3e: $8b
    rst $38                                       ; $5d3f: $ff
    ld [bc], a                                    ; $5d40: $02
    ld [bc], a                                    ; $5d41: $02
    add d                                         ; $5d42: $82
    ld bc, $0203                                  ; $5d43: $01 $03 $02
    ld [bc], a                                    ; $5d46: $02
    add h                                         ; $5d47: $84
    inc bc                                        ; $5d48: $03
    ld bc, $0103                                  ; $5d49: $01 $03 $01
    ld [bc], a                                    ; $5d4c: $02
    ld [bc], a                                    ; $5d4d: $02
    add d                                         ; $5d4e: $82
    ld bc, $0403                                  ; $5d4f: $01 $03 $04
    ld [bc], a                                    ; $5d52: $02
    add e                                         ; $5d53: $83
    ld bc, $0103                                  ; $5d54: $01 $03 $01
    inc bc                                        ; $5d57: $03
    inc bc                                        ; $5d58: $03
    and b                                         ; $5d59: $a0
    ld bc, $5603                                  ; $5d5a: $01 $03 $56
    cp $5b                                        ; $5d5d: $fe $5b
    rst $38                                       ; $5d5f: $ff
    adc e                                         ; $5d60: $8b
    rst $38                                       ; $5d61: $ff
    ld b, b                                       ; $5d62: $40
    ld h, b                                       ; $5d63: $60
    ld b, b                                       ; $5d64: $40
    ld h, b                                       ; $5d65: $60
    and b                                         ; $5d66: $a0
    ldh [$db], a                                  ; $5d67: $e0 $db
    rst $38                                       ; $5d69: $ff
    adc c                                         ; $5d6a: $89
    rst $38                                       ; $5d6b: $ff
    ld e, l                                       ; $5d6c: $5d
    ld [hl], a                                    ; $5d6d: $77
    add hl, sp                                    ; $5d6e: $39
    ccf                                           ; $5d6f: $3f
    inc hl                                        ; $5d70: $23
    ccf                                           ; $5d71: $3f
    ld b, c                                       ; $5d72: $41
    ld a, a                                       ; $5d73: $7f
    ld b, c                                       ; $5d74: $41
    ld a, a                                       ; $5d75: $7f
    ld b, a                                       ; $5d76: $47
    ld a, a                                       ; $5d77: $7f
    inc hl                                        ; $5d78: $23
    ccf                                           ; $5d79: $3f
    ld [bc], a                                    ; $5d7a: $02
    rra                                           ; $5d7b: $1f
    ld [bc], a                                    ; $5d7c: $02
    ccf                                           ; $5d7d: $3f
    add c                                         ; $5d7e: $81
    add hl, de                                    ; $5d7f: $19
    inc bc                                        ; $5d80: $03
    rra                                           ; $5d81: $1f
    ld b, $00                                     ; $5d82: $06 $00
    add c                                         ; $5d84: $81
    rlca                                          ; $5d85: $07
    inc bc                                        ; $5d86: $03
    rrca                                          ; $5d87: $0f
    add c                                         ; $5d88: $81
    ld b, $03                                     ; $5d89: $06 $03
    ld c, $88                                     ; $5d8b: $0e $88
    dec c                                         ; $5d8d: $0d
    rrca                                          ; $5d8e: $0f
    dec c                                         ; $5d8f: $0d
    rrca                                          ; $5d90: $0f
    dec c                                         ; $5d91: $0d

jr_0e1_5d92:
    rrca                                          ; $5d92: $0f
    ld a, [bc]                                    ; $5d93: $0a
    ld c, $02                                     ; $5d94: $0e $02
    inc c                                         ; $5d96: $0c
    ld [bc], a                                    ; $5d97: $02
    ld [$0481], sp                                ; $5d98: $08 $81 $04
    inc bc                                        ; $5d9b: $03
    inc c                                         ; $5d9c: $0c
    ld [bc], a                                    ; $5d9d: $02
    nop                                           ; $5d9e: $00
    rst $38                                       ; $5d9f: $ff
    dec c                                         ; $5da0: $0d
    inc b                                         ; $5da1: $04
    ei                                            ; $5da2: $fb
    dec b                                         ; $5da3: $05
    di                                            ; $5da4: $f3
    db $fc                                        ; $5da5: $fc
    ld [c], a                                     ; $5da6: $e2
    db $fd                                        ; $5da7: $fd
    and $fe                                       ; $5da8: $e6 $fe
    ld a, [c]                                     ; $5daa: $f2
    ei                                            ; $5dab: $fb
    ld a, [c]                                     ; $5dac: $f2
    ld bc, $1802                                  ; $5dad: $01 $02 $18
    sbc [hl]                                      ; $5db0: $9e
    inc a                                         ; $5db1: $3c
    inc h                                         ; $5db2: $24
    ld a, [hl]                                    ; $5db3: $7e
    ld b, d                                       ; $5db4: $42
    ld a, a                                       ; $5db5: $7f
    ld b, c                                       ; $5db6: $41
    ld a, h                                       ; $5db7: $7c
    ld b, e                                       ; $5db8: $43
    ld a, a                                       ; $5db9: $7f
    ld d, e                                       ; $5dba: $53
    ccf                                           ; $5dbb: $3f
    jr nz, jr_0e1_5dfd                            ; $5dbc: $20 $3f

    jr c, jr_0e1_5df5                             ; $5dbe: $38 $35

    ccf                                           ; $5dc0: $3f
    jr nz, jr_0e1_5e02                            ; $5dc1: $20 $3f

    ld sp, $593f                                  ; $5dc3: $31 $3f $59
    ld a, a                                       ; $5dc6: $7f
    add sp, -$01                                  ; $5dc7: $e8 $ff
    or h                                          ; $5dc9: $b4
    rst $38                                       ; $5dca: $ff
    sub a                                         ; $5dcb: $97
    rst $38                                       ; $5dcc: $ff
    sub [hl]                                      ; $5dcd: $96
    rst $38                                       ; $5dce: $ff
    ld [bc], a                                    ; $5dcf: $02
    ld bc, $0002                                  ; $5dd0: $01 $02 $00
    inc b                                         ; $5dd3: $04
    ld bc, $0002                                  ; $5dd4: $01 $02 $00
    ld [bc], a                                    ; $5dd7: $02
    ld bc, $0004                                  ; $5dd8: $01 $04 $00
    ld [$8b01], sp                                ; $5ddb: $08 $01 $8b
    ld d, [hl]                                    ; $5dde: $56
    cp $5a                                        ; $5ddf: $fe $5a
    cp $cb                                        ; $5de1: $fe $cb
    rst $38                                       ; $5de3: $ff
    db $db                                        ; $5de4: $db
    rst $38                                       ; $5de5: $ff
    ld b, b                                       ; $5de6: $40
    ld h, b                                       ; $5de7: $60
    ld b, b                                       ; $5de8: $40
    inc bc                                        ; $5de9: $03
    ld h, b                                       ; $5dea: $60
    sub c                                         ; $5deb: $91
    ret nz                                        ; $5dec: $c0

    ldh [$85], a                                  ; $5ded: $e0 $85
    rst $38                                       ; $5def: $ff
    ld l, a                                       ; $5df0: $6f
    ld a, e                                       ; $5df1: $7b
    dec a                                         ; $5df2: $3d
    ccf                                           ; $5df3: $3f
    ld [hl+], a                                   ; $5df4: $22

jr_0e1_5df5:
    ccf                                           ; $5df5: $3f
    jr nz, jr_0e1_5e37                            ; $5df6: $20 $3f

    jr nz, jr_0e1_5e39                            ; $5df8: $20 $3f

    ld b, d                                       ; $5dfa: $42
    ld a, a                                       ; $5dfb: $7f
    ld b, c                                       ; $5dfc: $41

jr_0e1_5dfd:
    inc bc                                        ; $5dfd: $03
    ld a, a                                       ; $5dfe: $7f
    ld [bc], a                                    ; $5dff: $02
    ld a, b                                       ; $5e00: $78
    add d                                         ; $5e01: $82

jr_0e1_5e02:
    ld h, h                                       ; $5e02: $64
    ld a, h                                       ; $5e03: $7c
    ld [bc], a                                    ; $5e04: $02
    inc a                                         ; $5e05: $3c
    ld [$0200], sp                                ; $5e06: $08 $00 $02
    jr c, @-$7d                                   ; $5e09: $38 $81

    jr jr_0e1_5e18                                ; $5e0b: $18 $0b

    jr c, jr_0e1_5d92                             ; $5e0d: $38 $83

    inc l                                         ; $5e0f: $2c
    inc a                                         ; $5e10: $3c
    dec sp                                        ; $5e11: $3b
    inc bc                                        ; $5e12: $03
    ccf                                           ; $5e13: $3f
    ld [bc], a                                    ; $5e14: $02
    inc a                                         ; $5e15: $3c
    ld [bc], a                                    ; $5e16: $02
    nop                                           ; $5e17: $00

jr_0e1_5e18:
    rst $38                                       ; $5e18: $ff
    dec c                                         ; $5e19: $0d
    inc b                                         ; $5e1a: $04
    ei                                            ; $5e1b: $fb
    dec b                                         ; $5e1c: $05
    di                                            ; $5e1d: $f3
    db $fc                                        ; $5e1e: $fc
    db $e3                                        ; $5e1f: $e3
    db $fc                                        ; $5e20: $fc
    and $fe                                       ; $5e21: $e6 $fe
    di                                            ; $5e23: $f3
    ei                                            ; $5e24: $fb
    di                                            ; $5e25: $f3
    rst $38                                       ; $5e26: $ff
    ld [bc], a                                    ; $5e27: $02
    inc c                                         ; $5e28: $0c
    sbc [hl]                                      ; $5e29: $9e
    ld e, $12                                     ; $5e2a: $1e $12
    ccf                                           ; $5e2c: $3f
    ld hl, $203f                                  ; $5e2d: $21 $3f $20
    ld a, $21                                     ; $5e30: $3e $21
    ccf                                           ; $5e32: $3f
    add hl, hl                                    ; $5e33: $29
    rra                                           ; $5e34: $1f
    db $10                                        ; $5e35: $10
    rra                                           ; $5e36: $1f

jr_0e1_5e37:
    inc e                                         ; $5e37: $1c
    ld a, [de]                                    ; $5e38: $1a

jr_0e1_5e39:
    rra                                           ; $5e39: $1f
    db $10                                        ; $5e3a: $10
    rra                                           ; $5e3b: $1f
    jr c, jr_0e1_5e7d                             ; $5e3c: $38 $3f

    inc l                                         ; $5e3e: $2c
    ccf                                           ; $5e3f: $3f
    ld [hl], h                                    ; $5e40: $74
    ld a, a                                       ; $5e41: $7f
    ld e, d                                       ; $5e42: $5a
    ld a, a                                       ; $5e43: $7f
    ld c, e                                       ; $5e44: $4b
    ld a, a                                       ; $5e45: $7f
    adc c                                         ; $5e46: $89
    rst $38                                       ; $5e47: $ff
    ld [bc], a                                    ; $5e48: $02
    ld [bc], a                                    ; $5e49: $02
    add d                                         ; $5e4a: $82
    ld bc, $0203                                  ; $5e4b: $01 $03 $02
    ld [bc], a                                    ; $5e4e: $02
    add h                                         ; $5e4f: $84
    inc bc                                        ; $5e50: $03
    ld bc, $0103                                  ; $5e51: $01 $03 $01
    ld [bc], a                                    ; $5e54: $02
    ld [bc], a                                    ; $5e55: $02
    add d                                         ; $5e56: $82
    ld bc, $0403                                  ; $5e57: $01 $03 $04
    ld [bc], a                                    ; $5e5a: $02
    add e                                         ; $5e5b: $83
    ld bc, $0103                                  ; $5e5c: $01 $03 $01
    inc bc                                        ; $5e5f: $03
    inc bc                                        ; $5e60: $03
    sbc [hl]                                      ; $5e61: $9e
    ld bc, $5603                                  ; $5e62: $01 $03 $56
    cp $5b                                        ; $5e65: $fe $5b
    rst $38                                       ; $5e67: $ff
    adc e                                         ; $5e68: $8b
    rst $38                                       ; $5e69: $ff
    ld b, b                                       ; $5e6a: $40
    ld h, b                                       ; $5e6b: $60
    ld b, b                                       ; $5e6c: $40
    ld h, b                                       ; $5e6d: $60
    and b                                         ; $5e6e: $a0
    ldh [$db], a                                  ; $5e6f: $e0 $db
    rst $38                                       ; $5e71: $ff
    adc c                                         ; $5e72: $89
    rst $38                                       ; $5e73: $ff
    ld e, l                                       ; $5e74: $5d
    ld [hl], a                                    ; $5e75: $77
    dec sp                                        ; $5e76: $3b
    ccf                                           ; $5e77: $3f
    ld hl, $433f                                  ; $5e78: $21 $3f $43
    ld a, a                                       ; $5e7b: $7f
    ld b, [hl]                                    ; $5e7c: $46

jr_0e1_5e7d:
    ld a, a                                       ; $5e7d: $7f
    inc hl                                        ; $5e7e: $23
    ccf                                           ; $5e7f: $3f
    ld [bc], a                                    ; $5e80: $02
    rra                                           ; $5e81: $1f
    add d                                         ; $5e82: $82
    dec de                                        ; $5e83: $1b
    rra                                           ; $5e84: $1f
    ld [bc], a                                    ; $5e85: $02
    rrca                                          ; $5e86: $0f
    ld a, [bc]                                    ; $5e87: $0a
    nop                                           ; $5e88: $00
    inc b                                         ; $5e89: $04
    rrca                                          ; $5e8a: $0f
    add d                                         ; $5e8b: $82
    ld b, $0e                                     ; $5e8c: $06 $0e
    ld [bc], a                                    ; $5e8e: $02
    rrca                                          ; $5e8f: $0f
    add h                                         ; $5e90: $84
    dec c                                         ; $5e91: $0d
    rrca                                          ; $5e92: $0f
    dec c                                         ; $5e93: $0d
    rrca                                          ; $5e94: $0f
    ld [bc], a                                    ; $5e95: $02
    ld c, $02                                     ; $5e96: $0e $02
    inc c                                         ; $5e98: $0c
    ld [bc], a                                    ; $5e99: $02
    ld [$0681], sp                                ; $5e9a: $08 $81 $06
    inc bc                                        ; $5e9d: $03
    ld c, $04                                     ; $5e9e: $0e $04
    nop                                           ; $5ea0: $00
    rst $38                                       ; $5ea1: $ff
    dec c                                         ; $5ea2: $0d
    inc b                                         ; $5ea3: $04
    ei                                            ; $5ea4: $fb
    dec b                                         ; $5ea5: $05
    di                                            ; $5ea6: $f3
    db $fc                                        ; $5ea7: $fc
    ld [c], a                                     ; $5ea8: $e2
    db $fc                                        ; $5ea9: $fc
    push hl                                       ; $5eaa: $e5
    cp $f2                                        ; $5eab: $fe $f2
    ei                                            ; $5ead: $fb
    ld a, [c]                                     ; $5eae: $f2
    ld bc, $0c02                                  ; $5eaf: $01 $02 $0c
    sbc [hl]                                      ; $5eb2: $9e
    ld e, $12                                     ; $5eb3: $1e $12
    ccf                                           ; $5eb5: $3f
    ld hl, $203f                                  ; $5eb6: $21 $3f $20
    ld a, $21                                     ; $5eb9: $3e $21
    ccf                                           ; $5ebb: $3f
    add hl, hl                                    ; $5ebc: $29
    rra                                           ; $5ebd: $1f
    db $10                                        ; $5ebe: $10
    rra                                           ; $5ebf: $1f
    inc e                                         ; $5ec0: $1c
    ld a, [de]                                    ; $5ec1: $1a
    rra                                           ; $5ec2: $1f
    db $10                                        ; $5ec3: $10
    rra                                           ; $5ec4: $1f
    jr @+$21                                      ; $5ec5: $18 $1f

    inc l                                         ; $5ec7: $2c
    ccf                                           ; $5ec8: $3f
    inc [hl]                                      ; $5ec9: $34
    ccf                                           ; $5eca: $3f
    ld e, d                                       ; $5ecb: $5a
    ld a, a                                       ; $5ecc: $7f
    ld c, e                                       ; $5ecd: $4b
    ld a, a                                       ; $5ece: $7f
    adc e                                         ; $5ecf: $8b
    rst $38                                       ; $5ed0: $ff
    ld [bc], a                                    ; $5ed1: $02
    ld [bc], a                                    ; $5ed2: $02
    add d                                         ; $5ed3: $82
    ld bc, $0203                                  ; $5ed4: $01 $03 $02
    ld [bc], a                                    ; $5ed7: $02
    add h                                         ; $5ed8: $84
    inc bc                                        ; $5ed9: $03
    ld bc, $0103                                  ; $5eda: $01 $03 $01
    ld [bc], a                                    ; $5edd: $02
    ld [bc], a                                    ; $5ede: $02
    add d                                         ; $5edf: $82
    ld bc, $0403                                  ; $5ee0: $01 $03 $04
    ld [bc], a                                    ; $5ee3: $02
    add e                                         ; $5ee4: $83
    ld bc, $0103                                  ; $5ee5: $01 $03 $01
    inc bc                                        ; $5ee8: $03
    inc bc                                        ; $5ee9: $03
    adc e                                         ; $5eea: $8b
    ld bc, $5603                                  ; $5eeb: $01 $03 $56
    cp $db                                        ; $5eee: $fe $db
    rst $38                                       ; $5ef0: $ff
    adc e                                         ; $5ef1: $8b
    rst $38                                       ; $5ef2: $ff
    ld b, b                                       ; $5ef3: $40
    ld h, b                                       ; $5ef4: $60
    add b                                         ; $5ef5: $80
    inc bc                                        ; $5ef6: $03
    ldh [$91], a                                  ; $5ef7: $e0 $91
    or e                                          ; $5ef9: $b3
    rst $38                                       ; $5efa: $ff
    sub c                                         ; $5efb: $91
    rst $38                                       ; $5efc: $ff
    cp c                                          ; $5efd: $b9
    rst $28                                       ; $5efe: $ef
    ld [hl], c                                    ; $5eff: $71
    ld a, a                                       ; $5f00: $7f
    ld b, l                                       ; $5f01: $45
    ld a, a                                       ; $5f02: $7f
    ld b, e                                       ; $5f03: $43
    ld a, a                                       ; $5f04: $7f
    add e                                         ; $5f05: $83
    rst $38                                       ; $5f06: $ff
    adc e                                         ; $5f07: $8b
    rst $38                                       ; $5f08: $ff
    ld h, a                                       ; $5f09: $67
    inc bc                                        ; $5f0a: $03
    ld a, a                                       ; $5f0b: $7f
    add d                                         ; $5f0c: $82
    ld [hl], h                                    ; $5f0d: $74
    ld a, h                                       ; $5f0e: $7c
    ld [bc], a                                    ; $5f0f: $02
    inc a                                         ; $5f10: $3c
    ld [$8100], sp                                ; $5f11: $08 $00 $81
    inc e                                         ; $5f14: $1c
    inc bc                                        ; $5f15: $03
    inc a                                         ; $5f16: $3c
    sub c                                         ; $5f17: $91
    jr @+$3a                                      ; $5f18: $18 $38

    inc [hl]                                      ; $5f1a: $34
    inc a                                         ; $5f1b: $3c
    inc [hl]                                      ; $5f1c: $34
    inc a                                         ; $5f1d: $3c
    inc [hl]                                      ; $5f1e: $34
    inc a                                         ; $5f1f: $3c
    inc [hl]                                      ; $5f20: $34
    inc a                                         ; $5f21: $3c
    inc l                                         ; $5f22: $2c
    inc a                                         ; $5f23: $3c
    jr z, jr_0e1_5f5e                             ; $5f24: $28 $38

    inc [hl]                                      ; $5f26: $34
    inc a                                         ; $5f27: $3c
    inc sp                                        ; $5f28: $33
    inc bc                                        ; $5f29: $03
    ccf                                           ; $5f2a: $3f
    ld [bc], a                                    ; $5f2b: $02
    inc a                                         ; $5f2c: $3c
    rst $38                                       ; $5f2d: $ff
    dec c                                         ; $5f2e: $0d
    inc b                                         ; $5f2f: $04
    ei                                            ; $5f30: $fb
    dec b                                         ; $5f31: $05
    di                                            ; $5f32: $f3
    db $fc                                        ; $5f33: $fc
    db $e3                                        ; $5f34: $e3
    db $fc                                        ; $5f35: $fc
    and $fe                                       ; $5f36: $e6 $fe
    di                                            ; $5f38: $f3
    ei                                            ; $5f39: $fb
    di                                            ; $5f3a: $f3
    rst $38                                       ; $5f3b: $ff
    ld [bc], a                                    ; $5f3c: $02
    inc c                                         ; $5f3d: $0c
    sbc [hl]                                      ; $5f3e: $9e
    ld e, $12                                     ; $5f3f: $1e $12
    ccf                                           ; $5f41: $3f
    ld hl, $203f                                  ; $5f42: $21 $3f $20
    ld a, $21                                     ; $5f45: $3e $21
    ccf                                           ; $5f47: $3f
    add hl, hl                                    ; $5f48: $29
    rra                                           ; $5f49: $1f
    db $10                                        ; $5f4a: $10
    rra                                           ; $5f4b: $1f
    inc e                                         ; $5f4c: $1c
    ld a, [de]                                    ; $5f4d: $1a
    rra                                           ; $5f4e: $1f
    db $10                                        ; $5f4f: $10
    rra                                           ; $5f50: $1f
    jr c, jr_0e1_5f92                             ; $5f51: $38 $3f

    inc l                                         ; $5f53: $2c
    ccf                                           ; $5f54: $3f
    ld [hl], h                                    ; $5f55: $74
    ld a, a                                       ; $5f56: $7f
    ld e, d                                       ; $5f57: $5a
    ld a, a                                       ; $5f58: $7f
    ld c, e                                       ; $5f59: $4b
    ld a, a                                       ; $5f5a: $7f
    adc c                                         ; $5f5b: $89
    rst $38                                       ; $5f5c: $ff
    ld [bc], a                                    ; $5f5d: $02

jr_0e1_5f5e:
    ld [bc], a                                    ; $5f5e: $02
    add d                                         ; $5f5f: $82
    ld bc, $0203                                  ; $5f60: $01 $03 $02
    ld [bc], a                                    ; $5f63: $02
    add h                                         ; $5f64: $84
    inc bc                                        ; $5f65: $03
    ld bc, $0103                                  ; $5f66: $01 $03 $01
    ld [bc], a                                    ; $5f69: $02
    ld [bc], a                                    ; $5f6a: $02
    add d                                         ; $5f6b: $82
    ld bc, $0403                                  ; $5f6c: $01 $03 $04
    ld [bc], a                                    ; $5f6f: $02
    add e                                         ; $5f70: $83
    ld bc, $0103                                  ; $5f71: $01 $03 $01
    inc bc                                        ; $5f74: $03
    inc bc                                        ; $5f75: $03
    and b                                         ; $5f76: $a0
    ld bc, $5603                                  ; $5f77: $01 $03 $56
    cp $5b                                        ; $5f7a: $fe $5b
    rst $38                                       ; $5f7c: $ff
    adc e                                         ; $5f7d: $8b
    rst $38                                       ; $5f7e: $ff
    ld b, b                                       ; $5f7f: $40
    ld h, b                                       ; $5f80: $60
    ld b, b                                       ; $5f81: $40
    ld h, b                                       ; $5f82: $60
    and b                                         ; $5f83: $a0
    ldh [$db], a                                  ; $5f84: $e0 $db
    rst $38                                       ; $5f86: $ff
    adc c                                         ; $5f87: $89
    rst $38                                       ; $5f88: $ff
    ld e, l                                       ; $5f89: $5d
    ld [hl], a                                    ; $5f8a: $77
    dec sp                                        ; $5f8b: $3b
    ccf                                           ; $5f8c: $3f
    ld b, c                                       ; $5f8d: $41
    ld a, a                                       ; $5f8e: $7f
    add c                                         ; $5f8f: $81
    rst $38                                       ; $5f90: $ff
    ld b, a                                       ; $5f91: $47

jr_0e1_5f92:
    ld a, a                                       ; $5f92: $7f
    ld [hl+], a                                   ; $5f93: $22
    ccf                                           ; $5f94: $3f
    ld e, $1f                                     ; $5f95: $1e $1f
    ld [bc], a                                    ; $5f97: $02
    rrca                                          ; $5f98: $0f
    add c                                         ; $5f99: $81
    inc c                                         ; $5f9a: $0c
    inc bc                                        ; $5f9b: $03
    rrca                                          ; $5f9c: $0f
    ld [$0400], sp                                ; $5f9d: $08 $00 $04
    rrca                                          ; $5fa0: $0f
    add d                                         ; $5fa1: $82
    ld b, $0e                                     ; $5fa2: $06 $0e
    ld [bc], a                                    ; $5fa4: $02
    rrca                                          ; $5fa5: $0f
    add c                                         ; $5fa6: $81
    dec c                                         ; $5fa7: $0d
    inc bc                                        ; $5fa8: $03
    rrca                                          ; $5fa9: $0f
    ld [bc], a                                    ; $5faa: $02
    ld c, $04                                     ; $5fab: $0e $04
    inc c                                         ; $5fad: $0c
    ld [bc], a                                    ; $5fae: $02
    ld [$0c04], sp                                ; $5faf: $08 $04 $0c
    ld [bc], a                                    ; $5fb2: $02
    nop                                           ; $5fb3: $00
    rst $38                                       ; $5fb4: $ff
    dec c                                         ; $5fb5: $0d
    inc b                                         ; $5fb6: $04
    ld sp, hl                                     ; $5fb7: $f9
    ld [$01f2], sp                                ; $5fb8: $08 $f2 $01
    ld [c], a                                     ; $5fbb: $e2
    ei                                            ; $5fbc: $fb
    db $e3                                        ; $5fbd: $e3
    cp $f2                                        ; $5fbe: $fe $f2
    ld a, [$fff2]                                 ; $5fc0: $fa $f2 $ff
    ld [bc], a                                    ; $5fc3: $02
    rra                                           ; $5fc4: $1f
    ld a, [bc]                                    ; $5fc5: $0a
    ccf                                           ; $5fc6: $3f
    adc d                                         ; $5fc7: $8a
    ld e, a                                       ; $5fc8: $5f
    ld a, a                                       ; $5fc9: $7f
    ld [hl], h                                    ; $5fca: $74
    ld e, a                                       ; $5fcb: $5f
    ccf                                           ; $5fcc: $3f
    ld a, $11                                     ; $5fcd: $3e $11
    rra                                           ; $5fcf: $1f

jr_0e1_5fd0:
    ld l, $3f                                     ; $5fd0: $2e $3f
    inc b                                         ; $5fd2: $04
    ld a, a                                       ; $5fd3: $7f
    ld b, $ff                                     ; $5fd4: $06 $ff
    ld a, [bc]                                    ; $5fd6: $0a
    inc b                                         ; $5fd7: $04
    add c                                         ; $5fd8: $81
    ld [bc], a                                    ; $5fd9: $02
    ld [bc], a                                    ; $5fda: $02
    ld b, $81                                     ; $5fdb: $06 $81
    ld [bc], a                                    ; $5fdd: $02
    ld [bc], a                                    ; $5fde: $02
    inc b                                         ; $5fdf: $04

jr_0e1_5fe0:
    ld [bc], a                                    ; $5fe0: $02
    nop                                           ; $5fe1: $00
    ld [bc], a                                    ; $5fe2: $02
    inc b                                         ; $5fe3: $04
    inc b                                         ; $5fe4: $04
    ld b, $06                                     ; $5fe5: $06 $06
    rlca                                          ; $5fe7: $07
    ld [bc], a                                    ; $5fe8: $02
    rst $38                                       ; $5fe9: $ff
    ld [bc], a                                    ; $5fea: $02
    ld [hl], b                                    ; $5feb: $70
    ld b, $ff                                     ; $5fec: $06 $ff
    add e                                         ; $5fee: $83
    cp a                                          ; $5fef: $bf
    rst $38                                       ; $5ff0: $ff
    rst $18                                       ; $5ff1: $df
    ld [bc], a                                    ; $5ff2: $02
    rst $38                                       ; $5ff3: $ff
    add e                                         ; $5ff4: $83
    cp a                                          ; $5ff5: $bf
    ld a, a                                       ; $5ff6: $7f
    ld e, a                                       ; $5ff7: $5f
    ld [bc], a                                    ; $5ff8: $02
    ccf                                           ; $5ff9: $3f
    ld [bc], a                                    ; $5ffa: $02
    rra                                           ; $5ffb: $1f
    ld [$823f], sp                                ; $5ffc: $08 $3f $82
    dec a                                         ; $5fff: $3d
    dec l                                         ; $6000: $2d
    ld [bc], a                                    ; $6001: $02
    dec e                                         ; $6002: $1d
    ld [bc], a                                    ; $6003: $02
    nop                                           ; $6004: $00
    ld b, $1f                                     ; $6005: $06 $1f
    add e                                         ; $6007: $83
    dec e                                         ; $6008: $1d
    rra                                           ; $6009: $1f
    dec de                                        ; $600a: $1b
    ld [bc], a                                    ; $600b: $02
    rra                                           ; $600c: $1f
    add e                                         ; $600d: $83
    dec e                                         ; $600e: $1d
    ld e, $1a                                     ; $600f: $1e $1a
    ld [bc], a                                    ; $6011: $02
    inc e                                         ; $6012: $1c
    ld [bc], a                                    ; $6013: $02
    jr jr_0e1_601f                                ; $6014: $18 $09

    inc e                                         ; $6016: $1c
    add c                                         ; $6017: $81
    inc d                                         ; $6018: $14
    ld [bc], a                                    ; $6019: $02
    jr @+$01                                      ; $601a: $18 $ff

    dec c                                         ; $601c: $0d
    inc b                                         ; $601d: $04
    ld sp, hl                                     ; $601e: $f9

jr_0e1_601f:
    ld [$01f2], sp                                ; $601f: $08 $f2 $01
    ld [c], a                                     ; $6022: $e2
    ld a, [$ffe2]                                 ; $6023: $fa $e2 $ff
    ld a, [c]                                     ; $6026: $f2
    ld a, [$fff2]                                 ; $6027: $fa $f2 $ff
    ld [bc], a                                    ; $602a: $02
    rrca                                          ; $602b: $0f
    inc bc                                        ; $602c: $03
    rra                                           ; $602d: $1f
    add e                                         ; $602e: $83
    jr @+$21                                      ; $602f: $18 $1f

    rla                                           ; $6031: $17
    inc bc                                        ; $6032: $03
    rra                                           ; $6033: $1f
    sub e                                         ; $6034: $93
    ld [de], a                                    ; $6035: $12
    cpl                                           ; $6036: $2f
    dec a                                         ; $6037: $3d
    ccf                                           ; $6038: $3f
    inc [hl]                                      ; $6039: $34
    rra                                           ; $603a: $1f
    dec d                                         ; $603b: $15
    ld a, [de]                                    ; $603c: $1a
    rra                                           ; $603d: $1f
    rla                                           ; $603e: $17
    rra                                           ; $603f: $1f
    jr c, jr_0e1_6081                             ; $6040: $38 $3f

    ld [hl], l                                    ; $6042: $75
    ld a, a                                       ; $6043: $7f
    ld [hl], a                                    ; $6044: $77
    ld a, a                                       ; $6045: $7f
    ld a, d                                       ; $6046: $7a
    ld a, a                                       ; $6047: $7f
    ld [bc], a                                    ; $6048: $02
    rst $38                                       ; $6049: $ff
    ld [bc], a                                    ; $604a: $02
    db $10                                        ; $604b: $10
    dec b                                         ; $604c: $05
    jr jr_0e1_5fd0                                ; $604d: $18 $81

    ld [$1803], sp                                ; $604f: $08 $03 $18
    add d                                         ; $6052: $82
    ld [$0214], sp                                ; $6053: $08 $14 $02
    inc e                                         ; $6056: $1c
    add e                                         ; $6057: $83
    inc c                                         ; $6058: $0c
    jr jr_0e1_6063                                ; $6059: $18 $08

    ld [bc], a                                    ; $605b: $02
    jr jr_0e1_5fe0                                ; $605c: $18 $82

    ld [$0218], sp                                ; $605e: $08 $18 $02
    inc e                                         ; $6061: $1c
    add e                                         ; $6062: $83

jr_0e1_6063:
    ld c, $1e                                     ; $6063: $0e $1e
    ld c, $03                                     ; $6065: $0e $03
    ld e, $02                                     ; $6067: $1e $02
    rra                                           ; $6069: $1f
    add d                                         ; $606a: $82
    rst $38                                       ; $606b: $ff
    db $fd                                        ; $606c: $fd
    dec b                                         ; $606d: $05
    rst $38                                       ; $606e: $ff
    add d                                         ; $606f: $82
    db $fd                                        ; $6070: $fd
    sbc a                                         ; $6071: $9f
    inc b                                         ; $6072: $04
    rst $38                                       ; $6073: $ff
    add e                                         ; $6074: $83
    sbc a                                         ; $6075: $9f
    ld a, a                                       ; $6076: $7f
    ld e, a                                       ; $6077: $5f
    ld [bc], a                                    ; $6078: $02
    ccf                                           ; $6079: $3f
    inc b                                         ; $607a: $04
    rra                                           ; $607b: $1f
    ld b, $3f                                     ; $607c: $06 $3f
    add d                                         ; $607e: $82
    ld e, l                                       ; $607f: $5d
    ld l, l                                       ; $6080: $6d

jr_0e1_6081:
    ld [bc], a                                    ; $6081: $02
    jr c, @+$0a                                   ; $6082: $38 $08

    rra                                           ; $6084: $1f
    add c                                         ; $6085: $81
    add hl, de                                    ; $6086: $19
    inc b                                         ; $6087: $04
    rra                                           ; $6088: $1f
    add e                                         ; $6089: $83
    add hl, de                                    ; $608a: $19
    ld e, $1a                                     ; $608b: $1e $1a
    ld [bc], a                                    ; $608d: $02
    inc e                                         ; $608e: $1c
    inc b                                         ; $608f: $04
    jr jr_0e1_6098                                ; $6090: $18 $06

    inc e                                         ; $6092: $1c
    add d                                         ; $6093: $82
    ld a, [de]                                    ; $6094: $1a
    ld d, $02                                     ; $6095: $16 $02
    inc e                                         ; $6097: $1c

jr_0e1_6098:
    rst $38                                       ; $6098: $ff
    dec c                                         ; $6099: $0d
    inc b                                         ; $609a: $04
    ld hl, sp+$07                                 ; $609b: $f8 $07
    ld a, [c]                                     ; $609d: $f2
    ld bc, $fce2                                  ; $609e: $01 $e2 $fc
    push hl                                       ; $60a1: $e5
    nop                                           ; $60a2: $00
    ld a, [c]                                     ; $60a3: $f2
    ei                                            ; $60a4: $fb
    ld a, [c]                                     ; $60a5: $f2
    db $fd                                        ; $60a6: $fd
    ld [bc], a                                    ; $60a7: $02
    ld b, $02                                     ; $60a8: $06 $02
    ld e, $84                                     ; $60aa: $1e $84
    ccf                                           ; $60ac: $3f
    dec a                                         ; $60ad: $3d
    ld a, a                                       ; $60ae: $7f
    ld a, e                                       ; $60af: $7b
    inc bc                                        ; $60b0: $03
    ld a, a                                       ; $60b1: $7f
    sub b                                         ; $60b2: $90
    ld a, b                                       ; $60b3: $78
    scf                                           ; $60b4: $37
    dec a                                         ; $60b5: $3d
    ccf                                           ; $60b6: $3f
    inc l                                         ; $60b7: $2c
    rra                                           ; $60b8: $1f
    add hl, de                                    ; $60b9: $19
    ld l, $3b                                     ; $60ba: $2e $3b
    ld h, a                                       ; $60bc: $67
    ld a, l                                       ; $60bd: $7d
    ld [hl], e                                    ; $60be: $73
    ld a, a                                       ; $60bf: $7f
    or $fe                                        ; $60c0: $f6 $fe
    ld a, [$fe04]                                 ; $60c2: $fa $04 $fe
    add c                                         ; $60c5: $81
    ld a, [$0c02]                                 ; $60c6: $fa $02 $0c
    ld [bc], a                                    ; $60c9: $02
    ld [$0c02], sp                                ; $60ca: $08 $02 $0c
    add [hl]                                      ; $60cd: $86
    ld c, $0a                                     ; $60ce: $0e $0a
    rrca                                          ; $60d0: $0f
    add hl, bc                                    ; $60d1: $09
    rlca                                          ; $60d2: $07
    rrca                                          ; $60d3: $0f
    ld [bc], a                                    ; $60d4: $02
    inc c                                         ; $60d5: $0c
    add h                                         ; $60d6: $84
    ld [bc], a                                    ; $60d7: $02
    ld c, $0a                                     ; $60d8: $0e $0a
    ld c, $02                                     ; $60da: $0e $02
    inc b                                         ; $60dc: $04
    ld b, $00                                     ; $60dd: $06 $00
    dec b                                         ; $60df: $05
    ldh [$81], a                                  ; $60e0: $e0 $81
    and b                                         ; $60e2: $a0
    ld b, $f8                                     ; $60e3: $06 $f8
    ld [bc], a                                    ; $60e5: $02
    rst $38                                       ; $60e6: $ff
    add d                                         ; $60e7: $82
    sbc [hl]                                      ; $60e8: $9e
    cp $03                                        ; $60e9: $fe $03
    rst $38                                       ; $60eb: $ff
    add e                                         ; $60ec: $83
    adc a                                         ; $60ed: $8f
    ld a, a                                       ; $60ee: $7f
    ld e, a                                       ; $60ef: $5f
    ld [bc], a                                    ; $60f0: $02
    ccf                                           ; $60f1: $3f
    inc b                                         ; $60f2: $04
    rra                                           ; $60f3: $1f
    ld b, $3f                                     ; $60f4: $06 $3f
    add d                                         ; $60f6: $82
    ld a, $3d                                     ; $60f7: $3e $3d
    ld [bc], a                                    ; $60f9: $02
    ccf                                           ; $60fa: $3f
    stop                                          ; $60fb: $10 $00
    ld b, $02                                     ; $60fd: $06 $02
    inc b                                         ; $60ff: $04
    nop                                           ; $6100: $00
    inc b                                         ; $6101: $04
    inc bc                                        ; $6102: $03
    ld [bc], a                                    ; $6103: $02
    ld [bc], a                                    ; $6104: $02
    rst $38                                       ; $6105: $ff
    dec c                                         ; $6106: $0d
    inc b                                         ; $6107: $04
    ld hl, sp+$07                                 ; $6108: $f8 $07
    ld a, [c]                                     ; $610a: $f2
    ld bc, $fce2                                  ; $610b: $01 $e2 $fc
    push hl                                       ; $610e: $e5
    nop                                           ; $610f: $00
    ld a, [c]                                     ; $6110: $f2
    ei                                            ; $6111: $fb
    ld a, [c]                                     ; $6112: $f2
    cp $02                                        ; $6113: $fe $02
    ld b, $02                                     ; $6115: $06 $02
    ld e, $84                                     ; $6117: $1e $84
    ccf                                           ; $6119: $3f
    dec a                                         ; $611a: $3d
    ld a, a                                       ; $611b: $7f
    ld a, e                                       ; $611c: $7b
    inc bc                                        ; $611d: $03
    ld a, a                                       ; $611e: $7f
    sub b                                         ; $611f: $90
    ld a, b                                       ; $6120: $78
    scf                                           ; $6121: $37
    dec a                                         ; $6122: $3d
    ccf                                           ; $6123: $3f
    inc l                                         ; $6124: $2c
    rra                                           ; $6125: $1f
    add hl, de                                    ; $6126: $19
    ld l, $3b                                     ; $6127: $2e $3b
    ld h, a                                       ; $6129: $67
    ld a, l                                       ; $612a: $7d
    ld [hl], e                                    ; $612b: $73
    ld a, a                                       ; $612c: $7f
    or $fe                                        ; $612d: $f6 $fe
    ld a, [$fe04]                                 ; $612f: $fa $04 $fe
    add c                                         ; $6132: $81
    ld a, [$0c02]                                 ; $6133: $fa $02 $0c
    ld [bc], a                                    ; $6136: $02
    ld [$0c02], sp                                ; $6137: $08 $02 $0c
    add [hl]                                      ; $613a: $86
    ld c, $0a                                     ; $613b: $0e $0a
    rrca                                          ; $613d: $0f
    add hl, bc                                    ; $613e: $09
    rlca                                          ; $613f: $07
    rrca                                          ; $6140: $0f
    ld [bc], a                                    ; $6141: $02
    inc c                                         ; $6142: $0c
    add h                                         ; $6143: $84
    ld [bc], a                                    ; $6144: $02
    ld c, $0a                                     ; $6145: $0e $0a
    ld c, $02                                     ; $6147: $0e $02
    inc b                                         ; $6149: $04
    ld b, $00                                     ; $614a: $06 $00
    dec b                                         ; $614c: $05
    ldh [$81], a                                  ; $614d: $e0 $81
    and b                                         ; $614f: $a0
    ld b, $78                                     ; $6150: $06 $78
    inc b                                         ; $6152: $04
    ld a, a                                       ; $6153: $7f
    add [hl]                                      ; $6154: $86
    ld l, a                                       ; $6155: $6f
    ld a, a                                       ; $6156: $7f
    ld e, a                                       ; $6157: $5f
    ld [hl], a                                    ; $6158: $77
    ld a, a                                       ; $6159: $7f
    ld h, a                                       ; $615a: $67
    inc b                                         ; $615b: $04
    ccf                                           ; $615c: $3f
    inc b                                         ; $615d: $04
    ld a, a                                       ; $615e: $7f
    ld [bc], a                                    ; $615f: $02
    rst $38                                       ; $6160: $ff
    ld [bc], a                                    ; $6161: $02
    cp $82                                        ; $6162: $fe $82
    ld a, d                                       ; $6164: $7a
    halt                                          ; $6165: $76
    ld [bc], a                                    ; $6166: $02
    ld e, $0a                                     ; $6167: $1e $0a
    nop                                           ; $6169: $00
    inc b                                         ; $616a: $04
    inc b                                         ; $616b: $04
    ld [$8206], sp                                ; $616c: $08 $06 $82
    rlca                                          ; $616f: $07
    ld bc, $0702                                  ; $6170: $01 $02 $07
    ld b, $00                                     ; $6173: $06 $00
    rst $38                                       ; $6175: $ff
    dec c                                         ; $6176: $0d
    inc b                                         ; $6177: $04
    ld hl, sp+$07                                 ; $6178: $f8 $07
    ld a, [c]                                     ; $617a: $f2
    ld bc, $fce3                                  ; $617b: $01 $e3 $fc
    and $00                                       ; $617e: $e6 $00
    di                                            ; $6180: $f3
    ei                                            ; $6181: $fb
    di                                            ; $6182: $f3
    db $fd                                        ; $6183: $fd
    ld [bc], a                                    ; $6184: $02
    ld b, $02                                     ; $6185: $06 $02
    ld e, $84                                     ; $6187: $1e $84
    ccf                                           ; $6189: $3f
    dec a                                         ; $618a: $3d
    ld a, a                                       ; $618b: $7f
    ld a, e                                       ; $618c: $7b
    inc bc                                        ; $618d: $03
    ld a, a                                       ; $618e: $7f
    sub b                                         ; $618f: $90
    ld a, b                                       ; $6190: $78
    scf                                           ; $6191: $37
    dec a                                         ; $6192: $3d
    ccf                                           ; $6193: $3f
    inc l                                         ; $6194: $2c
    rra                                           ; $6195: $1f
    add hl, de                                    ; $6196: $19
    ld l, $3b                                     ; $6197: $2e $3b
    ld h, a                                       ; $6199: $67
    ld a, l                                       ; $619a: $7d
    ld [hl], e                                    ; $619b: $73
    ld a, a                                       ; $619c: $7f
    or $fe                                        ; $619d: $f6 $fe
    ld a, [$fe04]                                 ; $619f: $fa $04 $fe
    add c                                         ; $61a2: $81
    ld a, [$0c02]                                 ; $61a3: $fa $02 $0c

jr_0e1_61a6:
    ld [bc], a                                    ; $61a6: $02
    ld [$0c02], sp                                ; $61a7: $08 $02 $0c
    add [hl]                                      ; $61aa: $86
    ld c, $0a                                     ; $61ab: $0e $0a
    rrca                                          ; $61ad: $0f
    add hl, bc                                    ; $61ae: $09
    rlca                                          ; $61af: $07
    rrca                                          ; $61b0: $0f
    ld [bc], a                                    ; $61b1: $02
    inc c                                         ; $61b2: $0c
    add h                                         ; $61b3: $84
    ld [bc], a                                    ; $61b4: $02
    ld c, $0a                                     ; $61b5: $0e $0a
    ld c, $02                                     ; $61b7: $0e $02
    inc b                                         ; $61b9: $04
    ld b, $00                                     ; $61ba: $06 $00
    dec b                                         ; $61bc: $05
    ldh [$81], a                                  ; $61bd: $e0 $81
    and b                                         ; $61bf: $a0
    ld b, $f8                                     ; $61c0: $06 $f8
    ld [bc], a                                    ; $61c2: $02
    rst $38                                       ; $61c3: $ff
    add c                                         ; $61c4: $81
    sbc a                                         ; $61c5: $9f
    inc b                                         ; $61c6: $04
    rst $38                                       ; $61c7: $ff
    add e                                         ; $61c8: $83
    adc a                                         ; $61c9: $8f
    ld a, a                                       ; $61ca: $7f
    ld e, a                                       ; $61cb: $5f
    inc b                                         ; $61cc: $04
    ccf                                           ; $61cd: $3f
    inc bc                                        ; $61ce: $03
    ld a, a                                       ; $61cf: $7f
    add e                                         ; $61d0: $83
    ld a, e                                       ; $61d1: $7b
    dec a                                         ; $61d2: $3d
    ccf                                           ; $61d3: $3f
    ld [bc], a                                    ; $61d4: $02
    rrca                                          ; $61d5: $0f
    ld c, $00                                     ; $61d6: $0e $00
    ld [$0402], sp                                ; $61d8: $08 $02 $04
    nop                                           ; $61db: $00
    ld [bc], a                                    ; $61dc: $02
    ld [bc], a                                    ; $61dd: $02
    inc b                                         ; $61de: $04
    inc bc                                        ; $61df: $03
    inc b                                         ; $61e0: $04
    nop                                           ; $61e1: $00
    rst $38                                       ; $61e2: $ff
    dec c                                         ; $61e3: $0d
    inc b                                         ; $61e4: $04
    ld hl, sp+$07                                 ; $61e5: $f8 $07
    ld a, [c]                                     ; $61e7: $f2
    ld bc, $fbe2                                  ; $61e8: $01 $e2 $fb
    db $e4                                        ; $61eb: $e4
    nop                                           ; $61ec: $00
    ld a, [c]                                     ; $61ed: $f2
    ld a, [$fdf2]                                 ; $61ee: $fa $f2 $fd
    ld [bc], a                                    ; $61f1: $02
    inc bc                                        ; $61f2: $03
    ld [bc], a                                    ; $61f3: $02
    rrca                                          ; $61f4: $0f
    add h                                         ; $61f5: $84
    rra                                           ; $61f6: $1f
    ld e, $3f                                     ; $61f7: $1e $3f
    dec a                                         ; $61f9: $3d
    inc bc                                        ; $61fa: $03
    ccf                                           ; $61fb: $3f
    sub b                                         ; $61fc: $90
    inc a                                         ; $61fd: $3c
    dec de                                        ; $61fe: $1b
    ld e, $1f                                     ; $61ff: $1e $1f
    ld d, $0f                                     ; $6201: $16 $0f
    inc c                                         ; $6203: $0c
    rla                                           ; $6204: $17
    dec e                                         ; $6205: $1d
    inc sp                                        ; $6206: $33
    ld a, $79                                     ; $6207: $3e $79
    ld a, a                                       ; $6209: $7f
    ld a, e                                       ; $620a: $7b
    ld a, a                                       ; $620b: $7f
    db $fd                                        ; $620c: $fd
    inc b                                         ; $620d: $04
    rst $38                                       ; $620e: $ff
    add c                                         ; $620f: $81
    db $fd                                        ; $6210: $fd
    ld [bc], a                                    ; $6211: $02
    db $10                                        ; $6212: $10
    ld [bc], a                                    ; $6213: $02
    inc e                                         ; $6214: $1c
    ld [bc], a                                    ; $6215: $02
    jr jr_0e1_61a6                                ; $6216: $18 $8e

    inc e                                         ; $6218: $1c
    inc c                                         ; $6219: $0c
    ld e, $1a                                     ; $621a: $1e $1a
    rra                                           ; $621c: $1f
    add hl, bc                                    ; $621d: $09
    rla                                           ; $621e: $17
    rra                                           ; $621f: $1f
    inc c                                         ; $6220: $0c
    inc e                                         ; $6221: $1c
    ld [de], a                                    ; $6222: $12
    ld e, $1a                                     ; $6223: $1e $1a
    ld e, $02                                     ; $6225: $1e $02
    inc b                                         ; $6227: $04
    ld b, $00                                     ; $6228: $06 $00
    inc b                                         ; $622a: $04
    ldh [rDIV], a                                 ; $622b: $e0 $04
    db $fc                                        ; $622d: $fc
    add d                                         ; $622e: $82
    rst $38                                       ; $622f: $ff
    cp $02                                        ; $6230: $fe $02
    rst $38                                       ; $6232: $ff
    add c                                         ; $6233: $81
    sbc a                                         ; $6234: $9f
    ld [bc], a                                    ; $6235: $02
    rst $38                                       ; $6236: $ff
    add e                                         ; $6237: $83
    rst $28                                       ; $6238: $ef
    rst $38                                       ; $6239: $ff
    sbc a                                         ; $623a: $9f
    ld [bc], a                                    ; $623b: $02
    ld a, a                                       ; $623c: $7f
    ld [bc], a                                    ; $623d: $02
    rra                                           ; $623e: $1f
    ld [bc], a                                    ; $623f: $02
    ccf                                           ; $6240: $3f
    inc b                                         ; $6241: $04
    ld a, a                                       ; $6242: $7f
    ld [bc], a                                    ; $6243: $02
    ccf                                           ; $6244: $3f
    ld [bc], a                                    ; $6245: $02
    rra                                           ; $6246: $1f
    ld [bc], a                                    ; $6247: $02
    ld c, $06                                     ; $6248: $0e $06
    nop                                           ; $624a: $00
    ld [bc], a                                    ; $624b: $02
    inc b                                         ; $624c: $04
    inc bc                                        ; $624d: $03
    ld b, $83                                     ; $624e: $06 $83
    ld [bc], a                                    ; $6250: $02
    ld b, $02                                     ; $6251: $06 $02
    inc b                                         ; $6253: $04
    inc b                                         ; $6254: $04
    ld [$8206], sp                                ; $6255: $08 $06 $82
    dec b                                         ; $6258: $05
    inc bc                                        ; $6259: $03
    ld [bc], a                                    ; $625a: $02
    rlca                                          ; $625b: $07
    inc b                                         ; $625c: $04
    nop                                           ; $625d: $00
    rst $38                                       ; $625e: $ff
    dec c                                         ; $625f: $0d
    inc b                                         ; $6260: $04
    ld hl, sp+$07                                 ; $6261: $f8 $07
    ld a, [c]                                     ; $6263: $f2
    ld bc, $fce3                                  ; $6264: $01 $e3 $fc
    and $00                                       ; $6267: $e6 $00
    di                                            ; $6269: $f3
    ei                                            ; $626a: $fb
    di                                            ; $626b: $f3
    db $fc                                        ; $626c: $fc
    ld [bc], a                                    ; $626d: $02
    ld b, $02                                     ; $626e: $06 $02
    ld e, $84                                     ; $6270: $1e $84
    ccf                                           ; $6272: $3f
    dec a                                         ; $6273: $3d
    ld a, a                                       ; $6274: $7f
    ld a, e                                       ; $6275: $7b
    inc bc                                        ; $6276: $03
    ld a, a                                       ; $6277: $7f
    sub b                                         ; $6278: $90
    ld a, b                                       ; $6279: $78
    scf                                           ; $627a: $37
    dec a                                         ; $627b: $3d
    ccf                                           ; $627c: $3f
    inc l                                         ; $627d: $2c
    rra                                           ; $627e: $1f
    add hl, de                                    ; $627f: $19
    ld l, $3b                                     ; $6280: $2e $3b
    ld h, a                                       ; $6282: $67
    ld a, l                                       ; $6283: $7d
    ld [hl], e                                    ; $6284: $73
    ld a, a                                       ; $6285: $7f
    or $fe                                        ; $6286: $f6 $fe
    ld a, [$fe04]                                 ; $6288: $fa $04 $fe
    add c                                         ; $628b: $81
    ld a, [$0c02]                                 ; $628c: $fa $02 $0c
    ld [bc], a                                    ; $628f: $02
    ld [$0c02], sp                                ; $6290: $08 $02 $0c
    add [hl]                                      ; $6293: $86
    ld c, $0a                                     ; $6294: $0e $0a
    rrca                                          ; $6296: $0f
    add hl, bc                                    ; $6297: $09
    rlca                                          ; $6298: $07
    rrca                                          ; $6299: $0f
    ld [bc], a                                    ; $629a: $02
    inc c                                         ; $629b: $0c
    add h                                         ; $629c: $84
    ld [bc], a                                    ; $629d: $02
    ld c, $0a                                     ; $629e: $0e $0a
    ld c, $02                                     ; $62a0: $0e $02
    inc b                                         ; $62a2: $04
    ld b, $00                                     ; $62a3: $06 $00
    dec b                                         ; $62a5: $05
    ldh [$81], a                                  ; $62a6: $e0 $81
    and b                                         ; $62a8: $a0
    ld b, $f8                                     ; $62a9: $06 $f8
    ld [bc], a                                    ; $62ab: $02
    rst $38                                       ; $62ac: $ff
    add d                                         ; $62ad: $82
    sbc a                                         ; $62ae: $9f
    cp $03                                        ; $62af: $fe $03
    rst $38                                       ; $62b1: $ff
    add e                                         ; $62b2: $83

jr_0e1_62b3:
    adc a                                         ; $62b3: $8f
    ld a, a                                       ; $62b4: $7f
    ld e, a                                       ; $62b5: $5f
    ld [bc], a                                    ; $62b6: $02
    ccf                                           ; $62b7: $3f
    ld [bc], a                                    ; $62b8: $02
    rra                                           ; $62b9: $1f
    ld b, $3f                                     ; $62ba: $06 $3f
    add d                                         ; $62bc: $82
    ld a, $3d                                     ; $62bd: $3e $3d
    ld [bc], a                                    ; $62bf: $02
    ccf                                           ; $62c0: $3f
    ld a, [bc]                                    ; $62c1: $0a
    nop                                           ; $62c2: $00
    ld a, [bc]                                    ; $62c3: $0a
    ld bc, $0004                                  ; $62c4: $01 $04 $00
    ld [$0201], sp                                ; $62c7: $08 $01 $02
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    dec c                                         ; $62cc: $0d
    inc b                                         ; $62cd: $04
    ei                                            ; $62ce: $fb
    dec b                                         ; $62cf: $05
    ld a, [c]                                     ; $62d0: $f2
    ei                                            ; $62d1: $fb
    ld [c], a                                     ; $62d2: $e2
    ld a, [$ffe2]                                 ; $62d3: $fa $e2 $ff
    ld a, [c]                                     ; $62d6: $f2
    ld sp, hl                                     ; $62d7: $f9
    ld a, [c]                                     ; $62d8: $f2
    nop                                           ; $62d9: $00
    ld [bc], a                                    ; $62da: $02
    rrca                                          ; $62db: $0f
    adc h                                         ; $62dc: $8c
    rla                                           ; $62dd: $17
    rra                                           ; $62de: $1f
    add hl, de                                    ; $62df: $19
    rra                                           ; $62e0: $1f
    ld a, $2f                                     ; $62e1: $3e $2f
    ld a, a                                       ; $62e3: $7f
    ld d, a                                       ; $62e4: $57
    ld a, a                                       ; $62e5: $7f
    ld e, c                                       ; $62e6: $59
    ld a, a                                       ; $62e7: $7f
    ld l, l                                       ; $62e8: $6d
    ld [bc], a                                    ; $62e9: $02
    ccf                                           ; $62ea: $3f
    inc bc                                        ; $62eb: $03
    rra                                           ; $62ec: $1f
    adc l                                         ; $62ed: $8d
    jr jr_0e1_6327                                ; $62ee: $18 $37

    ccf                                           ; $62f0: $3f
    ld l, b                                       ; $62f1: $68
    ld a, a                                       ; $62f2: $7f
    ld c, a                                       ; $62f3: $4f
    ld a, a                                       ; $62f4: $7f
    xor b                                         ; $62f5: $a8
    rst $38                                       ; $62f6: $ff
    cp b                                          ; $62f7: $b8
    rst $38                                       ; $62f8: $ff
    cp b                                          ; $62f9: $b8
    rst $38                                       ; $62fa: $ff
    ld [bc], a                                    ; $62fb: $02
    db $10                                        ; $62fc: $10
    adc [hl]                                      ; $62fd: $8e
    inc c                                         ; $62fe: $0c
    inc e                                         ; $62ff: $1c
    ld d, $1e                                     ; $6300: $16 $1e
    inc c                                         ; $6302: $0c
    inc e                                         ; $6303: $1c
    ld e, $1a                                     ; $6304: $1e $1a
    ld e, $0a                                     ; $6306: $1e $0a
    ld e, $16                                     ; $6308: $1e $16
    inc e                                         ; $630a: $1c
    inc c                                         ; $630b: $0c
    inc b                                         ; $630c: $04
    jr jr_0e1_62b3                                ; $630d: $18 $a4

    inc c                                         ; $630f: $0c
    inc e                                         ; $6310: $1c
    ld d, $1e                                     ; $6311: $16 $1e
    ld [bc], a                                    ; $6313: $02
    ld e, $05                                     ; $6314: $1e $05
    rra                                           ; $6316: $1f
    dec c                                         ; $6317: $0d
    rra                                           ; $6318: $1f
    dec c                                         ; $6319: $0d
    rra                                           ; $631a: $1f
    ld c, a                                       ; $631b: $4f
    ld a, a                                       ; $631c: $7f
    ld c, [hl]                                    ; $631d: $4e
    ld a, a                                       ; $631e: $7f
    sbc a                                         ; $631f: $9f
    rst $38                                       ; $6320: $ff
    cp e                                          ; $6321: $bb
    rst $38                                       ; $6322: $ff
    push af                                       ; $6323: $f5
    rst $18                                       ; $6324: $df
    ld a, b                                       ; $6325: $78
    ld a, a                                       ; $6326: $7f

jr_0e1_6327:
    jr nc, @+$41                                  ; $6327: $30 $3f

    jr z, jr_0e1_636a                             ; $6329: $28 $3f

    jr nc, jr_0e1_636c                            ; $632b: $30 $3f

    jr nz, jr_0e1_636e                            ; $632d: $20 $3f

    jr nz, jr_0e1_6370                            ; $632f: $20 $3f

    db $10                                        ; $6331: $10
    rra                                           ; $6332: $1f
    ld [bc], a                                    ; $6333: $02
    rrca                                          ; $6334: $0f
    add d                                         ; $6335: $82
    ld a, [bc]                                    ; $6336: $0a
    ld c, $02                                     ; $6337: $0e $02
    ld b, $02                                     ; $6339: $06 $02
    nop                                           ; $633b: $00
    sbc b                                         ; $633c: $98
    ld [hl-], a                                   ; $633d: $32
    ld a, [hl]                                    ; $633e: $7e
    ld a, d                                       ; $633f: $7a
    ld a, [hl]                                    ; $6340: $7e
    ld a, c                                       ; $6341: $79
    ld l, a                                       ; $6342: $6f
    ld a, l                                       ; $6343: $7d
    rra                                           ; $6344: $1f
    ld a, a                                       ; $6345: $7f

jr_0e1_6346:
    ld a, e                                       ; $6346: $7b
    ld l, [hl]                                    ; $6347: $6e
    ld a, [hl]                                    ; $6348: $7e
    inc c                                         ; $6349: $0c
    ld a, h                                       ; $634a: $7c
    inc b                                         ; $634b: $04
    ld a, h                                       ; $634c: $7c
    inc b                                         ; $634d: $04
    ld a, h                                       ; $634e: $7c
    inc b                                         ; $634f: $04
    ld a, h                                       ; $6350: $7c
    inc b                                         ; $6351: $04
    ld a, h                                       ; $6352: $7c
    ld [$0278], sp                                ; $6353: $08 $78 $02
    ld [hl], b                                    ; $6356: $70
    add d                                         ; $6357: $82
    ld d, b                                       ; $6358: $50
    ld [hl], b                                    ; $6359: $70
    ld [bc], a                                    ; $635a: $02
    ld h, b                                       ; $635b: $60
    ld [bc], a                                    ; $635c: $02
    nop                                           ; $635d: $00
    rst $38                                       ; $635e: $ff
    dec c                                         ; $635f: $0d
    inc b                                         ; $6360: $04
    ei                                            ; $6361: $fb
    dec b                                         ; $6362: $05
    ld a, [c]                                     ; $6363: $f2
    ei                                            ; $6364: $fb
    ld [c], a                                     ; $6365: $e2
    ld a, [$ffe2]                                 ; $6366: $fa $e2 $ff
    ld a, [c]                                     ; $6369: $f2

jr_0e1_636a:
    ld sp, hl                                     ; $636a: $f9
    ld a, [c]                                     ; $636b: $f2

jr_0e1_636c:
    nop                                           ; $636c: $00
    ld [bc], a                                    ; $636d: $02

jr_0e1_636e:
    rrca                                          ; $636e: $0f
    adc h                                         ; $636f: $8c

jr_0e1_6370:
    rla                                           ; $6370: $17
    rra                                           ; $6371: $1f
    add hl, de                                    ; $6372: $19
    rra                                           ; $6373: $1f
    ld a, $2f                                     ; $6374: $3e $2f
    ld a, a                                       ; $6376: $7f
    ld d, a                                       ; $6377: $57
    ld a, a                                       ; $6378: $7f
    ld e, c                                       ; $6379: $59
    ld a, a                                       ; $637a: $7f
    ld l, l                                       ; $637b: $6d
    ld [bc], a                                    ; $637c: $02
    ccf                                           ; $637d: $3f
    inc bc                                        ; $637e: $03
    rra                                           ; $637f: $1f
    adc l                                         ; $6380: $8d
    jr jr_0e1_63ba                                ; $6381: $18 $37

    ccf                                           ; $6383: $3f
    ld l, b                                       ; $6384: $68
    ld a, a                                       ; $6385: $7f
    ld c, a                                       ; $6386: $4f
    ld a, a                                       ; $6387: $7f
    adc b                                         ; $6388: $88
    rst $38                                       ; $6389: $ff
    cp b                                          ; $638a: $b8
    rst $38                                       ; $638b: $ff
    cp b                                          ; $638c: $b8
    rst $38                                       ; $638d: $ff
    ld [bc], a                                    ; $638e: $02
    db $10                                        ; $638f: $10
    adc [hl]                                      ; $6390: $8e
    inc c                                         ; $6391: $0c
    inc e                                         ; $6392: $1c
    ld d, $1e                                     ; $6393: $16 $1e
    inc c                                         ; $6395: $0c
    inc e                                         ; $6396: $1c
    ld e, $1a                                     ; $6397: $1e $1a
    ld e, $0a                                     ; $6399: $1e $0a
    ld e, $16                                     ; $639b: $1e $16
    inc e                                         ; $639d: $1c
    inc c                                         ; $639e: $0c
    inc b                                         ; $639f: $04
    jr jr_0e1_6346                                ; $63a0: $18 $a4

    inc c                                         ; $63a2: $0c
    inc e                                         ; $63a3: $1c
    ld d, $1e                                     ; $63a4: $16 $1e
    ld [bc], a                                    ; $63a6: $02
    ld e, $06                                     ; $63a7: $1e $06
    ld e, $0d                                     ; $63a9: $1e $0d
    rra                                           ; $63ab: $1f
    dec c                                         ; $63ac: $0d
    rra                                           ; $63ad: $1f
    ld c, a                                       ; $63ae: $4f
    ld a, a                                       ; $63af: $7f
    ld c, [hl]                                    ; $63b0: $4e
    ld a, a                                       ; $63b1: $7f
    sbc a                                         ; $63b2: $9f
    rst $38                                       ; $63b3: $ff
    adc e                                         ; $63b4: $8b
    rst $38                                       ; $63b5: $ff
    push af                                       ; $63b6: $f5
    sbc a                                         ; $63b7: $9f
    ld a, b                                       ; $63b8: $78
    ld a, a                                       ; $63b9: $7f

jr_0e1_63ba:
    jr nc, jr_0e1_63fb                            ; $63ba: $30 $3f

    jr nz, jr_0e1_63fd                            ; $63bc: $20 $3f

    ld d, b                                       ; $63be: $50
    ld a, a                                       ; $63bf: $7f
    ld b, b                                       ; $63c0: $40
    ld a, a                                       ; $63c1: $7f
    jr nz, jr_0e1_6403                            ; $63c2: $20 $3f

    jr @+$21                                      ; $63c4: $18 $1f

    ld [bc], a                                    ; $63c6: $02
    rrca                                          ; $63c7: $0f
    ld [bc], a                                    ; $63c8: $02
    inc b                                         ; $63c9: $04
    inc b                                         ; $63ca: $04
    nop                                           ; $63cb: $00
    adc b                                         ; $63cc: $88
    add hl, sp                                    ; $63cd: $39
    ld a, a                                       ; $63ce: $7f
    ld a, c                                       ; $63cf: $79
    ld a, a                                       ; $63d0: $7f

jr_0e1_63d1:
    ld a, c                                       ; $63d1: $79
    ld l, a                                       ; $63d2: $6f
    ld a, c                                       ; $63d3: $79
    rra                                           ; $63d4: $1f
    ld [bc], a                                    ; $63d5: $02
    ld a, [hl]                                    ; $63d6: $7e
    sub c                                         ; $63d7: $91
    ld l, h                                       ; $63d8: $6c
    ld a, h                                       ; $63d9: $7c
    inc c                                         ; $63da: $0c
    ld a, h                                       ; $63db: $7c
    inc c                                         ; $63dc: $0c
    ld a, h                                       ; $63dd: $7c
    inc b                                         ; $63de: $04
    ld a, h                                       ; $63df: $7c
    inc b                                         ; $63e0: $04
    ld a, h                                       ; $63e1: $7c
    inc c                                         ; $63e2: $0c
    ld a, h                                       ; $63e3: $7c
    ld [$5078], sp                                ; $63e4: $08 $78 $50
    ld [hl], b                                    ; $63e7: $70
    ld d, b                                       ; $63e8: $50
    dec b                                         ; $63e9: $05
    ld [hl], b                                    ; $63ea: $70
    rst $38                                       ; $63eb: $ff
    dec c                                         ; $63ec: $0d
    inc b                                         ; $63ed: $04
    ei                                            ; $63ee: $fb
    dec b                                         ; $63ef: $05
    ld a, [c]                                     ; $63f0: $f2
    ei                                            ; $63f1: $fb
    db $e3                                        ; $63f2: $e3
    ld a, [$ffe3]                                 ; $63f3: $fa $e3 $ff
    di                                            ; $63f6: $f3
    ld sp, hl                                     ; $63f7: $f9
    di                                            ; $63f8: $f3
    nop                                           ; $63f9: $00
    ld [bc], a                                    ; $63fa: $02

jr_0e1_63fb:
    rrca                                          ; $63fb: $0f
    adc h                                         ; $63fc: $8c

jr_0e1_63fd:
    rla                                           ; $63fd: $17
    rra                                           ; $63fe: $1f
    add hl, de                                    ; $63ff: $19
    rra                                           ; $6400: $1f
    ld a, $2f                                     ; $6401: $3e $2f

jr_0e1_6403:
    ld a, a                                       ; $6403: $7f
    ld d, a                                       ; $6404: $57
    ld a, a                                       ; $6405: $7f
    ld e, c                                       ; $6406: $59
    ld a, a                                       ; $6407: $7f
    ld l, l                                       ; $6408: $6d
    ld [bc], a                                    ; $6409: $02
    ccf                                           ; $640a: $3f
    inc bc                                        ; $640b: $03
    rra                                           ; $640c: $1f
    adc l                                         ; $640d: $8d
    jr jr_0e1_6447                                ; $640e: $18 $37

    ccf                                           ; $6410: $3f
    ld l, b                                       ; $6411: $68
    ld a, a                                       ; $6412: $7f
    ld c, a                                       ; $6413: $4f
    ld a, a                                       ; $6414: $7f
    xor b                                         ; $6415: $a8
    rst $38                                       ; $6416: $ff
    cp b                                          ; $6417: $b8
    rst $38                                       ; $6418: $ff
    cp b                                          ; $6419: $b8
    rst $38                                       ; $641a: $ff
    ld [bc], a                                    ; $641b: $02
    db $10                                        ; $641c: $10
    adc [hl]                                      ; $641d: $8e
    inc c                                         ; $641e: $0c
    inc e                                         ; $641f: $1c
    ld d, $1e                                     ; $6420: $16 $1e
    inc c                                         ; $6422: $0c
    inc e                                         ; $6423: $1c
    ld e, $1a                                     ; $6424: $1e $1a
    ld e, $0a                                     ; $6426: $1e $0a
    ld e, $16                                     ; $6428: $1e $16
    inc e                                         ; $642a: $1c
    inc c                                         ; $642b: $0c
    inc b                                         ; $642c: $04
    jr jr_0e1_63d1                                ; $642d: $18 $a2

    inc c                                         ; $642f: $0c
    inc e                                         ; $6430: $1c
    ld d, $1e                                     ; $6431: $16 $1e
    ld [bc], a                                    ; $6433: $02
    ld e, $05                                     ; $6434: $1e $05
    rra                                           ; $6436: $1f
    dec c                                         ; $6437: $0d
    rra                                           ; $6438: $1f
    dec c                                         ; $6439: $0d
    rra                                           ; $643a: $1f
    ld c, a                                       ; $643b: $4f
    ld a, a                                       ; $643c: $7f
    ld c, [hl]                                    ; $643d: $4e
    ld a, a                                       ; $643e: $7f
    sbc a                                         ; $643f: $9f
    rst $38                                       ; $6440: $ff
    cp e                                          ; $6441: $bb
    rst $38                                       ; $6442: $ff
    push af                                       ; $6443: $f5
    rst $18                                       ; $6444: $df
    ld a, b                                       ; $6445: $78
    ld a, a                                       ; $6446: $7f

jr_0e1_6447:
    jr nc, jr_0e1_6488                            ; $6447: $30 $3f

    jr z, jr_0e1_648a                             ; $6449: $28 $3f

    ld d, b                                       ; $644b: $50
    ld a, a                                       ; $644c: $7f
    jr nz, jr_0e1_648e                            ; $644d: $20 $3f

    db $10                                        ; $644f: $10
    rra                                           ; $6450: $1f
    ld [bc], a                                    ; $6451: $02
    rrca                                          ; $6452: $0f
    add d                                         ; $6453: $82
    ld a, [bc]                                    ; $6454: $0a
    ld c, $02                                     ; $6455: $0e $02
    ld b, $04                                     ; $6457: $06 $04
    nop                                           ; $6459: $00
    sub [hl]                                      ; $645a: $96
    ld [hl-], a                                   ; $645b: $32
    ld a, [hl]                                    ; $645c: $7e
    ld a, d                                       ; $645d: $7a
    ld a, [hl]                                    ; $645e: $7e
    ld a, c                                       ; $645f: $79

jr_0e1_6460:
    ld c, a                                       ; $6460: $4f
    ld a, l                                       ; $6461: $7d
    rra                                           ; $6462: $1f
    ld a, a                                       ; $6463: $7f
    ld a, e                                       ; $6464: $7b
    ld l, [hl]                                    ; $6465: $6e
    ld a, [hl]                                    ; $6466: $7e
    inc b                                         ; $6467: $04
    ld a, h                                       ; $6468: $7c
    inc b                                         ; $6469: $04
    ld a, h                                       ; $646a: $7c
    inc b                                         ; $646b: $04
    ld a, h                                       ; $646c: $7c
    inc b                                         ; $646d: $04
    ld a, h                                       ; $646e: $7c
    ld [$0478], sp                                ; $646f: $08 $78 $04
    ld [hl], b                                    ; $6472: $70
    ld b, $00                                     ; $6473: $06 $00
    rst $38                                       ; $6475: $ff
    dec c                                         ; $6476: $0d
    inc b                                         ; $6477: $04
    ei                                            ; $6478: $fb
    dec b                                         ; $6479: $05
    ld a, [c]                                     ; $647a: $f2
    ei                                            ; $647b: $fb
    ld [c], a                                     ; $647c: $e2
    ld a, [$ffe2]                                 ; $647d: $fa $e2 $ff
    ld a, [c]                                     ; $6480: $f2
    ld sp, hl                                     ; $6481: $f9
    ld a, [c]                                     ; $6482: $f2
    nop                                           ; $6483: $00
    ld [bc], a                                    ; $6484: $02
    rrca                                          ; $6485: $0f
    adc h                                         ; $6486: $8c
    rla                                           ; $6487: $17

jr_0e1_6488:
    rra                                           ; $6488: $1f
    add hl, de                                    ; $6489: $19

jr_0e1_648a:
    rra                                           ; $648a: $1f
    ld a, $2f                                     ; $648b: $3e $2f
    ld a, a                                       ; $648d: $7f

jr_0e1_648e:
    ld d, a                                       ; $648e: $57
    ld a, a                                       ; $648f: $7f
    ld e, c                                       ; $6490: $59
    ld a, a                                       ; $6491: $7f
    ld l, l                                       ; $6492: $6d
    ld [bc], a                                    ; $6493: $02
    ccf                                           ; $6494: $3f
    inc bc                                        ; $6495: $03
    rra                                           ; $6496: $1f
    adc l                                         ; $6497: $8d
    jr jr_0e1_64d1                                ; $6498: $18 $37

    ccf                                           ; $649a: $3f
    ld l, b                                       ; $649b: $68
    ld a, a                                       ; $649c: $7f
    ld c, a                                       ; $649d: $4f
    ld a, a                                       ; $649e: $7f
    ld l, b                                       ; $649f: $68
    ld a, a                                       ; $64a0: $7f
    cp b                                          ; $64a1: $b8
    rst $38                                       ; $64a2: $ff
    cp b                                          ; $64a3: $b8
    rst $38                                       ; $64a4: $ff
    ld [bc], a                                    ; $64a5: $02
    db $10                                        ; $64a6: $10
    adc [hl]                                      ; $64a7: $8e
    inc c                                         ; $64a8: $0c
    inc e                                         ; $64a9: $1c
    ld d, $1e                                     ; $64aa: $16 $1e
    inc c                                         ; $64ac: $0c
    inc e                                         ; $64ad: $1c
    ld e, $1a                                     ; $64ae: $1e $1a
    ld e, $0a                                     ; $64b0: $1e $0a
    ld e, $16                                     ; $64b2: $1e $16
    inc e                                         ; $64b4: $1c
    inc c                                         ; $64b5: $0c
    inc b                                         ; $64b6: $04
    jr jr_0e1_6460                                ; $64b7: $18 $a7

    inc c                                         ; $64b9: $0c
    inc e                                         ; $64ba: $1c
    ld d, $1e                                     ; $64bb: $16 $1e
    ld [bc], a                                    ; $64bd: $02
    ld e, $01                                     ; $64be: $1e $01
    rra                                           ; $64c0: $1f
    dec c                                         ; $64c1: $0d
    rra                                           ; $64c2: $1f
    dec c                                         ; $64c3: $0d
    rra                                           ; $64c4: $1f
    sbc a                                         ; $64c5: $9f
    rst $38                                       ; $64c6: $ff
    sbc [hl]                                      ; $64c7: $9e
    rst $38                                       ; $64c8: $ff
    sbc a                                         ; $64c9: $9f
    rst $38                                       ; $64ca: $ff
    sbc e                                         ; $64cb: $9b
    rst $38                                       ; $64cc: $ff
    ld [hl], l                                    ; $64cd: $75
    ld a, a                                       ; $64ce: $7f
    jr c, jr_0e1_6510                             ; $64cf: $38 $3f

jr_0e1_64d1:
    jr nc, jr_0e1_6512                            ; $64d1: $30 $3f

    jr c, jr_0e1_6514                             ; $64d3: $38 $3f

    jr nc, jr_0e1_6516                            ; $64d5: $30 $3f

    jr z, jr_0e1_6518                             ; $64d7: $28 $3f

    jr nc, jr_0e1_651a                            ; $64d9: $30 $3f

    db $10                                        ; $64db: $10
    rra                                           ; $64dc: $1f
    dec bc                                        ; $64dd: $0b
    rrca                                          ; $64de: $0f
    ld a, [bc]                                    ; $64df: $0a
    dec b                                         ; $64e0: $05
    ld c, $87                                     ; $64e1: $0e $87
    ld [hl-], a                                   ; $64e3: $32
    ld a, [hl]                                    ; $64e4: $7e
    ld [hl], d                                    ; $64e5: $72
    ld a, [hl]                                    ; $64e6: $7e
    ld a, c                                       ; $64e7: $79

jr_0e1_64e8:
    rra                                           ; $64e8: $1f
    ld [hl], c                                    ; $64e9: $71
    ld [bc], a                                    ; $64ea: $02
    ld a, a                                       ; $64eb: $7f
    adc a                                         ; $64ec: $8f
    ld a, c                                       ; $64ed: $79
    ld c, [hl]                                    ; $64ee: $4e
    ld a, [hl]                                    ; $64ef: $7e
    inc c                                         ; $64f0: $0c
    ld a, h                                       ; $64f1: $7c
    inc b                                         ; $64f2: $04
    ld a, h                                       ; $64f3: $7c
    ld [bc], a                                    ; $64f4: $02
    ld a, [hl]                                    ; $64f5: $7e
    ld [bc], a                                    ; $64f6: $02
    ld a, [hl]                                    ; $64f7: $7e
    inc b                                         ; $64f8: $04
    ld a, h                                       ; $64f9: $7c
    jr jr_0e1_6574                                ; $64fa: $18 $78

    ld [bc], a                                    ; $64fc: $02
    ld [hl], b                                    ; $64fd: $70
    ld [bc], a                                    ; $64fe: $02
    jr nz, jr_0e1_6505                            ; $64ff: $20 $04

    nop                                           ; $6501: $00
    rst $38                                       ; $6502: $ff
    dec c                                         ; $6503: $0d
    inc b                                         ; $6504: $04

jr_0e1_6505:
    ei                                            ; $6505: $fb
    dec b                                         ; $6506: $05
    ld a, [c]                                     ; $6507: $f2
    ei                                            ; $6508: $fb
    db $e3                                        ; $6509: $e3
    ld a, [$ffe3]                                 ; $650a: $fa $e3 $ff
    di                                            ; $650d: $f3
    ld sp, hl                                     ; $650e: $f9
    di                                            ; $650f: $f3

jr_0e1_6510:
    nop                                           ; $6510: $00
    ld [bc], a                                    ; $6511: $02

jr_0e1_6512:
    rrca                                          ; $6512: $0f
    adc h                                         ; $6513: $8c

jr_0e1_6514:
    rla                                           ; $6514: $17
    rra                                           ; $6515: $1f

jr_0e1_6516:
    add hl, de                                    ; $6516: $19
    rra                                           ; $6517: $1f

jr_0e1_6518:
    ld a, $2f                                     ; $6518: $3e $2f

jr_0e1_651a:
    ld a, a                                       ; $651a: $7f
    ld d, a                                       ; $651b: $57
    ld a, a                                       ; $651c: $7f
    ld e, c                                       ; $651d: $59
    ld a, a                                       ; $651e: $7f
    ld l, l                                       ; $651f: $6d
    ld [bc], a                                    ; $6520: $02
    ccf                                           ; $6521: $3f
    inc bc                                        ; $6522: $03
    rra                                           ; $6523: $1f
    adc l                                         ; $6524: $8d
    jr jr_0e1_655e                                ; $6525: $18 $37

    ccf                                           ; $6527: $3f
    ld l, b                                       ; $6528: $68
    ld a, a                                       ; $6529: $7f
    ld c, a                                       ; $652a: $4f
    ld a, a                                       ; $652b: $7f
    xor b                                         ; $652c: $a8
    rst $38                                       ; $652d: $ff
    cp b                                          ; $652e: $b8
    rst $38                                       ; $652f: $ff
    cp b                                          ; $6530: $b8
    rst $38                                       ; $6531: $ff
    ld [bc], a                                    ; $6532: $02
    db $10                                        ; $6533: $10
    adc [hl]                                      ; $6534: $8e
    inc c                                         ; $6535: $0c
    inc e                                         ; $6536: $1c
    ld d, $1e                                     ; $6537: $16 $1e
    inc c                                         ; $6539: $0c
    inc e                                         ; $653a: $1c
    ld e, $1a                                     ; $653b: $1e $1a
    ld e, $0a                                     ; $653d: $1e $0a
    ld e, $16                                     ; $653f: $1e $16
    inc e                                         ; $6541: $1c
    inc c                                         ; $6542: $0c
    inc b                                         ; $6543: $04
    jr jr_0e1_64e8                                ; $6544: $18 $a2

    inc c                                         ; $6546: $0c
    inc e                                         ; $6547: $1c
    ld d, $1e                                     ; $6548: $16 $1e
    ld [bc], a                                    ; $654a: $02
    ld e, $05                                     ; $654b: $1e $05
    rra                                           ; $654d: $1f
    dec c                                         ; $654e: $0d
    rra                                           ; $654f: $1f
    dec c                                         ; $6550: $0d
    rra                                           ; $6551: $1f
    ld c, a                                       ; $6552: $4f
    ld a, a                                       ; $6553: $7f
    ld c, [hl]                                    ; $6554: $4e
    ld a, a                                       ; $6555: $7f
    sbc a                                         ; $6556: $9f
    rst $38                                       ; $6557: $ff
    cp e                                          ; $6558: $bb
    rst $38                                       ; $6559: $ff
    push af                                       ; $655a: $f5
    rst $18                                       ; $655b: $df
    ld a, b                                       ; $655c: $78
    ld a, a                                       ; $655d: $7f

jr_0e1_655e:
    jr nc, jr_0e1_659f                            ; $655e: $30 $3f

    jr z, jr_0e1_65a1                             ; $6560: $28 $3f

    jr nc, jr_0e1_65a3                            ; $6562: $30 $3f

    jr nz, jr_0e1_65a5                            ; $6564: $20 $3f

    db $10                                        ; $6566: $10
    rra                                           ; $6567: $1f
    ld [bc], a                                    ; $6568: $02
    rrca                                          ; $6569: $0f
    ld [bc], a                                    ; $656a: $02
    ld c, $06                                     ; $656b: $0e $06
    nop                                           ; $656d: $00
    sub [hl]                                      ; $656e: $96
    ld [hl-], a                                   ; $656f: $32
    ld a, [hl]                                    ; $6570: $7e
    ld a, d                                       ; $6571: $7a
    ld a, [hl]                                    ; $6572: $7e
    ld a, c                                       ; $6573: $79

jr_0e1_6574:
    ld e, a                                       ; $6574: $5f
    ld a, l                                       ; $6575: $7d
    rra                                           ; $6576: $1f
    ld a, a                                       ; $6577: $7f
    ld a, e                                       ; $6578: $7b
    ld l, [hl]                                    ; $6579: $6e
    ld a, [hl]                                    ; $657a: $7e
    inc b                                         ; $657b: $04
    ld a, h                                       ; $657c: $7c
    inc b                                         ; $657d: $04
    ld a, h                                       ; $657e: $7c
    ld [bc], a                                    ; $657f: $02
    ld a, [hl]                                    ; $6580: $7e
    inc b                                         ; $6581: $04
    ld a, h                                       ; $6582: $7c
    ld [$0278], sp                                ; $6583: $08 $78 $02
    ld [hl], b                                    ; $6586: $70
    add d                                         ; $6587: $82
    ld d, b                                       ; $6588: $50
    ld [hl], b                                    ; $6589: $70
    ld [bc], a                                    ; $658a: $02
    ld h, b                                       ; $658b: $60
    inc b                                         ; $658c: $04
    nop                                           ; $658d: $00
    rst $38                                       ; $658e: $ff
    dec c                                         ; $658f: $0d
    inc b                                         ; $6590: $04
    ei                                            ; $6591: $fb
    dec b                                         ; $6592: $05
    ld a, [c]                                     ; $6593: $f2
    ei                                            ; $6594: $fb
    ld [c], a                                     ; $6595: $e2
    ld a, [$ffe2]                                 ; $6596: $fa $e2 $ff
    ld a, [c]                                     ; $6599: $f2
    ld sp, hl                                     ; $659a: $f9
    ld a, [c]                                     ; $659b: $f2
    nop                                           ; $659c: $00
    ld [bc], a                                    ; $659d: $02
    rrca                                          ; $659e: $0f

jr_0e1_659f:
    add [hl]                                      ; $659f: $86
    inc sp                                        ; $65a0: $33

jr_0e1_65a1:
    ccf                                           ; $65a1: $3f
    ld e, [hl]                                    ; $65a2: $5e

jr_0e1_65a3:
    ld a, a                                       ; $65a3: $7f
    dec [hl]                                      ; $65a4: $35

jr_0e1_65a5:
    dec hl                                        ; $65a5: $2b
    inc bc                                        ; $65a6: $03
    ld a, a                                       ; $65a7: $7f
    sub l                                         ; $65a8: $95
    ld d, h                                       ; $65a9: $54
    ld a, a                                       ; $65aa: $7f
    ld l, l                                       ; $65ab: $6d
    ccf                                           ; $65ac: $3f
    jr nz, jr_0e1_65ce                            ; $65ad: $20 $1f

    ld [de], a                                    ; $65af: $12
    rra                                           ; $65b0: $1f
    ld d, $2f                                     ; $65b1: $16 $2f
    jr c, jr_0e1_661c                             ; $65b3: $38 $67

    ld a, a                                       ; $65b5: $7f
    ld h, a                                       ; $65b6: $67
    ld a, l                                       ; $65b7: $7d
    or a                                          ; $65b8: $b7
    rst $38                                       ; $65b9: $ff
    or l                                          ; $65ba: $b5
    rst $38                                       ; $65bb: $ff
    xor l                                         ; $65bc: $ad
    rst $38                                       ; $65bd: $ff
    ld [bc], a                                    ; $65be: $02
    db $10                                        ; $65bf: $10
    add c                                         ; $65c0: $81
    ld [$1803], sp                                ; $65c1: $08 $03 $18
    ld [bc], a                                    ; $65c4: $02
    inc e                                         ; $65c5: $1c
    xor [hl]                                      ; $65c6: $ae
    ld e, $16                                     ; $65c7: $1e $16
    ld e, $0e                                     ; $65c9: $1e $0e
    ld e, $16                                     ; $65cb: $1e $16
    inc e                                         ; $65cd: $1c

jr_0e1_65ce:
    inc b                                         ; $65ce: $04
    jr jr_0e1_65d9                                ; $65cf: $18 $08

    jr jr_0e1_65db                                ; $65d1: $18 $08

    inc d                                         ; $65d3: $14
    inc e                                         ; $65d4: $1c
    ld b, $1e                                     ; $65d5: $06 $1e
    ld b, $1e                                     ; $65d7: $06 $1e

jr_0e1_65d9:
    dec c                                         ; $65d9: $0d
    rra                                           ; $65da: $1f

jr_0e1_65db:
    dec c                                         ; $65db: $0d
    rra                                           ; $65dc: $1f
    dec d                                         ; $65dd: $15
    rra                                           ; $65de: $1f
    ld e, l                                       ; $65df: $5d
    ld a, a                                       ; $65e0: $7f
    cp e                                          ; $65e1: $bb
    rst $38                                       ; $65e2: $ff
    sbc e                                         ; $65e3: $9b
    rst $38                                       ; $65e4: $ff
    or l                                          ; $65e5: $b5
    rst $38                                       ; $65e6: $ff
    di                                            ; $65e7: $f3
    rst $18                                       ; $65e8: $df
    ld h, e                                       ; $65e9: $63
    ld a, a                                       ; $65ea: $7f
    dec h                                         ; $65eb: $25
    ccf                                           ; $65ec: $3f
    inc hl                                        ; $65ed: $23
    ccf                                           ; $65ee: $3f
    ld b, e                                       ; $65ef: $43
    ld a, a                                       ; $65f0: $7f
    ld b, l                                       ; $65f1: $45
    ld a, a                                       ; $65f2: $7f
    inc hl                                        ; $65f3: $23
    ccf                                           ; $65f4: $3f
    ld [bc], a                                    ; $65f5: $02
    rra                                           ; $65f6: $1f
    ld [bc], a                                    ; $65f7: $02
    rrca                                          ; $65f8: $0f
    add d                                         ; $65f9: $82
    ld a, [bc]                                    ; $65fa: $0a
    ld c, $02                                     ; $65fb: $0e $02
    inc c                                         ; $65fd: $0c
    ld [bc], a                                    ; $65fe: $02
    nop                                           ; $65ff: $00
    sub [hl]                                      ; $6600: $96
    ld c, d                                       ; $6601: $4a
    ld a, [hl]                                    ; $6602: $7e
    ld e, l                                       ; $6603: $5d
    ld a, a                                       ; $6604: $7f
    ld c, c                                       ; $6605: $49
    ld a, a                                       ; $6606: $7f
    ld c, l                                       ; $6607: $4d
    ld a, a                                       ; $6608: $7f
    ld c, a                                       ; $6609: $4f
    ld a, e                                       ; $660a: $7b
    ld b, [hl]                                    ; $660b: $46
    ld a, [hl]                                    ; $660c: $7e
    ld b, h                                       ; $660d: $44
    ld a, h                                       ; $660e: $7c
    ld b, h                                       ; $660f: $44
    ld a, h                                       ; $6610: $7c
    ld b, d                                       ; $6611: $42
    ld a, [hl]                                    ; $6612: $7e
    ld b, d                                       ; $6613: $42
    ld a, [hl]                                    ; $6614: $7e
    ld b, h                                       ; $6615: $44
    ld a, h                                       ; $6616: $7c
    ld [bc], a                                    ; $6617: $02
    ld a, b                                       ; $6618: $78
    add h                                         ; $6619: $84
    ld d, b                                       ; $661a: $50
    ld [hl], b                                    ; $661b: $70

jr_0e1_661c:
    ld d, b                                       ; $661c: $50
    ld [hl], b                                    ; $661d: $70
    ld [bc], a                                    ; $661e: $02
    jr nc, jr_0e1_6623                            ; $661f: $30 $02

    nop                                           ; $6621: $00
    rst $38                                       ; $6622: $ff

jr_0e1_6623:
    dec c                                         ; $6623: $0d
    inc b                                         ; $6624: $04
    ei                                            ; $6625: $fb
    dec b                                         ; $6626: $05
    ld a, [c]                                     ; $6627: $f2
    ei                                            ; $6628: $fb
    ld [c], a                                     ; $6629: $e2
    ld a, [$ffe2]                                 ; $662a: $fa $e2 $ff
    ld a, [c]                                     ; $662d: $f2
    ld sp, hl                                     ; $662e: $f9
    ld a, [c]                                     ; $662f: $f2
    nop                                           ; $6630: $00
    ld [bc], a                                    ; $6631: $02
    rrca                                          ; $6632: $0f
    add [hl]                                      ; $6633: $86
    inc sp                                        ; $6634: $33
    ccf                                           ; $6635: $3f
    ld e, [hl]                                    ; $6636: $5e
    ld a, a                                       ; $6637: $7f
    dec [hl]                                      ; $6638: $35
    dec hl                                        ; $6639: $2b
    inc bc                                        ; $663a: $03
    ld a, a                                       ; $663b: $7f
    sub l                                         ; $663c: $95
    ld d, h                                       ; $663d: $54
    ld a, a                                       ; $663e: $7f
    ld l, l                                       ; $663f: $6d
    ccf                                           ; $6640: $3f
    jr nz, jr_0e1_6662                            ; $6641: $20 $1f

    ld [de], a                                    ; $6643: $12
    rra                                           ; $6644: $1f
    ld d, $2f                                     ; $6645: $16 $2f
    jr c, jr_0e1_66b0                             ; $6647: $38 $67

    ld a, a                                       ; $6649: $7f
    ld h, a                                       ; $664a: $67
    ld a, l                                       ; $664b: $7d
    and a                                         ; $664c: $a7
    rst $38                                       ; $664d: $ff
    or l                                          ; $664e: $b5
    rst $38                                       ; $664f: $ff
    and l                                         ; $6650: $a5
    rst $38                                       ; $6651: $ff
    ld [bc], a                                    ; $6652: $02
    db $10                                        ; $6653: $10
    add c                                         ; $6654: $81
    ld [$1803], sp                                ; $6655: $08 $03 $18
    ld [bc], a                                    ; $6658: $02
    inc e                                         ; $6659: $1c
    xor [hl]                                      ; $665a: $ae
    ld e, $16                                     ; $665b: $1e $16
    ld e, $0e                                     ; $665d: $1e $0e
    ld e, $16                                     ; $665f: $1e $16
    inc e                                         ; $6661: $1c

jr_0e1_6662:
    inc b                                         ; $6662: $04
    jr jr_0e1_666d                                ; $6663: $18 $08

    jr jr_0e1_666f                                ; $6665: $18 $08

    inc d                                         ; $6667: $14
    inc e                                         ; $6668: $1c
    ld b, $1e                                     ; $6669: $06 $1e
    ld b, $1e                                     ; $666b: $06 $1e

jr_0e1_666d:
    dec c                                         ; $666d: $0d
    rra                                           ; $666e: $1f

jr_0e1_666f:
    dec d                                         ; $666f: $15
    rra                                           ; $6670: $1f
    dec d                                         ; $6671: $15
    rra                                           ; $6672: $1f
    ld d, l                                       ; $6673: $55
    ld a, a                                       ; $6674: $7f
    cp a                                          ; $6675: $bf
    rst $38                                       ; $6676: $ff
    sbc c                                         ; $6677: $99
    rst $38                                       ; $6678: $ff
    cp e                                          ; $6679: $bb
    rst $38                                       ; $667a: $ff
    cp c                                          ; $667b: $b9
    rst $18                                       ; $667c: $df
    ld [hl], c                                    ; $667d: $71
    ld e, a                                       ; $667e: $5f
    ld [hl-], a                                   ; $667f: $32
    ccf                                           ; $6680: $3f
    ld hl, $213f                                  ; $6681: $21 $3f $21
    ccf                                           ; $6684: $3f
    ld [hl+], a                                   ; $6685: $22
    ccf                                           ; $6686: $3f
    ld hl, $023f                                  ; $6687: $21 $3f $02
    rra                                           ; $668a: $1f
    ld [bc], a                                    ; $668b: $02
    rrca                                          ; $668c: $0f
    ld [bc], a                                    ; $668d: $02
    ld b, $04                                     ; $668e: $06 $04
    nop                                           ; $6690: $00
    sbc b                                         ; $6691: $98
    ld c, l                                       ; $6692: $4d
    ld a, a                                       ; $6693: $7f
    ld e, c                                       ; $6694: $59
    ld a, a                                       ; $6695: $7f
    ld c, c                                       ; $6696: $49
    ld a, a                                       ; $6697: $7f
    ld c, a                                       ; $6698: $4f
    ld a, l                                       ; $6699: $7d
    ld c, [hl]                                    ; $669a: $4e
    ld a, [hl]                                    ; $669b: $7e
    ld h, h                                       ; $669c: $64
    ld a, h                                       ; $669d: $7c
    ld h, h                                       ; $669e: $64
    ld a, h                                       ; $669f: $7c
    ld h, d                                       ; $66a0: $62
    ld a, [hl]                                    ; $66a1: $7e
    ld h, d                                       ; $66a2: $62
    ld a, [hl]                                    ; $66a3: $7e
    ld h, d                                       ; $66a4: $62
    ld a, [hl]                                    ; $66a5: $7e
    ld [hl], h                                    ; $66a6: $74
    ld a, h                                       ; $66a7: $7c
    ld a, b                                       ; $66a8: $78
    ld e, b                                       ; $66a9: $58
    ld [bc], a                                    ; $66aa: $02
    ld [hl], b                                    ; $66ab: $70
    add c                                         ; $66ac: $81
    ld d, b                                       ; $66ad: $50
    inc bc                                        ; $66ae: $03
    ld [hl], b                                    ; $66af: $70

jr_0e1_66b0:
    ld [bc], a                                    ; $66b0: $02
    ld h, b                                       ; $66b1: $60
    rst $38                                       ; $66b2: $ff
    dec c                                         ; $66b3: $0d
    inc b                                         ; $66b4: $04
    ei                                            ; $66b5: $fb
    dec b                                         ; $66b6: $05
    ld a, [c]                                     ; $66b7: $f2
    ei                                            ; $66b8: $fb
    db $e3                                        ; $66b9: $e3
    ld a, [$ffe3]                                 ; $66ba: $fa $e3 $ff
    di                                            ; $66bd: $f3
    ld sp, hl                                     ; $66be: $f9
    di                                            ; $66bf: $f3
    nop                                           ; $66c0: $00
    ld [bc], a                                    ; $66c1: $02
    rrca                                          ; $66c2: $0f
    add [hl]                                      ; $66c3: $86
    inc sp                                        ; $66c4: $33
    ccf                                           ; $66c5: $3f
    ld e, [hl]                                    ; $66c6: $5e
    ld a, a                                       ; $66c7: $7f
    dec [hl]                                      ; $66c8: $35
    dec hl                                        ; $66c9: $2b
    inc bc                                        ; $66ca: $03
    ld a, a                                       ; $66cb: $7f
    sub l                                         ; $66cc: $95
    ld d, h                                       ; $66cd: $54
    ld a, a                                       ; $66ce: $7f
    ld l, l                                       ; $66cf: $6d
    ccf                                           ; $66d0: $3f
    jr nz, jr_0e1_66f2                            ; $66d1: $20 $1f

    ld [de], a                                    ; $66d3: $12
    rra                                           ; $66d4: $1f
    ld d, $2f                                     ; $66d5: $16 $2f
    jr c, jr_0e1_6740                             ; $66d7: $38 $67

    ld a, a                                       ; $66d9: $7f
    ld h, a                                       ; $66da: $67
    ld a, l                                       ; $66db: $7d
    or a                                          ; $66dc: $b7
    rst $38                                       ; $66dd: $ff
    or l                                          ; $66de: $b5
    rst $38                                       ; $66df: $ff
    xor l                                         ; $66e0: $ad
    rst $38                                       ; $66e1: $ff
    ld [bc], a                                    ; $66e2: $02
    db $10                                        ; $66e3: $10
    add c                                         ; $66e4: $81
    ld [$1803], sp                                ; $66e5: $08 $03 $18
    ld [bc], a                                    ; $66e8: $02
    inc e                                         ; $66e9: $1c
    xor h                                         ; $66ea: $ac
    ld e, $16                                     ; $66eb: $1e $16
    ld e, $0e                                     ; $66ed: $1e $0e
    ld e, $16                                     ; $66ef: $1e $16
    inc e                                         ; $66f1: $1c

jr_0e1_66f2:
    inc b                                         ; $66f2: $04
    jr jr_0e1_66fd                                ; $66f3: $18 $08

    jr jr_0e1_66ff                                ; $66f5: $18 $08

    inc d                                         ; $66f7: $14
    inc e                                         ; $66f8: $1c
    ld b, $1e                                     ; $66f9: $06 $1e
    ld b, $1e                                     ; $66fb: $06 $1e

jr_0e1_66fd:
    dec c                                         ; $66fd: $0d
    rra                                           ; $66fe: $1f

jr_0e1_66ff:
    dec c                                         ; $66ff: $0d
    rra                                           ; $6700: $1f
    dec d                                         ; $6701: $15
    rra                                           ; $6702: $1f
    ld e, l                                       ; $6703: $5d
    ld a, a                                       ; $6704: $7f
    cp e                                          ; $6705: $bb
    rst $38                                       ; $6706: $ff
    sbc e                                         ; $6707: $9b
    rst $38                                       ; $6708: $ff
    or l                                          ; $6709: $b5
    rst $38                                       ; $670a: $ff
    di                                            ; $670b: $f3
    rst $18                                       ; $670c: $df
    ld h, e                                       ; $670d: $63
    ld a, a                                       ; $670e: $7f
    dec h                                         ; $670f: $25
    ccf                                           ; $6710: $3f
    inc hl                                        ; $6711: $23
    ccf                                           ; $6712: $3f
    ld b, e                                       ; $6713: $43
    ld a, a                                       ; $6714: $7f
    dec h                                         ; $6715: $25
    ccf                                           ; $6716: $3f
    ld [bc], a                                    ; $6717: $02
    rra                                           ; $6718: $1f
    add d                                         ; $6719: $82
    dec bc                                        ; $671a: $0b
    rrca                                          ; $671b: $0f
    ld [bc], a                                    ; $671c: $02
    inc c                                         ; $671d: $0c
    ld b, $00                                     ; $671e: $06 $00
    sub h                                         ; $6720: $94
    ld c, d                                       ; $6721: $4a
    ld a, [hl]                                    ; $6722: $7e
    ld e, l                                       ; $6723: $5d
    ld a, a                                       ; $6724: $7f
    ld c, c                                       ; $6725: $49
    ld a, a                                       ; $6726: $7f
    ld c, l                                       ; $6727: $4d
    ld a, a                                       ; $6728: $7f
    ld c, a                                       ; $6729: $4f
    ld a, e                                       ; $672a: $7b
    ld b, [hl]                                    ; $672b: $46
    ld a, [hl]                                    ; $672c: $7e
    ld b, h                                       ; $672d: $44
    ld a, h                                       ; $672e: $7c
    ld b, d                                       ; $672f: $42
    ld a, [hl]                                    ; $6730: $7e
    ld b, d                                       ; $6731: $42
    ld a, [hl]                                    ; $6732: $7e
    ld b, h                                       ; $6733: $44
    ld a, h                                       ; $6734: $7c
    ld [bc], a                                    ; $6735: $02
    ld a, b                                       ; $6736: $78
    add e                                         ; $6737: $83
    ld d, b                                       ; $6738: $50
    ld [hl], b                                    ; $6739: $70
    ld d, b                                       ; $673a: $50
    inc bc                                        ; $673b: $03
    ld [hl], b                                    ; $673c: $70
    inc b                                         ; $673d: $04
    nop                                           ; $673e: $00
    rst $38                                       ; $673f: $ff

jr_0e1_6740:
    dec c                                         ; $6740: $0d
    inc b                                         ; $6741: $04
    ei                                            ; $6742: $fb
    dec b                                         ; $6743: $05
    ld a, [c]                                     ; $6744: $f2
    ei                                            ; $6745: $fb
    ld [c], a                                     ; $6746: $e2
    ld a, [$ffe2]                                 ; $6747: $fa $e2 $ff
    ld a, [c]                                     ; $674a: $f2
    ld sp, hl                                     ; $674b: $f9
    ld a, [c]                                     ; $674c: $f2
    nop                                           ; $674d: $00
    ld [bc], a                                    ; $674e: $02
    rrca                                          ; $674f: $0f
    add [hl]                                      ; $6750: $86
    inc sp                                        ; $6751: $33
    ccf                                           ; $6752: $3f
    ld e, [hl]                                    ; $6753: $5e
    ld a, a                                       ; $6754: $7f
    dec [hl]                                      ; $6755: $35
    dec hl                                        ; $6756: $2b
    inc bc                                        ; $6757: $03
    ld a, a                                       ; $6758: $7f
    sub l                                         ; $6759: $95
    ld d, h                                       ; $675a: $54
    ld a, a                                       ; $675b: $7f
    ld l, l                                       ; $675c: $6d
    ccf                                           ; $675d: $3f
    jr nz, jr_0e1_677f                            ; $675e: $20 $1f

    ld [de], a                                    ; $6760: $12
    rra                                           ; $6761: $1f
    ld d, $2f                                     ; $6762: $16 $2f
    jr c, jr_0e1_67cd                             ; $6764: $38 $67

    ld a, a                                       ; $6766: $7f
    ld h, a                                       ; $6767: $67
    ld a, l                                       ; $6768: $7d
    or a                                          ; $6769: $b7
    rst $38                                       ; $676a: $ff
    xor l                                         ; $676b: $ad
    rst $38                                       ; $676c: $ff
    xor l                                         ; $676d: $ad
    rst $38                                       ; $676e: $ff
    ld [bc], a                                    ; $676f: $02
    db $10                                        ; $6770: $10
    add c                                         ; $6771: $81
    ld [$1803], sp                                ; $6772: $08 $03 $18
    ld [bc], a                                    ; $6775: $02
    inc e                                         ; $6776: $1c
    or b                                          ; $6777: $b0
    ld e, $16                                     ; $6778: $1e $16
    ld e, $0e                                     ; $677a: $1e $0e
    ld e, $16                                     ; $677c: $1e $16
    inc e                                         ; $677e: $1c

jr_0e1_677f:
    inc b                                         ; $677f: $04
    jr jr_0e1_678a                                ; $6780: $18 $08

    jr jr_0e1_678c                                ; $6782: $18 $08

    inc d                                         ; $6784: $14
    inc e                                         ; $6785: $1c
    ld b, $1e                                     ; $6786: $06 $1e
    ld b, $1e                                     ; $6788: $06 $1e

jr_0e1_678a:
    dec b                                         ; $678a: $05
    rra                                           ; $678b: $1f

jr_0e1_678c:
    dec c                                         ; $678c: $0d
    rra                                           ; $678d: $1f
    dec c                                         ; $678e: $0d
    rra                                           ; $678f: $1f
    cp l                                          ; $6790: $bd
    rst $38                                       ; $6791: $ff
    sbc e                                         ; $6792: $9b
    rst $38                                       ; $6793: $ff
    sbc e                                         ; $6794: $9b
    rst $38                                       ; $6795: $ff
    push af                                       ; $6796: $f5
    cp a                                          ; $6797: $bf
    ld [hl], e                                    ; $6798: $73
    ld a, a                                       ; $6799: $7f
    daa                                           ; $679a: $27
    ccf                                           ; $679b: $3f
    dec hl                                        ; $679c: $2b
    ccf                                           ; $679d: $3f
    ld b, a                                       ; $679e: $47
    ld a, a                                       ; $679f: $7f
    ld b, a                                       ; $67a0: $47
    ld a, a                                       ; $67a1: $7f
    ld c, e                                       ; $67a2: $4b
    ld a, a                                       ; $67a3: $7f
    cpl                                           ; $67a4: $2f
    ccf                                           ; $67a5: $3f
    rra                                           ; $67a6: $1f
    dec de                                        ; $67a7: $1b
    ld [bc], a                                    ; $67a8: $02
    rrca                                          ; $67a9: $0f
    add c                                         ; $67aa: $81
    ld a, [bc]                                    ; $67ab: $0a
    inc bc                                        ; $67ac: $03
    ld c, $02                                     ; $67ad: $0e $02
    ld b, $96                                     ; $67af: $06 $96
    ld l, d                                       ; $67b1: $6a
    ld a, [hl]                                    ; $67b2: $7e
    ld e, l                                       ; $67b3: $5d
    ld a, a                                       ; $67b4: $7f
    ld c, c                                       ; $67b5: $49
    ld a, a                                       ; $67b6: $7f
    dec c                                         ; $67b7: $0d
    ld a, a                                       ; $67b8: $7f
    dec c                                         ; $67b9: $0d
    ld a, e                                       ; $67ba: $7b
    ld c, $7a                                     ; $67bb: $0e $7a
    inc c                                         ; $67bd: $0c
    ld a, h                                       ; $67be: $7c
    inc b                                         ; $67bf: $04
    ld a, h                                       ; $67c0: $7c
    inc b                                         ; $67c1: $04
    ld a, h                                       ; $67c2: $7c
    inc b                                         ; $67c3: $04
    ld a, h                                       ; $67c4: $7c
    inc b                                         ; $67c5: $04
    ld a, h                                       ; $67c6: $7c
    ld [bc], a                                    ; $67c7: $02
    ld a, b                                       ; $67c8: $78
    ld [bc], a                                    ; $67c9: $02
    ld [hl], b                                    ; $67ca: $70
    ld [bc], a                                    ; $67cb: $02
    ld h, b                                       ; $67cc: $60

jr_0e1_67cd:
    inc b                                         ; $67cd: $04
    nop                                           ; $67ce: $00
    rst $38                                       ; $67cf: $ff
    dec c                                         ; $67d0: $0d
    inc b                                         ; $67d1: $04
    ei                                            ; $67d2: $fb
    dec b                                         ; $67d3: $05
    ld a, [c]                                     ; $67d4: $f2
    ei                                            ; $67d5: $fb
    db $e3                                        ; $67d6: $e3
    ld a, [$ffe3]                                 ; $67d7: $fa $e3 $ff
    di                                            ; $67da: $f3
    ld sp, hl                                     ; $67db: $f9
    di                                            ; $67dc: $f3
    nop                                           ; $67dd: $00
    ld [bc], a                                    ; $67de: $02
    rrca                                          ; $67df: $0f
    add [hl]                                      ; $67e0: $86
    inc sp                                        ; $67e1: $33
    ccf                                           ; $67e2: $3f
    ld e, [hl]                                    ; $67e3: $5e
    ld a, a                                       ; $67e4: $7f
    dec [hl]                                      ; $67e5: $35
    dec hl                                        ; $67e6: $2b
    inc bc                                        ; $67e7: $03
    ld a, a                                       ; $67e8: $7f
    sub l                                         ; $67e9: $95
    ld d, h                                       ; $67ea: $54
    ld a, a                                       ; $67eb: $7f
    ld l, l                                       ; $67ec: $6d
    ccf                                           ; $67ed: $3f
    jr nz, jr_0e1_680f                            ; $67ee: $20 $1f

    ld [de], a                                    ; $67f0: $12
    rra                                           ; $67f1: $1f
    ld d, $2f                                     ; $67f2: $16 $2f
    jr c, jr_0e1_685d                             ; $67f4: $38 $67

    ld a, a                                       ; $67f6: $7f
    ld h, a                                       ; $67f7: $67
    ld a, l                                       ; $67f8: $7d
    or a                                          ; $67f9: $b7
    rst $38                                       ; $67fa: $ff
    or l                                          ; $67fb: $b5
    rst $38                                       ; $67fc: $ff
    xor l                                         ; $67fd: $ad
    rst $38                                       ; $67fe: $ff
    ld [bc], a                                    ; $67ff: $02
    db $10                                        ; $6800: $10
    add c                                         ; $6801: $81
    ld [$1803], sp                                ; $6802: $08 $03 $18
    ld [bc], a                                    ; $6805: $02
    inc e                                         ; $6806: $1c
    xor h                                         ; $6807: $ac
    ld e, $16                                     ; $6808: $1e $16
    ld e, $0e                                     ; $680a: $1e $0e
    ld e, $16                                     ; $680c: $1e $16
    inc e                                         ; $680e: $1c

jr_0e1_680f:
    inc b                                         ; $680f: $04
    jr jr_0e1_681a                                ; $6810: $18 $08

    jr jr_0e1_681c                                ; $6812: $18 $08

    inc d                                         ; $6814: $14
    inc e                                         ; $6815: $1c
    ld b, $1e                                     ; $6816: $06 $1e
    ld b, $1e                                     ; $6818: $06 $1e

jr_0e1_681a:
    dec c                                         ; $681a: $0d
    rra                                           ; $681b: $1f

jr_0e1_681c:
    dec c                                         ; $681c: $0d
    rra                                           ; $681d: $1f
    dec d                                         ; $681e: $15
    rra                                           ; $681f: $1f
    ld e, l                                       ; $6820: $5d
    ld a, a                                       ; $6821: $7f
    cp e                                          ; $6822: $bb
    rst $38                                       ; $6823: $ff
    sbc e                                         ; $6824: $9b
    rst $38                                       ; $6825: $ff
    or l                                          ; $6826: $b5
    rst $38                                       ; $6827: $ff
    di                                            ; $6828: $f3
    rst $18                                       ; $6829: $df
    ld h, e                                       ; $682a: $63
    ld a, a                                       ; $682b: $7f
    dec h                                         ; $682c: $25
    ccf                                           ; $682d: $3f
    ld b, e                                       ; $682e: $43
    ld a, a                                       ; $682f: $7f
    ld b, e                                       ; $6830: $43
    ld a, a                                       ; $6831: $7f
    dec h                                         ; $6832: $25
    ccf                                           ; $6833: $3f
    ld [bc], a                                    ; $6834: $02
    rra                                           ; $6835: $1f
    add e                                         ; $6836: $83
    dec bc                                        ; $6837: $0b
    rrca                                          ; $6838: $0f
    ld a, [bc]                                    ; $6839: $0a
    inc bc                                        ; $683a: $03
    ld c, $04                                     ; $683b: $0e $04
    nop                                           ; $683d: $00
    sub h                                         ; $683e: $94
    ld c, d                                       ; $683f: $4a
    ld a, [hl]                                    ; $6840: $7e
    ld e, l                                       ; $6841: $5d
    ld a, a                                       ; $6842: $7f
    ld c, c                                       ; $6843: $49
    ld a, a                                       ; $6844: $7f
    ld c, l                                       ; $6845: $4d
    ld a, a                                       ; $6846: $7f
    ld c, a                                       ; $6847: $4f
    ld a, e                                       ; $6848: $7b
    ld b, [hl]                                    ; $6849: $46
    ld a, [hl]                                    ; $684a: $7e
    ld b, h                                       ; $684b: $44
    ld a, h                                       ; $684c: $7c
    ld b, h                                       ; $684d: $44
    ld a, h                                       ; $684e: $7c
    ld b, d                                       ; $684f: $42
    ld a, [hl]                                    ; $6850: $7e
    ld b, h                                       ; $6851: $44
    ld a, h                                       ; $6852: $7c
    ld [bc], a                                    ; $6853: $02
    ld a, b                                       ; $6854: $78
    add d                                         ; $6855: $82
    ld d, b                                       ; $6856: $50
    ld [hl], b                                    ; $6857: $70
    ld [bc], a                                    ; $6858: $02
    jr nc, jr_0e1_6861                            ; $6859: $30 $06

    nop                                           ; $685b: $00
    rst $38                                       ; $685c: $ff

jr_0e1_685d:
    dec c                                         ; $685d: $0d
    inc b                                         ; $685e: $04
    ei                                            ; $685f: $fb
    dec b                                         ; $6860: $05

jr_0e1_6861:
    ld a, [c]                                     ; $6861: $f2
    ei                                            ; $6862: $fb
    db $e3                                        ; $6863: $e3
    ei                                            ; $6864: $fb
    db $e4                                        ; $6865: $e4
    cp $f3                                        ; $6866: $fe $f3
    ld a, [$fdf3]                                 ; $6868: $fa $f3 $fd
    ld [bc], a                                    ; $686b: $02
    ccf                                           ; $686c: $3f
    sbc [hl]                                      ; $686d: $9e
    ld [hl], c                                    ; $686e: $71
    ld a, a                                       ; $686f: $7f
    ld e, a                                       ; $6870: $5f
    ld a, [hl]                                    ; $6871: $7e
    db $eb                                        ; $6872: $eb
    push af                                       ; $6873: $f5
    rst $38                                       ; $6874: $ff
    cp [hl]                                       ; $6875: $be
    rst $38                                       ; $6876: $ff
    db $db                                        ; $6877: $db
    ld a, a                                       ; $6878: $7f
    ld [hl], b                                    ; $6879: $70
    ccf                                           ; $687a: $3f
    inc a                                         ; $687b: $3c
    rrca                                          ; $687c: $0f
    ld [$1c1f], sp                                ; $687d: $08 $1f $1c
    dec de                                        ; $6880: $1b
    rra                                           ; $6881: $1f
    inc [hl]                                      ; $6882: $34
    ccf                                           ; $6883: $3f
    ld [hl-], a                                   ; $6884: $32
    ccf                                           ; $6885: $3f
    daa                                           ; $6886: $27
    ccf                                           ; $6887: $3f
    dec h                                         ; $6888: $25
    ccf                                           ; $6889: $3f
    ld c, l                                       ; $688a: $4d
    ld a, a                                       ; $688b: $7f
    inc b                                         ; $688c: $04
    inc b                                         ; $688d: $04
    ld [bc], a                                    ; $688e: $02
    ld b, $88                                     ; $688f: $06 $88
    rlca                                          ; $6891: $07
    inc bc                                        ; $6892: $03
    ld b, $02                                     ; $6893: $06 $02
    rlca                                          ; $6895: $07
    ld bc, $0206                                  ; $6896: $01 $06 $02
    ld [bc], a                                    ; $6899: $02
    ld b, $04                                     ; $689a: $06 $04
    inc b                                         ; $689c: $04
    ld [bc], a                                    ; $689d: $02
    ld b, $86                                     ; $689e: $06 $86
    ld [bc], a                                    ; $68a0: $02
    ld b, $03                                     ; $68a1: $06 $03
    rlca                                          ; $68a3: $07
    inc bc                                        ; $68a4: $03
    rlca                                          ; $68a5: $07
    ld [bc], a                                    ; $68a6: $02
    ld b, $9e                                     ; $68a7: $06 $9e
    ld d, d                                       ; $68a9: $52
    cp $20                                        ; $68aa: $fe $20
    jr nc, jr_0e1_6919                            ; $68ac: $30 $6b

    ld a, a                                       ; $68ae: $7f
    ld [c], a                                     ; $68af: $e2
    cp a                                          ; $68b0: $bf
    halt                                          ; $68b1: $76
    ld a, a                                       ; $68b2: $7f
    ld a, [hl]                                    ; $68b3: $7e
    ld [hl], e                                    ; $68b4: $73
    inc l                                         ; $68b5: $2c
    ccf                                           ; $68b6: $3f
    jr nz, @+$41                                  ; $68b7: $20 $3f

    ld b, b                                       ; $68b9: $40
    ld a, a                                       ; $68ba: $7f
    ld b, b                                       ; $68bb: $40
    ld a, a                                       ; $68bc: $7f
    ld b, b                                       ; $68bd: $40
    ld a, a                                       ; $68be: $7f
    ld h, b                                       ; $68bf: $60
    ld a, a                                       ; $68c0: $7f
    inc e                                         ; $68c1: $1c
    rra                                           ; $68c2: $1f
    dec bc                                        ; $68c3: $0b
    rrca                                          ; $68c4: $0f
    dec c                                         ; $68c5: $0d
    rrca                                          ; $68c6: $0f
    ld [bc], a                                    ; $68c7: $02
    dec bc                                        ; $68c8: $0b
    inc b                                         ; $68c9: $04
    nop                                           ; $68ca: $00
    sub [hl]                                      ; $68cb: $96
    ld [bc], a                                    ; $68cc: $02
    ld b, $02                                     ; $68cd: $06 $02
    ld b, $05                                     ; $68cf: $06 $05
    rlca                                          ; $68d1: $07

jr_0e1_68d2:
    inc bc                                        ; $68d2: $03
    rlca                                          ; $68d3: $07
    inc bc                                        ; $68d4: $03
    rlca                                          ; $68d5: $07
    dec b                                         ; $68d6: $05
    rlca                                          ; $68d7: $07
    inc bc                                        ; $68d8: $03
    rlca                                          ; $68d9: $07
    inc bc                                        ; $68da: $03
    rlca                                          ; $68db: $07
    dec b                                         ; $68dc: $05
    rlca                                          ; $68dd: $07
    inc bc                                        ; $68de: $03
    rlca                                          ; $68df: $07
    ld [bc], a                                    ; $68e0: $02
    ld b, $02                                     ; $68e1: $06 $02
    inc b                                         ; $68e3: $04
    ld [bc], a                                    ; $68e4: $02
    nop                                           ; $68e5: $00
    ld [bc], a                                    ; $68e6: $02
    inc b                                         ; $68e7: $04
    ld [bc], a                                    ; $68e8: $02
    nop                                           ; $68e9: $00
    rst $38                                       ; $68ea: $ff
    dec c                                         ; $68eb: $0d
    inc b                                         ; $68ec: $04
    ei                                            ; $68ed: $fb
    dec b                                         ; $68ee: $05
    ld a, [c]                                     ; $68ef: $f2
    ei                                            ; $68f0: $fb
    db $e3                                        ; $68f1: $e3
    ei                                            ; $68f2: $fb
    db $e4                                        ; $68f3: $e4
    cp $f3                                        ; $68f4: $fe $f3
    ld a, [$fef3]                                 ; $68f6: $fa $f3 $fe
    ld [bc], a                                    ; $68f9: $02
    ccf                                           ; $68fa: $3f
    sbc [hl]                                      ; $68fb: $9e
    ld [hl], c                                    ; $68fc: $71
    ld a, a                                       ; $68fd: $7f
    ld e, a                                       ; $68fe: $5f
    ld a, [hl]                                    ; $68ff: $7e
    db $eb                                        ; $6900: $eb
    push af                                       ; $6901: $f5
    rst $38                                       ; $6902: $ff
    cp [hl]                                       ; $6903: $be
    rst $38                                       ; $6904: $ff
    db $db                                        ; $6905: $db
    ld a, a                                       ; $6906: $7f
    ld [hl], b                                    ; $6907: $70
    ccf                                           ; $6908: $3f
    inc a                                         ; $6909: $3c
    rrca                                          ; $690a: $0f
    ld [$1c1f], sp                                ; $690b: $08 $1f $1c
    dec de                                        ; $690e: $1b
    rra                                           ; $690f: $1f
    inc d                                         ; $6910: $14
    rra                                           ; $6911: $1f
    ld [hl-], a                                   ; $6912: $32
    ccf                                           ; $6913: $3f
    ld h, $3f                                     ; $6914: $26 $3f
    dec h                                         ; $6916: $25
    ccf                                           ; $6917: $3f
    dec h                                         ; $6918: $25

jr_0e1_6919:
    ccf                                           ; $6919: $3f
    inc b                                         ; $691a: $04
    inc b                                         ; $691b: $04
    ld [bc], a                                    ; $691c: $02
    ld b, $88                                     ; $691d: $06 $88
    rlca                                          ; $691f: $07
    inc bc                                        ; $6920: $03
    ld b, $02                                     ; $6921: $06 $02
    rlca                                          ; $6923: $07
    ld bc, $0206                                  ; $6924: $01 $06 $02
    ld [bc], a                                    ; $6927: $02
    ld b, $06                                     ; $6928: $06 $06
    inc b                                         ; $692a: $04
    add [hl]                                      ; $692b: $86
    ld [bc], a                                    ; $692c: $02
    ld b, $03                                     ; $692d: $06 $03
    rlca                                          ; $692f: $07
    inc bc                                        ; $6930: $03
    rlca                                          ; $6931: $07
    ld [bc], a                                    ; $6932: $02
    ld b, $82                                     ; $6933: $06 $82
    ld d, d                                       ; $6935: $52
    cp $02                                        ; $6936: $fe $02
    jr nc, jr_0e1_68d2                            ; $6938: $30 $98

    ld h, a                                       ; $693a: $67
    ld a, a                                       ; $693b: $7f
    ld [c], a                                     ; $693c: $e2
    cp a                                          ; $693d: $bf
    ld h, [hl]                                    ; $693e: $66
    ld a, a                                       ; $693f: $7f
    ld [hl], a                                    ; $6940: $77
    ld a, l                                       ; $6941: $7d
    ld l, $3b                                     ; $6942: $2e $3b
    inc h                                         ; $6944: $24
    ccf                                           ; $6945: $3f
    jr nz, jr_0e1_6987                            ; $6946: $20 $3f

    ld b, b                                       ; $6948: $40
    ld a, a                                       ; $6949: $7f
    ld b, b                                       ; $694a: $40
    ld a, a                                       ; $694b: $7f
    ld h, b                                       ; $694c: $60
    ld a, a                                       ; $694d: $7f
    inc a                                         ; $694e: $3c
    ccf                                           ; $694f: $3f
    ld l, a                                       ; $6950: $6f
    ld a, a                                       ; $6951: $7f
    ld [bc], a                                    ; $6952: $02
    ld e, c                                       ; $6953: $59
    ld [bc], a                                    ; $6954: $02
    inc e                                         ; $6955: $1c
    inc b                                         ; $6956: $04
    nop                                           ; $6957: $00
    sub [hl]                                      ; $6958: $96
    inc b                                         ; $6959: $04
    inc c                                         ; $695a: $0c
    ld b, $0e                                     ; $695b: $06 $0e
    ld [bc], a                                    ; $695d: $02
    ld c, $06                                     ; $695e: $0e $06
    ld c, $02                                     ; $6960: $0e $02
    ld c, $05                                     ; $6962: $0e $05
    rrca                                          ; $6964: $0f
    ld [bc], a                                    ; $6965: $02
    ld c, $02                                     ; $6966: $0e $02
    ld c, $05                                     ; $6968: $0e $05
    rrca                                          ; $696a: $0f
    ld [bc], a                                    ; $696b: $02
    ld c, $02                                     ; $696c: $0e $02
    ld c, $02                                     ; $696e: $0e $02
    rrca                                          ; $6970: $0f
    ld [bc], a                                    ; $6971: $02
    ld b, $04                                     ; $6972: $06 $04
    nop                                           ; $6974: $00
    rst $38                                       ; $6975: $ff
    dec c                                         ; $6976: $0d
    inc b                                         ; $6977: $04
    ei                                            ; $6978: $fb
    dec b                                         ; $6979: $05
    ld a, [c]                                     ; $697a: $f2
    ei                                            ; $697b: $fb
    db $e4                                        ; $697c: $e4
    ei                                            ; $697d: $fb
    push hl                                       ; $697e: $e5
    cp $f4                                        ; $697f: $fe $f4
    ld a, [$fdf4]                                 ; $6981: $fa $f4 $fd
    ld [bc], a                                    ; $6984: $02
    ccf                                           ; $6985: $3f
    sbc [hl]                                      ; $6986: $9e

jr_0e1_6987:
    ld [hl], c                                    ; $6987: $71
    ld a, a                                       ; $6988: $7f
    ld e, a                                       ; $6989: $5f
    ld a, [hl]                                    ; $698a: $7e
    db $eb                                        ; $698b: $eb
    push af                                       ; $698c: $f5
    rst $38                                       ; $698d: $ff
    cp [hl]                                       ; $698e: $be
    rst $38                                       ; $698f: $ff
    db $db                                        ; $6990: $db
    ld a, a                                       ; $6991: $7f
    ld [hl], b                                    ; $6992: $70
    ccf                                           ; $6993: $3f
    inc a                                         ; $6994: $3c
    rrca                                          ; $6995: $0f
    ld [$1c1f], sp                                ; $6996: $08 $1f $1c
    dec de                                        ; $6999: $1b
    rra                                           ; $699a: $1f
    inc [hl]                                      ; $699b: $34
    ccf                                           ; $699c: $3f
    ld [hl-], a                                   ; $699d: $32
    ccf                                           ; $699e: $3f
    daa                                           ; $699f: $27
    ccf                                           ; $69a0: $3f
    dec h                                         ; $69a1: $25
    ccf                                           ; $69a2: $3f
    ld c, l                                       ; $69a3: $4d
    ld a, a                                       ; $69a4: $7f
    inc b                                         ; $69a5: $04
    inc b                                         ; $69a6: $04
    ld [bc], a                                    ; $69a7: $02
    ld b, $88                                     ; $69a8: $06 $88
    rlca                                          ; $69aa: $07
    inc bc                                        ; $69ab: $03
    ld b, $02                                     ; $69ac: $06 $02
    rlca                                          ; $69ae: $07
    ld bc, $0206                                  ; $69af: $01 $06 $02
    ld [bc], a                                    ; $69b2: $02
    ld b, $04                                     ; $69b3: $06 $04
    inc b                                         ; $69b5: $04
    ld [bc], a                                    ; $69b6: $02
    ld b, $86                                     ; $69b7: $06 $86
    ld [bc], a                                    ; $69b9: $02
    ld b, $03                                     ; $69ba: $06 $03
    rlca                                          ; $69bc: $07
    inc bc                                        ; $69bd: $03
    rlca                                          ; $69be: $07
    ld [bc], a                                    ; $69bf: $02
    ld b, $98                                     ; $69c0: $06 $98
    ld d, d                                       ; $69c2: $52
    cp $20                                        ; $69c3: $fe $20
    jr nc, jr_0e1_6a32                            ; $69c5: $30 $6b

    ld a, a                                       ; $69c7: $7f
    ld [c], a                                     ; $69c8: $e2
    cp a                                          ; $69c9: $bf
    halt                                          ; $69ca: $76
    ld a, a                                       ; $69cb: $7f
    ld a, [hl]                                    ; $69cc: $7e
    ld [hl], e                                    ; $69cd: $73
    inc l                                         ; $69ce: $2c
    ccf                                           ; $69cf: $3f
    ld b, b                                       ; $69d0: $40
    ld a, a                                       ; $69d1: $7f
    ld b, b                                       ; $69d2: $40
    ld a, a                                       ; $69d3: $7f
    ld b, b                                       ; $69d4: $40
    ld a, a                                       ; $69d5: $7f
    ld h, b                                       ; $69d6: $60
    ld a, a                                       ; $69d7: $7f
    jr jr_0e1_69f9                                ; $69d8: $18 $1f

    inc b                                         ; $69da: $04
    rlca                                          ; $69db: $07
    ld [$9400], sp                                ; $69dc: $08 $00 $94
    ld [bc], a                                    ; $69df: $02
    ld b, $02                                     ; $69e0: $06 $02
    ld b, $05                                     ; $69e2: $06 $05
    rlca                                          ; $69e4: $07
    inc bc                                        ; $69e5: $03
    rlca                                          ; $69e6: $07
    inc bc                                        ; $69e7: $03
    rlca                                          ; $69e8: $07
    dec b                                         ; $69e9: $05
    rlca                                          ; $69ea: $07
    inc bc                                        ; $69eb: $03
    rlca                                          ; $69ec: $07
    inc bc                                        ; $69ed: $03
    rlca                                          ; $69ee: $07
    dec b                                         ; $69ef: $05
    rlca                                          ; $69f0: $07
    ld [bc], a                                    ; $69f1: $02
    ld b, $02                                     ; $69f2: $06 $02
    inc b                                         ; $69f4: $04
    ld [bc], a                                    ; $69f5: $02
    ld b, $06                                     ; $69f6: $06 $06
    nop                                           ; $69f8: $00

jr_0e1_69f9:
    rst $38                                       ; $69f9: $ff
    dec c                                         ; $69fa: $0d
    inc b                                         ; $69fb: $04
    ei                                            ; $69fc: $fb
    dec b                                         ; $69fd: $05
    ld a, [c]                                     ; $69fe: $f2
    ei                                            ; $69ff: $fb
    db $e3                                        ; $6a00: $e3
    ei                                            ; $6a01: $fb
    db $e4                                        ; $6a02: $e4
    cp $f3                                        ; $6a03: $fe $f3
    ld a, [$fef3]                                 ; $6a05: $fa $f3 $fe
    ld [bc], a                                    ; $6a08: $02
    ccf                                           ; $6a09: $3f
    sbc [hl]                                      ; $6a0a: $9e
    ld [hl], c                                    ; $6a0b: $71
    ld a, a                                       ; $6a0c: $7f
    ld e, a                                       ; $6a0d: $5f
    ld a, [hl]                                    ; $6a0e: $7e
    db $eb                                        ; $6a0f: $eb
    push af                                       ; $6a10: $f5
    rst $38                                       ; $6a11: $ff
    cp [hl]                                       ; $6a12: $be
    rst $38                                       ; $6a13: $ff
    db $db                                        ; $6a14: $db
    ld a, a                                       ; $6a15: $7f
    ld [hl], b                                    ; $6a16: $70
    ccf                                           ; $6a17: $3f
    inc a                                         ; $6a18: $3c
    rrca                                          ; $6a19: $0f
    ld [$1c1f], sp                                ; $6a1a: $08 $1f $1c
    dec de                                        ; $6a1d: $1b
    rra                                           ; $6a1e: $1f
    inc d                                         ; $6a1f: $14
    rra                                           ; $6a20: $1f
    ld [hl-], a                                   ; $6a21: $32
    ccf                                           ; $6a22: $3f
    daa                                           ; $6a23: $27
    ccf                                           ; $6a24: $3f
    ld h, l                                       ; $6a25: $65
    ld a, a                                       ; $6a26: $7f
    ld c, c                                       ; $6a27: $49
    ld a, a                                       ; $6a28: $7f
    inc b                                         ; $6a29: $04
    inc b                                         ; $6a2a: $04
    ld [bc], a                                    ; $6a2b: $02
    ld b, $88                                     ; $6a2c: $06 $88
    rlca                                          ; $6a2e: $07
    inc bc                                        ; $6a2f: $03
    ld b, $02                                     ; $6a30: $06 $02

jr_0e1_6a32:
    rlca                                          ; $6a32: $07
    ld bc, $0206                                  ; $6a33: $01 $06 $02
    ld [bc], a                                    ; $6a36: $02
    ld b, $04                                     ; $6a37: $06 $04
    inc b                                         ; $6a39: $04
    inc b                                         ; $6a3a: $04
    ld b, $81                                     ; $6a3b: $06 $81
    inc bc                                        ; $6a3d: $03
    inc bc                                        ; $6a3e: $03
    rlca                                          ; $6a3f: $07
    ld [bc], a                                    ; $6a40: $02
    ld b, $99                                     ; $6a41: $06 $99
    ld d, d                                       ; $6a43: $52
    cp $60                                        ; $6a44: $fe $60
    ld [hl], b                                    ; $6a46: $70
    ld [$c6bf], a                                 ; $6a47: $ea $bf $c6
    rst $38                                       ; $6a4a: $ff
    ld l, h                                       ; $6a4b: $6c
    ld a, a                                       ; $6a4c: $7f
    ld a, h                                       ; $6a4d: $7c
    ld h, a                                       ; $6a4e: $67
    jr c, jr_0e1_6a90                             ; $6a4f: $38 $3f

    ld b, c                                       ; $6a51: $41
    ld a, a                                       ; $6a52: $7f
    ld b, b                                       ; $6a53: $40
    ld a, a                                       ; $6a54: $7f
    ld b, b                                       ; $6a55: $40
    ld a, a                                       ; $6a56: $7f
    ld b, c                                       ; $6a57: $41
    ld a, a                                       ; $6a58: $7f
    ld b, b                                       ; $6a59: $40
    ld a, a                                       ; $6a5a: $7f
    ld sp, $3f03                                  ; $6a5b: $31 $03 $3f
    ld [bc], a                                    ; $6a5e: $02
    add hl, de                                    ; $6a5f: $19
    ld b, $00                                     ; $6a60: $06 $00
    adc e                                         ; $6a62: $8b
    inc b                                         ; $6a63: $04
    inc c                                         ; $6a64: $0c
    inc b                                         ; $6a65: $04
    inc c                                         ; $6a66: $0c
    ld a, [bc]                                    ; $6a67: $0a
    ld c, $06                                     ; $6a68: $0e $06
    ld c, $06                                     ; $6a6a: $0e $06
    ld c, $06                                     ; $6a6c: $0e $06
    dec b                                         ; $6a6e: $05
    ld c, $81                                     ; $6a6f: $0e $81
    ld b, $05                                     ; $6a71: $06 $05
    ld c, $82                                     ; $6a73: $0e $82
    add hl, bc                                    ; $6a75: $09
    rrca                                          ; $6a76: $0f
    ld [bc], a                                    ; $6a77: $02
    ld b, $04                                     ; $6a78: $06 $04
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    dec c                                         ; $6a7c: $0d
    inc b                                         ; $6a7d: $04
    ei                                            ; $6a7e: $fb
    dec b                                         ; $6a7f: $05
    ld a, [c]                                     ; $6a80: $f2
    ei                                            ; $6a81: $fb
    db $e4                                        ; $6a82: $e4
    ei                                            ; $6a83: $fb
    push hl                                       ; $6a84: $e5
    cp $f4                                        ; $6a85: $fe $f4
    ld a, [$fdf4]                                 ; $6a87: $fa $f4 $fd
    ld [bc], a                                    ; $6a8a: $02
    ccf                                           ; $6a8b: $3f
    sbc [hl]                                      ; $6a8c: $9e
    ld [hl], c                                    ; $6a8d: $71
    ld a, a                                       ; $6a8e: $7f
    ld e, a                                       ; $6a8f: $5f

jr_0e1_6a90:
    ld a, [hl]                                    ; $6a90: $7e
    db $eb                                        ; $6a91: $eb
    push af                                       ; $6a92: $f5
    rst $38                                       ; $6a93: $ff
    cp [hl]                                       ; $6a94: $be
    rst $38                                       ; $6a95: $ff
    db $db                                        ; $6a96: $db
    ld a, a                                       ; $6a97: $7f
    ld [hl], b                                    ; $6a98: $70
    ccf                                           ; $6a99: $3f
    inc a                                         ; $6a9a: $3c
    rrca                                          ; $6a9b: $0f
    ld [$1c1f], sp                                ; $6a9c: $08 $1f $1c
    dec de                                        ; $6a9f: $1b
    rra                                           ; $6aa0: $1f
    inc [hl]                                      ; $6aa1: $34
    ccf                                           ; $6aa2: $3f
    ld [hl-], a                                   ; $6aa3: $32
    ccf                                           ; $6aa4: $3f
    daa                                           ; $6aa5: $27
    ccf                                           ; $6aa6: $3f
    dec h                                         ; $6aa7: $25
    ccf                                           ; $6aa8: $3f
    ld c, l                                       ; $6aa9: $4d
    ld a, a                                       ; $6aaa: $7f
    inc b                                         ; $6aab: $04
    inc b                                         ; $6aac: $04
    ld [bc], a                                    ; $6aad: $02
    ld b, $88                                     ; $6aae: $06 $88
    rlca                                          ; $6ab0: $07
    inc bc                                        ; $6ab1: $03
    ld b, $02                                     ; $6ab2: $06 $02
    rlca                                          ; $6ab4: $07
    ld bc, $0206                                  ; $6ab5: $01 $06 $02
    ld [bc], a                                    ; $6ab8: $02
    ld b, $04                                     ; $6ab9: $06 $04
    inc b                                         ; $6abb: $04
    ld [bc], a                                    ; $6abc: $02
    ld b, $86                                     ; $6abd: $06 $86
    ld [bc], a                                    ; $6abf: $02
    ld b, $03                                     ; $6ac0: $06 $03
    rlca                                          ; $6ac2: $07
    inc bc                                        ; $6ac3: $03
    rlca                                          ; $6ac4: $07
    ld [bc], a                                    ; $6ac5: $02
    ld b, $98                                     ; $6ac6: $06 $98
    ld d, d                                       ; $6ac8: $52
    cp $60                                        ; $6ac9: $fe $60
    ld [hl], b                                    ; $6acb: $70
    db $eb                                        ; $6acc: $eb
    cp a                                          ; $6acd: $bf
    ld [c], a                                     ; $6ace: $e2
    cp a                                          ; $6acf: $bf
    halt                                          ; $6ad0: $76
    ld a, a                                       ; $6ad1: $7f
    ld a, [hl]                                    ; $6ad2: $7e
    ld [hl], e                                    ; $6ad3: $73
    inc l                                         ; $6ad4: $2c
    ccf                                           ; $6ad5: $3f
    ld b, b                                       ; $6ad6: $40
    ld a, a                                       ; $6ad7: $7f
    ld b, b                                       ; $6ad8: $40
    ld a, a                                       ; $6ad9: $7f
    ld b, b                                       ; $6ada: $40
    ld a, a                                       ; $6adb: $7f
    ld h, b                                       ; $6adc: $60
    ld a, a                                       ; $6add: $7f
    inc e                                         ; $6ade: $1c
    rra                                           ; $6adf: $1f
    ld [bc], a                                    ; $6ae0: $02
    rrca                                          ; $6ae1: $0f
    add d                                         ; $6ae2: $82
    ld b, $07                                     ; $6ae3: $06 $07
    ld [bc], a                                    ; $6ae5: $02
    dec b                                         ; $6ae6: $05
    ld b, $00                                     ; $6ae7: $06 $00
    sub e                                         ; $6ae9: $93
    ld [bc], a                                    ; $6aea: $02
    ld b, $02                                     ; $6aeb: $06 $02
    ld b, $05                                     ; $6aed: $06 $05
    rlca                                          ; $6aef: $07
    inc bc                                        ; $6af0: $03

jr_0e1_6af1:
    rlca                                          ; $6af1: $07
    inc bc                                        ; $6af2: $03
    rlca                                          ; $6af3: $07
    dec b                                         ; $6af4: $05
    rlca                                          ; $6af5: $07
    inc bc                                        ; $6af6: $03
    rlca                                          ; $6af7: $07
    inc bc                                        ; $6af8: $03
    rlca                                          ; $6af9: $07
    dec b                                         ; $6afa: $05
    rlca                                          ; $6afb: $07
    ld [bc], a                                    ; $6afc: $02
    inc bc                                        ; $6afd: $03
    ld b, $02                                     ; $6afe: $06 $02
    inc b                                         ; $6b00: $04
    ld [bc], a                                    ; $6b01: $02
    ld b, $04                                     ; $6b02: $06 $04
    nop                                           ; $6b04: $00
    rst $38                                       ; $6b05: $ff
    dec c                                         ; $6b06: $0d
    inc b                                         ; $6b07: $04
    db $fc                                        ; $6b08: $fc
    inc b                                         ; $6b09: $04
    push af                                       ; $6b0a: $f5
    db $fc                                        ; $6b0b: $fc
    db $e4                                        ; $6b0c: $e4
    ld a, [$00e5]                                 ; $6b0d: $fa $e5 $00
    db $f4                                        ; $6b10: $f4
    ld sp, hl                                     ; $6b11: $f9
    db $f4                                        ; $6b12: $f4
    nop                                           ; $6b13: $00
    ld [bc], a                                    ; $6b14: $02
    rlca                                          ; $6b15: $07
    sbc [hl]                                      ; $6b16: $9e
    inc e                                         ; $6b17: $1c
    rra                                           ; $6b18: $1f
    ld a, [hl+]                                   ; $6b19: $2a
    dec a                                         ; $6b1a: $3d
    ld l, e                                       ; $6b1b: $6b
    ld e, h                                       ; $6b1c: $5c
    sbc $f7                                       ; $6b1d: $de $f7
    cp a                                          ; $6b1f: $bf
    ldh a, [$9f]                                  ; $6b20: $f0 $9f
    db $ed                                        ; $6b22: $ed
    rst $18                                       ; $6b23: $df
    ldh [$7f], a                                  ; $6b24: $e0 $7f
    ld h, h                                       ; $6b26: $64
    ccf                                           ; $6b27: $3f
    ld [hl+], a                                   ; $6b28: $22
    jr @+$19                                      ; $6b29: $18 $17

    ccf                                           ; $6b2b: $3f
    jr c, jr_0e1_6b9d                             ; $6b2c: $38 $6f

    ld a, a                                       ; $6b2e: $7f
    xor b                                         ; $6b2f: $a8
    rst $38                                       ; $6b30: $ff
    or a                                          ; $6b31: $b7
    rst $28                                       ; $6b32: $ef
    rst $18                                       ; $6b33: $df
    ldh [rSC], a                                  ; $6b34: $e0 $02
    jr nc, @-$6c                                  ; $6b36: $30 $92

    jr jr_0e1_6b62                                ; $6b38: $18 $28

    inc l                                         ; $6b3a: $2c
    inc d                                         ; $6b3b: $14
    ld d, $3e                                     ; $6b3c: $16 $3e
    ld a, [hl-]                                   ; $6b3e: $3a
    ld a, $32                                     ; $6b3f: $3e $32
    ld l, $36                                     ; $6b41: $2e $36
    ld c, $3c                                     ; $6b43: $0e $3c
    inc c                                         ; $6b45: $0c
    jr @+$2a                                      ; $6b46: $18 $28

    jr nc, jr_0e1_6b5a                            ; $6b48: $30 $10

    ld [bc], a                                    ; $6b4a: $02
    jr c, jr_0e1_6af1                             ; $6b4b: $38 $a4

    inc a                                         ; $6b4d: $3c
    inc l                                         ; $6b4e: $2c
    ld a, [hl+]                                   ; $6b4f: $2a
    ld a, $1a                                     ; $6b50: $3e $1a
    ld l, $36                                     ; $6b52: $2e $36
    ld c, $f7                                     ; $6b54: $0e $f7
    rrca                                          ; $6b56: $0f
    xor $f0                                       ; $6b57: $ee $f0
    or b                                          ; $6b59: $b0

jr_0e1_6b5a:
    rst $38                                       ; $6b5a: $ff
    cp e                                          ; $6b5b: $bb
    db $fc                                        ; $6b5c: $fc
    rst $30                                       ; $6b5d: $f7
    ld hl, sp-$21                                 ; $6b5e: $f8 $df
    or b                                          ; $6b60: $b0
    rst $28                                       ; $6b61: $ef

jr_0e1_6b62:
    or b                                          ; $6b62: $b0
    ld a, a                                       ; $6b63: $7f
    ld h, b                                       ; $6b64: $60
    ld a, a                                       ; $6b65: $7f
    ld h, b                                       ; $6b66: $60
    ld [hl], a                                    ; $6b67: $77
    ld l, b                                       ; $6b68: $68
    ld a, b                                       ; $6b69: $78
    ld [hl], a                                    ; $6b6a: $77
    ld l, a                                       ; $6b6b: $6f
    ld a, b                                       ; $6b6c: $78
    ld h, a                                       ; $6b6d: $67
    ld a, a                                       ; $6b6e: $7f
    jr nc, jr_0e1_6bb0                            ; $6b6f: $30 $3f

    ld [bc], a                                    ; $6b71: $02
    rrca                                          ; $6b72: $0f
    ld b, $00                                     ; $6b73: $06 $00
    sbc b                                         ; $6b75: $98
    dec c                                         ; $6b76: $0d
    ld a, a                                       ; $6b77: $7f
    ld e, l                                       ; $6b78: $5d
    ccf                                           ; $6b79: $3f
    ld l, a                                       ; $6b7a: $6f
    rra                                           ; $6b7b: $1f
    ld a, e                                       ; $6b7c: $7b
    dec c                                         ; $6b7d: $0d
    ld [hl], a                                    ; $6b7e: $77

jr_0e1_6b7f:
    dec c                                         ; $6b7f: $0d
    ld a, [hl]                                    ; $6b80: $7e
    ld b, $7e                                     ; $6b81: $06 $7e
    ld b, $6e                                     ; $6b83: $06 $6e
    ld d, $1a                                     ; $6b85: $16 $1a
    ld l, [hl]                                    ; $6b87: $6e
    ld [hl], d                                    ; $6b88: $72
    ld e, $62                                     ; $6b89: $1e $62
    ld a, [hl]                                    ; $6b8b: $7e
    inc c                                         ; $6b8c: $0c
    ld a, h                                       ; $6b8d: $7c
    ld [bc], a                                    ; $6b8e: $02
    ld [hl], b                                    ; $6b8f: $70
    inc b                                         ; $6b90: $04
    nop                                           ; $6b91: $00
    rst $38                                       ; $6b92: $ff
    dec c                                         ; $6b93: $0d
    inc b                                         ; $6b94: $04
    db $fc                                        ; $6b95: $fc
    inc b                                         ; $6b96: $04
    push af                                       ; $6b97: $f5
    db $fc                                        ; $6b98: $fc
    db $e4                                        ; $6b99: $e4
    ei                                            ; $6b9a: $fb
    push hl                                       ; $6b9b: $e5
    rst $38                                       ; $6b9c: $ff

jr_0e1_6b9d:
    db $f4                                        ; $6b9d: $f4
    ld a, [$fff4]                                 ; $6b9e: $fa $f4 $ff
    ld [bc], a                                    ; $6ba1: $02
    rrca                                          ; $6ba2: $0f
    sbc [hl]                                      ; $6ba3: $9e
    inc a                                         ; $6ba4: $3c
    ccf                                           ; $6ba5: $3f
    ld d, d                                       ; $6ba6: $52
    ld l, a                                       ; $6ba7: $6f
    ld e, l                                       ; $6ba8: $5d
    ld h, e                                       ; $6ba9: $63
    add c                                         ; $6baa: $81
    rst $38                                       ; $6bab: $ff
    and e                                         ; $6bac: $a3
    cp $5f                                        ; $6bad: $fe $5f
    ld a, l                                       ; $6baf: $7d

jr_0e1_6bb0:
    ld a, a                                       ; $6bb0: $7f
    ld [hl], h                                    ; $6bb1: $74
    ccf                                           ; $6bb2: $3f
    ld a, [hl-]                                   ; $6bb3: $3a
    rra                                           ; $6bb4: $1f
    inc e                                         ; $6bb5: $1c
    rrca                                          ; $6bb6: $0f
    inc c                                         ; $6bb7: $0c
    rra                                           ; $6bb8: $1f
    ld [de], a                                    ; $6bb9: $12
    cpl                                           ; $6bba: $2f
    dec a                                         ; $6bbb: $3d
    ld [hl-], a                                   ; $6bbc: $32
    ccf                                           ; $6bbd: $3f
    ld sp, $3d3f                                  ; $6bbe: $31 $3f $3d
    ccf                                           ; $6bc1: $3f
    ld [bc], a                                    ; $6bc2: $02
    inc c                                         ; $6bc3: $0c
    add e                                         ; $6bc4: $83
    ld b, $0a                                     ; $6bc5: $06 $0a
    dec bc                                        ; $6bc7: $0b
    ld [bc], a                                    ; $6bc8: $02
    dec c                                         ; $6bc9: $0d
    adc d                                         ; $6bca: $8a
    rlca                                          ; $6bcb: $07
    ld c, $02                                     ; $6bcc: $0e $02
    ld c, $0a                                     ; $6bce: $0e $0a
    ld c, $02                                     ; $6bd0: $0e $02
    rrca                                          ; $6bd2: $0f
    ld bc, $0206                                  ; $6bd3: $01 $06 $02
    ld a, [bc]                                    ; $6bd6: $0a
    add e                                         ; $6bd7: $83
    ld b, $0c                                     ; $6bd8: $06 $0c
    inc b                                         ; $6bda: $04
    inc b                                         ; $6bdb: $04
    ld [$0c86], sp                                ; $6bdc: $08 $86 $0c
    inc b                                         ; $6bdf: $04

jr_0e1_6be0:
    ld c, $02                                     ; $6be0: $0e $02
    xor [hl]                                      ; $6be2: $ae
    ld a, [c]                                     ; $6be3: $f2
    ld [bc], a                                    ; $6be4: $02
    jr c, jr_0e1_6b7f                             ; $6be5: $38 $98

    ld d, e                                       ; $6be7: $53
    ld a, a                                       ; $6be8: $7f
    ld [hl], e                                    ; $6be9: $73
    ld e, [hl]                                    ; $6bea: $5e
    rst $38                                       ; $6beb: $ff
    cp a                                          ; $6bec: $bf
    rst $38                                       ; $6bed: $ff
    di                                            ; $6bee: $f3
    ld a, l                                       ; $6bef: $7d
    ld [hl], a                                    ; $6bf0: $77
    ld l, l                                       ; $6bf1: $6d
    ld a, a                                       ; $6bf2: $7f
    ld l, c                                       ; $6bf3: $69
    ld a, a                                       ; $6bf4: $7f
    pop de                                        ; $6bf5: $d1
    rst $38                                       ; $6bf6: $ff
    ret nz                                        ; $6bf7: $c0

    rst $38                                       ; $6bf8: $ff
    sub b                                         ; $6bf9: $90
    rst $38                                       ; $6bfa: $ff
    ret nz                                        ; $6bfb: $c0

    rst $38                                       ; $6bfc: $ff
    ld h, b                                       ; $6bfd: $60
    ld a, a                                       ; $6bfe: $7f
    ld [bc], a                                    ; $6bff: $02
    rra                                           ; $6c00: $1f
    ld b, $00                                     ; $6c01: $06 $00
    sbc b                                         ; $6c03: $98
    inc d                                         ; $6c04: $14
    inc e                                         ; $6c05: $1c
    ld [de], a                                    ; $6c06: $12
    ld e, $0a                                     ; $6c07: $1e $0a
    ld d, $0e                                     ; $6c09: $16 $0e
    ld [de], a                                    ; $6c0b: $12
    ld e, $02                                     ; $6c0c: $1e $02

jr_0e1_6c0e:
    dec e                                         ; $6c0e: $1d
    inc bc                                        ; $6c0f: $03
    dec e                                         ; $6c10: $1d
    inc bc                                        ; $6c11: $03
    inc de                                        ; $6c12: $13
    dec c                                         ; $6c13: $0d
    rra                                           ; $6c14: $1f
    inc de                                        ; $6c15: $13
    dec c                                         ; $6c16: $0d
    rra                                           ; $6c17: $1f
    ld bc, $061f                                  ; $6c18: $01 $1f $06
    ld e, $02                                     ; $6c1b: $1e $02
    jr jr_0e1_6c23                                ; $6c1d: $18 $04

    nop                                           ; $6c1f: $00
    rst $38                                       ; $6c20: $ff
    dec c                                         ; $6c21: $0d
    inc b                                         ; $6c22: $04

jr_0e1_6c23:
    db $fc                                        ; $6c23: $fc
    inc b                                         ; $6c24: $04
    push af                                       ; $6c25: $f5
    db $fc                                        ; $6c26: $fc
    db $e4                                        ; $6c27: $e4
    ld a, [$ffe5]                                 ; $6c28: $fa $e5 $ff
    db $f4                                        ; $6c2b: $f4
    ld sp, hl                                     ; $6c2c: $f9
    db $f4                                        ; $6c2d: $f4
    nop                                           ; $6c2e: $00
    ld [bc], a                                    ; $6c2f: $02
    rlca                                          ; $6c30: $07
    sub d                                         ; $6c31: $92
    add hl, de                                    ; $6c32: $19
    rra                                           ; $6c33: $1f
    ld h, $39                                     ; $6c34: $26 $39
    ld c, d                                       ; $6c36: $4a
    ld [hl], l                                    ; $6c37: $75
    ld b, d                                       ; $6c38: $42
    ld a, l                                       ; $6c39: $7d
    add c                                         ; $6c3a: $81
    cp $a0                                        ; $6c3b: $fe $a0
    rst $38                                       ; $6c3d: $ff
    ret nc                                        ; $6c3e: $d0

    rst $38                                       ; $6c3f: $ff
    ld a, d                                       ; $6c40: $7a
    ld a, a                                       ; $6c41: $7f
    dec a                                         ; $6c42: $3d
    ccf                                           ; $6c43: $3f
    ld [bc], a                                    ; $6c44: $02
    rra                                           ; $6c45: $1f
    adc d                                         ; $6c46: $8a
    scf                                           ; $6c47: $37
    jr c, jr_0e1_6ca9                             ; $6c48: $38 $5f

    ld a, a                                       ; $6c4a: $7f
    and b                                         ; $6c4b: $a0
    rst $38                                       ; $6c4c: $ff
    and b                                         ; $6c4d: $a0
    rst $38                                       ; $6c4e: $ff
    and b                                         ; $6c4f: $a0
    rst $38                                       ; $6c50: $ff
    ld [bc], a                                    ; $6c51: $02
    jr jr_0e1_6be0                                ; $6c52: $18 $8c

    inc d                                         ; $6c54: $14
    inc e                                         ; $6c55: $1c
    ld a, [de]                                    ; $6c56: $1a
    ld d, $06                                     ; $6c57: $16 $06
    ld a, [de]                                    ; $6c59: $1a
    dec b                                         ; $6c5a: $05
    dec de                                        ; $6c5b: $1b
    add hl, bc                                    ; $6c5c: $09
    rla                                           ; $6c5d: $17
    dec bc                                        ; $6c5e: $0b
    rra                                           ; $6c5f: $1f
    ld [bc], a                                    ; $6c60: $02
    ld e, $82                                     ; $6c61: $1e $82
    inc c                                         ; $6c63: $0c
    inc e                                         ; $6c64: $1c
    ld [bc], a                                    ; $6c65: $02
    jr jr_0e1_6c0e                                ; $6c66: $18 $a6

    inc c                                         ; $6c68: $0c
    inc e                                         ; $6c69: $1c
    ld a, [de]                                    ; $6c6a: $1a
    ld e, $05                                     ; $6c6b: $1e $05
    rra                                           ; $6c6d: $1f
    dec b                                         ; $6c6e: $05
    rra                                           ; $6c6f: $1f
    dec b                                         ; $6c70: $05
    rra                                           ; $6c71: $1f
    dec c                                         ; $6c72: $0d
    rst $38                                       ; $6c73: $ff
    ld e, b                                       ; $6c74: $58
    ld a, h                                       ; $6c75: $7c
    cp a                                          ; $6c76: $bf
    rst $38                                       ; $6c77: $ff
    sbc e                                         ; $6c78: $9b
    cp $fd                                        ; $6c79: $fe $fd
    rst $38                                       ; $6c7b: $ff
    rst $10                                       ; $6c7c: $d7
    cp l                                          ; $6c7d: $bd
    ld h, a                                       ; $6c7e: $67
    ld a, l                                       ; $6c7f: $7d
    ld h, [hl]                                    ; $6c80: $66
    ld a, a                                       ; $6c81: $7f
    ld h, b                                       ; $6c82: $60
    ld a, a                                       ; $6c83: $7f
    ld h, b                                       ; $6c84: $60
    ld a, a                                       ; $6c85: $7f
    ld h, b                                       ; $6c86: $60
    ld a, a                                       ; $6c87: $7f
    ld h, b                                       ; $6c88: $60
    ld a, a                                       ; $6c89: $7f
    ld h, b                                       ; $6c8a: $60
    ld a, a                                       ; $6c8b: $7f
    jr nc, jr_0e1_6ccd                            ; $6c8c: $30 $3f

    ld [bc], a                                    ; $6c8e: $02
    rrca                                          ; $6c8f: $0f
    ld b, $00                                     ; $6c90: $06 $00
    sbc b                                         ; $6c92: $98
    ld a, l                                       ; $6c93: $7d
    ld a, a                                       ; $6c94: $7f
    ld a, c                                       ; $6c95: $79
    ld e, a                                       ; $6c96: $5f
    ccf                                           ; $6c97: $3f
    ld a, a                                       ; $6c98: $7f
    ld l, e                                       ; $6c99: $6b
    dec a                                         ; $6c9a: $3d
    halt                                          ; $6c9b: $76
    ld a, $76                                     ; $6c9c: $3e $76
    ld a, [hl]                                    ; $6c9e: $7e
    ld [de], a                                    ; $6c9f: $12
    ld a, [hl]                                    ; $6ca0: $7e
    ld [de], a                                    ; $6ca1: $12
    ld a, [hl]                                    ; $6ca2: $7e
    ld [bc], a                                    ; $6ca3: $02
    ld a, [hl]                                    ; $6ca4: $7e
    ld [de], a                                    ; $6ca5: $12
    ld a, [hl]                                    ; $6ca6: $7e
    ld [bc], a                                    ; $6ca7: $02
    ld a, [hl]                                    ; $6ca8: $7e

jr_0e1_6ca9:
    inc c                                         ; $6ca9: $0c
    ld a, h                                       ; $6caa: $7c
    ld [bc], a                                    ; $6cab: $02
    ld [hl], b                                    ; $6cac: $70
    inc b                                         ; $6cad: $04
    nop                                           ; $6cae: $00
    rst $38                                       ; $6caf: $ff
    dec c                                         ; $6cb0: $0d
    inc b                                         ; $6cb1: $04
    db $fc                                        ; $6cb2: $fc
    inc b                                         ; $6cb3: $04
    push af                                       ; $6cb4: $f5
    db $fc                                        ; $6cb5: $fc
    db $e4                                        ; $6cb6: $e4
    ld a, [$01e5]                                 ; $6cb7: $fa $e5 $01
    db $f4                                        ; $6cba: $f4
    ld sp, hl                                     ; $6cbb: $f9
    db $f4                                        ; $6cbc: $f4
    rst $38                                       ; $6cbd: $ff
    ld [bc], a                                    ; $6cbe: $02
    rlca                                          ; $6cbf: $07
    sub d                                         ; $6cc0: $92
    add hl, de                                    ; $6cc1: $19
    rra                                           ; $6cc2: $1f
    ld h, $39                                     ; $6cc3: $26 $39
    ld c, d                                       ; $6cc5: $4a
    ld [hl], l                                    ; $6cc6: $75
    ld b, d                                       ; $6cc7: $42
    ld a, l                                       ; $6cc8: $7d
    add c                                         ; $6cc9: $81
    cp $a0                                        ; $6cca: $fe $a0
    rst $38                                       ; $6ccc: $ff

jr_0e1_6ccd:
    ret nc                                        ; $6ccd: $d0

    rst $38                                       ; $6cce: $ff
    ld a, d                                       ; $6ccf: $7a
    ld a, a                                       ; $6cd0: $7f
    dec a                                         ; $6cd1: $3d
    ccf                                           ; $6cd2: $3f
    ld [bc], a                                    ; $6cd3: $02
    rra                                           ; $6cd4: $1f
    adc d                                         ; $6cd5: $8a
    scf                                           ; $6cd6: $37
    jr c, jr_0e1_6d38                             ; $6cd7: $38 $5f

    ld a, a                                       ; $6cd9: $7f
    and b                                         ; $6cda: $a0
    rst $38                                       ; $6cdb: $ff
    and b                                         ; $6cdc: $a0
    rst $38                                       ; $6cdd: $ff
    and b                                         ; $6cde: $a0
    rst $38                                       ; $6cdf: $ff
    ld [bc], a                                    ; $6ce0: $02
    ld h, b                                       ; $6ce1: $60
    adc h                                         ; $6ce2: $8c
    ld d, b                                       ; $6ce3: $50
    ld [hl], b                                    ; $6ce4: $70
    ld l, b                                       ; $6ce5: $68
    ld e, b                                       ; $6ce6: $58
    jr jr_0e1_6d51                                ; $6ce7: $18 $68

    inc d                                         ; $6ce9: $14
    ld l, h                                       ; $6cea: $6c
    ld h, $5e                                     ; $6ceb: $26 $5e
    cpl                                           ; $6ced: $2f
    ld a, l                                       ; $6cee: $7d
    ld [bc], a                                    ; $6cef: $02
    ld a, a                                       ; $6cf0: $7f
    xor d                                         ; $6cf1: $aa

jr_0e1_6cf2:
    add hl, sp                                    ; $6cf2: $39
    ld a, a                                       ; $6cf3: $7f
    ld l, l                                       ; $6cf4: $6d
    ld l, a                                       ; $6cf5: $6f
    dec [hl]                                      ; $6cf6: $35
    ld a, a                                       ; $6cf7: $7f
    ld h, d                                       ; $6cf8: $62
    ld a, [hl]                                    ; $6cf9: $7e
    inc d                                         ; $6cfa: $14
    ld a, h                                       ; $6cfb: $7c
    jr @+$7a                                      ; $6cfc: $18 $78

    jr jr_0e1_6d78                                ; $6cfe: $18 $78

    jr nc, jr_0e1_6cf2                            ; $6d00: $30 $f0

    cp b                                          ; $6d02: $b8
    rst $38                                       ; $6d03: $ff
    sbc a                                         ; $6d04: $9f
    rst $38                                       ; $6d05: $ff
    cp e                                          ; $6d06: $bb
    cp $fd                                        ; $6d07: $fe $fd
    rst $38                                       ; $6d09: $ff
    ld [hl], a                                    ; $6d0a: $77
    ld a, l                                       ; $6d0b: $7d
    ld h, a                                       ; $6d0c: $67
    ld a, l                                       ; $6d0d: $7d
    ld h, [hl]                                    ; $6d0e: $66
    ld a, a                                       ; $6d0f: $7f
    ld h, b                                       ; $6d10: $60
    ld a, a                                       ; $6d11: $7f
    ld h, b                                       ; $6d12: $60
    ld a, a                                       ; $6d13: $7f
    ld h, b                                       ; $6d14: $60
    ld a, a                                       ; $6d15: $7f
    ld h, b                                       ; $6d16: $60
    ld a, a                                       ; $6d17: $7f
    ld h, b                                       ; $6d18: $60
    ld a, a                                       ; $6d19: $7f
    jr nc, jr_0e1_6d5b                            ; $6d1a: $30 $3f

    ld [bc], a                                    ; $6d1c: $02
    rrca                                          ; $6d1d: $0f
    ld b, $00                                     ; $6d1e: $06 $00
    ld [bc], a                                    ; $6d20: $02
    inc a                                         ; $6d21: $3c
    sub [hl]                                      ; $6d22: $96
    ld [hl], $2e                                  ; $6d23: $36 $2e
    ld e, $3e                                     ; $6d25: $1e $3e
    scf                                           ; $6d27: $37
    rra                                           ; $6d28: $1f
    dec sp                                        ; $6d29: $3b
    rra                                           ; $6d2a: $1f
    dec sp                                        ; $6d2b: $3b
    ccf                                           ; $6d2c: $3f
    add hl, bc                                    ; $6d2d: $09
    ccf                                           ; $6d2e: $3f
    add hl, bc                                    ; $6d2f: $09
    ccf                                           ; $6d30: $3f
    ld bc, $093f                                  ; $6d31: $01 $3f $09
    ccf                                           ; $6d34: $3f
    ld bc, $063f                                  ; $6d35: $01 $3f $06

jr_0e1_6d38:
    ld a, $02                                     ; $6d38: $3e $02
    jr c, jr_0e1_6d40                             ; $6d3a: $38 $04

    nop                                           ; $6d3c: $00
    rst $38                                       ; $6d3d: $ff
    dec c                                         ; $6d3e: $0d
    inc b                                         ; $6d3f: $04

jr_0e1_6d40:
    db $fc                                        ; $6d40: $fc
    inc b                                         ; $6d41: $04
    push af                                       ; $6d42: $f5
    db $fc                                        ; $6d43: $fc
    db $e4                                        ; $6d44: $e4
    ld a, [$01e5]                                 ; $6d45: $fa $e5 $01
    db $f4                                        ; $6d48: $f4
    ld sp, hl                                     ; $6d49: $f9
    db $f4                                        ; $6d4a: $f4
    rst $38                                       ; $6d4b: $ff
    ld [bc], a                                    ; $6d4c: $02
    rlca                                          ; $6d4d: $07
    sub d                                         ; $6d4e: $92
    add hl, de                                    ; $6d4f: $19
    rra                                           ; $6d50: $1f

jr_0e1_6d51:
    ld h, $39                                     ; $6d51: $26 $39
    ld c, d                                       ; $6d53: $4a
    ld [hl], l                                    ; $6d54: $75
    ld b, d                                       ; $6d55: $42
    ld a, l                                       ; $6d56: $7d
    add c                                         ; $6d57: $81
    cp $a0                                        ; $6d58: $fe $a0
    rst $38                                       ; $6d5a: $ff

jr_0e1_6d5b:
    ret nc                                        ; $6d5b: $d0

    rst $38                                       ; $6d5c: $ff
    ld a, d                                       ; $6d5d: $7a
    ld a, a                                       ; $6d5e: $7f
    dec a                                         ; $6d5f: $3d
    ccf                                           ; $6d60: $3f
    ld [bc], a                                    ; $6d61: $02
    rra                                           ; $6d62: $1f
    adc d                                         ; $6d63: $8a
    scf                                           ; $6d64: $37
    jr c, jr_0e1_6dc6                             ; $6d65: $38 $5f

    ld a, a                                       ; $6d67: $7f
    and b                                         ; $6d68: $a0
    rst $38                                       ; $6d69: $ff
    and b                                         ; $6d6a: $a0
    rst $38                                       ; $6d6b: $ff
    and b                                         ; $6d6c: $a0
    rst $38                                       ; $6d6d: $ff
    ld [bc], a                                    ; $6d6e: $02
    ld h, b                                       ; $6d6f: $60
    adc h                                         ; $6d70: $8c
    ld d, b                                       ; $6d71: $50
    ld [hl], b                                    ; $6d72: $70
    ld l, b                                       ; $6d73: $68
    ld e, b                                       ; $6d74: $58
    jr jr_0e1_6ddf                                ; $6d75: $18 $68

    inc d                                         ; $6d77: $14

jr_0e1_6d78:
    ld l, h                                       ; $6d78: $6c
    ld h, $5e                                     ; $6d79: $26 $5e
    cpl                                           ; $6d7b: $2f
    ld a, l                                       ; $6d7c: $7d
    ld [bc], a                                    ; $6d7d: $02
    ld a, [hl]                                    ; $6d7e: $7e
    xor d                                         ; $6d7f: $aa

jr_0e1_6d80:
    add hl, sp                                    ; $6d80: $39
    ld a, a                                       ; $6d81: $7f
    ld a, c                                       ; $6d82: $79
    ld a, a                                       ; $6d83: $7f
    ld [hl], $7e                                  ; $6d84: $36 $7e
    ld h, [hl]                                    ; $6d86: $66
    ld a, [hl]                                    ; $6d87: $7e
    inc d                                         ; $6d88: $14
    ld a, h                                       ; $6d89: $7c
    jr @+$7a                                      ; $6d8a: $18 $78

    jr jr_0e1_6e06                                ; $6d8c: $18 $78

    jr nc, jr_0e1_6d80                            ; $6d8e: $30 $f0

    cp b                                          ; $6d90: $b8
    rst $38                                       ; $6d91: $ff
    sbc a                                         ; $6d92: $9f
    rst $38                                       ; $6d93: $ff
    cp e                                          ; $6d94: $bb
    cp $fd                                        ; $6d95: $fe $fd
    rst $38                                       ; $6d97: $ff
    ld [hl], a                                    ; $6d98: $77
    ld a, l                                       ; $6d99: $7d
    ld h, a                                       ; $6d9a: $67
    ld a, l                                       ; $6d9b: $7d
    ld h, [hl]                                    ; $6d9c: $66
    ld a, a                                       ; $6d9d: $7f
    ld h, b                                       ; $6d9e: $60
    ld a, a                                       ; $6d9f: $7f
    ld h, b                                       ; $6da0: $60
    ld a, a                                       ; $6da1: $7f
    ld h, b                                       ; $6da2: $60
    ld a, a                                       ; $6da3: $7f
    ld h, b                                       ; $6da4: $60
    ld a, a                                       ; $6da5: $7f
    ld h, b                                       ; $6da6: $60
    ld a, a                                       ; $6da7: $7f
    jr nc, jr_0e1_6de9                            ; $6da8: $30 $3f

    ld [bc], a                                    ; $6daa: $02
    rrca                                          ; $6dab: $0f
    ld b, $00                                     ; $6dac: $06 $00
    ld [bc], a                                    ; $6dae: $02
    inc a                                         ; $6daf: $3c
    sub [hl]                                      ; $6db0: $96
    ld [hl], $2e                                  ; $6db1: $36 $2e
    ld e, $3e                                     ; $6db3: $1e $3e
    scf                                           ; $6db5: $37
    rra                                           ; $6db6: $1f
    dec sp                                        ; $6db7: $3b
    rra                                           ; $6db8: $1f
    dec sp                                        ; $6db9: $3b
    ccf                                           ; $6dba: $3f
    add hl, bc                                    ; $6dbb: $09
    ccf                                           ; $6dbc: $3f
    add hl, bc                                    ; $6dbd: $09
    ccf                                           ; $6dbe: $3f
    ld bc, $093f                                  ; $6dbf: $01 $3f $09
    ccf                                           ; $6dc2: $3f
    ld bc, $063f                                  ; $6dc3: $01 $3f $06

jr_0e1_6dc6:
    ld a, $02                                     ; $6dc6: $3e $02
    jr c, jr_0e1_6dce                             ; $6dc8: $38 $04

    nop                                           ; $6dca: $00
    rst $38                                       ; $6dcb: $ff
    dec c                                         ; $6dcc: $0d
    inc b                                         ; $6dcd: $04

jr_0e1_6dce:
    db $fc                                        ; $6dce: $fc
    inc b                                         ; $6dcf: $04
    push af                                       ; $6dd0: $f5
    db $fc                                        ; $6dd1: $fc
    db $e4                                        ; $6dd2: $e4
    ld a, [$01e5]                                 ; $6dd3: $fa $e5 $01
    db $f4                                        ; $6dd6: $f4
    ld sp, hl                                     ; $6dd7: $f9
    db $f4                                        ; $6dd8: $f4
    rst $38                                       ; $6dd9: $ff
    ld [bc], a                                    ; $6dda: $02
    rlca                                          ; $6ddb: $07
    sub d                                         ; $6ddc: $92
    add hl, de                                    ; $6ddd: $19
    rra                                           ; $6dde: $1f

jr_0e1_6ddf:
    ld h, $39                                     ; $6ddf: $26 $39
    ld c, d                                       ; $6de1: $4a
    ld [hl], l                                    ; $6de2: $75
    ld b, d                                       ; $6de3: $42
    ld a, l                                       ; $6de4: $7d
    add c                                         ; $6de5: $81
    cp $a0                                        ; $6de6: $fe $a0
    rst $38                                       ; $6de8: $ff

jr_0e1_6de9:
    ret nc                                        ; $6de9: $d0

    rst $38                                       ; $6dea: $ff
    ld a, d                                       ; $6deb: $7a
    ld a, a                                       ; $6dec: $7f
    dec a                                         ; $6ded: $3d
    ccf                                           ; $6dee: $3f
    ld [bc], a                                    ; $6def: $02
    rra                                           ; $6df0: $1f
    adc d                                         ; $6df1: $8a
    scf                                           ; $6df2: $37
    jr c, @+$61                                   ; $6df3: $38 $5f

    ld a, a                                       ; $6df5: $7f
    and b                                         ; $6df6: $a0
    rst $38                                       ; $6df7: $ff
    and b                                         ; $6df8: $a0
    rst $38                                       ; $6df9: $ff
    and b                                         ; $6dfa: $a0
    rst $38                                       ; $6dfb: $ff
    ld [bc], a                                    ; $6dfc: $02
    ld h, b                                       ; $6dfd: $60
    adc e                                         ; $6dfe: $8b
    ld d, b                                       ; $6dff: $50
    ld [hl], b                                    ; $6e00: $70
    ld l, b                                       ; $6e01: $68
    ld e, b                                       ; $6e02: $58
    jr @+$6a                                      ; $6e03: $18 $68

    inc d                                         ; $6e05: $14

jr_0e1_6e06:
    ld l, h                                       ; $6e06: $6c
    inc h                                         ; $6e07: $24
    ld e, h                                       ; $6e08: $5c
    ld l, $03                                     ; $6e09: $2e $03
    ld a, [hl]                                    ; $6e0b: $7e
    xor d                                         ; $6e0c: $aa

jr_0e1_6e0d:
    ld [hl-], a                                   ; $6e0d: $32
    ld a, [hl]                                    ; $6e0e: $7e
    ld a, e                                       ; $6e0f: $7b
    ld a, a                                       ; $6e10: $7f
    ld [hl], $7e                                  ; $6e11: $36 $7e
    ld b, h                                       ; $6e13: $44
    ld a, h                                       ; $6e14: $7c
    jr jr_0e1_6e8f                                ; $6e15: $18 $78

    jr @+$7a                                      ; $6e17: $18 $78

    db $10                                        ; $6e19: $10
    ld [hl], b                                    ; $6e1a: $70
    jr nc, jr_0e1_6e0d                            ; $6e1b: $30 $f0

    cp b                                          ; $6e1d: $b8
    rst $38                                       ; $6e1e: $ff
    sbc a                                         ; $6e1f: $9f
    rst $38                                       ; $6e20: $ff
    cp e                                          ; $6e21: $bb
    cp $fd                                        ; $6e22: $fe $fd
    rst $38                                       ; $6e24: $ff
    ld [hl], a                                    ; $6e25: $77
    ld a, l                                       ; $6e26: $7d
    ld h, a                                       ; $6e27: $67
    ld a, l                                       ; $6e28: $7d
    ld h, [hl]                                    ; $6e29: $66
    ld a, a                                       ; $6e2a: $7f
    ld h, b                                       ; $6e2b: $60
    ld a, a                                       ; $6e2c: $7f
    ld h, b                                       ; $6e2d: $60
    ld a, a                                       ; $6e2e: $7f
    ld h, b                                       ; $6e2f: $60
    ld a, a                                       ; $6e30: $7f
    ld h, b                                       ; $6e31: $60
    ld a, a                                       ; $6e32: $7f
    ld h, b                                       ; $6e33: $60
    ld a, a                                       ; $6e34: $7f
    jr nc, jr_0e1_6e76                            ; $6e35: $30 $3f

    ld [bc], a                                    ; $6e37: $02
    rrca                                          ; $6e38: $0f
    ld b, $00                                     ; $6e39: $06 $00
    ld [bc], a                                    ; $6e3b: $02
    inc a                                         ; $6e3c: $3c
    sub [hl]                                      ; $6e3d: $96
    ld [hl], $2e                                  ; $6e3e: $36 $2e
    ld e, $3e                                     ; $6e40: $1e $3e
    scf                                           ; $6e42: $37
    rra                                           ; $6e43: $1f
    dec sp                                        ; $6e44: $3b
    rra                                           ; $6e45: $1f
    dec sp                                        ; $6e46: $3b
    ccf                                           ; $6e47: $3f
    add hl, bc                                    ; $6e48: $09
    ccf                                           ; $6e49: $3f
    add hl, bc                                    ; $6e4a: $09
    ccf                                           ; $6e4b: $3f
    ld bc, $093f                                  ; $6e4c: $01 $3f $09
    ccf                                           ; $6e4f: $3f
    ld bc, $063f                                  ; $6e50: $01 $3f $06
    ld a, $02                                     ; $6e53: $3e $02
    jr c, jr_0e1_6e5b                             ; $6e55: $38 $04

    nop                                           ; $6e57: $00
    rst $38                                       ; $6e58: $ff
    dec c                                         ; $6e59: $0d
    inc b                                         ; $6e5a: $04

jr_0e1_6e5b:
    db $fc                                        ; $6e5b: $fc
    inc b                                         ; $6e5c: $04
    push af                                       ; $6e5d: $f5
    db $fc                                        ; $6e5e: $fc
    db $e4                                        ; $6e5f: $e4
    ld a, [$01e5]                                 ; $6e60: $fa $e5 $01
    db $f4                                        ; $6e63: $f4
    ld sp, hl                                     ; $6e64: $f9
    db $f4                                        ; $6e65: $f4
    rst $38                                       ; $6e66: $ff
    ld [bc], a                                    ; $6e67: $02
    rlca                                          ; $6e68: $07
    sub d                                         ; $6e69: $92
    add hl, de                                    ; $6e6a: $19
    rra                                           ; $6e6b: $1f
    ld h, $39                                     ; $6e6c: $26 $39
    ld c, d                                       ; $6e6e: $4a
    ld [hl], l                                    ; $6e6f: $75
    ld b, d                                       ; $6e70: $42
    ld a, l                                       ; $6e71: $7d
    add c                                         ; $6e72: $81
    cp $a0                                        ; $6e73: $fe $a0
    rst $38                                       ; $6e75: $ff

jr_0e1_6e76:
    ret nc                                        ; $6e76: $d0

    rst $38                                       ; $6e77: $ff
    ld a, d                                       ; $6e78: $7a
    ld a, a                                       ; $6e79: $7f
    dec a                                         ; $6e7a: $3d
    ccf                                           ; $6e7b: $3f
    ld [bc], a                                    ; $6e7c: $02
    rra                                           ; $6e7d: $1f
    adc d                                         ; $6e7e: $8a
    scf                                           ; $6e7f: $37
    jr c, @+$61                                   ; $6e80: $38 $5f

    ld a, a                                       ; $6e82: $7f
    and b                                         ; $6e83: $a0
    rst $38                                       ; $6e84: $ff
    and b                                         ; $6e85: $a0
    rst $38                                       ; $6e86: $ff
    and b                                         ; $6e87: $a0
    rst $38                                       ; $6e88: $ff
    ld [bc], a                                    ; $6e89: $02
    ld h, b                                       ; $6e8a: $60
    adc e                                         ; $6e8b: $8b
    ld d, b                                       ; $6e8c: $50
    ld [hl], b                                    ; $6e8d: $70
    ld l, b                                       ; $6e8e: $68

jr_0e1_6e8f:
    ld e, b                                       ; $6e8f: $58
    jr jr_0e1_6efa                                ; $6e90: $18 $68

    inc d                                         ; $6e92: $14
    ld l, h                                       ; $6e93: $6c
    inc h                                         ; $6e94: $24
    ld e, h                                       ; $6e95: $5c
    ld l, $03                                     ; $6e96: $2e $03
    ld a, [hl]                                    ; $6e98: $7e
    xor d                                         ; $6e99: $aa

jr_0e1_6e9a:
    add hl, sp                                    ; $6e9a: $39
    ld a, a                                       ; $6e9b: $7f
    ld a, c                                       ; $6e9c: $79
    ld a, a                                       ; $6e9d: $7f
    ld [hl], $7e                                  ; $6e9e: $36 $7e
    ld b, [hl]                                    ; $6ea0: $46
    ld a, [hl]                                    ; $6ea1: $7e
    inc d                                         ; $6ea2: $14
    ld a, h                                       ; $6ea3: $7c
    jr @+$7a                                      ; $6ea4: $18 $78

    db $10                                        ; $6ea6: $10
    ld [hl], b                                    ; $6ea7: $70
    jr nc, jr_0e1_6e9a                            ; $6ea8: $30 $f0

    cp b                                          ; $6eaa: $b8
    rst $38                                       ; $6eab: $ff
    sbc a                                         ; $6eac: $9f
    rst $38                                       ; $6ead: $ff
    cp e                                          ; $6eae: $bb
    cp $fd                                        ; $6eaf: $fe $fd
    rst $38                                       ; $6eb1: $ff
    ld [hl], a                                    ; $6eb2: $77
    ld a, l                                       ; $6eb3: $7d
    ld h, a                                       ; $6eb4: $67
    ld a, l                                       ; $6eb5: $7d
    ld h, [hl]                                    ; $6eb6: $66
    ld a, a                                       ; $6eb7: $7f

jr_0e1_6eb8:
    ld h, b                                       ; $6eb8: $60
    ld a, a                                       ; $6eb9: $7f
    ld h, b                                       ; $6eba: $60
    ld a, a                                       ; $6ebb: $7f
    ld h, b                                       ; $6ebc: $60
    ld a, a                                       ; $6ebd: $7f
    ld h, b                                       ; $6ebe: $60
    ld a, a                                       ; $6ebf: $7f
    ld h, b                                       ; $6ec0: $60
    ld a, a                                       ; $6ec1: $7f
    jr nc, jr_0e1_6f03                            ; $6ec2: $30 $3f

    ld [bc], a                                    ; $6ec4: $02
    rrca                                          ; $6ec5: $0f
    ld b, $00                                     ; $6ec6: $06 $00
    ld [bc], a                                    ; $6ec8: $02
    inc a                                         ; $6ec9: $3c
    sub [hl]                                      ; $6eca: $96
    ld [hl], $2e                                  ; $6ecb: $36 $2e
    ld e, $3e                                     ; $6ecd: $1e $3e
    scf                                           ; $6ecf: $37
    rra                                           ; $6ed0: $1f
    dec sp                                        ; $6ed1: $3b
    rra                                           ; $6ed2: $1f
    dec sp                                        ; $6ed3: $3b
    ccf                                           ; $6ed4: $3f
    add hl, bc                                    ; $6ed5: $09
    ccf                                           ; $6ed6: $3f
    add hl, bc                                    ; $6ed7: $09
    ccf                                           ; $6ed8: $3f
    ld bc, $093f                                  ; $6ed9: $01 $3f $09
    ccf                                           ; $6edc: $3f
    ld bc, $063f                                  ; $6edd: $01 $3f $06
    ld a, $02                                     ; $6ee0: $3e $02
    jr c, jr_0e1_6ee8                             ; $6ee2: $38 $04

    nop                                           ; $6ee4: $00
    rst $38                                       ; $6ee5: $ff
    dec c                                         ; $6ee6: $0d
    inc b                                         ; $6ee7: $04

jr_0e1_6ee8:
    ei                                            ; $6ee8: $fb
    dec b                                         ; $6ee9: $05
    or $fd                                        ; $6eea: $f6 $fd
    db $eb                                        ; $6eec: $eb
    ld a, [$00eb]                                 ; $6eed: $fa $eb $00
    ei                                            ; $6ef0: $fb
    ld a, [$fffb]                                 ; $6ef1: $fa $fb $ff
    ld [bc], a                                    ; $6ef4: $02
    dec bc                                        ; $6ef5: $0b
    sbc e                                         ; $6ef6: $9b
    rra                                           ; $6ef7: $1f
    inc d                                         ; $6ef8: $14
    ccf                                           ; $6ef9: $3f

jr_0e1_6efa:
    jr z, jr_0e1_6f3b                             ; $6efa: $28 $3f

    jr nz, jr_0e1_6f3d                            ; $6efc: $20 $3f

    dec [hl]                                      ; $6efe: $35
    ccf                                           ; $6eff: $3f
    ld a, [hl-]                                   ; $6f00: $3a
    ccf                                           ; $6f01: $3f
    cpl                                           ; $6f02: $2f

jr_0e1_6f03:
    rra                                           ; $6f03: $1f
    rla                                           ; $6f04: $17
    rra                                           ; $6f05: $1f
    jr jr_0e1_6f30                                ; $6f06: $18 $28

    ccf                                           ; $6f08: $3f
    ld [hl], a                                    ; $6f09: $77
    ld a, a                                       ; $6f0a: $7f
    ld e, b                                       ; $6f0b: $58
    ld a, a                                       ; $6f0c: $7f
    ld e, h                                       ; $6f0d: $5c
    ld a, a                                       ; $6f0e: $7f
    sbc a                                         ; $6f0f: $9f
    rst $38                                       ; $6f10: $ff
    sbc a                                         ; $6f11: $9f
    inc bc                                        ; $6f12: $03
    rst $38                                       ; $6f13: $ff
    ld [bc], a                                    ; $6f14: $02
    jr nz, @-$76                                  ; $6f15: $20 $88

    jr nc, @+$12                                  ; $6f17: $30 $10

    jr c, jr_0e1_6f43                             ; $6f19: $38 $28

    jr c, jr_0e1_6f45                             ; $6f1b: $38 $28

    jr c, jr_0e1_6f37                             ; $6f1d: $38 $18

    inc bc                                        ; $6f1f: $03
    jr c, @-$7b                                   ; $6f20: $38 $83

    jr z, @+$32                                   ; $6f22: $28 $30

    db $10                                        ; $6f24: $10

jr_0e1_6f25:
    ld [bc], a                                    ; $6f25: $02
    jr nc, jr_0e1_6eb8                            ; $6f26: $30 $90

    jr z, jr_0e1_6f62                             ; $6f28: $28 $38

    inc d                                         ; $6f2a: $14
    inc a                                         ; $6f2b: $3c
    inc d                                         ; $6f2c: $14
    inc a                                         ; $6f2d: $3c
    inc [hl]                                      ; $6f2e: $34
    inc a                                         ; $6f2f: $3c

jr_0e1_6f30:
    ld [hl-], a                                   ; $6f30: $32
    ld a, $32                                     ; $6f31: $3e $32
    ld a, $3f                                     ; $6f33: $3e $3f
    dec a                                         ; $6f35: $3d
    rst $38                                       ; $6f36: $ff

jr_0e1_6f37:
    cp a                                          ; $6f37: $bf
    ld [bc], a                                    ; $6f38: $02
    rst $38                                       ; $6f39: $ff
    ld [bc], a                                    ; $6f3a: $02

jr_0e1_6f3b:
    ccf                                           ; $6f3b: $3f
    inc b                                         ; $6f3c: $04

jr_0e1_6f3d:
    ld a, a                                       ; $6f3d: $7f
    add d                                         ; $6f3e: $82
    jr c, jr_0e1_6f80                             ; $6f3f: $38 $3f

    ld [bc], a                                    ; $6f41: $02
    rra                                           ; $6f42: $1f

jr_0e1_6f43:
    ld [de], a                                    ; $6f43: $12
    nop                                           ; $6f44: $00

jr_0e1_6f45:
    adc d                                         ; $6f45: $8a
    rra                                           ; $6f46: $1f
    dec e                                         ; $6f47: $1d
    rla                                           ; $6f48: $17
    rra                                           ; $6f49: $1f
    inc d                                         ; $6f4a: $14
    inc e                                         ; $6f4b: $1c
    ld a, [de]                                    ; $6f4c: $1a
    ld e, $0e                                     ; $6f4d: $1e $0e
    ld e, $02                                     ; $6f4f: $1e $02
    inc e                                         ; $6f51: $1c
    ld [bc], a                                    ; $6f52: $02
    jr jr_0e1_6f67                                ; $6f53: $18 $12

    nop                                           ; $6f55: $00
    rst $38                                       ; $6f56: $ff
    dec c                                         ; $6f57: $0d
    inc b                                         ; $6f58: $04
    ei                                            ; $6f59: $fb
    dec b                                         ; $6f5a: $05
    or $fd                                        ; $6f5b: $f6 $fd
    db $eb                                        ; $6f5d: $eb
    ld a, [$ffeb]                                 ; $6f5e: $fa $eb $ff
    ei                                            ; $6f61: $fb

jr_0e1_6f62:
    ld a, [$fffb]                                 ; $6f62: $fa $fb $ff
    ld [bc], a                                    ; $6f65: $02
    dec bc                                        ; $6f66: $0b

jr_0e1_6f67:
    sbc [hl]                                      ; $6f67: $9e
    rra                                           ; $6f68: $1f
    inc d                                         ; $6f69: $14
    ccf                                           ; $6f6a: $3f
    jr z, jr_0e1_6fac                             ; $6f6b: $28 $3f

    jr nz, jr_0e1_6fae                            ; $6f6d: $20 $3f

    dec [hl]                                      ; $6f6f: $35
    ccf                                           ; $6f70: $3f
    ld a, [hl-]                                   ; $6f71: $3a
    ccf                                           ; $6f72: $3f
    cpl                                           ; $6f73: $2f
    rra                                           ; $6f74: $1f
    rla                                           ; $6f75: $17
    rra                                           ; $6f76: $1f
    jr jr_0e1_6fa1                                ; $6f77: $18 $28

    ccf                                           ; $6f79: $3f
    ld [hl], a                                    ; $6f7a: $77
    ld a, a                                       ; $6f7b: $7f
    ld d, b                                       ; $6f7c: $50
    ld a, a                                       ; $6f7d: $7f
    ld e, c                                       ; $6f7e: $59
    ld a, a                                       ; $6f7f: $7f

jr_0e1_6f80:
    sbc a                                         ; $6f80: $9f
    rst $38                                       ; $6f81: $ff
    sbc a                                         ; $6f82: $9f
    rst $38                                       ; $6f83: $ff
    sbc a                                         ; $6f84: $9f
    rst $38                                       ; $6f85: $ff
    ld [bc], a                                    ; $6f86: $02
    db $10                                        ; $6f87: $10
    adc b                                         ; $6f88: $88
    jr jr_0e1_6f93                                ; $6f89: $18 $08

    inc e                                         ; $6f8b: $1c
    inc d                                         ; $6f8c: $14
    inc e                                         ; $6f8d: $1c
    inc d                                         ; $6f8e: $14
    inc e                                         ; $6f8f: $1c
    inc c                                         ; $6f90: $0c
    inc bc                                        ; $6f91: $03
    inc e                                         ; $6f92: $1c

jr_0e1_6f93:
    add e                                         ; $6f93: $83
    inc d                                         ; $6f94: $14
    jr jr_0e1_6f9f                                ; $6f95: $18 $08

    ld [bc], a                                    ; $6f97: $02

jr_0e1_6f98:
    jr jr_0e1_6f25                                ; $6f98: $18 $8b

    inc d                                         ; $6f9a: $14
    inc e                                         ; $6f9b: $1c
    ld a, [bc]                                    ; $6f9c: $0a
    ld e, $1a                                     ; $6f9d: $1e $1a

jr_0e1_6f9f:
    ld e, $1d                                     ; $6f9f: $1e $1d

jr_0e1_6fa1:
    rra                                           ; $6fa1: $1f
    dec e                                         ; $6fa2: $1d
    rra                                           ; $6fa3: $1f
    dec e                                         ; $6fa4: $1d
    inc bc                                        ; $6fa5: $03
    rra                                           ; $6fa6: $1f
    inc bc                                        ; $6fa7: $03
    rst $38                                       ; $6fa8: $ff
    add c                                         ; $6fa9: $81
    sbc a                                         ; $6faa: $9f
    ld [bc], a                                    ; $6fab: $02

jr_0e1_6fac:
    ld a, a                                       ; $6fac: $7f
    add h                                         ; $6fad: $84

jr_0e1_6fae:
    ld a, [hl]                                    ; $6fae: $7e
    ld a, a                                       ; $6faf: $7f
    dec a                                         ; $6fb0: $3d
    ccf                                           ; $6fb1: $3f
    ld [bc], a                                    ; $6fb2: $02
    rrca                                          ; $6fb3: $0f
    ld [bc], a                                    ; $6fb4: $02
    rlca                                          ; $6fb5: $07
    ld [de], a                                    ; $6fb6: $12
    nop                                           ; $6fb7: $00
    add d                                         ; $6fb8: $82
    rla                                           ; $6fb9: $17
    dec e                                         ; $6fba: $1d
    ld [bc], a                                    ; $6fbb: $02
    ld e, $83                                     ; $6fbc: $1e $83
    inc d                                         ; $6fbe: $14
    inc e                                         ; $6fbf: $1c
    ld [bc], a                                    ; $6fc0: $02
    inc bc                                        ; $6fc1: $03
    ld e, $82                                     ; $6fc2: $1e $82
    ld b, $1e                                     ; $6fc4: $06 $1e
    ld [bc], a                                    ; $6fc6: $02
    inc e                                         ; $6fc7: $1c
    ld [de], a                                    ; $6fc8: $12
    nop                                           ; $6fc9: $00
    rst $38                                       ; $6fca: $ff
    dec c                                         ; $6fcb: $0d
    inc b                                         ; $6fcc: $04
    ei                                            ; $6fcd: $fb
    dec b                                         ; $6fce: $05
    or $fd                                        ; $6fcf: $f6 $fd
    db $ec                                        ; $6fd1: $ec
    ld a, [$ffec]                                 ; $6fd2: $fa $ec $ff
    db $fc                                        ; $6fd5: $fc
    ld a, [$00fc]                                 ; $6fd6: $fa $fc $00
    ld [bc], a                                    ; $6fd9: $02
    dec bc                                        ; $6fda: $0b
    sbc e                                         ; $6fdb: $9b
    rra                                           ; $6fdc: $1f
    inc d                                         ; $6fdd: $14
    ccf                                           ; $6fde: $3f
    jr z, jr_0e1_7020                             ; $6fdf: $28 $3f

    jr nz, jr_0e1_7022                            ; $6fe1: $20 $3f

    dec [hl]                                      ; $6fe3: $35
    ccf                                           ; $6fe4: $3f
    ld a, [hl-]                                   ; $6fe5: $3a
    ccf                                           ; $6fe6: $3f
    cpl                                           ; $6fe7: $2f
    rra                                           ; $6fe8: $1f
    rla                                           ; $6fe9: $17
    rra                                           ; $6fea: $1f
    dec e                                         ; $6feb: $1d
    jr nc, @+$41                                  ; $6fec: $30 $3f

    ld e, b                                       ; $6fee: $58
    ld a, a                                       ; $6fef: $7f
    ld e, a                                       ; $6ff0: $5f
    ld a, a                                       ; $6ff1: $7f
    ld e, a                                       ; $6ff2: $5f
    ld a, a                                       ; $6ff3: $7f
    sbc a                                         ; $6ff4: $9f
    rst $38                                       ; $6ff5: $ff
    cp a                                          ; $6ff6: $bf
    inc bc                                        ; $6ff7: $03
    rst $38                                       ; $6ff8: $ff
    ld [bc], a                                    ; $6ff9: $02
    db $10                                        ; $6ffa: $10
    adc b                                         ; $6ffb: $88
    jr jr_0e1_7006                                ; $6ffc: $18 $08

    inc e                                         ; $6ffe: $1c
    inc d                                         ; $6fff: $14
    inc e                                         ; $7000: $1c
    inc d                                         ; $7001: $14
    inc e                                         ; $7002: $1c
    inc c                                         ; $7003: $0c
    inc bc                                        ; $7004: $03
    inc e                                         ; $7005: $1c

jr_0e1_7006:
    add e                                         ; $7006: $83
    inc d                                         ; $7007: $14
    jr jr_0e1_7012                                ; $7008: $18 $08

    ld [bc], a                                    ; $700a: $02
    jr jr_0e1_6f98                                ; $700b: $18 $8b

    inc c                                         ; $700d: $0c
    inc e                                         ; $700e: $1c
    ld a, [de]                                    ; $700f: $1a
    ld e, $1a                                     ; $7010: $1e $1a

jr_0e1_7012:
    ld e, $1a                                     ; $7012: $1e $1a
    ld e, $19                                     ; $7014: $1e $19
    rra                                           ; $7016: $1f
    dec e                                         ; $7017: $1d
    inc bc                                        ; $7018: $03
    rra                                           ; $7019: $1f
    add d                                         ; $701a: $82
    rst $38                                       ; $701b: $ff
    cp a                                          ; $701c: $bf
    ld [bc], a                                    ; $701d: $02
    ld a, a                                       ; $701e: $7f
    inc b                                         ; $701f: $04

jr_0e1_7020:
    ccf                                           ; $7020: $3f
    ld [bc], a                                    ; $7021: $02

jr_0e1_7022:
    rra                                           ; $7022: $1f
    ld [bc], a                                    ; $7023: $02
    inc bc                                        ; $7024: $03
    inc d                                         ; $7025: $14
    nop                                           ; $7026: $00
    add l                                         ; $7027: $85
    ccf                                           ; $7028: $3f
    add hl, sp                                    ; $7029: $39
    ld l, $3e                                     ; $702a: $2e $3e
    jr jr_0e1_7031                                ; $702c: $18 $03

    jr c, jr_0e1_7032                             ; $702e: $38 $02

    inc a                                         ; $7030: $3c

jr_0e1_7031:
    ld [bc], a                                    ; $7031: $02

jr_0e1_7032:
    jr nc, jr_0e1_7048                            ; $7032: $30 $14

    nop                                           ; $7034: $00
    rst $38                                       ; $7035: $ff
    dec c                                         ; $7036: $0d
    inc b                                         ; $7037: $04
    ei                                            ; $7038: $fb
    dec b                                         ; $7039: $05
    or $fd                                        ; $703a: $f6 $fd
    db $eb                                        ; $703c: $eb
    ld a, [$ffeb]                                 ; $703d: $fa $eb $ff
    ei                                            ; $7040: $fb
    ei                                            ; $7041: $fb
    ei                                            ; $7042: $fb
    nop                                           ; $7043: $00
    ld [bc], a                                    ; $7044: $02
    dec bc                                        ; $7045: $0b
    sbc e                                         ; $7046: $9b
    rra                                           ; $7047: $1f

jr_0e1_7048:
    inc d                                         ; $7048: $14
    ccf                                           ; $7049: $3f
    jr z, jr_0e1_708b                             ; $704a: $28 $3f

    jr nz, jr_0e1_708d                            ; $704c: $20 $3f

    dec [hl]                                      ; $704e: $35
    ccf                                           ; $704f: $3f
    ld a, [hl-]                                   ; $7050: $3a
    ccf                                           ; $7051: $3f
    cpl                                           ; $7052: $2f
    rra                                           ; $7053: $1f
    rla                                           ; $7054: $17
    rra                                           ; $7055: $1f
    jr @+$2a                                      ; $7056: $18 $28

    ccf                                           ; $7058: $3f
    ld d, a                                       ; $7059: $57
    ld a, a                                       ; $705a: $7f
    ld e, b                                       ; $705b: $58
    ld a, a                                       ; $705c: $7f
    cp h                                          ; $705d: $bc
    rst $38                                       ; $705e: $ff
    cp a                                          ; $705f: $bf
    rst $38                                       ; $7060: $ff
    cp a                                          ; $7061: $bf
    inc bc                                        ; $7062: $03
    rst $38                                       ; $7063: $ff
    ld [bc], a                                    ; $7064: $02
    db $10                                        ; $7065: $10
    adc b                                         ; $7066: $88
    jr jr_0e1_7071                                ; $7067: $18 $08

    inc e                                         ; $7069: $1c
    inc d                                         ; $706a: $14
    inc e                                         ; $706b: $1c
    inc d                                         ; $706c: $14
    inc e                                         ; $706d: $1c
    inc c                                         ; $706e: $0c
    inc bc                                        ; $706f: $03
    inc e                                         ; $7070: $1c

jr_0e1_7071:
    add e                                         ; $7071: $83
    inc d                                         ; $7072: $14
    jr jr_0e1_707d                                ; $7073: $18 $08

    ld [bc], a                                    ; $7075: $02
    jr jr_0e1_7006                                ; $7076: $18 $8e

    inc d                                         ; $7078: $14
    inc e                                         ; $7079: $1c
    ld c, $1e                                     ; $707a: $0e $1e
    ld a, [bc]                                    ; $707c: $0a

jr_0e1_707d:
    ld e, $1a                                     ; $707d: $1e $1a
    ld e, $19                                     ; $707f: $1e $19
    rra                                           ; $7081: $1f
    add hl, de                                    ; $7082: $19
    rra                                           ; $7083: $1f
    add hl, de                                    ; $7084: $19
    rra                                           ; $7085: $1f
    ld [bc], a                                    ; $7086: $02
    rst $38                                       ; $7087: $ff
    add h                                         ; $7088: $84
    ld l, a                                       ; $7089: $6f
    ld a, a                                       ; $708a: $7f

jr_0e1_708b:
    ld l, a                                       ; $708b: $6f
    ld a, a                                       ; $708c: $7f

jr_0e1_708d:
    ld [bc], a                                    ; $708d: $02
    rst $38                                       ; $708e: $ff
    add h                                         ; $708f: $84
    cp $ff                                        ; $7090: $fe $ff
    call Call_000_02ff                            ; $7092: $cd $ff $02
    ld a, [hl]                                    ; $7095: $7e
    ld [de], a                                    ; $7096: $12
    nop                                           ; $7097: $00
    add l                                         ; $7098: $85
    rra                                           ; $7099: $1f
    dec e                                         ; $709a: $1d
    ld e, $1a                                     ; $709b: $1e $1a
    inc c                                         ; $709d: $0c
    inc bc                                        ; $709e: $03
    inc e                                         ; $709f: $1c
    ld [bc], a                                    ; $70a0: $02
    jr jr_0e1_70b9                                ; $70a1: $18 $16

    nop                                           ; $70a3: $00
    rst $38                                       ; $70a4: $ff
    dec c                                         ; $70a5: $0d
    inc b                                         ; $70a6: $04
    ei                                            ; $70a7: $fb
    dec b                                         ; $70a8: $05
    or $fd                                        ; $70a9: $f6 $fd
    db $ec                                        ; $70ab: $ec
    ld a, [$ffec]                                 ; $70ac: $fa $ec $ff
    db $fc                                        ; $70af: $fc
    ld a, [$00fc]                                 ; $70b0: $fa $fc $00
    ld [bc], a                                    ; $70b3: $02
    dec bc                                        ; $70b4: $0b
    sbc e                                         ; $70b5: $9b
    rra                                           ; $70b6: $1f
    inc d                                         ; $70b7: $14
    ccf                                           ; $70b8: $3f

jr_0e1_70b9:
    jr z, jr_0e1_70fa                             ; $70b9: $28 $3f

    jr nz, jr_0e1_70fc                            ; $70bb: $20 $3f

    dec [hl]                                      ; $70bd: $35
    ccf                                           ; $70be: $3f
    ld a, [hl-]                                   ; $70bf: $3a
    ccf                                           ; $70c0: $3f
    cpl                                           ; $70c1: $2f
    rra                                           ; $70c2: $1f
    rla                                           ; $70c3: $17
    rra                                           ; $70c4: $1f
    dec e                                         ; $70c5: $1d
    jr nc, jr_0e1_7107                            ; $70c6: $30 $3f

    ld e, b                                       ; $70c8: $58
    ld a, a                                       ; $70c9: $7f
    ld e, a                                       ; $70ca: $5f
    ld a, a                                       ; $70cb: $7f
    ld e, a                                       ; $70cc: $5f
    ld a, a                                       ; $70cd: $7f
    sbc a                                         ; $70ce: $9f
    rst $38                                       ; $70cf: $ff
    cp a                                          ; $70d0: $bf
    inc bc                                        ; $70d1: $03
    rst $38                                       ; $70d2: $ff
    ld [bc], a                                    ; $70d3: $02
    db $10                                        ; $70d4: $10
    adc b                                         ; $70d5: $88
    jr jr_0e1_70e0                                ; $70d6: $18 $08

    inc e                                         ; $70d8: $1c
    inc d                                         ; $70d9: $14
    inc e                                         ; $70da: $1c
    inc d                                         ; $70db: $14
    inc e                                         ; $70dc: $1c
    inc c                                         ; $70dd: $0c
    inc bc                                        ; $70de: $03
    inc e                                         ; $70df: $1c

jr_0e1_70e0:
    add e                                         ; $70e0: $83
    inc d                                         ; $70e1: $14
    jr jr_0e1_70ec                                ; $70e2: $18 $08

    ld [bc], a                                    ; $70e4: $02
    jr @-$6e                                      ; $70e5: $18 $90

    inc c                                         ; $70e7: $0c
    inc e                                         ; $70e8: $1c
    ld a, [de]                                    ; $70e9: $1a
    ld e, $1a                                     ; $70ea: $1e $1a

jr_0e1_70ec:
    ld e, $1a                                     ; $70ec: $1e $1a
    ld e, $19                                     ; $70ee: $1e $19
    rra                                           ; $70f0: $1f
    dec e                                         ; $70f1: $1d
    rra                                           ; $70f2: $1f
    rla                                           ; $70f3: $17
    rra                                           ; $70f4: $1f
    rst $38                                       ; $70f5: $ff
    cp a                                          ; $70f6: $bf
    ld [bc], a                                    ; $70f7: $02
    ld a, a                                       ; $70f8: $7f
    ld [bc], a                                    ; $70f9: $02

jr_0e1_70fa:
    ccf                                           ; $70fa: $3f
    add d                                         ; $70fb: $82

jr_0e1_70fc:
    ld a, $3f                                     ; $70fc: $3e $3f
    ld [bc], a                                    ; $70fe: $02
    ld a, a                                       ; $70ff: $7f
    ld [bc], a                                    ; $7100: $02
    ld a, $14                                     ; $7101: $3e $14
    nop                                           ; $7103: $00
    add d                                         ; $7104: $82
    ccf                                           ; $7105: $3f
    add hl, sp                                    ; $7106: $39

jr_0e1_7107:
    ld [bc], a                                    ; $7107: $02
    ld a, $04                                     ; $7108: $3e $04
    jr c, jr_0e1_710e                             ; $710a: $38 $02

    jr nc, jr_0e1_7124                            ; $710c: $30 $16

jr_0e1_710e:
    nop                                           ; $710e: $00
    rst $38                                       ; $710f: $ff
    dec c                                         ; $7110: $0d
    inc b                                         ; $7111: $04
    ei                                            ; $7112: $fb
    dec b                                         ; $7113: $05
    or $fd                                        ; $7114: $f6 $fd
    db $eb                                        ; $7116: $eb
    ld a, [$ffeb]                                 ; $7117: $fa $eb $ff
    ei                                            ; $711a: $fb
    ld a, [$fffb]                                 ; $711b: $fa $fb $ff
    ld [bc], a                                    ; $711e: $02
    ld c, $9e                                     ; $711f: $0e $9e
    rra                                           ; $7121: $1f
    dec d                                         ; $7122: $15
    ccf                                           ; $7123: $3f

jr_0e1_7124:
    dec sp                                        ; $7124: $3b
    ccf                                           ; $7125: $3f
    inc h                                         ; $7126: $24
    ccf                                           ; $7127: $3f
    jr c, jr_0e1_7169                             ; $7128: $38 $3f

    dec l                                         ; $712a: $2d
    ccf                                           ; $712b: $3f
    jr nz, jr_0e1_714d                            ; $712c: $20 $1f

    ld [de], a                                    ; $712e: $12
    rra                                           ; $712f: $1f
    dec d                                         ; $7130: $15
    ccf                                           ; $7131: $3f
    jr c, @+$61                                   ; $7132: $38 $5f

    ld a, a                                       ; $7134: $7f
    ld e, d                                       ; $7135: $5a
    ld a, a                                       ; $7136: $7f
    cp l                                          ; $7137: $bd
    rst $38                                       ; $7138: $ff
    sbc d                                         ; $7139: $9a
    rst $38                                       ; $713a: $ff
    cp l                                          ; $713b: $bd
    rst $38                                       ; $713c: $ff
    db $fd                                        ; $713d: $fd
    sbc a                                         ; $713e: $9f
    ld [bc], a                                    ; $713f: $02
    db $10                                        ; $7140: $10
    add h                                         ; $7141: $84
    jr jr_0e1_714c                                ; $7142: $18 $08

    inc e                                         ; $7144: $1c
    inc d                                         ; $7145: $14
    inc bc                                        ; $7146: $03
    inc e                                         ; $7147: $1c
    adc c                                         ; $7148: $89
    inc c                                         ; $7149: $0c
    inc e                                         ; $714a: $1c
    inc d                                         ; $714b: $14

jr_0e1_714c:
    inc e                                         ; $714c: $1c

jr_0e1_714d:
    inc b                                         ; $714d: $04
    jr jr_0e1_7158                                ; $714e: $18 $08

    jr jr_0e1_715a                                ; $7150: $18 $08

    ld [bc], a                                    ; $7152: $02
    inc e                                         ; $7153: $1c
    adc c                                         ; $7154: $89
    ld a, [de]                                    ; $7155: $1a
    ld e, $1a                                     ; $7156: $1e $1a

jr_0e1_7158:
    ld e, $1d                                     ; $7158: $1e $1d

jr_0e1_715a:
    rra                                           ; $715a: $1f
    add hl, de                                    ; $715b: $19
    rra                                           ; $715c: $1f
    dec e                                         ; $715d: $1d
    ld [bc], a                                    ; $715e: $02
    rra                                           ; $715f: $1f
    adc b                                         ; $7160: $88
    dec e                                         ; $7161: $1d
    db $fd                                        ; $7162: $fd
    and e                                         ; $7163: $a3
    ld a, d                                       ; $7164: $7a
    ld a, a                                       ; $7165: $7f
    ld a, [hl-]                                   ; $7166: $3a
    ccf                                           ; $7167: $3f
    ld [hl], a                                    ; $7168: $77

jr_0e1_7169:
    inc bc                                        ; $7169: $03
    ld a, a                                       ; $716a: $7f
    add d                                         ; $716b: $82
    dec h                                         ; $716c: $25
    dec a                                         ; $716d: $3d
    ld [bc], a                                    ; $716e: $02
    jr jr_0e1_7183                                ; $716f: $18 $12

    nop                                           ; $7171: $00
    add d                                         ; $7172: $82
    rra                                           ; $7173: $1f
    dec e                                         ; $7174: $1d
    ld [bc], a                                    ; $7175: $02
    ld e, $02                                     ; $7176: $1e $02
    inc e                                         ; $7178: $1c
    add c                                         ; $7179: $81
    ld a, [bc]                                    ; $717a: $0a
    inc bc                                        ; $717b: $03
    ld e, $82                                     ; $717c: $1e $82
    inc b                                         ; $717e: $04
    inc e                                         ; $717f: $1c
    ld [bc], a                                    ; $7180: $02
    jr @+$14                                      ; $7181: $18 $12

jr_0e1_7183:
    nop                                           ; $7183: $00
    rst $38                                       ; $7184: $ff
    dec c                                         ; $7185: $0d
    inc b                                         ; $7186: $04
    ei                                            ; $7187: $fb
    dec b                                         ; $7188: $05
    or $fd                                        ; $7189: $f6 $fd
    db $eb                                        ; $718b: $eb
    ld a, [$ffeb]                                 ; $718c: $fa $eb $ff
    ei                                            ; $718f: $fb
    ei                                            ; $7190: $fb
    ei                                            ; $7191: $fb
    cp $02                                        ; $7192: $fe $02
    ld c, $9e                                     ; $7194: $0e $9e
    rra                                           ; $7196: $1f
    dec d                                         ; $7197: $15
    ccf                                           ; $7198: $3f
    dec sp                                        ; $7199: $3b
    ccf                                           ; $719a: $3f
    inc h                                         ; $719b: $24
    ccf                                           ; $719c: $3f
    jr c, jr_0e1_71de                             ; $719d: $38 $3f

    dec l                                         ; $719f: $2d
    ccf                                           ; $71a0: $3f
    jr nz, jr_0e1_71c2                            ; $71a1: $20 $1f

    ld [de], a                                    ; $71a3: $12
    rra                                           ; $71a4: $1f
    dec d                                         ; $71a5: $15
    ccf                                           ; $71a6: $3f
    jr c, jr_0e1_7208                             ; $71a7: $38 $5f

    ld a, a                                       ; $71a9: $7f
    ld e, d                                       ; $71aa: $5a
    ld a, a                                       ; $71ab: $7f
    cp l                                          ; $71ac: $bd
    rst $38                                       ; $71ad: $ff
    sbc d                                         ; $71ae: $9a
    rst $38                                       ; $71af: $ff
    sbc l                                         ; $71b0: $9d
    rst $38                                       ; $71b1: $ff
    ld a, [hl]                                    ; $71b2: $7e
    ld c, c                                       ; $71b3: $49
    ld [bc], a                                    ; $71b4: $02
    db $10                                        ; $71b5: $10
    add h                                         ; $71b6: $84
    jr jr_0e1_71c1                                ; $71b7: $18 $08

    inc e                                         ; $71b9: $1c
    inc d                                         ; $71ba: $14
    inc bc                                        ; $71bb: $03
    inc e                                         ; $71bc: $1c
    adc c                                         ; $71bd: $89
    inc c                                         ; $71be: $0c
    inc e                                         ; $71bf: $1c
    inc d                                         ; $71c0: $14

jr_0e1_71c1:
    inc e                                         ; $71c1: $1c

jr_0e1_71c2:
    inc b                                         ; $71c2: $04
    jr @+$0a                                      ; $71c3: $18 $08

    jr jr_0e1_71cf                                ; $71c5: $18 $08

    ld [bc], a                                    ; $71c7: $02
    inc e                                         ; $71c8: $1c
    add c                                         ; $71c9: $81
    ld a, [de]                                    ; $71ca: $1a
    inc bc                                        ; $71cb: $03
    ld e, $85                                     ; $71cc: $1e $85
    dec e                                         ; $71ce: $1d

jr_0e1_71cf:
    rra                                           ; $71cf: $1f
    dec e                                         ; $71d0: $1d
    rra                                           ; $71d1: $1f
    dec e                                         ; $71d2: $1d
    ld [bc], a                                    ; $71d3: $02
    rra                                           ; $71d4: $1f
    add l                                         ; $71d5: $85
    dec e                                         ; $71d6: $1d
    db $fd                                        ; $71d7: $fd
    sbc a                                         ; $71d8: $9f
    halt                                          ; $71d9: $76
    ld a, a                                       ; $71da: $7f
    ld [bc], a                                    ; $71db: $02
    ccf                                           ; $71dc: $3f
    ld [bc], a                                    ; $71dd: $02

jr_0e1_71de:
    ld a, a                                       ; $71de: $7f
    add d                                         ; $71df: $82
    ld c, [hl]                                    ; $71e0: $4e
    ld a, a                                       ; $71e1: $7f
    ld [bc], a                                    ; $71e2: $02
    dec sp                                        ; $71e3: $3b
    ld [bc], a                                    ; $71e4: $02
    inc bc                                        ; $71e5: $03
    ld [de], a                                    ; $71e6: $12
    nop                                           ; $71e7: $00
    ld [bc], a                                    ; $71e8: $02
    rlca                                          ; $71e9: $07
    ld [bc], a                                    ; $71ea: $02
    ld b, $81                                     ; $71eb: $06 $81
    inc bc                                        ; $71ed: $03
    inc bc                                        ; $71ee: $03
    rlca                                          ; $71ef: $07
    add d                                         ; $71f0: $82
    inc bc                                        ; $71f1: $03
    rlca                                          ; $71f2: $07
    ld [bc], a                                    ; $71f3: $02
    ld b, $02                                     ; $71f4: $06 $02
    inc b                                         ; $71f6: $04
    ld [de], a                                    ; $71f7: $12
    nop                                           ; $71f8: $00
    rst $38                                       ; $71f9: $ff
    dec c                                         ; $71fa: $0d
    inc b                                         ; $71fb: $04
    ei                                            ; $71fc: $fb
    dec b                                         ; $71fd: $05
    or $fd                                        ; $71fe: $f6 $fd
    db $ec                                        ; $7200: $ec
    ld a, [$ffec]                                 ; $7201: $fa $ec $ff
    db $fc                                        ; $7204: $fc
    ld a, [$fffc]                                 ; $7205: $fa $fc $ff

jr_0e1_7208:
    ld [bc], a                                    ; $7208: $02
    ld c, $9e                                     ; $7209: $0e $9e
    rra                                           ; $720b: $1f
    dec d                                         ; $720c: $15
    ccf                                           ; $720d: $3f
    dec sp                                        ; $720e: $3b
    ccf                                           ; $720f: $3f
    inc h                                         ; $7210: $24
    ccf                                           ; $7211: $3f
    jr c, jr_0e1_7253                             ; $7212: $38 $3f

    dec l                                         ; $7214: $2d
    ccf                                           ; $7215: $3f
    jr nz, jr_0e1_7237                            ; $7216: $20 $1f

    ld [de], a                                    ; $7218: $12
    rra                                           ; $7219: $1f
    dec d                                         ; $721a: $15
    ccf                                           ; $721b: $3f
    jr c, @+$61                                   ; $721c: $38 $5f

    ld a, a                                       ; $721e: $7f
    ld e, d                                       ; $721f: $5a
    ld a, a                                       ; $7220: $7f
    db $dd                                        ; $7221: $dd
    rst $38                                       ; $7222: $ff
    cp d                                          ; $7223: $ba
    rst $38                                       ; $7224: $ff
    cp l                                          ; $7225: $bd
    rst $38                                       ; $7226: $ff
    db $fd                                        ; $7227: $fd
    cp a                                          ; $7228: $bf
    ld [bc], a                                    ; $7229: $02
    db $10                                        ; $722a: $10
    add h                                         ; $722b: $84
    jr jr_0e1_7236                                ; $722c: $18 $08

    inc e                                         ; $722e: $1c
    inc d                                         ; $722f: $14
    inc bc                                        ; $7230: $03
    inc e                                         ; $7231: $1c
    adc c                                         ; $7232: $89
    inc c                                         ; $7233: $0c
    inc e                                         ; $7234: $1c
    inc d                                         ; $7235: $14

jr_0e1_7236:
    inc e                                         ; $7236: $1c

jr_0e1_7237:
    inc b                                         ; $7237: $04
    jr jr_0e1_7242                                ; $7238: $18 $08

    jr jr_0e1_7244                                ; $723a: $18 $08

    ld [bc], a                                    ; $723c: $02
    inc e                                         ; $723d: $1c
    adc c                                         ; $723e: $89
    ld a, [de]                                    ; $723f: $1a
    ld e, $1a                                     ; $7240: $1e $1a

jr_0e1_7242:
    ld e, $1a                                     ; $7242: $1e $1a

jr_0e1_7244:
    ld e, $1d                                     ; $7244: $1e $1d
    rra                                           ; $7246: $1f
    dec e                                         ; $7247: $1d
    ld [bc], a                                    ; $7248: $02
    rra                                           ; $7249: $1f
    add l                                         ; $724a: $85
    dec e                                         ; $724b: $1d
    db $fd                                        ; $724c: $fd
    and a                                         ; $724d: $a7
    ld a, d                                       ; $724e: $7a
    ld a, a                                       ; $724f: $7f
    ld [bc], a                                    ; $7250: $02
    ccf                                           ; $7251: $3f
    add d                                         ; $7252: $82

jr_0e1_7253:
    scf                                           ; $7253: $37
    ccf                                           ; $7254: $3f
    ld [bc], a                                    ; $7255: $02
    dec e                                         ; $7256: $1d
    ld [bc], a                                    ; $7257: $02
    ld bc, $0014                                  ; $7258: $01 $14 $00
    add d                                         ; $725b: $82
    rra                                           ; $725c: $1f
    dec e                                         ; $725d: $1d
    ld [bc], a                                    ; $725e: $02
    ld e, $82                                     ; $725f: $1e $82
    inc c                                         ; $7261: $0c
    inc e                                         ; $7262: $1c
    ld [bc], a                                    ; $7263: $02
    ld e, $82                                     ; $7264: $1e $82
    inc b                                         ; $7266: $04
    inc e                                         ; $7267: $1c
    ld [bc], a                                    ; $7268: $02
    jr jr_0e1_727f                                ; $7269: $18 $14

    nop                                           ; $726b: $00
    rst $38                                       ; $726c: $ff
    dec c                                         ; $726d: $0d
    inc b                                         ; $726e: $04
    ei                                            ; $726f: $fb
    dec b                                         ; $7270: $05
    or $fd                                        ; $7271: $f6 $fd
    db $eb                                        ; $7273: $eb
    ld a, [$ffeb]                                 ; $7274: $fa $eb $ff
    ei                                            ; $7277: $fb
    ei                                            ; $7278: $fb
    ei                                            ; $7279: $fb
    cp $02                                        ; $727a: $fe $02
    ld c, $9e                                     ; $727c: $0e $9e
    rra                                           ; $727e: $1f

jr_0e1_727f:
    dec d                                         ; $727f: $15
    ccf                                           ; $7280: $3f
    dec sp                                        ; $7281: $3b
    ccf                                           ; $7282: $3f
    inc h                                         ; $7283: $24
    ccf                                           ; $7284: $3f
    jr c, jr_0e1_72c6                             ; $7285: $38 $3f

    dec l                                         ; $7287: $2d
    ccf                                           ; $7288: $3f
    jr nz, jr_0e1_72aa                            ; $7289: $20 $1f

    ld [de], a                                    ; $728b: $12
    rra                                           ; $728c: $1f
    dec d                                         ; $728d: $15
    ccf                                           ; $728e: $3f
    jr c, jr_0e1_72f0                             ; $728f: $38 $5f

    ld a, a                                       ; $7291: $7f
    ld a, d                                       ; $7292: $7a
    ld a, a                                       ; $7293: $7f
    cp l                                          ; $7294: $bd
    rst $38                                       ; $7295: $ff
    cp d                                          ; $7296: $ba
    rst $38                                       ; $7297: $ff
    cp l                                          ; $7298: $bd
    rst $38                                       ; $7299: $ff
    ei                                            ; $729a: $fb
    cp a                                          ; $729b: $bf
    ld [bc], a                                    ; $729c: $02
    db $10                                        ; $729d: $10
    add h                                         ; $729e: $84
    jr jr_0e1_72a9                                ; $729f: $18 $08

    inc e                                         ; $72a1: $1c
    inc d                                         ; $72a2: $14
    inc bc                                        ; $72a3: $03
    inc e                                         ; $72a4: $1c
    adc c                                         ; $72a5: $89
    inc c                                         ; $72a6: $0c
    inc e                                         ; $72a7: $1c
    inc d                                         ; $72a8: $14

jr_0e1_72a9:
    inc e                                         ; $72a9: $1c

jr_0e1_72aa:
    inc b                                         ; $72aa: $04
    jr jr_0e1_72b5                                ; $72ab: $18 $08

    jr jr_0e1_72b7                                ; $72ad: $18 $08

    ld [bc], a                                    ; $72af: $02
    inc e                                         ; $72b0: $1c
    sub c                                         ; $72b1: $91
    ld a, [de]                                    ; $72b2: $1a
    ld e, $1a                                     ; $72b3: $1e $1a

jr_0e1_72b5:
    ld e, $1d                                     ; $72b5: $1e $1d

jr_0e1_72b7:
    rra                                           ; $72b7: $1f
    add hl, de                                    ; $72b8: $19
    rra                                           ; $72b9: $1f
    add hl, de                                    ; $72ba: $19
    rra                                           ; $72bb: $1f
    ld e, $12                                     ; $72bc: $1e $12
    rst $30                                       ; $72be: $f7
    cp a                                          ; $72bf: $bf
    ld l, l                                       ; $72c0: $6d
    ld e, a                                       ; $72c1: $5f
    rst $18                                       ; $72c2: $df
    inc bc                                        ; $72c3: $03
    rst $38                                       ; $72c4: $ff
    add d                                         ; $72c5: $82

jr_0e1_72c6:
    adc $ff                                       ; $72c6: $ce $ff
    ld [bc], a                                    ; $72c8: $02
    ld a, e                                       ; $72c9: $7b
    ld [bc], a                                    ; $72ca: $02
    jr c, jr_0e1_72df                             ; $72cb: $38 $12

    nop                                           ; $72cd: $00
    add d                                         ; $72ce: $82
    rlca                                          ; $72cf: $07
    ld bc, $0602                                  ; $72d0: $01 $02 $06
    ld [bc], a                                    ; $72d3: $02
    inc b                                         ; $72d4: $04
    ld [bc], a                                    ; $72d5: $02
    ld b, $82                                     ; $72d6: $06 $82
    ld [bc], a                                    ; $72d8: $02
    ld b, $02                                     ; $72d9: $06 $02
    inc b                                         ; $72db: $04
    inc d                                         ; $72dc: $14
    nop                                           ; $72dd: $00
    rst $38                                       ; $72de: $ff

jr_0e1_72df:
    dec c                                         ; $72df: $0d
    inc b                                         ; $72e0: $04
    ei                                            ; $72e1: $fb
    dec b                                         ; $72e2: $05
    or $fd                                        ; $72e3: $f6 $fd
    db $ec                                        ; $72e5: $ec
    ld a, [$ffec]                                 ; $72e6: $fa $ec $ff
    db $fc                                        ; $72e9: $fc
    ld a, [$fffc]                                 ; $72ea: $fa $fc $ff
    ld [bc], a                                    ; $72ed: $02
    ld c, $9e                                     ; $72ee: $0e $9e

jr_0e1_72f0:
    rra                                           ; $72f0: $1f
    dec d                                         ; $72f1: $15
    ccf                                           ; $72f2: $3f
    dec sp                                        ; $72f3: $3b
    ccf                                           ; $72f4: $3f
    inc h                                         ; $72f5: $24
    ccf                                           ; $72f6: $3f
    jr c, jr_0e1_7338                             ; $72f7: $38 $3f

    dec l                                         ; $72f9: $2d
    ccf                                           ; $72fa: $3f
    jr nz, jr_0e1_731c                            ; $72fb: $20 $1f

    ld [de], a                                    ; $72fd: $12
    rra                                           ; $72fe: $1f
    dec d                                         ; $72ff: $15
    ccf                                           ; $7300: $3f
    jr c, jr_0e1_7362                             ; $7301: $38 $5f

    ld a, a                                       ; $7303: $7f
    ld e, d                                       ; $7304: $5a
    ld a, a                                       ; $7305: $7f
    ld e, l                                       ; $7306: $5d
    ld a, a                                       ; $7307: $7f
    cp d                                          ; $7308: $ba
    rst $38                                       ; $7309: $ff
    cp l                                          ; $730a: $bd
    rst $38                                       ; $730b: $ff
    db $fd                                        ; $730c: $fd
    sbc a                                         ; $730d: $9f
    ld [bc], a                                    ; $730e: $02
    db $10                                        ; $730f: $10
    add h                                         ; $7310: $84
    jr jr_0e1_731b                                ; $7311: $18 $08

    inc e                                         ; $7313: $1c
    inc d                                         ; $7314: $14
    inc bc                                        ; $7315: $03
    inc e                                         ; $7316: $1c
    adc c                                         ; $7317: $89
    inc c                                         ; $7318: $0c
    inc e                                         ; $7319: $1c
    inc d                                         ; $731a: $14

jr_0e1_731b:
    inc e                                         ; $731b: $1c

jr_0e1_731c:
    inc b                                         ; $731c: $04
    jr jr_0e1_7327                                ; $731d: $18 $08

    jr jr_0e1_7329                                ; $731f: $18 $08

    ld [bc], a                                    ; $7321: $02
    inc e                                         ; $7322: $1c
    adc c                                         ; $7323: $89
    ld a, [de]                                    ; $7324: $1a
    ld e, $1a                                     ; $7325: $1e $1a

jr_0e1_7327:
    ld e, $1b                                     ; $7327: $1e $1b

jr_0e1_7329:
    rra                                           ; $7329: $1f
    dec e                                         ; $732a: $1d
    rra                                           ; $732b: $1f
    dec e                                         ; $732c: $1d
    ld [bc], a                                    ; $732d: $02
    rra                                           ; $732e: $1f
    add a                                         ; $732f: $87
    dec e                                         ; $7330: $1d
    db $fd                                        ; $7331: $fd
    and e                                         ; $7332: $a3
    ld a, d                                       ; $7333: $7a
    ld a, a                                       ; $7334: $7f
    scf                                           ; $7335: $37
    ccf                                           ; $7336: $3f
    ld [bc], a                                    ; $7337: $02

jr_0e1_7338:
    ld a, a                                       ; $7338: $7f
    add d                                         ; $7339: $82
    dec h                                         ; $733a: $25
    dec a                                         ; $733b: $3d
    ld [bc], a                                    ; $733c: $02
    inc e                                         ; $733d: $1c
    inc d                                         ; $733e: $14
    nop                                           ; $733f: $00
    add d                                         ; $7340: $82
    rra                                           ; $7341: $1f
    dec e                                         ; $7342: $1d
    ld [bc], a                                    ; $7343: $02
    ld e, $02                                     ; $7344: $1e $02
    inc e                                         ; $7346: $1c
    add d                                         ; $7347: $82
    inc c                                         ; $7348: $0c
    inc e                                         ; $7349: $1c
    ld [bc], a                                    ; $734a: $02
    jr jr_0e1_7363                                ; $734b: $18 $16

    nop                                           ; $734d: $00
    rst $38                                       ; $734e: $ff
    dec c                                         ; $734f: $0d
    inc b                                         ; $7350: $04
    ei                                            ; $7351: $fb
    dec b                                         ; $7352: $05
    or $fd                                        ; $7353: $f6 $fd
    db $eb                                        ; $7355: $eb
    db $fc                                        ; $7356: $fc
    db $ec                                        ; $7357: $ec
    cp $fb                                        ; $7358: $fe $fb
    ei                                            ; $735a: $fb
    ei                                            ; $735b: $fb
    db $fd                                        ; $735c: $fd
    ld [bc], a                                    ; $735d: $02
    ld a, $9e                                     ; $735e: $3e $9e
    ld a, a                                       ; $7360: $7f
    ld b, l                                       ; $7361: $45

jr_0e1_7362:
    rst $38                                       ; $7362: $ff

jr_0e1_7363:
    adc e                                         ; $7363: $8b
    rst $38                                       ; $7364: $ff
    sub h                                         ; $7365: $94
    rst $38                                       ; $7366: $ff
    xor b                                         ; $7367: $a8
    rst $38                                       ; $7368: $ff
    or $7f                                        ; $7369: $f6 $7f
    ld d, b                                       ; $736b: $50
    ccf                                           ; $736c: $3f
    ld hl, $121f                                  ; $736d: $21 $1f $12
    ccf                                           ; $7370: $3f
    ld sp, $7e5e                                  ; $7371: $31 $5e $7e
    xor e                                         ; $7374: $ab
    rst $38                                       ; $7375: $ff
    ld l, l                                       ; $7376: $6d
    ld a, a                                       ; $7377: $7f
    dec hl                                        ; $7378: $2b
    ccf                                           ; $7379: $3f
    ld c, l                                       ; $737a: $4d
    ld a, a                                       ; $737b: $7f
    ld c, l                                       ; $737c: $4d

jr_0e1_737d:
    ld a, a                                       ; $737d: $7f
    ld [bc], a                                    ; $737e: $02
    ld [bc], a                                    ; $737f: $02
    add d                                         ; $7380: $82
    inc bc                                        ; $7381: $03
    ld bc, $0206                                  ; $7382: $01 $06 $02
    add d                                         ; $7385: $82
    inc bc                                        ; $7386: $03
    ld bc, $0204                                  ; $7387: $01 $04 $02
    ld c, $00                                     ; $738a: $0e $00
    add d                                         ; $738c: $82
    db $fc                                        ; $738d: $fc
    sbc h                                         ; $738e: $9c
    ld [bc], a                                    ; $738f: $02
    jr nz, jr_0e1_731c                            ; $7390: $20 $8a

    ld a, a                                       ; $7392: $7f
    ld l, d                                       ; $7393: $6a
    ld a, l                                       ; $7394: $7d
    ld a, a                                       ; $7395: $7f
    ei                                            ; $7396: $fb
    rst $38                                       ; $7397: $ff
    cp a                                          ; $7398: $bf
    rst $38                                       ; $7399: $ff
    ld e, b                                       ; $739a: $58
    ld a, a                                       ; $739b: $7f
    ld [bc], a                                    ; $739c: $02
    ccf                                           ; $739d: $3f
    inc d                                         ; $739e: $14
    nop                                           ; $739f: $00
    add d                                         ; $73a0: $82
    inc bc                                        ; $73a1: $03
    ld bc, $0206                                  ; $73a2: $01 $06 $02
    ld [bc], a                                    ; $73a5: $02
    inc bc                                        ; $73a6: $03
    ld [bc], a                                    ; $73a7: $02
    ld [bc], a                                    ; $73a8: $02
    ld [de], a                                    ; $73a9: $12
    nop                                           ; $73aa: $00
    rst $38                                       ; $73ab: $ff
    dec c                                         ; $73ac: $0d
    inc b                                         ; $73ad: $04
    ei                                            ; $73ae: $fb
    dec b                                         ; $73af: $05
    or $fd                                        ; $73b0: $f6 $fd
    db $eb                                        ; $73b2: $eb
    db $fc                                        ; $73b3: $fc
    db $ec                                        ; $73b4: $ec
    rst $38                                       ; $73b5: $ff
    ei                                            ; $73b6: $fb
    ei                                            ; $73b7: $fb
    ei                                            ; $73b8: $fb
    cp $02                                        ; $73b9: $fe $02
    ld a, $9e                                     ; $73bb: $3e $9e
    ld a, a                                       ; $73bd: $7f
    ld b, l                                       ; $73be: $45
    rst $38                                       ; $73bf: $ff
    adc e                                         ; $73c0: $8b
    rst $38                                       ; $73c1: $ff
    sub h                                         ; $73c2: $94
    rst $38                                       ; $73c3: $ff
    xor b                                         ; $73c4: $a8
    rst $38                                       ; $73c5: $ff
    or $7f                                        ; $73c6: $f6 $7f
    ld d, b                                       ; $73c8: $50
    ccf                                           ; $73c9: $3f
    ld hl, $121f                                  ; $73ca: $21 $1f $12
    ccf                                           ; $73cd: $3f
    ld sp, $7e5e                                  ; $73ce: $31 $5e $7e
    xor d                                         ; $73d1: $aa
    cp $ed                                        ; $73d2: $fe $ed
    rst $38                                       ; $73d4: $ff
    ld l, a                                       ; $73d5: $6f
    ld a, a                                       ; $73d6: $7f
    ld h, l                                       ; $73d7: $65
    ld a, a                                       ; $73d8: $7f
    ld [hl], e                                    ; $73d9: $73
    ld a, a                                       ; $73da: $7f
    ld [bc], a                                    ; $73db: $02
    inc b                                         ; $73dc: $04
    add d                                         ; $73dd: $82
    ld b, $02                                     ; $73de: $06 $02
    ld b, $04                                     ; $73e0: $06 $04
    add d                                         ; $73e2: $82
    ld b, $02                                     ; $73e3: $06 $02
    inc b                                         ; $73e5: $04
    inc b                                         ; $73e6: $04
    ld a, [bc]                                    ; $73e7: $0a
    nop                                           ; $73e8: $00
    ld [bc], a                                    ; $73e9: $02
    ld b, $84                                     ; $73ea: $06 $84
    rlca                                          ; $73ec: $07
    ld bc, $e6de                                  ; $73ed: $01 $de $e6
    ld [bc], a                                    ; $73f0: $02
    jr nc, jr_0e1_737d                            ; $73f1: $30 $8a

    ccf                                           ; $73f3: $3f
    dec a                                         ; $73f4: $3d
    ld a, e                                       ; $73f5: $7b
    ld a, a                                       ; $73f6: $7f
    ld [hl], a                                    ; $73f7: $77
    ld a, a                                       ; $73f8: $7f
    xor [hl]                                      ; $73f9: $ae
    rst $38                                       ; $73fa: $ff
    push af                                       ; $73fb: $f5
    db $fd                                        ; $73fc: $fd
    ld [bc], a                                    ; $73fd: $02
    ld a, [hl]                                    ; $73fe: $7e
    inc d                                         ; $73ff: $14
    nop                                           ; $7400: $00
    add d                                         ; $7401: $82
    ld b, $02                                     ; $7402: $06 $02
    ld [bc], a                                    ; $7404: $02
    rlca                                          ; $7405: $07
    add d                                         ; $7406: $82
    ld bc, $0207                                  ; $7407: $01 $07 $02
    ld b, $16                                     ; $740a: $06 $16
    nop                                           ; $740c: $00
    rst $38                                       ; $740d: $ff
    dec c                                         ; $740e: $0d
    inc b                                         ; $740f: $04
    ei                                            ; $7410: $fb
    dec b                                         ; $7411: $05
    or $fd                                        ; $7412: $f6 $fd
    db $ec                                        ; $7414: $ec
    db $fc                                        ; $7415: $fc
    db $ed                                        ; $7416: $ed
    cp $fc                                        ; $7417: $fe $fc
    db $fc                                        ; $7419: $fc
    db $fc                                        ; $741a: $fc
    db $fd                                        ; $741b: $fd
    ld [bc], a                                    ; $741c: $02
    ld a, $9e                                     ; $741d: $3e $9e
    ld a, a                                       ; $741f: $7f
    ld b, l                                       ; $7420: $45
    rst $38                                       ; $7421: $ff
    adc e                                         ; $7422: $8b
    rst $38                                       ; $7423: $ff
    sub h                                         ; $7424: $94
    rst $38                                       ; $7425: $ff
    xor b                                         ; $7426: $a8
    rst $38                                       ; $7427: $ff
    or $7f                                        ; $7428: $f6 $7f
    ld d, b                                       ; $742a: $50
    ccf                                           ; $742b: $3f
    ld hl, $121f                                  ; $742c: $21 $1f $12
    rst $38                                       ; $742f: $ff
    pop af                                        ; $7430: $f1
    sbc [hl]                                      ; $7431: $9e
    cp $6b                                        ; $7432: $fe $6b
    ld a, a                                       ; $7434: $7f
    ld l, l                                       ; $7435: $6d
    ld a, a                                       ; $7436: $7f
    ld e, e                                       ; $7437: $5b
    ld a, a                                       ; $7438: $7f
    ld c, l                                       ; $7439: $4d
    ld a, a                                       ; $743a: $7f
    ld l, l                                       ; $743b: $6d
    ld a, a                                       ; $743c: $7f
    ld [bc], a                                    ; $743d: $02
    ld [bc], a                                    ; $743e: $02
    add d                                         ; $743f: $82
    inc bc                                        ; $7440: $03
    ld bc, $0206                                  ; $7441: $01 $06 $02
    add d                                         ; $7444: $82
    inc bc                                        ; $7445: $03
    ld bc, $0204                                  ; $7446: $01 $04 $02
    ld c, $00                                     ; $7449: $0e $00
    add d                                         ; $744b: $82
    cp $92                                        ; $744c: $fe $92
    ld [bc], a                                    ; $744e: $02
    ld b, b                                       ; $744f: $40
    adc b                                         ; $7450: $88
    ld a, l                                       ; $7451: $7d
    ld d, a                                       ; $7452: $57
    db $db                                        ; $7453: $db
    rst $38                                       ; $7454: $ff
    cp $ff                                        ; $7455: $fe $ff
    or e                                          ; $7457: $b3
    rst $38                                       ; $7458: $ff
    ld [bc], a                                    ; $7459: $02
    ld a, h                                       ; $745a: $7c
    ld d, $00                                     ; $745b: $16 $00
    ld [bc], a                                    ; $745d: $02
    ld bc, $0002                                  ; $745e: $01 $02 $00
    inc b                                         ; $7461: $04
    ld bc, $0016                                  ; $7462: $01 $16 $00
    rst $38                                       ; $7465: $ff
    dec c                                         ; $7466: $0d
    inc b                                         ; $7467: $04
    ei                                            ; $7468: $fb
    dec b                                         ; $7469: $05
    or $fd                                        ; $746a: $f6 $fd
    db $eb                                        ; $746c: $eb
    ei                                            ; $746d: $fb
    db $ec                                        ; $746e: $ec
    cp $fb                                        ; $746f: $fe $fb
    ei                                            ; $7471: $fb
    ei                                            ; $7472: $fb
    rst $38                                       ; $7473: $ff
    ld [bc], a                                    ; $7474: $02
    rra                                           ; $7475: $1f
    sbc [hl]                                      ; $7476: $9e
    ccf                                           ; $7477: $3f
    ld [hl+], a                                   ; $7478: $22
    ld a, a                                       ; $7479: $7f
    ld b, l                                       ; $747a: $45
    ld a, a                                       ; $747b: $7f
    ld c, d                                       ; $747c: $4a
    ld a, a                                       ; $747d: $7f
    ld d, h                                       ; $747e: $54
    ld a, a                                       ; $747f: $7f
    ld a, e                                       ; $7480: $7b
    ccf                                           ; $7481: $3f
    jr z, @+$21                                   ; $7482: $28 $1f

    db $10                                        ; $7484: $10
    rrca                                          ; $7485: $0f
    add hl, bc                                    ; $7486: $09
    rra                                           ; $7487: $1f
    jr jr_0e1_74b9                                ; $7488: $18 $2f

    ccf                                           ; $748a: $3f
    ld d, l                                       ; $748b: $55
    ld a, a                                       ; $748c: $7f
    ld l, [hl]                                    ; $748d: $6e
    ld a, a                                       ; $748e: $7f
    ld c, l                                       ; $748f: $4d
    ld a, a                                       ; $7490: $7f
    ld e, [hl]                                    ; $7491: $5e
    ld a, a                                       ; $7492: $7f
    sbc [hl]                                      ; $7493: $9e
    rst $38                                       ; $7494: $ff
    ld [bc], a                                    ; $7495: $02
    ld b, $8a                                     ; $7496: $06 $8a

jr_0e1_7498:
    rlca                                          ; $7498: $07
    dec b                                         ; $7499: $05
    ld b, $02                                     ; $749a: $06 $02
    ld b, $02                                     ; $749c: $06 $02
    ld b, $02                                     ; $749e: $06 $02
    rlca                                          ; $74a0: $07
    ld bc, $0603                                  ; $74a1: $01 $03 $06
    add c                                         ; $74a4: $81
    ld [bc], a                                    ; $74a5: $02
    ld [bc], a                                    ; $74a6: $02
    inc b                                         ; $74a7: $04
    inc b                                         ; $74a8: $04
    nop                                           ; $74a9: $00
    ld b, $04                                     ; $74aa: $06 $04
    ld [bc], a                                    ; $74ac: $02
    ld b, $8e                                     ; $74ad: $06 $8e
    or $7e                                        ; $74af: $f6 $7e
    ldh [$c0], a                                  ; $74b1: $e0 $c0
    ld a, l                                       ; $74b3: $7d
    ld d, a                                       ; $74b4: $57
    rst $38                                       ; $74b5: $ff
    ld sp, hl                                     ; $74b6: $f9
    cp e                                          ; $74b7: $bb
    rst $38                                       ; $74b8: $ff

jr_0e1_74b9:
    cp e                                          ; $74b9: $bb
    rst $38                                       ; $74ba: $ff
    ld e, a                                       ; $74bb: $5f
    ld a, a                                       ; $74bc: $7f
    ld [bc], a                                    ; $74bd: $02
    dec a                                         ; $74be: $3d
    inc d                                         ; $74bf: $14
    nop                                           ; $74c0: $00
    ld [bc], a                                    ; $74c1: $02
    ld [$0c02], sp                                ; $74c2: $08 $02 $0c
    ld [bc], a                                    ; $74c5: $02
    rrca                                          ; $74c6: $0f
    add h                                         ; $74c7: $84
    dec c                                         ; $74c8: $0d
    rrca                                          ; $74c9: $0f
    ld a, [bc]                                    ; $74ca: $0a
    ld c, $02                                     ; $74cb: $0e $02
    inc c                                         ; $74cd: $0c
    ld [de], a                                    ; $74ce: $12
    nop                                           ; $74cf: $00
    rst $38                                       ; $74d0: $ff
    dec c                                         ; $74d1: $0d
    inc b                                         ; $74d2: $04
    ei                                            ; $74d3: $fb
    dec b                                         ; $74d4: $05
    or $fd                                        ; $74d5: $f6 $fd
    db $ec                                        ; $74d7: $ec
    db $fc                                        ; $74d8: $fc
    db $ed                                        ; $74d9: $ed
    cp $fc                                        ; $74da: $fe $fc
    ei                                            ; $74dc: $fb
    db $fc                                        ; $74dd: $fc
    cp $02                                        ; $74de: $fe $02
    ld a, $9e                                     ; $74e0: $3e $9e
    ld a, a                                       ; $74e2: $7f
    ld b, l                                       ; $74e3: $45
    rst $38                                       ; $74e4: $ff
    adc e                                         ; $74e5: $8b
    rst $38                                       ; $74e6: $ff
    sub h                                         ; $74e7: $94
    rst $38                                       ; $74e8: $ff
    xor b                                         ; $74e9: $a8
    rst $38                                       ; $74ea: $ff

jr_0e1_74eb:
    or $7f                                        ; $74eb: $f6 $7f
    ld d, b                                       ; $74ed: $50
    ccf                                           ; $74ee: $3f

jr_0e1_74ef:
    ld hl, $121f                                  ; $74ef: $21 $1f $12
    rst $38                                       ; $74f2: $ff
    pop af                                        ; $74f3: $f1
    sbc [hl]                                      ; $74f4: $9e
    cp $6b                                        ; $74f5: $fe $6b
    ld a, a                                       ; $74f7: $7f
    ld l, l                                       ; $74f8: $6d
    ld a, a                                       ; $74f9: $7f
    ld l, e                                       ; $74fa: $6b
    ld a, a                                       ; $74fb: $7f
    ld c, l                                       ; $74fc: $4d
    ld a, a                                       ; $74fd: $7f
    ld c, l                                       ; $74fe: $4d
    ld a, a                                       ; $74ff: $7f
    ld [bc], a                                    ; $7500: $02
    ld [bc], a                                    ; $7501: $02

jr_0e1_7502:
    add d                                         ; $7502: $82
    inc bc                                        ; $7503: $03
    ld bc, $0206                                  ; $7504: $01 $06 $02
    add d                                         ; $7507: $82
    inc bc                                        ; $7508: $03
    ld bc, $0204                                  ; $7509: $01 $04 $02
    ld c, $00                                     ; $750c: $0e $00
    add d                                         ; $750e: $82
    db $f4                                        ; $750f: $f4
    sbc h                                         ; $7510: $9c
    ld [bc], a                                    ; $7511: $02
    jr nz, jr_0e1_7498                            ; $7512: $20 $84

    ld a, a                                       ; $7514: $7f
    ld l, d                                       ; $7515: $6a
    ld a, l                                       ; $7516: $7d
    ld a, a                                       ; $7517: $7f
    ld [bc], a                                    ; $7518: $02
    rst $38                                       ; $7519: $ff
    add d                                         ; $751a: $82
    cp [hl]                                       ; $751b: $be
    rst $38                                       ; $751c: $ff
    ld [bc], a                                    ; $751d: $02
    ld a, a                                       ; $751e: $7f
    ld d, $00                                     ; $751f: $16 $00
    add d                                         ; $7521: $82
    ld b, $02                                     ; $7522: $06 $02
    ld [bc], a                                    ; $7524: $02
    inc b                                         ; $7525: $04
    ld [bc], a                                    ; $7526: $02
    ld b, $81                                     ; $7527: $06 $81
    ld bc, $0703                                  ; $7529: $01 $03 $07
    inc d                                         ; $752c: $14
    nop                                           ; $752d: $00
    rst $38                                       ; $752e: $ff
    dec c                                         ; $752f: $0d
    inc b                                         ; $7530: $04
    ei                                            ; $7531: $fb
    dec b                                         ; $7532: $05
    rst $30                                       ; $7533: $f7
    cp $eb                                        ; $7534: $fe $eb
    ld a, [$00eb]                                 ; $7536: $fa $eb $00
    ei                                            ; $7539: $fb
    ld a, [$fffb]                                 ; $753a: $fa $fb $ff
    ld [bc], a                                    ; $753d: $02
    rla                                           ; $753e: $17
    adc d                                         ; $753f: $8a
    ccf                                           ; $7540: $3f
    jr z, jr_0e1_7582                             ; $7541: $28 $3f

    inc l                                         ; $7543: $2c
    ccf                                           ; $7544: $3f
    jr nc, jr_0e1_7586                            ; $7545: $30 $3f

    ld a, [hl+]                                   ; $7547: $2a
    ccf                                           ; $7548: $3f
    dec [hl]                                      ; $7549: $35
    inc bc                                        ; $754a: $03
    rra                                           ; $754b: $1f
    add c                                         ; $754c: $81
    rla                                           ; $754d: $17
    ld [bc], a                                    ; $754e: $02
    rrca                                          ; $754f: $0f
    adc e                                         ; $7550: $8b
    jr z, jr_0e1_7592                             ; $7551: $28 $3f

    ld [hl], a                                    ; $7553: $77
    ld a, a                                       ; $7554: $7f
    ld e, b                                       ; $7555: $58
    ld a, a                                       ; $7556: $7f
    ld e, h                                       ; $7557: $5c
    ld a, a                                       ; $7558: $7f
    sbc a                                         ; $7559: $9f
    rst $38                                       ; $755a: $ff
    sbc a                                         ; $755b: $9f
    inc bc                                        ; $755c: $03
    rst $38                                       ; $755d: $ff
    ld [bc], a                                    ; $755e: $02
    jr nz, jr_0e1_74eb                            ; $755f: $20 $8a

    jr nc, @+$12                                  ; $7561: $30 $10

    jr c, @+$0a                                   ; $7563: $38 $08

    jr c, jr_0e1_757f                             ; $7565: $38 $18

    jr c, jr_0e1_7591                             ; $7567: $38 $28

    jr c, jr_0e1_7583                             ; $7569: $38 $18

    inc bc                                        ; $756b: $03
    jr nc, jr_0e1_74ef                            ; $756c: $30 $81

    db $10                                        ; $756e: $10
    ld [bc], a                                    ; $756f: $02
    jr nz, jr_0e1_7502                            ; $7570: $20 $90

    jr z, jr_0e1_75ac                             ; $7572: $28 $38

    inc d                                         ; $7574: $14
    inc a                                         ; $7575: $3c
    inc d                                         ; $7576: $14
    inc a                                         ; $7577: $3c
    inc [hl]                                      ; $7578: $34
    inc a                                         ; $7579: $3c
    ld [hl-], a                                   ; $757a: $32
    ld a, $32                                     ; $757b: $3e $32
    ld a, $3f                                     ; $757d: $3e $3f

jr_0e1_757f:
    dec a                                         ; $757f: $3d
    rst $38                                       ; $7580: $ff
    cp a                                          ; $7581: $bf

jr_0e1_7582:
    ld [bc], a                                    ; $7582: $02

jr_0e1_7583:
    rst $38                                       ; $7583: $ff
    ld [bc], a                                    ; $7584: $02
    ccf                                           ; $7585: $3f

jr_0e1_7586:
    inc b                                         ; $7586: $04
    ld a, a                                       ; $7587: $7f
    add d                                         ; $7588: $82
    jr c, jr_0e1_75ca                             ; $7589: $38 $3f

    ld [bc], a                                    ; $758b: $02
    rra                                           ; $758c: $1f
    ld [de], a                                    ; $758d: $12
    nop                                           ; $758e: $00
    adc d                                         ; $758f: $8a
    rra                                           ; $7590: $1f

jr_0e1_7591:
    dec e                                         ; $7591: $1d

jr_0e1_7592:
    rla                                           ; $7592: $17
    rra                                           ; $7593: $1f
    inc d                                         ; $7594: $14
    inc e                                         ; $7595: $1c
    ld a, [de]                                    ; $7596: $1a
    ld e, $0e                                     ; $7597: $1e $0e
    ld e, $02                                     ; $7599: $1e $02
    inc e                                         ; $759b: $1c
    ld [bc], a                                    ; $759c: $02
    jr jr_0e1_75b1                                ; $759d: $18 $12

    nop                                           ; $759f: $00
    rst $38                                       ; $75a0: $ff
    dec c                                         ; $75a1: $0d
    inc b                                         ; $75a2: $04
    ei                                            ; $75a3: $fb
    dec b                                         ; $75a4: $05
    rst $30                                       ; $75a5: $f7
    cp $eb                                        ; $75a6: $fe $eb
    ld a, [$ffeb]                                 ; $75a8: $fa $eb $ff
    ei                                            ; $75ab: $fb

jr_0e1_75ac:
    ld a, [$fffb]                                 ; $75ac: $fa $fb $ff
    ld [bc], a                                    ; $75af: $02
    rla                                           ; $75b0: $17

jr_0e1_75b1:
    adc d                                         ; $75b1: $8a
    ccf                                           ; $75b2: $3f
    jr z, jr_0e1_75f4                             ; $75b3: $28 $3f

    inc l                                         ; $75b5: $2c
    ccf                                           ; $75b6: $3f
    jr nc, jr_0e1_75f8                            ; $75b7: $30 $3f

    ld a, [hl+]                                   ; $75b9: $2a
    ccf                                           ; $75ba: $3f
    dec [hl]                                      ; $75bb: $35
    inc bc                                        ; $75bc: $03
    rra                                           ; $75bd: $1f
    add c                                         ; $75be: $81
    rla                                           ; $75bf: $17
    ld [bc], a                                    ; $75c0: $02
    rrca                                          ; $75c1: $0f
    adc [hl]                                      ; $75c2: $8e
    jr z, jr_0e1_7604                             ; $75c3: $28 $3f

    ld [hl], a                                    ; $75c5: $77
    ld a, a                                       ; $75c6: $7f
    ld d, b                                       ; $75c7: $50
    ld a, a                                       ; $75c8: $7f
    ld e, c                                       ; $75c9: $59

jr_0e1_75ca:
    ld a, a                                       ; $75ca: $7f
    sbc a                                         ; $75cb: $9f
    rst $38                                       ; $75cc: $ff
    sbc a                                         ; $75cd: $9f
    rst $38                                       ; $75ce: $ff
    sbc a                                         ; $75cf: $9f
    rst $38                                       ; $75d0: $ff
    ld [bc], a                                    ; $75d1: $02
    db $10                                        ; $75d2: $10
    adc d                                         ; $75d3: $8a
    jr jr_0e1_75de                                ; $75d4: $18 $08

jr_0e1_75d6:
    inc e                                         ; $75d6: $1c
    inc b                                         ; $75d7: $04
    inc e                                         ; $75d8: $1c
    inc c                                         ; $75d9: $0c
    inc e                                         ; $75da: $1c
    inc d                                         ; $75db: $14
    inc e                                         ; $75dc: $1c
    inc c                                         ; $75dd: $0c

jr_0e1_75de:
    inc bc                                        ; $75de: $03
    jr @-$7d                                      ; $75df: $18 $81

    ld [$1002], sp                                ; $75e1: $08 $02 $10
    adc e                                         ; $75e4: $8b
    inc d                                         ; $75e5: $14
    inc e                                         ; $75e6: $1c
    ld a, [bc]                                    ; $75e7: $0a
    ld e, $1a                                     ; $75e8: $1e $1a
    ld e, $1d                                     ; $75ea: $1e $1d
    rra                                           ; $75ec: $1f
    dec e                                         ; $75ed: $1d
    rra                                           ; $75ee: $1f
    dec e                                         ; $75ef: $1d
    inc bc                                        ; $75f0: $03
    rra                                           ; $75f1: $1f
    inc bc                                        ; $75f2: $03
    rst $38                                       ; $75f3: $ff

jr_0e1_75f4:
    add c                                         ; $75f4: $81
    sbc a                                         ; $75f5: $9f
    ld [bc], a                                    ; $75f6: $02
    ld a, a                                       ; $75f7: $7f

jr_0e1_75f8:
    add h                                         ; $75f8: $84
    ld a, [hl]                                    ; $75f9: $7e
    ld a, a                                       ; $75fa: $7f
    dec a                                         ; $75fb: $3d
    ccf                                           ; $75fc: $3f
    ld [bc], a                                    ; $75fd: $02
    rrca                                          ; $75fe: $0f
    ld [bc], a                                    ; $75ff: $02
    rlca                                          ; $7600: $07
    ld [de], a                                    ; $7601: $12
    nop                                           ; $7602: $00
    add d                                         ; $7603: $82

jr_0e1_7604:
    rla                                           ; $7604: $17
    dec e                                         ; $7605: $1d
    ld [bc], a                                    ; $7606: $02
    ld e, $83                                     ; $7607: $1e $83
    inc d                                         ; $7609: $14
    inc e                                         ; $760a: $1c
    ld [bc], a                                    ; $760b: $02
    inc bc                                        ; $760c: $03
    ld e, $82                                     ; $760d: $1e $82
    ld b, $1e                                     ; $760f: $06 $1e
    ld [bc], a                                    ; $7611: $02
    inc e                                         ; $7612: $1c
    ld [de], a                                    ; $7613: $12
    nop                                           ; $7614: $00
    rst $38                                       ; $7615: $ff
    dec c                                         ; $7616: $0d
    inc b                                         ; $7617: $04
    ei                                            ; $7618: $fb
    dec b                                         ; $7619: $05
    rst $30                                       ; $761a: $f7
    cp $ec                                        ; $761b: $fe $ec
    ld a, [$ffec]                                 ; $761d: $fa $ec $ff
    db $fc                                        ; $7620: $fc
    ld a, [$00fc]                                 ; $7621: $fa $fc $00
    ld [bc], a                                    ; $7624: $02
    rla                                           ; $7625: $17
    adc d                                         ; $7626: $8a
    ccf                                           ; $7627: $3f
    jr z, jr_0e1_7669                             ; $7628: $28 $3f

    inc l                                         ; $762a: $2c
    ccf                                           ; $762b: $3f
    jr nc, jr_0e1_766d                            ; $762c: $30 $3f

    ld a, [hl+]                                   ; $762e: $2a
    ccf                                           ; $762f: $3f
    dec [hl]                                      ; $7630: $35
    inc bc                                        ; $7631: $03
    rra                                           ; $7632: $1f
    add c                                         ; $7633: $81
    rla                                           ; $7634: $17
    ld [bc], a                                    ; $7635: $02
    rrca                                          ; $7636: $0f
    adc e                                         ; $7637: $8b
    jr nc, @+$41                                  ; $7638: $30 $3f

    ld e, b                                       ; $763a: $58
    ld a, a                                       ; $763b: $7f
    ld e, a                                       ; $763c: $5f
    ld a, a                                       ; $763d: $7f
    ld e, a                                       ; $763e: $5f
    ld a, a                                       ; $763f: $7f
    sbc a                                         ; $7640: $9f
    rst $38                                       ; $7641: $ff

jr_0e1_7642:
    cp a                                          ; $7642: $bf
    inc bc                                        ; $7643: $03
    rst $38                                       ; $7644: $ff
    ld [bc], a                                    ; $7645: $02
    db $10                                        ; $7646: $10
    adc d                                         ; $7647: $8a
    jr jr_0e1_7652                                ; $7648: $18 $08

    inc e                                         ; $764a: $1c
    inc b                                         ; $764b: $04
    inc e                                         ; $764c: $1c
    inc c                                         ; $764d: $0c
    inc e                                         ; $764e: $1c
    inc d                                         ; $764f: $14
    inc e                                         ; $7650: $1c
    inc c                                         ; $7651: $0c

jr_0e1_7652:
    inc bc                                        ; $7652: $03
    jr jr_0e1_75d6                                ; $7653: $18 $81

    ld [$1002], sp                                ; $7655: $08 $02 $10
    adc e                                         ; $7658: $8b
    inc c                                         ; $7659: $0c
    inc e                                         ; $765a: $1c
    ld a, [de]                                    ; $765b: $1a
    ld e, $1a                                     ; $765c: $1e $1a
    ld e, $1a                                     ; $765e: $1e $1a
    ld e, $19                                     ; $7660: $1e $19
    rra                                           ; $7662: $1f
    dec e                                         ; $7663: $1d
    inc bc                                        ; $7664: $03
    rra                                           ; $7665: $1f
    add d                                         ; $7666: $82
    rst $38                                       ; $7667: $ff
    cp a                                          ; $7668: $bf

jr_0e1_7669:
    ld [bc], a                                    ; $7669: $02
    ld a, a                                       ; $766a: $7f
    inc b                                         ; $766b: $04
    ccf                                           ; $766c: $3f

jr_0e1_766d:
    ld [bc], a                                    ; $766d: $02
    rra                                           ; $766e: $1f
    ld [bc], a                                    ; $766f: $02
    inc bc                                        ; $7670: $03
    inc d                                         ; $7671: $14
    nop                                           ; $7672: $00
    add l                                         ; $7673: $85
    ccf                                           ; $7674: $3f
    add hl, sp                                    ; $7675: $39
    ld l, $3e                                     ; $7676: $2e $3e
    jr jr_0e1_767d                                ; $7678: $18 $03

    jr c, jr_0e1_767e                             ; $767a: $38 $02

    inc a                                         ; $767c: $3c

jr_0e1_767d:
    ld [bc], a                                    ; $767d: $02

jr_0e1_767e:
    jr nc, jr_0e1_7694                            ; $767e: $30 $14

    nop                                           ; $7680: $00
    rst $38                                       ; $7681: $ff
    dec c                                         ; $7682: $0d
    inc b                                         ; $7683: $04
    ei                                            ; $7684: $fb
    dec b                                         ; $7685: $05
    rst $30                                       ; $7686: $f7
    cp $eb                                        ; $7687: $fe $eb
    ld a, [$ffeb]                                 ; $7689: $fa $eb $ff
    ei                                            ; $768c: $fb
    ei                                            ; $768d: $fb
    ei                                            ; $768e: $fb
    nop                                           ; $768f: $00
    ld [bc], a                                    ; $7690: $02
    rla                                           ; $7691: $17
    adc d                                         ; $7692: $8a
    ccf                                           ; $7693: $3f

jr_0e1_7694:
    jr z, jr_0e1_76d5                             ; $7694: $28 $3f

    inc l                                         ; $7696: $2c
    ccf                                           ; $7697: $3f
    jr nc, jr_0e1_76d9                            ; $7698: $30 $3f

    ld a, [hl+]                                   ; $769a: $2a
    ccf                                           ; $769b: $3f
    dec [hl]                                      ; $769c: $35
    inc bc                                        ; $769d: $03
    rra                                           ; $769e: $1f
    add c                                         ; $769f: $81
    rla                                           ; $76a0: $17
    ld [bc], a                                    ; $76a1: $02
    rrca                                          ; $76a2: $0f
    adc e                                         ; $76a3: $8b
    jr z, jr_0e1_76e5                             ; $76a4: $28 $3f

    ld d, a                                       ; $76a6: $57
    ld a, a                                       ; $76a7: $7f
    ld e, b                                       ; $76a8: $58
    ld a, a                                       ; $76a9: $7f
    cp h                                          ; $76aa: $bc
    rst $38                                       ; $76ab: $ff
    cp a                                          ; $76ac: $bf
    rst $38                                       ; $76ad: $ff
    cp a                                          ; $76ae: $bf
    inc bc                                        ; $76af: $03
    rst $38                                       ; $76b0: $ff
    ld [bc], a                                    ; $76b1: $02

jr_0e1_76b2:
    db $10                                        ; $76b2: $10
    adc d                                         ; $76b3: $8a
    jr jr_0e1_76be                                ; $76b4: $18 $08

    inc e                                         ; $76b6: $1c
    inc b                                         ; $76b7: $04
    inc e                                         ; $76b8: $1c
    inc c                                         ; $76b9: $0c
    inc e                                         ; $76ba: $1c
    inc d                                         ; $76bb: $14
    inc e                                         ; $76bc: $1c
    inc c                                         ; $76bd: $0c

jr_0e1_76be:
    inc bc                                        ; $76be: $03
    jr jr_0e1_7642                                ; $76bf: $18 $81

    ld [$1002], sp                                ; $76c1: $08 $02 $10
    adc [hl]                                      ; $76c4: $8e
    inc d                                         ; $76c5: $14
    inc e                                         ; $76c6: $1c
    ld c, $1e                                     ; $76c7: $0e $1e
    ld a, [bc]                                    ; $76c9: $0a
    ld e, $1a                                     ; $76ca: $1e $1a
    ld e, $19                                     ; $76cc: $1e $19
    rra                                           ; $76ce: $1f
    add hl, de                                    ; $76cf: $19
    rra                                           ; $76d0: $1f
    add hl, de                                    ; $76d1: $19
    rra                                           ; $76d2: $1f
    ld [bc], a                                    ; $76d3: $02
    rst $38                                       ; $76d4: $ff

jr_0e1_76d5:
    add h                                         ; $76d5: $84
    ld l, a                                       ; $76d6: $6f
    ld a, a                                       ; $76d7: $7f
    ld l, a                                       ; $76d8: $6f

jr_0e1_76d9:
    ld a, a                                       ; $76d9: $7f
    ld [bc], a                                    ; $76da: $02
    rst $38                                       ; $76db: $ff
    add h                                         ; $76dc: $84
    cp $ff                                        ; $76dd: $fe $ff
    call Call_000_02ff                            ; $76df: $cd $ff $02
    ld a, [hl]                                    ; $76e2: $7e
    ld [de], a                                    ; $76e3: $12
    nop                                           ; $76e4: $00

jr_0e1_76e5:
    add l                                         ; $76e5: $85
    rra                                           ; $76e6: $1f
    dec e                                         ; $76e7: $1d
    ld e, $1a                                     ; $76e8: $1e $1a
    inc c                                         ; $76ea: $0c
    inc bc                                        ; $76eb: $03
    inc e                                         ; $76ec: $1c
    ld [bc], a                                    ; $76ed: $02
    jr jr_0e1_7706                                ; $76ee: $18 $16

    nop                                           ; $76f0: $00
    rst $38                                       ; $76f1: $ff
    dec c                                         ; $76f2: $0d
    inc b                                         ; $76f3: $04
    ei                                            ; $76f4: $fb
    dec b                                         ; $76f5: $05
    rst $30                                       ; $76f6: $f7
    cp $ec                                        ; $76f7: $fe $ec
    ld a, [$ffec]                                 ; $76f9: $fa $ec $ff
    db $fc                                        ; $76fc: $fc
    ld a, [$00fc]                                 ; $76fd: $fa $fc $00
    ld [bc], a                                    ; $7700: $02
    rla                                           ; $7701: $17
    adc d                                         ; $7702: $8a
    ccf                                           ; $7703: $3f
    jr z, jr_0e1_7745                             ; $7704: $28 $3f

jr_0e1_7706:
    inc l                                         ; $7706: $2c
    ccf                                           ; $7707: $3f
    jr nc, jr_0e1_7749                            ; $7708: $30 $3f

    ld a, [hl+]                                   ; $770a: $2a
    ccf                                           ; $770b: $3f
    dec [hl]                                      ; $770c: $35
    inc bc                                        ; $770d: $03
    rra                                           ; $770e: $1f
    add c                                         ; $770f: $81
    rla                                           ; $7710: $17
    ld [bc], a                                    ; $7711: $02
    rrca                                          ; $7712: $0f
    adc e                                         ; $7713: $8b
    jr nc, jr_0e1_7755                            ; $7714: $30 $3f

    ld e, b                                       ; $7716: $58
    ld a, a                                       ; $7717: $7f
    ld e, a                                       ; $7718: $5f
    ld a, a                                       ; $7719: $7f
    ld e, a                                       ; $771a: $5f
    ld a, a                                       ; $771b: $7f
    sbc a                                         ; $771c: $9f
    rst $38                                       ; $771d: $ff
    cp a                                          ; $771e: $bf
    inc bc                                        ; $771f: $03
    rst $38                                       ; $7720: $ff
    ld [bc], a                                    ; $7721: $02
    db $10                                        ; $7722: $10
    adc d                                         ; $7723: $8a
    jr jr_0e1_772e                                ; $7724: $18 $08

    inc e                                         ; $7726: $1c
    inc b                                         ; $7727: $04
    inc e                                         ; $7728: $1c
    inc c                                         ; $7729: $0c
    inc e                                         ; $772a: $1c
    inc d                                         ; $772b: $14
    inc e                                         ; $772c: $1c
    inc c                                         ; $772d: $0c

jr_0e1_772e:
    inc bc                                        ; $772e: $03
    jr jr_0e1_76b2                                ; $772f: $18 $81

    ld [$1002], sp                                ; $7731: $08 $02 $10
    sub b                                         ; $7734: $90
    inc c                                         ; $7735: $0c
    inc e                                         ; $7736: $1c
    ld a, [de]                                    ; $7737: $1a
    ld e, $1a                                     ; $7738: $1e $1a
    ld e, $1a                                     ; $773a: $1e $1a
    ld e, $19                                     ; $773c: $1e $19
    rra                                           ; $773e: $1f
    dec e                                         ; $773f: $1d
    rra                                           ; $7740: $1f
    rla                                           ; $7741: $17
    rra                                           ; $7742: $1f
    rst $38                                       ; $7743: $ff
    cp a                                          ; $7744: $bf

jr_0e1_7745:
    ld [bc], a                                    ; $7745: $02
    ld a, a                                       ; $7746: $7f
    ld [bc], a                                    ; $7747: $02
    ccf                                           ; $7748: $3f

jr_0e1_7749:
    add d                                         ; $7749: $82
    ld a, $3f                                     ; $774a: $3e $3f
    ld [bc], a                                    ; $774c: $02
    ld a, a                                       ; $774d: $7f
    ld [bc], a                                    ; $774e: $02
    ld a, $14                                     ; $774f: $3e $14
    nop                                           ; $7751: $00
    add d                                         ; $7752: $82
    ccf                                           ; $7753: $3f
    add hl, sp                                    ; $7754: $39

jr_0e1_7755:
    ld [bc], a                                    ; $7755: $02
    ld a, $04                                     ; $7756: $3e $04
    jr c, jr_0e1_775c                             ; $7758: $38 $02

    jr nc, jr_0e1_7772                            ; $775a: $30 $16

jr_0e1_775c:
    nop                                           ; $775c: $00
    rst $38                                       ; $775d: $ff
    dec c                                         ; $775e: $0d
    inc b                                         ; $775f: $04
    ei                                            ; $7760: $fb
    dec b                                         ; $7761: $05
    rst $30                                       ; $7762: $f7
    cp $eb                                        ; $7763: $fe $eb
    ld sp, hl                                     ; $7765: $f9
    db $eb                                        ; $7766: $eb
    nop                                           ; $7767: $00
    ei                                            ; $7768: $fb
    ld a, [$fffb]                                 ; $7769: $fa $fb $ff
    ld [bc], a                                    ; $776c: $02
    rlca                                          ; $776d: $07
    sbc [hl]                                      ; $776e: $9e
    rrca                                          ; $776f: $0f
    add hl, bc                                    ; $7770: $09
    rra                                           ; $7771: $1f

jr_0e1_7772:
    rla                                           ; $7772: $17
    rra                                           ; $7773: $1f
    jr jr_0e1_7795                                ; $7774: $18 $1f

    ld e, $1f                                     ; $7776: $1e $1f
    ld [de], a                                    ; $7778: $12
    rrca                                          ; $7779: $0f
    add hl, bc                                    ; $777a: $09
    rrca                                          ; $777b: $0f
    ld a, [bc]                                    ; $777c: $0a
    rlca                                          ; $777d: $07
    dec b                                         ; $777e: $05
    dec de                                        ; $777f: $1b
    rra                                           ; $7780: $1f
    dec l                                         ; $7781: $2d
    ccf                                           ; $7782: $3f
    ld l, $3f                                     ; $7783: $2e $3f
    ld l, l                                       ; $7785: $6d
    ld a, a                                       ; $7786: $7f
    ld c, [hl]                                    ; $7787: $4e
    ld a, a                                       ; $7788: $7f
    ld e, [hl]                                    ; $7789: $5e
    ld a, a                                       ; $778a: $7f
    cp $8f                                        ; $778b: $fe $8f
    ld [bc], a                                    ; $778d: $02
    ld d, b                                       ; $778e: $50
    add [hl]                                      ; $778f: $86
    ld a, b                                       ; $7790: $78
    jr z, jr_0e1_780b                             ; $7791: $28 $78

    ld l, b                                       ; $7793: $68
    ld a, b                                       ; $7794: $78

jr_0e1_7795:
    jr @+$05                                      ; $7795: $18 $03

    ld a, b                                       ; $7797: $78
    sbc h                                         ; $7798: $9c
    ld [$1070], sp                                ; $7799: $08 $70 $10
    ld [hl], b                                    ; $779c: $70
    ld d, b                                       ; $779d: $50
    ld h, b                                       ; $779e: $60
    jr nz, jr_0e1_77f9                            ; $779f: $20 $58

    ld a, b                                       ; $77a1: $78
    inc [hl]                                      ; $77a2: $34
    ld a, h                                       ; $77a3: $7c
    ld [hl], h                                    ; $77a4: $74
    ld a, h                                       ; $77a5: $7c
    ld [hl], $7e                                  ; $77a6: $36 $7e
    ld [hl], d                                    ; $77a8: $72
    ld a, [hl]                                    ; $77a9: $7e
    ld a, d                                       ; $77aa: $7a
    ld a, [hl]                                    ; $77ab: $7e
    ld a, a                                       ; $77ac: $7f
    ld a, c                                       ; $77ad: $79
    db $fd                                        ; $77ae: $fd
    and e                                         ; $77af: $a3
    ld a, d                                       ; $77b0: $7a
    ld a, a                                       ; $77b1: $7f
    ld a, [hl-]                                   ; $77b2: $3a
    ccf                                           ; $77b3: $3f
    ld [hl], a                                    ; $77b4: $77
    inc bc                                        ; $77b5: $03
    ld a, a                                       ; $77b6: $7f
    add d                                         ; $77b7: $82
    dec h                                         ; $77b8: $25
    dec a                                         ; $77b9: $3d
    ld [bc], a                                    ; $77ba: $02
    jr jr_0e1_77cf                                ; $77bb: $18 $12

    nop                                           ; $77bd: $00
    add d                                         ; $77be: $82
    rra                                           ; $77bf: $1f
    dec e                                         ; $77c0: $1d
    ld [bc], a                                    ; $77c1: $02
    ld e, $02                                     ; $77c2: $1e $02
    inc e                                         ; $77c4: $1c
    add c                                         ; $77c5: $81
    ld a, [bc]                                    ; $77c6: $0a
    inc bc                                        ; $77c7: $03
    ld e, $82                                     ; $77c8: $1e $82
    inc b                                         ; $77ca: $04
    inc e                                         ; $77cb: $1c
    ld [bc], a                                    ; $77cc: $02
    jr jr_0e1_77e1                                ; $77cd: $18 $12

jr_0e1_77cf:
    nop                                           ; $77cf: $00
    rst $38                                       ; $77d0: $ff
    dec c                                         ; $77d1: $0d
    inc b                                         ; $77d2: $04
    ei                                            ; $77d3: $fb
    dec b                                         ; $77d4: $05
    rst $30                                       ; $77d5: $f7
    cp $eb                                        ; $77d6: $fe $eb
    ld a, [$ffeb]                                 ; $77d8: $fa $eb $ff
    ei                                            ; $77db: $fb
    ei                                            ; $77dc: $fb
    ei                                            ; $77dd: $fb
    cp $02                                        ; $77de: $fe $02
    rrca                                          ; $77e0: $0f

jr_0e1_77e1:
    sbc [hl]                                      ; $77e1: $9e
    rra                                           ; $77e2: $1f
    ld [de], a                                    ; $77e3: $12
    ccf                                           ; $77e4: $3f
    cpl                                           ; $77e5: $2f
    ccf                                           ; $77e6: $3f
    jr nc, jr_0e1_7828                            ; $77e7: $30 $3f

    dec a                                         ; $77e9: $3d
    ccf                                           ; $77ea: $3f
    inc h                                         ; $77eb: $24
    rra                                           ; $77ec: $1f
    ld [de], a                                    ; $77ed: $12
    rra                                           ; $77ee: $1f
    dec d                                         ; $77ef: $15
    rrca                                          ; $77f0: $0f
    ld a, [bc]                                    ; $77f1: $0a
    scf                                           ; $77f2: $37
    ccf                                           ; $77f3: $3f
    ld e, d                                       ; $77f4: $5a
    ld a, a                                       ; $77f5: $7f
    ld e, l                                       ; $77f6: $5d
    ld a, a                                       ; $77f7: $7f
    cp d                                          ; $77f8: $ba

jr_0e1_77f9:
    rst $38                                       ; $77f9: $ff
    sbc l                                         ; $77fa: $9d
    rst $38                                       ; $77fb: $ff
    sbc l                                         ; $77fc: $9d
    rst $38                                       ; $77fd: $ff
    ld a, [hl]                                    ; $77fe: $7e
    ld c, c                                       ; $77ff: $49
    ld [bc], a                                    ; $7800: $02
    ld [$1c86], sp                                ; $7801: $08 $86 $1c
    inc d                                         ; $7804: $14
    inc e                                         ; $7805: $1c
    inc d                                         ; $7806: $14
    inc e                                         ; $7807: $1c
    inc c                                         ; $7808: $0c
    inc bc                                        ; $7809: $03
    inc e                                         ; $780a: $1c

jr_0e1_780b:
    add l                                         ; $780b: $85
    inc b                                         ; $780c: $04
    jr jr_0e1_7817                                ; $780d: $18 $08

    jr @+$0a                                      ; $780f: $18 $08

    ld [bc], a                                    ; $7811: $02
    db $10                                        ; $7812: $10
    add e                                         ; $7813: $83
    inc c                                         ; $7814: $0c
    inc e                                         ; $7815: $1c
    ld a, [de]                                    ; $7816: $1a

jr_0e1_7817:
    inc bc                                        ; $7817: $03
    ld e, $85                                     ; $7818: $1e $85
    dec e                                         ; $781a: $1d
    rra                                           ; $781b: $1f
    dec e                                         ; $781c: $1d
    rra                                           ; $781d: $1f
    dec e                                         ; $781e: $1d
    ld [bc], a                                    ; $781f: $02
    rra                                           ; $7820: $1f
    add l                                         ; $7821: $85
    dec e                                         ; $7822: $1d
    db $fd                                        ; $7823: $fd
    cp a                                          ; $7824: $bf
    halt                                          ; $7825: $76
    ld a, a                                       ; $7826: $7f
    ld [bc], a                                    ; $7827: $02

jr_0e1_7828:
    ccf                                           ; $7828: $3f
    ld [bc], a                                    ; $7829: $02
    ld a, a                                       ; $782a: $7f
    add d                                         ; $782b: $82
    ld c, [hl]                                    ; $782c: $4e
    ld a, a                                       ; $782d: $7f
    ld [bc], a                                    ; $782e: $02
    dec sp                                        ; $782f: $3b
    ld [bc], a                                    ; $7830: $02
    inc bc                                        ; $7831: $03
    ld [de], a                                    ; $7832: $12
    nop                                           ; $7833: $00
    ld [bc], a                                    ; $7834: $02
    rlca                                          ; $7835: $07
    ld [bc], a                                    ; $7836: $02
    ld b, $81                                     ; $7837: $06 $81
    inc bc                                        ; $7839: $03
    inc bc                                        ; $783a: $03
    rlca                                          ; $783b: $07
    add d                                         ; $783c: $82
    inc bc                                        ; $783d: $03
    rlca                                          ; $783e: $07
    ld [bc], a                                    ; $783f: $02
    ld b, $02                                     ; $7840: $06 $02
    inc b                                         ; $7842: $04
    ld [de], a                                    ; $7843: $12
    nop                                           ; $7844: $00
    rst $38                                       ; $7845: $ff
    dec c                                         ; $7846: $0d
    inc b                                         ; $7847: $04
    ei                                            ; $7848: $fb
    dec b                                         ; $7849: $05
    rst $30                                       ; $784a: $f7
    cp $ec                                        ; $784b: $fe $ec
    ld a, [$ffec]                                 ; $784d: $fa $ec $ff
    db $fc                                        ; $7850: $fc
    ld a, [$fffc]                                 ; $7851: $fa $fc $ff
    ld [bc], a                                    ; $7854: $02
    rrca                                          ; $7855: $0f
    sbc [hl]                                      ; $7856: $9e
    rra                                           ; $7857: $1f
    ld [de], a                                    ; $7858: $12
    ccf                                           ; $7859: $3f
    cpl                                           ; $785a: $2f
    ccf                                           ; $785b: $3f
    jr nc, jr_0e1_789d                            ; $785c: $30 $3f

    dec a                                         ; $785e: $3d
    ccf                                           ; $785f: $3f
    inc h                                         ; $7860: $24
    rra                                           ; $7861: $1f
    ld [de], a                                    ; $7862: $12
    rra                                           ; $7863: $1f
    dec d                                         ; $7864: $15
    rrca                                          ; $7865: $0f
    ld a, [bc]                                    ; $7866: $0a
    scf                                           ; $7867: $37
    ccf                                           ; $7868: $3f
    ld e, d                                       ; $7869: $5a
    ld a, a                                       ; $786a: $7f
    ld e, l                                       ; $786b: $5d
    ld a, a                                       ; $786c: $7f
    jp c, $bdff                                   ; $786d: $da $ff $bd

    rst $38                                       ; $7870: $ff
    cp l                                          ; $7871: $bd
    rst $38                                       ; $7872: $ff
    db $fd                                        ; $7873: $fd
    cp a                                          ; $7874: $bf
    ld [bc], a                                    ; $7875: $02
    ld [$1c86], sp                                ; $7876: $08 $86 $1c
    inc d                                         ; $7879: $14
    inc e                                         ; $787a: $1c
    inc d                                         ; $787b: $14
    inc e                                         ; $787c: $1c
    inc c                                         ; $787d: $0c
    inc bc                                        ; $787e: $03
    inc e                                         ; $787f: $1c
    add l                                         ; $7880: $85
    inc b                                         ; $7881: $04
    jr jr_0e1_788c                                ; $7882: $18 $08

    jr jr_0e1_788e                                ; $7884: $18 $08

    ld [bc], a                                    ; $7886: $02
    db $10                                        ; $7887: $10
    adc e                                         ; $7888: $8b
    inc c                                         ; $7889: $0c
    inc e                                         ; $788a: $1c
    ld a, [de]                                    ; $788b: $1a

jr_0e1_788c:
    ld e, $1a                                     ; $788c: $1e $1a

jr_0e1_788e:
    ld e, $1a                                     ; $788e: $1e $1a
    ld e, $1d                                     ; $7890: $1e $1d
    rra                                           ; $7892: $1f
    dec e                                         ; $7893: $1d
    ld [bc], a                                    ; $7894: $02
    rra                                           ; $7895: $1f
    add l                                         ; $7896: $85
    dec e                                         ; $7897: $1d
    db $fd                                        ; $7898: $fd
    and a                                         ; $7899: $a7
    ld a, d                                       ; $789a: $7a
    ld a, a                                       ; $789b: $7f
    ld [bc], a                                    ; $789c: $02

jr_0e1_789d:
    ccf                                           ; $789d: $3f
    add d                                         ; $789e: $82
    scf                                           ; $789f: $37
    ccf                                           ; $78a0: $3f
    ld [bc], a                                    ; $78a1: $02
    dec e                                         ; $78a2: $1d
    ld [bc], a                                    ; $78a3: $02
    ld bc, $0014                                  ; $78a4: $01 $14 $00
    add d                                         ; $78a7: $82
    rra                                           ; $78a8: $1f
    dec e                                         ; $78a9: $1d
    ld [bc], a                                    ; $78aa: $02
    ld e, $82                                     ; $78ab: $1e $82
    inc c                                         ; $78ad: $0c
    inc e                                         ; $78ae: $1c
    ld [bc], a                                    ; $78af: $02
    ld e, $82                                     ; $78b0: $1e $82
    inc b                                         ; $78b2: $04
    inc e                                         ; $78b3: $1c
    ld [bc], a                                    ; $78b4: $02
    jr jr_0e1_78cb                                ; $78b5: $18 $14

    nop                                           ; $78b7: $00
    rst $38                                       ; $78b8: $ff
    dec c                                         ; $78b9: $0d
    inc b                                         ; $78ba: $04
    ei                                            ; $78bb: $fb
    dec b                                         ; $78bc: $05
    rst $30                                       ; $78bd: $f7
    cp $eb                                        ; $78be: $fe $eb
    ld a, [$ffeb]                                 ; $78c0: $fa $eb $ff
    ei                                            ; $78c3: $fb
    ei                                            ; $78c4: $fb
    ei                                            ; $78c5: $fb
    cp $02                                        ; $78c6: $fe $02
    rrca                                          ; $78c8: $0f
    sbc [hl]                                      ; $78c9: $9e
    rra                                           ; $78ca: $1f

jr_0e1_78cb:
    ld [de], a                                    ; $78cb: $12
    ccf                                           ; $78cc: $3f
    cpl                                           ; $78cd: $2f
    ccf                                           ; $78ce: $3f
    jr nc, jr_0e1_7910                            ; $78cf: $30 $3f

    dec a                                         ; $78d1: $3d
    ccf                                           ; $78d2: $3f
    inc h                                         ; $78d3: $24
    rra                                           ; $78d4: $1f
    ld [de], a                                    ; $78d5: $12
    rra                                           ; $78d6: $1f
    dec d                                         ; $78d7: $15
    rrca                                          ; $78d8: $0f
    ld a, [bc]                                    ; $78d9: $0a
    scf                                           ; $78da: $37
    ccf                                           ; $78db: $3f
    ld e, d                                       ; $78dc: $5a
    ld a, a                                       ; $78dd: $7f
    ld a, l                                       ; $78de: $7d
    ld a, a                                       ; $78df: $7f
    cp d                                          ; $78e0: $ba
    rst $38                                       ; $78e1: $ff
    cp l                                          ; $78e2: $bd
    rst $38                                       ; $78e3: $ff
    cp l                                          ; $78e4: $bd
    rst $38                                       ; $78e5: $ff
    ei                                            ; $78e6: $fb
    cp a                                          ; $78e7: $bf
    ld [bc], a                                    ; $78e8: $02
    ld [$1c86], sp                                ; $78e9: $08 $86 $1c
    inc d                                         ; $78ec: $14
    inc e                                         ; $78ed: $1c
    inc d                                         ; $78ee: $14
    inc e                                         ; $78ef: $1c
    inc c                                         ; $78f0: $0c
    inc bc                                        ; $78f1: $03
    inc e                                         ; $78f2: $1c
    add l                                         ; $78f3: $85
    inc b                                         ; $78f4: $04
    jr jr_0e1_78ff                                ; $78f5: $18 $08

    jr jr_0e1_7901                                ; $78f7: $18 $08

    ld [bc], a                                    ; $78f9: $02
    db $10                                        ; $78fa: $10
    sub e                                         ; $78fb: $93
    inc c                                         ; $78fc: $0c
    inc e                                         ; $78fd: $1c
    ld a, [de]                                    ; $78fe: $1a

jr_0e1_78ff:
    ld e, $1a                                     ; $78ff: $1e $1a

jr_0e1_7901:
    ld e, $1d                                     ; $7901: $1e $1d
    rra                                           ; $7903: $1f
    add hl, de                                    ; $7904: $19
    rra                                           ; $7905: $1f
    add hl, de                                    ; $7906: $19
    rra                                           ; $7907: $1f
    ld e, $12                                     ; $7908: $1e $12
    rst $30                                       ; $790a: $f7
    cp a                                          ; $790b: $bf
    ld l, l                                       ; $790c: $6d
    ld e, a                                       ; $790d: $5f
    rst $18                                       ; $790e: $df
    inc bc                                        ; $790f: $03

jr_0e1_7910:
    rst $38                                       ; $7910: $ff
    add d                                         ; $7911: $82
    adc $ff                                       ; $7912: $ce $ff
    ld [bc], a                                    ; $7914: $02
    ld a, e                                       ; $7915: $7b
    ld [bc], a                                    ; $7916: $02
    jr c, jr_0e1_792b                             ; $7917: $38 $12

    nop                                           ; $7919: $00
    add d                                         ; $791a: $82
    rlca                                          ; $791b: $07
    dec b                                         ; $791c: $05
    ld [bc], a                                    ; $791d: $02
    ld b, $02                                     ; $791e: $06 $02
    inc b                                         ; $7920: $04
    ld [bc], a                                    ; $7921: $02
    ld b, $82                                     ; $7922: $06 $82
    ld [bc], a                                    ; $7924: $02
    ld b, $02                                     ; $7925: $06 $02
    inc b                                         ; $7927: $04
    inc d                                         ; $7928: $14
    nop                                           ; $7929: $00
    rst $38                                       ; $792a: $ff

jr_0e1_792b:
    dec c                                         ; $792b: $0d
    inc b                                         ; $792c: $04
    ei                                            ; $792d: $fb
    dec b                                         ; $792e: $05
    rst $30                                       ; $792f: $f7
    cp $ec                                        ; $7930: $fe $ec
    ld a, [$ffec]                                 ; $7932: $fa $ec $ff
    db $fc                                        ; $7935: $fc
    ld a, [$fffc]                                 ; $7936: $fa $fc $ff
    ld [bc], a                                    ; $7939: $02
    rrca                                          ; $793a: $0f
    sbc [hl]                                      ; $793b: $9e
    rra                                           ; $793c: $1f
    ld [de], a                                    ; $793d: $12
    ccf                                           ; $793e: $3f
    cpl                                           ; $793f: $2f
    ccf                                           ; $7940: $3f
    jr nc, jr_0e1_7982                            ; $7941: $30 $3f

    dec a                                         ; $7943: $3d
    ccf                                           ; $7944: $3f
    inc h                                         ; $7945: $24
    rra                                           ; $7946: $1f
    ld [de], a                                    ; $7947: $12
    rra                                           ; $7948: $1f
    dec d                                         ; $7949: $15
    rrca                                          ; $794a: $0f
    ld a, [bc]                                    ; $794b: $0a
    scf                                           ; $794c: $37
    ccf                                           ; $794d: $3f
    ld e, d                                       ; $794e: $5a
    ld a, a                                       ; $794f: $7f
    ld e, l                                       ; $7950: $5d
    ld a, a                                       ; $7951: $7f
    ld e, d                                       ; $7952: $5a
    ld a, a                                       ; $7953: $7f
    cp l                                          ; $7954: $bd
    rst $38                                       ; $7955: $ff
    cp l                                          ; $7956: $bd
    rst $38                                       ; $7957: $ff
    db $fd                                        ; $7958: $fd
    sbc a                                         ; $7959: $9f
    ld [bc], a                                    ; $795a: $02
    ld [$1c86], sp                                ; $795b: $08 $86 $1c
    inc d                                         ; $795e: $14
    inc e                                         ; $795f: $1c
    inc d                                         ; $7960: $14
    inc e                                         ; $7961: $1c
    inc c                                         ; $7962: $0c
    inc bc                                        ; $7963: $03
    inc e                                         ; $7964: $1c
    add l                                         ; $7965: $85
    inc b                                         ; $7966: $04
    jr jr_0e1_7971                                ; $7967: $18 $08

    jr jr_0e1_7973                                ; $7969: $18 $08

    ld [bc], a                                    ; $796b: $02
    db $10                                        ; $796c: $10
    adc e                                         ; $796d: $8b
    inc c                                         ; $796e: $0c
    inc e                                         ; $796f: $1c
    ld a, [de]                                    ; $7970: $1a

jr_0e1_7971:
    ld e, $1a                                     ; $7971: $1e $1a

jr_0e1_7973:
    ld e, $1b                                     ; $7973: $1e $1b
    rra                                           ; $7975: $1f
    dec e                                         ; $7976: $1d
    rra                                           ; $7977: $1f
    dec e                                         ; $7978: $1d
    ld [bc], a                                    ; $7979: $02
    rra                                           ; $797a: $1f
    add a                                         ; $797b: $87
    dec e                                         ; $797c: $1d
    db $fd                                        ; $797d: $fd
    and e                                         ; $797e: $a3
    ld a, d                                       ; $797f: $7a
    ld a, a                                       ; $7980: $7f
    scf                                           ; $7981: $37

jr_0e1_7982:
    ccf                                           ; $7982: $3f
    ld [bc], a                                    ; $7983: $02
    ld a, a                                       ; $7984: $7f
    add d                                         ; $7985: $82
    dec h                                         ; $7986: $25
    dec a                                         ; $7987: $3d
    ld [bc], a                                    ; $7988: $02
    inc e                                         ; $7989: $1c
    inc d                                         ; $798a: $14
    nop                                           ; $798b: $00
    add d                                         ; $798c: $82
    rra                                           ; $798d: $1f
    dec e                                         ; $798e: $1d
    ld [bc], a                                    ; $798f: $02
    ld e, $02                                     ; $7990: $1e $02
    inc e                                         ; $7992: $1c
    add d                                         ; $7993: $82
    inc c                                         ; $7994: $0c
    inc e                                         ; $7995: $1c
    ld [bc], a                                    ; $7996: $02
    jr jr_0e1_79af                                ; $7997: $18 $16

    nop                                           ; $7999: $00
    rst $38                                       ; $799a: $ff
    dec c                                         ; $799b: $0d
    inc b                                         ; $799c: $04
    ei                                            ; $799d: $fb
    dec b                                         ; $799e: $05
    rst $30                                       ; $799f: $f7
    cp $eb                                        ; $79a0: $fe $eb
    db $fc                                        ; $79a2: $fc
    db $ec                                        ; $79a3: $ec
    cp $fb                                        ; $79a4: $fe $fb
    ei                                            ; $79a6: $fb
    ei                                            ; $79a7: $fb
    db $fd                                        ; $79a8: $fd
    ld [bc], a                                    ; $79a9: $02
    dec a                                         ; $79aa: $3d
    sub b                                         ; $79ab: $90
    ld a, a                                       ; $79ac: $7f
    ld b, d                                       ; $79ad: $42
    rst $38                                       ; $79ae: $ff

jr_0e1_79af:
    and a                                         ; $79af: $a7
    rst $38                                       ; $79b0: $ff
    reti                                          ; $79b1: $d9


    rst $38                                       ; $79b2: $ff
    or $ff                                        ; $79b3: $f6 $ff
    ret nc                                        ; $79b5: $d0

    ld a, a                                       ; $79b6: $7f
    ld [hl], b                                    ; $79b7: $70
    ccf                                           ; $79b8: $3f
    ld [hl-], a                                   ; $79b9: $32
    rra                                           ; $79ba: $1f
    add hl, de                                    ; $79bb: $19
    ld [bc], a                                    ; $79bc: $02
    ccf                                           ; $79bd: $3f
    adc h                                         ; $79be: $8c
    ld d, d                                       ; $79bf: $52
    ld a, [hl]                                    ; $79c0: $7e
    xor l                                         ; $79c1: $ad
    rst $38                                       ; $79c2: $ff
    ld l, e                                       ; $79c3: $6b
    ld a, a                                       ; $79c4: $7f
    dec l                                         ; $79c5: $2d
    ccf                                           ; $79c6: $3f
    ld c, l                                       ; $79c7: $4d
    ld a, a                                       ; $79c8: $7f

jr_0e1_79c9:
    ld c, l                                       ; $79c9: $4d
    ld a, a                                       ; $79ca: $7f
    inc b                                         ; $79cb: $04
    ld [bc], a                                    ; $79cc: $02
    ld [bc], a                                    ; $79cd: $02
    nop                                           ; $79ce: $00
    ld [bc], a                                    ; $79cf: $02
    ld [bc], a                                    ; $79d0: $02
    add d                                         ; $79d1: $82
    inc bc                                        ; $79d2: $03
    ld bc, $0206                                  ; $79d3: $01 $06 $02
    ld c, $00                                     ; $79d6: $0e $00
    add d                                         ; $79d8: $82
    db $fc                                        ; $79d9: $fc
    sbc h                                         ; $79da: $9c
    ld [bc], a                                    ; $79db: $02
    jr nz, @-$74                                  ; $79dc: $20 $8a

    ld a, a                                       ; $79de: $7f
    ld l, d                                       ; $79df: $6a
    ld a, l                                       ; $79e0: $7d
    ld a, a                                       ; $79e1: $7f
    ei                                            ; $79e2: $fb
    rst $38                                       ; $79e3: $ff
    cp a                                          ; $79e4: $bf
    rst $38                                       ; $79e5: $ff
    ld e, b                                       ; $79e6: $58
    ld a, a                                       ; $79e7: $7f
    ld [bc], a                                    ; $79e8: $02
    ccf                                           ; $79e9: $3f
    inc d                                         ; $79ea: $14
    nop                                           ; $79eb: $00
    add d                                         ; $79ec: $82
    inc bc                                        ; $79ed: $03
    ld bc, $0206                                  ; $79ee: $01 $06 $02
    ld [bc], a                                    ; $79f1: $02
    inc bc                                        ; $79f2: $03
    ld [bc], a                                    ; $79f3: $02
    ld [bc], a                                    ; $79f4: $02
    ld [de], a                                    ; $79f5: $12
    nop                                           ; $79f6: $00
    rst $38                                       ; $79f7: $ff
    dec c                                         ; $79f8: $0d
    inc b                                         ; $79f9: $04
    ei                                            ; $79fa: $fb
    dec b                                         ; $79fb: $05
    rst $30                                       ; $79fc: $f7
    cp $eb                                        ; $79fd: $fe $eb
    db $fc                                        ; $79ff: $fc
    db $ec                                        ; $7a00: $ec
    rst $38                                       ; $7a01: $ff
    ei                                            ; $7a02: $fb
    ei                                            ; $7a03: $fb
    ei                                            ; $7a04: $fb
    cp $02                                        ; $7a05: $fe $02
    dec a                                         ; $7a07: $3d
    sub b                                         ; $7a08: $90
    ld a, a                                       ; $7a09: $7f
    ld b, d                                       ; $7a0a: $42
    rst $38                                       ; $7a0b: $ff
    and a                                         ; $7a0c: $a7
    rst $38                                       ; $7a0d: $ff
    reti                                          ; $7a0e: $d9


    rst $38                                       ; $7a0f: $ff
    or $ff                                        ; $7a10: $f6 $ff
    ret nc                                        ; $7a12: $d0

    ld a, a                                       ; $7a13: $7f
    ld [hl], b                                    ; $7a14: $70
    ccf                                           ; $7a15: $3f
    ld [hl-], a                                   ; $7a16: $32
    rra                                           ; $7a17: $1f
    add hl, de                                    ; $7a18: $19
    ld [bc], a                                    ; $7a19: $02
    ccf                                           ; $7a1a: $3f
    adc h                                         ; $7a1b: $8c
    ld d, d                                       ; $7a1c: $52
    ld a, [hl]                                    ; $7a1d: $7e
    xor l                                         ; $7a1e: $ad
    rst $38                                       ; $7a1f: $ff
    db $eb                                        ; $7a20: $eb
    rst $38                                       ; $7a21: $ff
    ld l, l                                       ; $7a22: $6d
    ld a, a                                       ; $7a23: $7f
    ld h, l                                       ; $7a24: $65
    ld a, a                                       ; $7a25: $7f
    ld [hl], e                                    ; $7a26: $73
    ld a, a                                       ; $7a27: $7f
    inc b                                         ; $7a28: $04
    inc b                                         ; $7a29: $04
    ld [bc], a                                    ; $7a2a: $02
    nop                                           ; $7a2b: $00
    ld [bc], a                                    ; $7a2c: $02
    inc b                                         ; $7a2d: $04
    add d                                         ; $7a2e: $82
    ld b, $02                                     ; $7a2f: $06 $02
    ld b, $04                                     ; $7a31: $06 $04
    ld a, [bc]                                    ; $7a33: $0a
    nop                                           ; $7a34: $00
    ld [bc], a                                    ; $7a35: $02
    ld b, $84                                     ; $7a36: $06 $84
    rlca                                          ; $7a38: $07
    ld bc, $e6de                                  ; $7a39: $01 $de $e6
    ld [bc], a                                    ; $7a3c: $02
    jr nc, jr_0e1_79c9                            ; $7a3d: $30 $8a

    ccf                                           ; $7a3f: $3f
    dec a                                         ; $7a40: $3d
    ld a, e                                       ; $7a41: $7b
    ld a, a                                       ; $7a42: $7f
    ld [hl], a                                    ; $7a43: $77
    ld a, a                                       ; $7a44: $7f
    xor [hl]                                      ; $7a45: $ae
    rst $38                                       ; $7a46: $ff
    push af                                       ; $7a47: $f5
    db $fd                                        ; $7a48: $fd
    ld [bc], a                                    ; $7a49: $02
    ld a, [hl]                                    ; $7a4a: $7e
    inc d                                         ; $7a4b: $14
    nop                                           ; $7a4c: $00
    add d                                         ; $7a4d: $82
    ld b, $02                                     ; $7a4e: $06 $02
    ld [bc], a                                    ; $7a50: $02
    rlca                                          ; $7a51: $07
    add d                                         ; $7a52: $82
    ld bc, $0207                                  ; $7a53: $01 $07 $02
    ld b, $16                                     ; $7a56: $06 $16
    nop                                           ; $7a58: $00
    rst $38                                       ; $7a59: $ff
    dec c                                         ; $7a5a: $0d
    inc b                                         ; $7a5b: $04
    ei                                            ; $7a5c: $fb
    dec b                                         ; $7a5d: $05
    rst $30                                       ; $7a5e: $f7
    cp $ec                                        ; $7a5f: $fe $ec
    db $fc                                        ; $7a61: $fc
    db $ed                                        ; $7a62: $ed
    cp $fc                                        ; $7a63: $fe $fc
    db $fc                                        ; $7a65: $fc
    db $fc                                        ; $7a66: $fc
    db $fd                                        ; $7a67: $fd
    ld [bc], a                                    ; $7a68: $02
    dec a                                         ; $7a69: $3d
    sub b                                         ; $7a6a: $90
    ld a, a                                       ; $7a6b: $7f
    ld b, d                                       ; $7a6c: $42
    rst $38                                       ; $7a6d: $ff
    and a                                         ; $7a6e: $a7
    rst $38                                       ; $7a6f: $ff
    reti                                          ; $7a70: $d9


    rst $38                                       ; $7a71: $ff
    or $ff                                        ; $7a72: $f6 $ff
    ret nc                                        ; $7a74: $d0

    ld a, a                                       ; $7a75: $7f
    ld [hl], b                                    ; $7a76: $70
    ccf                                           ; $7a77: $3f
    ld [hl-], a                                   ; $7a78: $32
    rra                                           ; $7a79: $1f
    add hl, de                                    ; $7a7a: $19
    ld [bc], a                                    ; $7a7b: $02
    rst $38                                       ; $7a7c: $ff
    adc h                                         ; $7a7d: $8c
    sub d                                         ; $7a7e: $92
    cp $6d                                        ; $7a7f: $fe $6d
    ld a, a                                       ; $7a81: $7f
    ld l, e                                       ; $7a82: $6b
    ld a, a                                       ; $7a83: $7f
    ld e, l                                       ; $7a84: $5d
    ld a, a                                       ; $7a85: $7f
    ld c, l                                       ; $7a86: $4d
    ld a, a                                       ; $7a87: $7f
    ld l, l                                       ; $7a88: $6d
    ld a, a                                       ; $7a89: $7f
    inc b                                         ; $7a8a: $04
    ld [bc], a                                    ; $7a8b: $02
    ld [bc], a                                    ; $7a8c: $02
    nop                                           ; $7a8d: $00
    ld [bc], a                                    ; $7a8e: $02
    ld [bc], a                                    ; $7a8f: $02
    add d                                         ; $7a90: $82
    inc bc                                        ; $7a91: $03
    ld bc, $0206                                  ; $7a92: $01 $06 $02
    ld c, $00                                     ; $7a95: $0e $00
    add d                                         ; $7a97: $82
    cp $92                                        ; $7a98: $fe $92
    ld [bc], a                                    ; $7a9a: $02
    ld b, b                                       ; $7a9b: $40
    adc b                                         ; $7a9c: $88
    ld a, l                                       ; $7a9d: $7d
    ld d, a                                       ; $7a9e: $57
    db $db                                        ; $7a9f: $db
    rst $38                                       ; $7aa0: $ff
    cp $ff                                        ; $7aa1: $fe $ff
    or e                                          ; $7aa3: $b3
    rst $38                                       ; $7aa4: $ff
    ld [bc], a                                    ; $7aa5: $02
    ld a, h                                       ; $7aa6: $7c
    ld d, $00                                     ; $7aa7: $16 $00
    ld [bc], a                                    ; $7aa9: $02
    ld bc, $0002                                  ; $7aaa: $01 $02 $00
    inc b                                         ; $7aad: $04
    ld bc, $0016                                  ; $7aae: $01 $16 $00
    rst $38                                       ; $7ab1: $ff
    dec c                                         ; $7ab2: $0d
    inc b                                         ; $7ab3: $04
    ei                                            ; $7ab4: $fb
    dec b                                         ; $7ab5: $05
    rst $30                                       ; $7ab6: $f7
    cp $eb                                        ; $7ab7: $fe $eb
    ei                                            ; $7ab9: $fb
    db $eb                                        ; $7aba: $eb
    cp $fb                                        ; $7abb: $fe $fb
    ei                                            ; $7abd: $fb
    ei                                            ; $7abe: $fb
    rst $38                                       ; $7abf: $ff
    ld [bc], a                                    ; $7ac0: $02
    ld e, $90                                     ; $7ac1: $1e $90
    ccf                                           ; $7ac3: $3f
    ld hl, $537f                                  ; $7ac4: $21 $7f $53
    ld a, a                                       ; $7ac7: $7f
    ld l, h                                       ; $7ac8: $6c
    ld a, a                                       ; $7ac9: $7f
    ld a, e                                       ; $7aca: $7b
    ld a, a                                       ; $7acb: $7f
    ld l, b                                       ; $7acc: $68
    ccf                                           ; $7acd: $3f
    jr c, jr_0e1_7aef                             ; $7ace: $38 $1f

    add hl, de                                    ; $7ad0: $19
    rrca                                          ; $7ad1: $0f
    inc c                                         ; $7ad2: $0c
    ld [bc], a                                    ; $7ad3: $02
    rra                                           ; $7ad4: $1f
    adc h                                         ; $7ad5: $8c
    add hl, hl                                    ; $7ad6: $29
    ccf                                           ; $7ad7: $3f
    ld d, [hl]                                    ; $7ad8: $56
    ld a, a                                       ; $7ad9: $7f
    ld l, l                                       ; $7ada: $6d
    ld a, a                                       ; $7adb: $7f
    ld c, [hl]                                    ; $7adc: $4e
    ld a, a                                       ; $7add: $7f
    ld e, [hl]                                    ; $7ade: $5e
    ld a, a                                       ; $7adf: $7f
    sbc [hl]                                      ; $7ae0: $9e
    rst $38                                       ; $7ae1: $ff
    ld [bc], a                                    ; $7ae2: $02
    inc b                                         ; $7ae3: $04
    add d                                         ; $7ae4: $82
    ld b, $02                                     ; $7ae5: $06 $02
    ld [bc], a                                    ; $7ae7: $02

jr_0e1_7ae8:
    ld b, $02                                     ; $7ae8: $06 $02
    inc b                                         ; $7aea: $04
    adc b                                         ; $7aeb: $88
    ld b, $02                                     ; $7aec: $06 $02
    rlca                                          ; $7aee: $07

jr_0e1_7aef:
    ld bc, $0206                                  ; $7aef: $01 $06 $02
    ld b, $02                                     ; $7af2: $06 $02
    ld [bc], a                                    ; $7af4: $02
    ld b, $02                                     ; $7af5: $06 $02
    inc b                                         ; $7af7: $04
    ld [bc], a                                    ; $7af8: $02
    nop                                           ; $7af9: $00
    ld [$0204], sp                                ; $7afa: $08 $04 $02
    ld b, $8c                                     ; $7afd: $06 $8c
    cp $cf                                        ; $7aff: $fe $cf
    ld a, l                                       ; $7b01: $7d
    ld d, a                                       ; $7b02: $57
    rst $38                                       ; $7b03: $ff
    ld sp, hl                                     ; $7b04: $f9
    cp e                                          ; $7b05: $bb
    rst $38                                       ; $7b06: $ff
    cp e                                          ; $7b07: $bb
    rst $38                                       ; $7b08: $ff
    ld e, a                                       ; $7b09: $5f
    ld a, a                                       ; $7b0a: $7f
    ld [bc], a                                    ; $7b0b: $02
    dec a                                         ; $7b0c: $3d
    ld [de], a                                    ; $7b0d: $12
    nop                                           ; $7b0e: $00
    ld [bc], a                                    ; $7b0f: $02
    inc c                                         ; $7b10: $0c
    ld [bc], a                                    ; $7b11: $02
    ld [$0c02], sp                                ; $7b12: $08 $02 $0c
    ld [bc], a                                    ; $7b15: $02
    rrca                                          ; $7b16: $0f
    add h                                         ; $7b17: $84
    dec c                                         ; $7b18: $0d
    rrca                                          ; $7b19: $0f
    ld a, [bc]                                    ; $7b1a: $0a
    ld c, $02                                     ; $7b1b: $0e $02
    inc c                                         ; $7b1d: $0c
    ld [de], a                                    ; $7b1e: $12
    nop                                           ; $7b1f: $00
    rst $38                                       ; $7b20: $ff
    dec c                                         ; $7b21: $0d
    inc b                                         ; $7b22: $04
    ei                                            ; $7b23: $fb
    dec b                                         ; $7b24: $05
    rst $30                                       ; $7b25: $f7
    cp $ec                                        ; $7b26: $fe $ec
    db $fc                                        ; $7b28: $fc
    db $ed                                        ; $7b29: $ed
    cp $fc                                        ; $7b2a: $fe $fc
    ei                                            ; $7b2c: $fb
    db $fc                                        ; $7b2d: $fc
    cp $02                                        ; $7b2e: $fe $02
    dec a                                         ; $7b30: $3d
    sub b                                         ; $7b31: $90
    ld a, a                                       ; $7b32: $7f
    ld b, d                                       ; $7b33: $42
    rst $38                                       ; $7b34: $ff
    and a                                         ; $7b35: $a7
    rst $38                                       ; $7b36: $ff
    reti                                          ; $7b37: $d9


    rst $38                                       ; $7b38: $ff
    or $ff                                        ; $7b39: $f6 $ff
    ret nc                                        ; $7b3b: $d0

    ld a, a                                       ; $7b3c: $7f
    ld [hl], b                                    ; $7b3d: $70
    ccf                                           ; $7b3e: $3f
    ld [hl-], a                                   ; $7b3f: $32
    rra                                           ; $7b40: $1f
    add hl, de                                    ; $7b41: $19
    ld [bc], a                                    ; $7b42: $02
    rst $38                                       ; $7b43: $ff
    adc h                                         ; $7b44: $8c
    sub d                                         ; $7b45: $92
    cp $6d                                        ; $7b46: $fe $6d
    ld a, a                                       ; $7b48: $7f
    ld l, e                                       ; $7b49: $6b
    ld a, a                                       ; $7b4a: $7f
    ld l, l                                       ; $7b4b: $6d
    ld a, a                                       ; $7b4c: $7f
    ld c, l                                       ; $7b4d: $4d
    ld a, a                                       ; $7b4e: $7f
    ld c, l                                       ; $7b4f: $4d

jr_0e1_7b50:
    ld a, a                                       ; $7b50: $7f
    inc b                                         ; $7b51: $04
    ld [bc], a                                    ; $7b52: $02
    ld [bc], a                                    ; $7b53: $02
    nop                                           ; $7b54: $00
    ld [bc], a                                    ; $7b55: $02
    ld [bc], a                                    ; $7b56: $02
    add d                                         ; $7b57: $82
    inc bc                                        ; $7b58: $03
    ld bc, $0206                                  ; $7b59: $01 $06 $02
    ld c, $00                                     ; $7b5c: $0e $00
    add d                                         ; $7b5e: $82
    db $f4                                        ; $7b5f: $f4
    sbc h                                         ; $7b60: $9c
    ld [bc], a                                    ; $7b61: $02
    jr nz, jr_0e1_7ae8                            ; $7b62: $20 $84

    ld a, a                                       ; $7b64: $7f
    ld l, d                                       ; $7b65: $6a
    ld a, l                                       ; $7b66: $7d
    ld a, a                                       ; $7b67: $7f
    ld [bc], a                                    ; $7b68: $02
    rst $38                                       ; $7b69: $ff
    add d                                         ; $7b6a: $82
    cp [hl]                                       ; $7b6b: $be
    rst $38                                       ; $7b6c: $ff
    ld [bc], a                                    ; $7b6d: $02
    ld a, a                                       ; $7b6e: $7f
    ld d, $00                                     ; $7b6f: $16 $00
    add d                                         ; $7b71: $82
    ld b, $02                                     ; $7b72: $06 $02
    ld [bc], a                                    ; $7b74: $02
    inc b                                         ; $7b75: $04
    ld [bc], a                                    ; $7b76: $02
    ld b, $81                                     ; $7b77: $06 $81
    ld bc, $0703                                  ; $7b79: $01 $03 $07
    inc d                                         ; $7b7c: $14
    nop                                           ; $7b7d: $00
    rst $38                                       ; $7b7e: $ff
    dec c                                         ; $7b7f: $0d
    inc b                                         ; $7b80: $04
    ei                                            ; $7b81: $fb
    dec b                                         ; $7b82: $05
    rst $30                                       ; $7b83: $f7
    cp $ea                                        ; $7b84: $fe $ea
    ld a, [$ffea]                                 ; $7b86: $fa $ea $ff
    ld a, [$fafa]                                 ; $7b89: $fa $fa $fa
    rst $38                                       ; $7b8c: $ff
    ld [bc], a                                    ; $7b8d: $02
    dec d                                         ; $7b8e: $15
    ld [bc], a                                    ; $7b8f: $02
    rra                                           ; $7b90: $1f
    add e                                         ; $7b91: $83
    scf                                           ; $7b92: $37
    ccf                                           ; $7b93: $3f
    dec sp                                        ; $7b94: $3b
    dec b                                         ; $7b95: $05
    ccf                                           ; $7b96: $3f
    add c                                         ; $7b97: $81
    dec e                                         ; $7b98: $1d
    inc b                                         ; $7b99: $04
    rra                                           ; $7b9a: $1f
    adc a                                         ; $7b9b: $8f
    rla                                           ; $7b9c: $17
    rrca                                          ; $7b9d: $0f
    ld [$1f18], sp                                ; $7b9e: $08 $18 $1f
    cpl                                           ; $7ba1: $2f
    ccf                                           ; $7ba2: $3f
    ld e, b                                       ; $7ba3: $58
    ld a, a                                       ; $7ba4: $7f
    ld e, h                                       ; $7ba5: $5c
    ld a, a                                       ; $7ba6: $7f
    ld e, a                                       ; $7ba7: $5f
    ld a, a                                       ; $7ba8: $7f
    sbc a                                         ; $7ba9: $9f
    rst $38                                       ; $7baa: $ff
    ld [bc], a                                    ; $7bab: $02
    db $10                                        ; $7bac: $10
    add e                                         ; $7bad: $83
    ld [$1418], sp                                ; $7bae: $08 $18 $14
    inc bc                                        ; $7bb1: $03
    inc e                                         ; $7bb2: $1c
    add c                                         ; $7bb3: $81
    inc d                                         ; $7bb4: $14
    inc bc                                        ; $7bb5: $03
    inc e                                         ; $7bb6: $1c
    add c                                         ; $7bb7: $81
    ld [$1804], sp                                ; $7bb8: $08 $04 $18
    add c                                         ; $7bbb: $81
    ld [$1002], sp                                ; $7bbc: $08 $02 $10
    ld [bc], a                                    ; $7bbf: $02
    jr jr_0e1_7b50                                ; $7bc0: $18 $8e

    inc d                                         ; $7bc2: $14
    inc e                                         ; $7bc3: $1c
    ld a, [bc]                                    ; $7bc4: $0a
    ld e, $1a                                     ; $7bc5: $1e $1a

jr_0e1_7bc7:
    ld e, $0a                                     ; $7bc7: $1e $0a
    ld e, $09                                     ; $7bc9: $1e $09
    rra                                           ; $7bcb: $1f
    sbc a                                         ; $7bcc: $9f
    rst $38                                       ; $7bcd: $ff
    cp a                                          ; $7bce: $bf
    rst $38                                       ; $7bcf: $ff
    ld [bc], a                                    ; $7bd0: $02
    ld e, a                                       ; $7bd1: $5f
    ld [bc], a                                    ; $7bd2: $02
    ccf                                           ; $7bd3: $3f
    ld [bc], a                                    ; $7bd4: $02
    ld a, a                                       ; $7bd5: $7f
    add h                                         ; $7bd6: $84
    ld l, a                                       ; $7bd7: $6f
    ld a, a                                       ; $7bd8: $7f
    ld a, b                                       ; $7bd9: $78
    ld a, a                                       ; $7bda: $7f
    ld [bc], a                                    ; $7bdb: $02
    ccf                                           ; $7bdc: $3f
    stop                                          ; $7bdd: $10 $00
    add h                                         ; $7bdf: $84
    add hl, de                                    ; $7be0: $19
    rra                                           ; $7be1: $1f
    dec c                                         ; $7be2: $0d
    rra                                           ; $7be3: $1f
    ld [bc], a                                    ; $7be4: $02
    ld a, [de]                                    ; $7be5: $1a
    adc b                                         ; $7be6: $88
    inc d                                         ; $7be7: $14
    inc e                                         ; $7be8: $1c
    ld a, [de]                                    ; $7be9: $1a
    ld e, $16                                     ; $7bea: $1e $16
    ld e, $0e                                     ; $7bec: $1e $0e
    ld e, $02                                     ; $7bee: $1e $02
    inc e                                         ; $7bf0: $1c
    stop                                          ; $7bf1: $10 $00
    rst $38                                       ; $7bf3: $ff
    dec c                                         ; $7bf4: $0d
    inc b                                         ; $7bf5: $04
    ei                                            ; $7bf6: $fb
    dec b                                         ; $7bf7: $05
    rst $30                                       ; $7bf8: $f7
    cp $ea                                        ; $7bf9: $fe $ea
    ld a, [$ffea]                                 ; $7bfb: $fa $ea $ff
    ld a, [$fafa]                                 ; $7bfe: $fa $fa $fa
    rst $38                                       ; $7c01: $ff
    ld [bc], a                                    ; $7c02: $02
    dec d                                         ; $7c03: $15
    ld [bc], a                                    ; $7c04: $02
    rra                                           ; $7c05: $1f
    add e                                         ; $7c06: $83
    scf                                           ; $7c07: $37
    ccf                                           ; $7c08: $3f
    dec sp                                        ; $7c09: $3b
    dec b                                         ; $7c0a: $05
    ccf                                           ; $7c0b: $3f
    add c                                         ; $7c0c: $81
    dec e                                         ; $7c0d: $1d
    inc b                                         ; $7c0e: $04
    rra                                           ; $7c0f: $1f
    adc a                                         ; $7c10: $8f
    rla                                           ; $7c11: $17
    rrca                                          ; $7c12: $0f
    ld [$1f18], sp                                ; $7c13: $08 $18 $1f
    cpl                                           ; $7c16: $2f
    ccf                                           ; $7c17: $3f
    ld d, a                                       ; $7c18: $57
    ld a, a                                       ; $7c19: $7f
    ld e, b                                       ; $7c1a: $58
    ld a, a                                       ; $7c1b: $7f
    sbc l                                         ; $7c1c: $9d
    rst $38                                       ; $7c1d: $ff
    sbc a                                         ; $7c1e: $9f
    rst $38                                       ; $7c1f: $ff
    ld [bc], a                                    ; $7c20: $02
    db $10                                        ; $7c21: $10
    add e                                         ; $7c22: $83
    ld [$1418], sp                                ; $7c23: $08 $18 $14
    inc bc                                        ; $7c26: $03
    inc e                                         ; $7c27: $1c
    add c                                         ; $7c28: $81
    inc d                                         ; $7c29: $14
    inc bc                                        ; $7c2a: $03
    inc e                                         ; $7c2b: $1c
    add c                                         ; $7c2c: $81
    ld [$1804], sp                                ; $7c2d: $08 $04 $18
    add c                                         ; $7c30: $81
    ld [$1002], sp                                ; $7c31: $08 $02 $10
    ld [bc], a                                    ; $7c34: $02
    jr jr_0e1_7bc7                                ; $7c35: $18 $90

jr_0e1_7c37:
    ld d, $1e                                     ; $7c37: $16 $1e
    ld a, [bc]                                    ; $7c39: $0a
    ld e, $1a                                     ; $7c3a: $1e $1a
    ld e, $09                                     ; $7c3c: $1e $09
    rra                                           ; $7c3e: $1f
    add hl, bc                                    ; $7c3f: $09
    rra                                           ; $7c40: $1f
    cp a                                          ; $7c41: $bf
    rst $38                                       ; $7c42: $ff
    cp a                                          ; $7c43: $bf
    rst $38                                       ; $7c44: $ff
    cp a                                          ; $7c45: $bf
    rst $38                                       ; $7c46: $ff
    ld [bc], a                                    ; $7c47: $02
    ld a, a                                       ; $7c48: $7f
    inc b                                         ; $7c49: $04
    ccf                                           ; $7c4a: $3f
    add d                                         ; $7c4b: $82
    ld a, $3f                                     ; $7c4c: $3e $3f
    ld [bc], a                                    ; $7c4e: $02
    rrca                                          ; $7c4f: $0f
    stop                                          ; $7c50: $10 $00
    adc [hl]                                      ; $7c52: $8e
    dec e                                         ; $7c53: $1d
    rra                                           ; $7c54: $1f
    ld c, $1e                                     ; $7c55: $0e $1e
    inc d                                         ; $7c57: $14
    inc e                                         ; $7c58: $1c
    inc d                                         ; $7c59: $14
    inc e                                         ; $7c5a: $1c
    ld a, [de]                                    ; $7c5b: $1a
    ld e, $16                                     ; $7c5c: $1e $16
    ld e, $0e                                     ; $7c5e: $1e $0e
    ld e, $02                                     ; $7c60: $1e $02
    inc e                                         ; $7c62: $1c
    stop                                          ; $7c63: $10 $00
    rst $38                                       ; $7c65: $ff
    dec c                                         ; $7c66: $0d
    inc b                                         ; $7c67: $04
    ei                                            ; $7c68: $fb
    dec b                                         ; $7c69: $05
    rst $30                                       ; $7c6a: $f7
    cp $eb                                        ; $7c6b: $fe $eb
    ld a, [$ffeb]                                 ; $7c6d: $fa $eb $ff
    ei                                            ; $7c70: $fb
    ld a, [$fffb]                                 ; $7c71: $fa $fb $ff
    ld [bc], a                                    ; $7c74: $02
    dec d                                         ; $7c75: $15
    ld [bc], a                                    ; $7c76: $02
    rra                                           ; $7c77: $1f
    add e                                         ; $7c78: $83
    scf                                           ; $7c79: $37
    ccf                                           ; $7c7a: $3f
    dec sp                                        ; $7c7b: $3b
    dec b                                         ; $7c7c: $05
    ccf                                           ; $7c7d: $3f
    add c                                         ; $7c7e: $81
    dec e                                         ; $7c7f: $1d
    inc b                                         ; $7c80: $04
    rra                                           ; $7c81: $1f
    adc a                                         ; $7c82: $8f
    rla                                           ; $7c83: $17
    rrca                                          ; $7c84: $0f
    ld [$1f1d], sp                                ; $7c85: $08 $1d $1f
    ld [hl], b                                    ; $7c88: $70
    ld a, a                                       ; $7c89: $7f
    ld e, b                                       ; $7c8a: $58
    ld a, a                                       ; $7c8b: $7f
    ld e, a                                       ; $7c8c: $5f
    ld a, a                                       ; $7c8d: $7f
    sbc a                                         ; $7c8e: $9f
    rst $38                                       ; $7c8f: $ff
    sbc a                                         ; $7c90: $9f
    rst $38                                       ; $7c91: $ff
    ld [bc], a                                    ; $7c92: $02
    db $10                                        ; $7c93: $10
    add e                                         ; $7c94: $83
    ld [$1418], sp                                ; $7c95: $08 $18 $14
    inc bc                                        ; $7c98: $03
    inc e                                         ; $7c99: $1c
    add c                                         ; $7c9a: $81
    inc d                                         ; $7c9b: $14
    inc bc                                        ; $7c9c: $03
    inc e                                         ; $7c9d: $1c
    add c                                         ; $7c9e: $81
    ld [$1804], sp                                ; $7c9f: $08 $04 $18
    add c                                         ; $7ca2: $81
    ld [$1002], sp                                ; $7ca3: $08 $02 $10
    ld [bc], a                                    ; $7ca6: $02
    jr jr_0e1_7c37                                ; $7ca7: $18 $8e

    inc b                                         ; $7ca9: $04
    inc e                                         ; $7caa: $1c
    ld a, [de]                                    ; $7cab: $1a
    ld e, $1a                                     ; $7cac: $1e $1a
    ld e, $0a                                     ; $7cae: $1e $0a
    ld e, $09                                     ; $7cb0: $1e $09
    rra                                           ; $7cb2: $1f
    cp a                                          ; $7cb3: $bf
    rst $38                                       ; $7cb4: $ff
    cp a                                          ; $7cb5: $bf
    rst $38                                       ; $7cb6: $ff
    ld [bc], a                                    ; $7cb7: $02
    ld a, a                                       ; $7cb8: $7f
    add c                                         ; $7cb9: $81
    ld a, e                                       ; $7cba: $7b
    inc bc                                        ; $7cbb: $03
    ld a, a                                       ; $7cbc: $7f
    ld [bc], a                                    ; $7cbd: $02
    ccf                                           ; $7cbe: $3f
    ld [bc], a                                    ; $7cbf: $02
    rrca                                          ; $7cc0: $0f
    ld [de], a                                    ; $7cc1: $12
    nop                                           ; $7cc2: $00
    add a                                         ; $7cc3: $87
    add hl, de                                    ; $7cc4: $19
    rra                                           ; $7cc5: $1f
    dec c                                         ; $7cc6: $0d
    rra                                           ; $7cc7: $1f
    ld d, $1e                                     ; $7cc8: $16 $1e
    inc d                                         ; $7cca: $14
    dec b                                         ; $7ccb: $05
    inc e                                         ; $7ccc: $1c
    ld [bc], a                                    ; $7ccd: $02
    jr jr_0e1_7ce2                                ; $7cce: $18 $12

    nop                                           ; $7cd0: $00
    rst $38                                       ; $7cd1: $ff
    dec c                                         ; $7cd2: $0d
    inc b                                         ; $7cd3: $04
    ei                                            ; $7cd4: $fb
    dec b                                         ; $7cd5: $05
    rst $30                                       ; $7cd6: $f7
    cp $ea                                        ; $7cd7: $fe $ea
    ld a, [$ffea]                                 ; $7cd9: $fa $ea $ff
    ld a, [$fafa]                                 ; $7cdc: $fa $fa $fa
    rst $38                                       ; $7cdf: $ff
    ld [bc], a                                    ; $7ce0: $02
    dec d                                         ; $7ce1: $15

jr_0e1_7ce2:
    ld [bc], a                                    ; $7ce2: $02
    rra                                           ; $7ce3: $1f
    add e                                         ; $7ce4: $83
    scf                                           ; $7ce5: $37
    ccf                                           ; $7ce6: $3f
    dec sp                                        ; $7ce7: $3b
    dec b                                         ; $7ce8: $05
    ccf                                           ; $7ce9: $3f
    add c                                         ; $7cea: $81
    dec e                                         ; $7ceb: $1d
    inc b                                         ; $7cec: $04
    rra                                           ; $7ced: $1f
    adc a                                         ; $7cee: $8f
    rla                                           ; $7cef: $17
    rrca                                          ; $7cf0: $0f
    ld [$1f18], sp                                ; $7cf1: $08 $18 $1f
    ld l, a                                       ; $7cf4: $6f
    ld a, a                                       ; $7cf5: $7f
    ld d, a                                       ; $7cf6: $57
    ld a, a                                       ; $7cf7: $7f
    ld e, b                                       ; $7cf8: $58
    ld a, a                                       ; $7cf9: $7f
    sbc l                                         ; $7cfa: $9d
    rst $38                                       ; $7cfb: $ff
    sbc a                                         ; $7cfc: $9f
    rst $38                                       ; $7cfd: $ff
    ld [bc], a                                    ; $7cfe: $02
    db $10                                        ; $7cff: $10
    add e                                         ; $7d00: $83
    ld [$1418], sp                                ; $7d01: $08 $18 $14
    inc bc                                        ; $7d04: $03
    inc e                                         ; $7d05: $1c
    add c                                         ; $7d06: $81
    inc d                                         ; $7d07: $14
    inc bc                                        ; $7d08: $03
    inc e                                         ; $7d09: $1c
    add c                                         ; $7d0a: $81
    ld [$1804], sp                                ; $7d0b: $08 $04 $18
    add c                                         ; $7d0e: $81
    ld [$1002], sp                                ; $7d0f: $08 $02 $10
    ld [bc], a                                    ; $7d12: $02

jr_0e1_7d13:
    jr @-$72                                      ; $7d13: $18 $8c

    inc d                                         ; $7d15: $14
    inc e                                         ; $7d16: $1c
    ld a, [bc]                                    ; $7d17: $0a
    ld e, $1a                                     ; $7d18: $1e $1a
    ld e, $09                                     ; $7d1a: $1e $09
    rra                                           ; $7d1c: $1f
    add hl, bc                                    ; $7d1d: $09
    rra                                           ; $7d1e: $1f
    cp a                                          ; $7d1f: $bf
    rst $38                                       ; $7d20: $ff
    ld [bc], a                                    ; $7d21: $02
    ld a, a                                       ; $7d22: $7f
    ld [bc], a                                    ; $7d23: $02
    ccf                                           ; $7d24: $3f
    add e                                         ; $7d25: $83
    dec sp                                        ; $7d26: $3b
    ccf                                           ; $7d27: $3f
    ld a, e                                       ; $7d28: $7b
    inc bc                                        ; $7d29: $03
    ld a, a                                       ; $7d2a: $7f
    add d                                         ; $7d2b: $82
    ld [hl], e                                    ; $7d2c: $73
    ld a, a                                       ; $7d2d: $7f
    ld [bc], a                                    ; $7d2e: $02
    ccf                                           ; $7d2f: $3f
    stop                                          ; $7d30: $10 $00
    adc b                                         ; $7d32: $88
    dec e                                         ; $7d33: $1d
    rra                                           ; $7d34: $1f
    dec c                                         ; $7d35: $0d
    rra                                           ; $7d36: $1f
    dec e                                         ; $7d37: $1d
    rra                                           ; $7d38: $1f
    ld d, $1e                                     ; $7d39: $16 $1e
    ld b, $1c                                     ; $7d3b: $06 $1c
    ld [bc], a                                    ; $7d3d: $02
    db $10                                        ; $7d3e: $10
    stop                                          ; $7d3f: $10 $00
    rst $38                                       ; $7d41: $ff
    dec c                                         ; $7d42: $0d
    inc b                                         ; $7d43: $04
    ei                                            ; $7d44: $fb
    dec b                                         ; $7d45: $05
    rst $30                                       ; $7d46: $f7
    cp $eb                                        ; $7d47: $fe $eb
    ld a, [$ffeb]                                 ; $7d49: $fa $eb $ff
    ei                                            ; $7d4c: $fb
    ld a, [$fffb]                                 ; $7d4d: $fa $fb $ff
    ld [bc], a                                    ; $7d50: $02
    dec d                                         ; $7d51: $15
    ld [bc], a                                    ; $7d52: $02
    rra                                           ; $7d53: $1f
    add e                                         ; $7d54: $83
    scf                                           ; $7d55: $37
    ccf                                           ; $7d56: $3f
    dec sp                                        ; $7d57: $3b
    dec b                                         ; $7d58: $05
    ccf                                           ; $7d59: $3f
    add c                                         ; $7d5a: $81
    dec e                                         ; $7d5b: $1d
    inc b                                         ; $7d5c: $04
    rra                                           ; $7d5d: $1f
    adc a                                         ; $7d5e: $8f
    rla                                           ; $7d5f: $17
    rrca                                          ; $7d60: $0f
    ld [$1f1d], sp                                ; $7d61: $08 $1d $1f
    jr nc, @+$41                                  ; $7d64: $30 $3f

    ld e, b                                       ; $7d66: $58
    ld a, a                                       ; $7d67: $7f
    ld e, a                                       ; $7d68: $5f
    ld a, a                                       ; $7d69: $7f
    ld e, a                                       ; $7d6a: $5f
    ld a, a                                       ; $7d6b: $7f
    sbc a                                         ; $7d6c: $9f
    rst $38                                       ; $7d6d: $ff
    ld [bc], a                                    ; $7d6e: $02
    db $10                                        ; $7d6f: $10
    add e                                         ; $7d70: $83
    ld [$1418], sp                                ; $7d71: $08 $18 $14
    inc bc                                        ; $7d74: $03
    inc e                                         ; $7d75: $1c
    add c                                         ; $7d76: $81
    inc d                                         ; $7d77: $14
    inc bc                                        ; $7d78: $03
    inc e                                         ; $7d79: $1c
    add c                                         ; $7d7a: $81
    ld [$1804], sp                                ; $7d7b: $08 $04 $18
    add c                                         ; $7d7e: $81
    ld [$1002], sp                                ; $7d7f: $08 $02 $10
    ld [bc], a                                    ; $7d82: $02
    jr jr_0e1_7d13                                ; $7d83: $18 $8e

    ld b, $1e                                     ; $7d85: $06 $1e
    ld a, [de]                                    ; $7d87: $1a
    ld e, $1a                                     ; $7d88: $1e $1a

jr_0e1_7d8a:
    ld e, $09                                     ; $7d8a: $1e $09
    rra                                           ; $7d8c: $1f
    add hl, bc                                    ; $7d8d: $09
    rra                                           ; $7d8e: $1f
    sbc a                                         ; $7d8f: $9f
    rst $38                                       ; $7d90: $ff
    cp a                                          ; $7d91: $bf
    rst $38                                       ; $7d92: $ff
    ld [bc], a                                    ; $7d93: $02
    ld a, a                                       ; $7d94: $7f
    ld b, $3f                                     ; $7d95: $06 $3f
    ld [bc], a                                    ; $7d97: $02
    rra                                           ; $7d98: $1f
    ld [de], a                                    ; $7d99: $12
    nop                                           ; $7d9a: $00
    add a                                         ; $7d9b: $87
    dec e                                         ; $7d9c: $1d
    rra                                           ; $7d9d: $1f
    dec c                                         ; $7d9e: $0d
    rra                                           ; $7d9f: $1f
    ld d, $1e                                     ; $7da0: $16 $1e
    ld a, [de]                                    ; $7da2: $1a
    inc bc                                        ; $7da3: $03
    ld e, $02                                     ; $7da4: $1e $02
    inc e                                         ; $7da6: $1c
    ld [bc], a                                    ; $7da7: $02
    db $10                                        ; $7da8: $10
    ld [de], a                                    ; $7da9: $12
    nop                                           ; $7daa: $00
    rst $38                                       ; $7dab: $ff
    dec c                                         ; $7dac: $0d
    inc b                                         ; $7dad: $04
    ei                                            ; $7dae: $fb
    dec b                                         ; $7daf: $05
    rst $30                                       ; $7db0: $f7
    cp $ea                                        ; $7db1: $fe $ea
    ld a, [$ffea]                                 ; $7db3: $fa $ea $ff
    ld a, [$fafa]                                 ; $7db6: $fa $fa $fa
    rst $38                                       ; $7db9: $ff
    ld [bc], a                                    ; $7dba: $02
    dec bc                                        ; $7dbb: $0b
    add d                                         ; $7dbc: $82
    ld d, $1f                                     ; $7dbd: $16 $1f
    ld [bc], a                                    ; $7dbf: $02
    ccf                                           ; $7dc0: $3f
    adc [hl]                                      ; $7dc1: $8e
    cpl                                           ; $7dc2: $2f
    add hl, sp                                    ; $7dc3: $39
    ccf                                           ; $7dc4: $3f
    jr nc, jr_0e1_7e06                            ; $7dc5: $30 $3f

    dec [hl]                                      ; $7dc7: $35
    ccf                                           ; $7dc8: $3f
    jr nz, jr_0e1_7dea                            ; $7dc9: $20 $1f

    ld [de], a                                    ; $7dcb: $12
    rra                                           ; $7dcc: $1f
    rla                                           ; $7dcd: $17
    rrca                                          ; $7dce: $0f
    ld [$1f02], sp                                ; $7dcf: $08 $02 $1f
    adc d                                         ; $7dd2: $8a
    ld a, [hl+]                                   ; $7dd3: $2a
    ccf                                           ; $7dd4: $3f
    ld e, l                                       ; $7dd5: $5d
    ld a, a                                       ; $7dd6: $7f
    ld e, d                                       ; $7dd7: $5a
    ld a, a                                       ; $7dd8: $7f
    ld e, l                                       ; $7dd9: $5d
    ld a, a                                       ; $7dda: $7f
    cp l                                          ; $7ddb: $bd
    rst $38                                       ; $7ddc: $ff
    ld [bc], a                                    ; $7ddd: $02
    ld [$1802], sp                                ; $7dde: $08 $02 $18
    add c                                         ; $7de1: $81
    inc d                                         ; $7de2: $14
    ld [bc], a                                    ; $7de3: $02
    inc e                                         ; $7de4: $1c
    adc e                                         ; $7de5: $8b
    inc c                                         ; $7de6: $0c
    inc e                                         ; $7de7: $1c
    inc c                                         ; $7de8: $0c
    inc e                                         ; $7de9: $1c

jr_0e1_7dea:
    inc c                                         ; $7dea: $0c
    inc e                                         ; $7deb: $1c
    inc b                                         ; $7dec: $04
    jr jr_0e1_7df7                                ; $7ded: $18 $08

    jr jr_0e1_7df9                                ; $7def: $18 $08

    ld [bc], a                                    ; $7df1: $02
    db $10                                        ; $7df2: $10
    ld [bc], a                                    ; $7df3: $02
    jr jr_0e1_7d8a                                ; $7df4: $18 $94

    inc d                                         ; $7df6: $14

jr_0e1_7df7:
    inc e                                         ; $7df7: $1c
    ld a, [de]                                    ; $7df8: $1a

jr_0e1_7df9:
    ld e, $1a                                     ; $7df9: $1e $1a
    ld e, $1a                                     ; $7dfb: $1e $1a
    ld e, $1d                                     ; $7dfd: $1e $1d
    rra                                           ; $7dff: $1f
    jp c, $faff                                   ; $7e00: $da $ff $fa

    cp a                                          ; $7e03: $bf

jr_0e1_7e04:
    ld a, d                                       ; $7e04: $7a
    ld e, a                                       ; $7e05: $5f

jr_0e1_7e06:
    ld a, [hl-]                                   ; $7e06: $3a
    cpl                                           ; $7e07: $2f
    ld [hl], a                                    ; $7e08: $77
    ld a, a                                       ; $7e09: $7f
    ld [bc], a                                    ; $7e0a: $02
    ccf                                           ; $7e0b: $3f
    add c                                         ; $7e0c: $81
    dec d                                         ; $7e0d: $15
    inc bc                                        ; $7e0e: $03
    dec e                                         ; $7e0f: $1d
    stop                                          ; $7e10: $10 $00
    add c                                         ; $7e12: $81
    dec de                                        ; $7e13: $1b
    ld [bc], a                                    ; $7e14: $02
    rra                                           ; $7e15: $1f
    add c                                         ; $7e16: $81
    dec e                                         ; $7e17: $1d

jr_0e1_7e18:
    ld [bc], a                                    ; $7e18: $02
    ld a, [de]                                    ; $7e19: $1a
    ld [bc], a                                    ; $7e1a: $02
    inc e                                         ; $7e1b: $1c
    add d                                         ; $7e1c: $82
    ld a, [bc]                                    ; $7e1d: $0a
    ld e, $02                                     ; $7e1e: $1e $02
    inc e                                         ; $7e20: $1c
    add c                                         ; $7e21: $81
    ld [$1803], sp                                ; $7e22: $08 $03 $18
    stop                                          ; $7e25: $10 $00
    rst $38                                       ; $7e27: $ff
    dec c                                         ; $7e28: $0d
    inc b                                         ; $7e29: $04
    ei                                            ; $7e2a: $fb
    dec b                                         ; $7e2b: $05
    rst $30                                       ; $7e2c: $f7
    cp $ea                                        ; $7e2d: $fe $ea
    ld a, [$ffea]                                 ; $7e2f: $fa $ea $ff
    ld a, [$fafa]                                 ; $7e32: $fa $fa $fa
    rst $38                                       ; $7e35: $ff
    ld [bc], a                                    ; $7e36: $02
    dec bc                                        ; $7e37: $0b
    add d                                         ; $7e38: $82
    ld d, $1f                                     ; $7e39: $16 $1f
    ld [bc], a                                    ; $7e3b: $02
    ccf                                           ; $7e3c: $3f
    adc [hl]                                      ; $7e3d: $8e
    cpl                                           ; $7e3e: $2f
    add hl, sp                                    ; $7e3f: $39
    ccf                                           ; $7e40: $3f
    jr nc, jr_0e1_7e82                            ; $7e41: $30 $3f

    dec [hl]                                      ; $7e43: $35
    ccf                                           ; $7e44: $3f
    jr nz, jr_0e1_7e66                            ; $7e45: $20 $1f

    ld [de], a                                    ; $7e47: $12
    rra                                           ; $7e48: $1f
    rla                                           ; $7e49: $17
    rrca                                          ; $7e4a: $0f
    ld [$1f02], sp                                ; $7e4b: $08 $02 $1f
    adc d                                         ; $7e4e: $8a
    ld a, [hl-]                                   ; $7e4f: $3a
    ccf                                           ; $7e50: $3f
    ld e, l                                       ; $7e51: $5d
    ld a, a                                       ; $7e52: $7f
    ld e, d                                       ; $7e53: $5a
    ld a, a                                       ; $7e54: $7f
    ld a, l                                       ; $7e55: $7d
    ld a, a                                       ; $7e56: $7f
    sbc l                                         ; $7e57: $9d
    rst $38                                       ; $7e58: $ff
    ld [bc], a                                    ; $7e59: $02
    ld [$1802], sp                                ; $7e5a: $08 $02 $18
    add c                                         ; $7e5d: $81
    inc d                                         ; $7e5e: $14
    ld [bc], a                                    ; $7e5f: $02
    inc e                                         ; $7e60: $1c
    adc e                                         ; $7e61: $8b
    inc c                                         ; $7e62: $0c
    inc e                                         ; $7e63: $1c
    inc c                                         ; $7e64: $0c
    inc e                                         ; $7e65: $1c

jr_0e1_7e66:
    inc c                                         ; $7e66: $0c
    inc e                                         ; $7e67: $1c
    inc b                                         ; $7e68: $04
    jr jr_0e1_7e73                                ; $7e69: $18 $08

    jr jr_0e1_7e75                                ; $7e6b: $18 $08

    ld [bc], a                                    ; $7e6d: $02
    db $10                                        ; $7e6e: $10
    ld [bc], a                                    ; $7e6f: $02
    jr jr_0e1_7e04                                ; $7e70: $18 $92

    inc d                                         ; $7e72: $14

jr_0e1_7e73:
    inc e                                         ; $7e73: $1c
    ld a, [de]                                    ; $7e74: $1a

jr_0e1_7e75:
    ld e, $1a                                     ; $7e75: $1e $1a
    ld e, $1d                                     ; $7e77: $1e $1d
    rra                                           ; $7e79: $1f
    add hl, de                                    ; $7e7a: $19
    rra                                           ; $7e7b: $1f
    cp c                                          ; $7e7c: $b9
    rst $18                                       ; $7e7d: $df
    ld a, [$76c7]                                 ; $7e7e: $fa $c7 $76
    ld a, a                                       ; $7e81: $7f

jr_0e1_7e82:
    scf                                           ; $7e82: $37
    ccf                                           ; $7e83: $3f
    ld [bc], a                                    ; $7e84: $02
    ld a, a                                       ; $7e85: $7f
    ld [bc], a                                    ; $7e86: $02
    ccf                                           ; $7e87: $3f
    ld [bc], a                                    ; $7e88: $02
    dec de                                        ; $7e89: $1b
    ld [bc], a                                    ; $7e8a: $02
    ld bc, $0010                                  ; $7e8b: $01 $10 $00
    add d                                         ; $7e8e: $82
    rra                                           ; $7e8f: $1f
    dec e                                         ; $7e90: $1d
    ld [bc], a                                    ; $7e91: $02
    ld a, [de]                                    ; $7e92: $1a
    ld [bc], a                                    ; $7e93: $02
    jr jr_0e1_7e18                                ; $7e94: $18 $82

    ld [$0218], sp                                ; $7e96: $08 $18 $02
    inc e                                         ; $7e99: $1c
    add d                                         ; $7e9a: $82
    inc c                                         ; $7e9b: $0c
    inc e                                         ; $7e9c: $1c
    ld [bc], a                                    ; $7e9d: $02
    jr @+$04                                      ; $7e9e: $18 $02

    db $10                                        ; $7ea0: $10
    stop                                          ; $7ea1: $10 $00
    rst $38                                       ; $7ea3: $ff
    dec c                                         ; $7ea4: $0d
    inc b                                         ; $7ea5: $04
    ei                                            ; $7ea6: $fb
    dec b                                         ; $7ea7: $05
    rst $30                                       ; $7ea8: $f7
    cp $eb                                        ; $7ea9: $fe $eb
    ld a, [$ffeb]                                 ; $7eab: $fa $eb $ff
    ei                                            ; $7eae: $fb
    ld a, [$fffb]                                 ; $7eaf: $fa $fb $ff
    ld [bc], a                                    ; $7eb2: $02
    dec bc                                        ; $7eb3: $0b
    add d                                         ; $7eb4: $82
    ld d, $1f                                     ; $7eb5: $16 $1f
    ld [bc], a                                    ; $7eb7: $02
    ccf                                           ; $7eb8: $3f
    adc [hl]                                      ; $7eb9: $8e
    cpl                                           ; $7eba: $2f
    add hl, sp                                    ; $7ebb: $39
    ccf                                           ; $7ebc: $3f
    jr nc, jr_0e1_7efe                            ; $7ebd: $30 $3f

    dec [hl]                                      ; $7ebf: $35
    ccf                                           ; $7ec0: $3f
    jr nz, jr_0e1_7ee2                            ; $7ec1: $20 $1f

    ld [de], a                                    ; $7ec3: $12
    rra                                           ; $7ec4: $1f
    rla                                           ; $7ec5: $17
    rrca                                          ; $7ec6: $0f
    ld [$1f02], sp                                ; $7ec7: $08 $02 $1f
    adc d                                         ; $7eca: $8a
    ld a, [hl+]                                   ; $7ecb: $2a
    ccf                                           ; $7ecc: $3f
    ld e, l                                       ; $7ecd: $5d
    ld a, a                                       ; $7ece: $7f
    ld e, d                                       ; $7ecf: $5a
    ld a, a                                       ; $7ed0: $7f
    sbc l                                         ; $7ed1: $9d
    rst $38                                       ; $7ed2: $ff
    cp l                                          ; $7ed3: $bd
    rst $38                                       ; $7ed4: $ff
    ld [bc], a                                    ; $7ed5: $02
    ld [$1802], sp                                ; $7ed6: $08 $02 $18
    add c                                         ; $7ed9: $81
    inc d                                         ; $7eda: $14
    ld [bc], a                                    ; $7edb: $02
    inc e                                         ; $7edc: $1c
    adc e                                         ; $7edd: $8b
    inc c                                         ; $7ede: $0c
    inc e                                         ; $7edf: $1c
    inc c                                         ; $7ee0: $0c
    inc e                                         ; $7ee1: $1c

jr_0e1_7ee2:
    inc c                                         ; $7ee2: $0c
    inc e                                         ; $7ee3: $1c
    inc b                                         ; $7ee4: $04
    jr jr_0e1_7eef                                ; $7ee5: $18 $08

    jr jr_0e1_7ef1                                ; $7ee7: $18 $08

    ld [bc], a                                    ; $7ee9: $02
    db $10                                        ; $7eea: $10
    ld [bc], a                                    ; $7eeb: $02
    jr jr_0e1_7ef0                                ; $7eec: $18 $02

    inc e                                         ; $7eee: $1c

jr_0e1_7eef:
    sub d                                         ; $7eef: $92

jr_0e1_7ef0:
    ld a, [de]                                    ; $7ef0: $1a

jr_0e1_7ef1:
    ld e, $1a                                     ; $7ef1: $1e $1a
    ld e, $19                                     ; $7ef3: $1e $19
    rra                                           ; $7ef5: $1f
    dec e                                         ; $7ef6: $1d
    rra                                           ; $7ef7: $1f
    db $dd                                        ; $7ef8: $dd
    rst $38                                       ; $7ef9: $ff
    db $fc                                        ; $7efa: $fc
    cp a                                          ; $7efb: $bf
    ld a, d                                       ; $7efc: $7a
    ld e, a                                       ; $7efd: $5f

jr_0e1_7efe:
    ld [hl], e                                    ; $7efe: $73
    ld l, a                                       ; $7eff: $6f
    scf                                           ; $7f00: $37
    ccf                                           ; $7f01: $3f
    ld [bc], a                                    ; $7f02: $02
    dec e                                         ; $7f03: $1d
    inc d                                         ; $7f04: $14
    nop                                           ; $7f05: $00
    add c                                         ; $7f06: $81
    dec de                                        ; $7f07: $1b
    ld [bc], a                                    ; $7f08: $02
    rra                                           ; $7f09: $1f
    add c                                         ; $7f0a: $81
    dec e                                         ; $7f0b: $1d
    ld [bc], a                                    ; $7f0c: $02
    ld a, [de]                                    ; $7f0d: $1a
    add d                                         ; $7f0e: $82
    ld c, $1e                                     ; $7f0f: $0e $1e
    ld [bc], a                                    ; $7f11: $02
    inc e                                         ; $7f12: $1c
    add d                                         ; $7f13: $82
    ld [$0218], sp                                ; $7f14: $08 $18 $02
    db $10                                        ; $7f17: $10
    ld [de], a                                    ; $7f18: $12
    nop                                           ; $7f19: $00
    rst $38                                       ; $7f1a: $ff
    dec c                                         ; $7f1b: $0d
    inc b                                         ; $7f1c: $04
    ei                                            ; $7f1d: $fb
    dec b                                         ; $7f1e: $05
    rst $30                                       ; $7f1f: $f7
    cp $ea                                        ; $7f20: $fe $ea
    ld a, [$ffea]                                 ; $7f22: $fa $ea $ff
    ld a, [$fafa]                                 ; $7f25: $fa $fa $fa
    rst $38                                       ; $7f28: $ff
    ld [bc], a                                    ; $7f29: $02
    dec bc                                        ; $7f2a: $0b
    add d                                         ; $7f2b: $82
    ld d, $1f                                     ; $7f2c: $16 $1f
    ld [bc], a                                    ; $7f2e: $02
    ccf                                           ; $7f2f: $3f
    adc [hl]                                      ; $7f30: $8e
    cpl                                           ; $7f31: $2f
    add hl, sp                                    ; $7f32: $39
    ccf                                           ; $7f33: $3f
    jr nc, jr_0e1_7f75                            ; $7f34: $30 $3f

    dec [hl]                                      ; $7f36: $35
    ccf                                           ; $7f37: $3f
    jr nz, jr_0e1_7f59                            ; $7f38: $20 $1f

    ld [de], a                                    ; $7f3a: $12
    rra                                           ; $7f3b: $1f
    rla                                           ; $7f3c: $17
    rrca                                          ; $7f3d: $0f
    ld [$1f02], sp                                ; $7f3e: $08 $02 $1f
    adc d                                         ; $7f41: $8a
    ld a, [hl+]                                   ; $7f42: $2a
    ccf                                           ; $7f43: $3f
    ld e, l                                       ; $7f44: $5d
    ld a, a                                       ; $7f45: $7f
    ld e, d                                       ; $7f46: $5a
    ld a, a                                       ; $7f47: $7f
    cp l                                          ; $7f48: $bd
    rst $38                                       ; $7f49: $ff
    sbc l                                         ; $7f4a: $9d
    rst $38                                       ; $7f4b: $ff
    ld [bc], a                                    ; $7f4c: $02
    ld [$1802], sp                                ; $7f4d: $08 $02 $18
    add c                                         ; $7f50: $81
    inc d                                         ; $7f51: $14
    ld [bc], a                                    ; $7f52: $02
    inc e                                         ; $7f53: $1c
    adc e                                         ; $7f54: $8b
    inc c                                         ; $7f55: $0c
    inc e                                         ; $7f56: $1c
    inc c                                         ; $7f57: $0c
    inc e                                         ; $7f58: $1c

jr_0e1_7f59:
    inc c                                         ; $7f59: $0c
    inc e                                         ; $7f5a: $1c
    inc b                                         ; $7f5b: $04
    jr jr_0e1_7f66                                ; $7f5c: $18 $08

    jr jr_0e1_7f68                                ; $7f5e: $18 $08

    ld [bc], a                                    ; $7f60: $02
    db $10                                        ; $7f61: $10
    ld [bc], a                                    ; $7f62: $02
    jr jr_0e1_7f67                                ; $7f63: $18 $02

    inc e                                         ; $7f65: $1c

jr_0e1_7f66:
    add e                                         ; $7f66: $83

jr_0e1_7f67:
    ld a, [de]                                    ; $7f67: $1a

jr_0e1_7f68:
    ld e, $1a                                     ; $7f68: $1e $1a
    inc bc                                        ; $7f6a: $03
    ld e, $8a                                     ; $7f6b: $1e $8a
    add hl, de                                    ; $7f6d: $19
    rra                                           ; $7f6e: $1f
    db $fc                                        ; $7f6f: $fc
    rst $38                                       ; $7f70: $ff
    ld a, [$fbbf]                                 ; $7f71: $fa $bf $fb
    cp a                                          ; $7f74: $bf

jr_0e1_7f75:
    ld d, a                                       ; $7f75: $57
    ld e, a                                       ; $7f76: $5f
    ld [bc], a                                    ; $7f77: $02
    ccf                                           ; $7f78: $3f
    add d                                         ; $7f79: $82
    scf                                           ; $7f7a: $37
    ccf                                           ; $7f7b: $3f
    ld [bc], a                                    ; $7f7c: $02
    ld e, $02                                     ; $7f7d: $1e $02
    inc c                                         ; $7f7f: $0c
    stop                                          ; $7f80: $10 $00
    adc b                                         ; $7f82: $88
    dec e                                         ; $7f83: $1d
    dec de                                        ; $7f84: $1b
    rra                                           ; $7f85: $1f
    dec de                                        ; $7f86: $1b
    ld c, $1e                                     ; $7f87: $0e $1e
    inc c                                         ; $7f89: $0c
    inc e                                         ; $7f8a: $1c
    ld [bc], a                                    ; $7f8b: $02
    ld e, $02                                     ; $7f8c: $1e $02
    inc e                                         ; $7f8e: $1c
    ld [bc], a                                    ; $7f8f: $02
    jr jr_0e1_7fa4                                ; $7f90: $18 $12

    nop                                           ; $7f92: $00
    rst $38                                       ; $7f93: $ff
    dec c                                         ; $7f94: $0d
    inc b                                         ; $7f95: $04
    ei                                            ; $7f96: $fb
    dec b                                         ; $7f97: $05
    rst $30                                       ; $7f98: $f7
    cp $ea                                        ; $7f99: $fe $ea
    ei                                            ; $7f9b: $fb
    db $eb                                        ; $7f9c: $eb
    db $fd                                        ; $7f9d: $fd
    ld a, [$fafb]                                 ; $7f9e: $fa $fb $fa
    db $fd                                        ; $7fa1: $fd
    ld [bc], a                                    ; $7fa2: $02
    dec de                                        ; $7fa3: $1b

jr_0e1_7fa4:
    add e                                         ; $7fa4: $83
    ld a, l                                       ; $7fa5: $7d
    ld a, a                                       ; $7fa6: $7f
    or a                                          ; $7fa7: $b7
    ld [bc], a                                    ; $7fa8: $02
    rst $38                                       ; $7fa9: $ff
    adc l                                         ; $7faa: $8d
    ld a, [$f8ff]                                 ; $7fab: $fa $ff $f8
    cp a                                          ; $7fae: $bf
    ld a, [$785f]                                 ; $7faf: $fa $5f $78
    ld a, a                                       ; $7fb2: $7f
    ld [hl], b                                    ; $7fb3: $70
    ccf                                           ; $7fb4: $3f
    ld sp, $181f                                  ; $7fb5: $31 $1f $18
    ld [bc], a                                    ; $7fb8: $02
    rra                                           ; $7fb9: $1f
    adc d                                         ; $7fba: $8a
    dec [hl]                                      ; $7fbb: $35
    ccf                                           ; $7fbc: $3f
    ld d, [hl]                                    ; $7fbd: $56
    ld a, a                                       ; $7fbe: $7f
    dec [hl]                                      ; $7fbf: $35
    ccf                                           ; $7fc0: $3f
    ld l, $3f                                     ; $7fc1: $2e $3f
    ld h, $3f                                     ; $7fc3: $26 $3f
    ld [bc], a                                    ; $7fc5: $02
    inc bc                                        ; $7fc6: $03
    ld [$8202], sp                                ; $7fc7: $08 $02 $82
    inc bc                                        ; $7fca: $03
    ld bc, $0206                                  ; $7fcb: $01 $06 $02
    inc b                                         ; $7fce: $04
    nop                                           ; $7fcf: $00
    ld [$8202], sp                                ; $7fd0: $08 $02 $82
    cp d                                          ; $7fd3: $ba
    cp $02                                        ; $7fd4: $fe $02
    nop                                           ; $7fd6: $00
    adc h                                         ; $7fd7: $8c
    ld e, [hl]                                    ; $7fd8: $5e
    ld [hl], e                                    ; $7fd9: $73
    ld a, a                                       ; $7fda: $7f
    ld a, h                                       ; $7fdb: $7c
    ld a, $3f                                     ; $7fdc: $3e $3f
    ld a, l                                       ; $7fde: $7d
    ld a, a                                       ; $7fdf: $7f
    cp e                                          ; $7fe0: $bb
    rst $38                                       ; $7fe1: $ff
    ld e, h                                       ; $7fe2: $5c
    ld a, a                                       ; $7fe3: $7f
    ld [bc], a                                    ; $7fe4: $02
    ccf                                           ; $7fe5: $3f
    ld [de], a                                    ; $7fe6: $12
    nop                                           ; $7fe7: $00
    inc c                                         ; $7fe8: $0c
    ld [bc], a                                    ; $7fe9: $02
    ld [bc], a                                    ; $7fea: $02
    inc bc                                        ; $7feb: $03
    stop                                          ; $7fec: $10 $00
    rst $38                                       ; $7fee: $ff
    rlca                                          ; $7fef: $07
    ld bc, $1102                                  ; $7ff0: $01 $02 $11
    db $ec                                        ; $7ff3: $ec
    ei                                            ; $7ff4: $fb
    or $ff                                        ; $7ff5: $f6 $ff
    ld [bc], a                                    ; $7ff7: $02
    ld bc, $001e                                  ; $7ff8: $01 $1e $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
