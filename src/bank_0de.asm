; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0de", ROMX[$4000], BANK[$de]

    sbc $0b                                       ; $4000: $de $0b
    inc bc                                        ; $4002: $03
    ld hl, sp+$07                                 ; $4003: $f8 $07
    ld a, [c]                                     ; $4005: $f2
    ld bc, $f8f2                                  ; $4006: $01 $f2 $f8
    ldh a, [rP1]                                  ; $4009: $f0 $00
    nop                                           ; $400b: $00
    nop                                           ; $400c: $00
    ld [bc], a                                    ; $400d: $02
    ld bc, $0302                                  ; $400e: $01 $02 $03
    ld [bc], a                                    ; $4011: $02
    ld [bc], a                                    ; $4012: $02
    ld [bc], a                                    ; $4013: $02
    dec b                                         ; $4014: $05
    ld [bc], a                                    ; $4015: $02
    inc b                                         ; $4016: $04
    ld [bc], a                                    ; $4017: $02
    ld b, $02                                     ; $4018: $06 $02
    rlca                                          ; $401a: $07
    add e                                         ; $401b: $83
    dec bc                                        ; $401c: $0b
    rrca                                          ; $401d: $0f
    inc de                                        ; $401e: $13
    ld [bc], a                                    ; $401f: $02
    rra                                           ; $4020: $1f
    add e                                         ; $4021: $83
    dec de                                        ; $4022: $1b
    rra                                           ; $4023: $1f
    rla                                           ; $4024: $17
    ld [bc], a                                    ; $4025: $02
    rrca                                          ; $4026: $0f
    add [hl]                                      ; $4027: $86
    inc e                                         ; $4028: $1c
    rra                                           ; $4029: $1f
    rla                                           ; $402a: $17
    rra                                           ; $402b: $1f
    dec e                                         ; $402c: $1d
    rra                                           ; $402d: $1f
    ld [bc], a                                    ; $402e: $02
    rlca                                          ; $402f: $07
    ld [bc], a                                    ; $4030: $02
    ld a, h                                       ; $4031: $7c
    ld [bc], a                                    ; $4032: $02
    and d                                         ; $4033: $a2
    ld [bc], a                                    ; $4034: $02
    dec [hl]                                      ; $4035: $35
    adc h                                         ; $4036: $8c
    ld a, l                                       ; $4037: $7d
    ld c, l                                       ; $4038: $4d
    rst $38                                       ; $4039: $ff
    jp $377f                                      ; $403a: $c3 $7f $37


    rst $38                                       ; $403d: $ff
    add e                                         ; $403e: $83
    cp $8a                                        ; $403f: $fe $8a
    cp $c6                                        ; $4041: $fe $c6
    ld [bc], a                                    ; $4043: $02
    cp [hl]                                       ; $4044: $be
    adc b                                         ; $4045: $88
    sbc l                                         ; $4046: $9d
    rst $38                                       ; $4047: $ff
    cp l                                          ; $4048: $bd
    ei                                            ; $4049: $fb
    db $dd                                        ; $404a: $dd
    ei                                            ; $404b: $fb
    ld l, [hl]                                    ; $404c: $6e
    cp $02                                        ; $404d: $fe $02
    ldh a, [$82]                                  ; $404f: $f0 $82
    add sp, -$08                                  ; $4051: $e8 $f8
    ld [bc], a                                    ; $4053: $02
    cp h                                          ; $4054: $bc
    ld e, $00                                     ; $4055: $1e $00
    rst $38                                       ; $4057: $ff
    dec c                                         ; $4058: $0d
    inc b                                         ; $4059: $04
    ld hl, sp+$07                                 ; $405a: $f8 $07
    ld a, [c]                                     ; $405c: $f2
    ld bc, $f9ec                                  ; $405d: $01 $ec $f9
    xor $fb                                       ; $4060: $ee $fb
    db $fc                                        ; $4062: $fc
    ld a, [$fcfc]                                 ; $4063: $fa $fc $fc
    ld [bc], a                                    ; $4066: $02
    jr nc, jr_0de_406b                            ; $4067: $30 $02

    ld c, l                                       ; $4069: $4d
    adc d                                         ; $406a: $8a

jr_0de_406b:
    cp a                                          ; $406b: $bf
    or d                                          ; $406c: $b2
    rst $18                                       ; $406d: $df
    call nc, $909f                                ; $406e: $d4 $9f $90
    xor a                                         ; $4071: $af
    xor b                                         ; $4072: $a8
    sbc a                                         ; $4073: $9f
    sub h                                         ; $4074: $94
    ld [bc], a                                    ; $4075: $02
    rst $08                                       ; $4076: $cf
    ld [bc], a                                    ; $4077: $02
    add $8e                                       ; $4078: $c6 $8e
    adc e                                         ; $407a: $8b
    adc a                                         ; $407b: $8f
    jp z, $7bcf                                   ; $407c: $ca $cf $7b

    ld a, a                                       ; $407f: $7f
    rla                                           ; $4080: $17
    rra                                           ; $4081: $1f
    inc de                                        ; $4082: $13
    rra                                           ; $4083: $1f
    scf                                           ; $4084: $37
    ccf                                           ; $4085: $3f
    cpl                                           ; $4086: $2f
    add hl, sp                                    ; $4087: $39
    inc b                                         ; $4088: $04
    ld [bc], a                                    ; $4089: $02
    add h                                         ; $408a: $84
    inc bc                                        ; $408b: $03
    ld bc, $0103                                  ; $408c: $01 $03 $01
    ld [bc], a                                    ; $408f: $02
    inc bc                                        ; $4090: $03
    inc b                                         ; $4091: $04
    ld [bc], a                                    ; $4092: $02
    ld [bc], a                                    ; $4093: $02
    ld bc, $0302                                  ; $4094: $01 $02 $03
    adc [hl]                                      ; $4097: $8e
    ld bc, $0103                                  ; $4098: $01 $03 $01
    inc bc                                        ; $409b: $03
    ld bc, $0103                                  ; $409c: $01 $03 $01
    inc bc                                        ; $409f: $03
    ld bc, $ff03                                  ; $40a0: $01 $03 $ff
    ld sp, hl                                     ; $40a3: $f9
    ld a, l                                       ; $40a4: $7d
    ld a, a                                       ; $40a5: $7f
    inc b                                         ; $40a6: $04
    nop                                           ; $40a7: $00
    add [hl]                                      ; $40a8: $86
    ld a, l                                       ; $40a9: $7d
    ld a, a                                       ; $40aa: $7f
    cp e                                          ; $40ab: $bb
    rst $38                                       ; $40ac: $ff
    ld e, h                                       ; $40ad: $5c
    ld a, a                                       ; $40ae: $7f
    ld [bc], a                                    ; $40af: $02
    ccf                                           ; $40b0: $3f
    jr jr_0de_40b3                                ; $40b1: $18 $00

jr_0de_40b3:
    ld b, $02                                     ; $40b3: $06 $02
    ld [bc], a                                    ; $40b5: $02
    inc bc                                        ; $40b6: $03
    inc d                                         ; $40b7: $14
    nop                                           ; $40b8: $00
    rst $38                                       ; $40b9: $ff
    rlca                                          ; $40ba: $07
    ld bc, $07f8                                  ; $40bb: $01 $f8 $07
    ld a, [c]                                     ; $40be: $f2
    ld bc, $faed                                  ; $40bf: $01 $ed $fa
    sub h                                         ; $40c2: $94
    nop                                           ; $40c3: $00
    ld h, b                                       ; $40c4: $60
    nop                                           ; $40c5: $00
    add b                                         ; $40c6: $80
    nop                                           ; $40c7: $00
    ld b, b                                       ; $40c8: $40
    nop                                           ; $40c9: $00
    ret nz                                        ; $40ca: $c0

    nop                                           ; $40cb: $00
    and b                                         ; $40cc: $a0
    nop                                           ; $40cd: $00
    ret nz                                        ; $40ce: $c0

    nop                                           ; $40cf: $00
    ld h, b                                       ; $40d0: $60
    nop                                           ; $40d1: $00
    ld [hl], d                                    ; $40d2: $72
    nop                                           ; $40d3: $00
    pop hl                                        ; $40d4: $e1
    nop                                           ; $40d5: $00
    ld h, b                                       ; $40d6: $60
    inc c                                         ; $40d7: $0c
    nop                                           ; $40d8: $00
    rst $38                                       ; $40d9: $ff
    dec c                                         ; $40da: $0d
    inc b                                         ; $40db: $04
    ld hl, sp+$07                                 ; $40dc: $f8 $07
    ld a, [c]                                     ; $40de: $f2
    ld bc, $faeb                                  ; $40df: $01 $eb $fa
    db $eb                                        ; $40e2: $eb
    rst $38                                       ; $40e3: $ff
    ei                                            ; $40e4: $fb
    ld a, [$fffb]                                 ; $40e5: $fa $fb $ff
    call Call_000_000f                            ; $40e8: $cd $0f $00
    ld e, $00                                     ; $40eb: $1e $00
    ccf                                           ; $40ed: $3f
    nop                                           ; $40ee: $00
    scf                                           ; $40ef: $37
    nop                                           ; $40f0: $00
    ld c, a                                       ; $40f1: $4f
    nop                                           ; $40f2: $00
    ld d, a                                       ; $40f3: $57
    nop                                           ; $40f4: $00
    dec l                                         ; $40f5: $2d
    nop                                           ; $40f6: $00
    ld c, a                                       ; $40f7: $4f
    nop                                           ; $40f8: $00
    ld d, a                                       ; $40f9: $57
    nop                                           ; $40fa: $00
    ld a, [hl+]                                   ; $40fb: $2a
    nop                                           ; $40fc: $00
    ld d, b                                       ; $40fd: $50
    nop                                           ; $40fe: $00
    ld h, a                                       ; $40ff: $67
    nop                                           ; $4100: $00
    ld h, e                                       ; $4101: $63
    nop                                           ; $4102: $00
    ld h, b                                       ; $4103: $60
    nop                                           ; $4104: $00
    ldh [rP1], a                                  ; $4105: $e0 $00
    ldh [rP1], a                                  ; $4107: $e0 $00
    stop                                          ; $4109: $10 $00
    jr jr_0de_410d                                ; $410b: $18 $00

jr_0de_410d:
    inc e                                         ; $410d: $1c
    nop                                           ; $410e: $00
    inc e                                         ; $410f: $1c
    nop                                           ; $4110: $00
    ld e, $00                                     ; $4111: $1e $00
    ld c, $00                                     ; $4113: $0e $00
    inc c                                         ; $4115: $0c
    nop                                           ; $4116: $00
    ld d, $00                                     ; $4117: $16 $00
    ld a, [de]                                    ; $4119: $1a
    nop                                           ; $411a: $00
    inc d                                         ; $411b: $14
    nop                                           ; $411c: $00
    ld a, [bc]                                    ; $411d: $0a
    nop                                           ; $411e: $00
    ld d, $00                                     ; $411f: $16 $00
    ld b, $00                                     ; $4121: $06 $00
    ld d, $00                                     ; $4123: $16 $00
    rla                                           ; $4125: $17
    nop                                           ; $4126: $00
    rlca                                          ; $4127: $07
    nop                                           ; $4128: $00
    ldh [rP1], a                                  ; $4129: $e0 $00
    ld d, b                                       ; $412b: $50
    nop                                           ; $412c: $00
    jr nz, jr_0de_412f                            ; $412d: $20 $00

jr_0de_412f:
    ld b, b                                       ; $412f: $40
    nop                                           ; $4130: $00
    ld d, b                                       ; $4131: $50
    nop                                           ; $4132: $00
    ld b, a                                       ; $4133: $47
    nop                                           ; $4134: $00
    ccf                                           ; $4135: $3f
    inc de                                        ; $4136: $13
    nop                                           ; $4137: $00
    adc l                                         ; $4138: $8d
    rla                                           ; $4139: $17
    nop                                           ; $413a: $00
    ld a, [bc]                                    ; $413b: $0a
    nop                                           ; $413c: $00
    inc c                                         ; $413d: $0c
    nop                                           ; $413e: $00
    ld b, $00                                     ; $413f: $06 $00
    ld a, [bc]                                    ; $4141: $0a
    nop                                           ; $4142: $00
    ld [de], a                                    ; $4143: $12
    nop                                           ; $4144: $00
    inc e                                         ; $4145: $1c
    inc de                                        ; $4146: $13
    nop                                           ; $4147: $00
    rst $38                                       ; $4148: $ff
    dec c                                         ; $4149: $0d
    inc b                                         ; $414a: $04
    ld hl, sp+$07                                 ; $414b: $f8 $07
    ld a, [c]                                     ; $414d: $f2
    ld bc, $faeb                                  ; $414e: $01 $eb $fa
    db $eb                                        ; $4151: $eb
    rst $38                                       ; $4152: $ff
    ei                                            ; $4153: $fb
    ld a, [$fefb]                                 ; $4154: $fa $fb $fe
    call Call_000_000f                            ; $4157: $cd $0f $00
    ld e, $00                                     ; $415a: $1e $00
    ccf                                           ; $415c: $3f
    nop                                           ; $415d: $00
    scf                                           ; $415e: $37
    nop                                           ; $415f: $00
    ld c, a                                       ; $4160: $4f
    nop                                           ; $4161: $00
    ld d, a                                       ; $4162: $57
    nop                                           ; $4163: $00
    dec l                                         ; $4164: $2d
    nop                                           ; $4165: $00
    ld c, a                                       ; $4166: $4f
    nop                                           ; $4167: $00
    ld d, a                                       ; $4168: $57
    nop                                           ; $4169: $00
    ld a, [hl+]                                   ; $416a: $2a
    nop                                           ; $416b: $00
    jr nz, jr_0de_416e                            ; $416c: $20 $00

jr_0de_416e:
    ld h, a                                       ; $416e: $67
    nop                                           ; $416f: $00
    ld h, e                                       ; $4170: $63
    nop                                           ; $4171: $00
    ldh [rP1], a                                  ; $4172: $e0 $00
    ldh [rP1], a                                  ; $4174: $e0 $00
    ret nz                                        ; $4176: $c0

    nop                                           ; $4177: $00
    stop                                          ; $4178: $10 $00
    jr jr_0de_417c                                ; $417a: $18 $00

jr_0de_417c:
    inc e                                         ; $417c: $1c
    nop                                           ; $417d: $00
    inc e                                         ; $417e: $1c
    nop                                           ; $417f: $00
    ld e, $00                                     ; $4180: $1e $00
    ld c, $00                                     ; $4182: $0e $00
    inc c                                         ; $4184: $0c
    nop                                           ; $4185: $00
    ld d, $00                                     ; $4186: $16 $00
    ld a, [de]                                    ; $4188: $1a
    nop                                           ; $4189: $00
    inc d                                         ; $418a: $14
    nop                                           ; $418b: $00
    ld a, [bc]                                    ; $418c: $0a
    nop                                           ; $418d: $00
    ld d, $00                                     ; $418e: $16 $00
    ld b, $00                                     ; $4190: $06 $00
    rla                                           ; $4192: $17
    nop                                           ; $4193: $00
    rla                                           ; $4194: $17
    nop                                           ; $4195: $00
    inc bc                                        ; $4196: $03
    nop                                           ; $4197: $00
    ldh [rP1], a                                  ; $4198: $e0 $00
    ret nz                                        ; $419a: $c0

    nop                                           ; $419b: $00
    ld b, b                                       ; $419c: $40
    nop                                           ; $419d: $00
    jr nz, jr_0de_41a0                            ; $419e: $20 $00

jr_0de_41a0:
    jr nz, jr_0de_41a2                            ; $41a0: $20 $00

jr_0de_41a2:
    ld sp, $0f00                                  ; $41a2: $31 $00 $0f
    inc de                                        ; $41a5: $13
    nop                                           ; $41a6: $00
    adc l                                         ; $41a7: $8d
    add hl, bc                                    ; $41a8: $09
    nop                                           ; $41a9: $00
    ld b, $00                                     ; $41aa: $06 $00
    ld b, $00                                     ; $41ac: $06 $00
    inc bc                                        ; $41ae: $03
    nop                                           ; $41af: $00
    dec b                                         ; $41b0: $05
    nop                                           ; $41b1: $00
    add hl, bc                                    ; $41b2: $09
    nop                                           ; $41b3: $00
    ld c, $13                                     ; $41b4: $0e $13
    nop                                           ; $41b6: $00
    rst $38                                       ; $41b7: $ff
    dec c                                         ; $41b8: $0d
    inc b                                         ; $41b9: $04
    ld hl, sp+$07                                 ; $41ba: $f8 $07
    ld a, [c]                                     ; $41bc: $f2
    ld bc, $faec                                  ; $41bd: $01 $ec $fa
    db $ec                                        ; $41c0: $ec
    rst $38                                       ; $41c1: $ff
    db $fc                                        ; $41c2: $fc
    ld a, [$fefc]                                 ; $41c3: $fa $fc $fe
    rrc a                                         ; $41c6: $cb $0f
    nop                                           ; $41c8: $00
    ld e, $00                                     ; $41c9: $1e $00
    ccf                                           ; $41cb: $3f
    nop                                           ; $41cc: $00
    ld d, a                                       ; $41cd: $57
    nop                                           ; $41ce: $00
    ld c, a                                       ; $41cf: $4f
    nop                                           ; $41d0: $00
    ld d, l                                       ; $41d1: $55
    nop                                           ; $41d2: $00
    cpl                                           ; $41d3: $2f
    nop                                           ; $41d4: $00
    ld c, a                                       ; $41d5: $4f
    nop                                           ; $41d6: $00
    ld [hl-], a                                   ; $41d7: $32
    nop                                           ; $41d8: $00
    jr nz, jr_0de_41db                            ; $41d9: $20 $00

jr_0de_41db:
    ld c, a                                       ; $41db: $4f
    nop                                           ; $41dc: $00
    ld h, d                                       ; $41dd: $62
    nop                                           ; $41de: $00
    ld h, b                                       ; $41df: $60
    nop                                           ; $41e0: $00
    ldh [rP1], a                                  ; $41e1: $e0 $00
    ret nz                                        ; $41e3: $c0

    nop                                           ; $41e4: $00
    ldh [rP1], a                                  ; $41e5: $e0 $00
    stop                                          ; $41e7: $10 $00
    jr jr_0de_41eb                                ; $41e9: $18 $00

jr_0de_41eb:
    inc e                                         ; $41eb: $1c
    nop                                           ; $41ec: $00
    ld e, $00                                     ; $41ed: $1e $00
    ld e, $00                                     ; $41ef: $1e $00
    ld c, $00                                     ; $41f1: $0e $00
    inc d                                         ; $41f3: $14
    nop                                           ; $41f4: $00
    ld e, $00                                     ; $41f5: $1e $00
    inc e                                         ; $41f7: $1c
    nop                                           ; $41f8: $00
    inc b                                         ; $41f9: $04
    nop                                           ; $41fa: $00
    ld a, [de]                                    ; $41fb: $1a
    nop                                           ; $41fc: $00
    ld b, $00                                     ; $41fd: $06 $00
    ld b, $00                                     ; $41ff: $06 $00
    rla                                           ; $4201: $17
    nop                                           ; $4202: $00
    rla                                           ; $4203: $17
    nop                                           ; $4204: $00
    rlca                                          ; $4205: $07
    nop                                           ; $4206: $00
    ret nz                                        ; $4207: $c0

    nop                                           ; $4208: $00
    ld b, b                                       ; $4209: $40
    nop                                           ; $420a: $00
    jr nz, jr_0de_420d                            ; $420b: $20 $00

jr_0de_420d:
    jr nz, jr_0de_420f                            ; $420d: $20 $00

jr_0de_420f:
    jr jr_0de_4211                                ; $420f: $18 $00

jr_0de_4211:
    rlca                                          ; $4211: $07
    dec d                                         ; $4212: $15
    nop                                           ; $4213: $00
    adc e                                         ; $4214: $8b
    add hl, bc                                    ; $4215: $09
    nop                                           ; $4216: $00
    ld b, $00                                     ; $4217: $06 $00
    ld [bc], a                                    ; $4219: $02
    nop                                           ; $421a: $00
    dec bc                                        ; $421b: $0b
    nop                                           ; $421c: $00
    inc bc                                        ; $421d: $03
    nop                                           ; $421e: $00
    inc c                                         ; $421f: $0c
    dec d                                         ; $4220: $15
    nop                                           ; $4221: $00
    rst $38                                       ; $4222: $ff
    dec c                                         ; $4223: $0d
    inc b                                         ; $4224: $04
    ld hl, sp+$07                                 ; $4225: $f8 $07
    ld a, [c]                                     ; $4227: $f2
    ld bc, $faeb                                  ; $4228: $01 $eb $fa
    db $eb                                        ; $422b: $eb
    rst $38                                       ; $422c: $ff
    ei                                            ; $422d: $fb
    ld a, [$fffb]                                 ; $422e: $fa $fb $ff
    call Call_000_000f                            ; $4231: $cd $0f $00
    ld e, $00                                     ; $4234: $1e $00
    ccf                                           ; $4236: $3f
    nop                                           ; $4237: $00
    ccf                                           ; $4238: $3f
    nop                                           ; $4239: $00
    ld d, a                                       ; $423a: $57
    nop                                           ; $423b: $00
    ld c, a                                       ; $423c: $4f
    nop                                           ; $423d: $00
    daa                                           ; $423e: $27
    nop                                           ; $423f: $00
    ld c, l                                       ; $4240: $4d
    nop                                           ; $4241: $00
    ld d, a                                       ; $4242: $57
    nop                                           ; $4243: $00
    ld a, [hl+]                                   ; $4244: $2a
    nop                                           ; $4245: $00
    ld d, b                                       ; $4246: $50
    nop                                           ; $4247: $00
    ld l, b                                       ; $4248: $68
    nop                                           ; $4249: $00
    ld h, a                                       ; $424a: $67
    nop                                           ; $424b: $00
    ld h, b                                       ; $424c: $60
    nop                                           ; $424d: $00
    ldh [rP1], a                                  ; $424e: $e0 $00
    ldh [rP1], a                                  ; $4250: $e0 $00
    stop                                          ; $4252: $10 $00
    jr jr_0de_4256                                ; $4254: $18 $00

jr_0de_4256:
    inc e                                         ; $4256: $1c
    nop                                           ; $4257: $00
    inc e                                         ; $4258: $1c
    nop                                           ; $4259: $00
    ld e, $00                                     ; $425a: $1e $00
    ld e, $00                                     ; $425c: $1e $00
    inc c                                         ; $425e: $0c
    nop                                           ; $425f: $00
    ld b, $00                                     ; $4260: $06 $00
    ld a, [de]                                    ; $4262: $1a
    nop                                           ; $4263: $00
    inc d                                         ; $4264: $14
    nop                                           ; $4265: $00
    inc c                                         ; $4266: $0c
    nop                                           ; $4267: $00
    ld d, $00                                     ; $4268: $16 $00
    ld b, $00                                     ; $426a: $06 $00
    ld d, $00                                     ; $426c: $16 $00
    rla                                           ; $426e: $17
    nop                                           ; $426f: $00
    rlca                                          ; $4270: $07
    nop                                           ; $4271: $00
    ret nz                                        ; $4272: $c0

    nop                                           ; $4273: $00
    ld b, b                                       ; $4274: $40
    nop                                           ; $4275: $00
    jr nz, jr_0de_4278                            ; $4276: $20 $00

jr_0de_4278:
    ld b, h                                       ; $4278: $44
    nop                                           ; $4279: $00
    ld b, b                                       ; $427a: $40
    nop                                           ; $427b: $00
    jr nc, jr_0de_427e                            ; $427c: $30 $00

jr_0de_427e:
    rrca                                          ; $427e: $0f
    inc de                                        ; $427f: $13
    nop                                           ; $4280: $00
    adc l                                         ; $4281: $8d
    rla                                           ; $4282: $17
    nop                                           ; $4283: $00
    ld a, [bc]                                    ; $4284: $0a
    nop                                           ; $4285: $00
    inc c                                         ; $4286: $0c
    nop                                           ; $4287: $00
    inc c                                         ; $4288: $0c
    nop                                           ; $4289: $00
    inc b                                         ; $428a: $04
    nop                                           ; $428b: $00
    inc b                                         ; $428c: $04
    nop                                           ; $428d: $00
    jr jr_0de_42a3                                ; $428e: $18 $13

    nop                                           ; $4290: $00
    rst $38                                       ; $4291: $ff
    dec c                                         ; $4292: $0d
    inc b                                         ; $4293: $04
    ld hl, sp+$07                                 ; $4294: $f8 $07
    ld a, [c]                                     ; $4296: $f2
    ld bc, $faeb                                  ; $4297: $01 $eb $fa
    db $eb                                        ; $429a: $eb
    rst $38                                       ; $429b: $ff
    ei                                            ; $429c: $fb
    ei                                            ; $429d: $fb
    ei                                            ; $429e: $fb
    rst $38                                       ; $429f: $ff
    call Call_000_000f                            ; $42a0: $cd $0f $00

jr_0de_42a3:
    ld e, $00                                     ; $42a3: $1e $00
    ccf                                           ; $42a5: $3f
    nop                                           ; $42a6: $00
    scf                                           ; $42a7: $37
    nop                                           ; $42a8: $00
    ld c, a                                       ; $42a9: $4f
    nop                                           ; $42aa: $00
    ld d, a                                       ; $42ab: $57
    nop                                           ; $42ac: $00
    dec l                                         ; $42ad: $2d
    nop                                           ; $42ae: $00
    ld c, a                                       ; $42af: $4f
    nop                                           ; $42b0: $00
    ld d, a                                       ; $42b1: $57
    nop                                           ; $42b2: $00
    ld a, [hl+]                                   ; $42b3: $2a
    nop                                           ; $42b4: $00
    ld d, b                                       ; $42b5: $50
    nop                                           ; $42b6: $00
    ld h, a                                       ; $42b7: $67
    nop                                           ; $42b8: $00
    ld h, e                                       ; $42b9: $63
    nop                                           ; $42ba: $00
    ldh [rP1], a                                  ; $42bb: $e0 $00
    ldh [rP1], a                                  ; $42bd: $e0 $00
    ret nz                                        ; $42bf: $c0

    nop                                           ; $42c0: $00
    stop                                          ; $42c1: $10 $00
    jr jr_0de_42c5                                ; $42c3: $18 $00

jr_0de_42c5:
    inc e                                         ; $42c5: $1c
    nop                                           ; $42c6: $00
    inc e                                         ; $42c7: $1c
    nop                                           ; $42c8: $00
    ld e, $00                                     ; $42c9: $1e $00
    ld c, $00                                     ; $42cb: $0e $00
    inc c                                         ; $42cd: $0c
    nop                                           ; $42ce: $00
    ld d, $00                                     ; $42cf: $16 $00
    ld a, [de]                                    ; $42d1: $1a
    nop                                           ; $42d2: $00
    inc d                                         ; $42d3: $14
    nop                                           ; $42d4: $00
    inc b                                         ; $42d5: $04
    nop                                           ; $42d6: $00
    ld d, $00                                     ; $42d7: $16 $00
    ld b, $00                                     ; $42d9: $06 $00
    rla                                           ; $42db: $17
    nop                                           ; $42dc: $00
    rla                                           ; $42dd: $17
    nop                                           ; $42de: $00
    inc bc                                        ; $42df: $03
    nop                                           ; $42e0: $00
    add c                                         ; $42e1: $81
    nop                                           ; $42e2: $00
    ld b, b                                       ; $42e3: $40
    nop                                           ; $42e4: $00
    ld c, b                                       ; $42e5: $48
    nop                                           ; $42e6: $00
    adc b                                         ; $42e7: $88
    nop                                           ; $42e8: $00
    add b                                         ; $42e9: $80
    nop                                           ; $42ea: $00
    sbc b                                         ; $42eb: $98
    nop                                           ; $42ec: $00
    ld a, a                                       ; $42ed: $7f
    inc de                                        ; $42ee: $13
    nop                                           ; $42ef: $00
    adc e                                         ; $42f0: $8b
    rlca                                          ; $42f1: $07
    nop                                           ; $42f2: $00
    inc bc                                        ; $42f3: $03
    nop                                           ; $42f4: $00
    ld a, [bc]                                    ; $42f5: $0a
    nop                                           ; $42f6: $00
    inc b                                         ; $42f7: $04
    nop                                           ; $42f8: $00
    inc b                                         ; $42f9: $04
    nop                                           ; $42fa: $00
    inc c                                         ; $42fb: $0c
    dec d                                         ; $42fc: $15
    nop                                           ; $42fd: $00
    rst $38                                       ; $42fe: $ff
    dec c                                         ; $42ff: $0d
    inc b                                         ; $4300: $04
    ld hl, sp+$07                                 ; $4301: $f8 $07
    ld a, [c]                                     ; $4303: $f2
    ld bc, $faec                                  ; $4304: $01 $ec $fa
    db $ec                                        ; $4307: $ec
    rst $38                                       ; $4308: $ff
    db $fc                                        ; $4309: $fc
    ei                                            ; $430a: $fb
    db $fc                                        ; $430b: $fc
    rst $38                                       ; $430c: $ff
    rrc a                                         ; $430d: $cb $0f
    nop                                           ; $430f: $00
    ld e, $00                                     ; $4310: $1e $00
    ccf                                           ; $4312: $3f
    nop                                           ; $4313: $00
    ld d, a                                       ; $4314: $57
    nop                                           ; $4315: $00
    ld c, a                                       ; $4316: $4f
    nop                                           ; $4317: $00
    ld d, l                                       ; $4318: $55
    nop                                           ; $4319: $00
    cpl                                           ; $431a: $2f
    nop                                           ; $431b: $00
    ld c, a                                       ; $431c: $4f
    nop                                           ; $431d: $00
    ld [hl-], a                                   ; $431e: $32
    nop                                           ; $431f: $00
    jr nz, jr_0de_4322                            ; $4320: $20 $00

jr_0de_4322:
    ld e, a                                       ; $4322: $5f
    nop                                           ; $4323: $00
    ld h, d                                       ; $4324: $62
    nop                                           ; $4325: $00
    ld h, b                                       ; $4326: $60
    nop                                           ; $4327: $00
    ldh [rP1], a                                  ; $4328: $e0 $00
    ldh [rP1], a                                  ; $432a: $e0 $00
    ldh [rP1], a                                  ; $432c: $e0 $00
    stop                                          ; $432e: $10 $00
    jr jr_0de_4332                                ; $4330: $18 $00

jr_0de_4332:
    inc e                                         ; $4332: $1c
    nop                                           ; $4333: $00
    ld e, $00                                     ; $4334: $1e $00
    ld e, $00                                     ; $4336: $1e $00
    ld c, $00                                     ; $4338: $0e $00
    inc d                                         ; $433a: $14
    nop                                           ; $433b: $00
    ld e, $00                                     ; $433c: $1e $00
    inc e                                         ; $433e: $1c
    nop                                           ; $433f: $00
    inc b                                         ; $4340: $04
    nop                                           ; $4341: $00
    ld [de], a                                    ; $4342: $12
    nop                                           ; $4343: $00
    ld b, $00                                     ; $4344: $06 $00
    ld b, $00                                     ; $4346: $06 $00
    rla                                           ; $4348: $17
    nop                                           ; $4349: $00
    inc de                                        ; $434a: $13
    nop                                           ; $434b: $00
    rlca                                          ; $434c: $07
    nop                                           ; $434d: $00
    add c                                         ; $434e: $81
    nop                                           ; $434f: $00
    ld b, b                                       ; $4350: $40
    nop                                           ; $4351: $00
    ld b, b                                       ; $4352: $40
    nop                                           ; $4353: $00
    adc b                                         ; $4354: $88
    nop                                           ; $4355: $00
    pop bc                                        ; $4356: $c1
    nop                                           ; $4357: $00
    ld a, $15                                     ; $4358: $3e $15
    nop                                           ; $435a: $00
    adc c                                         ; $435b: $89
    inc bc                                        ; $435c: $03
    nop                                           ; $435d: $00
    ld [bc], a                                    ; $435e: $02
    nop                                           ; $435f: $00
    inc c                                         ; $4360: $0c
    nop                                           ; $4361: $00
    inc b                                         ; $4362: $04
    nop                                           ; $4363: $00
    ld [$0017], sp                                ; $4364: $08 $17 $00
    rst $38                                       ; $4367: $ff
    dec c                                         ; $4368: $0d
    inc b                                         ; $4369: $04
    ld hl, sp+$07                                 ; $436a: $f8 $07
    ld a, [c]                                     ; $436c: $f2
    ld bc, $faeb                                  ; $436d: $01 $eb $fa
    db $eb                                        ; $4370: $eb
    rst $38                                       ; $4371: $ff
    ei                                            ; $4372: $fb
    ld a, [$fffb]                                 ; $4373: $fa $fb $ff
    call Call_000_000f                            ; $4376: $cd $0f $00
    ld e, $00                                     ; $4379: $1e $00
    ccf                                           ; $437b: $3f
    nop                                           ; $437c: $00
    ccf                                           ; $437d: $3f
    nop                                           ; $437e: $00
    ld d, a                                       ; $437f: $57
    nop                                           ; $4380: $00
    ld c, a                                       ; $4381: $4f
    nop                                           ; $4382: $00
    daa                                           ; $4383: $27
    nop                                           ; $4384: $00
    ld c, l                                       ; $4385: $4d
    nop                                           ; $4386: $00
    ld d, a                                       ; $4387: $57
    nop                                           ; $4388: $00
    ld a, [hl+]                                   ; $4389: $2a
    nop                                           ; $438a: $00
    jr nc, jr_0de_438d                            ; $438b: $30 $00

jr_0de_438d:
    ld l, b                                       ; $438d: $68
    nop                                           ; $438e: $00
    ld h, a                                       ; $438f: $67
    nop                                           ; $4390: $00
    ld h, b                                       ; $4391: $60
    nop                                           ; $4392: $00
    ldh [rP1], a                                  ; $4393: $e0 $00
    ldh [rP1], a                                  ; $4395: $e0 $00
    stop                                          ; $4397: $10 $00
    jr jr_0de_439b                                ; $4399: $18 $00

jr_0de_439b:
    inc e                                         ; $439b: $1c
    nop                                           ; $439c: $00
    inc e                                         ; $439d: $1c
    nop                                           ; $439e: $00
    ld e, $00                                     ; $439f: $1e $00
    ld e, $00                                     ; $43a1: $1e $00
    inc c                                         ; $43a3: $0c
    nop                                           ; $43a4: $00
    ld b, $00                                     ; $43a5: $06 $00
    ld a, [de]                                    ; $43a7: $1a
    nop                                           ; $43a8: $00
    inc d                                         ; $43a9: $14
    nop                                           ; $43aa: $00
    ld a, [bc]                                    ; $43ab: $0a
    nop                                           ; $43ac: $00
    ld d, $00                                     ; $43ad: $16 $00
    ld b, $00                                     ; $43af: $06 $00
    ld d, $00                                     ; $43b1: $16 $00
    rla                                           ; $43b3: $17
    nop                                           ; $43b4: $00
    rlca                                          ; $43b5: $07
    nop                                           ; $43b6: $00
    ldh [rP1], a                                  ; $43b7: $e0 $00
    ld d, b                                       ; $43b9: $50
    nop                                           ; $43ba: $00
    jr nz, jr_0de_43bd                            ; $43bb: $20 $00

jr_0de_43bd:
    jr nz, jr_0de_43bf                            ; $43bd: $20 $00

jr_0de_43bf:
    jr nz, jr_0de_43c1                            ; $43bf: $20 $00

jr_0de_43c1:
    jr nz, jr_0de_43c3                            ; $43c1: $20 $00

jr_0de_43c3:
    rra                                           ; $43c3: $1f
    inc de                                        ; $43c4: $13
    nop                                           ; $43c5: $00
    adc l                                         ; $43c6: $8d
    inc de                                        ; $43c7: $13
    nop                                           ; $43c8: $00
    ld a, [bc]                                    ; $43c9: $0a
    nop                                           ; $43ca: $00
    inc b                                         ; $43cb: $04
    nop                                           ; $43cc: $00
    ld b, $00                                     ; $43cd: $06 $00
    ld [bc], a                                    ; $43cf: $02
    nop                                           ; $43d0: $00
    inc c                                         ; $43d1: $0c
    nop                                           ; $43d2: $00
    db $10                                        ; $43d3: $10
    inc de                                        ; $43d4: $13
    nop                                           ; $43d5: $00
    rst $38                                       ; $43d6: $ff
    dec c                                         ; $43d7: $0d
    inc b                                         ; $43d8: $04
    ld hl, sp+$07                                 ; $43d9: $f8 $07
    ld a, [c]                                     ; $43db: $f2
    ld bc, $faeb                                  ; $43dc: $01 $eb $fa
    db $eb                                        ; $43df: $eb
    rst $38                                       ; $43e0: $ff
    ei                                            ; $43e1: $fb
    ld a, [$fffb]                                 ; $43e2: $fa $fb $ff
    call Call_000_000f                            ; $43e5: $cd $0f $00
    dec de                                        ; $43e8: $1b
    nop                                           ; $43e9: $00
    dec sp                                        ; $43ea: $3b
    nop                                           ; $43eb: $00
    inc [hl]                                      ; $43ec: $34
    nop                                           ; $43ed: $00
    ld b, a                                       ; $43ee: $47
    nop                                           ; $43ef: $00
    ld d, d                                       ; $43f0: $52
    nop                                           ; $43f1: $00
    cpl                                           ; $43f2: $2f
    nop                                           ; $43f3: $00
    ld c, l                                       ; $43f4: $4d
    nop                                           ; $43f5: $00
    ld d, a                                       ; $43f6: $57
    nop                                           ; $43f7: $00
    ld b, b                                       ; $43f8: $40
    nop                                           ; $43f9: $00
    ld d, l                                       ; $43fa: $55
    nop                                           ; $43fb: $00
    ld h, d                                       ; $43fc: $62
    nop                                           ; $43fd: $00
    ld h, l                                       ; $43fe: $65
    nop                                           ; $43ff: $00
    ld [c], a                                     ; $4400: $e2
    nop                                           ; $4401: $00
    jp nz, $a500                                  ; $4402: $c2 $00 $a5

    nop                                           ; $4405: $00
    stop                                          ; $4406: $10 $00
    jr jr_0de_440a                                ; $4408: $18 $00

jr_0de_440a:
    inc c                                         ; $440a: $0c
    nop                                           ; $440b: $00
    inc e                                         ; $440c: $1c
    nop                                           ; $440d: $00
    ld b, $00                                     ; $440e: $06 $00
    ld a, [bc]                                    ; $4410: $0a
    nop                                           ; $4411: $00
    inc d                                         ; $4412: $14
    nop                                           ; $4413: $00
    ld d, $00                                     ; $4414: $16 $00
    ld c, $00                                     ; $4416: $0e $00
    ld b, $00                                     ; $4418: $06 $00
    ld a, [bc]                                    ; $441a: $0a
    nop                                           ; $441b: $00
    ld b, $00                                     ; $441c: $06 $00
    ld b, $00                                     ; $441e: $06 $00
    rlca                                          ; $4420: $07
    nop                                           ; $4421: $00
    inc bc                                        ; $4422: $03
    nop                                           ; $4423: $00
    dec b                                         ; $4424: $05
    nop                                           ; $4425: $00
    push bc                                       ; $4426: $c5
    nop                                           ; $4427: $00
    ld h, l                                       ; $4428: $65
    nop                                           ; $4429: $00
    dec [hl]                                      ; $442a: $35
    nop                                           ; $442b: $00
    ld c, b                                       ; $442c: $48
    nop                                           ; $442d: $00
    ld [hl+], a                                   ; $442e: $22
    nop                                           ; $442f: $00
    dec e                                         ; $4430: $1d
    nop                                           ; $4431: $00
    jr jr_0de_4447                                ; $4432: $18 $13

    nop                                           ; $4434: $00
    adc l                                         ; $4435: $8d
    rlca                                          ; $4436: $07
    nop                                           ; $4437: $00
    ld a, [bc]                                    ; $4438: $0a
    nop                                           ; $4439: $00
    inc b                                         ; $443a: $04
    nop                                           ; $443b: $00
    ld d, $00                                     ; $443c: $16 $00
    inc b                                         ; $443e: $04
    nop                                           ; $443f: $00
    jr jr_0de_4442                                ; $4440: $18 $00

jr_0de_4442:
    jr jr_0de_4457                                ; $4442: $18 $13

    nop                                           ; $4444: $00
    rst $38                                       ; $4445: $ff
    dec c                                         ; $4446: $0d

jr_0de_4447:
    inc b                                         ; $4447: $04
    ld hl, sp+$07                                 ; $4448: $f8 $07
    ld a, [c]                                     ; $444a: $f2
    ld bc, $faeb                                  ; $444b: $01 $eb $fa
    db $eb                                        ; $444e: $eb
    rst $38                                       ; $444f: $ff
    ei                                            ; $4450: $fb
    ei                                            ; $4451: $fb
    ei                                            ; $4452: $fb
    cp $cd                                        ; $4453: $fe $cd
    rrca                                          ; $4455: $0f
    nop                                           ; $4456: $00

jr_0de_4457:
    dec de                                        ; $4457: $1b
    nop                                           ; $4458: $00
    dec sp                                        ; $4459: $3b
    nop                                           ; $445a: $00
    inc [hl]                                      ; $445b: $34
    nop                                           ; $445c: $00
    ld b, a                                       ; $445d: $47
    nop                                           ; $445e: $00
    ld d, d                                       ; $445f: $52
    nop                                           ; $4460: $00
    cpl                                           ; $4461: $2f
    nop                                           ; $4462: $00
    ld c, l                                       ; $4463: $4d
    nop                                           ; $4464: $00
    ld d, a                                       ; $4465: $57
    nop                                           ; $4466: $00
    ld b, b                                       ; $4467: $40
    nop                                           ; $4468: $00
    ld b, l                                       ; $4469: $45
    nop                                           ; $446a: $00
    ld h, d                                       ; $446b: $62
    nop                                           ; $446c: $00
    ld h, l                                       ; $446d: $65
    nop                                           ; $446e: $00
    ld b, d                                       ; $446f: $42
    nop                                           ; $4470: $00
    ld [c], a                                     ; $4471: $e2
    nop                                           ; $4472: $00
    or $00                                        ; $4473: $f6 $00
    stop                                          ; $4475: $10 $00
    jr jr_0de_4479                                ; $4477: $18 $00

jr_0de_4479:
    inc c                                         ; $4479: $0c
    nop                                           ; $447a: $00
    inc e                                         ; $447b: $1c
    nop                                           ; $447c: $00
    ld b, $00                                     ; $447d: $06 $00
    ld a, [bc]                                    ; $447f: $0a
    nop                                           ; $4480: $00
    inc d                                         ; $4481: $14
    nop                                           ; $4482: $00
    ld d, $00                                     ; $4483: $16 $00
    ld c, $00                                     ; $4485: $0e $00
    ld b, $00                                     ; $4487: $06 $00
    ld a, [bc]                                    ; $4489: $0a
    nop                                           ; $448a: $00
    ld b, $00                                     ; $448b: $06 $00
    rlca                                          ; $448d: $07
    nop                                           ; $448e: $00
    inc bc                                        ; $448f: $03
    nop                                           ; $4490: $00
    rlca                                          ; $4491: $07
    nop                                           ; $4492: $00
    dec b                                         ; $4493: $05
    nop                                           ; $4494: $00
    ld [$5a00], a                                 ; $4495: $ea $00 $5a
    nop                                           ; $4498: $00
    ld d, c                                       ; $4499: $51
    nop                                           ; $449a: $00
    add b                                         ; $449b: $80
    nop                                           ; $449c: $00
    ld c, c                                       ; $449d: $49
    nop                                           ; $449e: $00
    inc [hl]                                      ; $449f: $34
    nop                                           ; $44a0: $00
    inc bc                                        ; $44a1: $03
    inc de                                        ; $44a2: $13
    nop                                           ; $44a3: $00
    adc e                                         ; $44a4: $8b
    dec b                                         ; $44a5: $05
    nop                                           ; $44a6: $00
    inc b                                         ; $44a7: $04
    nop                                           ; $44a8: $00
    inc b                                         ; $44a9: $04
    nop                                           ; $44aa: $00
    ld [bc], a                                    ; $44ab: $02
    nop                                           ; $44ac: $00
    ld [bc], a                                    ; $44ad: $02
    nop                                           ; $44ae: $00
    inc b                                         ; $44af: $04
    dec d                                         ; $44b0: $15
    nop                                           ; $44b1: $00
    rst $38                                       ; $44b2: $ff
    dec c                                         ; $44b3: $0d
    inc b                                         ; $44b4: $04
    ld hl, sp+$07                                 ; $44b5: $f8 $07
    ld a, [c]                                     ; $44b7: $f2
    ld bc, $faec                                  ; $44b8: $01 $ec $fa
    db $ec                                        ; $44bb: $ec
    rst $38                                       ; $44bc: $ff
    db $fc                                        ; $44bd: $fc
    ld a, [$fefc]                                 ; $44be: $fa $fc $fe
    rrc a                                         ; $44c1: $cb $0f
    nop                                           ; $44c3: $00
    dec de                                        ; $44c4: $1b
    nop                                           ; $44c5: $00
    dec sp                                        ; $44c6: $3b
    nop                                           ; $44c7: $00
    ld d, h                                       ; $44c8: $54
    nop                                           ; $44c9: $00
    ld b, a                                       ; $44ca: $47
    nop                                           ; $44cb: $00
    ld d, d                                       ; $44cc: $52
    nop                                           ; $44cd: $00
    cpl                                           ; $44ce: $2f
    nop                                           ; $44cf: $00
    ld c, l                                       ; $44d0: $4d
    nop                                           ; $44d1: $00
    ld d, a                                       ; $44d2: $57
    nop                                           ; $44d3: $00
    jr nz, jr_0de_44d6                            ; $44d4: $20 $00

jr_0de_44d6:
    ld d, l                                       ; $44d6: $55
    nop                                           ; $44d7: $00
    ld h, d                                       ; $44d8: $62
    nop                                           ; $44d9: $00
    ld h, l                                       ; $44da: $65
    nop                                           ; $44db: $00
    jp nz, $c200                                  ; $44dc: $c2 $00 $c2

    nop                                           ; $44df: $00
    and $00                                       ; $44e0: $e6 $00
    stop                                          ; $44e2: $10 $00
    jr jr_0de_44e6                                ; $44e4: $18 $00

jr_0de_44e6:
    inc c                                         ; $44e6: $0c
    nop                                           ; $44e7: $00
    ld e, $00                                     ; $44e8: $1e $00
    ld b, $00                                     ; $44ea: $06 $00
    ld a, [bc]                                    ; $44ec: $0a
    nop                                           ; $44ed: $00
    inc d                                         ; $44ee: $14
    nop                                           ; $44ef: $00
    ld d, $00                                     ; $44f0: $16 $00
    ld c, $00                                     ; $44f2: $0e $00
    inc b                                         ; $44f4: $04
    nop                                           ; $44f5: $00
    ld a, [bc]                                    ; $44f6: $0a
    nop                                           ; $44f7: $00
    ld b, $00                                     ; $44f8: $06 $00
    ld b, $00                                     ; $44fa: $06 $00
    inc bc                                        ; $44fc: $03
    nop                                           ; $44fd: $00
    rlca                                          ; $44fe: $07
    nop                                           ; $44ff: $00
    dec b                                         ; $4500: $05
    nop                                           ; $4501: $00
    push hl                                       ; $4502: $e5
    nop                                           ; $4503: $00
    ld e, l                                       ; $4504: $5d
    nop                                           ; $4505: $00
    ld c, b                                       ; $4506: $48
    nop                                           ; $4507: $00
    ld [hl+], a                                   ; $4508: $22
    nop                                           ; $4509: $00
    dec e                                         ; $450a: $1d
    nop                                           ; $450b: $00
    ld bc, $0015                                  ; $450c: $01 $15 $00
    adc e                                         ; $450f: $8b
    ld bc, $0200                                  ; $4510: $01 $00 $02
    nop                                           ; $4513: $00
    ld a, [bc]                                    ; $4514: $0a
    nop                                           ; $4515: $00
    ld [bc], a                                    ; $4516: $02
    nop                                           ; $4517: $00
    inc c                                         ; $4518: $0c
    nop                                           ; $4519: $00
    inc c                                         ; $451a: $0c
    dec d                                         ; $451b: $15
    nop                                           ; $451c: $00
    rst $38                                       ; $451d: $ff
    dec c                                         ; $451e: $0d
    inc b                                         ; $451f: $04
    ld hl, sp+$07                                 ; $4520: $f8 $07
    ld a, [c]                                     ; $4522: $f2
    ld bc, $faeb                                  ; $4523: $01 $eb $fa
    db $eb                                        ; $4526: $eb
    rst $38                                       ; $4527: $ff
    ei                                            ; $4528: $fb
    ld a, [$fffb]                                 ; $4529: $fa $fb $ff
    rrc a                                         ; $452c: $cb $0f
    nop                                           ; $452e: $00
    dec de                                        ; $452f: $1b
    nop                                           ; $4530: $00
    dec sp                                        ; $4531: $3b
    nop                                           ; $4532: $00
    inc [hl]                                      ; $4533: $34
    nop                                           ; $4534: $00
    ld b, a                                       ; $4535: $47
    nop                                           ; $4536: $00
    ld d, d                                       ; $4537: $52
    nop                                           ; $4538: $00
    ld c, a                                       ; $4539: $4f
    nop                                           ; $453a: $00
    dec l                                         ; $453b: $2d
    nop                                           ; $453c: $00
    ld d, a                                       ; $453d: $57
    nop                                           ; $453e: $00
    ld b, b                                       ; $453f: $40
    nop                                           ; $4540: $00
    ld d, l                                       ; $4541: $55
    nop                                           ; $4542: $00
    ld h, d                                       ; $4543: $62
    nop                                           ; $4544: $00
    ld h, l                                       ; $4545: $65
    nop                                           ; $4546: $00
    ld [c], a                                     ; $4547: $e2
    nop                                           ; $4548: $00
    jp nz, $a200                                  ; $4549: $c2 $00 $a2

    nop                                           ; $454c: $00
    stop                                          ; $454d: $10 $00
    jr jr_0de_4551                                ; $454f: $18 $00

jr_0de_4551:
    inc c                                         ; $4551: $0c
    nop                                           ; $4552: $00
    inc e                                         ; $4553: $1c
    nop                                           ; $4554: $00
    ld b, $00                                     ; $4555: $06 $00
    ld a, [bc]                                    ; $4557: $0a
    nop                                           ; $4558: $00
    ld [de], a                                    ; $4559: $12
    nop                                           ; $455a: $00
    inc d                                         ; $455b: $14
    nop                                           ; $455c: $00
    ld c, $00                                     ; $455d: $0e $00
    ld b, $00                                     ; $455f: $06 $00
    ld [bc], a                                    ; $4561: $02
    nop                                           ; $4562: $00
    ld b, $00                                     ; $4563: $06 $00
    ld b, $00                                     ; $4565: $06 $00
    rlca                                          ; $4567: $07
    nop                                           ; $4568: $00
    inc bc                                        ; $4569: $03
    nop                                           ; $456a: $00
    dec b                                         ; $456b: $05
    nop                                           ; $456c: $00
    jp $6500                                      ; $456d: $c3 $00 $65


    nop                                           ; $4570: $00
    inc a                                         ; $4571: $3c
    nop                                           ; $4572: $00
    ld b, b                                       ; $4573: $40
    nop                                           ; $4574: $00
    ld a, [hl+]                                   ; $4575: $2a
    nop                                           ; $4576: $00
    dec e                                         ; $4577: $1d
    dec d                                         ; $4578: $15
    nop                                           ; $4579: $00
    adc l                                         ; $457a: $8d
    rlca                                          ; $457b: $07
    nop                                           ; $457c: $00
    ld a, [bc]                                    ; $457d: $0a
    nop                                           ; $457e: $00
    inc d                                         ; $457f: $14
    nop                                           ; $4580: $00
    ld [bc], a                                    ; $4581: $02
    nop                                           ; $4582: $00
    inc b                                         ; $4583: $04
    nop                                           ; $4584: $00
    jr jr_0de_4587                                ; $4585: $18 $00

jr_0de_4587:
    db $10                                        ; $4587: $10
    inc de                                        ; $4588: $13
    nop                                           ; $4589: $00
    rst $38                                       ; $458a: $ff
    dec c                                         ; $458b: $0d
    inc b                                         ; $458c: $04
    ld hl, sp+$07                                 ; $458d: $f8 $07
    ld a, [c]                                     ; $458f: $f2
    ld bc, $faeb                                  ; $4590: $01 $eb $fa
    db $eb                                        ; $4593: $eb
    rst $38                                       ; $4594: $ff
    ei                                            ; $4595: $fb
    ld a, [$fffb]                                 ; $4596: $fa $fb $ff
    call Call_000_000f                            ; $4599: $cd $0f $00
    dec de                                        ; $459c: $1b
    nop                                           ; $459d: $00
    dec sp                                        ; $459e: $3b
    nop                                           ; $459f: $00
    inc [hl]                                      ; $45a0: $34
    nop                                           ; $45a1: $00
    ld b, a                                       ; $45a2: $47
    nop                                           ; $45a3: $00
    ld d, d                                       ; $45a4: $52
    nop                                           ; $45a5: $00
    cpl                                           ; $45a6: $2f
    nop                                           ; $45a7: $00
    ld c, l                                       ; $45a8: $4d
    nop                                           ; $45a9: $00
    ld d, a                                       ; $45aa: $57
    nop                                           ; $45ab: $00
    ld b, b                                       ; $45ac: $40
    nop                                           ; $45ad: $00
    ld d, l                                       ; $45ae: $55
    nop                                           ; $45af: $00
    ld h, d                                       ; $45b0: $62
    nop                                           ; $45b1: $00
    push hl                                       ; $45b2: $e5
    nop                                           ; $45b3: $00
    jp nz, $e200                                  ; $45b4: $c2 $00 $e2

    nop                                           ; $45b7: $00
    add e                                         ; $45b8: $83
    nop                                           ; $45b9: $00
    stop                                          ; $45ba: $10 $00
    jr jr_0de_45be                                ; $45bc: $18 $00

jr_0de_45be:
    inc c                                         ; $45be: $0c
    nop                                           ; $45bf: $00
    inc e                                         ; $45c0: $1c
    nop                                           ; $45c1: $00
    ld b, $00                                     ; $45c2: $06 $00
    ld a, [bc]                                    ; $45c4: $0a
    nop                                           ; $45c5: $00
    inc d                                         ; $45c6: $14
    nop                                           ; $45c7: $00
    ld d, $00                                     ; $45c8: $16 $00
    ld c, $00                                     ; $45ca: $0e $00
    ld b, $00                                     ; $45cc: $06 $00
    ld [bc], a                                    ; $45ce: $02
    nop                                           ; $45cf: $00
    ld b, $00                                     ; $45d0: $06 $00
    ld b, $00                                     ; $45d2: $06 $00
    ld [bc], a                                    ; $45d4: $02
    nop                                           ; $45d5: $00
    rlca                                          ; $45d6: $07
    nop                                           ; $45d7: $00
    rrca                                          ; $45d8: $0f
    nop                                           ; $45d9: $00
    push bc                                       ; $45da: $c5
    nop                                           ; $45db: $00
    db $e4                                        ; $45dc: $e4
    nop                                           ; $45dd: $00
    ld e, b                                       ; $45de: $58
    nop                                           ; $45df: $00
    jr nz, jr_0de_45e2                            ; $45e0: $20 $00

jr_0de_45e2:
    add hl, hl                                    ; $45e2: $29
    nop                                           ; $45e3: $00
    ld [de], a                                    ; $45e4: $12
    nop                                           ; $45e5: $00
    inc c                                         ; $45e6: $0c
    inc de                                        ; $45e7: $13
    nop                                           ; $45e8: $00
    adc e                                         ; $45e9: $8b
    dec c                                         ; $45ea: $0d
    nop                                           ; $45eb: $00
    ld [de], a                                    ; $45ec: $12
    nop                                           ; $45ed: $00
    inc d                                         ; $45ee: $14
    nop                                           ; $45ef: $00
    ld [bc], a                                    ; $45f0: $02
    nop                                           ; $45f1: $00
    inc b                                         ; $45f2: $04
    nop                                           ; $45f3: $00
    jr jr_0de_460b                                ; $45f4: $18 $15

    nop                                           ; $45f6: $00
    rst $38                                       ; $45f7: $ff
    dec c                                         ; $45f8: $0d
    inc b                                         ; $45f9: $04
    ld hl, sp+$07                                 ; $45fa: $f8 $07
    ld a, [c]                                     ; $45fc: $f2
    ld bc, $faec                                  ; $45fd: $01 $ec $fa

Jump_0de_4600:
    db $ec                                        ; $4600: $ec
    rst $38                                       ; $4601: $ff
    db $fc                                        ; $4602: $fc
    ld a, [$fffc]                                 ; $4603: $fa $fc $ff
    rrc a                                         ; $4606: $cb $0f
    nop                                           ; $4608: $00
    dec de                                        ; $4609: $1b
    nop                                           ; $460a: $00

jr_0de_460b:
    dec sp                                        ; $460b: $3b
    nop                                           ; $460c: $00
    ld d, h                                       ; $460d: $54
    nop                                           ; $460e: $00
    ld b, a                                       ; $460f: $47
    nop                                           ; $4610: $00
    ld d, d                                       ; $4611: $52
    nop                                           ; $4612: $00
    cpl                                           ; $4613: $2f
    nop                                           ; $4614: $00
    ld c, l                                       ; $4615: $4d
    nop                                           ; $4616: $00
    ld d, a                                       ; $4617: $57
    nop                                           ; $4618: $00
    jr nz, jr_0de_461b                            ; $4619: $20 $00

jr_0de_461b:
    ld d, l                                       ; $461b: $55
    nop                                           ; $461c: $00
    ld h, d                                       ; $461d: $62
    nop                                           ; $461e: $00
    ld h, l                                       ; $461f: $65
    nop                                           ; $4620: $00
    jp nz, $e200                                  ; $4621: $c2 $00 $e2

    nop                                           ; $4624: $00
    and e                                         ; $4625: $a3
    nop                                           ; $4626: $00
    stop                                          ; $4627: $10 $00
    jr jr_0de_462b                                ; $4629: $18 $00

jr_0de_462b:
    inc c                                         ; $462b: $0c
    nop                                           ; $462c: $00
    ld e, $00                                     ; $462d: $1e $00
    ld b, $00                                     ; $462f: $06 $00
    ld a, [bc]                                    ; $4631: $0a
    nop                                           ; $4632: $00
    inc d                                         ; $4633: $14
    nop                                           ; $4634: $00
    ld d, $00                                     ; $4635: $16 $00
    ld c, $00                                     ; $4637: $0e $00
    inc b                                         ; $4639: $04
    nop                                           ; $463a: $00
    ld a, [bc]                                    ; $463b: $0a
    nop                                           ; $463c: $00
    ld b, $00                                     ; $463d: $06 $00
    ld b, $00                                     ; $463f: $06 $00
    inc bc                                        ; $4641: $03
    nop                                           ; $4642: $00
    inc bc                                        ; $4643: $03
    nop                                           ; $4644: $00
    rlca                                          ; $4645: $07
    nop                                           ; $4646: $00
    ld b, l                                       ; $4647: $45
    nop                                           ; $4648: $00
    push bc                                       ; $4649: $c5
    nop                                           ; $464a: $00
    ret z                                         ; $464b: $c8

    nop                                           ; $464c: $00
    ld h, d                                       ; $464d: $62
    nop                                           ; $464e: $00
    dec e                                         ; $464f: $1d
    nop                                           ; $4650: $00
    inc e                                         ; $4651: $1c
    dec d                                         ; $4652: $15
    nop                                           ; $4653: $00
    adc c                                         ; $4654: $89
    rlca                                          ; $4655: $07
    nop                                           ; $4656: $00
    ld [bc], a                                    ; $4657: $02
    nop                                           ; $4658: $00
    ld [de], a                                    ; $4659: $12
    nop                                           ; $465a: $00
    inc b                                         ; $465b: $04
    nop                                           ; $465c: $00
    jr jr_0de_4676                                ; $465d: $18 $17

    nop                                           ; $465f: $00
    rst $38                                       ; $4660: $ff
    dec c                                         ; $4661: $0d
    inc b                                         ; $4662: $04
    ld hl, sp+$07                                 ; $4663: $f8 $07
    ld a, [c]                                     ; $4665: $f2
    ld bc, $faeb                                  ; $4666: $01 $eb $fa
    db $eb                                        ; $4669: $eb
    rst $38                                       ; $466a: $ff
    ei                                            ; $466b: $fb
    ld a, [$fffb]                                 ; $466c: $fa $fb $ff
    call Call_000_000f                            ; $466f: $cd $0f $00
    dec de                                        ; $4672: $1b
    nop                                           ; $4673: $00
    dec sp                                        ; $4674: $3b
    nop                                           ; $4675: $00

jr_0de_4676:
    inc [hl]                                      ; $4676: $34
    nop                                           ; $4677: $00
    ld b, a                                       ; $4678: $47
    nop                                           ; $4679: $00
    ld d, d                                       ; $467a: $52
    nop                                           ; $467b: $00
    ld c, a                                       ; $467c: $4f
    nop                                           ; $467d: $00
    dec l                                         ; $467e: $2d
    nop                                           ; $467f: $00
    ld d, a                                       ; $4680: $57
    nop                                           ; $4681: $00
    ld b, b                                       ; $4682: $40
    nop                                           ; $4683: $00
    ld b, l                                       ; $4684: $45
    nop                                           ; $4685: $00
    ld h, d                                       ; $4686: $62
    nop                                           ; $4687: $00
    ld h, l                                       ; $4688: $65
    nop                                           ; $4689: $00
    ld [c], a                                     ; $468a: $e2
    nop                                           ; $468b: $00
    jp nz, $a200                                  ; $468c: $c2 $00 $a2

    nop                                           ; $468f: $00
    stop                                          ; $4690: $10 $00
    jr jr_0de_4694                                ; $4692: $18 $00

jr_0de_4694:
    inc c                                         ; $4694: $0c
    nop                                           ; $4695: $00
    inc e                                         ; $4696: $1c
    nop                                           ; $4697: $00
    ld b, $00                                     ; $4698: $06 $00
    ld a, [bc]                                    ; $469a: $0a
    nop                                           ; $469b: $00
    ld [de], a                                    ; $469c: $12
    nop                                           ; $469d: $00
    inc d                                         ; $469e: $14
    nop                                           ; $469f: $00
    ld c, $00                                     ; $46a0: $0e $00
    ld b, $00                                     ; $46a2: $06 $00
    ld a, [bc]                                    ; $46a4: $0a
    nop                                           ; $46a5: $00
    ld b, $00                                     ; $46a6: $06 $00
    ld b, $00                                     ; $46a8: $06 $00
    rlca                                          ; $46aa: $07
    nop                                           ; $46ab: $00
    inc bc                                        ; $46ac: $03
    nop                                           ; $46ad: $00
    dec b                                         ; $46ae: $05
    nop                                           ; $46af: $00
    add $00                                       ; $46b0: $c6 $00
    ld h, l                                       ; $46b2: $65
    nop                                           ; $46b3: $00
    add hl, sp                                    ; $46b4: $39
    nop                                           ; $46b5: $00
    ld b, b                                       ; $46b6: $40
    nop                                           ; $46b7: $00
    ld [hl+], a                                   ; $46b8: $22
    nop                                           ; $46b9: $00
    dec e                                         ; $46ba: $1d
    nop                                           ; $46bb: $00
    ld [$0013], sp                                ; $46bc: $08 $13 $00
    adc e                                         ; $46bf: $8b
    rlca                                          ; $46c0: $07
    nop                                           ; $46c1: $00
    ld a, [bc]                                    ; $46c2: $0a
    nop                                           ; $46c3: $00
    inc d                                         ; $46c4: $14
    nop                                           ; $46c5: $00
    ld [bc], a                                    ; $46c6: $02
    nop                                           ; $46c7: $00
    inc d                                         ; $46c8: $14
    nop                                           ; $46c9: $00
    jr jr_0de_46e1                                ; $46ca: $18 $15

    nop                                           ; $46cc: $00
    rst $38                                       ; $46cd: $ff
    dec c                                         ; $46ce: $0d
    inc b                                         ; $46cf: $04
    ld hl, sp+$07                                 ; $46d0: $f8 $07
    ld a, [c]                                     ; $46d2: $f2
    ld bc, $fbeb                                  ; $46d3: $01 $eb $fb
    db $ec                                        ; $46d6: $ec
    db $fd                                        ; $46d7: $fd
    ei                                            ; $46d8: $fb
    ld a, [$fcfb]                                 ; $46d9: $fa $fb $fc
    xor l                                         ; $46dc: $ad
    rra                                           ; $46dd: $1f
    nop                                           ; $46de: $00
    dec sp                                        ; $46df: $3b
    nop                                           ; $46e0: $00

jr_0de_46e1:
    ld a, h                                       ; $46e1: $7c
    nop                                           ; $46e2: $00
    ld l, d                                       ; $46e3: $6a
    nop                                           ; $46e4: $00
    ld e, e                                       ; $46e5: $5b
    nop                                           ; $46e6: $00
    ld b, l                                       ; $46e7: $45
    nop                                           ; $46e8: $00
    ld l, a                                       ; $46e9: $6f
    nop                                           ; $46ea: $00
    and a                                         ; $46eb: $a7
    nop                                           ; $46ec: $00
    rst $30                                       ; $46ed: $f7
    nop                                           ; $46ee: $00
    jp nz, $9600                                  ; $46ef: $c2 $00 $96

    nop                                           ; $46f2: $00
    db $d3                                        ; $46f3: $d3
    nop                                           ; $46f4: $00
    ld d, l                                       ; $46f5: $55
    nop                                           ; $46f6: $00
    ld h, e                                       ; $46f7: $63
    nop                                           ; $46f8: $00
    ld [hl], e                                    ; $46f9: $73
    nop                                           ; $46fa: $00
    and e                                         ; $46fb: $a3
    nop                                           ; $46fc: $00
    ld [bc], a                                    ; $46fd: $02
    nop                                           ; $46fe: $00
    inc bc                                        ; $46ff: $03
    nop                                           ; $4700: $00
    ld [bc], a                                    ; $4701: $02
    nop                                           ; $4702: $00
    ld [bc], a                                    ; $4703: $02
    nop                                           ; $4704: $00
    ld [bc], a                                    ; $4705: $02
    nop                                           ; $4706: $00
    inc bc                                        ; $4707: $03
    nop                                           ; $4708: $00
    ld [bc], a                                    ; $4709: $02
    ld de, $8f00                                  ; $470a: $11 $00 $8f
    ld l, h                                       ; $470d: $6c
    nop                                           ; $470e: $00
    ld h, b                                       ; $470f: $60
    nop                                           ; $4710: $00
    ld b, e                                       ; $4711: $43
    nop                                           ; $4712: $00
    ld hl, $4200                                  ; $4713: $21 $00 $42
    nop                                           ; $4716: $00
    call nz, Call_0de_6300                        ; $4717: $c4 $00 $63
    nop                                           ; $471a: $00
    ccf                                           ; $471b: $3f
    dec d                                         ; $471c: $15
    nop                                           ; $471d: $00
    adc e                                         ; $471e: $8b
    ld [bc], a                                    ; $471f: $02
    nop                                           ; $4720: $00
    ld [bc], a                                    ; $4721: $02
    nop                                           ; $4722: $00
    ld [bc], a                                    ; $4723: $02
    nop                                           ; $4724: $00
    ld [bc], a                                    ; $4725: $02
    nop                                           ; $4726: $00
    ld [bc], a                                    ; $4727: $02
    nop                                           ; $4728: $00
    inc bc                                        ; $4729: $03
    inc de                                        ; $472a: $13
    nop                                           ; $472b: $00
    rst $38                                       ; $472c: $ff
    dec c                                         ; $472d: $0d
    inc b                                         ; $472e: $04
    ld hl, sp+$07                                 ; $472f: $f8 $07
    ld a, [c]                                     ; $4731: $f2
    ld bc, $fbeb                                  ; $4732: $01 $eb $fb
    db $ec                                        ; $4735: $ec
    db $fd                                        ; $4736: $fd
    ei                                            ; $4737: $fb
    ld a, [$fdfb]                                 ; $4738: $fa $fb $fd
    xor l                                         ; $473b: $ad
    rra                                           ; $473c: $1f
    nop                                           ; $473d: $00
    dec sp                                        ; $473e: $3b
    nop                                           ; $473f: $00
    ld a, h                                       ; $4740: $7c
    nop                                           ; $4741: $00
    ld l, d                                       ; $4742: $6a
    nop                                           ; $4743: $00
    ld e, e                                       ; $4744: $5b
    nop                                           ; $4745: $00
    ld b, l                                       ; $4746: $45
    nop                                           ; $4747: $00
    ld l, a                                       ; $4748: $6f
    nop                                           ; $4749: $00
    and a                                         ; $474a: $a7
    nop                                           ; $474b: $00
    rst $30                                       ; $474c: $f7
    nop                                           ; $474d: $00
    jp nz, $8600                                  ; $474e: $c2 $00 $86

    nop                                           ; $4751: $00
    db $d3                                        ; $4752: $d3
    nop                                           ; $4753: $00
    ld d, l                                       ; $4754: $55
    nop                                           ; $4755: $00
    ld d, e                                       ; $4756: $53
    nop                                           ; $4757: $00
    ld a, e                                       ; $4758: $7b
    nop                                           ; $4759: $00
    ld e, c                                       ; $475a: $59
    nop                                           ; $475b: $00
    ld [bc], a                                    ; $475c: $02
    nop                                           ; $475d: $00
    inc bc                                        ; $475e: $03
    nop                                           ; $475f: $00
    ld [bc], a                                    ; $4760: $02
    nop                                           ; $4761: $00
    ld [bc], a                                    ; $4762: $02
    nop                                           ; $4763: $00
    ld [bc], a                                    ; $4764: $02
    nop                                           ; $4765: $00
    inc bc                                        ; $4766: $03
    nop                                           ; $4767: $00
    ld [bc], a                                    ; $4768: $02
    ld de, $8f00                                  ; $4769: $11 $00 $8f
    ld e, [hl]                                    ; $476c: $5e
    nop                                           ; $476d: $00
    ld b, b                                       ; $476e: $40
    nop                                           ; $476f: $00
    ld b, h                                       ; $4770: $44
    nop                                           ; $4771: $00
    ld b, h                                       ; $4772: $44
    nop                                           ; $4773: $00
    ret z                                         ; $4774: $c8

    nop                                           ; $4775: $00
    ret nz                                        ; $4776: $c0

    nop                                           ; $4777: $00
    adc c                                         ; $4778: $89
    nop                                           ; $4779: $00
    ld a, [hl]                                    ; $477a: $7e
    dec d                                         ; $477b: $15
    nop                                           ; $477c: $00
    add a                                         ; $477d: $87
    ld b, $00                                     ; $477e: $06 $00
    ld [bc], a                                    ; $4780: $02
    nop                                           ; $4781: $00
    rlca                                          ; $4782: $07
    nop                                           ; $4783: $00
    ld b, $17                                     ; $4784: $06 $17
    nop                                           ; $4786: $00
    rst $38                                       ; $4787: $ff
    dec c                                         ; $4788: $0d
    inc b                                         ; $4789: $04
    ld hl, sp+$07                                 ; $478a: $f8 $07
    ld a, [c]                                     ; $478c: $f2
    ld bc, $fbec                                  ; $478d: $01 $ec $fb
    db $ed                                        ; $4790: $ed
    db $fd                                        ; $4791: $fd
    db $fc                                        ; $4792: $fc
    ld a, [$fcfc]                                 ; $4793: $fa $fc $fc
    xor l                                         ; $4796: $ad
    rra                                           ; $4797: $1f
    nop                                           ; $4798: $00
    dec sp                                        ; $4799: $3b
    nop                                           ; $479a: $00
    ld a, h                                       ; $479b: $7c
    nop                                           ; $479c: $00
    ld l, d                                       ; $479d: $6a
    nop                                           ; $479e: $00
    ld d, e                                       ; $479f: $53
    nop                                           ; $47a0: $00
    ld b, l                                       ; $47a1: $45
    nop                                           ; $47a2: $00
    xor a                                         ; $47a3: $af
    nop                                           ; $47a4: $00
    rst $20                                       ; $47a5: $e7
    nop                                           ; $47a6: $00
    rst $20                                       ; $47a7: $e7
    nop                                           ; $47a8: $00
    add d                                         ; $47a9: $82
    nop                                           ; $47aa: $00
    sub l                                         ; $47ab: $95
    nop                                           ; $47ac: $00
    ld d, e                                       ; $47ad: $53
    nop                                           ; $47ae: $00
    ld d, l                                       ; $47af: $55
    nop                                           ; $47b0: $00
    ld h, e                                       ; $47b1: $63
    nop                                           ; $47b2: $00
    ld [hl], e                                    ; $47b3: $73
    nop                                           ; $47b4: $00
    ld h, c                                       ; $47b5: $61
    nop                                           ; $47b6: $00
    ld [bc], a                                    ; $47b7: $02
    nop                                           ; $47b8: $00
    inc bc                                        ; $47b9: $03
    nop                                           ; $47ba: $00
    ld [bc], a                                    ; $47bb: $02
    nop                                           ; $47bc: $00
    ld [bc], a                                    ; $47bd: $02
    nop                                           ; $47be: $00
    ld [bc], a                                    ; $47bf: $02
    nop                                           ; $47c0: $00
    inc bc                                        ; $47c1: $03
    nop                                           ; $47c2: $00
    ld [bc], a                                    ; $47c3: $02
    ld de, $8d00                                  ; $47c4: $11 $00 $8d
    ld a, h                                       ; $47c7: $7c
    nop                                           ; $47c8: $00
    ld h, b                                       ; $47c9: $60
    nop                                           ; $47ca: $00
    ld b, b                                       ; $47cb: $40
    nop                                           ; $47cc: $00
    add b                                         ; $47cd: $80
    nop                                           ; $47ce: $00
    call nz, $c300                                ; $47cf: $c4 $00 $c3
    nop                                           ; $47d2: $00
    ld a, h                                       ; $47d3: $7c
    rla                                           ; $47d4: $17
    nop                                           ; $47d5: $00
    add a                                         ; $47d6: $87
    ld [bc], a                                    ; $47d7: $02
    nop                                           ; $47d8: $00
    ld [bc], a                                    ; $47d9: $02
    nop                                           ; $47da: $00
    inc bc                                        ; $47db: $03
    nop                                           ; $47dc: $00
    inc bc                                        ; $47dd: $03
    rla                                           ; $47de: $17
    nop                                           ; $47df: $00
    rst $38                                       ; $47e0: $ff
    dec c                                         ; $47e1: $0d
    inc b                                         ; $47e2: $04
    ld hl, sp+$07                                 ; $47e3: $f8 $07
    ld a, [c]                                     ; $47e5: $f2
    ld bc, $fbeb                                  ; $47e6: $01 $eb $fb
    db $ec                                        ; $47e9: $ec
    db $fd                                        ; $47ea: $fd
    ei                                            ; $47eb: $fb
    ld a, [$fcfb]                                 ; $47ec: $fa $fb $fc
    xor l                                         ; $47ef: $ad
    rra                                           ; $47f0: $1f
    nop                                           ; $47f1: $00
    dec sp                                        ; $47f2: $3b
    nop                                           ; $47f3: $00
    ld a, l                                       ; $47f4: $7d
    nop                                           ; $47f5: $00
    ld l, d                                       ; $47f6: $6a
    nop                                           ; $47f7: $00
    ld e, e                                       ; $47f8: $5b
    nop                                           ; $47f9: $00
    ld b, l                                       ; $47fa: $45
    nop                                           ; $47fb: $00
    ld c, a                                       ; $47fc: $4f
    nop                                           ; $47fd: $00
    ld h, a                                       ; $47fe: $67
    nop                                           ; $47ff: $00
    rst $30                                       ; $4800: $f7
    nop                                           ; $4801: $00
    jp nz, Jump_0de_5600                          ; $4802: $c2 $00 $56

    nop                                           ; $4805: $00
    db $d3                                        ; $4806: $d3
    nop                                           ; $4807: $00
    and l                                         ; $4808: $a5
    nop                                           ; $4809: $00
    ld h, e                                       ; $480a: $63
    nop                                           ; $480b: $00
    or e                                          ; $480c: $b3
    nop                                           ; $480d: $00
    db $e3                                        ; $480e: $e3
    nop                                           ; $480f: $00
    ld [bc], a                                    ; $4810: $02
    nop                                           ; $4811: $00
    inc bc                                        ; $4812: $03
    nop                                           ; $4813: $00
    ld [bc], a                                    ; $4814: $02
    nop                                           ; $4815: $00
    ld [bc], a                                    ; $4816: $02
    nop                                           ; $4817: $00
    ld [bc], a                                    ; $4818: $02
    nop                                           ; $4819: $00
    inc bc                                        ; $481a: $03
    nop                                           ; $481b: $00
    ld [bc], a                                    ; $481c: $02
    ld de, $8f00                                  ; $481d: $11 $00 $8f
    call z, Call_0de_6000                         ; $4820: $cc $00 $60
    nop                                           ; $4823: $00
    inc h                                         ; $4824: $24
    nop                                           ; $4825: $00
    ld b, e                                       ; $4826: $43
    nop                                           ; $4827: $00
    ld b, b                                       ; $4828: $40
    nop                                           ; $4829: $00
    jp Jump_0de_6700                              ; $482a: $c3 $00 $67


    nop                                           ; $482d: $00
    jr c, @+$17                                   ; $482e: $38 $15

    nop                                           ; $4830: $00
    adc c                                         ; $4831: $89
    inc bc                                        ; $4832: $03
    nop                                           ; $4833: $00
    ld bc, $0100                                  ; $4834: $01 $00 $01
    nop                                           ; $4837: $00
    ld [bc], a                                    ; $4838: $02
    nop                                           ; $4839: $00
    inc bc                                        ; $483a: $03
    dec d                                         ; $483b: $15
    nop                                           ; $483c: $00
    rst $38                                       ; $483d: $ff
    dec c                                         ; $483e: $0d
    inc b                                         ; $483f: $04
    ld hl, sp+$07                                 ; $4840: $f8 $07
    ld a, [c]                                     ; $4842: $f2
    ld bc, $fbeb                                  ; $4843: $01 $eb $fb
    db $ec                                        ; $4846: $ec
    db $fd                                        ; $4847: $fd
    ei                                            ; $4848: $fb
    ld a, [$fefb]                                 ; $4849: $fa $fb $fe
    xor l                                         ; $484c: $ad
    rra                                           ; $484d: $1f
    nop                                           ; $484e: $00
    dec sp                                        ; $484f: $3b
    nop                                           ; $4850: $00
    ld a, h                                       ; $4851: $7c
    nop                                           ; $4852: $00
    ld l, d                                       ; $4853: $6a
    nop                                           ; $4854: $00
    ld e, e                                       ; $4855: $5b
    nop                                           ; $4856: $00
    ld b, l                                       ; $4857: $45
    nop                                           ; $4858: $00
    ld l, a                                       ; $4859: $6f
    nop                                           ; $485a: $00
    and a                                         ; $485b: $a7
    nop                                           ; $485c: $00
    rst $30                                       ; $485d: $f7
    nop                                           ; $485e: $00
    jp nz, $9600                                  ; $485f: $c2 $00 $96

    nop                                           ; $4862: $00
    db $d3                                        ; $4863: $d3
    nop                                           ; $4864: $00
    ld h, l                                       ; $4865: $65
    nop                                           ; $4866: $00
    ld h, e                                       ; $4867: $63
    nop                                           ; $4868: $00
    db $e3                                        ; $4869: $e3
    nop                                           ; $486a: $00
    db $e3                                        ; $486b: $e3
    nop                                           ; $486c: $00
    ld [bc], a                                    ; $486d: $02
    nop                                           ; $486e: $00
    inc bc                                        ; $486f: $03
    nop                                           ; $4870: $00
    ld [bc], a                                    ; $4871: $02
    nop                                           ; $4872: $00
    ld [bc], a                                    ; $4873: $02
    nop                                           ; $4874: $00
    ld [bc], a                                    ; $4875: $02
    nop                                           ; $4876: $00
    inc bc                                        ; $4877: $03
    nop                                           ; $4878: $00
    ld [bc], a                                    ; $4879: $02
    ld de, $8f00                                  ; $487a: $11 $00 $8f
    adc h                                         ; $487d: $8c
    nop                                           ; $487e: $00
    ret nz                                        ; $487f: $c0

    nop                                           ; $4880: $00
    ld c, c                                       ; $4881: $49
    nop                                           ; $4882: $00
    dec h                                         ; $4883: $25
    nop                                           ; $4884: $00
    ld b, d                                       ; $4885: $42
    nop                                           ; $4886: $00
    ret nz                                        ; $4887: $c0

    nop                                           ; $4888: $00
    halt                                          ; $4889: $76
    nop                                           ; $488a: $00
    add hl, sp                                    ; $488b: $39
    dec d                                         ; $488c: $15
    nop                                           ; $488d: $00
    adc c                                         ; $488e: $89
    ld [$0c00], sp                                ; $488f: $08 $00 $0c
    nop                                           ; $4892: $00
    inc b                                         ; $4893: $04
    nop                                           ; $4894: $00
    rrca                                          ; $4895: $0f
    nop                                           ; $4896: $00
    ld c, $15                                     ; $4897: $0e $15
    nop                                           ; $4899: $00
    rst $38                                       ; $489a: $ff
    dec c                                         ; $489b: $0d
    inc b                                         ; $489c: $04
    ld hl, sp+$07                                 ; $489d: $f8 $07
    ld a, [c]                                     ; $489f: $f2
    ld bc, $fbec                                  ; $48a0: $01 $ec $fb
    db $ed                                        ; $48a3: $ed
    db $fd                                        ; $48a4: $fd
    db $fc                                        ; $48a5: $fc
    ld a, [$fdfc]                                 ; $48a6: $fa $fc $fd
    xor l                                         ; $48a9: $ad
    rra                                           ; $48aa: $1f
    nop                                           ; $48ab: $00
    dec sp                                        ; $48ac: $3b
    nop                                           ; $48ad: $00
    ld a, h                                       ; $48ae: $7c
    nop                                           ; $48af: $00
    ld l, d                                       ; $48b0: $6a
    nop                                           ; $48b1: $00
    ld d, e                                       ; $48b2: $53
    nop                                           ; $48b3: $00
    ld b, l                                       ; $48b4: $45
    nop                                           ; $48b5: $00
    xor a                                         ; $48b6: $af
    nop                                           ; $48b7: $00
    rst $20                                       ; $48b8: $e7
    nop                                           ; $48b9: $00
    rst $20                                       ; $48ba: $e7
    nop                                           ; $48bb: $00
    add d                                         ; $48bc: $82
    nop                                           ; $48bd: $00
    sub l                                         ; $48be: $95
    nop                                           ; $48bf: $00
    ld d, e                                       ; $48c0: $53
    nop                                           ; $48c1: $00
    ld h, l                                       ; $48c2: $65
    nop                                           ; $48c3: $00
    ld h, e                                       ; $48c4: $63
    nop                                           ; $48c5: $00
    di                                            ; $48c6: $f3
    nop                                           ; $48c7: $00
    db $e3                                        ; $48c8: $e3
    nop                                           ; $48c9: $00
    ld [bc], a                                    ; $48ca: $02
    nop                                           ; $48cb: $00
    inc bc                                        ; $48cc: $03
    nop                                           ; $48cd: $00
    ld [bc], a                                    ; $48ce: $02
    nop                                           ; $48cf: $00
    ld [bc], a                                    ; $48d0: $02
    nop                                           ; $48d1: $00
    ld [bc], a                                    ; $48d2: $02
    nop                                           ; $48d3: $00
    inc bc                                        ; $48d4: $03
    nop                                           ; $48d5: $00
    ld [bc], a                                    ; $48d6: $02
    ld de, $8d00                                  ; $48d7: $11 $00 $8d
    call z, $c000                                 ; $48da: $cc $00 $c0
    nop                                           ; $48dd: $00
    ld b, a                                       ; $48de: $47
    nop                                           ; $48df: $00
    ld b, d                                       ; $48e0: $42
    nop                                           ; $48e1: $00
    jp nz, $6500                                  ; $48e2: $c2 $00 $65

    nop                                           ; $48e5: $00
    dec sp                                        ; $48e6: $3b
    rla                                           ; $48e7: $17
    nop                                           ; $48e8: $00
    adc c                                         ; $48e9: $89
    inc b                                         ; $48ea: $04
    nop                                           ; $48eb: $00
    inc b                                         ; $48ec: $04
    nop                                           ; $48ed: $00
    inc b                                         ; $48ee: $04
    nop                                           ; $48ef: $00
    ld b, $00                                     ; $48f0: $06 $00
    rlca                                          ; $48f2: $07
    dec d                                         ; $48f3: $15
    nop                                           ; $48f4: $00
    rst $38                                       ; $48f5: $ff
    dec c                                         ; $48f6: $0d
    inc b                                         ; $48f7: $04
    ld hl, sp+$07                                 ; $48f8: $f8 $07
    ld a, [c]                                     ; $48fa: $f2
    ld bc, $fbeb                                  ; $48fb: $01 $eb $fb
    db $ec                                        ; $48fe: $ec
    db $fd                                        ; $48ff: $fd
    ei                                            ; $4900: $fb

jr_0de_4901:
    ld a, [$fcfb]                                 ; $4901: $fa $fb $fc
    xor l                                         ; $4904: $ad
    rra                                           ; $4905: $1f
    nop                                           ; $4906: $00
    dec sp                                        ; $4907: $3b
    nop                                           ; $4908: $00
    ld a, l                                       ; $4909: $7d
    nop                                           ; $490a: $00
    ld l, d                                       ; $490b: $6a
    nop                                           ; $490c: $00
    ld e, e                                       ; $490d: $5b
    nop                                           ; $490e: $00
    ld b, l                                       ; $490f: $45

jr_0de_4910:
    nop                                           ; $4910: $00
    ld c, a                                       ; $4911: $4f
    nop                                           ; $4912: $00
    ld h, a                                       ; $4913: $67
    nop                                           ; $4914: $00
    rst $30                                       ; $4915: $f7
    nop                                           ; $4916: $00
    jp nz, Jump_0de_4600                          ; $4917: $c2 $00 $46

    nop                                           ; $491a: $00
    db $d3                                        ; $491b: $d3
    nop                                           ; $491c: $00
    sub l                                         ; $491d: $95
    nop                                           ; $491e: $00
    ld d, e                                       ; $491f: $53
    nop                                           ; $4920: $00

jr_0de_4921:
    ld a, e                                       ; $4921: $7b
    nop                                           ; $4922: $00
    ld [hl], e                                    ; $4923: $73
    nop                                           ; $4924: $00
    ld [bc], a                                    ; $4925: $02
    nop                                           ; $4926: $00
    inc bc                                        ; $4927: $03
    nop                                           ; $4928: $00
    ld [bc], a                                    ; $4929: $02
    nop                                           ; $492a: $00
    ld [bc], a                                    ; $492b: $02
    nop                                           ; $492c: $00
    ld [bc], a                                    ; $492d: $02
    nop                                           ; $492e: $00
    inc bc                                        ; $492f: $03
    nop                                           ; $4930: $00
    ld [bc], a                                    ; $4931: $02
    ld de, $8f00                                  ; $4932: $11 $00 $8f
    ld a, $00                                     ; $4935: $3e $00
    jr nz, jr_0de_4939                            ; $4937: $20 $00

jr_0de_4939:
    ld c, b                                       ; $4939: $48
    nop                                           ; $493a: $00
    ld b, d                                       ; $493b: $42
    nop                                           ; $493c: $00
    add h                                         ; $493d: $84
    nop                                           ; $493e: $00
    ret nz                                        ; $493f: $c0

    nop                                           ; $4940: $00
    ld h, e                                       ; $4941: $63
    nop                                           ; $4942: $00
    ccf                                           ; $4943: $3f
    dec d                                         ; $4944: $15
    nop                                           ; $4945: $00
    add a                                         ; $4946: $87
    inc bc                                        ; $4947: $03
    nop                                           ; $4948: $00
    ld bc, $0200                                  ; $4949: $01 $00 $02
    nop                                           ; $494c: $00
    inc bc                                        ; $494d: $03
    inc bc                                        ; $494e: $03
    nop                                           ; $494f: $00
    add c                                         ; $4950: $81
    ld [bc], a                                    ; $4951: $02
    inc de                                        ; $4952: $13
    nop                                           ; $4953: $00
    rst $38                                       ; $4954: $ff
    dec c                                         ; $4955: $0d
    inc b                                         ; $4956: $04
    ei                                            ; $4957: $fb
    dec b                                         ; $4958: $05
    rst $30                                       ; $4959: $f7
    cp $eb                                        ; $495a: $fe $eb
    ld a, [$00eb]                                 ; $495c: $fa $eb $00
    ei                                            ; $495f: $fb
    ld a, [$fffb]                                 ; $4960: $fa $fb $ff
    ld [bc], a                                    ; $4963: $02
    rrca                                          ; $4964: $0f
    add e                                         ; $4965: $83
    inc d                                         ; $4966: $14
    db $10                                        ; $4967: $10
    add hl, hl                                    ; $4968: $29
    inc bc                                        ; $4969: $03
    jr nz, jr_0de_496e                            ; $496a: $20 $02

    jr nc, jr_0de_4970                            ; $496c: $30 $02

jr_0de_496e:
    dec l                                         ; $496e: $2d
    ld [bc], a                                    ; $496f: $02

jr_0de_4970:
    ld a, [hl-]                                   ; $4970: $3a
    add e                                         ; $4971: $83
    rra                                           ; $4972: $1f
    rla                                           ; $4973: $17
    rra                                           ; $4974: $1f
    inc bc                                        ; $4975: $03
    jr jr_0de_4901                                ; $4976: $18 $89

    scf                                           ; $4978: $37
    ccf                                           ; $4979: $3f
    ld e, b                                       ; $497a: $58
    ld a, a                                       ; $497b: $7f
    ld e, h                                       ; $497c: $5c
    ld a, a                                       ; $497d: $7f
    sbc a                                         ; $497e: $9f
    rst $38                                       ; $497f: $ff
    sbc a                                         ; $4980: $9f
    inc bc                                        ; $4981: $03
    rst $38                                       ; $4982: $ff
    ld [bc], a                                    ; $4983: $02
    jr nz, @+$04                                  ; $4984: $20 $02

    db $10                                        ; $4986: $10
    ld b, $08                                     ; $4987: $06 $08
    ld [bc], a                                    ; $4989: $02
    jr jr_0de_498e                                ; $498a: $18 $02

    jr c, jr_0de_4910                             ; $498c: $38 $82

jr_0de_498e:
    jr nc, jr_0de_49a0                            ; $498e: $30 $10

    inc b                                         ; $4990: $04
    jr nc, jr_0de_4921                            ; $4991: $30 $8e

    jr jr_0de_49cd                                ; $4993: $18 $38

    inc d                                         ; $4995: $14
    inc a                                         ; $4996: $3c
    inc [hl]                                      ; $4997: $34
    inc a                                         ; $4998: $3c
    ld [hl-], a                                   ; $4999: $32
    ld a, $32                                     ; $499a: $3e $32
    ld a, $3f                                     ; $499c: $3e $3f
    dec a                                         ; $499e: $3d
    rst $38                                       ; $499f: $ff

jr_0de_49a0:
    cp a                                          ; $49a0: $bf
    ld [bc], a                                    ; $49a1: $02
    ld a, a                                       ; $49a2: $7f
    ld [bc], a                                    ; $49a3: $02
    ccf                                           ; $49a4: $3f
    inc b                                         ; $49a5: $04
    ld a, a                                       ; $49a6: $7f
    add d                                         ; $49a7: $82
    jr c, @+$41                                   ; $49a8: $38 $3f

    ld [bc], a                                    ; $49aa: $02
    rra                                           ; $49ab: $1f
    ld [de], a                                    ; $49ac: $12
    nop                                           ; $49ad: $00
    adc d                                         ; $49ae: $8a
    rra                                           ; $49af: $1f
    dec e                                         ; $49b0: $1d
    ld d, $1e                                     ; $49b1: $16 $1e
    inc d                                         ; $49b3: $14
    inc e                                         ; $49b4: $1c
    ld a, [de]                                    ; $49b5: $1a
    ld e, $0e                                     ; $49b6: $1e $0e
    ld e, $02                                     ; $49b8: $1e $02
    inc e                                         ; $49ba: $1c
    ld [bc], a                                    ; $49bb: $02
    jr jr_0de_49d0                                ; $49bc: $18 $12

    nop                                           ; $49be: $00
    rst $38                                       ; $49bf: $ff
    rlca                                          ; $49c0: $07
    ld bc, $08f9                                  ; $49c1: $01 $f9 $08
    ld a, [c]                                     ; $49c4: $f2
    ld bc, $fcec                                  ; $49c5: $01 $ec $fc
    adc h                                         ; $49c8: $8c
    nop                                           ; $49c9: $00
    ld l, $00                                     ; $49ca: $2e $00
    ld e, e                                       ; $49cc: $5b

jr_0de_49cd:
    nop                                           ; $49cd: $00
    ld a, a                                       ; $49ce: $7f
    nop                                           ; $49cf: $00

jr_0de_49d0:
    ccf                                           ; $49d0: $3f
    nop                                           ; $49d1: $00
    ld c, d                                       ; $49d2: $4a
    nop                                           ; $49d3: $00
    inc d                                         ; $49d4: $14
    inc b                                         ; $49d5: $04
    nop                                           ; $49d6: $00
    add c                                         ; $49d7: $81
    inc e                                         ; $49d8: $1c
    rrca                                          ; $49d9: $0f
    nop                                           ; $49da: $00
    rst $38                                       ; $49db: $ff
    dec c                                         ; $49dc: $0d
    inc b                                         ; $49dd: $04
    ei                                            ; $49de: $fb
    dec b                                         ; $49df: $05
    rst $30                                       ; $49e0: $f7
    cp $eb                                        ; $49e1: $fe $eb
    ld a, [$ffeb]                                 ; $49e3: $fa $eb $ff
    ei                                            ; $49e6: $fb
    ld a, [$fefb]                                 ; $49e7: $fa $fb $fe
    ld [bc], a                                    ; $49ea: $02
    rrca                                          ; $49eb: $0f
    add e                                         ; $49ec: $83
    inc d                                         ; $49ed: $14
    db $10                                        ; $49ee: $10
    dec hl                                        ; $49ef: $2b
    inc bc                                        ; $49f0: $03
    jr nz, jr_0de_49f5                            ; $49f1: $20 $02

    jr nc, jr_0de_49f7                            ; $49f3: $30 $02

jr_0de_49f5:
    ld a, [hl-]                                   ; $49f5: $3a
    ld [bc], a                                    ; $49f6: $02

jr_0de_49f7:
    dec [hl]                                      ; $49f7: $35
    inc bc                                        ; $49f8: $03
    rra                                           ; $49f9: $1f
    add c                                         ; $49fa: $81
    jr jr_0de_49ff                                ; $49fb: $18 $02

    add hl, de                                    ; $49fd: $19
    adc h                                         ; $49fe: $8c

jr_0de_49ff:
    scf                                           ; $49ff: $37
    ccf                                           ; $4a00: $3f
    ld e, b                                       ; $4a01: $58
    ld a, a                                       ; $4a02: $7f
    ld e, h                                       ; $4a03: $5c
    ld a, a                                       ; $4a04: $7f
    rst $18                                       ; $4a05: $df
    rst $38                                       ; $4a06: $ff
    sbc a                                         ; $4a07: $9f
    rst $38                                       ; $4a08: $ff
    cp a                                          ; $4a09: $bf
    rst $38                                       ; $4a0a: $ff
    ld [bc], a                                    ; $4a0b: $02
    db $10                                        ; $4a0c: $10
    ld [bc], a                                    ; $4a0d: $02
    ld [$0406], sp                                ; $4a0e: $08 $06 $04
    dec b                                         ; $4a11: $05
    inc e                                         ; $4a12: $1c
    add c                                         ; $4a13: $81
    inc c                                         ; $4a14: $0c
    ld [bc], a                                    ; $4a15: $02
    ld [$1802], sp                                ; $4a16: $08 $02 $18
    adc h                                         ; $4a19: $8c
    inc c                                         ; $4a1a: $0c
    inc e                                         ; $4a1b: $1c
    ld a, [bc]                                    ; $4a1c: $0a
    ld e, $1b                                     ; $4a1d: $1e $1b
    rra                                           ; $4a1f: $1f
    add hl, de                                    ; $4a20: $19
    rra                                           ; $4a21: $1f
    dec e                                         ; $4a22: $1d
    rra                                           ; $4a23: $1f
    rrca                                          ; $4a24: $0f
    rra                                           ; $4a25: $1f
    inc bc                                        ; $4a26: $03
    rst $38                                       ; $4a27: $ff
    add c                                         ; $4a28: $81
    cp a                                          ; $4a29: $bf
    ld [bc], a                                    ; $4a2a: $02
    ld a, a                                       ; $4a2b: $7f
    ld [bc], a                                    ; $4a2c: $02
    ccf                                           ; $4a2d: $3f
    add h                                         ; $4a2e: $84
    ld a, $3f                                     ; $4a2f: $3e $3f
    dec de                                        ; $4a31: $1b
    rra                                           ; $4a32: $1f
    ld [bc], a                                    ; $4a33: $02
    rlca                                          ; $4a34: $07
    ld [de], a                                    ; $4a35: $12
    nop                                           ; $4a36: $00
    ld [bc], a                                    ; $4a37: $02
    rrca                                          ; $4a38: $0f
    ld [bc], a                                    ; $4a39: $02
    ld c, $85                                     ; $4a3a: $0e $85
    ld b, $0e                                     ; $4a3c: $06 $0e
    inc bc                                        ; $4a3e: $03
    rrca                                          ; $4a3f: $0f
    inc bc                                        ; $4a40: $03
    inc bc                                        ; $4a41: $03
    rrca                                          ; $4a42: $0f
    ld [bc], a                                    ; $4a43: $02
    ld c, $12                                     ; $4a44: $0e $12
    nop                                           ; $4a46: $00
    rst $38                                       ; $4a47: $ff
    rlca                                          ; $4a48: $07
    ld bc, $08f9                                  ; $4a49: $01 $f9 $08
    ld a, [c]                                     ; $4a4c: $f2
    ld bc, $fcec                                  ; $4a4d: $01 $ec $fc
    adc h                                         ; $4a50: $8c
    nop                                           ; $4a51: $00
    ld l, $00                                     ; $4a52: $2e $00
    ld d, e                                       ; $4a54: $53
    nop                                           ; $4a55: $00
    ld a, a                                       ; $4a56: $7f
    nop                                           ; $4a57: $00
    ccf                                           ; $4a58: $3f
    nop                                           ; $4a59: $00
    inc d                                         ; $4a5a: $14
    nop                                           ; $4a5b: $00
    jr z, jr_0de_4a61                             ; $4a5c: $28 $03

    nop                                           ; $4a5e: $00
    add d                                         ; $4a5f: $82
    ld [bc], a                                    ; $4a60: $02

jr_0de_4a61:
    jr @+$11                                      ; $4a61: $18 $0f

    nop                                           ; $4a63: $00
    rst $38                                       ; $4a64: $ff
    dec c                                         ; $4a65: $0d
    inc b                                         ; $4a66: $04
    ei                                            ; $4a67: $fb
    dec b                                         ; $4a68: $05
    rst $30                                       ; $4a69: $f7
    cp $ec                                        ; $4a6a: $fe $ec
    ld a, [$ffec]                                 ; $4a6c: $fa $ec $ff
    db $fc                                        ; $4a6f: $fc
    ld a, [$fefc]                                 ; $4a70: $fa $fc $fe
    ld [bc], a                                    ; $4a73: $02
    rrca                                          ; $4a74: $0f
    add e                                         ; $4a75: $83
    inc d                                         ; $4a76: $14
    db $10                                        ; $4a77: $10
    dec hl                                        ; $4a78: $2b
    inc bc                                        ; $4a79: $03
    jr nz, jr_0de_4a7e                            ; $4a7a: $20 $02

    jr nc, jr_0de_4a80                            ; $4a7c: $30 $02

jr_0de_4a7e:
    ld a, [hl-]                                   ; $4a7e: $3a
    ld [bc], a                                    ; $4a7f: $02

jr_0de_4a80:
    dec [hl]                                      ; $4a80: $35
    inc bc                                        ; $4a81: $03
    rra                                           ; $4a82: $1f
    add c                                         ; $4a83: $81
    jr jr_0de_4a88                                ; $4a84: $18 $02

    rra                                           ; $4a86: $1f
    adc h                                         ; $4a87: $8c

jr_0de_4a88:
    jr nc, @+$41                                  ; $4a88: $30 $3f

    ld e, h                                       ; $4a8a: $5c
    ld a, a                                       ; $4a8b: $7f
    ld e, a                                       ; $4a8c: $5f
    ld a, a                                       ; $4a8d: $7f
    sbc a                                         ; $4a8e: $9f
    rst $38                                       ; $4a8f: $ff
    cp a                                          ; $4a90: $bf
    rst $38                                       ; $4a91: $ff
    cp a                                          ; $4a92: $bf
    rst $38                                       ; $4a93: $ff

jr_0de_4a94:
    ld [bc], a                                    ; $4a94: $02
    db $10                                        ; $4a95: $10
    ld [bc], a                                    ; $4a96: $02
    ld [$0406], sp                                ; $4a97: $08 $06 $04
    dec b                                         ; $4a9a: $05
    inc e                                         ; $4a9b: $1c
    add c                                         ; $4a9c: $81
    inc c                                         ; $4a9d: $0c
    ld [bc], a                                    ; $4a9e: $02
    ld [$1802], sp                                ; $4a9f: $08 $02 $18
    adc h                                         ; $4aa2: $8c
    inc c                                         ; $4aa3: $0c
    inc e                                         ; $4aa4: $1c
    ld a, [de]                                    ; $4aa5: $1a
    ld e, $1b                                     ; $4aa6: $1e $1b
    rra                                           ; $4aa8: $1f
    add hl, de                                    ; $4aa9: $19
    rra                                           ; $4aaa: $1f
    dec e                                         ; $4aab: $1d
    rra                                           ; $4aac: $1f
    dec e                                         ; $4aad: $1d
    rra                                           ; $4aae: $1f

jr_0de_4aaf:
    inc bc                                        ; $4aaf: $03
    rst $38                                       ; $4ab0: $ff
    add c                                         ; $4ab1: $81
    cp a                                          ; $4ab2: $bf
    ld [bc], a                                    ; $4ab3: $02
    ld a, a                                       ; $4ab4: $7f
    add h                                         ; $4ab5: $84
    ld a, $3f                                     ; $4ab6: $3e $3f
    dec a                                         ; $4ab8: $3d
    ccf                                           ; $4ab9: $3f
    ld [bc], a                                    ; $4aba: $02
    rra                                           ; $4abb: $1f
    inc d                                         ; $4abc: $14
    nop                                           ; $4abd: $00
    add c                                         ; $4abe: $81
    inc bc                                        ; $4abf: $03
    inc bc                                        ; $4ac0: $03
    rrca                                          ; $4ac1: $0f
    add d                                         ; $4ac2: $82
    ld [bc], a                                    ; $4ac3: $02
    ld c, $04                                     ; $4ac4: $0e $04
    rrca                                          ; $4ac6: $0f
    ld [bc], a                                    ; $4ac7: $02
    ld c, $14                                     ; $4ac8: $0e $14
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    rlca                                          ; $4acc: $07
    ld bc, $08f9                                  ; $4acd: $01 $f9 $08
    ld a, [c]                                     ; $4ad0: $f2
    ld bc, $fced                                  ; $4ad1: $01 $ed $fc
    adc h                                         ; $4ad4: $8c
    nop                                           ; $4ad5: $00
    ld l, $00                                     ; $4ad6: $2e $00
    ld d, e                                       ; $4ad8: $53
    nop                                           ; $4ad9: $00
    ld a, a                                       ; $4ada: $7f
    nop                                           ; $4adb: $00
    ccf                                           ; $4adc: $3f
    nop                                           ; $4add: $00
    inc d                                         ; $4ade: $14
    nop                                           ; $4adf: $00
    jr z, jr_0de_4ae5                             ; $4ae0: $28 $03

    nop                                           ; $4ae2: $00
    add c                                         ; $4ae3: $81
    ld [bc], a                                    ; $4ae4: $02

jr_0de_4ae5:
    stop                                          ; $4ae5: $10 $00
    rst $38                                       ; $4ae7: $ff
    dec c                                         ; $4ae8: $0d
    inc b                                         ; $4ae9: $04
    ei                                            ; $4aea: $fb
    dec b                                         ; $4aeb: $05
    rst $30                                       ; $4aec: $f7
    cp $eb                                        ; $4aed: $fe $eb
    ld a, [$ffeb]                                 ; $4aef: $fa $eb $ff
    ei                                            ; $4af2: $fb
    ld a, [$fffb]                                 ; $4af3: $fa $fb $ff
    ld [bc], a                                    ; $4af6: $02
    rrca                                          ; $4af7: $0f
    add e                                         ; $4af8: $83
    inc d                                         ; $4af9: $14
    db $10                                        ; $4afa: $10
    add hl, hl                                    ; $4afb: $29
    inc bc                                        ; $4afc: $03
    jr nz, jr_0de_4b01                            ; $4afd: $20 $02

    jr nc, jr_0de_4b03                            ; $4aff: $30 $02

jr_0de_4b01:
    dec l                                         ; $4b01: $2d
    ld [bc], a                                    ; $4b02: $02

jr_0de_4b03:
    ld a, [hl-]                                   ; $4b03: $3a
    add e                                         ; $4b04: $83
    rra                                           ; $4b05: $1f
    rla                                           ; $4b06: $17
    rra                                           ; $4b07: $1f
    inc bc                                        ; $4b08: $03
    jr jr_0de_4a94                                ; $4b09: $18 $89

    scf                                           ; $4b0b: $37
    ccf                                           ; $4b0c: $3f
    ld e, b                                       ; $4b0d: $58
    ld a, a                                       ; $4b0e: $7f
    ld e, h                                       ; $4b0f: $5c
    ld a, a                                       ; $4b10: $7f
    sbc a                                         ; $4b11: $9f
    rst $38                                       ; $4b12: $ff
    sbc a                                         ; $4b13: $9f
    inc bc                                        ; $4b14: $03
    rst $38                                       ; $4b15: $ff
    ld [bc], a                                    ; $4b16: $02
    db $10                                        ; $4b17: $10
    ld [bc], a                                    ; $4b18: $02
    ld [$0406], sp                                ; $4b19: $08 $06 $04
    ld [bc], a                                    ; $4b1c: $02
    inc c                                         ; $4b1d: $0c
    ld [bc], a                                    ; $4b1e: $02
    inc e                                         ; $4b1f: $1c
    add d                                         ; $4b20: $82
    jr jr_0de_4b2b                                ; $4b21: $18 $08

    inc b                                         ; $4b23: $04
    jr jr_0de_4aaf                                ; $4b24: $18 $89

    inc c                                         ; $4b26: $0c
    inc e                                         ; $4b27: $1c
    ld a, [bc]                                    ; $4b28: $0a
    ld e, $1a                                     ; $4b29: $1e $1a

jr_0de_4b2b:
    ld e, $19                                     ; $4b2b: $1e $19
    rra                                           ; $4b2d: $1f
    add hl, de                                    ; $4b2e: $19
    inc bc                                        ; $4b2f: $03
    rra                                           ; $4b30: $1f
    add d                                         ; $4b31: $82
    rst $38                                       ; $4b32: $ff
    cp a                                          ; $4b33: $bf
    ld [bc], a                                    ; $4b34: $02
    ld a, a                                       ; $4b35: $7f
    ld b, $3f                                     ; $4b36: $06 $3f
    add d                                         ; $4b38: $82
    daa                                           ; $4b39: $27
    ccf                                           ; $4b3a: $3f
    ld [bc], a                                    ; $4b3b: $02
    ld a, $12                                     ; $4b3c: $3e $12
    nop                                           ; $4b3e: $00
    add h                                         ; $4b3f: $84
    rra                                           ; $4b40: $1f
    dec e                                         ; $4b41: $1d
    ld d, $1e                                     ; $4b42: $16 $1e
    ld [bc], a                                    ; $4b44: $02
    inc e                                         ; $4b45: $1c
    add c                                         ; $4b46: $81
    inc d                                         ; $4b47: $14
    inc bc                                        ; $4b48: $03
    inc e                                         ; $4b49: $1c
    ld [bc], a                                    ; $4b4a: $02
    jr jr_0de_4b61                                ; $4b4b: $18 $14

    nop                                           ; $4b4d: $00
    rst $38                                       ; $4b4e: $ff
    rlca                                          ; $4b4f: $07
    ld bc, $08f9                                  ; $4b50: $01 $f9 $08
    ld a, [c]                                     ; $4b53: $f2
    ld bc, $fcec                                  ; $4b54: $01 $ec $fc
    adc h                                         ; $4b57: $8c
    nop                                           ; $4b58: $00
    ld l, $00                                     ; $4b59: $2e $00
    ld e, e                                       ; $4b5b: $5b
    nop                                           ; $4b5c: $00
    ld a, a                                       ; $4b5d: $7f
    nop                                           ; $4b5e: $00
    ccf                                           ; $4b5f: $3f
    nop                                           ; $4b60: $00

jr_0de_4b61:
    ld c, d                                       ; $4b61: $4a
    nop                                           ; $4b62: $00
    inc d                                         ; $4b63: $14
    inc b                                         ; $4b64: $04
    nop                                           ; $4b65: $00
    add c                                         ; $4b66: $81
    inc e                                         ; $4b67: $1c
    rrca                                          ; $4b68: $0f
    nop                                           ; $4b69: $00
    rst $38                                       ; $4b6a: $ff
    dec c                                         ; $4b6b: $0d
    inc b                                         ; $4b6c: $04
    ei                                            ; $4b6d: $fb
    dec b                                         ; $4b6e: $05
    rst $30                                       ; $4b6f: $f7
    cp $eb                                        ; $4b70: $fe $eb
    ld a, [$ffeb]                                 ; $4b72: $fa $eb $ff
    ei                                            ; $4b75: $fb
    ei                                            ; $4b76: $fb
    ei                                            ; $4b77: $fb
    rst $38                                       ; $4b78: $ff
    ld [bc], a                                    ; $4b79: $02
    rrca                                          ; $4b7a: $0f
    add e                                         ; $4b7b: $83
    inc d                                         ; $4b7c: $14
    db $10                                        ; $4b7d: $10
    inc h                                         ; $4b7e: $24
    inc bc                                        ; $4b7f: $03
    jr nz, jr_0de_4b84                            ; $4b80: $20 $02

    jr z, jr_0de_4b86                             ; $4b82: $28 $02

jr_0de_4b84:
    ld [hl], $02                                  ; $4b84: $36 $02

jr_0de_4b86:
    dec sp                                        ; $4b86: $3b
    add h                                         ; $4b87: $84
    ccf                                           ; $4b88: $3f
    scf                                           ; $4b89: $37
    rla                                           ; $4b8a: $17
    db $10                                        ; $4b8b: $10
    ld [bc], a                                    ; $4b8c: $02
    inc e                                         ; $4b8d: $1c
    adc c                                         ; $4b8e: $89
    scf                                           ; $4b8f: $37
    ccf                                           ; $4b90: $3f
    ld e, b                                       ; $4b91: $58
    ld a, a                                       ; $4b92: $7f
    call c, $9fff                                 ; $4b93: $dc $ff $9f
    rst $38                                       ; $4b96: $ff
    cp a                                          ; $4b97: $bf
    inc bc                                        ; $4b98: $03
    rst $38                                       ; $4b99: $ff
    ld [bc], a                                    ; $4b9a: $02
    db $10                                        ; $4b9b: $10
    ld [bc], a                                    ; $4b9c: $02
    ld [$1481], sp                                ; $4b9d: $08 $81 $14
    dec b                                         ; $4ba0: $05
    inc b                                         ; $4ba1: $04
    ld [bc], a                                    ; $4ba2: $02
    inc e                                         ; $4ba3: $1c
    ld [bc], a                                    ; $4ba4: $02
    inc c                                         ; $4ba5: $0c
    ld b, $18                                     ; $4ba6: $06 $18
    adc h                                         ; $4ba8: $8c
    inc c                                         ; $4ba9: $0c
    inc e                                         ; $4baa: $1c
    ld a, [bc]                                    ; $4bab: $0a
    ld e, $1a                                     ; $4bac: $1e $1a
    ld e, $1b                                     ; $4bae: $1e $1b
    rra                                           ; $4bb0: $1f
    add hl, de                                    ; $4bb1: $19
    rra                                           ; $4bb2: $1f
    dec e                                         ; $4bb3: $1d
    rra                                           ; $4bb4: $1f
    ld [bc], a                                    ; $4bb5: $02
    rst $38                                       ; $4bb6: $ff
    ld [bc], a                                    ; $4bb7: $02
    ld a, a                                       ; $4bb8: $7f
    add d                                         ; $4bb9: $82
    ld l, a                                       ; $4bba: $6f
    ld a, a                                       ; $4bbb: $7f
    ld [bc], a                                    ; $4bbc: $02
    rst $38                                       ; $4bbd: $ff
    add h                                         ; $4bbe: $84
    rst $00                                       ; $4bbf: $c7
    rst $38                                       ; $4bc0: $ff
    db $fd                                        ; $4bc1: $fd
    rst $38                                       ; $4bc2: $ff
    ld [bc], a                                    ; $4bc3: $02
    ld a, [hl]                                    ; $4bc4: $7e
    ld [de], a                                    ; $4bc5: $12
    nop                                           ; $4bc6: $00
    inc bc                                        ; $4bc7: $03
    rrca                                          ; $4bc8: $0f
    add c                                         ; $4bc9: $81
    dec c                                         ; $4bca: $0d
    ld [bc], a                                    ; $4bcb: $02
    ld c, $04                                     ; $4bcc: $0e $04
    inc c                                         ; $4bce: $0c
    ld [bc], a                                    ; $4bcf: $02
    ld [$0014], sp                                ; $4bd0: $08 $14 $00
    rst $38                                       ; $4bd3: $ff
    rlca                                          ; $4bd4: $07
    ld bc, $08f9                                  ; $4bd5: $01 $f9 $08
    ld a, [c]                                     ; $4bd8: $f2
    ld bc, $fcec                                  ; $4bd9: $01 $ec $fc
    adc h                                         ; $4bdc: $8c
    nop                                           ; $4bdd: $00
    ld l, $00                                     ; $4bde: $2e $00
    ld l, l                                       ; $4be0: $6d
    nop                                           ; $4be1: $00
    ld a, a                                       ; $4be2: $7f
    nop                                           ; $4be3: $00
    ld e, a                                       ; $4be4: $5f
    nop                                           ; $4be5: $00
    inc h                                         ; $4be6: $24
    nop                                           ; $4be7: $00
    ld [de], a                                    ; $4be8: $12
    inc bc                                        ; $4be9: $03
    nop                                           ; $4bea: $00
    add d                                         ; $4beb: $82
    jr nz, @+$0e                                  ; $4bec: $20 $0c

    rrca                                          ; $4bee: $0f
    nop                                           ; $4bef: $00
    rst $38                                       ; $4bf0: $ff
    dec c                                         ; $4bf1: $0d
    inc b                                         ; $4bf2: $04
    ei                                            ; $4bf3: $fb
    dec b                                         ; $4bf4: $05
    rst $30                                       ; $4bf5: $f7
    cp $ec                                        ; $4bf6: $fe $ec
    ld a, [$ffec]                                 ; $4bf8: $fa $ec $ff
    db $fc                                        ; $4bfb: $fc
    ei                                            ; $4bfc: $fb
    db $fc                                        ; $4bfd: $fc
    rst $38                                       ; $4bfe: $ff
    ld [bc], a                                    ; $4bff: $02
    rrca                                          ; $4c00: $0f
    add e                                         ; $4c01: $83
    inc d                                         ; $4c02: $14
    db $10                                        ; $4c03: $10
    inc h                                         ; $4c04: $24
    inc bc                                        ; $4c05: $03
    jr nz, jr_0de_4c0a                            ; $4c06: $20 $02

    jr z, jr_0de_4c0c                             ; $4c08: $28 $02

jr_0de_4c0a:
    ld [hl], $02                                  ; $4c0a: $36 $02

jr_0de_4c0c:
    dec sp                                        ; $4c0c: $3b
    add h                                         ; $4c0d: $84
    ccf                                           ; $4c0e: $3f
    scf                                           ; $4c0f: $37
    rla                                           ; $4c10: $17
    db $10                                        ; $4c11: $10
    ld [bc], a                                    ; $4c12: $02
    rra                                           ; $4c13: $1f
    adc h                                         ; $4c14: $8c
    jr nc, jr_0de_4c56                            ; $4c15: $30 $3f

    ld e, h                                       ; $4c17: $5c
    ld a, a                                       ; $4c18: $7f
    rst $18                                       ; $4c19: $df
    rst $38                                       ; $4c1a: $ff
    sbc a                                         ; $4c1b: $9f
    rst $38                                       ; $4c1c: $ff
    cp a                                          ; $4c1d: $bf
    rst $38                                       ; $4c1e: $ff
    cp a                                          ; $4c1f: $bf
    rst $38                                       ; $4c20: $ff
    ld [bc], a                                    ; $4c21: $02

jr_0de_4c22:
    db $10                                        ; $4c22: $10
    ld [bc], a                                    ; $4c23: $02
    ld [$1481], sp                                ; $4c24: $08 $81 $14
    dec b                                         ; $4c27: $05
    inc b                                         ; $4c28: $04
    ld [bc], a                                    ; $4c29: $02
    inc e                                         ; $4c2a: $1c
    ld [bc], a                                    ; $4c2b: $02
    inc c                                         ; $4c2c: $0c
    ld b, $18                                     ; $4c2d: $06 $18
    adc l                                         ; $4c2f: $8d
    inc c                                         ; $4c30: $0c
    inc e                                         ; $4c31: $1c
    ld a, [de]                                    ; $4c32: $1a
    ld e, $1a                                     ; $4c33: $1e $1a
    ld e, $19                                     ; $4c35: $1e $19
    rra                                           ; $4c37: $1f
    dec e                                         ; $4c38: $1d
    rra                                           ; $4c39: $1f
    dec e                                         ; $4c3a: $1d
    rra                                           ; $4c3b: $1f
    rst $28                                       ; $4c3c: $ef

jr_0de_4c3d:
    inc bc                                        ; $4c3d: $03
    rst $38                                       ; $4c3e: $ff
    add [hl]                                      ; $4c3f: $86
    ld c, a                                       ; $4c40: $4f
    ld a, a                                       ; $4c41: $7f
    rst $30                                       ; $4c42: $f7
    rst $38                                       ; $4c43: $ff
    ei                                            ; $4c44: $fb
    rst $38                                       ; $4c45: $ff
    ld [bc], a                                    ; $4c46: $02
    ld a, a                                       ; $4c47: $7f
    inc d                                         ; $4c48: $14
    nop                                           ; $4c49: $00
    inc bc                                        ; $4c4a: $03
    rrca                                          ; $4c4b: $0f
    add c                                         ; $4c4c: $81
    dec c                                         ; $4c4d: $0d
    ld [bc], a                                    ; $4c4e: $02
    ld c, $02                                     ; $4c4f: $0e $02
    inc c                                         ; $4c51: $0c
    add d                                         ; $4c52: $82
    inc b                                         ; $4c53: $04
    inc c                                         ; $4c54: $0c
    ld [bc], a                                    ; $4c55: $02

jr_0de_4c56:
    ld [$0014], sp                                ; $4c56: $08 $14 $00
    rst $38                                       ; $4c59: $ff
    rlca                                          ; $4c5a: $07
    ld bc, $08f9                                  ; $4c5b: $01 $f9 $08
    ld a, [c]                                     ; $4c5e: $f2
    ld bc, $fced                                  ; $4c5f: $01 $ed $fc
    adc h                                         ; $4c62: $8c
    nop                                           ; $4c63: $00
    ld l, $00                                     ; $4c64: $2e $00
    ld l, l                                       ; $4c66: $6d
    nop                                           ; $4c67: $00
    ld a, a                                       ; $4c68: $7f
    nop                                           ; $4c69: $00
    ld e, a                                       ; $4c6a: $5f
    nop                                           ; $4c6b: $00
    inc h                                         ; $4c6c: $24
    nop                                           ; $4c6d: $00
    ld [de], a                                    ; $4c6e: $12
    inc bc                                        ; $4c6f: $03
    nop                                           ; $4c70: $00
    add c                                         ; $4c71: $81
    jr nz, jr_0de_4c84                            ; $4c72: $20 $10

    nop                                           ; $4c74: $00
    rst $38                                       ; $4c75: $ff
    dec c                                         ; $4c76: $0d
    inc b                                         ; $4c77: $04
    ei                                            ; $4c78: $fb
    dec b                                         ; $4c79: $05
    rst $30                                       ; $4c7a: $f7
    cp $eb                                        ; $4c7b: $fe $eb
    ld a, [$ffeb]                                 ; $4c7d: $fa $eb $ff
    ei                                            ; $4c80: $fb
    ld a, [$fffb]                                 ; $4c81: $fa $fb $ff

jr_0de_4c84:
    ld [bc], a                                    ; $4c84: $02
    rrca                                          ; $4c85: $0f
    add e                                         ; $4c86: $83
    inc d                                         ; $4c87: $14
    db $10                                        ; $4c88: $10
    add hl, hl                                    ; $4c89: $29
    inc bc                                        ; $4c8a: $03
    jr nz, jr_0de_4c8f                            ; $4c8b: $20 $02

    jr nc, jr_0de_4c91                            ; $4c8d: $30 $02

jr_0de_4c8f:
    dec l                                         ; $4c8f: $2d
    ld [bc], a                                    ; $4c90: $02

jr_0de_4c91:
    ld a, [hl-]                                   ; $4c91: $3a
    add e                                         ; $4c92: $83
    rra                                           ; $4c93: $1f
    rla                                           ; $4c94: $17
    rra                                           ; $4c95: $1f
    inc bc                                        ; $4c96: $03
    jr jr_0de_4c22                                ; $4c97: $18 $89

    scf                                           ; $4c99: $37
    ccf                                           ; $4c9a: $3f
    ld e, b                                       ; $4c9b: $58
    ld a, a                                       ; $4c9c: $7f
    ld e, h                                       ; $4c9d: $5c
    ld a, a                                       ; $4c9e: $7f
    sbc a                                         ; $4c9f: $9f
    rst $38                                       ; $4ca0: $ff
    sbc a                                         ; $4ca1: $9f
    inc bc                                        ; $4ca2: $03
    rst $38                                       ; $4ca3: $ff
    ld [bc], a                                    ; $4ca4: $02
    db $10                                        ; $4ca5: $10
    ld [bc], a                                    ; $4ca6: $02
    ld [$0406], sp                                ; $4ca7: $08 $06 $04
    ld [bc], a                                    ; $4caa: $02
    inc c                                         ; $4cab: $0c
    ld [bc], a                                    ; $4cac: $02
    inc e                                         ; $4cad: $1c
    add d                                         ; $4cae: $82
    jr jr_0de_4cb9                                ; $4caf: $18 $08

    inc b                                         ; $4cb1: $04
    jr jr_0de_4c3d                                ; $4cb2: $18 $89

    inc c                                         ; $4cb4: $0c
    inc e                                         ; $4cb5: $1c
    ld a, [bc]                                    ; $4cb6: $0a
    ld e, $1a                                     ; $4cb7: $1e $1a

jr_0de_4cb9:
    ld e, $19                                     ; $4cb9: $1e $19
    rra                                           ; $4cbb: $1f
    add hl, de                                    ; $4cbc: $19
    inc bc                                        ; $4cbd: $03
    rra                                           ; $4cbe: $1f
    add h                                         ; $4cbf: $84
    rst $38                                       ; $4cc0: $ff
    cp a                                          ; $4cc1: $bf
    ld l, a                                       ; $4cc2: $6f
    ld a, a                                       ; $4cc3: $7f
    ld [bc], a                                    ; $4cc4: $02
    ccf                                           ; $4cc5: $3f
    add c                                         ; $4cc6: $81
    cpl                                           ; $4cc7: $2f
    inc bc                                        ; $4cc8: $03
    ccf                                           ; $4cc9: $3f
    ld [bc], a                                    ; $4cca: $02
    rra                                           ; $4ccb: $1f
    ld [bc], a                                    ; $4ccc: $02
    inc bc                                        ; $4ccd: $03
    ld [de], a                                    ; $4cce: $12
    nop                                           ; $4ccf: $00
    add d                                         ; $4cd0: $82
    rra                                           ; $4cd1: $1f
    dec e                                         ; $4cd2: $1d
    ld [bc], a                                    ; $4cd3: $02
    ld e, $06                                     ; $4cd4: $1e $06
    inc e                                         ; $4cd6: $1c
    add c                                         ; $4cd7: $81
    inc b                                         ; $4cd8: $04
    inc bc                                        ; $4cd9: $03
    inc e                                         ; $4cda: $1c
    ld [de], a                                    ; $4cdb: $12
    nop                                           ; $4cdc: $00
    rst $38                                       ; $4cdd: $ff
    rlca                                          ; $4cde: $07
    ld bc, $08f9                                  ; $4cdf: $01 $f9 $08
    ld a, [c]                                     ; $4ce2: $f2
    ld bc, $fcec                                  ; $4ce3: $01 $ec $fc
    adc h                                         ; $4ce6: $8c
    nop                                           ; $4ce7: $00
    ld l, $00                                     ; $4ce8: $2e $00
    ld e, e                                       ; $4cea: $5b
    nop                                           ; $4ceb: $00
    ld a, a                                       ; $4cec: $7f
    nop                                           ; $4ced: $00
    ccf                                           ; $4cee: $3f
    nop                                           ; $4cef: $00
    ld c, d                                       ; $4cf0: $4a
    nop                                           ; $4cf1: $00
    inc d                                         ; $4cf2: $14
    inc b                                         ; $4cf3: $04
    nop                                           ; $4cf4: $00
    add c                                         ; $4cf5: $81
    inc e                                         ; $4cf6: $1c
    rrca                                          ; $4cf7: $0f
    nop                                           ; $4cf8: $00
    rst $38                                       ; $4cf9: $ff
    dec c                                         ; $4cfa: $0d
    inc b                                         ; $4cfb: $04
    ei                                            ; $4cfc: $fb
    dec b                                         ; $4cfd: $05
    rst $30                                       ; $4cfe: $f7
    cp $eb                                        ; $4cff: $fe $eb
    ld a, [$ffeb]                                 ; $4d01: $fa $eb $ff
    ei                                            ; $4d04: $fb
    ld a, [$fffb]                                 ; $4d05: $fa $fb $ff
    ld [bc], a                                    ; $4d08: $02
    rrca                                          ; $4d09: $0f
    add d                                         ; $4d0a: $82
    inc d                                         ; $4d0b: $14
    db $10                                        ; $4d0c: $10
    ld [bc], a                                    ; $4d0d: $02
    add hl, hl                                    ; $4d0e: $29
    adc [hl]                                      ; $4d0f: $8e
    dec hl                                        ; $4d10: $2b
    ld a, [hl+]                                   ; $4d11: $2a
    ccf                                           ; $4d12: $3f
    inc [hl]                                      ; $4d13: $34
    ccf                                           ; $4d14: $3f
    dec l                                         ; $4d15: $2d
    ccf                                           ; $4d16: $3f
    jr nz, jr_0de_4d58                            ; $4d17: $20 $3f

    ld [hl+], a                                   ; $4d19: $22
    rra                                           ; $4d1a: $1f
    rla                                           ; $4d1b: $17
    rra                                           ; $4d1c: $1f
    jr jr_0de_4d21                                ; $4d1d: $18 $02

    scf                                           ; $4d1f: $37
    adc d                                         ; $4d20: $8a

jr_0de_4d21:
    ld e, d                                       ; $4d21: $5a
    ld a, d                                       ; $4d22: $7a
    ld e, l                                       ; $4d23: $5d
    ld a, l                                       ; $4d24: $7d
    cp d                                          ; $4d25: $ba
    rst $38                                       ; $4d26: $ff
    sbc l                                         ; $4d27: $9d
    rst $38                                       ; $4d28: $ff
    db $fd                                        ; $4d29: $fd
    rst $18                                       ; $4d2a: $df
    ld [bc], a                                    ; $4d2b: $02
    db $10                                        ; $4d2c: $10
    add h                                         ; $4d2d: $84
    jr jr_0de_4d38                                ; $4d2e: $18 $08

    inc c                                         ; $4d30: $0c
    inc b                                         ; $4d31: $04
    ld [bc], a                                    ; $4d32: $02
    inc d                                         ; $4d33: $14
    adc d                                         ; $4d34: $8a
    inc e                                         ; $4d35: $1c
    inc c                                         ; $4d36: $0c
    inc e                                         ; $4d37: $1c

jr_0de_4d38:
    inc d                                         ; $4d38: $14
    inc e                                         ; $4d39: $1c
    inc b                                         ; $4d3a: $04
    inc e                                         ; $4d3b: $1c
    inc b                                         ; $4d3c: $04
    jr jr_0de_4d47                                ; $4d3d: $18 $08

    ld [bc], a                                    ; $4d3f: $02
    jr jr_0de_4d44                                ; $4d40: $18 $02

    inc c                                         ; $4d42: $0c
    add a                                         ; $4d43: $87

jr_0de_4d44:
    ld a, [de]                                    ; $4d44: $1a
    ld e, $1a                                     ; $4d45: $1e $1a

jr_0de_4d47:
    ld e, $1d                                     ; $4d47: $1e $1d
    rra                                           ; $4d49: $1f
    add hl, de                                    ; $4d4a: $19
    inc bc                                        ; $4d4b: $03
    rra                                           ; $4d4c: $1f
    add a                                         ; $4d4d: $87
    db $fd                                        ; $4d4e: $fd
    and a                                         ; $4d4f: $a7
    ld a, d                                       ; $4d50: $7a
    ld a, a                                       ; $4d51: $7f
    ld a, [hl-]                                   ; $4d52: $3a
    ccf                                           ; $4d53: $3f
    ld [hl], a                                    ; $4d54: $77
    inc bc                                        ; $4d55: $03
    ld a, a                                       ; $4d56: $7f
    add d                                         ; $4d57: $82

jr_0de_4d58:
    dec h                                         ; $4d58: $25
    dec a                                         ; $4d59: $3d
    ld [bc], a                                    ; $4d5a: $02
    jr jr_0de_4d6f                                ; $4d5b: $18 $12

    nop                                           ; $4d5d: $00
    add d                                         ; $4d5e: $82
    rra                                           ; $4d5f: $1f
    dec e                                         ; $4d60: $1d
    ld [bc], a                                    ; $4d61: $02
    ld e, $02                                     ; $4d62: $1e $02
    inc e                                         ; $4d64: $1c
    add c                                         ; $4d65: $81
    ld a, [bc]                                    ; $4d66: $0a
    inc bc                                        ; $4d67: $03
    ld e, $82                                     ; $4d68: $1e $82
    inc b                                         ; $4d6a: $04
    inc e                                         ; $4d6b: $1c
    ld [bc], a                                    ; $4d6c: $02
    jr jr_0de_4d81                                ; $4d6d: $18 $12

jr_0de_4d6f:
    nop                                           ; $4d6f: $00
    rst $38                                       ; $4d70: $ff
    rlca                                          ; $4d71: $07
    ld bc, $08f9                                  ; $4d72: $01 $f9 $08
    ld a, [c]                                     ; $4d75: $f2
    ld bc, $fcec                                  ; $4d76: $01 $ec $fc
    add [hl]                                      ; $4d79: $86
    nop                                           ; $4d7a: $00
    inc l                                         ; $4d7b: $2c
    nop                                           ; $4d7c: $00
    ld e, d                                       ; $4d7d: $5a
    nop                                           ; $4d7e: $00
    ld d, c                                       ; $4d7f: $51
    inc c                                         ; $4d80: $0c

jr_0de_4d81:
    nop                                           ; $4d81: $00
    add l                                         ; $4d82: $85
    ld [hl+], a                                   ; $4d83: $22
    nop                                           ; $4d84: $00
    inc d                                         ; $4d85: $14
    nop                                           ; $4d86: $00
    ld [$0009], sp                                ; $4d87: $08 $09 $00
    rst $38                                       ; $4d8a: $ff
    dec c                                         ; $4d8b: $0d
    inc b                                         ; $4d8c: $04
    ei                                            ; $4d8d: $fb
    dec b                                         ; $4d8e: $05
    rst $30                                       ; $4d8f: $f7
    cp $eb                                        ; $4d90: $fe $eb
    ld a, [$ffeb]                                 ; $4d92: $fa $eb $ff
    ei                                            ; $4d95: $fb
    ei                                            ; $4d96: $fb
    ei                                            ; $4d97: $fb
    cp $02                                        ; $4d98: $fe $02
    rrca                                          ; $4d9a: $0f
    add d                                         ; $4d9b: $82
    inc d                                         ; $4d9c: $14
    db $10                                        ; $4d9d: $10
    ld [bc], a                                    ; $4d9e: $02
    add hl, hl                                    ; $4d9f: $29
    adc [hl]                                      ; $4da0: $8e
    scf                                           ; $4da1: $37
    ld [hl], $3f                                  ; $4da2: $36 $3f
    inc [hl]                                      ; $4da4: $34
    dec sp                                        ; $4da5: $3b
    add hl, sp                                    ; $4da6: $39
    ccf                                           ; $4da7: $3f
    jr nz, jr_0de_4de9                            ; $4da8: $20 $3f

    inc h                                         ; $4daa: $24
    ld e, $16                                     ; $4dab: $1e $16
    rra                                           ; $4dad: $1f
    jr jr_0de_4db2                                ; $4dae: $18 $02

    scf                                           ; $4db0: $37
    adc d                                         ; $4db1: $8a

jr_0de_4db2:
    ld e, d                                       ; $4db2: $5a
    ld a, d                                       ; $4db3: $7a
    ld e, l                                       ; $4db4: $5d
    ld a, l                                       ; $4db5: $7d
    ld a, d                                       ; $4db6: $7a
    ld a, a                                       ; $4db7: $7f
    sbc l                                         ; $4db8: $9d
    rst $38                                       ; $4db9: $ff
    cp h                                          ; $4dba: $bc
    rst $38                                       ; $4dbb: $ff
    ld [bc], a                                    ; $4dbc: $02
    db $10                                        ; $4dbd: $10
    add h                                         ; $4dbe: $84
    jr jr_0de_4dc9                                ; $4dbf: $18 $08

    inc d                                         ; $4dc1: $14
    inc b                                         ; $4dc2: $04
    ld [bc], a                                    ; $4dc3: $02
    inc d                                         ; $4dc4: $14
    inc bc                                        ; $4dc5: $03
    inc e                                         ; $4dc6: $1c
    add a                                         ; $4dc7: $87
    inc d                                         ; $4dc8: $14

jr_0de_4dc9:
    inc e                                         ; $4dc9: $1c
    inc b                                         ; $4dca: $04
    inc d                                         ; $4dcb: $14
    inc b                                         ; $4dcc: $04
    jr @+$0a                                      ; $4dcd: $18 $08

    ld [bc], a                                    ; $4dcf: $02
    jr jr_0de_4dd4                                ; $4dd0: $18 $02

    inc c                                         ; $4dd2: $0c
    add c                                         ; $4dd3: $81

jr_0de_4dd4:
    ld a, [de]                                    ; $4dd4: $1a
    inc bc                                        ; $4dd5: $03
    ld e, $81                                     ; $4dd6: $1e $81
    dec e                                         ; $4dd8: $1d
    inc b                                         ; $4dd9: $04
    rra                                           ; $4dda: $1f
    adc e                                         ; $4ddb: $8b
    dec e                                         ; $4ddc: $1d
    ld sp, hl                                     ; $4ddd: $f9
    cp a                                          ; $4dde: $bf
    or [hl]                                       ; $4ddf: $b6
    rst $08                                       ; $4de0: $cf
    rst $30                                       ; $4de1: $f7
    rst $38                                       ; $4de2: $ff
    rst $28                                       ; $4de3: $ef
    rst $38                                       ; $4de4: $ff
    ld e, [hl]                                    ; $4de5: $5e
    ld a, a                                       ; $4de6: $7f
    ld [bc], a                                    ; $4de7: $02
    dec sp                                        ; $4de8: $3b

jr_0de_4de9:
    ld [bc], a                                    ; $4de9: $02
    inc bc                                        ; $4dea: $03
    ld [de], a                                    ; $4deb: $12
    nop                                           ; $4dec: $00
    ld [bc], a                                    ; $4ded: $02
    rlca                                          ; $4dee: $07
    ld [bc], a                                    ; $4def: $02
    ld b, $82                                     ; $4df0: $06 $82
    ld [bc], a                                    ; $4df2: $02
    ld b, $02                                     ; $4df3: $06 $02
    rlca                                          ; $4df5: $07
    add c                                         ; $4df6: $81
    ld [bc], a                                    ; $4df7: $02
    inc bc                                        ; $4df8: $03
    ld b, $02                                     ; $4df9: $06 $02
    inc b                                         ; $4dfb: $04
    ld [de], a                                    ; $4dfc: $12
    nop                                           ; $4dfd: $00
    rst $38                                       ; $4dfe: $ff
    rlca                                          ; $4dff: $07
    ld bc, $08f9                                  ; $4e00: $01 $f9 $08
    ld a, [c]                                     ; $4e03: $f2
    ld bc, $fcec                                  ; $4e04: $01 $ec $fc
    add [hl]                                      ; $4e07: $86
    nop                                           ; $4e08: $00
    inc l                                         ; $4e09: $2c
    nop                                           ; $4e0a: $00
    ld e, c                                       ; $4e0b: $59
    nop                                           ; $4e0c: $00
    ld hl, $0003                                  ; $4e0d: $21 $03 $00
    add c                                         ; $4e10: $81
    db $10                                        ; $4e11: $10
    inc bc                                        ; $4e12: $03
    nop                                           ; $4e13: $00
    add e                                         ; $4e14: $83
    ld bc, $0400                                  ; $4e15: $01 $00 $04
    ld [bc], a                                    ; $4e18: $02
    nop                                           ; $4e19: $00
    add l                                         ; $4e1a: $85
    ld [hl+], a                                   ; $4e1b: $22
    nop                                           ; $4e1c: $00
    inc d                                         ; $4e1d: $14
    nop                                           ; $4e1e: $00
    ld [$0009], sp                                ; $4e1f: $08 $09 $00
    rst $38                                       ; $4e22: $ff
    dec c                                         ; $4e23: $0d
    inc b                                         ; $4e24: $04
    ei                                            ; $4e25: $fb
    dec b                                         ; $4e26: $05
    rst $30                                       ; $4e27: $f7
    cp $ec                                        ; $4e28: $fe $ec
    ld a, [$ffec]                                 ; $4e2a: $fa $ec $ff
    db $fc                                        ; $4e2d: $fc
    ld a, [$fefc]                                 ; $4e2e: $fa $fc $fe
    ld [bc], a                                    ; $4e31: $02
    rrca                                          ; $4e32: $0f
    add d                                         ; $4e33: $82
    inc d                                         ; $4e34: $14
    db $10                                        ; $4e35: $10
    ld [bc], a                                    ; $4e36: $02
    add hl, hl                                    ; $4e37: $29
    adc [hl]                                      ; $4e38: $8e
    scf                                           ; $4e39: $37
    ld [hl], $3f                                  ; $4e3a: $36 $3f
    inc [hl]                                      ; $4e3c: $34
    dec sp                                        ; $4e3d: $3b
    add hl, sp                                    ; $4e3e: $39
    ccf                                           ; $4e3f: $3f
    jr nz, @+$41                                  ; $4e40: $20 $3f

    inc h                                         ; $4e42: $24
    ld e, $16                                     ; $4e43: $1e $16
    rra                                           ; $4e45: $1f
    jr jr_0de_4e4a                                ; $4e46: $18 $02

    scf                                           ; $4e48: $37
    adc d                                         ; $4e49: $8a

jr_0de_4e4a:
    ld e, d                                       ; $4e4a: $5a
    ld a, d                                       ; $4e4b: $7a
    ld e, l                                       ; $4e4c: $5d
    ld a, l                                       ; $4e4d: $7d
    cp d                                          ; $4e4e: $ba
    rst $38                                       ; $4e4f: $ff
    sbc l                                         ; $4e50: $9d
    rst $38                                       ; $4e51: $ff
    cp l                                          ; $4e52: $bd
    rst $38                                       ; $4e53: $ff
    ld [bc], a                                    ; $4e54: $02
    db $10                                        ; $4e55: $10
    add h                                         ; $4e56: $84
    jr jr_0de_4e61                                ; $4e57: $18 $08

    inc d                                         ; $4e59: $14
    inc b                                         ; $4e5a: $04
    ld [bc], a                                    ; $4e5b: $02
    inc d                                         ; $4e5c: $14
    inc bc                                        ; $4e5d: $03
    inc e                                         ; $4e5e: $1c
    add a                                         ; $4e5f: $87
    inc d                                         ; $4e60: $14

jr_0de_4e61:
    inc e                                         ; $4e61: $1c
    inc b                                         ; $4e62: $04
    inc d                                         ; $4e63: $14
    inc b                                         ; $4e64: $04
    jr @+$0a                                      ; $4e65: $18 $08

    ld [bc], a                                    ; $4e67: $02
    jr jr_0de_4e6c                                ; $4e68: $18 $02

    inc c                                         ; $4e6a: $0c
    add c                                         ; $4e6b: $81

jr_0de_4e6c:
    ld a, [de]                                    ; $4e6c: $1a
    inc bc                                        ; $4e6d: $03
    ld e, $81                                     ; $4e6e: $1e $81
    dec e                                         ; $4e70: $1d
    inc b                                         ; $4e71: $04
    rra                                           ; $4e72: $1f
    add a                                         ; $4e73: $87
    dec e                                         ; $4e74: $1d
    ld a, [$5bdf]                                 ; $4e75: $fa $df $5b
    ld l, a                                       ; $4e78: $6f
    dec sp                                        ; $4e79: $3b
    scf                                           ; $4e7a: $37
    ld [bc], a                                    ; $4e7b: $02
    ccf                                           ; $4e7c: $3f
    ld [bc], a                                    ; $4e7d: $02
    dec c                                         ; $4e7e: $0d
    ld [bc], a                                    ; $4e7f: $02
    ld bc, $0014                                  ; $4e80: $01 $14 $00
    ld [bc], a                                    ; $4e83: $02
    rrca                                          ; $4e84: $0f
    add e                                         ; $4e85: $83
    ld b, $0e                                     ; $4e86: $06 $0e
    ld a, [bc]                                    ; $4e88: $0a
    inc bc                                        ; $4e89: $03
    ld c, $81                                     ; $4e8a: $0e $81
    ld [bc], a                                    ; $4e8c: $02
    inc bc                                        ; $4e8d: $03
    ld c, $14                                     ; $4e8e: $0e $14
    nop                                           ; $4e90: $00
    rst $38                                       ; $4e91: $ff
    rlca                                          ; $4e92: $07
    ld bc, $08f9                                  ; $4e93: $01 $f9 $08
    ld a, [c]                                     ; $4e96: $f2
    ld bc, $fced                                  ; $4e97: $01 $ed $fc
    add [hl]                                      ; $4e9a: $86
    nop                                           ; $4e9b: $00
    inc l                                         ; $4e9c: $2c
    nop                                           ; $4e9d: $00
    ld e, c                                       ; $4e9e: $59
    nop                                           ; $4e9f: $00
    ld hl, $0003                                  ; $4ea0: $21 $03 $00
    add c                                         ; $4ea3: $81
    db $10                                        ; $4ea4: $10
    inc bc                                        ; $4ea5: $03
    nop                                           ; $4ea6: $00
    add e                                         ; $4ea7: $83
    ld bc, $0400                                  ; $4ea8: $01 $00 $04
    ld [bc], a                                    ; $4eab: $02
    nop                                           ; $4eac: $00
    add l                                         ; $4ead: $85
    ld [hl+], a                                   ; $4eae: $22
    nop                                           ; $4eaf: $00
    inc d                                         ; $4eb0: $14
    nop                                           ; $4eb1: $00
    ld [$0009], sp                                ; $4eb2: $08 $09 $00
    rst $38                                       ; $4eb5: $ff
    dec c                                         ; $4eb6: $0d
    inc b                                         ; $4eb7: $04
    ei                                            ; $4eb8: $fb
    dec b                                         ; $4eb9: $05
    rst $30                                       ; $4eba: $f7
    cp $eb                                        ; $4ebb: $fe $eb
    ld a, [$ffeb]                                 ; $4ebd: $fa $eb $ff
    ei                                            ; $4ec0: $fb
    ld a, [$fffb]                                 ; $4ec1: $fa $fb $ff
    ld [bc], a                                    ; $4ec4: $02
    rrca                                          ; $4ec5: $0f
    add d                                         ; $4ec6: $82
    inc d                                         ; $4ec7: $14
    db $10                                        ; $4ec8: $10
    ld [bc], a                                    ; $4ec9: $02
    add hl, hl                                    ; $4eca: $29
    adc [hl]                                      ; $4ecb: $8e
    dec hl                                        ; $4ecc: $2b
    ld a, [hl+]                                   ; $4ecd: $2a
    ccf                                           ; $4ece: $3f
    inc [hl]                                      ; $4ecf: $34
    ccf                                           ; $4ed0: $3f
    dec l                                         ; $4ed1: $2d
    ccf                                           ; $4ed2: $3f
    jr nz, jr_0de_4f14                            ; $4ed3: $20 $3f

    ld [hl+], a                                   ; $4ed5: $22
    rra                                           ; $4ed6: $1f
    rla                                           ; $4ed7: $17
    rra                                           ; $4ed8: $1f
    jr jr_0de_4edd                                ; $4ed9: $18 $02

    scf                                           ; $4edb: $37
    adc d                                         ; $4edc: $8a

jr_0de_4edd:
    ld e, d                                       ; $4edd: $5a
    ld a, d                                       ; $4ede: $7a
    ld e, l                                       ; $4edf: $5d
    ld a, l                                       ; $4ee0: $7d
    cp d                                          ; $4ee1: $ba
    rst $38                                       ; $4ee2: $ff
    sbc l                                         ; $4ee3: $9d
    rst $38                                       ; $4ee4: $ff
    db $fd                                        ; $4ee5: $fd
    rst $38                                       ; $4ee6: $ff
    ld [bc], a                                    ; $4ee7: $02
    db $10                                        ; $4ee8: $10
    add h                                         ; $4ee9: $84
    jr jr_0de_4ef4                                ; $4eea: $18 $08

    inc c                                         ; $4eec: $0c
    inc b                                         ; $4eed: $04
    ld [bc], a                                    ; $4eee: $02
    inc d                                         ; $4eef: $14
    adc d                                         ; $4ef0: $8a
    inc e                                         ; $4ef1: $1c
    inc c                                         ; $4ef2: $0c
    inc e                                         ; $4ef3: $1c

jr_0de_4ef4:
    inc d                                         ; $4ef4: $14
    inc e                                         ; $4ef5: $1c
    inc b                                         ; $4ef6: $04
    inc e                                         ; $4ef7: $1c
    inc b                                         ; $4ef8: $04
    jr jr_0de_4f03                                ; $4ef9: $18 $08

    ld [bc], a                                    ; $4efb: $02
    jr jr_0de_4f00                                ; $4efc: $18 $02

    inc c                                         ; $4efe: $0c
    add a                                         ; $4eff: $87

jr_0de_4f00:
    ld a, [de]                                    ; $4f00: $1a
    ld e, $1a                                     ; $4f01: $1e $1a

jr_0de_4f03:
    ld e, $1d                                     ; $4f03: $1e $1d
    rra                                           ; $4f05: $1f
    add hl, de                                    ; $4f06: $19
    inc bc                                        ; $4f07: $03
    rra                                           ; $4f08: $1f
    add l                                         ; $4f09: $85
    ld a, [$7abf]                                 ; $4f0a: $fa $bf $7a
    ld e, a                                       ; $4f0d: $5f
    ld [hl], a                                    ; $4f0e: $77
    inc bc                                        ; $4f0f: $03
    ld a, a                                       ; $4f10: $7f
    add d                                         ; $4f11: $82
    dec [hl]                                      ; $4f12: $35
    dec a                                         ; $4f13: $3d

jr_0de_4f14:
    ld [bc], a                                    ; $4f14: $02
    add hl, de                                    ; $4f15: $19
    inc d                                         ; $4f16: $14
    nop                                           ; $4f17: $00
    add d                                         ; $4f18: $82
    rra                                           ; $4f19: $1f
    dec e                                         ; $4f1a: $1d
    ld [bc], a                                    ; $4f1b: $02
    ld e, $82                                     ; $4f1c: $1e $82
    inc c                                         ; $4f1e: $0c
    inc e                                         ; $4f1f: $1c
    ld [bc], a                                    ; $4f20: $02
    ld e, $81                                     ; $4f21: $1e $81
    inc b                                         ; $4f23: $04
    inc bc                                        ; $4f24: $03
    inc e                                         ; $4f25: $1c
    inc d                                         ; $4f26: $14
    nop                                           ; $4f27: $00
    rst $38                                       ; $4f28: $ff
    rlca                                          ; $4f29: $07
    ld bc, $08f9                                  ; $4f2a: $01 $f9 $08
    ld a, [c]                                     ; $4f2d: $f2
    ld bc, $fcec                                  ; $4f2e: $01 $ec $fc
    add [hl]                                      ; $4f31: $86
    nop                                           ; $4f32: $00
    inc l                                         ; $4f33: $2c
    nop                                           ; $4f34: $00
    ld e, d                                       ; $4f35: $5a
    nop                                           ; $4f36: $00
    ld d, c                                       ; $4f37: $51
    inc c                                         ; $4f38: $0c
    nop                                           ; $4f39: $00
    add l                                         ; $4f3a: $85
    ld [hl+], a                                   ; $4f3b: $22
    nop                                           ; $4f3c: $00
    inc d                                         ; $4f3d: $14
    nop                                           ; $4f3e: $00
    ld [$0009], sp                                ; $4f3f: $08 $09 $00
    rst $38                                       ; $4f42: $ff
    dec c                                         ; $4f43: $0d
    inc b                                         ; $4f44: $04
    ei                                            ; $4f45: $fb
    dec b                                         ; $4f46: $05
    rst $30                                       ; $4f47: $f7
    cp $eb                                        ; $4f48: $fe $eb
    ld a, [$ffeb]                                 ; $4f4a: $fa $eb $ff
    ei                                            ; $4f4d: $fb
    ld a, [$fefb]                                 ; $4f4e: $fa $fb $fe
    ld [bc], a                                    ; $4f51: $02
    rrca                                          ; $4f52: $0f
    add d                                         ; $4f53: $82
    ld [de], a                                    ; $4f54: $12
    db $10                                        ; $4f55: $10
    ld [bc], a                                    ; $4f56: $02
    add hl, hl                                    ; $4f57: $29
    ld [bc], a                                    ; $4f58: $02
    dec l                                         ; $4f59: $2d
    adc h                                         ; $4f5a: $8c
    ccf                                           ; $4f5b: $3f
    ld [hl-], a                                   ; $4f5c: $32
    dec a                                         ; $4f5d: $3d
    inc l                                         ; $4f5e: $2c
    ccf                                           ; $4f5f: $3f
    jr nz, jr_0de_4f91                            ; $4f60: $20 $2f

    ld hl, $131b                                  ; $4f62: $21 $1b $13
    rra                                           ; $4f65: $1f
    jr jr_0de_4f6a                                ; $4f66: $18 $02

    scf                                           ; $4f68: $37
    add d                                         ; $4f69: $82

jr_0de_4f6a:
    ld e, d                                       ; $4f6a: $5a
    ld a, d                                       ; $4f6b: $7a
    ld [bc], a                                    ; $4f6c: $02
    ld a, l                                       ; $4f6d: $7d
    add [hl]                                      ; $4f6e: $86
    cp d                                          ; $4f6f: $ba
    rst $38                                       ; $4f70: $ff
    db $fd                                        ; $4f71: $fd
    rst $38                                       ; $4f72: $ff
    ld sp, hl                                     ; $4f73: $f9
    cp a                                          ; $4f74: $bf
    ld [bc], a                                    ; $4f75: $02
    db $10                                        ; $4f76: $10
    add h                                         ; $4f77: $84
    jr jr_0de_4f82                                ; $4f78: $18 $08

    inc c                                         ; $4f7a: $0c
    inc b                                         ; $4f7b: $04
    ld [bc], a                                    ; $4f7c: $02
    inc d                                         ; $4f7d: $14
    add d                                         ; $4f7e: $82
    inc e                                         ; $4f7f: $1c
    inc c                                         ; $4f80: $0c
    inc bc                                        ; $4f81: $03

jr_0de_4f82:
    inc e                                         ; $4f82: $1c
    add l                                         ; $4f83: $85
    inc b                                         ; $4f84: $04
    inc e                                         ; $4f85: $1c
    inc b                                         ; $4f86: $04
    jr jr_0de_4f91                                ; $4f87: $18 $08

    ld [bc], a                                    ; $4f89: $02
    jr jr_0de_4f8e                                ; $4f8a: $18 $02

    inc c                                         ; $4f8c: $0c
    add e                                         ; $4f8d: $83

jr_0de_4f8e:
    ld a, [de]                                    ; $4f8e: $1a
    ld e, $1a                                     ; $4f8f: $1e $1a

jr_0de_4f91:
    inc bc                                        ; $4f91: $03
    ld e, $8a                                     ; $4f92: $1e $8a
    add hl, de                                    ; $4f94: $19
    rra                                           ; $4f95: $1f
    dec e                                         ; $4f96: $1d
    rra                                           ; $4f97: $1f
    ld sp, hl                                     ; $4f98: $f9
    cp a                                          ; $4f99: $bf
    halt                                          ; $4f9a: $76
    ld a, a                                       ; $4f9b: $7f
    ld l, $3f                                     ; $4f9c: $2e $3f
    ld [bc], a                                    ; $4f9e: $02
    ld a, a                                       ; $4f9f: $7f
    add d                                         ; $4fa0: $82
    daa                                           ; $4fa1: $27
    ccf                                           ; $4fa2: $3f
    ld [bc], a                                    ; $4fa3: $02
    dec a                                         ; $4fa4: $3d
    ld [bc], a                                    ; $4fa5: $02
    inc e                                         ; $4fa6: $1c
    ld [de], a                                    ; $4fa7: $12
    nop                                           ; $4fa8: $00
    add c                                         ; $4fa9: $81
    rrca                                          ; $4faa: $0f
    ld [bc], a                                    ; $4fab: $02
    dec c                                         ; $4fac: $0d
    inc bc                                        ; $4fad: $03
    rrca                                          ; $4fae: $0f
    add h                                         ; $4faf: $84
    rlca                                          ; $4fb0: $07
    rrca                                          ; $4fb1: $0f
    ld a, [bc]                                    ; $4fb2: $0a
    ld c, $02                                     ; $4fb3: $0e $02
    inc c                                         ; $4fb5: $0c
    inc d                                         ; $4fb6: $14
    nop                                           ; $4fb7: $00
    rst $38                                       ; $4fb8: $ff
    rlca                                          ; $4fb9: $07
    ld bc, $08f9                                  ; $4fba: $01 $f9 $08
    ld a, [c]                                     ; $4fbd: $f2
    ld bc, $fcec                                  ; $4fbe: $01 $ec $fc
    add [hl]                                      ; $4fc1: $86
    nop                                           ; $4fc2: $00
    inc [hl]                                      ; $4fc3: $34
    nop                                           ; $4fc4: $00
    ld e, d                                       ; $4fc5: $5a
    nop                                           ; $4fc6: $00
    ld c, c                                       ; $4fc7: $49
    inc bc                                        ; $4fc8: $03
    nop                                           ; $4fc9: $00
    add c                                         ; $4fca: $81
    ld [$0003], sp                                ; $4fcb: $08 $03 $00
    add e                                         ; $4fce: $83
    ld b, b                                       ; $4fcf: $40
    nop                                           ; $4fd0: $00
    db $10                                        ; $4fd1: $10
    ld [bc], a                                    ; $4fd2: $02
    nop                                           ; $4fd3: $00
    add l                                         ; $4fd4: $85
    ld [hl+], a                                   ; $4fd5: $22
    nop                                           ; $4fd6: $00
    inc d                                         ; $4fd7: $14
    nop                                           ; $4fd8: $00
    ld [$0009], sp                                ; $4fd9: $08 $09 $00
    rst $38                                       ; $4fdc: $ff
    dec c                                         ; $4fdd: $0d
    inc b                                         ; $4fde: $04
    ei                                            ; $4fdf: $fb
    dec b                                         ; $4fe0: $05
    rst $30                                       ; $4fe1: $f7
    cp $ec                                        ; $4fe2: $fe $ec
    ld a, [$ffec]                                 ; $4fe4: $fa $ec $ff
    db $fc                                        ; $4fe7: $fc
    ld a, [$fffc]                                 ; $4fe8: $fa $fc $ff
    ld [bc], a                                    ; $4feb: $02
    rrca                                          ; $4fec: $0f
    add d                                         ; $4fed: $82
    ld [de], a                                    ; $4fee: $12
    db $10                                        ; $4fef: $10
    ld [bc], a                                    ; $4ff0: $02
    add hl, hl                                    ; $4ff1: $29
    ld [bc], a                                    ; $4ff2: $02
    dec l                                         ; $4ff3: $2d
    adc h                                         ; $4ff4: $8c
    ccf                                           ; $4ff5: $3f
    ld [hl-], a                                   ; $4ff6: $32
    dec a                                         ; $4ff7: $3d

Call_0de_4ff8:
    inc l                                         ; $4ff8: $2c
    ccf                                           ; $4ff9: $3f
    jr nz, jr_0de_502b                            ; $4ffa: $20 $2f

    ld hl, $131b                                  ; $4ffc: $21 $1b $13
    rra                                           ; $4fff: $1f
    jr jr_0de_5004                                ; $5000: $18 $02

    scf                                           ; $5002: $37
    add d                                         ; $5003: $82

jr_0de_5004:
    ld e, d                                       ; $5004: $5a
    ld a, d                                       ; $5005: $7a
    ld [bc], a                                    ; $5006: $02
    ld a, l                                       ; $5007: $7d
    add [hl]                                      ; $5008: $86
    cp d                                          ; $5009: $ba
    rst $38                                       ; $500a: $ff
    db $fd                                        ; $500b: $fd
    rst $38                                       ; $500c: $ff
    db $fd                                        ; $500d: $fd
    cp a                                          ; $500e: $bf
    ld [bc], a                                    ; $500f: $02
    db $10                                        ; $5010: $10
    add h                                         ; $5011: $84
    jr jr_0de_501c                                ; $5012: $18 $08

    inc c                                         ; $5014: $0c
    inc b                                         ; $5015: $04
    ld [bc], a                                    ; $5016: $02
    inc d                                         ; $5017: $14
    add d                                         ; $5018: $82
    inc e                                         ; $5019: $1c
    inc c                                         ; $501a: $0c
    inc bc                                        ; $501b: $03

jr_0de_501c:
    inc e                                         ; $501c: $1c
    add l                                         ; $501d: $85
    inc b                                         ; $501e: $04
    inc e                                         ; $501f: $1c
    inc b                                         ; $5020: $04
    jr jr_0de_502b                                ; $5021: $18 $08

    ld [bc], a                                    ; $5023: $02
    jr jr_0de_5028                                ; $5024: $18 $02

    inc c                                         ; $5026: $0c
    adc a                                         ; $5027: $8f

jr_0de_5028:
    ld a, [de]                                    ; $5028: $1a
    ld e, $1a                                     ; $5029: $1e $1a

jr_0de_502b:
    ld e, $1d                                     ; $502b: $1e $1d
    rra                                           ; $502d: $1f
    add hl, de                                    ; $502e: $19
    rra                                           ; $502f: $1f
    dec e                                         ; $5030: $1d
    rra                                           ; $5031: $1f
    ld a, [$76bf]                                 ; $5032: $fa $bf $76
    ld a, a                                       ; $5035: $7f
    ld l, $03                                     ; $5036: $2e $03
    ccf                                           ; $5038: $3f
    add d                                         ; $5039: $82
    dec h                                         ; $503a: $25
    dec a                                         ; $503b: $3d
    ld [bc], a                                    ; $503c: $02
    inc a                                         ; $503d: $3c
    inc d                                         ; $503e: $14
    nop                                           ; $503f: $00
    add h                                         ; $5040: $84
    rra                                           ; $5041: $1f
    dec de                                        ; $5042: $1b
    ld a, [de]                                    ; $5043: $1a
    ld e, $02                                     ; $5044: $1e $02
    inc e                                         ; $5046: $1c
    ld [bc], a                                    ; $5047: $02
    jr @+$04                                      ; $5048: $18 $02

    db $10                                        ; $504a: $10
    ld d, $00                                     ; $504b: $16 $00
    rst $38                                       ; $504d: $ff
    rlca                                          ; $504e: $07
    ld bc, $08f9                                  ; $504f: $01 $f9 $08
    ld a, [c]                                     ; $5052: $f2
    ld bc, $fced                                  ; $5053: $01 $ed $fc
    add [hl]                                      ; $5056: $86
    nop                                           ; $5057: $00
    inc [hl]                                      ; $5058: $34
    nop                                           ; $5059: $00
    ld e, d                                       ; $505a: $5a
    nop                                           ; $505b: $00
    ld c, c                                       ; $505c: $49
    inc bc                                        ; $505d: $03
    nop                                           ; $505e: $00
    add c                                         ; $505f: $81
    ld [$0003], sp                                ; $5060: $08 $03 $00
    add e                                         ; $5063: $83
    ld b, b                                       ; $5064: $40
    nop                                           ; $5065: $00
    db $10                                        ; $5066: $10
    ld [bc], a                                    ; $5067: $02
    nop                                           ; $5068: $00
    add l                                         ; $5069: $85
    ld [hl+], a                                   ; $506a: $22
    nop                                           ; $506b: $00
    inc d                                         ; $506c: $14
    nop                                           ; $506d: $00
    ld [$0009], sp                                ; $506e: $08 $09 $00
    rst $38                                       ; $5071: $ff
    dec c                                         ; $5072: $0d
    inc b                                         ; $5073: $04
    ei                                            ; $5074: $fb
    dec b                                         ; $5075: $05
    rst $30                                       ; $5076: $f7
    cp $eb                                        ; $5077: $fe $eb
    ld a, [$ffeb]                                 ; $5079: $fa $eb $ff
    ei                                            ; $507c: $fb
    ld a, [$fffb]                                 ; $507d: $fa $fb $ff
    ld [bc], a                                    ; $5080: $02
    rrca                                          ; $5081: $0f
    add d                                         ; $5082: $82
    inc d                                         ; $5083: $14
    db $10                                        ; $5084: $10
    ld [bc], a                                    ; $5085: $02
    add hl, hl                                    ; $5086: $29
    adc [hl]                                      ; $5087: $8e
    dec hl                                        ; $5088: $2b
    ld a, [hl+]                                   ; $5089: $2a
    ccf                                           ; $508a: $3f
    inc [hl]                                      ; $508b: $34
    ccf                                           ; $508c: $3f
    dec l                                         ; $508d: $2d
    ccf                                           ; $508e: $3f
    jr nz, jr_0de_50d0                            ; $508f: $20 $3f

    ld [hl+], a                                   ; $5091: $22
    rra                                           ; $5092: $1f
    rla                                           ; $5093: $17
    rra                                           ; $5094: $1f
    jr jr_0de_5099                                ; $5095: $18 $02

    scf                                           ; $5097: $37
    adc d                                         ; $5098: $8a

jr_0de_5099:
    ld e, d                                       ; $5099: $5a
    ld a, d                                       ; $509a: $7a
    ld e, l                                       ; $509b: $5d
    ld a, l                                       ; $509c: $7d
    cp d                                          ; $509d: $ba
    rst $38                                       ; $509e: $ff
    sbc l                                         ; $509f: $9d
    rst $38                                       ; $50a0: $ff
    db $fd                                        ; $50a1: $fd
    rst $38                                       ; $50a2: $ff
    ld [bc], a                                    ; $50a3: $02
    db $10                                        ; $50a4: $10
    add h                                         ; $50a5: $84
    jr jr_0de_50b0                                ; $50a6: $18 $08

    inc c                                         ; $50a8: $0c
    inc b                                         ; $50a9: $04
    ld [bc], a                                    ; $50aa: $02
    inc d                                         ; $50ab: $14
    adc d                                         ; $50ac: $8a
    inc e                                         ; $50ad: $1c
    inc c                                         ; $50ae: $0c
    inc e                                         ; $50af: $1c

jr_0de_50b0:
    inc d                                         ; $50b0: $14
    inc e                                         ; $50b1: $1c
    inc b                                         ; $50b2: $04
    inc e                                         ; $50b3: $1c
    inc b                                         ; $50b4: $04
    jr jr_0de_50bf                                ; $50b5: $18 $08

    ld [bc], a                                    ; $50b7: $02
    jr jr_0de_50bc                                ; $50b8: $18 $02

    inc c                                         ; $50ba: $0c
    add a                                         ; $50bb: $87

jr_0de_50bc:
    ld a, [de]                                    ; $50bc: $1a
    ld e, $1a                                     ; $50bd: $1e $1a

jr_0de_50bf:
    ld e, $1d                                     ; $50bf: $1e $1d
    rra                                           ; $50c1: $1f
    add hl, de                                    ; $50c2: $19
    inc bc                                        ; $50c3: $03
    rra                                           ; $50c4: $1f
    add [hl]                                      ; $50c5: $86
    ld a, [$7abf]                                 ; $50c6: $fa $bf $7a
    ld e, a                                       ; $50c9: $5f
    scf                                           ; $50ca: $37
    ccf                                           ; $50cb: $3f
    ld [bc], a                                    ; $50cc: $02

jr_0de_50cd:
    ld a, a                                       ; $50cd: $7f
    add d                                         ; $50ce: $82
    dec h                                         ; $50cf: $25

jr_0de_50d0:
    dec a                                         ; $50d0: $3d
    ld [bc], a                                    ; $50d1: $02
    inc a                                         ; $50d2: $3c
    inc d                                         ; $50d3: $14
    nop                                           ; $50d4: $00
    add d                                         ; $50d5: $82
    rra                                           ; $50d6: $1f
    dec e                                         ; $50d7: $1d
    ld [bc], a                                    ; $50d8: $02
    ld e, $81                                     ; $50d9: $1e $81
    ld c, $03                                     ; $50db: $0e $03
    ld e, $82                                     ; $50dd: $1e $82
    inc c                                         ; $50df: $0c
    inc e                                         ; $50e0: $1c
    ld [bc], a                                    ; $50e1: $02
    jr jr_0de_50f8                                ; $50e2: $18 $14

    nop                                           ; $50e4: $00
    rst $38                                       ; $50e5: $ff
    rlca                                          ; $50e6: $07
    ld bc, $08f9                                  ; $50e7: $01 $f9 $08
    ld a, [c]                                     ; $50ea: $f2
    ld bc, $fcec                                  ; $50eb: $01 $ec $fc
    add [hl]                                      ; $50ee: $86
    nop                                           ; $50ef: $00
    inc l                                         ; $50f0: $2c
    nop                                           ; $50f1: $00
    ld e, d                                       ; $50f2: $5a
    nop                                           ; $50f3: $00
    ld d, c                                       ; $50f4: $51
    inc c                                         ; $50f5: $0c
    nop                                           ; $50f6: $00
    add l                                         ; $50f7: $85

jr_0de_50f8:
    ld [hl+], a                                   ; $50f8: $22
    nop                                           ; $50f9: $00
    inc d                                         ; $50fa: $14
    nop                                           ; $50fb: $00
    ld [$0009], sp                                ; $50fc: $08 $09 $00
    rst $38                                       ; $50ff: $ff
    dec c                                         ; $5100: $0d
    inc b                                         ; $5101: $04
    ei                                            ; $5102: $fb
    dec b                                         ; $5103: $05
    rst $30                                       ; $5104: $f7
    cp $eb                                        ; $5105: $fe $eb
    db $fc                                        ; $5107: $fc
    db $ec                                        ; $5108: $ec
    cp $fb                                        ; $5109: $fe $fb
    ei                                            ; $510b: $fb
    ei                                            ; $510c: $fb
    db $fd                                        ; $510d: $fd
    ld [bc], a                                    ; $510e: $02
    ld a, $92                                     ; $510f: $3e $92
    ld b, l                                       ; $5111: $45
    ld b, c                                       ; $5112: $41
    xor e                                         ; $5113: $ab
    adc e                                         ; $5114: $8b
    rst $18                                       ; $5115: $df
    sub [hl]                                      ; $5116: $96
    rst $18                                       ; $5117: $df
    ret nc                                        ; $5118: $d0

    rst $38                                       ; $5119: $ff
    ld a, [c]                                     ; $511a: $f2
    ld a, a                                       ; $511b: $7f
    ld b, b                                       ; $511c: $40
    ld a, a                                       ; $511d: $7f
    ld h, b                                       ; $511e: $60
    ccf                                           ; $511f: $3f
    inc hl                                        ; $5120: $23
    ccf                                           ; $5121: $3f
    ld sp, $7e02                                  ; $5122: $31 $02 $7e
    adc d                                         ; $5125: $8a
    xor d                                         ; $5126: $aa
    ld a, [$7d6d]                                 ; $5127: $fa $6d $7d
    ld e, e                                       ; $512a: $5b
    ld a, a                                       ; $512b: $7f
    ld c, l                                       ; $512c: $4d
    ld a, a                                       ; $512d: $7f
    ld c, l                                       ; $512e: $4d
    ld a, a                                       ; $512f: $7f
    ld [bc], a                                    ; $5130: $02
    ld [bc], a                                    ; $5131: $02
    ld [bc], a                                    ; $5132: $02
    ld bc, $0206                                  ; $5133: $01 $06 $02
    add d                                         ; $5136: $82
    inc bc                                        ; $5137: $03
    ld bc, $0204                                  ; $5138: $01 $04 $02

jr_0de_513b:
    ld c, $00                                     ; $513b: $0e $00
    add d                                         ; $513d: $82
    db $fc                                        ; $513e: $fc
    sbc h                                         ; $513f: $9c
    ld [bc], a                                    ; $5140: $02
    jr nz, jr_0de_50cd                            ; $5141: $20 $8a

    ld a, a                                       ; $5143: $7f
    ld l, d                                       ; $5144: $6a
    ld a, l                                       ; $5145: $7d
    ld a, a                                       ; $5146: $7f
    ei                                            ; $5147: $fb
    rst $38                                       ; $5148: $ff
    cp a                                          ; $5149: $bf
    rst $38                                       ; $514a: $ff
    ld e, b                                       ; $514b: $58
    ld a, a                                       ; $514c: $7f
    ld [bc], a                                    ; $514d: $02
    ccf                                           ; $514e: $3f
    inc d                                         ; $514f: $14
    nop                                           ; $5150: $00
    add d                                         ; $5151: $82
    inc bc                                        ; $5152: $03
    ld bc, $0204                                  ; $5153: $01 $04 $02
    ld [bc], a                                    ; $5156: $02
    nop                                           ; $5157: $00
    ld [bc], a                                    ; $5158: $02
    ld [bc], a                                    ; $5159: $02
    inc d                                         ; $515a: $14
    nop                                           ; $515b: $00
    rst $38                                       ; $515c: $ff
    rlca                                          ; $515d: $07
    ld bc, $08f9                                  ; $515e: $01 $f9 $08
    ld a, [c]                                     ; $5161: $f2
    ld bc, $fdec                                  ; $5162: $01 $ec $fd
    adc b                                         ; $5165: $88
    nop                                           ; $5166: $00
    ld [hl], h                                    ; $5167: $74
    nop                                           ; $5168: $00
    xor c                                         ; $5169: $a9
    nop                                           ; $516a: $00
    ld b, b                                       ; $516b: $40
    nop                                           ; $516c: $00
    ld b, b                                       ; $516d: $40
    inc c                                         ; $516e: $0c
    nop                                           ; $516f: $00
    add e                                         ; $5170: $83
    ld [$0400], sp                                ; $5171: $08 $00 $04
    add hl, bc                                    ; $5174: $09
    nop                                           ; $5175: $00
    rst $38                                       ; $5176: $ff
    dec c                                         ; $5177: $0d
    inc b                                         ; $5178: $04
    ei                                            ; $5179: $fb
    dec b                                         ; $517a: $05
    rst $30                                       ; $517b: $f7
    cp $eb                                        ; $517c: $fe $eb
    db $fc                                        ; $517e: $fc
    db $ec                                        ; $517f: $ec
    cp $fb                                        ; $5180: $fe $fb
    ei                                            ; $5182: $fb
    ei                                            ; $5183: $fb
    nop                                           ; $5184: $00
    ld [bc], a                                    ; $5185: $02
    ld a, $92                                     ; $5186: $3e $92
    ld c, c                                       ; $5188: $49
    ld b, c                                       ; $5189: $41
    or e                                          ; $518a: $b3
    sub e                                         ; $518b: $93
    rst $18                                       ; $518c: $df
    sbc l                                         ; $518d: $9d
    rst $18                                       ; $518e: $df
    ret nc                                        ; $518f: $d0

    db $fd                                        ; $5190: $fd
    db $e4                                        ; $5191: $e4
    ld a, a                                       ; $5192: $7f
    ld b, b                                       ; $5193: $40
    ld a, a                                       ; $5194: $7f
    ld h, b                                       ; $5195: $60
    ccf                                           ; $5196: $3f
    inc hl                                        ; $5197: $23
    ccf                                           ; $5198: $3f
    ld sp, $7e02                                  ; $5199: $31 $02 $7e
    adc d                                         ; $519c: $8a
    xor d                                         ; $519d: $aa
    ld a, [$7d4d]                                 ; $519e: $fa $4d $7d
    ld e, e                                       ; $51a1: $5b
    ld a, a                                       ; $51a2: $7f
    ld h, l                                       ; $51a3: $65
    ld a, a                                       ; $51a4: $7f
    ld h, a                                       ; $51a5: $67
    ld a, l                                       ; $51a6: $7d
    ld [bc], a                                    ; $51a7: $02
    ld [bc], a                                    ; $51a8: $02
    ld [bc], a                                    ; $51a9: $02
    ld bc, $0206                                  ; $51aa: $01 $06 $02
    add d                                         ; $51ad: $82
    inc bc                                        ; $51ae: $03
    ld bc, $0204                                  ; $51af: $01 $04 $02
    ld c, $00                                     ; $51b2: $0e $00
    add d                                         ; $51b4: $82
    cp $ee                                        ; $51b5: $fe $ee
    ld [bc], a                                    ; $51b7: $02
    jr nz, jr_0de_513b                            ; $51b8: $20 $81

    ld a, l                                       ; $51ba: $7d
    ld [bc], a                                    ; $51bb: $02
    ld a, e                                       ; $51bc: $7b
    add a                                         ; $51bd: $87
    ld a, a                                       ; $51be: $7f
    or a                                          ; $51bf: $b7
    rst $38                                       ; $51c0: $ff
    cp a                                          ; $51c1: $bf
    rst $38                                       ; $51c2: $ff
    ld h, l                                       ; $51c3: $65
    ld a, l                                       ; $51c4: $7d
    ld [bc], a                                    ; $51c5: $02
    inc e                                         ; $51c6: $1c
    inc d                                         ; $51c7: $14
    nop                                           ; $51c8: $00
    ld [bc], a                                    ; $51c9: $02
    jr jr_0de_51ce                                ; $51ca: $18 $02

    ld e, $84                                     ; $51cc: $1e $84

jr_0de_51ce:
    add hl, de                                    ; $51ce: $19
    rra                                           ; $51cf: $1f
    ld d, $1e                                     ; $51d0: $16 $1e
    ld [bc], a                                    ; $51d2: $02
    jr jr_0de_51e9                                ; $51d3: $18 $14

    nop                                           ; $51d5: $00
    rst $38                                       ; $51d6: $ff
    rlca                                          ; $51d7: $07
    ld bc, $08f9                                  ; $51d8: $01 $f9 $08
    ld a, [c]                                     ; $51db: $f2
    ld bc, $fdec                                  ; $51dc: $01 $ec $fd
    adc d                                         ; $51df: $8a
    nop                                           ; $51e0: $00
    ld l, h                                       ; $51e1: $6c
    nop                                           ; $51e2: $00
    sbc c                                         ; $51e3: $99
    nop                                           ; $51e4: $00
    ld b, b                                       ; $51e5: $40
    nop                                           ; $51e6: $00
    ld b, b                                       ; $51e7: $40
    nop                                           ; $51e8: $00

jr_0de_51e9:
    inc b                                         ; $51e9: $04
    ld a, [bc]                                    ; $51ea: $0a
    nop                                           ; $51eb: $00
    add e                                         ; $51ec: $83
    ld [$0400], sp                                ; $51ed: $08 $00 $04
    add hl, bc                                    ; $51f0: $09
    nop                                           ; $51f1: $00
    rst $38                                       ; $51f2: $ff
    dec c                                         ; $51f3: $0d
    inc b                                         ; $51f4: $04
    ei                                            ; $51f5: $fb
    dec b                                         ; $51f6: $05
    rst $30                                       ; $51f7: $f7
    cp $ec                                        ; $51f8: $fe $ec
    db $fc                                        ; $51fa: $fc
    db $ed                                        ; $51fb: $ed
    cp $fc                                        ; $51fc: $fe $fc
    ei                                            ; $51fe: $fb
    db $fc                                        ; $51ff: $fc
    cp $02                                        ; $5200: $fe $02
    ld a, $9e                                     ; $5202: $3e $9e
    ld c, c                                       ; $5204: $49
    ld b, c                                       ; $5205: $41
    or e                                          ; $5206: $b3
    sub e                                         ; $5207: $93
    rst $18                                       ; $5208: $df
    sbc l                                         ; $5209: $9d
    rst $18                                       ; $520a: $df
    ret nc                                        ; $520b: $d0

    db $fd                                        ; $520c: $fd
    db $e4                                        ; $520d: $e4
    ld a, a                                       ; $520e: $7f
    ld b, b                                       ; $520f: $40
    ld a, a                                       ; $5210: $7f
    ld h, b                                       ; $5211: $60
    ccf                                           ; $5212: $3f
    inc hl                                        ; $5213: $23
    ld a, a                                       ; $5214: $7f
    ld [hl], c                                    ; $5215: $71
    cp [hl]                                       ; $5216: $be
    cp $6a                                        ; $5217: $fe $6a
    ld a, d                                       ; $5219: $7a
    ld c, l                                       ; $521a: $4d
    ld a, l                                       ; $521b: $7d
    ld e, e                                       ; $521c: $5b
    ld a, a                                       ; $521d: $7f
    ld c, l                                       ; $521e: $4d
    ld a, a                                       ; $521f: $7f
    rst $20                                       ; $5220: $e7
    db $fd                                        ; $5221: $fd
    ld [bc], a                                    ; $5222: $02
    ld [bc], a                                    ; $5223: $02
    ld [bc], a                                    ; $5224: $02
    ld bc, $0206                                  ; $5225: $01 $06 $02
    add d                                         ; $5228: $82
    inc bc                                        ; $5229: $03
    ld bc, $0204                                  ; $522a: $01 $04 $02

jr_0de_522d:
    ld c, $00                                     ; $522d: $0e $00
    add d                                         ; $522f: $82
    db $fc                                        ; $5230: $fc
    db $ec                                        ; $5231: $ec
    ld [bc], a                                    ; $5232: $02
    ld h, b                                       ; $5233: $60
    adc b                                         ; $5234: $88
    rst $38                                       ; $5235: $ff
    ei                                            ; $5236: $fb
    cp l                                          ; $5237: $bd
    rst $38                                       ; $5238: $ff
    ei                                            ; $5239: $fb
    rst $38                                       ; $523a: $ff
    ld l, a                                       ; $523b: $6f
    ld a, a                                       ; $523c: $7f
    ld [bc], a                                    ; $523d: $02
    jr nc, jr_0de_5256                            ; $523e: $30 $16

    nop                                           ; $5240: $00
    inc b                                         ; $5241: $04
    ld b, $81                                     ; $5242: $06 $81
    ld bc, $0703                                  ; $5244: $01 $03 $07
    ld d, $00                                     ; $5247: $16 $00
    rst $38                                       ; $5249: $ff
    rlca                                          ; $524a: $07
    ld bc, $08f9                                  ; $524b: $01 $f9 $08
    ld a, [c]                                     ; $524e: $f2
    ld bc, $fded                                  ; $524f: $01 $ed $fd
    adc d                                         ; $5252: $8a
    nop                                           ; $5253: $00
    ld l, h                                       ; $5254: $6c
    nop                                           ; $5255: $00

jr_0de_5256:
    sbc c                                         ; $5256: $99
    nop                                           ; $5257: $00
    ld b, b                                       ; $5258: $40
    nop                                           ; $5259: $00
    ld b, b                                       ; $525a: $40
    nop                                           ; $525b: $00
    inc b                                         ; $525c: $04
    ld a, [bc]                                    ; $525d: $0a
    nop                                           ; $525e: $00
    add e                                         ; $525f: $83
    ld [$0400], sp                                ; $5260: $08 $00 $04
    add hl, bc                                    ; $5263: $09
    nop                                           ; $5264: $00
    rst $38                                       ; $5265: $ff
    dec c                                         ; $5266: $0d
    inc b                                         ; $5267: $04
    ei                                            ; $5268: $fb
    dec b                                         ; $5269: $05
    rst $30                                       ; $526a: $f7
    cp $eb                                        ; $526b: $fe $eb
    db $fc                                        ; $526d: $fc
    db $ec                                        ; $526e: $ec
    cp $fb                                        ; $526f: $fe $fb
    ei                                            ; $5271: $fb
    ei                                            ; $5272: $fb
    db $fd                                        ; $5273: $fd
    ld [bc], a                                    ; $5274: $02
    ld a, $92                                     ; $5275: $3e $92
    ld b, l                                       ; $5277: $45
    ld b, c                                       ; $5278: $41
    xor e                                         ; $5279: $ab
    adc e                                         ; $527a: $8b
    rst $18                                       ; $527b: $df
    sub [hl]                                      ; $527c: $96
    rst $18                                       ; $527d: $df
    ret nc                                        ; $527e: $d0

    rst $38                                       ; $527f: $ff
    ld a, [c]                                     ; $5280: $f2
    ld a, a                                       ; $5281: $7f
    ld b, b                                       ; $5282: $40
    ld a, a                                       ; $5283: $7f
    ld h, b                                       ; $5284: $60
    ccf                                           ; $5285: $3f
    inc hl                                        ; $5286: $23
    ccf                                           ; $5287: $3f
    ld sp, $fe02                                  ; $5288: $31 $02 $fe
    adc d                                         ; $528b: $8a
    xor d                                         ; $528c: $aa
    ld a, [$7d4d]                                 ; $528d: $fa $4d $7d
    ld e, e                                       ; $5290: $5b
    ld a, a                                       ; $5291: $7f
    ld c, l                                       ; $5292: $4d
    ld a, a                                       ; $5293: $7f
    ld e, l                                       ; $5294: $5d
    ld a, a                                       ; $5295: $7f
    ld [bc], a                                    ; $5296: $02
    ld [bc], a                                    ; $5297: $02
    ld [bc], a                                    ; $5298: $02
    ld bc, $0206                                  ; $5299: $01 $06 $02
    add d                                         ; $529c: $82
    inc bc                                        ; $529d: $03
    ld bc, $0204                                  ; $529e: $01 $04 $02
    ld c, $00                                     ; $52a1: $0e $00
    add d                                         ; $52a3: $82
    cp [hl]                                       ; $52a4: $be
    cp $02                                        ; $52a5: $fe $02
    jr nz, jr_0de_522d                            ; $52a7: $20 $84

    ld a, a                                       ; $52a9: $7f
    ld h, h                                       ; $52aa: $64
    ld a, [hl]                                    ; $52ab: $7e
    ld a, a                                       ; $52ac: $7f
    ld [bc], a                                    ; $52ad: $02
    rst $38                                       ; $52ae: $ff
    add h                                         ; $52af: $84
    cp [hl]                                       ; $52b0: $be
    rst $38                                       ; $52b1: $ff
    ld e, a                                       ; $52b2: $5f

jr_0de_52b3:
    ld a, a                                       ; $52b3: $7f
    ld [bc], a                                    ; $52b4: $02
    jr c, jr_0de_52cb                             ; $52b5: $38 $14

    nop                                           ; $52b7: $00
    inc b                                         ; $52b8: $04
    inc bc                                        ; $52b9: $03
    ld [bc], a                                    ; $52ba: $02
    ld [bc], a                                    ; $52bb: $02
    ld [bc], a                                    ; $52bc: $02
    inc bc                                        ; $52bd: $03
    ld [bc], a                                    ; $52be: $02
    ld [bc], a                                    ; $52bf: $02
    inc d                                         ; $52c0: $14
    nop                                           ; $52c1: $00
    rst $38                                       ; $52c2: $ff
    rlca                                          ; $52c3: $07
    ld bc, $08f9                                  ; $52c4: $01 $f9 $08
    ld a, [c]                                     ; $52c7: $f2
    ld bc, $fdec                                  ; $52c8: $01 $ec $fd

jr_0de_52cb:
    adc b                                         ; $52cb: $88
    nop                                           ; $52cc: $00
    ld [hl], h                                    ; $52cd: $74
    nop                                           ; $52ce: $00
    xor c                                         ; $52cf: $a9
    nop                                           ; $52d0: $00
    ld b, b                                       ; $52d1: $40
    nop                                           ; $52d2: $00
    ld b, b                                       ; $52d3: $40
    inc c                                         ; $52d4: $0c
    nop                                           ; $52d5: $00
    add e                                         ; $52d6: $83
    ld [$0400], sp                                ; $52d7: $08 $00 $04
    add hl, bc                                    ; $52da: $09
    nop                                           ; $52db: $00
    rst $38                                       ; $52dc: $ff
    dec c                                         ; $52dd: $0d
    inc b                                         ; $52de: $04
    ei                                            ; $52df: $fb
    dec b                                         ; $52e0: $05
    rst $30                                       ; $52e1: $f7
    cp $eb                                        ; $52e2: $fe $eb
    db $fc                                        ; $52e4: $fc
    db $ec                                        ; $52e5: $ec
    cp $fb                                        ; $52e6: $fe $fb
    ei                                            ; $52e8: $fb
    ei                                            ; $52e9: $fb
    nop                                           ; $52ea: $00
    ld [bc], a                                    ; $52eb: $02
    ld a, $92                                     ; $52ec: $3e $92
    ld b, l                                       ; $52ee: $45
    ld b, c                                       ; $52ef: $41
    cp c                                          ; $52f0: $b9
    adc c                                         ; $52f1: $89
    adc a                                         ; $52f2: $8f
    adc [hl]                                      ; $52f3: $8e
    rst $18                                       ; $52f4: $df
    ret c                                         ; $52f5: $d8

    rst $38                                       ; $52f6: $ff
    pop af                                        ; $52f7: $f1
    ld l, a                                       ; $52f8: $6f
    ld b, b                                       ; $52f9: $40
    ld a, a                                       ; $52fa: $7f
    ld h, b                                       ; $52fb: $60
    ccf                                           ; $52fc: $3f
    ld hl, $313f                                  ; $52fd: $21 $3f $31
    ld [bc], a                                    ; $5300: $02
    ld a, [hl]                                    ; $5301: $7e
    adc d                                         ; $5302: $8a
    xor d                                         ; $5303: $aa
    ld a, [$7d4d]                                 ; $5304: $fa $4d $7d
    ld e, e                                       ; $5307: $5b
    ld a, a                                       ; $5308: $7f
    sbc l                                         ; $5309: $9d
    rst $38                                       ; $530a: $ff
    cp l                                          ; $530b: $bd
    rst $38                                       ; $530c: $ff
    ld [bc], a                                    ; $530d: $02
    ld [bc], a                                    ; $530e: $02
    ld [bc], a                                    ; $530f: $02
    ld bc, $0206                                  ; $5310: $01 $06 $02
    add d                                         ; $5313: $82
    inc bc                                        ; $5314: $03
    ld bc, $0204                                  ; $5315: $01 $04 $02
    ld c, $00                                     ; $5318: $0e $00
    add d                                         ; $531a: $82
    ld a, h                                       ; $531b: $7c
    db $fc                                        ; $531c: $fc
    ld [bc], a                                    ; $531d: $02
    ld h, b                                       ; $531e: $60
    adc d                                         ; $531f: $8a
    ld a, a                                       ; $5320: $7f
    ld c, a                                       ; $5321: $4f
    db $fd                                        ; $5322: $fd
    di                                            ; $5323: $f3
    cp l                                          ; $5324: $bd
    rst $38                                       ; $5325: $ff
    cp e                                          ; $5326: $bb
    rst $38                                       ; $5327: $ff
    rst $18                                       ; $5328: $df
    rst $38                                       ; $5329: $ff
    ld [bc], a                                    ; $532a: $02
    dec a                                         ; $532b: $3d
    inc d                                         ; $532c: $14
    nop                                           ; $532d: $00
    ld [bc], a                                    ; $532e: $02
    jr jr_0de_52b3                                ; $532f: $18 $82

    ld [$0218], sp                                ; $5331: $08 $18 $02
    ld e, $82                                     ; $5334: $1e $82
    add hl, de                                    ; $5336: $19
    rra                                           ; $5337: $1f
    ld [bc], a                                    ; $5338: $02
    ld e, $02                                     ; $5339: $1e $02
    jr jr_0de_534f                                ; $533b: $18 $12

    nop                                           ; $533d: $00
    rst $38                                       ; $533e: $ff
    rlca                                          ; $533f: $07
    ld bc, $08f9                                  ; $5340: $01 $f9 $08
    ld a, [c]                                     ; $5343: $f2
    ld bc, $fdec                                  ; $5344: $01 $ec $fd
    adc b                                         ; $5347: $88
    nop                                           ; $5348: $00
    ld [hl], h                                    ; $5349: $74
    nop                                           ; $534a: $00
    adc l                                         ; $534b: $8d
    nop                                           ; $534c: $00
    ldh [rP1], a                                  ; $534d: $e0 $00

jr_0de_534f:
    ld b, b                                       ; $534f: $40
    inc bc                                        ; $5350: $03
    nop                                           ; $5351: $00
    add c                                         ; $5352: $81
    jr nz, jr_0de_535d                            ; $5353: $20 $08

    nop                                           ; $5355: $00
    add e                                         ; $5356: $83
    ld [$0400], sp                                ; $5357: $08 $00 $04
    add hl, bc                                    ; $535a: $09
    nop                                           ; $535b: $00
    rst $38                                       ; $535c: $ff

jr_0de_535d:
    dec c                                         ; $535d: $0d
    inc b                                         ; $535e: $04
    ei                                            ; $535f: $fb
    dec b                                         ; $5360: $05
    rst $30                                       ; $5361: $f7
    cp $ec                                        ; $5362: $fe $ec
    db $fc                                        ; $5364: $fc
    db $ed                                        ; $5365: $ed
    cp $fc                                        ; $5366: $fe $fc
    ei                                            ; $5368: $fb
    db $fc                                        ; $5369: $fc
    cp $02                                        ; $536a: $fe $02
    ld a, $9e                                     ; $536c: $3e $9e
    ld b, l                                       ; $536e: $45
    ld b, c                                       ; $536f: $41
    cp c                                          ; $5370: $b9
    adc c                                         ; $5371: $89
    adc a                                         ; $5372: $8f
    adc [hl]                                      ; $5373: $8e
    rst $18                                       ; $5374: $df
    ret c                                         ; $5375: $d8

    rst $38                                       ; $5376: $ff
    pop af                                        ; $5377: $f1
    ld l, a                                       ; $5378: $6f
    ld b, b                                       ; $5379: $40
    ld a, a                                       ; $537a: $7f
    ld h, b                                       ; $537b: $60
    ccf                                           ; $537c: $3f
    ld hl, $717f                                  ; $537d: $21 $7f $71
    cp [hl]                                       ; $5380: $be
    cp $6a                                        ; $5381: $fe $6a
    ld a, d                                       ; $5383: $7a
    ld c, l                                       ; $5384: $4d
    ld a, l                                       ; $5385: $7d
    ld e, e                                       ; $5386: $5b
    ld a, a                                       ; $5387: $7f
    call $ddff                                    ; $5388: $cd $ff $dd
    rst $38                                       ; $538b: $ff
    ld [bc], a                                    ; $538c: $02
    ld [bc], a                                    ; $538d: $02
    ld [bc], a                                    ; $538e: $02
    ld bc, $0206                                  ; $538f: $01 $06 $02
    add d                                         ; $5392: $82
    inc bc                                        ; $5393: $03
    ld bc, $0204                                  ; $5394: $01 $04 $02
    ld c, $00                                     ; $5397: $0e $00
    add d                                         ; $5399: $82
    cp h                                          ; $539a: $bc
    db $fc                                        ; $539b: $fc
    ld [bc], a                                    ; $539c: $02
    ldh [$88], a                                  ; $539d: $e0 $88
    cp $e7                                        ; $539f: $fe $e7
    cp $f9                                        ; $53a1: $fe $f9
    cp l                                          ; $53a3: $bd
    rst $38                                       ; $53a4: $ff
    cp [hl]                                       ; $53a5: $be
    rst $38                                       ; $53a6: $ff
    ld [bc], a                                    ; $53a7: $02
    ld a, a                                       ; $53a8: $7f
    ld d, $00                                     ; $53a9: $16 $00
    ld [bc], a                                    ; $53ab: $02
    inc b                                         ; $53ac: $04
    inc b                                         ; $53ad: $04
    ld b, $81                                     ; $53ae: $06 $81
    ld bc, $0703                                  ; $53b0: $01 $03 $07
    inc d                                         ; $53b3: $14
    nop                                           ; $53b4: $00
    rst $38                                       ; $53b5: $ff
    rlca                                          ; $53b6: $07
    ld bc, $08f9                                  ; $53b7: $01 $f9 $08
    ld a, [c]                                     ; $53ba: $f2
    ld bc, $fded                                  ; $53bb: $01 $ed $fd
    adc b                                         ; $53be: $88
    nop                                           ; $53bf: $00
    ld [hl], h                                    ; $53c0: $74
    nop                                           ; $53c1: $00
    adc l                                         ; $53c2: $8d
    nop                                           ; $53c3: $00
    ldh [rP1], a                                  ; $53c4: $e0 $00
    ld b, b                                       ; $53c6: $40
    inc bc                                        ; $53c7: $03
    nop                                           ; $53c8: $00
    add c                                         ; $53c9: $81
    jr nz, jr_0de_53d4                            ; $53ca: $20 $08

    nop                                           ; $53cc: $00
    add e                                         ; $53cd: $83
    ld [$0400], sp                                ; $53ce: $08 $00 $04
    add hl, bc                                    ; $53d1: $09
    nop                                           ; $53d2: $00
    rst $38                                       ; $53d3: $ff

jr_0de_53d4:
    dec c                                         ; $53d4: $0d
    inc b                                         ; $53d5: $04
    ei                                            ; $53d6: $fb
    dec b                                         ; $53d7: $05
    rst $30                                       ; $53d8: $f7
    cp $eb                                        ; $53d9: $fe $eb
    db $fc                                        ; $53db: $fc
    db $ec                                        ; $53dc: $ec
    cp $fb                                        ; $53dd: $fe $fb
    ei                                            ; $53df: $fb
    ei                                            ; $53e0: $fb
    db $fd                                        ; $53e1: $fd
    ld [bc], a                                    ; $53e2: $02
    ld a, $92                                     ; $53e3: $3e $92
    ld b, l                                       ; $53e5: $45
    ld b, c                                       ; $53e6: $41
    xor e                                         ; $53e7: $ab
    adc e                                         ; $53e8: $8b
    rst $18                                       ; $53e9: $df
    sub [hl]                                      ; $53ea: $96
    rst $18                                       ; $53eb: $df
    ret nc                                        ; $53ec: $d0

    rst $38                                       ; $53ed: $ff
    ld a, [c]                                     ; $53ee: $f2
    ld a, a                                       ; $53ef: $7f
    ld b, b                                       ; $53f0: $40
    ld a, a                                       ; $53f1: $7f
    ld h, b                                       ; $53f2: $60
    ccf                                           ; $53f3: $3f
    inc hl                                        ; $53f4: $23
    ccf                                           ; $53f5: $3f
    ld sp, $fe02                                  ; $53f6: $31 $02 $fe
    adc d                                         ; $53f9: $8a
    xor d                                         ; $53fa: $aa
    ld a, [$7d4d]                                 ; $53fb: $fa $4d $7d
    ld e, e                                       ; $53fe: $5b
    ld a, a                                       ; $53ff: $7f
    ld c, l                                       ; $5400: $4d
    ld a, a                                       ; $5401: $7f
    ld l, l                                       ; $5402: $6d
    ld a, a                                       ; $5403: $7f
    ld [bc], a                                    ; $5404: $02
    ld [bc], a                                    ; $5405: $02
    ld [bc], a                                    ; $5406: $02
    ld bc, $0206                                  ; $5407: $01 $06 $02
    add d                                         ; $540a: $82
    inc bc                                        ; $540b: $03
    ld bc, $0204                                  ; $540c: $01 $04 $02
    ld c, $00                                     ; $540f: $0e $00
    add d                                         ; $5411: $82
    cp $d2                                        ; $5412: $fe $d2
    ld [bc], a                                    ; $5414: $02
    ld h, b                                       ; $5415: $60
    adc d                                         ; $5416: $8a
    ld a, e                                       ; $5417: $7b
    ld [hl], a                                    ; $5418: $77
    db $fd                                        ; $5419: $fd
    rst $38                                       ; $541a: $ff
    cp d                                          ; $541b: $ba
    rst $38                                       ; $541c: $ff
    cp a                                          ; $541d: $bf
    rst $38                                       ; $541e: $ff
    ld a, b                                       ; $541f: $78
    ld a, a                                       ; $5420: $7f
    ld [bc], a                                    ; $5421: $02
    ccf                                           ; $5422: $3f
    inc d                                         ; $5423: $14
    nop                                           ; $5424: $00
    ld [bc], a                                    ; $5425: $02
    inc bc                                        ; $5426: $03
    ld a, [bc]                                    ; $5427: $0a
    ld [bc], a                                    ; $5428: $02
    ld [de], a                                    ; $5429: $12
    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    rlca                                          ; $542c: $07
    ld bc, $08f9                                  ; $542d: $01 $f9 $08
    ld a, [c]                                     ; $5430: $f2
    ld bc, $fdec                                  ; $5431: $01 $ec $fd
    adc b                                         ; $5434: $88
    nop                                           ; $5435: $00
    ld [hl], h                                    ; $5436: $74
    nop                                           ; $5437: $00
    xor c                                         ; $5438: $a9
    nop                                           ; $5439: $00
    ld b, b                                       ; $543a: $40
    nop                                           ; $543b: $00
    ld b, b                                       ; $543c: $40
    inc c                                         ; $543d: $0c
    nop                                           ; $543e: $00
    add e                                         ; $543f: $83
    ld [$0400], sp                                ; $5440: $08 $00 $04
    add hl, bc                                    ; $5443: $09
    nop                                           ; $5444: $00
    rst $38                                       ; $5445: $ff
    dec c                                         ; $5446: $0d
    inc b                                         ; $5447: $04
    ld hl, sp+$00                                 ; $5448: $f8 $00
    db $f4                                        ; $544a: $f4
    inc bc                                        ; $544b: $03
    db $eb                                        ; $544c: $eb
    cp $ec                                        ; $544d: $fe $ec
    ld b, $f2                                     ; $544f: $06 $f2
    add hl, bc                                    ; $5451: $09
    ei                                            ; $5452: $fb
    db $fc                                        ; $5453: $fc
    ld [bc], a                                    ; $5454: $02
    rra                                           ; $5455: $1f
    sub d                                         ; $5456: $92
    ld [hl+], a                                   ; $5457: $22
    jr nz, jr_0de_54af                            ; $5458: $20 $55

    ld b, l                                       ; $545a: $45
    ld l, a                                       ; $545b: $6f
    ld c, e                                       ; $545c: $4b
    ld l, a                                       ; $545d: $6f
    ld l, b                                       ; $545e: $68
    ld a, l                                       ; $545f: $7d
    ld a, c                                       ; $5460: $79
    ccf                                           ; $5461: $3f
    jr nz, jr_0de_54a3                            ; $5462: $20 $3f

    jr nc, jr_0de_5485                            ; $5464: $30 $1f

    ld de, $383f                                  ; $5466: $11 $3f $38
    ld [bc], a                                    ; $5469: $02
    ld l, a                                       ; $546a: $6f
    adc d                                         ; $546b: $8a
    or l                                          ; $546c: $b5
    push af                                       ; $546d: $f5
    cp e                                          ; $546e: $bb
    ei                                            ; $546f: $fb
    sub a                                         ; $5470: $97
    db $fc                                        ; $5471: $fc
    xor a                                         ; $5472: $af
    ld sp, hl                                     ; $5473: $f9
    add $fe                                       ; $5474: $c6 $fe
    ld [bc], a                                    ; $5476: $02
    ret nz                                        ; $5477: $c0

    ld [bc], a                                    ; $5478: $02
    and b                                         ; $5479: $a0
    sub d                                         ; $547a: $92
    ret nz                                        ; $547b: $c0

    ld b, b                                       ; $547c: $40
    ret nz                                        ; $547d: $c0

    ld b, b                                       ; $547e: $40
    ret nz                                        ; $547f: $c0

    ld b, b                                       ; $5480: $40
    ldh [rNR41], a                                ; $5481: $e0 $20
    push bc                                       ; $5483: $c5
    ld b, l                                       ; $5484: $45

jr_0de_5485:
    rst $08                                       ; $5485: $cf
    jp z, $949f                                   ; $5486: $ca $9f $94

    cp a                                          ; $5489: $bf
    xor c                                         ; $548a: $a9
    ld h, b                                       ; $548b: $60
    ldh [rSC], a                                  ; $548c: $e0 $02
    nop                                           ; $548e: $00
    ld [bc], a                                    ; $548f: $02
    add b                                         ; $5490: $80
    ld b, $00                                     ; $5491: $06 $00
    ld [bc], a                                    ; $5493: $02
    inc b                                         ; $5494: $04
    add [hl]                                      ; $5495: $86
    ld b, $02                                     ; $5496: $06 $02
    dec b                                         ; $5498: $05
    rlca                                          ; $5499: $07
    ld [bc], a                                    ; $549a: $02
    ld b, $18                                     ; $549b: $06 $18
    nop                                           ; $549d: $00
    ld [bc], a                                    ; $549e: $02
    ld a, $04                                     ; $549f: $3e $04
    ld [hl], b                                    ; $54a1: $70
    add [hl]                                      ; $54a2: $86

jr_0de_54a3:
    or b                                          ; $54a3: $b0
    ldh a, [$b0]                                  ; $54a4: $f0 $b0
    ldh a, [rBCPS]                                ; $54a6: $f0 $68
    ld a, b                                       ; $54a8: $78
    ld [bc], a                                    ; $54a9: $02
    jr nc, jr_0de_54be                            ; $54aa: $30 $12

    nop                                           ; $54ac: $00
    rst $38                                       ; $54ad: $ff
    rlca                                          ; $54ae: $07

jr_0de_54af:
    ld bc, $00f8                                  ; $54af: $01 $f8 $00
    db $f4                                        ; $54b2: $f4
    inc bc                                        ; $54b3: $03
    db $ec                                        ; $54b4: $ec
    nop                                           ; $54b5: $00
    adc d                                         ; $54b6: $8a
    nop                                           ; $54b7: $00
    ld [hl], h                                    ; $54b8: $74
    nop                                           ; $54b9: $00
    xor c                                         ; $54ba: $a9
    nop                                           ; $54bb: $00
    ld b, b                                       ; $54bc: $40
    nop                                           ; $54bd: $00

jr_0de_54be:
    ld b, b                                       ; $54be: $40
    nop                                           ; $54bf: $00
    ld [$0008], sp                                ; $54c0: $08 $08 $00
    add l                                         ; $54c3: $85
    ld b, b                                       ; $54c4: $40
    nop                                           ; $54c5: $00
    jr z, jr_0de_54c8                             ; $54c6: $28 $00

jr_0de_54c8:
    db $10                                        ; $54c8: $10
    add hl, bc                                    ; $54c9: $09
    nop                                           ; $54ca: $00
    rst $38                                       ; $54cb: $ff
    dec c                                         ; $54cc: $0d
    inc b                                         ; $54cd: $04
    ld hl, sp+$00                                 ; $54ce: $f8 $00
    db $f4                                        ; $54d0: $f4
    inc bc                                        ; $54d1: $03
    db $eb                                        ; $54d2: $eb
    cp $ec                                        ; $54d3: $fe $ec
    ld b, $f2                                     ; $54d5: $06 $f2
    add hl, bc                                    ; $54d7: $09
    ei                                            ; $54d8: $fb
    db $fc                                        ; $54d9: $fc
    ld [bc], a                                    ; $54da: $02
    rra                                           ; $54db: $1f
    add d                                         ; $54dc: $82
    dec h                                         ; $54dd: $25
    jr nz, jr_0de_54e2                            ; $54de: $20 $02

    ld d, d                                       ; $54e0: $52
    ld [bc], a                                    ; $54e1: $02

jr_0de_54e2:
    ld e, e                                       ; $54e2: $5b
    adc h                                         ; $54e3: $8c
    ld a, [hl]                                    ; $54e4: $7e
    ld l, h                                       ; $54e5: $6c
    ld a, e                                       ; $54e6: $7b
    ld e, c                                       ; $54e7: $59
    ld a, a                                       ; $54e8: $7f
    ld b, b                                       ; $54e9: $40
    ld e, a                                       ; $54ea: $5f
    ld b, d                                       ; $54eb: $42
    scf                                           ; $54ec: $37
    ld h, $3f                                     ; $54ed: $26 $3f
    ld sp, $7f02                                  ; $54ef: $31 $02 $7f
    adc d                                         ; $54f2: $8a
    or l                                          ; $54f3: $b5
    push af                                       ; $54f4: $f5
    cp e                                          ; $54f5: $bb
    ei                                            ; $54f6: $fb
    sub a                                         ; $54f7: $97
    db $fc                                        ; $54f8: $fc
    xor a                                         ; $54f9: $af
    ld sp, hl                                     ; $54fa: $f9
    add $fe                                       ; $54fb: $c6 $fe
    ld [bc], a                                    ; $54fd: $02
    add b                                         ; $54fe: $80
    add c                                         ; $54ff: $81
    ret nz                                        ; $5500: $c0

    inc bc                                        ; $5501: $03
    ld b, b                                       ; $5502: $40
    dec b                                         ; $5503: $05
    ret nz                                        ; $5504: $c0

    adc e                                         ; $5505: $8b
    ld b, b                                       ; $5506: $40
    push bc                                       ; $5507: $c5
    ld b, l                                       ; $5508: $45
    adc a                                         ; $5509: $8f
    adc d                                         ; $550a: $8a
    rra                                           ; $550b: $1f
    inc d                                         ; $550c: $14
    cp a                                          ; $550d: $bf
    xor c                                         ; $550e: $a9
    ld h, b                                       ; $550f: $60
    ldh [rSC], a                                  ; $5510: $e0 $02
    nop                                           ; $5512: $00
    ld [bc], a                                    ; $5513: $02
    add b                                         ; $5514: $80
    ld b, $00                                     ; $5515: $06 $00
    ld [bc], a                                    ; $5517: $02
    inc b                                         ; $5518: $04
    add [hl]                                      ; $5519: $86
    ld b, $02                                     ; $551a: $06 $02
    dec b                                         ; $551c: $05
    rlca                                          ; $551d: $07
    ld [bc], a                                    ; $551e: $02
    ld b, $18                                     ; $551f: $06 $18
    nop                                           ; $5521: $00
    ld [bc], a                                    ; $5522: $02
    ld a, $04                                     ; $5523: $3e $04
    ld [hl], b                                    ; $5525: $70
    add [hl]                                      ; $5526: $86
    or b                                          ; $5527: $b0
    ldh a, [$b0]                                  ; $5528: $f0 $b0
    ldh a, [rBCPS]                                ; $552a: $f0 $68
    ld a, b                                       ; $552c: $78
    ld [bc], a                                    ; $552d: $02
    jr nc, jr_0de_5542                            ; $552e: $30 $12

    nop                                           ; $5530: $00
    rst $38                                       ; $5531: $ff
    rlca                                          ; $5532: $07
    ld bc, $00f8                                  ; $5533: $01 $f8 $00
    db $f4                                        ; $5536: $f4
    inc bc                                        ; $5537: $03
    db $ec                                        ; $5538: $ec
    rst $38                                       ; $5539: $ff
    adc d                                         ; $553a: $8a
    nop                                           ; $553b: $00
    inc [hl]                                      ; $553c: $34
    nop                                           ; $553d: $00
    ld e, d                                       ; $553e: $5a
    nop                                           ; $553f: $00
    ld c, c                                       ; $5540: $49
    nop                                           ; $5541: $00

jr_0de_5542:
    ld [bc], a                                    ; $5542: $02
    nop                                           ; $5543: $00
    ld [$0003], sp                                ; $5544: $08 $03 $00
    add e                                         ; $5547: $83
    ld b, b                                       ; $5548: $40
    nop                                           ; $5549: $00
    db $10                                        ; $554a: $10
    inc b                                         ; $554b: $04
    nop                                           ; $554c: $00
    add e                                         ; $554d: $83
    inc d                                         ; $554e: $14
    nop                                           ; $554f: $00
    ld [$0009], sp                                ; $5550: $08 $09 $00
    rst $38                                       ; $5553: $ff
    dec c                                         ; $5554: $0d
    inc b                                         ; $5555: $04
    ld hl, sp+$00                                 ; $5556: $f8 $00
    db $f4                                        ; $5558: $f4
    inc bc                                        ; $5559: $03
    db $eb                                        ; $555a: $eb
    cp $ec                                        ; $555b: $fe $ec
    ld b, $f2                                     ; $555d: $06 $f2
    add hl, bc                                    ; $555f: $09
    ei                                            ; $5560: $fb
    db $fc                                        ; $5561: $fc
    ld [bc], a                                    ; $5562: $02
    rra                                           ; $5563: $1f
    add d                                         ; $5564: $82
    dec h                                         ; $5565: $25
    jr nz, jr_0de_556a                            ; $5566: $20 $02

    ld d, d                                       ; $5568: $52
    ld [bc], a                                    ; $5569: $02

jr_0de_556a:
    ld e, e                                       ; $556a: $5b
    adc h                                         ; $556b: $8c
    ld a, [hl]                                    ; $556c: $7e
    ld l, h                                       ; $556d: $6c
    ld a, e                                       ; $556e: $7b
    ld e, c                                       ; $556f: $59
    ld a, a                                       ; $5570: $7f
    ld b, b                                       ; $5571: $40
    ld e, a                                       ; $5572: $5f
    ld b, d                                       ; $5573: $42
    scf                                           ; $5574: $37
    ld h, $3f                                     ; $5575: $26 $3f
    ld sp, $7f02                                  ; $5577: $31 $02 $7f
    adc d                                         ; $557a: $8a
    or l                                          ; $557b: $b5
    push af                                       ; $557c: $f5
    cp e                                          ; $557d: $bb
    ei                                            ; $557e: $fb
    sbc e                                         ; $557f: $9b
    cp $c7                                        ; $5580: $fe $c7
    db $fc                                        ; $5582: $fc
    rst $20                                       ; $5583: $e7
    rst $38                                       ; $5584: $ff
    ld [bc], a                                    ; $5585: $02
    add b                                         ; $5586: $80
    add c                                         ; $5587: $81
    ret nz                                        ; $5588: $c0

    inc bc                                        ; $5589: $03
    ld b, b                                       ; $558a: $40
    dec b                                         ; $558b: $05
    ret nz                                        ; $558c: $c0

    adc e                                         ; $558d: $8b
    ld b, b                                       ; $558e: $40
    push bc                                       ; $558f: $c5
    ld b, l                                       ; $5590: $45
    adc a                                         ; $5591: $8f
    adc d                                         ; $5592: $8a
    rra                                           ; $5593: $1f
    inc d                                         ; $5594: $14
    cp a                                          ; $5595: $bf
    xor c                                         ; $5596: $a9
    ld h, b                                       ; $5597: $60
    ldh [rSC], a                                  ; $5598: $e0 $02
    add b                                         ; $559a: $80
    add h                                         ; $559b: $84
    ret nz                                        ; $559c: $c0

    ld b, b                                       ; $559d: $40
    ret nz                                        ; $559e: $c0

    ld b, b                                       ; $559f: $40
    ld [bc], a                                    ; $55a0: $02
    add b                                         ; $55a1: $80
    ld [bc], a                                    ; $55a2: $02
    nop                                           ; $55a3: $00
    ld [bc], a                                    ; $55a4: $02
    inc b                                         ; $55a5: $04
    add [hl]                                      ; $55a6: $86
    ld b, $02                                     ; $55a7: $06 $02
    dec b                                         ; $55a9: $05
    rlca                                          ; $55aa: $07
    ld [bc], a                                    ; $55ab: $02
    ld b, $18                                     ; $55ac: $06 $18
    nop                                           ; $55ae: $00
    ld [bc], a                                    ; $55af: $02
    ld a, $04                                     ; $55b0: $3e $04
    ld [hl], b                                    ; $55b2: $70
    add [hl]                                      ; $55b3: $86
    or b                                          ; $55b4: $b0
    ldh a, [$b0]                                  ; $55b5: $f0 $b0
    ldh a, [rBCPS]                                ; $55b7: $f0 $68
    ld a, b                                       ; $55b9: $78
    ld [bc], a                                    ; $55ba: $02
    jr nc, jr_0de_55cf                            ; $55bb: $30 $12

    nop                                           ; $55bd: $00
    rst $38                                       ; $55be: $ff
    rlca                                          ; $55bf: $07
    ld bc, $00f8                                  ; $55c0: $01 $f8 $00
    db $f4                                        ; $55c3: $f4
    inc bc                                        ; $55c4: $03
    db $ec                                        ; $55c5: $ec
    rst $38                                       ; $55c6: $ff
    adc d                                         ; $55c7: $8a
    nop                                           ; $55c8: $00
    inc [hl]                                      ; $55c9: $34
    nop                                           ; $55ca: $00
    ld e, d                                       ; $55cb: $5a
    nop                                           ; $55cc: $00
    ld c, c                                       ; $55cd: $49
    nop                                           ; $55ce: $00

jr_0de_55cf:
    ld [bc], a                                    ; $55cf: $02
    nop                                           ; $55d0: $00
    ld [$0003], sp                                ; $55d1: $08 $03 $00
    add e                                         ; $55d4: $83
    ld b, b                                       ; $55d5: $40
    nop                                           ; $55d6: $00
    db $10                                        ; $55d7: $10
    inc b                                         ; $55d8: $04
    nop                                           ; $55d9: $00
    add e                                         ; $55da: $83
    inc d                                         ; $55db: $14
    nop                                           ; $55dc: $00
    ld [$0009], sp                                ; $55dd: $08 $09 $00
    rst $38                                       ; $55e0: $ff
    dec c                                         ; $55e1: $0d
    inc b                                         ; $55e2: $04
    ld hl, sp+$00                                 ; $55e3: $f8 $00
    db $f4                                        ; $55e5: $f4
    inc bc                                        ; $55e6: $03
    db $eb                                        ; $55e7: $eb
    cp $ec                                        ; $55e8: $fe $ec
    ld b, $f2                                     ; $55ea: $06 $f2
    add hl, bc                                    ; $55ec: $09
    ei                                            ; $55ed: $fb
    db $fc                                        ; $55ee: $fc
    ld [bc], a                                    ; $55ef: $02
    rra                                           ; $55f0: $1f
    add d                                         ; $55f1: $82
    dec h                                         ; $55f2: $25
    jr nz, jr_0de_55f7                            ; $55f3: $20 $02

    ld d, d                                       ; $55f5: $52
    ld [bc], a                                    ; $55f6: $02

jr_0de_55f7:
    ld e, e                                       ; $55f7: $5b
    adc h                                         ; $55f8: $8c
    ld a, [hl]                                    ; $55f9: $7e
    ld l, h                                       ; $55fa: $6c
    ld a, e                                       ; $55fb: $7b
    ld e, c                                       ; $55fc: $59
    ld a, a                                       ; $55fd: $7f
    ld b, b                                       ; $55fe: $40
    ld e, a                                       ; $55ff: $5f

Jump_0de_5600:
    ld b, d                                       ; $5600: $42
    scf                                           ; $5601: $37
    ld h, $3f                                     ; $5602: $26 $3f
    ld sp, $7f02                                  ; $5604: $31 $02 $7f
    adc d                                         ; $5607: $8a
    or l                                          ; $5608: $b5
    push af                                       ; $5609: $f5
    cp a                                          ; $560a: $bf
    rst $38                                       ; $560b: $ff
    ret                                           ; $560c: $c9


    cp $d3                                        ; $560d: $fe $d3
    cp $e3                                        ; $560f: $fe $e3
    rst $38                                       ; $5611: $ff
    ld [bc], a                                    ; $5612: $02
    add b                                         ; $5613: $80
    add c                                         ; $5614: $81
    ret nz                                        ; $5615: $c0

    inc bc                                        ; $5616: $03
    ld b, b                                       ; $5617: $40
    dec b                                         ; $5618: $05
    ret nz                                        ; $5619: $c0

    adc e                                         ; $561a: $8b
    ld b, b                                       ; $561b: $40
    push bc                                       ; $561c: $c5
    ld b, l                                       ; $561d: $45
    adc a                                         ; $561e: $8f
    adc d                                         ; $561f: $8a
    rra                                           ; $5620: $1f
    inc d                                         ; $5621: $14
    cp a                                          ; $5622: $bf
    xor c                                         ; $5623: $a9
    ld h, b                                       ; $5624: $60
    ldh [rSC], a                                  ; $5625: $e0 $02
    ret nz                                        ; $5627: $c0

    add h                                         ; $5628: $84
    ldh [rNR41], a                                ; $5629: $e0 $20
    ret nz                                        ; $562b: $c0

    ld b, b                                       ; $562c: $40
    ld [bc], a                                    ; $562d: $02
    add b                                         ; $562e: $80
    ld [bc], a                                    ; $562f: $02
    nop                                           ; $5630: $00
    ld [bc], a                                    ; $5631: $02
    inc b                                         ; $5632: $04
    add [hl]                                      ; $5633: $86
    ld b, $02                                     ; $5634: $06 $02
    dec b                                         ; $5636: $05
    rlca                                          ; $5637: $07
    ld [bc], a                                    ; $5638: $02
    ld b, $18                                     ; $5639: $06 $18
    nop                                           ; $563b: $00
    ld [bc], a                                    ; $563c: $02
    ccf                                           ; $563d: $3f
    inc b                                         ; $563e: $04
    ld [hl], b                                    ; $563f: $70
    add [hl]                                      ; $5640: $86
    or b                                          ; $5641: $b0
    ldh a, [$b0]                                  ; $5642: $f0 $b0
    ldh a, [rBCPS]                                ; $5644: $f0 $68
    ld a, b                                       ; $5646: $78
    ld [bc], a                                    ; $5647: $02
    jr nc, jr_0de_565c                            ; $5648: $30 $12

    nop                                           ; $564a: $00
    rst $38                                       ; $564b: $ff
    rlca                                          ; $564c: $07
    ld bc, $00f8                                  ; $564d: $01 $f8 $00
    db $f4                                        ; $5650: $f4
    inc bc                                        ; $5651: $03
    db $ec                                        ; $5652: $ec
    rst $38                                       ; $5653: $ff
    adc d                                         ; $5654: $8a
    nop                                           ; $5655: $00
    inc [hl]                                      ; $5656: $34
    nop                                           ; $5657: $00
    ld e, d                                       ; $5658: $5a
    nop                                           ; $5659: $00
    ld c, c                                       ; $565a: $49
    nop                                           ; $565b: $00

jr_0de_565c:
    ld [bc], a                                    ; $565c: $02
    nop                                           ; $565d: $00
    ld [$0003], sp                                ; $565e: $08 $03 $00
    add e                                         ; $5661: $83
    ld b, b                                       ; $5662: $40
    nop                                           ; $5663: $00
    db $10                                        ; $5664: $10
    inc b                                         ; $5665: $04
    nop                                           ; $5666: $00
    add c                                         ; $5667: $81
    inc d                                         ; $5668: $14
    dec bc                                        ; $5669: $0b
    nop                                           ; $566a: $00
    rst $38                                       ; $566b: $ff
    rrca                                          ; $566c: $0f
    dec b                                         ; $566d: $05
    ld hl, sp+$00                                 ; $566e: $f8 $00
    db $f4                                        ; $5670: $f4
    inc bc                                        ; $5671: $03
    ld [$eafe], a                                 ; $5672: $ea $fe $ea
    ld b, $f2                                     ; $5675: $06 $f2
    add hl, bc                                    ; $5677: $09
    ld a, [$fafc]                                 ; $5678: $fa $fc $fa
    db $fd                                        ; $567b: $fd
    ld [bc], a                                    ; $567c: $02
    inc c                                         ; $567d: $0c
    ld [bc], a                                    ; $567e: $02
    rla                                           ; $567f: $17
    ld [bc], a                                    ; $5680: $02
    ld h, h                                       ; $5681: $64
    ld [bc], a                                    ; $5682: $02
    ld d, [hl]                                    ; $5683: $56
    adc [hl]                                      ; $5684: $8e
    cp [hl]                                       ; $5685: $be
    ld hl, sp+$7f                                 ; $5686: $f8 $7f
    ld h, l                                       ; $5688: $65
    ei                                            ; $5689: $fb
    reti                                          ; $568a: $d9


    ld a, a                                       ; $568b: $7f
    ld b, b                                       ; $568c: $40
    ld e, e                                       ; $568d: $5b
    ld b, d                                       ; $568e: $42
    ccf                                           ; $568f: $3f
    ld l, $3f                                     ; $5690: $2e $3f
    ld sp, $7f02                                  ; $5692: $31 $02 $7f
    adc b                                         ; $5695: $88
    or l                                          ; $5696: $b5
    rst $38                                       ; $5697: $ff
    cp e                                          ; $5698: $bb
    rst $38                                       ; $5699: $ff
    xor a                                         ; $569a: $af
    db $fc                                        ; $569b: $fc
    sub a                                         ; $569c: $97
    ld sp, hl                                     ; $569d: $f9
    ld [bc], a                                    ; $569e: $02
    add b                                         ; $569f: $80
    ld [bc], a                                    ; $56a0: $02
    ld b, b                                       ; $56a1: $40
    ld [bc], a                                    ; $56a2: $02
    ret nz                                        ; $56a3: $c0

    ld [bc], a                                    ; $56a4: $02
    and b                                         ; $56a5: $a0
    inc bc                                        ; $56a6: $03
    ret nz                                        ; $56a7: $c0

    add c                                         ; $56a8: $81
    ld b, b                                       ; $56a9: $40
    inc bc                                        ; $56aa: $03
    ret nz                                        ; $56ab: $c0

    add c                                         ; $56ac: $81
    ld b, b                                       ; $56ad: $40
    ld [bc], a                                    ; $56ae: $02
    ld b, l                                       ; $56af: $45
    adc b                                         ; $56b0: $88
    adc a                                         ; $56b1: $8f
    adc d                                         ; $56b2: $8a
    rra                                           ; $56b3: $1f
    inc d                                         ; $56b4: $14
    cp a                                          ; $56b5: $bf
    xor c                                         ; $56b6: $a9
    ld h, b                                       ; $56b7: $60
    ldh [rSC], a                                  ; $56b8: $e0 $02
    nop                                           ; $56ba: $00
    ld [bc], a                                    ; $56bb: $02
    add b                                         ; $56bc: $80
    ld [bc], a                                    ; $56bd: $02
    nop                                           ; $56be: $00
    ld [bc], a                                    ; $56bf: $02
    inc b                                         ; $56c0: $04
    add [hl]                                      ; $56c1: $86
    ld b, $02                                     ; $56c2: $06 $02
    dec b                                         ; $56c4: $05
    rlca                                          ; $56c5: $07
    ld [bc], a                                    ; $56c6: $02
    ld b, $18                                     ; $56c7: $06 $18
    nop                                           ; $56c9: $00
    add d                                         ; $56ca: $82
    inc sp                                        ; $56cb: $33
    ccf                                           ; $56cc: $3f
    ld [bc], a                                    ; $56cd: $02
    ld a, $02                                     ; $56ce: $3e $02
    ld a, b                                       ; $56d0: $78
    ld [bc], a                                    ; $56d1: $02
    ld [hl], b                                    ; $56d2: $70
    add [hl]                                      ; $56d3: $86
    or b                                          ; $56d4: $b0
    ldh a, [$b0]                                  ; $56d5: $f0 $b0
    ldh a, [rBCPS]                                ; $56d7: $f0 $68
    ld a, b                                       ; $56d9: $78
    ld [bc], a                                    ; $56da: $02
    jr nc, jr_0de_56ed                            ; $56db: $30 $10

    nop                                           ; $56dd: $00
    ld [bc], a                                    ; $56de: $02
    ld bc, $001e                                  ; $56df: $01 $1e $00
    rst $38                                       ; $56e2: $ff
    rlca                                          ; $56e3: $07
    ld bc, $00f8                                  ; $56e4: $01 $f8 $00
    db $f4                                        ; $56e7: $f4
    inc bc                                        ; $56e8: $03
    db $eb                                        ; $56e9: $eb
    nop                                           ; $56ea: $00
    ld [bc], a                                    ; $56eb: $02
    ld [hl+], a                                   ; $56ec: $22

jr_0de_56ed:
    add h                                         ; $56ed: $84
    inc h                                         ; $56ee: $24
    ld l, h                                       ; $56ef: $6c
    add b                                         ; $56f0: $80
    and l                                         ; $56f1: $a5
    ld [bc], a                                    ; $56f2: $02
    inc b                                         ; $56f3: $04
    ld [bc], a                                    ; $56f4: $02
    nop                                           ; $56f5: $00
    ld [bc], a                                    ; $56f6: $02
    db $10                                        ; $56f7: $10
    ld [bc], a                                    ; $56f8: $02
    nop                                           ; $56f9: $00
    ld [bc], a                                    ; $56fa: $02
    sub d                                         ; $56fb: $92
    stop                                          ; $56fc: $10 $00
    rst $38                                       ; $56fe: $ff
    rrca                                          ; $56ff: $0f
    dec b                                         ; $5700: $05
    ld hl, sp+$00                                 ; $5701: $f8 $00
    db $f4                                        ; $5703: $f4
    inc bc                                        ; $5704: $03
    ld [$ebfe], a                                 ; $5705: $ea $fe $eb
    ld b, $f3                                     ; $5708: $06 $f3
    ld a, [bc]                                    ; $570a: $0a
    ld a, [$fafc]                                 ; $570b: $fa $fc $fa
    db $fd                                        ; $570e: $fd
    ld [bc], a                                    ; $570f: $02
    add hl, de                                    ; $5710: $19
    ld [bc], a                                    ; $5711: $02
    ld d, [hl]                                    ; $5712: $56
    sub d                                         ; $5713: $92
    ld h, h                                       ; $5714: $64
    halt                                          ; $5715: $76
    ld d, a                                       ; $5716: $57
    ld e, a                                       ; $5717: $5f
    cp [hl]                                       ; $5718: $be
    ld sp, hl                                     ; $5719: $f9
    ld a, a                                       ; $571a: $7f
    ld h, l                                       ; $571b: $65
    ei                                            ; $571c: $fb
    db $dd                                        ; $571d: $dd
    ld a, a                                       ; $571e: $7f
    ld b, b                                       ; $571f: $40
    ld e, a                                       ; $5720: $5f
    ld h, d                                       ; $5721: $62
    ccf                                           ; $5722: $3f
    ld l, $3f                                     ; $5723: $2e $3f
    ld sp, $7f02                                  ; $5725: $31 $02 $7f
    adc b                                         ; $5728: $88
    or l                                          ; $5729: $b5
    rst $38                                       ; $572a: $ff
    cp e                                          ; $572b: $bb
    rst $38                                       ; $572c: $ff
    xor a                                         ; $572d: $af
    db $fc                                        ; $572e: $fc
    sub a                                         ; $572f: $97
    ld sp, hl                                     ; $5730: $f9
    ld [bc], a                                    ; $5731: $02
    add b                                         ; $5732: $80
    ld [bc], a                                    ; $5733: $02
    ret nz                                        ; $5734: $c0

    add d                                         ; $5735: $82
    and b                                         ; $5736: $a0
    ldh [$03], a                                  ; $5737: $e0 $03
    ret nz                                        ; $5739: $c0

    add c                                         ; $573a: $81
    ld b, b                                       ; $573b: $40
    inc bc                                        ; $573c: $03
    ret nz                                        ; $573d: $c0

    add e                                         ; $573e: $83
    ld b, b                                       ; $573f: $40
    ret nz                                        ; $5740: $c0

    ld b, b                                       ; $5741: $40
    ld [bc], a                                    ; $5742: $02
    add d                                         ; $5743: $82
    add [hl]                                      ; $5744: $86
    rrca                                          ; $5745: $0f
    dec c                                         ; $5746: $0d
    sbc a                                         ; $5747: $9f
    sub d                                         ; $5748: $92
    ld h, b                                       ; $5749: $60
    ldh [rSC], a                                  ; $574a: $e0 $02
    nop                                           ; $574c: $00
    ld [bc], a                                    ; $574d: $02
    add b                                         ; $574e: $80
    inc b                                         ; $574f: $04
    nop                                           ; $5750: $00
    ld [bc], a                                    ; $5751: $02
    inc c                                         ; $5752: $0c
    add [hl]                                      ; $5753: $86
    ld c, $02                                     ; $5754: $0e $02
    dec c                                         ; $5756: $0d
    rlca                                          ; $5757: $07
    ld [bc], a                                    ; $5758: $02
    ld b, $18                                     ; $5759: $06 $18
    nop                                           ; $575b: $00
    add d                                         ; $575c: $82
    inc sp                                        ; $575d: $33
    ccf                                           ; $575e: $3f
    ld [bc], a                                    ; $575f: $02
    ld a, $02                                     ; $5760: $3e $02
    ld a, b                                       ; $5762: $78
    ld [bc], a                                    ; $5763: $02
    ld [hl], b                                    ; $5764: $70
    add [hl]                                      ; $5765: $86
    or b                                          ; $5766: $b0
    ldh a, [$b0]                                  ; $5767: $f0 $b0
    ldh a, [rBCPS]                                ; $5769: $f0 $68
    ld a, b                                       ; $576b: $78
    ld [bc], a                                    ; $576c: $02

jr_0de_576d:
    jr nc, jr_0de_577f                            ; $576d: $30 $10

    nop                                           ; $576f: $00
    ld [bc], a                                    ; $5770: $02
    ld bc, $001e                                  ; $5771: $01 $1e $00
    rst $38                                       ; $5774: $ff
    rlca                                          ; $5775: $07
    ld bc, $00f8                                  ; $5776: $01 $f8 $00
    db $f4                                        ; $5779: $f4
    inc bc                                        ; $577a: $03
    db $eb                                        ; $577b: $eb
    cp $86                                        ; $577c: $fe $86
    nop                                           ; $577e: $00

jr_0de_577f:
    add hl, bc                                    ; $577f: $09
    nop                                           ; $5780: $00
    add hl, bc                                    ; $5781: $09
    nop                                           ; $5782: $00
    jr nz, jr_0de_579f                            ; $5783: $20 $1a

    nop                                           ; $5785: $00
    rst $38                                       ; $5786: $ff
    rrca                                          ; $5787: $0f
    dec b                                         ; $5788: $05
    ld hl, sp+$00                                 ; $5789: $f8 $00
    db $f4                                        ; $578b: $f4
    inc bc                                        ; $578c: $03
    ld [$eafd], a                                 ; $578d: $ea $fd $ea
    dec b                                         ; $5790: $05
    push af                                       ; $5791: $f5
    add hl, bc                                    ; $5792: $09
    ld a, [$fafc]                                 ; $5793: $fa $fc $fa
    db $fd                                        ; $5796: $fd
    ld [bc], a                                    ; $5797: $02
    inc c                                         ; $5798: $0c
    ld [bc], a                                    ; $5799: $02
    dec hl                                        ; $579a: $2b
    adc a                                         ; $579b: $8f
    ld [hl-], a                                   ; $579c: $32
    dec sp                                        ; $579d: $3b
    dec hl                                        ; $579e: $2b

jr_0de_579f:
    cpl                                           ; $579f: $2f
    ld e, a                                       ; $57a0: $5f
    ld a, h                                       ; $57a1: $7c
    ccf                                           ; $57a2: $3f
    ld [hl-], a                                   ; $57a3: $32
    ld [hl], a                                    ; $57a4: $77
    ld l, [hl]                                    ; $57a5: $6e
    ccf                                           ; $57a6: $3f
    jr nz, jr_0de_57d6                            ; $57a7: $20 $2d

    inc sp                                        ; $57a9: $33
    dec de                                        ; $57aa: $1b
    ld [bc], a                                    ; $57ab: $02
    rla                                           ; $57ac: $17
    add c                                         ; $57ad: $81
    jr jr_0de_57b2                                ; $57ae: $18 $02

    ccf                                           ; $57b0: $3f
    adc b                                         ; $57b1: $88

jr_0de_57b2:
    ld e, d                                       ; $57b2: $5a
    ld a, a                                       ; $57b3: $7f
    ld e, l                                       ; $57b4: $5d
    ld a, a                                       ; $57b5: $7f
    ld e, a                                       ; $57b6: $5f
    ld a, a                                       ; $57b7: $7f
    xor a                                         ; $57b8: $af
    ld sp, hl                                     ; $57b9: $f9
    ld [bc], a                                    ; $57ba: $02
    add b                                         ; $57bb: $80
    ld [bc], a                                    ; $57bc: $02
    ld b, b                                       ; $57bd: $40
    ld [bc], a                                    ; $57be: $02
    ld h, b                                       ; $57bf: $60
    add e                                         ; $57c0: $83
    ret nc                                        ; $57c1: $d0

    ldh a, [$60]                                  ; $57c2: $f0 $60
    ld [bc], a                                    ; $57c4: $02
    ldh [$81], a                                  ; $57c5: $e0 $81
    and b                                         ; $57c7: $a0
    inc bc                                        ; $57c8: $03
    ldh [$85], a                                  ; $57c9: $e0 $85
    jr nz, jr_0de_576d                            ; $57cb: $20 $a0

    ld h, b                                       ; $57cd: $60
    ret nz                                        ; $57ce: $c0

    ld b, b                                       ; $57cf: $40
    ld [bc], a                                    ; $57d0: $02
    add b                                         ; $57d1: $80
    ld [bc], a                                    ; $57d2: $02
    rst $08                                       ; $57d3: $cf
    add d                                         ; $57d4: $82
    or b                                          ; $57d5: $b0

jr_0de_57d6:
    ldh a, [rSC]                                  ; $57d6: $f0 $02
    add b                                         ; $57d8: $80
    inc b                                         ; $57d9: $04
    nop                                           ; $57da: $00
    ld [bc], a                                    ; $57db: $02
    rrca                                          ; $57dc: $0f
    ld [bc], a                                    ; $57dd: $02
    inc bc                                        ; $57de: $03
    inc e                                         ; $57df: $1c
    nop                                           ; $57e0: $00
    add h                                         ; $57e1: $84
    daa                                           ; $57e2: $27
    inc a                                         ; $57e3: $3c
    ld [hl], $3e                                  ; $57e4: $36 $3e
    ld [bc], a                                    ; $57e6: $02
    ld a, b                                       ; $57e7: $78
    ld [bc], a                                    ; $57e8: $02
    ld [hl], b                                    ; $57e9: $70
    add [hl]                                      ; $57ea: $86
    or b                                          ; $57eb: $b0
    ldh a, [$b0]                                  ; $57ec: $f0 $b0
    ldh a, [rBCPS]                                ; $57ee: $f0 $68
    ld a, b                                       ; $57f0: $78
    ld [bc], a                                    ; $57f1: $02
    jr nc, jr_0de_5804                            ; $57f2: $30 $10

    nop                                           ; $57f4: $00
    ld [bc], a                                    ; $57f5: $02
    ld bc, $001e                                  ; $57f6: $01 $1e $00
    rst $38                                       ; $57f9: $ff
    rlca                                          ; $57fa: $07
    ld bc, $00f8                                  ; $57fb: $01 $f8 $00
    db $f4                                        ; $57fe: $f4
    inc bc                                        ; $57ff: $03
    db $eb                                        ; $5800: $eb
    cp $86                                        ; $5801: $fe $86
    nop                                           ; $5803: $00

jr_0de_5804:
    add hl, bc                                    ; $5804: $09
    nop                                           ; $5805: $00
    add hl, bc                                    ; $5806: $09
    nop                                           ; $5807: $00
    jr nz, jr_0de_5824                            ; $5808: $20 $1a

    nop                                           ; $580a: $00
    rst $38                                       ; $580b: $ff
    dec c                                         ; $580c: $0d
    inc b                                         ; $580d: $04
    ld hl, sp+$00                                 ; $580e: $f8 $00
    db $f4                                        ; $5810: $f4
    inc bc                                        ; $5811: $03
    jp hl                                         ; $5812: $e9


    db $fc                                        ; $5813: $fc
    ld sp, hl                                     ; $5814: $f9
    db $fc                                        ; $5815: $fc
    ld [$f204], a                                 ; $5816: $ea $04 $f2
    inc c                                         ; $5819: $0c
    ld [bc], a                                    ; $581a: $02
    add hl, bc                                    ; $581b: $09
    ld [bc], a                                    ; $581c: $02
    rla                                           ; $581d: $17
    sub h                                         ; $581e: $94
    ld [hl], d                                    ; $581f: $72
    ld a, e                                       ; $5820: $7b
    dec hl                                        ; $5821: $2b
    cpl                                           ; $5822: $2f
    ld c, a                                       ; $5823: $4f

jr_0de_5824:
    ld c, h                                       ; $5824: $4c
    ld e, a                                       ; $5825: $5f
    ld [hl], d                                    ; $5826: $72
    scf                                           ; $5827: $37
    ld l, $7f                                     ; $5828: $2e $7f
    ld h, b                                       ; $582a: $60
    cpl                                           ; $582b: $2f
    ld sp, $131f                                  ; $582c: $31 $1f $13
    rla                                           ; $582f: $17
    dec de                                        ; $5830: $1b
    dec bc                                        ; $5831: $0b
    inc c                                         ; $5832: $0c
    ld [bc], a                                    ; $5833: $02
    rra                                           ; $5834: $1f
    add e                                         ; $5835: $83
    dec l                                         ; $5836: $2d
    ccf                                           ; $5837: $3f
    ld l, $02                                     ; $5838: $2e $02
    ccf                                           ; $583a: $3f
    add a                                         ; $583b: $87
    dec sp                                        ; $583c: $3b
    ld c, a                                       ; $583d: $4f
    ld a, b                                       ; $583e: $78
    ld c, a                                       ; $583f: $4f
    ld a, c                                       ; $5840: $79
    ld h, $3e                                     ; $5841: $26 $3e
    ld [bc], a                                    ; $5843: $02
    ld a, b                                       ; $5844: $78
    ld [bc], a                                    ; $5845: $02
    ld [hl], b                                    ; $5846: $70
    add [hl]                                      ; $5847: $86
    or b                                          ; $5848: $b0
    ldh a, [$b0]                                  ; $5849: $f0 $b0
    ldh a, [rBCPS]                                ; $584b: $f0 $68
    ld a, b                                       ; $584d: $78
    ld [bc], a                                    ; $584e: $02
    jr nc, @+$10                                  ; $584f: $30 $0e

    nop                                           ; $5851: $00
    ld [bc], a                                    ; $5852: $02
    ret nz                                        ; $5853: $c0

    ld [bc], a                                    ; $5854: $02
    ld h, b                                       ; $5855: $60
    add [hl]                                      ; $5856: $86
    ret nc                                        ; $5857: $d0

    ldh a, [rSVBK]                                ; $5858: $f0 $70
    ldh a, [$e0]                                  ; $585a: $f0 $e0
    and b                                         ; $585c: $a0
    inc bc                                        ; $585d: $03
    ldh [$82], a                                  ; $585e: $e0 $82
    and b                                         ; $5860: $a0
    ldh [rSC], a                                  ; $5861: $e0 $02
    and b                                         ; $5863: $a0
    adc c                                         ; $5864: $89
    ld h, b                                       ; $5865: $60
    pop bc                                        ; $5866: $c1
    ld b, c                                       ; $5867: $41
    jp nz, $f7c3                                  ; $5868: $c2 $c3 $f7

    push af                                       ; $586b: $f5
    ld e, b                                       ; $586c: $58
    ld hl, sp+$02                                 ; $586d: $f8 $02
    ret nz                                        ; $586f: $c0

    ld b, $80                                     ; $5870: $06 $80
    adc d                                         ; $5872: $8a
    ret c                                         ; $5873: $d8

    ld e, b                                       ; $5874: $58
    db $fc                                        ; $5875: $fc
    and h                                         ; $5876: $a4
    ld a, d                                       ; $5877: $7a
    cp $02                                        ; $5878: $fe $02
    ld e, $01                                     ; $587a: $1e $01
    inc bc                                        ; $587c: $03
    inc d                                         ; $587d: $14
    nop                                           ; $587e: $00
    rst $38                                       ; $587f: $ff
    rlca                                          ; $5880: $07
    ld bc, $00f9                                  ; $5881: $01 $f9 $00
    db $f4                                        ; $5884: $f4
    inc bc                                        ; $5885: $03
    ld [$88fd], a                                 ; $5886: $ea $fd $88
    nop                                           ; $5889: $00
    stop                                          ; $588a: $10 $00
    add hl, bc                                    ; $588c: $09
    nop                                           ; $588d: $00
    jr nz, jr_0de_5890                            ; $588e: $20 $00

jr_0de_5890:
    ld h, b                                       ; $5890: $60
    jr jr_0de_5893                                ; $5891: $18 $00

jr_0de_5893:
    rst $38                                       ; $5893: $ff
    dec c                                         ; $5894: $0d
    inc b                                         ; $5895: $04
    ld hl, sp+$00                                 ; $5896: $f8 $00
    db $f4                                        ; $5898: $f4
    inc bc                                        ; $5899: $03
    jp hl                                         ; $589a: $e9


    db $fd                                        ; $589b: $fd
    ld [$f205], a                                 ; $589c: $ea $05 $f2
    inc c                                         ; $589f: $0c
    ld sp, hl                                     ; $58a0: $f9
    db $fc                                        ; $58a1: $fc
    ld [bc], a                                    ; $58a2: $02
    ld [hl-], a                                   ; $58a3: $32
    sub [hl]                                      ; $58a4: $96
    dec l                                         ; $58a5: $2d
    cpl                                           ; $58a6: $2f
    ld h, h                                       ; $58a7: $64
    halt                                          ; $58a8: $76
    sub a                                         ; $58a9: $97
    sbc a                                         ; $58aa: $9f
    ld e, [hl]                                    ; $58ab: $5e
    ld e, c                                       ; $58ac: $59
    cp a                                          ; $58ad: $bf
    push hl                                       ; $58ae: $e5
    rst $28                                       ; $58af: $ef
    db $fd                                        ; $58b0: $fd
    rst $38                                       ; $58b1: $ff
    pop bc                                        ; $58b2: $c1
    ld e, e                                       ; $58b3: $5b
    ld h, a                                       ; $58b4: $67
    ccf                                           ; $58b5: $3f
    ld h, $2f                                     ; $58b6: $26 $2f
    ld [hl], $16                                  ; $58b8: $36 $16
    add hl, de                                    ; $58ba: $19
    ld [bc], a                                    ; $58bb: $02
    ccf                                           ; $58bc: $3f
    add [hl]                                      ; $58bd: $86
    ld e, d                                       ; $58be: $5a
    ld [hl], a                                    ; $58bf: $77

Call_0de_58c0:
    ld a, a                                       ; $58c0: $7f
    ld [hl], c                                    ; $58c1: $71
    sbc $f2                                       ; $58c2: $de $f2
    ld [bc], a                                    ; $58c4: $02
    add b                                         ; $58c5: $80
    ld [bc], a                                    ; $58c6: $02
    ret nz                                        ; $58c7: $c0

    add d                                         ; $58c8: $82
    and b                                         ; $58c9: $a0
    ldh [$03], a                                  ; $58ca: $e0 $03
    ret nz                                        ; $58cc: $c0

    add c                                         ; $58cd: $81
    ld b, b                                       ; $58ce: $40
    inc bc                                        ; $58cf: $03
    ret nz                                        ; $58d0: $c0

    adc l                                         ; $58d1: $8d

jr_0de_58d2:
    ld b, b                                       ; $58d2: $40
    ret nz                                        ; $58d3: $c0

    ld b, b                                       ; $58d4: $40
    ld b, h                                       ; $58d5: $44

jr_0de_58d6:
    call nz, $8a8e                                ; $58d6: $c4 $8e $8a
    sbc a                                         ; $58d9: $9f
    sub c                                         ; $58da: $91
    rst $38                                       ; $58db: $ff
    ei                                            ; $58dc: $fb
    and b                                         ; $58dd: $a0
    ldh a, [rSC]                                  ; $58de: $f0 $02
    add b                                         ; $58e0: $80
    inc b                                         ; $58e1: $04
    nop                                           ; $58e2: $00
    ld [bc], a                                    ; $58e3: $02
    ld l, b                                       ; $58e4: $68
    adc b                                         ; $58e5: $88

jr_0de_58e6:
    ld a, h                                       ; $58e6: $7c
    ld d, h                                       ; $58e7: $54
    ld a, h                                       ; $58e8: $7c
    ld l, h                                       ; $58e9: $6c
    ld a, a                                       ; $58ea: $7f
    ld e, a                                       ; $58eb: $5f
    dec e                                         ; $58ec: $1d
    rlca                                          ; $58ed: $07
    ld [bc], a                                    ; $58ee: $02
    inc bc                                        ; $58ef: $03
    inc d                                         ; $58f0: $14

jr_0de_58f1:
    nop                                           ; $58f1: $00
    add [hl]                                      ; $58f2: $86
    ld c, [hl]                                    ; $58f3: $4e
    ld a, [hl]                                    ; $58f4: $7e
    ld b, d                                       ; $58f5: $42
    ld a, [hl]                                    ; $58f6: $7e
    inc l                                         ; $58f7: $2c
    inc a                                         ; $58f8: $3c
    ld [bc], a                                    ; $58f9: $02
    ld a, b                                       ; $58fa: $78
    ld [bc], a                                    ; $58fb: $02
    ld [hl], b                                    ; $58fc: $70
    add [hl]                                      ; $58fd: $86
    or b                                          ; $58fe: $b0
    ldh a, [$b0]                                  ; $58ff: $f0 $b0
    ldh a, [rBCPS]                                ; $5901: $f0 $68
    ld a, b                                       ; $5903: $78
    ld [bc], a                                    ; $5904: $02
    jr nc, jr_0de_5915                            ; $5905: $30 $0e

    nop                                           ; $5907: $00
    rst $38                                       ; $5908: $ff
    rlca                                          ; $5909: $07
    ld bc, $00f8                                  ; $590a: $01 $f8 $00
    db $f4                                        ; $590d: $f4
    inc bc                                        ; $590e: $03
    ld [$88fd], a                                 ; $590f: $ea $fd $88
    nop                                           ; $5912: $00
    stop                                          ; $5913: $10 $00

jr_0de_5915:
    add hl, bc                                    ; $5915: $09
    nop                                           ; $5916: $00
    ld h, b                                       ; $5917: $60
    nop                                           ; $5918: $00
    jr nz, jr_0de_5933                            ; $5919: $20 $18

    nop                                           ; $591b: $00
    rst $38                                       ; $591c: $ff
    dec c                                         ; $591d: $0d
    inc b                                         ; $591e: $04
    ld hl, sp+$00                                 ; $591f: $f8 $00
    db $f4                                        ; $5921: $f4
    inc bc                                        ; $5922: $03
    jp hl                                         ; $5923: $e9


    db $fd                                        ; $5924: $fd
    db $eb                                        ; $5925: $eb
    inc bc                                        ; $5926: $03
    di                                            ; $5927: $f3
    inc c                                         ; $5928: $0c
    ld sp, hl                                     ; $5929: $f9
    db $fc                                        ; $592a: $fc
    ld [bc], a                                    ; $592b: $02
    inc [hl]                                      ; $592c: $34
    ld [bc], a                                    ; $592d: $02
    dec hl                                        ; $592e: $2b
    add d                                         ; $592f: $82
    ld b, h                                       ; $5930: $44
    halt                                          ; $5931: $76
    ld [bc], a                                    ; $5932: $02

jr_0de_5933:
    sbc a                                         ; $5933: $9f
    sbc b                                         ; $5934: $98
    ld e, a                                       ; $5935: $5f
    ld d, b                                       ; $5936: $50
    or a                                          ; $5937: $b7
    db $ed                                        ; $5938: $ed
    rst $28                                       ; $5939: $ef
    db $fd                                        ; $593a: $fd
    ld a, a                                       ; $593b: $7f
    ld b, c                                       ; $593c: $41
    rst $18                                       ; $593d: $df
    rst $20                                       ; $593e: $e7
    ccf                                           ; $593f: $3f
    ld h, $2f                                     ; $5940: $26 $2f
    ld [hl], $1f                                  ; $5942: $36 $1f
    jr jr_0de_5985                                ; $5944: $18 $3f

    scf                                           ; $5946: $37
    ld e, [hl]                                    ; $5947: $5e
    ld [hl], c                                    ; $5948: $71
    ld a, a                                       ; $5949: $7f
    ld a, c                                       ; $594a: $79
    adc [hl]                                      ; $594b: $8e
    cp $02                                        ; $594c: $fe $02
    jr nc, jr_0de_58d2                            ; $594e: $30 $82

    jr z, jr_0de_598a                             ; $5950: $28 $38

    inc bc                                        ; $5952: $03
    jr nc, jr_0de_58d6                            ; $5953: $30 $81

    db $10                                        ; $5955: $10
    inc bc                                        ; $5956: $03
    jr nc, jr_0de_58e6                            ; $5957: $30 $8d

    db $10                                        ; $5959: $10
    jr nc, @+$12                                  ; $595a: $30 $10

    inc d                                         ; $595c: $14
    inc [hl]                                      ; $595d: $34
    ld l, $2a                                     ; $595e: $2e $2a
    ccf                                           ; $5960: $3f
    ld sp, $3b2f                                  ; $5961: $31 $2f $3b
    inc l                                         ; $5964: $2c
    inc a                                         ; $5965: $3c
    ld [bc], a                                    ; $5966: $02
    jr nz, jr_0de_596f                            ; $5967: $20 $06

    nop                                           ; $5969: $00
    ld [bc], a                                    ; $596a: $02
    jr jr_0de_58f1                                ; $596b: $18 $84

    inc a                                         ; $596d: $3c
    inc l                                         ; $596e: $2c

jr_0de_596f:
    inc a                                         ; $596f: $3c
    inc [hl]                                      ; $5970: $34
    ld [bc], a                                    ; $5971: $02
    rra                                           ; $5972: $1f
    add d                                         ; $5973: $82
    ld bc, $1603                                  ; $5974: $01 $03 $16
    nop                                           ; $5977: $00
    add h                                         ; $5978: $84
    ld b, d                                       ; $5979: $42
    ld a, [hl]                                    ; $597a: $7e
    ld h, [hl]                                    ; $597b: $66
    ld a, [hl]                                    ; $597c: $7e
    ld [bc], a                                    ; $597d: $02
    inc a                                         ; $597e: $3c
    ld [bc], a                                    ; $597f: $02
    ld a, b                                       ; $5980: $78
    ld [bc], a                                    ; $5981: $02
    ld [hl], b                                    ; $5982: $70
    add [hl]                                      ; $5983: $86
    or b                                          ; $5984: $b0

jr_0de_5985:
    ldh a, [$b0]                                  ; $5985: $f0 $b0
    ldh a, [rBCPS]                                ; $5987: $f0 $68
    ld a, b                                       ; $5989: $78

jr_0de_598a:
    ld [bc], a                                    ; $598a: $02
    jr nc, jr_0de_599b                            ; $598b: $30 $0e

    nop                                           ; $598d: $00
    rst $38                                       ; $598e: $ff
    rlca                                          ; $598f: $07
    ld bc, $00f8                                  ; $5990: $01 $f8 $00
    db $f4                                        ; $5993: $f4
    inc bc                                        ; $5994: $03
    ld [$88fd], a                                 ; $5995: $ea $fd $88
    nop                                           ; $5998: $00
    inc d                                         ; $5999: $14
    nop                                           ; $599a: $00

jr_0de_599b:
    add hl, bc                                    ; $599b: $09
    nop                                           ; $599c: $00
    ld h, b                                       ; $599d: $60
    nop                                           ; $599e: $00
    jr nz, jr_0de_59b9                            ; $599f: $20 $18

    nop                                           ; $59a1: $00
    rst $38                                       ; $59a2: $ff
    dec c                                         ; $59a3: $0d
    inc b                                         ; $59a4: $04
    ld hl, sp+$00                                 ; $59a5: $f8 $00
    db $f4                                        ; $59a7: $f4
    inc bc                                        ; $59a8: $03
    jp hl                                         ; $59a9: $e9


    db $fd                                        ; $59aa: $fd
    db $eb                                        ; $59ab: $eb
    ld bc, $0bf6                                  ; $59ac: $01 $f6 $0b
    ld sp, hl                                     ; $59af: $f9
    db $fc                                        ; $59b0: $fc
    ld [bc], a                                    ; $59b1: $02
    inc [hl]                                      ; $59b2: $34
    ld [bc], a                                    ; $59b3: $02
    dec hl                                        ; $59b4: $2b
    add d                                         ; $59b5: $82
    ld b, h                                       ; $59b6: $44
    halt                                          ; $59b7: $76
    ld [bc], a                                    ; $59b8: $02

jr_0de_59b9:
    sbc a                                         ; $59b9: $9f
    sbc b                                         ; $59ba: $98
    ld e, a                                       ; $59bb: $5f
    ld d, b                                       ; $59bc: $50
    or a                                          ; $59bd: $b7
    db $ed                                        ; $59be: $ed
    rst $28                                       ; $59bf: $ef
    db $fd                                        ; $59c0: $fd
    ld a, a                                       ; $59c1: $7f
    ld b, c                                       ; $59c2: $41
    rst $18                                       ; $59c3: $df
    rst $20                                       ; $59c4: $e7
    ccf                                           ; $59c5: $3f
    ld h, $2f                                     ; $59c6: $26 $2f
    ld [hl], $1f                                  ; $59c8: $36 $1f
    inc e                                         ; $59ca: $1c
    ccf                                           ; $59cb: $3f
    inc sp                                        ; $59cc: $33
    ld e, [hl]                                    ; $59cd: $5e
    ld [hl], c                                    ; $59ce: $71
    ld l, a                                       ; $59cf: $6f
    ld a, e                                       ; $59d0: $7b
    add [hl]                                      ; $59d1: $86
    cp $02                                        ; $59d2: $fe $02
    inc c                                         ; $59d4: $0c
    add d                                         ; $59d5: $82
    ld a, [bc]                                    ; $59d6: $0a
    ld c, $03                                     ; $59d7: $0e $03
    inc c                                         ; $59d9: $0c
    add c                                         ; $59da: $81

jr_0de_59db:
    inc b                                         ; $59db: $04
    inc bc                                        ; $59dc: $03
    inc c                                         ; $59dd: $0c
    add d                                         ; $59de: $82

jr_0de_59df:
    inc b                                         ; $59df: $04
    inc c                                         ; $59e0: $0c
    ld [bc], a                                    ; $59e1: $02
    inc b                                         ; $59e2: $04
    adc c                                         ; $59e3: $89
    inc c                                         ; $59e4: $0c
    ld c, $0a                                     ; $59e5: $0e $0a
    rrca                                          ; $59e7: $0f
    add hl, bc                                    ; $59e8: $09
    rrca                                          ; $59e9: $0f
    rlca                                          ; $59ea: $07
    dec c                                         ; $59eb: $0d
    rrca                                          ; $59ec: $0f
    ld [bc], a                                    ; $59ed: $02
    ld [$0002], sp                                ; $59ee: $08 $02 $00
    ld [bc], a                                    ; $59f1: $02
    ret nz                                        ; $59f2: $c0

    ld [bc], a                                    ; $59f3: $02
    add b                                         ; $59f4: $80
    ld [bc], a                                    ; $59f5: $02
    rrca                                          ; $59f6: $0f
    ld [bc], a                                    ; $59f7: $02
    ld bc, $001c                                  ; $59f8: $01 $1c $00
    add e                                         ; $59fb: $83
    ld b, b                                       ; $59fc: $40
    ld a, b                                       ; $59fd: $78
    jr z, jr_0de_5a03                             ; $59fe: $28 $03

    jr c, jr_0de_5a04                             ; $5a00: $38 $02

    ld a, b                                       ; $5a02: $78

jr_0de_5a03:
    ld [bc], a                                    ; $5a03: $02

jr_0de_5a04:
    ld [hl], b                                    ; $5a04: $70
    add [hl]                                      ; $5a05: $86
    or b                                          ; $5a06: $b0
    ldh a, [$b0]                                  ; $5a07: $f0 $b0
    ldh a, [rBCPS]                                ; $5a09: $f0 $68
    ld a, b                                       ; $5a0b: $78
    ld [bc], a                                    ; $5a0c: $02
    jr nc, jr_0de_5a1d                            ; $5a0d: $30 $0e

    nop                                           ; $5a0f: $00
    rst $38                                       ; $5a10: $ff
    rlca                                          ; $5a11: $07
    ld bc, $00f8                                  ; $5a12: $01 $f8 $00
    db $f4                                        ; $5a15: $f4
    inc bc                                        ; $5a16: $03
    ld [$88fd], a                                 ; $5a17: $ea $fd $88
    nop                                           ; $5a1a: $00
    inc d                                         ; $5a1b: $14
    nop                                           ; $5a1c: $00

jr_0de_5a1d:
    add hl, bc                                    ; $5a1d: $09
    nop                                           ; $5a1e: $00
    ld h, b                                       ; $5a1f: $60
    nop                                           ; $5a20: $00
    jr nz, jr_0de_5a3b                            ; $5a21: $20 $18

    nop                                           ; $5a23: $00
    rst $38                                       ; $5a24: $ff
    dec bc                                        ; $5a25: $0b
    inc bc                                        ; $5a26: $03
    ld hl, sp+$00                                 ; $5a27: $f8 $00
    db $f4                                        ; $5a29: $f4
    inc bc                                        ; $5a2a: $03
    jp hl                                         ; $5a2b: $e9


    db $fc                                        ; $5a2c: $fc
    ld [$f901], a                                 ; $5a2d: $ea $01 $f9
    db $fc                                        ; $5a30: $fc
    ld [bc], a                                    ; $5a31: $02
    ld d, $02                                     ; $5a32: $16 $02
    dec hl                                        ; $5a34: $2b
    add d                                         ; $5a35: $82
    ld b, h                                       ; $5a36: $44
    halt                                          ; $5a37: $76
    ld [bc], a                                    ; $5a38: $02
    sbc a                                         ; $5a39: $9f
    adc [hl]                                      ; $5a3a: $8e

jr_0de_5a3b:
    rst $18                                       ; $5a3b: $df
    ret nc                                        ; $5a3c: $d0

    cp a                                          ; $5a3d: $bf
    push hl                                       ; $5a3e: $e5
    ld l, a                                       ; $5a3f: $6f
    ld a, l                                       ; $5a40: $7d
    rst $38                                       ; $5a41: $ff
    ret nz                                        ; $5a42: $c0

    ld e, a                                       ; $5a43: $5f
    ld h, a                                       ; $5a44: $67
    ccf                                           ; $5a45: $3f
    ld h, $2f                                     ; $5a46: $26 $2f
    jr nc, jr_0de_5a4c                            ; $5a48: $30 $02

    rra                                           ; $5a4a: $1f
    adc b                                         ; $5a4b: $88

jr_0de_5a4c:
    ccf                                           ; $5a4c: $3f
    inc sp                                        ; $5a4d: $33
    ld a, $31                                     ; $5a4e: $3e $31
    cpl                                           ; $5a50: $2f
    ccf                                           ; $5a51: $3f
    inc hl                                        ; $5a52: $23
    ccf                                           ; $5a53: $3f
    ld [bc], a                                    ; $5a54: $02
    db $10                                        ; $5a55: $10

jr_0de_5a56:
    ld [bc], a                                    ; $5a56: $02
    jr jr_0de_59db                                ; $5a57: $18 $82

    inc d                                         ; $5a59: $14

jr_0de_5a5a:
    inc e                                         ; $5a5a: $1c
    inc bc                                        ; $5a5b: $03
    jr jr_0de_59df                                ; $5a5c: $18 $81

    ld [$1803], sp                                ; $5a5e: $08 $03 $18
    add d                                         ; $5a61: $82
    ld [$0218], sp                                ; $5a62: $08 $18 $02
    ld [$1885], sp                                ; $5a65: $08 $85 $18
    inc e                                         ; $5a68: $1c
    inc d                                         ; $5a69: $14
    ld e, $02                                     ; $5a6a: $1e $02
    ld [bc], a                                    ; $5a6c: $02
    ld e, $82                                     ; $5a6d: $1e $82
    dec de                                        ; $5a6f: $1b
    rra                                           ; $5a70: $1f
    ld [bc], a                                    ; $5a71: $02
    jr jr_0de_5a76                                ; $5a72: $18 $02

    nop                                           ; $5a74: $00
    ld [bc], a                                    ; $5a75: $02

jr_0de_5a76:
    ret nz                                        ; $5a76: $c0

    add h                                         ; $5a77: $84
    ld b, b                                       ; $5a78: $40
    ld a, b                                       ; $5a79: $78
    inc h                                         ; $5a7a: $24
    inc a                                         ; $5a7b: $3c
    ld [bc], a                                    ; $5a7c: $02
    jr c, jr_0de_5a81                             ; $5a7d: $38 $02

    ld a, b                                       ; $5a7f: $78

jr_0de_5a80:
    inc b                                         ; $5a80: $04

jr_0de_5a81:
    ld [hl], b                                    ; $5a81: $70
    add h                                         ; $5a82: $84
    or b                                          ; $5a83: $b0
    ldh a, [rOBP0]                                ; $5a84: $f0 $48
    ld a, b                                       ; $5a86: $78
    ld [bc], a                                    ; $5a87: $02
    jr nc, jr_0de_5a98                            ; $5a88: $30 $0e

    nop                                           ; $5a8a: $00
    rst $38                                       ; $5a8b: $ff
    rlca                                          ; $5a8c: $07
    ld bc, $00f8                                  ; $5a8d: $01 $f8 $00
    db $f4                                        ; $5a90: $f4
    inc bc                                        ; $5a91: $03
    ld [$88fc], a                                 ; $5a92: $ea $fc $88
    nop                                           ; $5a95: $00
    inc d                                         ; $5a96: $14
    nop                                           ; $5a97: $00

jr_0de_5a98:
    add hl, bc                                    ; $5a98: $09
    nop                                           ; $5a99: $00
    ld h, b                                       ; $5a9a: $60
    nop                                           ; $5a9b: $00
    jr nz, jr_0de_5ab6                            ; $5a9c: $20 $18

    nop                                           ; $5a9e: $00
    rst $38                                       ; $5a9f: $ff
    dec bc                                        ; $5aa0: $0b
    inc bc                                        ; $5aa1: $03
    ld hl, sp+$00                                 ; $5aa2: $f8 $00
    db $f4                                        ; $5aa4: $f4
    inc bc                                        ; $5aa5: $03
    jp hl                                         ; $5aa6: $e9


    ei                                            ; $5aa7: $fb
    ld [$f900], a                                 ; $5aa8: $ea $00 $f9
    ei                                            ; $5aab: $fb
    ld [bc], a                                    ; $5aac: $02
    ld d, $02                                     ; $5aad: $16 $02
    dec hl                                        ; $5aaf: $2b
    add d                                         ; $5ab0: $82
    ld b, h                                       ; $5ab1: $44
    halt                                          ; $5ab2: $76
    ld [bc], a                                    ; $5ab3: $02
    sbc a                                         ; $5ab4: $9f
    adc [hl]                                      ; $5ab5: $8e

jr_0de_5ab6:
    rst $18                                       ; $5ab6: $df
    ret nc                                        ; $5ab7: $d0

    cp a                                          ; $5ab8: $bf
    push hl                                       ; $5ab9: $e5
    ld l, a                                       ; $5aba: $6f
    ld a, l                                       ; $5abb: $7d
    rst $38                                       ; $5abc: $ff
    ret nz                                        ; $5abd: $c0

    ld e, a                                       ; $5abe: $5f
    ld h, a                                       ; $5abf: $67

Call_0de_5ac0:
    ccf                                           ; $5ac0: $3f
    ld h, $2f                                     ; $5ac1: $26 $2f
    jr nc, jr_0de_5ac7                            ; $5ac3: $30 $02

    ccf                                           ; $5ac5: $3f
    adc b                                         ; $5ac6: $88

jr_0de_5ac7:
    ld a, [hl]                                    ; $5ac7: $7e
    ld [hl], e                                    ; $5ac8: $73
    ld e, a                                       ; $5ac9: $5f
    ld a, c                                       ; $5aca: $79
    ld d, [hl]                                    ; $5acb: $56
    ld a, a                                       ; $5acc: $7f
    inc hl                                        ; $5acd: $23
    ccf                                           ; $5ace: $3f
    ld [bc], a                                    ; $5acf: $02
    db $10                                        ; $5ad0: $10
    ld [bc], a                                    ; $5ad1: $02

jr_0de_5ad2:
    jr jr_0de_5a56                                ; $5ad2: $18 $82

    inc d                                         ; $5ad4: $14
    inc e                                         ; $5ad5: $1c
    inc bc                                        ; $5ad6: $03
    jr jr_0de_5a5a                                ; $5ad7: $18 $81

    ld [$1803], sp                                ; $5ad9: $08 $03 $18
    add d                                         ; $5adc: $82
    ld [$0218], sp                                ; $5add: $08 $18 $02
    ld [$1885], sp                                ; $5ae0: $08 $85 $18
    inc e                                         ; $5ae3: $1c
    inc d                                         ; $5ae4: $14
    ld e, $12                                     ; $5ae5: $1e $12
    ld [bc], a                                    ; $5ae7: $02
    ld e, $82                                     ; $5ae8: $1e $82
    dec de                                        ; $5aea: $1b
    rra                                           ; $5aeb: $1f
    ld [bc], a                                    ; $5aec: $02
    inc e                                         ; $5aed: $1c
    ld [bc], a                                    ; $5aee: $02
    db $10                                        ; $5aef: $10
    add [hl]                                      ; $5af0: $86
    ld h, b                                       ; $5af1: $60
    ldh [rNR41], a                                ; $5af2: $e0 $20
    jr c, jr_0de_5b2c                             ; $5af4: $38 $36

    ld a, $04                                     ; $5af6: $3e $04
    inc a                                         ; $5af8: $3c

jr_0de_5af9:
    inc b                                         ; $5af9: $04
    jr c, jr_0de_5a80                             ; $5afa: $38 $84

    ld e, b                                       ; $5afc: $58
    ld a, b                                       ; $5afd: $78
    inc [hl]                                      ; $5afe: $34
    inc a                                         ; $5aff: $3c
    ld [bc], a                                    ; $5b00: $02
    ld [$000e], sp                                ; $5b01: $08 $0e $00
    rst $38                                       ; $5b04: $ff
    rlca                                          ; $5b05: $07
    ld bc, $00f8                                  ; $5b06: $01 $f8 $00
    db $f4                                        ; $5b09: $f4
    inc bc                                        ; $5b0a: $03
    ld [$88fb], a                                 ; $5b0b: $ea $fb $88
    nop                                           ; $5b0e: $00
    inc d                                         ; $5b0f: $14
    nop                                           ; $5b10: $00
    add hl, bc                                    ; $5b11: $09
    nop                                           ; $5b12: $00
    ld h, b                                       ; $5b13: $60
    nop                                           ; $5b14: $00
    jr nz, jr_0de_5b2f                            ; $5b15: $20 $18

    nop                                           ; $5b17: $00
    rst $38                                       ; $5b18: $ff
    dec bc                                        ; $5b19: $0b
    inc bc                                        ; $5b1a: $03
    ld hl, sp+$00                                 ; $5b1b: $f8 $00
    db $f4                                        ; $5b1d: $f4
    inc bc                                        ; $5b1e: $03
    add sp, -$06                                  ; $5b1f: $e8 $fa
    jp hl                                         ; $5b21: $e9


    rst $38                                       ; $5b22: $ff
    ld hl, sp-$05                                 ; $5b23: $f8 $fb
    ld [bc], a                                    ; $5b25: $02
    ld d, $02                                     ; $5b26: $16 $02
    dec hl                                        ; $5b28: $2b
    sub d                                         ; $5b29: $92
    ld b, h                                       ; $5b2a: $44
    halt                                          ; $5b2b: $76

jr_0de_5b2c:
    sub a                                         ; $5b2c: $97
    sbc a                                         ; $5b2d: $9f
    rst $18                                       ; $5b2e: $df

jr_0de_5b2f:
    ret c                                         ; $5b2f: $d8

    cp a                                          ; $5b30: $bf
    ldh [$6f], a                                  ; $5b31: $e0 $6f
    ld a, l                                       ; $5b33: $7d
    rst $38                                       ; $5b34: $ff
    ret nz                                        ; $5b35: $c0

    ld e, a                                       ; $5b36: $5f
    ld h, a                                       ; $5b37: $67
    ccf                                           ; $5b38: $3f
    ld h, $2f                                     ; $5b39: $26 $2f
    jr nc, jr_0de_5b3f                            ; $5b3b: $30 $02

    ccf                                           ; $5b3d: $3f
    adc b                                         ; $5b3e: $88

jr_0de_5b3f:
    ld e, [hl]                                    ; $5b3f: $5e
    ld a, c                                       ; $5b40: $79
    ld e, a                                       ; $5b41: $5f
    ld a, c                                       ; $5b42: $79
    ld d, [hl]                                    ; $5b43: $56
    ld a, a                                       ; $5b44: $7f
    ld hl, $023f                                  ; $5b45: $21 $3f $02
    db $10                                        ; $5b48: $10
    ld [bc], a                                    ; $5b49: $02
    inc e                                         ; $5b4a: $1c
    add d                                         ; $5b4b: $82
    inc d                                         ; $5b4c: $14
    inc e                                         ; $5b4d: $1c
    inc bc                                        ; $5b4e: $03
    jr jr_0de_5ad2                                ; $5b4f: $18 $81

    ld [$1803], sp                                ; $5b51: $08 $03 $18
    add d                                         ; $5b54: $82
    ld [$0218], sp                                ; $5b55: $08 $18 $02
    ld [$1881], sp                                ; $5b58: $08 $81 $18
    ld [bc], a                                    ; $5b5b: $02
    ld e, $90                                     ; $5b5c: $1e $90
    rra                                           ; $5b5e: $1f
    add hl, de                                    ; $5b5f: $19
    rra                                           ; $5b60: $1f
    add hl, de                                    ; $5b61: $19
    rla                                           ; $5b62: $17
    dec e                                         ; $5b63: $1d
    ld a, [de]                                    ; $5b64: $1a
    ld e, $0e                                     ; $5b65: $1e $0e
    ld e, $28                                     ; $5b67: $1e $28
    ld hl, sp+$60                                 ; $5b69: $f8 $60
    ld [hl], b                                    ; $5b6b: $70
    ld h, a                                       ; $5b6c: $67
    ld a, a                                       ; $5b6d: $7f
    ld [bc], a                                    ; $5b6e: $02
    ld a, [hl]                                    ; $5b6f: $7e
    ld [bc], a                                    ; $5b70: $02
    ld a, h                                       ; $5b71: $7c
    ld [bc], a                                    ; $5b72: $02
    inc a                                         ; $5b73: $3c
    inc b                                         ; $5b74: $04
    jr c, jr_0de_5af9                             ; $5b75: $38 $82

    jr nz, jr_0de_5bb1                            ; $5b77: $20 $38

    ld [bc], a                                    ; $5b79: $02
    inc a                                         ; $5b7a: $3c
    ld [bc], a                                    ; $5b7b: $02
    ld [$000c], sp                                ; $5b7c: $08 $0c $00
    rst $38                                       ; $5b7f: $ff
    rlca                                          ; $5b80: $07
    ld bc, $00f8                                  ; $5b81: $01 $f8 $00
    db $f4                                        ; $5b84: $f4
    inc bc                                        ; $5b85: $03
    jp hl                                         ; $5b86: $e9


    ld a, [$0088]                                 ; $5b87: $fa $88 $00
    inc d                                         ; $5b8a: $14
    nop                                           ; $5b8b: $00
    add hl, bc                                    ; $5b8c: $09
    nop                                           ; $5b8d: $00
    ld h, b                                       ; $5b8e: $60
    nop                                           ; $5b8f: $00
    jr nz, jr_0de_5baa                            ; $5b90: $20 $18

    nop                                           ; $5b92: $00
    rst $38                                       ; $5b93: $ff
    dec c                                         ; $5b94: $0d
    inc b                                         ; $5b95: $04
    jp hl                                         ; $5b96: $e9


    nop                                           ; $5b97: $00
    db $f4                                        ; $5b98: $f4
    inc bc                                        ; $5b99: $03
    add sp, -$08                                  ; $5b9a: $e8 $f8
    jp hl                                         ; $5b9c: $e9


    nop                                           ; $5b9d: $00
    ld hl, sp-$06                                 ; $5b9e: $f8 $fa
    ld hl, sp-$05                                 ; $5ba0: $f8 $fb
    ld [bc], a                                    ; $5ba2: $02
    ld b, $02                                     ; $5ba3: $06 $02
    dec l                                         ; $5ba5: $2d
    sub d                                         ; $5ba6: $92
    ld [hl-], a                                   ; $5ba7: $32
    ld [hl], $49                                  ; $5ba8: $36 $49

jr_0de_5baa:
    ld c, e                                       ; $5baa: $4b
    rst $08                                       ; $5bab: $cf
    xor $57                                       ; $5bac: $ee $57
    ld a, b                                       ; $5bae: $78
    ld a, e                                       ; $5baf: $7b
    ld [hl], a                                    ; $5bb0: $77

jr_0de_5bb1:
    ccf                                           ; $5bb1: $3f
    jr nz, @+$31                                  ; $5bb2: $20 $2f

    ld sp, $131f                                  ; $5bb4: $31 $1f $13
    rrca                                          ; $5bb7: $0f
    ld [$1f02], sp                                ; $5bb8: $08 $02 $1f
    adc b                                         ; $5bbb: $88
    cpl                                           ; $5bbc: $2f
    inc a                                         ; $5bbd: $3c
    cpl                                           ; $5bbe: $2f
    inc a                                         ; $5bbf: $3c
    dec hl                                        ; $5bc0: $2b
    ccf                                           ; $5bc1: $3f
    jr z, jr_0de_5c03                             ; $5bc2: $28 $3f

    ld [bc], a                                    ; $5bc4: $02
    add b                                         ; $5bc5: $80
    ld [bc], a                                    ; $5bc6: $02
    ldh [rSC], a                                  ; $5bc7: $e0 $02
    and b                                         ; $5bc9: $a0
    sbc l                                         ; $5bca: $9d
    ldh [$60], a                                  ; $5bcb: $e0 $60
    ldh [rNR41], a                                ; $5bcd: $e0 $20
    ldh [$60], a                                  ; $5bcf: $e0 $60
    ldh [rNR41], a                                ; $5bd1: $e0 $20
    ldh [$a0], a                                  ; $5bd3: $e0 $a0
    call nz, $ce44                                ; $5bd5: $c4 $44 $ce
    ld c, d                                       ; $5bd8: $4a
    rst $18                                       ; $5bd9: $df
    pop de                                        ; $5bda: $d1
    ld l, [hl]                                    ; $5bdb: $6e
    ld a, [c]                                     ; $5bdc: $f2
    call z, Call_0de_70fc                         ; $5bdd: $cc $fc $70
    ldh a, [$b0]                                  ; $5be0: $f0 $b0
    ldh a, [$d0]                                  ; $5be2: $f0 $d0
    ldh a, [$e0]                                  ; $5be4: $f0 $e0
    db $fc                                        ; $5be6: $fc
    ld [hl], e                                    ; $5be7: $73
    inc bc                                        ; $5be8: $03
    ld a, a                                       ; $5be9: $7f
    inc b                                         ; $5bea: $04
    ld a, $02                                     ; $5beb: $3e $02
    inc a                                         ; $5bed: $3c
    ld [bc], a                                    ; $5bee: $02
    inc e                                         ; $5bef: $1c
    add d                                         ; $5bf0: $82
    db $10                                        ; $5bf1: $10
    inc e                                         ; $5bf2: $1c
    ld [bc], a                                    ; $5bf3: $02
    ld e, $11                                     ; $5bf4: $1e $11
    nop                                           ; $5bf6: $00
    add c                                         ; $5bf7: $81
    ld bc, $001c                                  ; $5bf8: $01 $1c $00
    rst $38                                       ; $5bfb: $ff
    rlca                                          ; $5bfc: $07
    ld bc, $00e9                                  ; $5bfd: $01 $e9 $00
    db $f4                                        ; $5c00: $f4
    inc bc                                        ; $5c01: $03
    jp hl                                         ; $5c02: $e9


jr_0de_5c03:
    ld a, [$0088]                                 ; $5c03: $fa $88 $00
    ld [$2400], sp                                ; $5c06: $08 $00 $24
    nop                                           ; $5c09: $00
    pop de                                        ; $5c0a: $d1
    nop                                           ; $5c0b: $00
    ld b, b                                       ; $5c0c: $40
    jr jr_0de_5c0f                                ; $5c0d: $18 $00

jr_0de_5c0f:
    rst $38                                       ; $5c0f: $ff
    dec c                                         ; $5c10: $0d
    inc b                                         ; $5c11: $04
    jp hl                                         ; $5c12: $e9


    nop                                           ; $5c13: $00
    db $f4                                        ; $5c14: $f4
    inc bc                                        ; $5c15: $03
    jp hl                                         ; $5c16: $e9


    or $ea                                        ; $5c17: $f6 $ea
    cp $ef                                        ; $5c19: $fe $ef
    nop                                           ; $5c1b: $00
    ld sp, hl                                     ; $5c1c: $f9
    ld sp, hl                                     ; $5c1d: $f9
    ld [bc], a                                    ; $5c1e: $02
    ld b, $02                                     ; $5c1f: $06 $02
    dec l                                         ; $5c21: $2d
    sub d                                         ; $5c22: $92
    ld [hl-], a                                   ; $5c23: $32
    ld [hl], $49                                  ; $5c24: $36 $49
    ld c, e                                       ; $5c26: $4b
    rst $08                                       ; $5c27: $cf
    xor $57                                       ; $5c28: $ee $57
    ld a, b                                       ; $5c2a: $78
    ld a, c                                       ; $5c2b: $79
    halt                                          ; $5c2c: $76
    ld a, a                                       ; $5c2d: $7f
    ld h, b                                       ; $5c2e: $60
    cpl                                           ; $5c2f: $2f
    ld sp, $333f                                  ; $5c30: $31 $3f $33
    rra                                           ; $5c33: $1f
    db $10                                        ; $5c34: $10
    ld [bc], a                                    ; $5c35: $02
    rra                                           ; $5c36: $1f
    adc b                                         ; $5c37: $88
    ccf                                           ; $5c38: $3f
    inc a                                         ; $5c39: $3c
    cpl                                           ; $5c3a: $2f
    inc a                                         ; $5c3b: $3c
    daa                                           ; $5c3c: $27
    ccf                                           ; $5c3d: $3f
    inc [hl]                                      ; $5c3e: $34
    ccf                                           ; $5c3f: $3f
    ld [bc], a                                    ; $5c40: $02
    add b                                         ; $5c41: $80
    ld [bc], a                                    ; $5c42: $02
    ldh [rSC], a                                  ; $5c43: $e0 $02
    and b                                         ; $5c45: $a0
    sub d                                         ; $5c46: $92
    ldh [$60], a                                  ; $5c47: $e0 $60
    pop hl                                        ; $5c49: $e1
    ld hl, $e627                                  ; $5c4a: $21 $27 $e6
    rst $28                                       ; $5c4d: $ef
    ld a, [hl+]                                   ; $5c4e: $2a
    rst $08                                       ; $5c4f: $cf
    ld c, b                                       ; $5c50: $48
    rst $08                                       ; $5c51: $cf
    ld c, l                                       ; $5c52: $4d
    or [hl]                                       ; $5c53: $b6
    cp [hl]                                       ; $5c54: $be
    jp nz, Jump_0de_7cfe                          ; $5c55: $c2 $fe $7c

    db $fc                                        ; $5c58: $fc
    ld [bc], a                                    ; $5c59: $02
    ldh [$86], a                                  ; $5c5a: $e0 $86
    ld [hl], b                                    ; $5c5c: $70
    ldh a, [$58]                                  ; $5c5d: $f0 $58
    ld hl, sp+$48                                 ; $5c5f: $f8 $48
    ld hl, sp+$02                                 ; $5c61: $f8 $02
    ld [bc], a                                    ; $5c63: $02
    add h                                         ; $5c64: $84
    inc bc                                        ; $5c65: $03
    ld bc, $0103                                  ; $5c66: $01 $03 $01
    ld [bc], a                                    ; $5c69: $02
    ld [bc], a                                    ; $5c6a: $02
    ld c, $00                                     ; $5c6b: $0e $00
    add e                                         ; $5c6d: $83
    ld b, b                                       ; $5c6e: $40
    ret nz                                        ; $5c6f: $c0

    nop                                           ; $5c70: $00
    inc bc                                        ; $5c71: $03
    add b                                         ; $5c72: $80
    inc b                                         ; $5c73: $04
    nop                                           ; $5c74: $00
    add d                                         ; $5c75: $82
    ret nc                                        ; $5c76: $d0

    ld hl, sp+$04                                 ; $5c77: $f8 $04
    ld a, [hl]                                    ; $5c79: $7e
    ld [bc], a                                    ; $5c7a: $02
    ld a, $04                                     ; $5c7b: $3e $04
    ld e, $82                                     ; $5c7d: $1e $82
    inc c                                         ; $5c7f: $0c
    ld c, $02                                     ; $5c80: $0e $02
    rlca                                          ; $5c82: $07
    stop                                          ; $5c83: $10 $00
    rst $38                                       ; $5c85: $ff
    rlca                                          ; $5c86: $07
    ld bc, $00e9                                  ; $5c87: $01 $e9 $00
    db $f4                                        ; $5c8a: $f4
    inc bc                                        ; $5c8b: $03
    ld [$88f8], a                                 ; $5c8c: $ea $f8 $88
    nop                                           ; $5c8f: $00
    ld [$2400], sp                                ; $5c90: $08 $00 $24
    nop                                           ; $5c93: $00
    pop de                                        ; $5c94: $d1
    nop                                           ; $5c95: $00
    ld b, b                                       ; $5c96: $40
    jr jr_0de_5c99                                ; $5c97: $18 $00

jr_0de_5c99:
    rst $38                                       ; $5c99: $ff
    rrca                                          ; $5c9a: $0f
    dec b                                         ; $5c9b: $05
    jp hl                                         ; $5c9c: $e9


    nop                                           ; $5c9d: $00
    db $f4                                        ; $5c9e: $f4
    inc bc                                        ; $5c9f: $03
    ld [$ebf3], a                                 ; $5ca0: $ea $f3 $eb
    ei                                            ; $5ca3: $fb
    xor $fd                                       ; $5ca4: $ee $fd
    ld a, [$faf7]                                 ; $5ca6: $fa $f7 $fa
    ld sp, hl                                     ; $5ca9: $f9
    ld [bc], a                                    ; $5caa: $02
    ld [$1602], sp                                ; $5cab: $08 $02 $16
    sub d                                         ; $5cae: $92
    ld d, c                                       ; $5caf: $51
    ld e, e                                       ; $5cb0: $5b
    ld h, a                                       ; $5cb1: $67
    ld [hl], l                                    ; $5cb2: $75
    sbc a                                         ; $5cb3: $9f
    sbc b                                         ; $5cb4: $98
    db $dd                                        ; $5cb5: $dd
    ld a, [$d49b]                                 ; $5cb6: $fa $9b $d4
    rst $18                                       ; $5cb9: $df
    ldh a, [rPCM34]                               ; $5cba: $f0 $77
    ld a, c                                       ; $5cbc: $79
    ld [hl], a                                    ; $5cbd: $77
    ld l, b                                       ; $5cbe: $68
    dec de                                        ; $5cbf: $1b
    dec e                                         ; $5cc0: $1d
    inc bc                                        ; $5cc1: $03
    rrca                                          ; $5cc2: $0f
    add a                                         ; $5cc3: $87
    inc c                                         ; $5cc4: $0c
    rrca                                          ; $5cc5: $0f
    inc c                                         ; $5cc6: $0c
    dec d                                         ; $5cc7: $15
    rra                                           ; $5cc8: $1f
    inc d                                         ; $5cc9: $14
    rra                                           ; $5cca: $1f
    ld [bc], a                                    ; $5ccb: $02
    add b                                         ; $5ccc: $80
    ld [bc], a                                    ; $5ccd: $02
    nop                                           ; $5cce: $00
    ld [bc], a                                    ; $5ccf: $02
    add c                                         ; $5cd0: $81
    adc [hl]                                      ; $5cd1: $8e
    add a                                         ; $5cd2: $87
    add [hl]                                      ; $5cd3: $86
    rst $08                                       ; $5cd4: $cf
    ld c, d                                       ; $5cd5: $4a
    rst $08                                       ; $5cd6: $cf
    ld c, b                                       ; $5cd7: $48
    rst $08                                       ; $5cd8: $cf
    call $5ed6                                    ; $5cd9: $cd $d6 $5e
    and d                                         ; $5cdc: $a2
    cp [hl]                                       ; $5cdd: $be
    call z, $04fc                                 ; $5cde: $cc $fc $04
    ldh a, [$88]                                  ; $5ce1: $f0 $88
    cp b                                          ; $5ce3: $b8
    ld hl, sp-$24                                 ; $5ce4: $f8 $dc
    db $fc                                        ; $5ce6: $fc
    rst $00                                       ; $5ce7: $c7
    rst $38                                       ; $5ce8: $ff
    ld [$02fe], a                                 ; $5ce9: $ea $fe $02
    ld [bc], a                                    ; $5cec: $02
    add h                                         ; $5ced: $84
    inc bc                                        ; $5cee: $03
    ld bc, $0103                                  ; $5cef: $01 $03 $01
    ld [bc], a                                    ; $5cf2: $02
    ld [bc], a                                    ; $5cf3: $02
    ld [de], a                                    ; $5cf4: $12
    nop                                           ; $5cf5: $00
    add h                                         ; $5cf6: $84
    or b                                          ; $5cf7: $b0
    ldh a, [$d0]                                  ; $5cf8: $f0 $d0
    ldh a, [rSC]                                  ; $5cfa: $f0 $02
    ldh [$84], a                                  ; $5cfc: $e0 $84
    add b                                         ; $5cfe: $80
    ldh a, [$9c]                                  ; $5cff: $f0 $9c
    db $fc                                        ; $5d01: $fc
    ld [bc], a                                    ; $5d02: $02
    ld a, h                                       ; $5d03: $7c
    ld [bc], a                                    ; $5d04: $02
    inc e                                         ; $5d05: $1c
    ld [bc], a                                    ; $5d06: $02
    rrca                                          ; $5d07: $0f
    ld [bc], a                                    ; $5d08: $02
    inc bc                                        ; $5d09: $03
    ld [bc], a                                    ; $5d0a: $02
    ld bc, $001a                                  ; $5d0b: $01 $1a $00
    inc b                                         ; $5d0e: $04
    ld [bc], a                                    ; $5d0f: $02
    ld [bc], a                                    ; $5d10: $02
    inc bc                                        ; $5d11: $03
    ld [de], a                                    ; $5d12: $12
    nop                                           ; $5d13: $00
    rst $38                                       ; $5d14: $ff

jr_0de_5d15:
    rlca                                          ; $5d15: $07
    ld bc, $00e9                                  ; $5d16: $01 $e9 $00
    db $f4                                        ; $5d19: $f4
    inc bc                                        ; $5d1a: $03
    db $eb                                        ; $5d1b: $eb
    pop af                                        ; $5d1c: $f1
    adc b                                         ; $5d1d: $88
    nop                                           ; $5d1e: $00
    ld [bc], a                                    ; $5d1f: $02
    nop                                           ; $5d20: $00
    ld bc, $0200                                  ; $5d21: $01 $00 $02
    nop                                           ; $5d24: $00
    jr @+$05                                      ; $5d25: $18 $03

    nop                                           ; $5d27: $00
    add c                                         ; $5d28: $81
    ld [$0014], sp                                ; $5d29: $08 $14 $00
    rst $38                                       ; $5d2c: $ff
    dec c                                         ; $5d2d: $0d
    inc b                                         ; $5d2e: $04
    jp hl                                         ; $5d2f: $e9


    nop                                           ; $5d30: $00
    db $f4                                        ; $5d31: $f4
    inc bc                                        ; $5d32: $03
    xor $ed                                       ; $5d33: $ee $ed
    rst $28                                       ; $5d35: $ef
    push af                                       ; $5d36: $f5
    ld sp, hl                                     ; $5d37: $f9
    ld a, [$f2fe]                                 ; $5d38: $fa $fe $f2
    ld [bc], a                                    ; $5d3b: $02
    inc b                                         ; $5d3c: $04
    ld [bc], a                                    ; $5d3d: $02
    dec c                                         ; $5d3e: $0d
    sub d                                         ; $5d3f: $92
    inc de                                        ; $5d40: $13
    dec de                                        ; $5d41: $1b
    ld d, l                                       ; $5d42: $55
    ld d, a                                       ; $5d43: $57
    ld [hl], a                                    ; $5d44: $77
    ld a, [hl]                                    ; $5d45: $7e
    ld e, a                                       ; $5d46: $5f
    ld e, b                                       ; $5d47: $58
    xor $e9                                       ; $5d48: $ee $e9
    ld c, l                                       ; $5d4a: $4d
    ld a, d                                       ; $5d4b: $7a
    cpl                                           ; $5d4c: $2f
    jr z, jr_0de_5d8e                             ; $5d4d: $28 $3f

    jr nc, jr_0de_5d60                            ; $5d4f: $30 $0f

    inc c                                         ; $5d51: $0c
    inc b                                         ; $5d52: $04
    inc bc                                        ; $5d53: $03
    add h                                         ; $5d54: $84
    dec b                                         ; $5d55: $05
    rlca                                          ; $5d56: $07
    dec b                                         ; $5d57: $05
    rlca                                          ; $5d58: $07
    ld [bc], a                                    ; $5d59: $02
    inc bc                                        ; $5d5a: $03
    ld [bc], a                                    ; $5d5b: $02
    sbc h                                         ; $5d5c: $9c
    sbc [hl]                                      ; $5d5d: $9e
    ld a, $22                                     ; $5d5e: $3e $22

jr_0de_5d60:
    sbc [hl]                                      ; $5d60: $9e
    sub d                                         ; $5d61: $92
    cp $66                                        ; $5d62: $fe $66
    cp c                                          ; $5d64: $b9
    ld a, a                                       ; $5d65: $7f
    jp hl                                         ; $5d66: $e9


    cpl                                           ; $5d67: $2f
    ld a, [c]                                     ; $5d68: $f2
    ld e, $f2                                     ; $5d69: $1e $f2
    ld e, [hl]                                    ; $5d6b: $5e
    db $ec                                        ; $5d6c: $ec
    inc a                                         ; $5d6d: $3c
    db $fc                                        ; $5d6e: $fc
    ld a, h                                       ; $5d6f: $7c
    rst $38                                       ; $5d70: $ff
    cp a                                          ; $5d71: $bf
    di                                            ; $5d72: $f3
    rra                                           ; $5d73: $1f
    db $fc                                        ; $5d74: $fc
    cp a                                          ; $5d75: $bf
    ld a, a                                       ; $5d76: $7f
    rst $38                                       ; $5d77: $ff
    ccf                                           ; $5d78: $3f
    rst $38                                       ; $5d79: $ff
    ccf                                           ; $5d7a: $3f
    rst $38                                       ; $5d7b: $ff
    ld [bc], a                                    ; $5d7c: $02
    ld de, $1f02                                  ; $5d7d: $11 $02 $1f
    add l                                         ; $5d80: $85
    ld [bc], a                                    ; $5d81: $02
    ld e, $0e                                     ; $5d82: $1e $0e
    ld e, $10                                     ; $5d84: $1e $10
    inc bc                                        ; $5d86: $03
    inc e                                         ; $5d87: $1c
    ld [bc], a                                    ; $5d88: $02
    db $fc                                        ; $5d89: $fc
    ld [bc], a                                    ; $5d8a: $02
    cp $02                                        ; $5d8b: $fe $02
    ld a, h                                       ; $5d8d: $7c

jr_0de_5d8e:
    ld c, $00                                     ; $5d8e: $0e $00
    ld [bc], a                                    ; $5d90: $02
    jr nz, jr_0de_5d15                            ; $5d91: $20 $82

    cpl                                           ; $5d93: $2f
    ccf                                           ; $5d94: $3f
    ld [bc], a                                    ; $5d95: $02
    ld de, $001a                                  ; $5d96: $11 $1a $00
    rst $38                                       ; $5d99: $ff
    rlca                                          ; $5d9a: $07
    ld bc, $00e9                                  ; $5d9b: $01 $e9 $00
    db $f4                                        ; $5d9e: $f4
    inc bc                                        ; $5d9f: $03
    ldh a, [$eb]                                  ; $5da0: $f0 $eb
    add h                                         ; $5da2: $84
    nop                                           ; $5da3: $00
    ld bc, $0200                                  ; $5da4: $01 $00 $02
    inc bc                                        ; $5da7: $03
    nop                                           ; $5da8: $00
    add e                                         ; $5da9: $83
    ld [$0400], sp                                ; $5daa: $08 $00 $04
    inc bc                                        ; $5dad: $03
    nop                                           ; $5dae: $00
    add c                                         ; $5daf: $81
    inc b                                         ; $5db0: $04
    ld [de], a                                    ; $5db1: $12
    nop                                           ; $5db2: $00
    rst $38                                       ; $5db3: $ff
    dec bc                                        ; $5db4: $0b
    inc bc                                        ; $5db5: $03
    jp hl                                         ; $5db6: $e9


    nop                                           ; $5db7: $00
    db $f4                                        ; $5db8: $f4
    inc bc                                        ; $5db9: $03
    push af                                       ; $5dba: $f5
    ld [$f2f5], a                                 ; $5dbb: $ea $f5 $f2
    push af                                       ; $5dbe: $f5
    ld sp, hl                                     ; $5dbf: $f9
    ld [bc], a                                    ; $5dc0: $02
    ld [$1482], sp                                ; $5dc1: $08 $82 $14
    inc e                                         ; $5dc4: $1c
    ld [bc], a                                    ; $5dc5: $02
    ld d, a                                       ; $5dc6: $57
    adc [hl]                                      ; $5dc7: $8e
    xor e                                         ; $5dc8: $ab
    cp l                                          ; $5dc9: $bd
    adc l                                         ; $5dca: $8d
    jp z, Jump_0de_7a6d                           ; $5dcb: $ca $6d $7a

    sbc a                                         ; $5dce: $9f
    sbc b                                         ; $5dcf: $98
    ld l, a                                       ; $5dd0: $6f
    ld l, b                                       ; $5dd1: $68
    rst $00                                       ; $5dd2: $c7
    call nc, Call_000_3d37                        ; $5dd3: $d4 $37 $3d
    ld [bc], a                                    ; $5dd6: $02
    rrca                                          ; $5dd7: $0f
    inc c                                         ; $5dd8: $0c
    nop                                           ; $5dd9: $00
    ld [bc], a                                    ; $5dda: $02
    ldh a, [$96]                                  ; $5ddb: $f0 $96
    adc b                                         ; $5ddd: $88
    ld a, b                                       ; $5dde: $78
    call nz, $f4bc                                ; $5ddf: $c4 $bc $f4
    ld a, h                                       ; $5de2: $7c
    or h                                          ; $5de3: $b4
    ld e, h                                       ; $5de4: $5c
    rst $30                                       ; $5de5: $f7
    rra                                           ; $5de6: $1f
    ei                                            ; $5de7: $fb
    ld a, a                                       ; $5de8: $7f
    db $f4                                        ; $5de9: $f4
    sbc a                                         ; $5dea: $9f
    ei                                            ; $5deb: $fb
    rst $08                                       ; $5dec: $cf
    rst $30                                       ; $5ded: $f7
    rst $38                                       ; $5dee: $ff
    ld h, e                                       ; $5def: $63
    ld a, a                                       ; $5df0: $7f
    scf                                           ; $5df1: $37
    ccf                                           ; $5df2: $3f
    ld [bc], a                                    ; $5df3: $02
    ld [$000e], sp                                ; $5df4: $08 $0e $00
    ld [bc], a                                    ; $5df7: $02
    ld bc, $628c                                  ; $5df8: $01 $8c $62
    ld h, e                                       ; $5dfb: $63
    ld a, l                                       ; $5dfc: $7d
    ld a, a                                       ; $5dfd: $7f
    ld b, $7e                                     ; $5dfe: $06 $7e
    ld l, [hl]                                    ; $5e00: $6e
    ld a, [hl]                                    ; $5e01: $7e
    halt                                          ; $5e02: $76
    ld a, [hl]                                    ; $5e03: $7e
    ld a, e                                       ; $5e04: $7b
    ld a, a                                       ; $5e05: $7f
    ld [bc], a                                    ; $5e06: $02
    ld a, [hl]                                    ; $5e07: $7e
    ld [bc], a                                    ; $5e08: $02
    inc e                                         ; $5e09: $1c
    inc b                                         ; $5e0a: $04
    nop                                           ; $5e0b: $00
    rst $38                                       ; $5e0c: $ff
    rlca                                          ; $5e0d: $07
    ld bc, $00e9                                  ; $5e0e: $01 $e9 $00
    db $f4                                        ; $5e11: $f4
    inc bc                                        ; $5e12: $03
    rst $30                                       ; $5e13: $f7
    rst $20                                       ; $5e14: $e7
    add [hl]                                      ; $5e15: $86
    nop                                           ; $5e16: $00
    ld bc, $0800                                  ; $5e17: $01 $00 $08
    nop                                           ; $5e1a: $00
    ld b, $03                                     ; $5e1b: $06 $03
    nop                                           ; $5e1d: $00
    add l                                         ; $5e1e: $85
    inc c                                         ; $5e1f: $0c
    nop                                           ; $5e20: $00
    ld [bc], a                                    ; $5e21: $02
    nop                                           ; $5e22: $00
    dec b                                         ; $5e23: $05
    ld [de], a                                    ; $5e24: $12
    nop                                           ; $5e25: $00
    rst $38                                       ; $5e26: $ff
    dec bc                                        ; $5e27: $0b
    inc bc                                        ; $5e28: $03
    jp hl                                         ; $5e29: $e9


    nop                                           ; $5e2a: $00
    db $f4                                        ; $5e2b: $f4
    inc bc                                        ; $5e2c: $03
    ld hl, sp-$17                                 ; $5e2d: $f8 $e9
    ld hl, sp-$0f                                 ; $5e2f: $f8 $f1
    ld hl, sp-$07                                 ; $5e31: $f8 $f9
    ld [bc], a                                    ; $5e33: $02
    ld hl, $5f90                                  ; $5e34: $21 $90 $5f
    ld a, [hl]                                    ; $5e37: $7e
    scf                                           ; $5e38: $37
    jr c, @+$5f                                   ; $5e39: $38 $5d

    ld d, d                                       ; $5e3b: $52
    adc l                                         ; $5e3c: $8d
    jp c, Jump_0de_705f                           ; $5e3d: $da $5f $70

    adc a                                         ; $5e40: $8f
    adc h                                         ; $5e41: $8c
    ld d, e                                       ; $5e42: $53
    halt                                          ; $5e43: $76
    daa                                           ; $5e44: $27
    cpl                                           ; $5e45: $2f
    ld [bc], a                                    ; $5e46: $02
    ld e, a                                       ; $5e47: $5f
    ld [bc], a                                    ; $5e48: $02
    ld bc, $000c                                  ; $5e49: $01 $0c $00
    ld [bc], a                                    ; $5e4c: $02
    call c, $e292                                 ; $5e4d: $dc $92 $e2
    ld a, [hl]                                    ; $5e50: $7e
    push af                                       ; $5e51: $f5
    ld e, a                                       ; $5e52: $5f
    ld a, [$d51f]                                 ; $5e53: $fa $1f $d5
    ccf                                           ; $5e56: $3f
    cp a                                          ; $5e57: $bf
    ld a, a                                       ; $5e58: $7f
    rst $28                                       ; $5e59: $ef
    rst $38                                       ; $5e5a: $ff
    rst $10                                       ; $5e5b: $d7
    rst $18                                       ; $5e5c: $df
    push hl                                       ; $5e5d: $e5
    dec a                                         ; $5e5e: $3d
    call nz, $023c                                ; $5e5f: $c4 $3c $02
    ld hl, sp+$0c                                 ; $5e62: $f8 $0c
    nop                                           ; $5e64: $00
    ld [bc], a                                    ; $5e65: $02
    ldh [rSC], a                                  ; $5e66: $e0 $02
    db $fd                                        ; $5e68: $fd
    adc d                                         ; $5e69: $8a
    ld [bc], a                                    ; $5e6a: $02
    rst $38                                       ; $5e6b: $ff
    sbc $fe                                       ; $5e6c: $de $fe
    and $fe                                       ; $5e6e: $e6 $fe
    ld a, [$fbfe]                                 ; $5e70: $fa $fe $fb
    rst $38                                       ; $5e73: $ff
    ld [bc], a                                    ; $5e74: $02
    cp $02                                        ; $5e75: $fe $02
    inc c                                         ; $5e77: $0c
    ld a, [bc]                                    ; $5e78: $0a
    nop                                           ; $5e79: $00
    rst $38                                       ; $5e7a: $ff
    rlca                                          ; $5e7b: $07
    ld bc, $00e9                                  ; $5e7c: $01 $e9 $00
    db $f4                                        ; $5e7f: $f4
    inc bc                                        ; $5e80: $03
    ei                                            ; $5e81: $fb
    and $84                                       ; $5e82: $e6 $84
    nop                                           ; $5e84: $00
    inc b                                         ; $5e85: $04
    nop                                           ; $5e86: $00
    inc b                                         ; $5e87: $04
    inc bc                                        ; $5e88: $03
    nop                                           ; $5e89: $00
    add l                                         ; $5e8a: $85
    ld c, $00                                     ; $5e8b: $0e $00
    ld bc, $0200                                  ; $5e8d: $01 $00 $02
    inc d                                         ; $5e90: $14
    nop                                           ; $5e91: $00
    rst $38                                       ; $5e92: $ff
    dec c                                         ; $5e93: $0d
    inc b                                         ; $5e94: $04
    and $fd                                       ; $5e95: $e6 $fd
    ld a, [$ea01]                                 ; $5e97: $fa $01 $ea
    db $fc                                        ; $5e9a: $fc
    db $eb                                        ; $5e9b: $eb
    cp $fa                                        ; $5e9c: $fe $fa
    ei                                            ; $5e9e: $fb
    ld a, [$02fc]                                 ; $5e9f: $fa $fc $02
    ld c, $82                                     ; $5ea2: $0e $82
    dec [hl]                                      ; $5ea4: $35
    ld sp, $4302                                  ; $5ea5: $31 $02 $43
    adc [hl]                                      ; $5ea8: $8e
    adc e                                         ; $5ea9: $8b
    adc d                                         ; $5eaa: $8a
    cp a                                          ; $5eab: $bf
    sub h                                         ; $5eac: $94
    rst $18                                       ; $5ead: $df
    sub d                                         ; $5eae: $92
    cp a                                          ; $5eaf: $bf
    or b                                          ; $5eb0: $b0
    rst $38                                       ; $5eb1: $ff
    ret nz                                        ; $5eb2: $c0

    ld a, a                                       ; $5eb3: $7f
    ld h, c                                       ; $5eb4: $61
    ccf                                           ; $5eb5: $3f
    ld sp, $7f02                                  ; $5eb6: $31 $02 $7f
    adc d                                         ; $5eb9: $8a
    cp d                                          ; $5eba: $ba
    ld a, [$7d6d]                                 ; $5ebb: $fa $6d $7d
    ld l, e                                       ; $5ebe: $6b
    ld a, a                                       ; $5ebf: $7f
    ld l, l                                       ; $5ec0: $6d
    ld a, a                                       ; $5ec1: $7f
    ld b, l                                       ; $5ec2: $45
    ld a, a                                       ; $5ec3: $7f
    ld [bc], a                                    ; $5ec4: $02
    ld [bc], a                                    ; $5ec5: $02
    ld [bc], a                                    ; $5ec6: $02
    ld bc, $0206                                  ; $5ec7: $01 $06 $02
    add d                                         ; $5eca: $82
    inc bc                                        ; $5ecb: $03
    ld bc, $0204                                  ; $5ecc: $01 $04 $02
    ld c, $00                                     ; $5ecf: $0e $00
    add d                                         ; $5ed1: $82
    call nc, Call_000_02fc                        ; $5ed2: $d4 $fc $02
    jr nz, @-$72                                  ; $5ed5: $20 $8c

    ld a, $27                                     ; $5ed7: $3e $27
    dec a                                         ; $5ed9: $3d
    scf                                           ; $5eda: $37
    ld a, a                                       ; $5edb: $7f
    ld a, e                                       ; $5edc: $7b
    ld [hl], a                                    ; $5edd: $77
    ld a, l                                       ; $5ede: $7d
    cp a                                          ; $5edf: $bf
    rst $38                                       ; $5ee0: $ff
    sbc b                                         ; $5ee1: $98
    rst $38                                       ; $5ee2: $ff
    ld [bc], a                                    ; $5ee3: $02
    ld a, a                                       ; $5ee4: $7f
    ld [de], a                                    ; $5ee5: $12
    nop                                           ; $5ee6: $00
    inc b                                         ; $5ee7: $04
    ld bc, $0006                                  ; $5ee8: $01 $06 $00
    ld [bc], a                                    ; $5eeb: $02
    ld bc, $0012                                  ; $5eec: $01 $12 $00
    rst $38                                       ; $5eef: $ff
    rlca                                          ; $5ef0: $07
    ld bc, $fde6                                  ; $5ef1: $01 $e6 $fd
    ld a, [$eb01]                                 ; $5ef4: $fa $01 $eb
    db $fd                                        ; $5ef7: $fd
    adc h                                         ; $5ef8: $8c
    nop                                           ; $5ef9: $00
    inc d                                         ; $5efa: $14
    nop                                           ; $5efb: $00
    ld a, c                                       ; $5efc: $79
    nop                                           ; $5efd: $00
    add sp, $00                                   ; $5efe: $e8 $00
    add b                                         ; $5f00: $80
    nop                                           ; $5f01: $00
    ld b, b                                       ; $5f02: $40
    nop                                           ; $5f03: $00
    add b                                         ; $5f04: $80
    ld [$8300], sp                                ; $5f05: $08 $00 $83
    ld [$0400], sp                                ; $5f08: $08 $00 $04
    add hl, bc                                    ; $5f0b: $09
    nop                                           ; $5f0c: $00
    rst $38                                       ; $5f0d: $ff
    dec c                                         ; $5f0e: $0d
    inc b                                         ; $5f0f: $04
    and $fd                                       ; $5f10: $e6 $fd
    ld a, [$ea01]                                 ; $5f12: $fa $01 $ea
    ei                                            ; $5f15: $fb
    db $eb                                        ; $5f16: $eb
    db $fd                                        ; $5f17: $fd
    ld a, [$fafb]                                 ; $5f18: $fa $fb $fa
    db $fc                                        ; $5f1b: $fc
    ld [bc], a                                    ; $5f1c: $02
    ld c, $82                                     ; $5f1d: $0e $82
    dec [hl]                                      ; $5f1f: $35
    ld sp, $4302                                  ; $5f20: $31 $02 $43
    adc [hl]                                      ; $5f23: $8e
    adc e                                         ; $5f24: $8b
    adc d                                         ; $5f25: $8a
    cp a                                          ; $5f26: $bf
    sub h                                         ; $5f27: $94
    rst $18                                       ; $5f28: $df
    sub d                                         ; $5f29: $92
    cp a                                          ; $5f2a: $bf
    or b                                          ; $5f2b: $b0
    rst $38                                       ; $5f2c: $ff
    ret nz                                        ; $5f2d: $c0

    ld a, a                                       ; $5f2e: $7f
    ld h, c                                       ; $5f2f: $61
    ccf                                           ; $5f30: $3f
    ld sp, $7f02                                  ; $5f31: $31 $02 $7f
    adc d                                         ; $5f34: $8a
    cp d                                          ; $5f35: $ba
    ld a, [$7d6d]                                 ; $5f36: $fa $6d $7d
    ld l, e                                       ; $5f39: $6b
    ld a, a                                       ; $5f3a: $7f
    ld l, l                                       ; $5f3b: $6d
    ld a, a                                       ; $5f3c: $7f
    ld b, l                                       ; $5f3d: $45
    ld a, a                                       ; $5f3e: $7f
    ld [bc], a                                    ; $5f3f: $02
    ld [bc], a                                    ; $5f40: $02
    ld [bc], a                                    ; $5f41: $02
    ld bc, $0206                                  ; $5f42: $01 $06 $02
    add d                                         ; $5f45: $82
    inc bc                                        ; $5f46: $03
    ld bc, $0204                                  ; $5f47: $01 $04 $02
    ld c, $00                                     ; $5f4a: $0e $00
    add d                                         ; $5f4c: $82
    call nc, Call_000_02fc                        ; $5f4d: $d4 $fc $02
    ld b, b                                       ; $5f50: $40
    adc h                                         ; $5f51: $8c
    ld a, l                                       ; $5f52: $7d
    ld c, a                                       ; $5f53: $4f
    ld a, e                                       ; $5f54: $7b
    ld l, a                                       ; $5f55: $6f
    ld a, a                                       ; $5f56: $7f
    ld [hl], a                                    ; $5f57: $77
    ld a, a                                       ; $5f58: $7f
    ld a, e                                       ; $5f59: $7b
    cp a                                          ; $5f5a: $bf
    rst $38                                       ; $5f5b: $ff
    sbc b                                         ; $5f5c: $98
    rst $38                                       ; $5f5d: $ff
    ld [bc], a                                    ; $5f5e: $02
    ld a, a                                       ; $5f5f: $7f
    inc e                                         ; $5f60: $1c
    nop                                           ; $5f61: $00
    ld [bc], a                                    ; $5f62: $02
    ld bc, $0012                                  ; $5f63: $01 $12 $00
    rst $38                                       ; $5f66: $ff
    rlca                                          ; $5f67: $07
    ld bc, $fde6                                  ; $5f68: $01 $e6 $fd
    ld a, [$eb01]                                 ; $5f6b: $fa $01 $eb
    db $fc                                        ; $5f6e: $fc
    adc h                                         ; $5f6f: $8c
    nop                                           ; $5f70: $00
    inc d                                         ; $5f71: $14
    nop                                           ; $5f72: $00
    ld a, c                                       ; $5f73: $79
    nop                                           ; $5f74: $00
    add sp, $00                                   ; $5f75: $e8 $00
    add b                                         ; $5f77: $80
    nop                                           ; $5f78: $00
    ld b, b                                       ; $5f79: $40
    nop                                           ; $5f7a: $00
    add b                                         ; $5f7b: $80
    ld [$8300], sp                                ; $5f7c: $08 $00 $83
    ld [$0400], sp                                ; $5f7f: $08 $00 $04
    add hl, bc                                    ; $5f82: $09
    nop                                           ; $5f83: $00
    rst $38                                       ; $5f84: $ff
    dec c                                         ; $5f85: $0d
    inc b                                         ; $5f86: $04
    and $fd                                       ; $5f87: $e6 $fd
    ld a, [$ea01]                                 ; $5f89: $fa $01 $ea
    ld sp, hl                                     ; $5f8c: $f9
    db $eb                                        ; $5f8d: $eb
    ei                                            ; $5f8e: $fb
    ld a, [$fafb]                                 ; $5f8f: $fa $fb $fa
    db $fc                                        ; $5f92: $fc
    ld [bc], a                                    ; $5f93: $02
    ld c, $82                                     ; $5f94: $0e $82
    dec [hl]                                      ; $5f96: $35
    ld sp, $4302                                  ; $5f97: $31 $02 $43
    adc [hl]                                      ; $5f9a: $8e
    adc e                                         ; $5f9b: $8b
    adc d                                         ; $5f9c: $8a
    cp a                                          ; $5f9d: $bf
    sub h                                         ; $5f9e: $94
    rst $18                                       ; $5f9f: $df
    sub d                                         ; $5fa0: $92
    cp a                                          ; $5fa1: $bf
    or b                                          ; $5fa2: $b0
    rst $38                                       ; $5fa3: $ff
    ret nz                                        ; $5fa4: $c0

    ld a, a                                       ; $5fa5: $7f
    ld h, c                                       ; $5fa6: $61
    ccf                                           ; $5fa7: $3f
    ld sp, $7f02                                  ; $5fa8: $31 $02 $7f
    adc d                                         ; $5fab: $8a
    cp d                                          ; $5fac: $ba
    ld a, [$7d6d]                                 ; $5fad: $fa $6d $7d
    ld l, e                                       ; $5fb0: $6b
    ld a, a                                       ; $5fb1: $7f
    ld l, l                                       ; $5fb2: $6d
    ld a, a                                       ; $5fb3: $7f
    ld [hl+], a                                   ; $5fb4: $22
    ccf                                           ; $5fb5: $3f
    ld [bc], a                                    ; $5fb6: $02
    ld [bc], a                                    ; $5fb7: $02
    ld [bc], a                                    ; $5fb8: $02
    ld bc, $0206                                  ; $5fb9: $01 $06 $02
    add d                                         ; $5fbc: $82
    inc bc                                        ; $5fbd: $03
    ld bc, $0204                                  ; $5fbe: $01 $04 $02
    inc c                                         ; $5fc1: $0c
    nop                                           ; $5fc2: $00
    ld [bc], a                                    ; $5fc3: $02
    ld [bc], a                                    ; $5fc4: $02
    add d                                         ; $5fc5: $82
    ld [$02fe], a                                 ; $5fc6: $ea $fe $02
    nop                                           ; $5fc9: $00
    adc b                                         ; $5fca: $88
    ld a, [$fa9e]                                 ; $5fcb: $fa $9e $fa
    sbc $7e                                       ; $5fce: $de $7e
    ld l, [hl]                                    ; $5fd0: $6e
    ld a, [hl]                                    ; $5fd1: $7e
    halt                                          ; $5fd2: $76
    ld [bc], a                                    ; $5fd3: $02
    rst $38                                       ; $5fd4: $ff
    add d                                         ; $5fd5: $82
    sbc b                                         ; $5fd6: $98
    rst $38                                       ; $5fd7: $ff
    ld [bc], a                                    ; $5fd8: $02
    ld a, a                                       ; $5fd9: $7f
    ld a, [de]                                    ; $5fda: $1a
    nop                                           ; $5fdb: $00
    inc b                                         ; $5fdc: $04
    ld bc, $0012                                  ; $5fdd: $01 $12 $00
    rst $38                                       ; $5fe0: $ff
    rlca                                          ; $5fe1: $07
    ld bc, $fde6                                  ; $5fe2: $01 $e6 $fd
    ld a, [$eb01]                                 ; $5fe5: $fa $01 $eb
    ld a, [$008c]                                 ; $5fe8: $fa $8c $00
    inc d                                         ; $5feb: $14
    nop                                           ; $5fec: $00
    ld a, c                                       ; $5fed: $79
    nop                                           ; $5fee: $00
    add sp, $00                                   ; $5fef: $e8 $00
    add b                                         ; $5ff1: $80
    nop                                           ; $5ff2: $00
    ld b, b                                       ; $5ff3: $40
    nop                                           ; $5ff4: $00
    add b                                         ; $5ff5: $80
    ld [$8300], sp                                ; $5ff6: $08 $00 $83
    ld [$0400], sp                                ; $5ff9: $08 $00 $04
    add hl, bc                                    ; $5ffc: $09
    nop                                           ; $5ffd: $00
    rst $38                                       ; $5ffe: $ff
    dec c                                         ; $5fff: $0d

Call_0de_6000:
    inc b                                         ; $6000: $04
    and $fd                                       ; $6001: $e6 $fd
    ld a, [$ea01]                                 ; $6003: $fa $01 $ea
    rst $30                                       ; $6006: $f7
    ld [$fafa], a                                 ; $6007: $ea $fa $fa
    ei                                            ; $600a: $fb
    ld a, [$02fc]                                 ; $600b: $fa $fc $02
    rrca                                          ; $600e: $0f
    add d                                         ; $600f: $82
    dec [hl]                                      ; $6010: $35
    ld sp, $4202                                  ; $6011: $31 $02 $42
    adc [hl]                                      ; $6014: $8e
    ld c, e                                       ; $6015: $4b
    ld c, d                                       ; $6016: $4a
    sbc a                                         ; $6017: $9f
    adc d                                         ; $6018: $8a
    xor a                                         ; $6019: $af
    adc c                                         ; $601a: $89
    ld e, a                                       ; $601b: $5f
    ld d, b                                       ; $601c: $50
    ld a, a                                       ; $601d: $7f
    ld h, b                                       ; $601e: $60
    ccf                                           ; $601f: $3f
    jr nc, @+$21                                  ; $6020: $30 $1f

    jr jr_0de_6026                                ; $6022: $18 $02

    ccf                                           ; $6024: $3f
    adc d                                         ; $6025: $8a

jr_0de_6026:
    ld l, $3e                                     ; $6026: $2e $3e
    dec de                                        ; $6028: $1b
    rra                                           ; $6029: $1f
    ld a, [de]                                    ; $602a: $1a
    rra                                           ; $602b: $1f
    dec de                                        ; $602c: $1b
    rra                                           ; $602d: $1f
    ld de, $021f                                  ; $602e: $11 $1f $02
    inc b                                         ; $6031: $04
    ld [bc], a                                    ; $6032: $02
    ld [bc], a                                    ; $6033: $02
    inc b                                         ; $6034: $04
    inc b                                         ; $6035: $04
    adc b                                         ; $6036: $88
    ld b, $02                                     ; $6037: $06 $02
    ld b, $02                                     ; $6039: $06 $02
    rlca                                          ; $603b: $07
    ld bc, $0206                                  ; $603c: $01 $06 $02
    ld [bc], a                                    ; $603f: $02
    ld b, $02                                     ; $6040: $06 $02
    inc b                                         ; $6042: $04
    ld [bc], a                                    ; $6043: $02
    nop                                           ; $6044: $00
    ld [bc], a                                    ; $6045: $02
    inc b                                         ; $6046: $04
    ld [bc], a                                    ; $6047: $02
    ld [bc], a                                    ; $6048: $02
    ld [bc], a                                    ; $6049: $02
    ld b, $8c                                     ; $604a: $06 $8c
    ld [bc], a                                    ; $604c: $02
    ld b, $02                                     ; $604d: $06 $02
    ld b, $ea                                     ; $604f: $06 $ea
    cp $fa                                        ; $6051: $fe $fa
    sbc [hl]                                      ; $6053: $9e
    ld a, [$fade]                                 ; $6054: $fa $de $fa
    and $02                                       ; $6057: $e6 $02
    ld a, a                                       ; $6059: $7f
    add h                                         ; $605a: $84
    db $fc                                        ; $605b: $fc
    rst $38                                       ; $605c: $ff
    sbc e                                         ; $605d: $9b
    rst $38                                       ; $605e: $ff
    ld [bc], a                                    ; $605f: $02
    ld a, h                                       ; $6060: $7c
    ld a, [de]                                    ; $6061: $1a
    nop                                           ; $6062: $00
    ld [bc], a                                    ; $6063: $02
    ld bc, $0014                                  ; $6064: $01 $14 $00
    rst $38                                       ; $6067: $ff
    rlca                                          ; $6068: $07
    ld bc, $fde6                                  ; $6069: $01 $e6 $fd
    ld a, [$eb01]                                 ; $606c: $fa $01 $eb
    ld hl, sp-$74                                 ; $606f: $f8 $8c
    nop                                           ; $6071: $00
    dec d                                         ; $6072: $15
    nop                                           ; $6073: $00
    ld a, d                                       ; $6074: $7a
    nop                                           ; $6075: $00
    ld l, b                                       ; $6076: $68
    nop                                           ; $6077: $00
    ret nz                                        ; $6078: $c0

    nop                                           ; $6079: $00
    and b                                         ; $607a: $a0
    nop                                           ; $607b: $00
    ld b, b                                       ; $607c: $40
    ld [$8300], sp                                ; $607d: $08 $00 $83
    ld [bc], a                                    ; $6080: $02
    nop                                           ; $6081: $00
    ld bc, $0009                                  ; $6082: $01 $09 $00
    rst $38                                       ; $6085: $ff
    dec c                                         ; $6086: $0d
    inc b                                         ; $6087: $04
    and $fd                                       ; $6088: $e6 $fd
    ld a, [$ea01]                                 ; $608a: $fa $01 $ea
    push af                                       ; $608d: $f5
    ld [$faf9], a                                 ; $608e: $ea $f9 $fa
    ld a, [$fcfa]                                 ; $6091: $fa $fa $fc
    ld [bc], a                                    ; $6094: $02
    rrca                                          ; $6095: $0f
    add d                                         ; $6096: $82
    dec [hl]                                      ; $6097: $35
    ld sp, $4302                                  ; $6098: $31 $02 $43
    adc [hl]                                      ; $609b: $8e
    ld c, e                                       ; $609c: $4b
    ld c, d                                       ; $609d: $4a
    xor a                                         ; $609e: $af
    adc d                                         ; $609f: $8a
    xor a                                         ; $60a0: $af
    adc c                                         ; $60a1: $89
    sbc a                                         ; $60a2: $9f
    sub b                                         ; $60a3: $90
    ld a, a                                       ; $60a4: $7f
    ld [hl], b                                    ; $60a5: $70
    ccf                                           ; $60a6: $3f
    jr nz, jr_0de_60c8                            ; $60a7: $20 $1f

    jr jr_0de_60ad                                ; $60a9: $18 $02

    rrca                                          ; $60ab: $0f
    adc d                                         ; $60ac: $8a

jr_0de_60ad:
    ld d, $1e                                     ; $60ad: $16 $1e
    dec de                                        ; $60af: $1b
    rra                                           ; $60b0: $1f
    add hl, bc                                    ; $60b1: $09
    rrca                                          ; $60b2: $0f
    dec c                                         ; $60b3: $0d
    rrca                                          ; $60b4: $0f
    inc c                                         ; $60b5: $0c
    rrca                                          ; $60b6: $0f
    ld [bc], a                                    ; $60b7: $02
    ld [$0402], sp                                ; $60b8: $08 $02 $04
    inc b                                         ; $60bb: $04
    ld [$0c88], sp                                ; $60bc: $08 $88 $0c
    inc b                                         ; $60bf: $04
    inc c                                         ; $60c0: $0c
    inc b                                         ; $60c1: $04
    ld c, $02                                     ; $60c2: $0e $02
    inc c                                         ; $60c4: $0c
    inc b                                         ; $60c5: $04
    ld [bc], a                                    ; $60c6: $02
    inc c                                         ; $60c7: $0c

jr_0de_60c8:
    inc b                                         ; $60c8: $04
    ld [$0403], sp                                ; $60c9: $08 $03 $04
    adc b                                         ; $60cc: $88
    inc c                                         ; $60cd: $0c
    ld a, [bc]                                    ; $60ce: $0a
    ld c, $0a                                     ; $60cf: $0e $0a
    ld c, $05                                     ; $60d1: $0e $05
    rrca                                          ; $60d3: $0f
    cp d                                          ; $60d4: $ba
    ld [bc], a                                    ; $60d5: $02
    cp $8b                                        ; $60d6: $fe $8b
    adc $7f                                       ; $60d8: $ce $7f
    ld d, e                                       ; $60da: $53
    ld a, e                                       ; $60db: $7b
    ld a, a                                       ; $60dc: $7f
    ld a, [hl]                                    ; $60dd: $7e
    ld a, a                                       ; $60de: $7f
    dec a                                         ; $60df: $3d
    ccf                                           ; $60e0: $3f
    ld c, [hl]                                    ; $60e1: $4e
    ld a, [hl]                                    ; $60e2: $7e
    ld [bc], a                                    ; $60e3: $02
    ld a, h                                       ; $60e4: $7c
    ld d, $00                                     ; $60e5: $16 $00
    ld [bc], a                                    ; $60e7: $02
    ld [bc], a                                    ; $60e8: $02
    add d                                         ; $60e9: $82
    ld bc, $0203                                  ; $60ea: $01 $03 $02
    ld [bc], a                                    ; $60ed: $02
    inc d                                         ; $60ee: $14
    nop                                           ; $60ef: $00
    rst $38                                       ; $60f0: $ff
    rlca                                          ; $60f1: $07
    ld bc, $fde6                                  ; $60f2: $01 $e6 $fd
    ld a, [$eb01]                                 ; $60f5: $fa $01 $eb
    or $8c                                        ; $60f8: $f6 $8c
    nop                                           ; $60fa: $00
    dec d                                         ; $60fb: $15
    nop                                           ; $60fc: $00
    ld a, b                                       ; $60fd: $78
    nop                                           ; $60fe: $00
    ld l, b                                       ; $60ff: $68
    nop                                           ; $6100: $00
    and b                                         ; $6101: $a0
    nop                                           ; $6102: $00
    and b                                         ; $6103: $a0
    nop                                           ; $6104: $00
    ret nz                                        ; $6105: $c0

    ld [$8100], sp                                ; $6106: $08 $00 $81
    inc bc                                        ; $6109: $03
    dec bc                                        ; $610a: $0b
    nop                                           ; $610b: $00
    rst $38                                       ; $610c: $ff
    dec c                                         ; $610d: $0d
    inc b                                         ; $610e: $04
    and $fd                                       ; $610f: $e6 $fd
    ld a, [$eb01]                                 ; $6111: $fa $01 $eb
    ld a, [c]                                     ; $6114: $f2
    db $ec                                        ; $6115: $ec
    ld sp, hl                                     ; $6116: $f9
    ei                                            ; $6117: $fb
    ld sp, hl                                     ; $6118: $f9
    ei                                            ; $6119: $fb
    ei                                            ; $611a: $fb
    ld [bc], a                                    ; $611b: $02
    rlca                                          ; $611c: $07
    ld [bc], a                                    ; $611d: $02
    inc e                                         ; $611e: $1c
    sub b                                         ; $611f: $90
    dec hl                                        ; $6120: $2b
    inc hl                                        ; $6121: $23
    ld b, a                                       ; $6122: $47
    ld b, [hl]                                    ; $6123: $46
    ld d, e                                       ; $6124: $53
    ld d, b                                       ; $6125: $50
    xor a                                         ; $6126: $af
    adc c                                         ; $6127: $89
    xor a                                         ; $6128: $af
    adc b                                         ; $6129: $88
    adc a                                         ; $612a: $8f
    adc b                                         ; $612b: $88
    ld a, a                                       ; $612c: $7f
    ld a, b                                       ; $612d: $78
    ccf                                           ; $612e: $3f
    inc [hl]                                      ; $612f: $34
    inc b                                         ; $6130: $04
    rrca                                          ; $6131: $0f
    add l                                         ; $6132: $85
    ld a, [bc]                                    ; $6133: $0a
    rrca                                          ; $6134: $0f
    ld b, $07                                     ; $6135: $06 $07
    ld [bc], a                                    ; $6137: $02
    inc bc                                        ; $6138: $03
    inc bc                                        ; $6139: $03
    ld [bc], a                                    ; $613a: $02
    ld b, b                                       ; $613b: $40
    ld [bc], a                                    ; $613c: $02
    nop                                           ; $613d: $00
    ld [bc], a                                    ; $613e: $02
    ld b, b                                       ; $613f: $40
    ld [bc], a                                    ; $6140: $02
    ld h, b                                       ; $6141: $60
    adc d                                         ; $6142: $8a
    ld [hl], b                                    ; $6143: $70
    db $10                                        ; $6144: $10
    ld [hl], b                                    ; $6145: $70
    jr nc, jr_0de_61b8                            ; $6146: $30 $70

    db $10                                        ; $6148: $10
    ld [hl], b                                    ; $6149: $70
    jr nc, jr_0de_61ac                            ; $614a: $30 $60

    jr nz, jr_0de_6150                            ; $614c: $20 $02

    ld h, b                                       ; $614e: $60
    ld [bc], a                                    ; $614f: $02

jr_0de_6150:
    db $10                                        ; $6150: $10
    adc d                                         ; $6151: $8a
    ld c, b                                       ; $6152: $48
    ld a, b                                       ; $6153: $78
    ld l, b                                       ; $6154: $68
    ld a, b                                       ; $6155: $78
    inc [hl]                                      ; $6156: $34
    ld a, h                                       ; $6157: $7c
    ld a, [de]                                    ; $6158: $1a
    ld a, [hl]                                    ; $6159: $7e
    cp a                                          ; $615a: $bf
    jp hl                                         ; $615b: $e9


    ld [bc], a                                    ; $615c: $02
    nop                                           ; $615d: $00
    adc d                                         ; $615e: $8a
    rst $38                                       ; $615f: $ff
    rst $08                                       ; $6160: $cf
    ld a, e                                       ; $6161: $7b
    ld a, a                                       ; $6162: $7f
    ld a, [hl]                                    ; $6163: $7e
    ld a, a                                       ; $6164: $7f
    dec sp                                        ; $6165: $3b
    ccf                                           ; $6166: $3f
    ld h, $3e                                     ; $6167: $26 $3e
    ld [bc], a                                    ; $6169: $02
    inc a                                         ; $616a: $3c
    inc d                                         ; $616b: $14
    nop                                           ; $616c: $00
    ld [bc], a                                    ; $616d: $02
    ld [bc], a                                    ; $616e: $02
    add d                                         ; $616f: $82
    ld bc, $0203                                  ; $6170: $01 $03 $02
    ld [bc], a                                    ; $6173: $02
    jr jr_0de_6176                                ; $6174: $18 $00

jr_0de_6176:
    rst $38                                       ; $6176: $ff
    add hl, bc                                    ; $6177: $09
    ld [bc], a                                    ; $6178: $02
    and $fd                                       ; $6179: $e6 $fd
    ld a, [$ec01]                                 ; $617b: $fa $01 $ec
    di                                            ; $617e: $f3
    db $ec                                        ; $617f: $ec
    db $f4                                        ; $6180: $f4
    adc [hl]                                      ; $6181: $8e
    nop                                           ; $6182: $00
    ld b, $00                                     ; $6183: $06 $00
    jr z, jr_0de_6187                             ; $6185: $28 $00

jr_0de_6187:
    ld [hl], b                                    ; $6187: $70
    nop                                           ; $6188: $00
    ld e, b                                       ; $6189: $58
    nop                                           ; $618a: $00
    and b                                         ; $618b: $a0
    nop                                           ; $618c: $00
    and b                                         ; $618d: $a0
    nop                                           ; $618e: $00
    ldh [rTMA], a                                 ; $618f: $e0 $06
    nop                                           ; $6191: $00
    add c                                         ; $6192: $81
    ld bc, $001f                                  ; $6193: $01 $1f $00
    add c                                         ; $6196: $81
    ld bc, $000b                                  ; $6197: $01 $0b $00
    rst $38                                       ; $619a: $ff
    dec c                                         ; $619b: $0d
    inc b                                         ; $619c: $04
    and $fd                                       ; $619d: $e6 $fd
    ld a, [$ed01]                                 ; $619f: $fa $01 $ed
    db $ed                                        ; $61a2: $ed
    xor $f5                                       ; $61a3: $ee $f5
    ei                                            ; $61a5: $fb
    ld sp, hl                                     ; $61a6: $f9
    db $fd                                        ; $61a7: $fd
    pop af                                        ; $61a8: $f1
    ld [bc], a                                    ; $61a9: $02
    rlca                                          ; $61aa: $07
    ld [bc], a                                    ; $61ab: $02

jr_0de_61ac:
    inc e                                         ; $61ac: $1c
    sub b                                         ; $61ad: $90
    dec hl                                        ; $61ae: $2b
    inc hl                                        ; $61af: $23
    ld b, a                                       ; $61b0: $47
    ld b, [hl]                                    ; $61b1: $46
    ld d, e                                       ; $61b2: $53
    ld d, b                                       ; $61b3: $50
    xor a                                         ; $61b4: $af
    adc c                                         ; $61b5: $89
    xor a                                         ; $61b6: $af
    adc b                                         ; $61b7: $88

jr_0de_61b8:
    adc a                                         ; $61b8: $8f
    adc b                                         ; $61b9: $88
    ld a, a                                       ; $61ba: $7f
    ld a, b                                       ; $61bb: $78
    ccf                                           ; $61bc: $3f
    ld [hl], $02                                  ; $61bd: $36 $02
    rrca                                          ; $61bf: $0f
    add d                                         ; $61c0: $82
    dec b                                         ; $61c1: $05
    rlca                                          ; $61c2: $07
    ld [bc], a                                    ; $61c3: $02
    inc bc                                        ; $61c4: $03
    ld b, $00                                     ; $61c5: $06 $00
    ld [bc], a                                    ; $61c7: $02
    add b                                         ; $61c8: $80
    ld [bc], a                                    ; $61c9: $02
    nop                                           ; $61ca: $00
    ld [bc], a                                    ; $61cb: $02
    add b                                         ; $61cc: $80
    ld [bc], a                                    ; $61cd: $02
    ret nz                                        ; $61ce: $c0

    sbc b                                         ; $61cf: $98
    ldh [rNR41], a                                ; $61d0: $e0 $20
    ldh [$60], a                                  ; $61d2: $e0 $60
    ldh [rNR41], a                                ; $61d4: $e0 $20
    ldh [rNR41], a                                ; $61d6: $e0 $20
    ret nc                                        ; $61d8: $d0

    ld d, b                                       ; $61d9: $50
    xor b                                         ; $61da: $a8
    cp b                                          ; $61db: $b8
    ld [hl], h                                    ; $61dc: $74
    db $fc                                        ; $61dd: $fc
    cp d                                          ; $61de: $ba
    cp $9d                                        ; $61df: $fe $9d
    rst $38                                       ; $61e1: $ff
    ld b, a                                       ; $61e2: $47
    ld a, h                                       ; $61e3: $7c
    cpl                                           ; $61e4: $2f
    dec sp                                        ; $61e5: $3b
    ccf                                           ; $61e6: $3f
    scf                                           ; $61e7: $37
    ld [bc], a                                    ; $61e8: $02
    inc c                                         ; $61e9: $0c
    adc d                                         ; $61ea: $8a
    rlca                                          ; $61eb: $07
    rrca                                          ; $61ec: $0f
    dec b                                         ; $61ed: $05
    rrca                                          ; $61ee: $0f
    ld a, [$eefe]                                 ; $61ef: $fa $fe $ee
    cp $4c                                        ; $61f2: $fe $4c
    ld a, h                                       ; $61f4: $7c
    ld [bc], a                                    ; $61f5: $02
    ld [hl], b                                    ; $61f6: $70
    inc d                                         ; $61f7: $14
    nop                                           ; $61f8: $00
    ld [bc], a                                    ; $61f9: $02
    ld bc, $001c                                  ; $61fa: $01 $1c $00
    rst $38                                       ; $61fd: $ff
    add hl, bc                                    ; $61fe: $09
    ld [bc], a                                    ; $61ff: $02
    and $fd                                       ; $6200: $e6 $fd
    ld a, [$ee01]                                 ; $6202: $fa $01 $ee
    xor $ee                                       ; $6205: $ee $ee
    ldh a, [$8e]                                  ; $6207: $f0 $8e
    nop                                           ; $6209: $00
    ld b, $00                                     ; $620a: $06 $00
    jr z, jr_0de_620e                             ; $620c: $28 $00

jr_0de_620e:
    ld [hl], b                                    ; $620e: $70
    nop                                           ; $620f: $00
    ld e, b                                       ; $6210: $58
    nop                                           ; $6211: $00
    and b                                         ; $6212: $a0
    nop                                           ; $6213: $00
    and b                                         ; $6214: $a0
    nop                                           ; $6215: $00
    ldh [rNR43], a                                ; $6216: $e0 $22
    nop                                           ; $6218: $00
    add e                                         ; $6219: $83
    ld bc, $0200                                  ; $621a: $01 $00 $02
    dec c                                         ; $621d: $0d
    nop                                           ; $621e: $00
    rst $38                                       ; $621f: $ff
    dec bc                                        ; $6220: $0b
    inc bc                                        ; $6221: $03
    and $fd                                       ; $6222: $e6 $fd
    ld a, [$f201]                                 ; $6224: $fa $01 $f2
    jp hl                                         ; $6227: $e9


    ld a, [c]                                     ; $6228: $f2
    pop af                                        ; $6229: $f1
    ld a, [c]                                     ; $622a: $f2
    ld hl, sp+$02                                 ; $622b: $f8 $02
    inc c                                         ; $622d: $0c
    ld [bc], a                                    ; $622e: $02
    ld [de], a                                    ; $622f: $12
    ld [bc], a                                    ; $6230: $02
    ld l, $8e                                     ; $6231: $2e $8e
    ld d, a                                       ; $6233: $57
    ld b, l                                       ; $6234: $45
    ld b, a                                       ; $6235: $47
    ld b, b                                       ; $6236: $40
    ld d, a                                       ; $6237: $57
    ld d, d                                       ; $6238: $52
    xor a                                         ; $6239: $af
    adc b                                         ; $623a: $88
    xor a                                         ; $623b: $af
    adc b                                         ; $623c: $88
    ld b, a                                       ; $623d: $47
    ld b, h                                       ; $623e: $44
    ccf                                           ; $623f: $3f
    dec a                                         ; $6240: $3d
    ld [bc], a                                    ; $6241: $02
    rra                                           ; $6242: $1f
    ld [bc], a                                    ; $6243: $02
    ld bc, $000c                                  ; $6244: $01 $0c $00
    ld [bc], a                                    ; $6247: $02
    add b                                         ; $6248: $80
    adc h                                         ; $6249: $8c
    ret nz                                        ; $624a: $c0

    ld b, b                                       ; $624b: $40
    ldh [rNR41], a                                ; $624c: $e0 $20
    ldh a, [rNR10]                                ; $624e: $f0 $10
    ld hl, sp+$18                                 ; $6250: $f8 $18
    rst $30                                       ; $6252: $f7
    rla                                           ; $6253: $17
    add sp, $2f                                   ; $6254: $e8 $2f
    ld [bc], a                                    ; $6256: $02
    rst $38                                       ; $6257: $ff
    add [hl]                                      ; $6258: $86
    rst $00                                       ; $6259: $c7
    rst $38                                       ; $625a: $ff
    ld [hl], c                                    ; $625b: $71
    cp $bc                                        ; $625c: $fe $bc
    cp a                                          ; $625e: $bf
    ld [bc], a                                    ; $625f: $02
    rrca                                          ; $6260: $0f
    ld [bc], a                                    ; $6261: $02
    ld bc, $0012                                  ; $6262: $01 $12 $00
    ld [bc], a                                    ; $6265: $02
    ld a, b                                       ; $6266: $78
    adc h                                         ; $6267: $8c
    rra                                           ; $6268: $1f
    ld l, a                                       ; $6269: $6f
    ld [hl], l                                    ; $626a: $75
    ld e, a                                       ; $626b: $5f
    ld a, l                                       ; $626c: $7d
    ccf                                           ; $626d: $3f
    ld a, l                                       ; $626e: $7d
    ccf                                           ; $626f: $3f
    ld a, d                                       ; $6270: $7a
    ld a, [hl]                                    ; $6271: $7e
    ld [hl], d                                    ; $6272: $72
    ld a, [hl]                                    ; $6273: $7e
    ld [bc], a                                    ; $6274: $02
    inc a                                         ; $6275: $3c
    rst $38                                       ; $6276: $ff
    add hl, bc                                    ; $6277: $09
    ld [bc], a                                    ; $6278: $02
    and $fd                                       ; $6279: $e6 $fd
    ld a, [$f301]                                 ; $627b: $fa $01 $f3
    ld [$eef3], a                                 ; $627e: $ea $f3 $ee
    sub b                                         ; $6281: $90
    nop                                           ; $6282: $00
    jr jr_0de_6285                                ; $6283: $18 $00

jr_0de_6285:
    jr nz, jr_0de_6287                            ; $6285: $20 $00

jr_0de_6287:
    ld d, b                                       ; $6287: $50
    nop                                           ; $6288: $00
    ld [hl], b                                    ; $6289: $70
    nop                                           ; $628a: $00
    ld d, b                                       ; $628b: $50
    nop                                           ; $628c: $00
    and b                                         ; $628d: $a0
    nop                                           ; $628e: $00
    and b                                         ; $628f: $a0
    nop                                           ; $6290: $00
    ld [hl], b                                    ; $6291: $70
    inc e                                         ; $6292: $1c
    nop                                           ; $6293: $00
    add e                                         ; $6294: $83
    ld bc, $0200                                  ; $6295: $01 $00 $02
    ld de, $ff00                                  ; $6298: $11 $00 $ff
    dec bc                                        ; $629b: $0b
    inc bc                                        ; $629c: $03
    and $fd                                       ; $629d: $e6 $fd
    ld a, [$f901]                                 ; $629f: $fa $01 $f9
    and $f9                                       ; $62a2: $e6 $f9
    xor $f9                                       ; $62a4: $ee $f9
    or $02                                        ; $62a6: $f6 $02
    ld [hl+], a                                   ; $62a8: $22
    sub b                                         ; $62a9: $90
    ld e, a                                       ; $62aa: $5f
    ld e, l                                       ; $62ab: $5d
    ld a, a                                       ; $62ac: $7f
    ld h, b                                       ; $62ad: $60
    cp a                                          ; $62ae: $bf
    or h                                          ; $62af: $b4
    rst $08                                       ; $62b0: $cf
    adc b                                         ; $62b1: $88
    sbc a                                         ; $62b2: $9f
    sub b                                         ; $62b3: $90
    ld c, a                                       ; $62b4: $4f
    ld c, [hl]                                    ; $62b5: $4e
    ld c, e                                       ; $62b6: $4b
    ld b, d                                       ; $62b7: $42
    dec h                                         ; $62b8: $25
    ld hl, $1f02                                  ; $62b9: $21 $02 $1f
    ld c, $00                                     ; $62bc: $0e $00
    ld [bc], a                                    ; $62be: $02
    add b                                         ; $62bf: $80
    ld [bc], a                                    ; $62c0: $02
    rst $28                                       ; $62c1: $ef
    adc h                                         ; $62c2: $8c
    db $f4                                        ; $62c3: $f4
    scf                                           ; $62c4: $37
    db $eb                                        ; $62c5: $eb
    cpl                                           ; $62c6: $2f
    cp $3f                                        ; $62c7: $fe $3f
    ldh a, [$7f]                                  ; $62c9: $f0 $7f
    cp $ff                                        ; $62cb: $fe $ff
    xor a                                         ; $62cd: $af
    cp a                                          ; $62ce: $bf
    ld [bc], a                                    ; $62cf: $02
    db $10                                        ; $62d0: $10
    ld c, $00                                     ; $62d1: $0e $00
    ld [bc], a                                    ; $62d3: $02
    ld [bc], a                                    ; $62d4: $02
    adc [hl]                                      ; $62d5: $8e
    db $fd                                        ; $62d6: $fd
    rst $38                                       ; $62d7: $ff
    dec a                                         ; $62d8: $3d
    rst $38                                       ; $62d9: $ff
    db $dd                                        ; $62da: $dd
    rst $30                                       ; $62db: $f7
    ld a, a                                       ; $62dc: $7f
    rst $28                                       ; $62dd: $ef
    rst $38                                       ; $62de: $ff
    sbc a                                         ; $62df: $9f
    db $fd                                        ; $62e0: $fd
    cp a                                          ; $62e1: $bf
    ld sp, hl                                     ; $62e2: $f9
    rst $38                                       ; $62e3: $ff
    ld [bc], a                                    ; $62e4: $02
    ld b, $0c                                     ; $62e5: $06 $0c
    nop                                           ; $62e7: $00
    rst $38                                       ; $62e8: $ff
    add hl, bc                                    ; $62e9: $09
    ld [bc], a                                    ; $62ea: $02
    and $fd                                       ; $62eb: $e6 $fd
    ld a, [$fa01]                                 ; $62ed: $fa $01 $fa
    rst $20                                       ; $62f0: $e7
    ld a, [$82eb]                                 ; $62f1: $fa $eb $82
    nop                                           ; $62f4: $00
    ld b, b                                       ; $62f5: $40
    inc bc                                        ; $62f6: $03
    nop                                           ; $62f7: $00
    adc e                                         ; $62f8: $8b
    add b                                         ; $62f9: $80
    nop                                           ; $62fa: $00
    ld h, b                                       ; $62fb: $60
    nop                                           ; $62fc: $00
    ret nz                                        ; $62fd: $c0

    nop                                           ; $62fe: $00
    ld h, b                                       ; $62ff: $60

Call_0de_6300:
    nop                                           ; $6300: $00
    ld l, b                                       ; $6301: $68
    nop                                           ; $6302: $00
    inc [hl]                                      ; $6303: $34
    inc d                                         ; $6304: $14
    nop                                           ; $6305: $00
    add e                                         ; $6306: $83
    ld bc, $0200                                  ; $6307: $01 $00 $02
    add hl, de                                    ; $630a: $19
    nop                                           ; $630b: $00
    rst $38                                       ; $630c: $ff
    dec bc                                        ; $630d: $0b
    inc bc                                        ; $630e: $03
    and $fd                                       ; $630f: $e6 $fd
    ld a, [$f601]                                 ; $6311: $fa $01 $f6
    and $f6                                       ; $6314: $e6 $f6
    xor $f6                                       ; $6316: $ee $f6
    or $04                                        ; $6318: $f6 $04
    nop                                           ; $631a: $00
    ld [bc], a                                    ; $631b: $02
    ld [bc], a                                    ; $631c: $02
    sub b                                         ; $631d: $90
    ld c, a                                       ; $631e: $4f
    ld c, l                                       ; $631f: $4d
    cp a                                          ; $6320: $bf
    or b                                          ; $6321: $b0
    rst $18                                       ; $6322: $df
    call nz, $b8bf                                ; $6323: $c4 $bf $b8
    rst $08                                       ; $6326: $cf
    add b                                         ; $6327: $80
    sbc a                                         ; $6328: $9f
    sbc h                                         ; $6329: $9c
    ld c, e                                       ; $632a: $4b
    ld b, d                                       ; $632b: $42
    ld b, l                                       ; $632c: $45
    ld b, c                                       ; $632d: $41
    ld [bc], a                                    ; $632e: $02
    inc sp                                        ; $632f: $33
    ld [bc], a                                    ; $6330: $02
    inc c                                         ; $6331: $0c
    inc c                                         ; $6332: $0c
    nop                                           ; $6333: $00
    ld [bc], a                                    ; $6334: $02
    adc a                                         ; $6335: $8f
    adc h                                         ; $6336: $8c
    call nc, $ebd7                                ; $6337: $d4 $d7 $eb
    cpl                                           ; $633a: $2f
    cp $3f                                        ; $633b: $fe $3f
    ldh a, [$3f]                                  ; $633d: $f0 $3f
    cp $7f                                        ; $633f: $fe $7f
    rst $28                                       ; $6341: $ef
    rst $38                                       ; $6342: $ff
    ld [bc], a                                    ; $6343: $02
    or b                                          ; $6344: $b0
    ld a, [bc]                                    ; $6345: $0a
    nop                                           ; $6346: $00
    ld [bc], a                                    ; $6347: $02
    inc b                                         ; $6348: $04
    add l                                         ; $6349: $85
    ld a, [bc]                                    ; $634a: $0a
    ld c, $fa                                     ; $634b: $0e $fa
    cp $0d                                        ; $634d: $fe $0d
    ld [bc], a                                    ; $634f: $02
    rst $38                                       ; $6350: $ff
    add a                                         ; $6351: $87
    rst $28                                       ; $6352: $ef
    ld a, a                                       ; $6353: $7f
    rst $28                                       ; $6354: $ef
    db $fd                                        ; $6355: $fd
    sbc a                                         ; $6356: $9f
    db $fd                                        ; $6357: $fd
    cp a                                          ; $6358: $bf
    ld [bc], a                                    ; $6359: $02
    or $0e                                        ; $635a: $f6 $0e
    nop                                           ; $635c: $00
    rst $38                                       ; $635d: $ff
    add hl, bc                                    ; $635e: $09
    ld [bc], a                                    ; $635f: $02
    and $fd                                       ; $6360: $e6 $fd
    ld a, [$fa01]                                 ; $6362: $fa $01 $fa
    rst $20                                       ; $6365: $e7
    ld a, [$90eb]                                 ; $6366: $fa $eb $90
    nop                                           ; $6369: $00
    add b                                         ; $636a: $80
    nop                                           ; $636b: $00
    ld b, b                                       ; $636c: $40
    nop                                           ; $636d: $00
    add b                                         ; $636e: $80
    nop                                           ; $636f: $00
    ld h, b                                       ; $6370: $60
    nop                                           ; $6371: $00
    ret nz                                        ; $6372: $c0

    nop                                           ; $6373: $00
    ld l, b                                       ; $6374: $68
    nop                                           ; $6375: $00
    ld [hl], h                                    ; $6376: $74
    nop                                           ; $6377: $00
    jr @+$12                                      ; $6378: $18 $10

    nop                                           ; $637a: $00
    add e                                         ; $637b: $83
    ld bc, $0200                                  ; $637c: $01 $00 $02
    dec e                                         ; $637f: $1d
    nop                                           ; $6380: $00
    rst $38                                       ; $6381: $ff
    dec bc                                        ; $6382: $0b
    inc bc                                        ; $6383: $03
    and $fd                                       ; $6384: $e6 $fd
    ld a, [$f701]                                 ; $6386: $fa $01 $f7
    and $f7                                       ; $6389: $e6 $f7
    xor $f7                                       ; $638b: $ee $f7
    or $02                                        ; $638d: $f6 $02
    ld [hl+], a                                   ; $638f: $22
    sub b                                         ; $6390: $90
    ld e, a                                       ; $6391: $5f
    ld e, l                                       ; $6392: $5d
    ld a, a                                       ; $6393: $7f
    ld h, b                                       ; $6394: $60
    cp a                                          ; $6395: $bf
    or h                                          ; $6396: $b4
    rst $08                                       ; $6397: $cf
    adc b                                         ; $6398: $88
    sbc a                                         ; $6399: $9f
    sub b                                         ; $639a: $90
    ld c, a                                       ; $639b: $4f
    ld c, [hl]                                    ; $639c: $4e
    ld c, e                                       ; $639d: $4b
    ld b, d                                       ; $639e: $42
    dec h                                         ; $639f: $25
    ld hl, $1f02                                  ; $63a0: $21 $02 $1f
    ld c, $00                                     ; $63a3: $0e $00
    ld [bc], a                                    ; $63a5: $02
    add b                                         ; $63a6: $80
    ld [bc], a                                    ; $63a7: $02
    ret nz                                        ; $63a8: $c0

    adc [hl]                                      ; $63a9: $8e
    rst $28                                       ; $63aa: $ef
    cpl                                           ; $63ab: $2f
    db $f4                                        ; $63ac: $f4
    scf                                           ; $63ad: $37
    db $eb                                        ; $63ae: $eb
    cpl                                           ; $63af: $2f
    cp $7f                                        ; $63b0: $fe $7f
    ldh a, [rIE]                                  ; $63b2: $f0 $ff
    cp $ff                                        ; $63b4: $fe $ff
    cpl                                           ; $63b6: $2f
    ccf                                           ; $63b7: $3f
    ld [bc], a                                    ; $63b8: $02
    db $10                                        ; $63b9: $10
    stop                                          ; $63ba: $10 $00
    ld [bc], a                                    ; $63bc: $02
    add d                                         ; $63bd: $82
    adc [hl]                                      ; $63be: $8e
    ld a, l                                       ; $63bf: $7d
    rst $38                                       ; $63c0: $ff
    sbc l                                         ; $63c1: $9d
    rst $30                                       ; $63c2: $f7
    ld a, l                                       ; $63c3: $7d
    rst $28                                       ; $63c4: $ef
    rst $30                                       ; $63c5: $f7
    sbc a                                         ; $63c6: $9f
    rst $38                                       ; $63c7: $ff
    cp a                                          ; $63c8: $bf
    db $fd                                        ; $63c9: $fd
    rst $38                                       ; $63ca: $ff
    add hl, de                                    ; $63cb: $19
    rra                                           ; $63cc: $1f
    ld [bc], a                                    ; $63cd: $02
    ld b, $08                                     ; $63ce: $06 $08
    nop                                           ; $63d0: $00
    rst $38                                       ; $63d1: $ff
    add hl, bc                                    ; $63d2: $09
    ld [bc], a                                    ; $63d3: $02
    and $fd                                       ; $63d4: $e6 $fd
    ld a, [$f801]                                 ; $63d6: $fa $01 $f8
    rst $20                                       ; $63d9: $e7
    ld hl, sp-$15                                 ; $63da: $f8 $eb
    add d                                         ; $63dc: $82
    nop                                           ; $63dd: $00
    ld b, b                                       ; $63de: $40
    inc bc                                        ; $63df: $03
    nop                                           ; $63e0: $00
    adc e                                         ; $63e1: $8b
    add b                                         ; $63e2: $80
    nop                                           ; $63e3: $00
    ld h, b                                       ; $63e4: $60
    nop                                           ; $63e5: $00
    ret nz                                        ; $63e6: $c0

    nop                                           ; $63e7: $00
    ld h, b                                       ; $63e8: $60
    nop                                           ; $63e9: $00
    ld l, b                                       ; $63ea: $68
    nop                                           ; $63eb: $00
    inc [hl]                                      ; $63ec: $34
    ld d, $00                                     ; $63ed: $16 $00
    add e                                         ; $63ef: $83
    ld bc, $0200                                  ; $63f0: $01 $00 $02
    rla                                           ; $63f3: $17
    nop                                           ; $63f4: $00
    rst $38                                       ; $63f5: $ff
    dec bc                                        ; $63f6: $0b
    inc bc                                        ; $63f7: $03
    and $fd                                       ; $63f8: $e6 $fd
    ld a, [$f801]                                 ; $63fa: $fa $01 $f8
    and $f8                                       ; $63fd: $e6 $f8
    xor $f8                                       ; $63ff: $ee $f8
    or $02                                        ; $6401: $f6 $02
    nop                                           ; $6403: $00
    ld [bc], a                                    ; $6404: $02
    ld [hl+], a                                   ; $6405: $22
    sub b                                         ; $6406: $90
    ld e, a                                       ; $6407: $5f
    ld e, l                                       ; $6408: $5d

jr_0de_6409:
    ld a, a                                       ; $6409: $7f
    ld h, b                                       ; $640a: $60
    cp a                                          ; $640b: $bf
    or h                                          ; $640c: $b4
    rst $08                                       ; $640d: $cf
    adc b                                         ; $640e: $88
    sbc a                                         ; $640f: $9f
    sub b                                         ; $6410: $90
    ld c, a                                       ; $6411: $4f
    ld c, [hl]                                    ; $6412: $4e
    ld c, e                                       ; $6413: $4b
    ld b, d                                       ; $6414: $42
    dec h                                         ; $6415: $25
    ld hl, $1f02                                  ; $6416: $21 $02 $1f
    inc c                                         ; $6419: $0c
    nop                                           ; $641a: $00
    ld [bc], a                                    ; $641b: $02
    ld bc, $8e8a                                  ; $641c: $01 $8a $8e

jr_0de_641f:
    adc a                                         ; $641f: $8f
    push af                                       ; $6420: $f5
    ld [hl], a                                    ; $6421: $77
    ld [$fe2f], a                                 ; $6422: $ea $2f $fe
    ccf                                           ; $6425: $3f
    ldh a, [$7f]                                  ; $6426: $f0 $7f
    ld [bc], a                                    ; $6428: $02

jr_0de_6429:
    rst $38                                       ; $6429: $ff
    add d                                         ; $642a: $82
    rst $28                                       ; $642b: $ef
    rst $38                                       ; $642c: $ff
    ld [bc], a                                    ; $642d: $02
    or b                                          ; $642e: $b0
    inc c                                         ; $642f: $0c
    nop                                           ; $6430: $00
    ld [bc], a                                    ; $6431: $02
    ld b, $83                                     ; $6432: $06 $83
    db $fd                                        ; $6434: $fd
    rst $38                                       ; $6435: $ff
    dec e                                         ; $6436: $1d
    ld [bc], a                                    ; $6437: $02
    rst $38                                       ; $6438: $ff
    add a                                         ; $6439: $87

jr_0de_643a:
    rst $30                                       ; $643a: $f7
    ld a, a                                       ; $643b: $7f
    rst $28                                       ; $643c: $ef
    db $fd                                        ; $643d: $fd
    sbc a                                         ; $643e: $9f
    db $fd                                        ; $643f: $fd
    cp a                                          ; $6440: $bf
    ld [bc], a                                    ; $6441: $02
    cp $10                                        ; $6442: $fe $10
    nop                                           ; $6444: $00
    rst $38                                       ; $6445: $ff
    add hl, bc                                    ; $6446: $09
    ld [bc], a                                    ; $6447: $02
    and $fd                                       ; $6448: $e6 $fd
    ld a, [$fa01]                                 ; $644a: $fa $01 $fa
    rst $20                                       ; $644d: $e7
    ld a, [$82eb]                                 ; $644e: $fa $eb $82
    nop                                           ; $6451: $00
    ld b, b                                       ; $6452: $40
    inc bc                                        ; $6453: $03
    nop                                           ; $6454: $00
    adc e                                         ; $6455: $8b
    add b                                         ; $6456: $80
    nop                                           ; $6457: $00
    ld h, b                                       ; $6458: $60
    nop                                           ; $6459: $00
    ret nz                                        ; $645a: $c0

    nop                                           ; $645b: $00
    ld h, b                                       ; $645c: $60
    nop                                           ; $645d: $00
    ld l, b                                       ; $645e: $68
    nop                                           ; $645f: $00
    inc [hl]                                      ; $6460: $34
    ld [de], a                                    ; $6461: $12
    nop                                           ; $6462: $00
    add e                                         ; $6463: $83
    ld bc, $0200                                  ; $6464: $01 $00 $02
    dec de                                        ; $6467: $1b
    nop                                           ; $6468: $00
    rst $38                                       ; $6469: $ff
    dec c                                         ; $646a: $0d
    inc b                                         ; $646b: $04
    ei                                            ; $646c: $fb
    dec b                                         ; $646d: $05
    rst $30                                       ; $646e: $f7
    cp $ea                                        ; $646f: $fe $ea
    ld a, [$00ea]                                 ; $6471: $fa $ea $00
    ld a, [$fafa]                                 ; $6474: $fa $fa $fa
    rst $38                                       ; $6477: $ff
    ld [bc], a                                    ; $6478: $02
    rrca                                          ; $6479: $0f
    ld [bc], a                                    ; $647a: $02
    ld [de], a                                    ; $647b: $12
    add e                                         ; $647c: $83
    jr z, @+$22                                   ; $647d: $28 $20

    ld hl, $2005                                  ; $647f: $21 $05 $20
    ld [bc], a                                    ; $6482: $02
    dec [hl]                                      ; $6483: $35
    ld [bc], a                                    ; $6484: $02
    jr jr_0de_6409                                ; $6485: $18 $82

    rra                                           ; $6487: $1f
    rla                                           ; $6488: $17
    ld [bc], a                                    ; $6489: $02
    ld [$3789], sp                                ; $648a: $08 $89 $37
    ccf                                           ; $648d: $3f
    ld e, b                                       ; $648e: $58
    ld a, a                                       ; $648f: $7f
    ld e, l                                       ; $6490: $5d

jr_0de_6491:
    ld a, a                                       ; $6491: $7f
    sbc a                                         ; $6492: $9f
    rst $38                                       ; $6493: $ff
    cp a                                          ; $6494: $bf
    ld [bc], a                                    ; $6495: $02
    rst $38                                       ; $6496: $ff
    add c                                         ; $6497: $81
    cp a                                          ; $6498: $bf
    ld [bc], a                                    ; $6499: $02
    jr nz, jr_0de_641f                            ; $649a: $20 $83

    jr nc, jr_0de_64ae                            ; $649c: $30 $10

    jr z, @+$07                                   ; $649e: $28 $05

    ld [$2802], sp                                ; $64a0: $08 $02 $28
    ld [bc], a                                    ; $64a3: $02
    jr jr_0de_64a9                                ; $64a4: $18 $03

    jr nc, jr_0de_6429                            ; $64a6: $30 $81

    db $10                                        ; $64a8: $10

jr_0de_64a9:
    ld [bc], a                                    ; $64a9: $02
    jr nz, jr_0de_643a                            ; $64aa: $20 $8e

    jr jr_0de_64e6                                ; $64ac: $18 $38

jr_0de_64ae:
    inc [hl]                                      ; $64ae: $34
    inc a                                         ; $64af: $3c
    inc [hl]                                      ; $64b0: $34
    inc a                                         ; $64b1: $3c
    ld [hl-], a                                   ; $64b2: $32
    ld a, $3a                                     ; $64b3: $3e $3a
    ld a, $3f                                     ; $64b5: $3e $3f
    dec a                                         ; $64b7: $3d
    rst $38                                       ; $64b8: $ff
    cp a                                          ; $64b9: $bf
    ld [bc], a                                    ; $64ba: $02
    rst $38                                       ; $64bb: $ff
    inc b                                         ; $64bc: $04
    ccf                                           ; $64bd: $3f
    ld [bc], a                                    ; $64be: $02
    ld a, a                                       ; $64bf: $7f
    add h                                         ; $64c0: $84
    ld a, [hl]                                    ; $64c1: $7e
    ld a, a                                       ; $64c2: $7f
    cpl                                           ; $64c3: $2f
    ccf                                           ; $64c4: $3f
    ld [bc], a                                    ; $64c5: $02
    jr jr_0de_64d8                                ; $64c6: $18 $10

    nop                                           ; $64c8: $00
    add l                                         ; $64c9: $85
    rra                                           ; $64ca: $1f
    dec e                                         ; $64cb: $1d
    rla                                           ; $64cc: $17
    rra                                           ; $64cd: $1f
    inc d                                         ; $64ce: $14
    inc bc                                        ; $64cf: $03
    inc e                                         ; $64d0: $1c
    add [hl]                                      ; $64d1: $86
    ld d, $1e                                     ; $64d2: $16 $1e
    ld c, $1e                                     ; $64d4: $0e $1e
    inc d                                         ; $64d6: $14
    inc e                                         ; $64d7: $1c

jr_0de_64d8:
    ld [bc], a                                    ; $64d8: $02
    jr jr_0de_64eb                                ; $64d9: $18 $10

    nop                                           ; $64db: $00
    rst $38                                       ; $64dc: $ff
    rlca                                          ; $64dd: $07
    ld bc, $07f8                                  ; $64de: $01 $f8 $07
    ld a, [c]                                     ; $64e1: $f2
    ld bc, $fceb                                  ; $64e2: $01 $eb $fc
    ld [bc], a                                    ; $64e5: $02

jr_0de_64e6:
    inc [hl]                                      ; $64e6: $34
    ld [bc], a                                    ; $64e7: $02
    ld e, l                                       ; $64e8: $5d
    ld [bc], a                                    ; $64e9: $02
    ld a, e                                       ; $64ea: $7b

jr_0de_64eb:
    ld [bc], a                                    ; $64eb: $02
    ld a, a                                       ; $64ec: $7f
    ld [bc], a                                    ; $64ed: $02
    ld a, l                                       ; $64ee: $7d
    ld [bc], a                                    ; $64ef: $02
    ld a, [hl+]                                   ; $64f0: $2a
    ld [bc], a                                    ; $64f1: $02
    inc e                                         ; $64f2: $1c
    ld [bc], a                                    ; $64f3: $02
    nop                                           ; $64f4: $00
    add c                                         ; $64f5: $81
    inc e                                         ; $64f6: $1c
    rrca                                          ; $64f7: $0f
    nop                                           ; $64f8: $00
    rst $38                                       ; $64f9: $ff
    dec c                                         ; $64fa: $0d
    inc b                                         ; $64fb: $04
    ei                                            ; $64fc: $fb
    dec b                                         ; $64fd: $05
    rst $30                                       ; $64fe: $f7
    cp $ea                                        ; $64ff: $fe $ea
    ld a, [$ffea]                                 ; $6501: $fa $ea $ff
    ld a, [$fafa]                                 ; $6504: $fa $fa $fa
    cp $02                                        ; $6507: $fe $02
    rrca                                          ; $6509: $0f
    add d                                         ; $650a: $82
    ld a, [de]                                    ; $650b: $1a
    ld [de], a                                    ; $650c: $12
    ld [bc], a                                    ; $650d: $02
    jr nz, jr_0de_6491                            ; $650e: $20 $81

    ld [hl+], a                                   ; $6510: $22
    dec b                                         ; $6511: $05
    jr nz, jr_0de_6516                            ; $6512: $20 $02

    dec sp                                        ; $6514: $3b
    ld [bc], a                                    ; $6515: $02

jr_0de_6516:
    add hl, de                                    ; $6516: $19
    add d                                         ; $6517: $82
    rra                                           ; $6518: $1f
    ld e, $02                                     ; $6519: $1e $02
    add hl, bc                                    ; $651b: $09
    adc h                                         ; $651c: $8c
    rla                                           ; $651d: $17
    rra                                           ; $651e: $1f
    jr c, jr_0de_6560                             ; $651f: $38 $3f

    ld e, l                                       ; $6521: $5d

jr_0de_6522:
    ld a, a                                       ; $6522: $7f
    ld e, a                                       ; $6523: $5f
    ld a, a                                       ; $6524: $7f
    sbc a                                         ; $6525: $9f
    rst $38                                       ; $6526: $ff
    cp a                                          ; $6527: $bf
    rst $38                                       ; $6528: $ff
    ld [bc], a                                    ; $6529: $02
    db $10                                        ; $652a: $10
    add e                                         ; $652b: $83
    jr @+$0a                                      ; $652c: $18 $08

    inc d                                         ; $652e: $14
    dec b                                         ; $652f: $05
    inc b                                         ; $6530: $04
    ld [bc], a                                    ; $6531: $02
    inc d                                         ; $6532: $14
    ld [bc], a                                    ; $6533: $02
    ld [$1803], sp                                ; $6534: $08 $03 $18
    add c                                         ; $6537: $81
    ld [$1002], sp                                ; $6538: $08 $02 $10
    adc c                                         ; $653b: $89
    inc c                                         ; $653c: $0c
    inc e                                         ; $653d: $1c
    ld a, [de]                                    ; $653e: $1a
    ld e, $1b                                     ; $653f: $1e $1b
    rra                                           ; $6541: $1f
    dec e                                         ; $6542: $1d
    rra                                           ; $6543: $1f
    dec e                                         ; $6544: $1d
    ld [bc], a                                    ; $6545: $02
    rra                                           ; $6546: $1f
    add c                                         ; $6547: $81
    dec e                                         ; $6548: $1d
    inc bc                                        ; $6549: $03
    rst $38                                       ; $654a: $ff
    add e                                         ; $654b: $83
    cp a                                          ; $654c: $bf
    rst $18                                       ; $654d: $df
    cp a                                          ; $654e: $bf
    ld [bc], a                                    ; $654f: $02
    ld a, a                                       ; $6550: $7f
    add d                                         ; $6551: $82
    ld a, l                                       ; $6552: $7d
    ld a, a                                       ; $6553: $7f
    ld [bc], a                                    ; $6554: $02
    ccf                                           ; $6555: $3f
    ld [bc], a                                    ; $6556: $02
    rra                                           ; $6557: $1f
    ld [bc], a                                    ; $6558: $02
    ld bc, $0010                                  ; $6559: $01 $10 $00
    ld [bc], a                                    ; $655c: $02
    rrca                                          ; $655d: $0f
    add c                                         ; $655e: $81
    ld a, [bc]                                    ; $655f: $0a

jr_0de_6560:
    inc bc                                        ; $6560: $03
    ld c, $81                                     ; $6561: $0e $81
    ld [bc], a                                    ; $6563: $02
    inc bc                                        ; $6564: $03
    ld c, $82                                     ; $6565: $0e $82
    inc bc                                        ; $6567: $03
    rrca                                          ; $6568: $0f
    inc b                                         ; $6569: $04
    ld c, $10                                     ; $656a: $0e $10
    nop                                           ; $656c: $00
    rst $38                                       ; $656d: $ff
    rlca                                          ; $656e: $07
    ld bc, $07f8                                  ; $656f: $01 $f8 $07
    ld a, [c]                                     ; $6572: $f2
    ld bc, $fceb                                  ; $6573: $01 $eb $fc
    ld [bc], a                                    ; $6576: $02
    inc d                                         ; $6577: $14
    ld [bc], a                                    ; $6578: $02
    ld a, l                                       ; $6579: $7d
    ld [bc], a                                    ; $657a: $02
    ld [hl], a                                    ; $657b: $77
    ld [bc], a                                    ; $657c: $02
    ld a, a                                       ; $657d: $7f
    ld [bc], a                                    ; $657e: $02
    ld a, l                                       ; $657f: $7d
    ld [bc], a                                    ; $6580: $02
    ld [de], a                                    ; $6581: $12
    ld [bc], a                                    ; $6582: $02
    jr jr_0de_6587                                ; $6583: $18 $02

    nop                                           ; $6585: $00
    add c                                         ; $6586: $81

jr_0de_6587:
    jr @+$11                                      ; $6587: $18 $0f

    nop                                           ; $6589: $00
    rst $38                                       ; $658a: $ff
    dec c                                         ; $658b: $0d
    inc b                                         ; $658c: $04
    ei                                            ; $658d: $fb
    dec b                                         ; $658e: $05
    rst $30                                       ; $658f: $f7
    cp $eb                                        ; $6590: $fe $eb
    ld a, [$ffeb]                                 ; $6592: $fa $eb $ff
    ei                                            ; $6595: $fb
    ld a, [$fffb]                                 ; $6596: $fa $fb $ff
    ld [bc], a                                    ; $6599: $02
    rrca                                          ; $659a: $0f
    add d                                         ; $659b: $82
    ld a, [de]                                    ; $659c: $1a
    ld [de], a                                    ; $659d: $12
    ld [bc], a                                    ; $659e: $02
    jr nz, jr_0de_6522                            ; $659f: $20 $81

    ld [hl+], a                                   ; $65a1: $22
    dec b                                         ; $65a2: $05
    jr nz, jr_0de_65a7                            ; $65a3: $20 $02

    dec sp                                        ; $65a5: $3b
    ld [bc], a                                    ; $65a6: $02

jr_0de_65a7:
    add hl, de                                    ; $65a7: $19
    add d                                         ; $65a8: $82
    rra                                           ; $65a9: $1f
    ld e, $02                                     ; $65aa: $1e $02
    add hl, bc                                    ; $65ac: $09
    adc c                                         ; $65ad: $89
    jr nc, jr_0de_65ef                            ; $65ae: $30 $3f

    dec a                                         ; $65b0: $3d
    ccf                                           ; $65b1: $3f
    ld e, a                                       ; $65b2: $5f

jr_0de_65b3:
    ld a, a                                       ; $65b3: $7f
    ld e, a                                       ; $65b4: $5f
    ld a, a                                       ; $65b5: $7f
    cp a                                          ; $65b6: $bf
    inc bc                                        ; $65b7: $03
    rst $38                                       ; $65b8: $ff
    ld [bc], a                                    ; $65b9: $02
    db $10                                        ; $65ba: $10
    add e                                         ; $65bb: $83
    jr @+$0a                                      ; $65bc: $18 $08

    inc d                                         ; $65be: $14
    dec b                                         ; $65bf: $05
    inc b                                         ; $65c0: $04
    ld [bc], a                                    ; $65c1: $02
    inc d                                         ; $65c2: $14
    ld [bc], a                                    ; $65c3: $02
    ld [$1803], sp                                ; $65c4: $08 $03 $18
    add c                                         ; $65c7: $81
    ld [$1002], sp                                ; $65c8: $08 $02 $10
    adc c                                         ; $65cb: $89
    inc c                                         ; $65cc: $0c
    inc e                                         ; $65cd: $1c
    ld a, [de]                                    ; $65ce: $1a
    ld e, $1a                                     ; $65cf: $1e $1a
    ld e, $1d                                     ; $65d1: $1e $1d

jr_0de_65d3:
    rra                                           ; $65d3: $1f
    dec e                                         ; $65d4: $1d
    ld [bc], a                                    ; $65d5: $02
    rra                                           ; $65d6: $1f
    add [hl]                                      ; $65d7: $86
    dec e                                         ; $65d8: $1d
    rst $38                                       ; $65d9: $ff
    cp a                                          ; $65da: $bf
    rst $38                                       ; $65db: $ff
    cp a                                          ; $65dc: $bf
    ld a, h                                       ; $65dd: $7c
    inc bc                                        ; $65de: $03
    ld a, a                                       ; $65df: $7f
    ld [bc], a                                    ; $65e0: $02
    ccf                                           ; $65e1: $3f
    ld [bc], a                                    ; $65e2: $02
    dec a                                         ; $65e3: $3d
    ld [bc], a                                    ; $65e4: $02
    ld bc, $0012                                  ; $65e5: $01 $12 $00
    add e                                         ; $65e8: $83
    rla                                           ; $65e9: $17
    rra                                           ; $65ea: $1f
    inc b                                         ; $65eb: $04
    inc bc                                        ; $65ec: $03
    inc e                                         ; $65ed: $1c
    add c                                         ; $65ee: $81

jr_0de_65ef:
    inc c                                         ; $65ef: $0c
    dec b                                         ; $65f0: $05
    inc e                                         ; $65f1: $1c
    ld [bc], a                                    ; $65f2: $02
    jr jr_0de_6607                                ; $65f3: $18 $12

    nop                                           ; $65f5: $00
    rst $38                                       ; $65f6: $ff
    rlca                                          ; $65f7: $07
    ld bc, $07f8                                  ; $65f8: $01 $f8 $07
    ld a, [c]                                     ; $65fb: $f2
    ld bc, $fcec                                  ; $65fc: $01 $ec $fc
    ld [bc], a                                    ; $65ff: $02
    inc d                                         ; $6600: $14
    ld [bc], a                                    ; $6601: $02
    ld a, l                                       ; $6602: $7d
    ld [bc], a                                    ; $6603: $02
    ld [hl], a                                    ; $6604: $77
    ld [bc], a                                    ; $6605: $02
    ld a, a                                       ; $6606: $7f

jr_0de_6607:
    ld [bc], a                                    ; $6607: $02
    ld a, l                                       ; $6608: $7d
    ld [bc], a                                    ; $6609: $02
    ld [de], a                                    ; $660a: $12
    ld [bc], a                                    ; $660b: $02
    jr jr_0de_6610                                ; $660c: $18 $02

    nop                                           ; $660e: $00
    add c                                         ; $660f: $81

jr_0de_6610:
    jr jr_0de_6621                                ; $6610: $18 $0f

    nop                                           ; $6612: $00
    rst $38                                       ; $6613: $ff
    dec c                                         ; $6614: $0d
    inc b                                         ; $6615: $04
    ei                                            ; $6616: $fb
    dec b                                         ; $6617: $05
    rst $30                                       ; $6618: $f7
    cp $ea                                        ; $6619: $fe $ea
    ld a, [$ffea]                                 ; $661b: $fa $ea $ff
    ld a, [$fafa]                                 ; $661e: $fa $fa $fa

jr_0de_6621:
    rst $38                                       ; $6621: $ff
    ld [bc], a                                    ; $6622: $02
    rrca                                          ; $6623: $0f
    ld [bc], a                                    ; $6624: $02
    ld [de], a                                    ; $6625: $12
    add e                                         ; $6626: $83
    jr z, jr_0de_6649                             ; $6627: $28 $20

    ld hl, $2005                                  ; $6629: $21 $05 $20
    ld [bc], a                                    ; $662c: $02
    dec [hl]                                      ; $662d: $35
    ld [bc], a                                    ; $662e: $02
    jr jr_0de_65b3                                ; $662f: $18 $82

    rra                                           ; $6631: $1f
    rla                                           ; $6632: $17
    ld [bc], a                                    ; $6633: $02
    ld [$3789], sp                                ; $6634: $08 $89 $37
    ccf                                           ; $6637: $3f

jr_0de_6638:
    ld e, b                                       ; $6638: $58
    ld a, a                                       ; $6639: $7f
    ld e, l                                       ; $663a: $5d
    ld a, a                                       ; $663b: $7f
    sbc a                                         ; $663c: $9f
    rst $38                                       ; $663d: $ff
    cp a                                          ; $663e: $bf
    ld [bc], a                                    ; $663f: $02
    rst $38                                       ; $6640: $ff
    add c                                         ; $6641: $81
    cp a                                          ; $6642: $bf
    ld [bc], a                                    ; $6643: $02
    db $10                                        ; $6644: $10
    add e                                         ; $6645: $83
    jr jr_0de_6650                                ; $6646: $18 $08

    inc d                                         ; $6648: $14

jr_0de_6649:
    dec b                                         ; $6649: $05
    inc b                                         ; $664a: $04
    ld [bc], a                                    ; $664b: $02
    inc d                                         ; $664c: $14
    ld [bc], a                                    ; $664d: $02
    inc c                                         ; $664e: $0c
    inc bc                                        ; $664f: $03

jr_0de_6650:
    jr jr_0de_65d3                                ; $6650: $18 $81

    ld [$1002], sp                                ; $6652: $08 $02 $10
    adc c                                         ; $6655: $89
    inc c                                         ; $6656: $0c
    inc e                                         ; $6657: $1c
    ld a, [de]                                    ; $6658: $1a
    ld e, $1a                                     ; $6659: $1e $1a
    ld e, $19                                     ; $665b: $1e $19
    rra                                           ; $665d: $1f
    dec e                                         ; $665e: $1d
    ld [bc], a                                    ; $665f: $02
    rra                                           ; $6660: $1f
    add e                                         ; $6661: $83
    dec e                                         ; $6662: $1d
    rst $38                                       ; $6663: $ff
    cp a                                          ; $6664: $bf
    ld [bc], a                                    ; $6665: $02
    rst $38                                       ; $6666: $ff
    ld [bc], a                                    ; $6667: $02
    ccf                                           ; $6668: $3f
    ld b, $7f                                     ; $6669: $06 $7f
    add d                                         ; $666b: $82
    scf                                           ; $666c: $37
    ccf                                           ; $666d: $3f
    ld [bc], a                                    ; $666e: $02
    jr c, jr_0de_6681                             ; $666f: $38 $10

    nop                                           ; $6671: $00
    add d                                         ; $6672: $82
    rra                                           ; $6673: $1f
    dec e                                         ; $6674: $1d
    ld [bc], a                                    ; $6675: $02
    rra                                           ; $6676: $1f
    ld [bc], a                                    ; $6677: $02
    inc e                                         ; $6678: $1c
    add [hl]                                      ; $6679: $86
    inc d                                         ; $667a: $14
    inc e                                         ; $667b: $1c
    inc d                                         ; $667c: $14
    inc e                                         ; $667d: $1c
    inc c                                         ; $667e: $0c
    inc e                                         ; $667f: $1c
    ld [bc], a                                    ; $6680: $02

jr_0de_6681:
    jr jr_0de_6695                                ; $6681: $18 $12

    nop                                           ; $6683: $00
    rst $38                                       ; $6684: $ff
    rlca                                          ; $6685: $07
    ld bc, $07f8                                  ; $6686: $01 $f8 $07
    ld a, [c]                                     ; $6689: $f2
    ld bc, $fceb                                  ; $668a: $01 $eb $fc
    ld [bc], a                                    ; $668d: $02
    inc [hl]                                      ; $668e: $34
    ld [bc], a                                    ; $668f: $02
    ld e, l                                       ; $6690: $5d
    ld [bc], a                                    ; $6691: $02
    ld a, e                                       ; $6692: $7b
    ld [bc], a                                    ; $6693: $02
    ld a, a                                       ; $6694: $7f

jr_0de_6695:
    ld [bc], a                                    ; $6695: $02
    ld a, l                                       ; $6696: $7d
    ld [bc], a                                    ; $6697: $02
    ld a, [hl+]                                   ; $6698: $2a
    ld [bc], a                                    ; $6699: $02
    inc e                                         ; $669a: $1c
    ld [bc], a                                    ; $669b: $02
    nop                                           ; $669c: $00
    add c                                         ; $669d: $81
    inc e                                         ; $669e: $1c
    rrca                                          ; $669f: $0f
    nop                                           ; $66a0: $00
    rst $38                                       ; $66a1: $ff
    dec c                                         ; $66a2: $0d
    inc b                                         ; $66a3: $04
    ei                                            ; $66a4: $fb
    dec b                                         ; $66a5: $05
    rst $30                                       ; $66a6: $f7
    cp $ea                                        ; $66a7: $fe $ea
    ld a, [$ffea]                                 ; $66a9: $fa $ea $ff
    ld a, [$fafb]                                 ; $66ac: $fa $fb $fa
    rst $38                                       ; $66af: $ff
    ld [bc], a                                    ; $66b0: $02
    rrca                                          ; $66b1: $0f
    ld [bc], a                                    ; $66b2: $02
    ld [de], a                                    ; $66b3: $12
    ld [bc], a                                    ; $66b4: $02
    jr nz, jr_0de_6638                            ; $66b5: $20 $81

    inc h                                         ; $66b7: $24
    inc bc                                        ; $66b8: $03
    jr nz, jr_0de_66bd                            ; $66b9: $20 $02

    jr z, jr_0de_66bf                             ; $66bb: $28 $02

jr_0de_66bd:
    ld [de], a                                    ; $66bd: $12
    ld [bc], a                                    ; $66be: $02

jr_0de_66bf:
    inc e                                         ; $66bf: $1c
    add d                                         ; $66c0: $82
    rra                                           ; $66c1: $1f
    inc de                                        ; $66c2: $13
    ld [bc], a                                    ; $66c3: $02
    inc c                                         ; $66c4: $0c
    adc c                                         ; $66c5: $89

jr_0de_66c6:
    scf                                           ; $66c6: $37
    ccf                                           ; $66c7: $3f
    ld e, b                                       ; $66c8: $58
    ld a, a                                       ; $66c9: $7f
    db $dd                                        ; $66ca: $dd
    rst $38                                       ; $66cb: $ff
    cp a                                          ; $66cc: $bf
    rst $38                                       ; $66cd: $ff
    cp a                                          ; $66ce: $bf
    ld [bc], a                                    ; $66cf: $02
    rst $38                                       ; $66d0: $ff
    add c                                         ; $66d1: $81
    cp a                                          ; $66d2: $bf
    ld [bc], a                                    ; $66d3: $02
    db $10                                        ; $66d4: $10
    add e                                         ; $66d5: $83
    jr jr_0de_66e0                                ; $66d6: $18 $08

    inc d                                         ; $66d8: $14
    dec b                                         ; $66d9: $05
    inc b                                         ; $66da: $04
    ld [bc], a                                    ; $66db: $02
    inc c                                         ; $66dc: $0c
    ld [bc], a                                    ; $66dd: $02
    inc e                                         ; $66de: $1c
    inc b                                         ; $66df: $04

jr_0de_66e0:
    jr jr_0de_66e4                                ; $66e0: $18 $02

    db $10                                        ; $66e2: $10
    add d                                         ; $66e3: $82

jr_0de_66e4:
    ld [$0218], sp                                ; $66e4: $08 $18 $02
    inc e                                         ; $66e7: $1c
    adc b                                         ; $66e8: $88
    ld a, [de]                                    ; $66e9: $1a
    ld e, $1a                                     ; $66ea: $1e $1a
    ld e, $19                                     ; $66ec: $1e $19
    rra                                           ; $66ee: $1f
    dec e                                         ; $66ef: $1d
    rra                                           ; $66f0: $1f
    ld [bc], a                                    ; $66f1: $02
    rst $38                                       ; $66f2: $ff
    add c                                         ; $66f3: $81
    ld e, a                                       ; $66f4: $5f
    inc bc                                        ; $66f5: $03
    ld a, a                                       ; $66f6: $7f
    add [hl]                                      ; $66f7: $86
    ld c, a                                       ; $66f8: $4f
    ld a, a                                       ; $66f9: $7f
    ld a, e                                       ; $66fa: $7b
    ld a, a                                       ; $66fb: $7f
    rst $08                                       ; $66fc: $cf
    rst $38                                       ; $66fd: $ff
    ld [bc], a                                    ; $66fe: $02
    ld a, a                                       ; $66ff: $7f

Jump_0de_6700:
    ld [bc], a                                    ; $6700: $02
    ld a, b                                       ; $6701: $78
    stop                                          ; $6702: $10 $00
    inc bc                                        ; $6704: $03
    rrca                                          ; $6705: $0f
    add e                                         ; $6706: $83
    dec c                                         ; $6707: $0d
    dec bc                                        ; $6708: $0b
    dec c                                         ; $6709: $0d
    inc b                                         ; $670a: $04
    ld c, $02                                     ; $670b: $0e $02
    inc c                                         ; $670d: $0c
    ld [bc], a                                    ; $670e: $02
    ld [$0012], sp                                ; $670f: $08 $12 $00
    rst $38                                       ; $6712: $ff
    rlca                                          ; $6713: $07
    ld bc, $07f8                                  ; $6714: $01 $f8 $07
    ld a, [c]                                     ; $6717: $f2
    ld bc, $fceb                                  ; $6718: $01 $eb $fc
    ld [bc], a                                    ; $671b: $02
    inc [hl]                                      ; $671c: $34
    ld [bc], a                                    ; $671d: $02
    ld a, l                                       ; $671e: $7d
    ld [bc], a                                    ; $671f: $02
    ld l, a                                       ; $6720: $6f
    ld [bc], a                                    ; $6721: $02
    ld a, a                                       ; $6722: $7f
    ld [bc], a                                    ; $6723: $02
    ld e, [hl]                                    ; $6724: $5e
    ld [bc], a                                    ; $6725: $02
    inc [hl]                                      ; $6726: $34
    ld [bc], a                                    ; $6727: $02
    inc c                                         ; $6728: $0c
    ld [bc], a                                    ; $6729: $02
    nop                                           ; $672a: $00
    add c                                         ; $672b: $81
    inc c                                         ; $672c: $0c
    rrca                                          ; $672d: $0f
    nop                                           ; $672e: $00
    rst $38                                       ; $672f: $ff
    dec c                                         ; $6730: $0d
    inc b                                         ; $6731: $04
    ei                                            ; $6732: $fb
    dec b                                         ; $6733: $05
    rst $30                                       ; $6734: $f7
    cp $eb                                        ; $6735: $fe $eb
    ld a, [$ffeb]                                 ; $6737: $fa $eb $ff
    ei                                            ; $673a: $fb
    ld a, [$fffb]                                 ; $673b: $fa $fb $ff
    ld [bc], a                                    ; $673e: $02
    rrca                                          ; $673f: $0f
    ld [bc], a                                    ; $6740: $02
    ld [de], a                                    ; $6741: $12
    ld [bc], a                                    ; $6742: $02
    jr nz, jr_0de_66c6                            ; $6743: $20 $81

    inc h                                         ; $6745: $24
    inc bc                                        ; $6746: $03
    jr nz, jr_0de_674b                            ; $6747: $20 $02

    jr z, jr_0de_674d                             ; $6749: $28 $02

jr_0de_674b:
    ld [de], a                                    ; $674b: $12
    ld [bc], a                                    ; $674c: $02

jr_0de_674d:
    inc e                                         ; $674d: $1c
    add d                                         ; $674e: $82
    rra                                           ; $674f: $1f
    inc de                                        ; $6750: $13
    ld [bc], a                                    ; $6751: $02
    inc c                                         ; $6752: $0c
    adc c                                         ; $6753: $89
    jr nc, jr_0de_6795                            ; $6754: $30 $3f

    ld e, a                                       ; $6756: $5f

jr_0de_6757:
    ld a, a                                       ; $6757: $7f
    ld e, a                                       ; $6758: $5f
    ld a, a                                       ; $6759: $7f
    cp a                                          ; $675a: $bf
    rst $38                                       ; $675b: $ff
    cp a                                          ; $675c: $bf
    ld [bc], a                                    ; $675d: $02
    rst $38                                       ; $675e: $ff
    add c                                         ; $675f: $81
    cp a                                          ; $6760: $bf
    ld [bc], a                                    ; $6761: $02
    db $10                                        ; $6762: $10
    add e                                         ; $6763: $83
    jr jr_0de_676e                                ; $6764: $18 $08

    inc d                                         ; $6766: $14
    dec b                                         ; $6767: $05
    inc b                                         ; $6768: $04
    ld [bc], a                                    ; $6769: $02
    inc c                                         ; $676a: $0c
    ld [bc], a                                    ; $676b: $02
    inc e                                         ; $676c: $1c
    inc b                                         ; $676d: $04

jr_0de_676e:
    jr jr_0de_6772                                ; $676e: $18 $02

    db $10                                        ; $6770: $10
    add c                                         ; $6771: $81

jr_0de_6772:
    inc c                                         ; $6772: $0c
    inc bc                                        ; $6773: $03
    inc e                                         ; $6774: $1c
    add l                                         ; $6775: $85
    ld a, [de]                                    ; $6776: $1a

jr_0de_6777:
    ld e, $1a                                     ; $6777: $1e $1a
    ld e, $1d                                     ; $6779: $1e $1d
    inc bc                                        ; $677b: $03
    rra                                           ; $677c: $1f
    ld [bc], a                                    ; $677d: $02
    rst $38                                       ; $677e: $ff
    add l                                         ; $677f: $85
    scf                                           ; $6780: $37
    ccf                                           ; $6781: $3f
    dec sp                                        ; $6782: $3b
    ccf                                           ; $6783: $3f
    scf                                           ; $6784: $37
    inc bc                                        ; $6785: $03
    ccf                                           ; $6786: $3f
    ld [bc], a                                    ; $6787: $02
    dec a                                         ; $6788: $3d
    ld [bc], a                                    ; $6789: $02
    inc e                                         ; $678a: $1c
    ld [de], a                                    ; $678b: $12
    nop                                           ; $678c: $00
    add h                                         ; $678d: $84
    rra                                           ; $678e: $1f
    dec e                                         ; $678f: $1d
    rra                                           ; $6790: $1f
    dec e                                         ; $6791: $1d
    inc b                                         ; $6792: $04
    ld e, $81                                     ; $6793: $1e $81

jr_0de_6795:
    inc d                                         ; $6795: $14
    inc bc                                        ; $6796: $03
    inc e                                         ; $6797: $1c
    inc d                                         ; $6798: $14
    nop                                           ; $6799: $00
    rst $38                                       ; $679a: $ff
    rlca                                          ; $679b: $07
    ld bc, $07f8                                  ; $679c: $01 $f8 $07
    ld a, [c]                                     ; $679f: $f2
    ld bc, $fcec                                  ; $67a0: $01 $ec $fc
    ld [bc], a                                    ; $67a3: $02
    inc [hl]                                      ; $67a4: $34
    ld [bc], a                                    ; $67a5: $02
    ld a, l                                       ; $67a6: $7d
    ld [bc], a                                    ; $67a7: $02
    ld l, a                                       ; $67a8: $6f
    ld [bc], a                                    ; $67a9: $02
    ld a, a                                       ; $67aa: $7f
    ld [bc], a                                    ; $67ab: $02
    ld e, [hl]                                    ; $67ac: $5e
    ld [bc], a                                    ; $67ad: $02
    inc [hl]                                      ; $67ae: $34
    ld [bc], a                                    ; $67af: $02
    inc c                                         ; $67b0: $0c
    ld [bc], a                                    ; $67b1: $02
    nop                                           ; $67b2: $00
    add c                                         ; $67b3: $81
    inc c                                         ; $67b4: $0c
    rrca                                          ; $67b5: $0f
    nop                                           ; $67b6: $00
    rst $38                                       ; $67b7: $ff
    dec c                                         ; $67b8: $0d
    inc b                                         ; $67b9: $04
    ei                                            ; $67ba: $fb
    dec b                                         ; $67bb: $05
    rst $30                                       ; $67bc: $f7
    cp $ea                                        ; $67bd: $fe $ea
    ld a, [$ffea]                                 ; $67bf: $fa $ea $ff
    ld a, [$fafa]                                 ; $67c2: $fa $fa $fa
    rst $38                                       ; $67c5: $ff
    ld [bc], a                                    ; $67c6: $02
    rrca                                          ; $67c7: $0f
    ld [bc], a                                    ; $67c8: $02
    ld [de], a                                    ; $67c9: $12
    add e                                         ; $67ca: $83
    jr z, jr_0de_67ed                             ; $67cb: $28 $20

    ld hl, $2005                                  ; $67cd: $21 $05 $20
    ld [bc], a                                    ; $67d0: $02
    dec [hl]                                      ; $67d1: $35
    ld [bc], a                                    ; $67d2: $02
    jr jr_0de_6757                                ; $67d3: $18 $82

    rra                                           ; $67d5: $1f
    rla                                           ; $67d6: $17
    ld [bc], a                                    ; $67d7: $02
    ld [$3789], sp                                ; $67d8: $08 $89 $37
    ccf                                           ; $67db: $3f
    ld e, b                                       ; $67dc: $58
    ld a, a                                       ; $67dd: $7f
    ld e, l                                       ; $67de: $5d
    ld a, a                                       ; $67df: $7f
    sbc a                                         ; $67e0: $9f
    rst $38                                       ; $67e1: $ff
    cp a                                          ; $67e2: $bf
    ld [bc], a                                    ; $67e3: $02
    rst $38                                       ; $67e4: $ff
    add c                                         ; $67e5: $81
    cp a                                          ; $67e6: $bf
    ld [bc], a                                    ; $67e7: $02
    db $10                                        ; $67e8: $10
    add e                                         ; $67e9: $83
    jr jr_0de_67f4                                ; $67ea: $18 $08

    inc d                                         ; $67ec: $14

jr_0de_67ed:
    dec b                                         ; $67ed: $05
    inc b                                         ; $67ee: $04
    ld [bc], a                                    ; $67ef: $02
    inc d                                         ; $67f0: $14
    ld [bc], a                                    ; $67f1: $02
    inc c                                         ; $67f2: $0c
    inc bc                                        ; $67f3: $03

jr_0de_67f4:
    jr jr_0de_6777                                ; $67f4: $18 $81

    ld [$1002], sp                                ; $67f6: $08 $02 $10
    adc c                                         ; $67f9: $89
    inc c                                         ; $67fa: $0c
    inc e                                         ; $67fb: $1c
    ld a, [de]                                    ; $67fc: $1a
    ld e, $1a                                     ; $67fd: $1e $1a
    ld e, $19                                     ; $67ff: $1e $19
    rra                                           ; $6801: $1f
    dec e                                         ; $6802: $1d
    ld [bc], a                                    ; $6803: $02
    rra                                           ; $6804: $1f
    add e                                         ; $6805: $83
    dec e                                         ; $6806: $1d
    rst $38                                       ; $6807: $ff
    cp a                                          ; $6808: $bf
    ld [bc], a                                    ; $6809: $02
    rst $38                                       ; $680a: $ff
    ld [bc], a                                    ; $680b: $02
    ccf                                           ; $680c: $3f
    add [hl]                                      ; $680d: $86
    cpl                                           ; $680e: $2f
    ccf                                           ; $680f: $3f
    cpl                                           ; $6810: $2f
    ccf                                           ; $6811: $3f
    scf                                           ; $6812: $37
    ccf                                           ; $6813: $3f
    ld [bc], a                                    ; $6814: $02
    rra                                           ; $6815: $1f
    ld [de], a                                    ; $6816: $12
    nop                                           ; $6817: $00
    add d                                         ; $6818: $82
    rra                                           ; $6819: $1f
    dec e                                         ; $681a: $1d
    ld [bc], a                                    ; $681b: $02
    rra                                           ; $681c: $1f
    ld [bc], a                                    ; $681d: $02
    inc e                                         ; $681e: $1c
    ld b, $1e                                     ; $681f: $06 $1e
    add c                                         ; $6821: $81
    inc c                                         ; $6822: $0c
    inc bc                                        ; $6823: $03
    inc e                                         ; $6824: $1c
    stop                                          ; $6825: $10 $00
    rst $38                                       ; $6827: $ff
    rlca                                          ; $6828: $07
    ld bc, $07f8                                  ; $6829: $01 $f8 $07
    ld a, [c]                                     ; $682c: $f2
    ld bc, $fceb                                  ; $682d: $01 $eb $fc
    ld [bc], a                                    ; $6830: $02
    inc [hl]                                      ; $6831: $34
    ld [bc], a                                    ; $6832: $02
    ld e, l                                       ; $6833: $5d
    ld [bc], a                                    ; $6834: $02
    ld a, e                                       ; $6835: $7b
    ld [bc], a                                    ; $6836: $02
    ld a, a                                       ; $6837: $7f
    ld [bc], a                                    ; $6838: $02
    ld a, l                                       ; $6839: $7d
    ld [bc], a                                    ; $683a: $02
    ld a, [hl+]                                   ; $683b: $2a
    ld [bc], a                                    ; $683c: $02
    inc e                                         ; $683d: $1c
    ld [bc], a                                    ; $683e: $02
    nop                                           ; $683f: $00
    add c                                         ; $6840: $81
    inc e                                         ; $6841: $1c
    rrca                                          ; $6842: $0f
    nop                                           ; $6843: $00
    rst $38                                       ; $6844: $ff
    dec c                                         ; $6845: $0d
    inc b                                         ; $6846: $04
    ei                                            ; $6847: $fb
    dec b                                         ; $6848: $05
    rst $30                                       ; $6849: $f7
    cp $ea                                        ; $684a: $fe $ea
    ld a, [$ffea]                                 ; $684c: $fa $ea $ff
    ld a, [$fafa]                                 ; $684f: $fa $fa $fa
    rst $38                                       ; $6852: $ff
    ld [bc], a                                    ; $6853: $02
    rrca                                          ; $6854: $0f
    ld [bc], a                                    ; $6855: $02
    ld [de], a                                    ; $6856: $12
    add d                                         ; $6857: $82
    add hl, hl                                    ; $6858: $29
    jr nz, jr_0de_685d                            ; $6859: $20 $02

    ld h, $8c                                     ; $685b: $26 $8c

jr_0de_685d:
    ccf                                           ; $685d: $3f
    add hl, sp                                    ; $685e: $39
    ccf                                           ; $685f: $3f
    dec l                                         ; $6860: $2d
    ccf                                           ; $6861: $3f
    inc h                                         ; $6862: $24
    rra                                           ; $6863: $1f
    ld [de], a                                    ; $6864: $12
    rra                                           ; $6865: $1f
    rla                                           ; $6866: $17
    rra                                           ; $6867: $1f
    jr jr_0de_686c                                ; $6868: $18 $02

    ld a, [hl-]                                   ; $686a: $3a
    adc d                                         ; $686b: $8a

jr_0de_686c:
    ld e, l                                       ; $686c: $5d
    ld a, l                                       ; $686d: $7d
    ld e, d                                       ; $686e: $5a
    ld a, a                                       ; $686f: $7f
    cp l                                          ; $6870: $bd
    rst $38                                       ; $6871: $ff
    db $fd                                        ; $6872: $fd
    rst $38                                       ; $6873: $ff
    db $fd                                        ; $6874: $fd
    cp a                                          ; $6875: $bf
    ld [bc], a                                    ; $6876: $02
    db $10                                        ; $6877: $10
    add d                                         ; $6878: $82
    jr jr_0de_6883                                ; $6879: $18 $08

    ld [bc], a                                    ; $687b: $02
    inc b                                         ; $687c: $04
    ld [bc], a                                    ; $687d: $02
    inc d                                         ; $687e: $14
    adc d                                         ; $687f: $8a
    inc e                                         ; $6880: $1c
    inc c                                         ; $6881: $0c
    inc e                                         ; $6882: $1c

jr_0de_6883:
    inc d                                         ; $6883: $14
    inc e                                         ; $6884: $1c
    inc b                                         ; $6885: $04
    jr jr_0de_6890                                ; $6886: $18 $08

    jr jr_0de_6892                                ; $6888: $18 $08

    ld [bc], a                                    ; $688a: $02
    jr jr_0de_688f                                ; $688b: $18 $02

    inc e                                         ; $688d: $1c
    add l                                         ; $688e: $85

jr_0de_688f:
    ld a, [de]                                    ; $688f: $1a

jr_0de_6890:
    ld e, $1a                                     ; $6890: $1e $1a

jr_0de_6892:
    ld e, $1d                                     ; $6892: $1e $1d
    inc b                                         ; $6894: $04
    rra                                           ; $6895: $1f
    adc c                                         ; $6896: $89
    dec e                                         ; $6897: $1d
    ld a, [$fe9f]                                 ; $6898: $fa $9f $fe
    and e                                         ; $689b: $a3
    ld a, d                                       ; $689c: $7a
    ld a, a                                       ; $689d: $7f
    scf                                           ; $689e: $37
    ccf                                           ; $689f: $3f
    ld [bc], a                                    ; $68a0: $02
    ld a, a                                       ; $68a1: $7f
    ld [bc], a                                    ; $68a2: $02
    ccf                                           ; $68a3: $3f
    add d                                         ; $68a4: $82
    dec h                                         ; $68a5: $25
    dec a                                         ; $68a6: $3d
    ld [bc], a                                    ; $68a7: $02
    jr jr_0de_68ba                                ; $68a8: $18 $10

    nop                                           ; $68aa: $00
    add h                                         ; $68ab: $84
    rra                                           ; $68ac: $1f
    add hl, de                                    ; $68ad: $19
    rra                                           ; $68ae: $1f
    dec e                                         ; $68af: $1d
    ld [bc], a                                    ; $68b0: $02
    ld e, $82                                     ; $68b1: $1e $82
    inc c                                         ; $68b3: $0c
    inc e                                         ; $68b4: $1c
    ld [bc], a                                    ; $68b5: $02
    ld e, $02                                     ; $68b6: $1e $02
    inc e                                         ; $68b8: $1c
    add d                                         ; $68b9: $82

jr_0de_68ba:
    inc b                                         ; $68ba: $04
    inc e                                         ; $68bb: $1c
    ld [bc], a                                    ; $68bc: $02
    jr jr_0de_68cf                                ; $68bd: $18 $10

    nop                                           ; $68bf: $00
    rst $38                                       ; $68c0: $ff
    rlca                                          ; $68c1: $07
    ld bc, $07f8                                  ; $68c2: $01 $f8 $07
    ld a, [c]                                     ; $68c5: $f2
    ld bc, $fceb                                  ; $68c6: $01 $eb $fc
    ld [bc], a                                    ; $68c9: $02
    inc [hl]                                      ; $68ca: $34
    ld [bc], a                                    ; $68cb: $02
    ld e, e                                       ; $68cc: $5b
    ld [bc], a                                    ; $68cd: $02
    ld h, l                                       ; $68ce: $65

jr_0de_68cf:
    inc c                                         ; $68cf: $0c
    nop                                           ; $68d0: $00
    add e                                         ; $68d1: $83
    inc d                                         ; $68d2: $14
    nop                                           ; $68d3: $00
    ld [$000b], sp                                ; $68d4: $08 $0b $00
    rst $38                                       ; $68d7: $ff
    dec c                                         ; $68d8: $0d
    inc b                                         ; $68d9: $04
    ei                                            ; $68da: $fb
    dec b                                         ; $68db: $05
    rst $30                                       ; $68dc: $f7
    cp $ea                                        ; $68dd: $fe $ea
    ld a, [$ffea]                                 ; $68df: $fa $ea $ff
    ld a, [$fafa]                                 ; $68e2: $fa $fa $fa
    rst $38                                       ; $68e5: $ff
    ld [bc], a                                    ; $68e6: $02
    rrca                                          ; $68e7: $0f
    ld [bc], a                                    ; $68e8: $02
    ld [de], a                                    ; $68e9: $12
    add d                                         ; $68ea: $82
    ld a, [hl+]                                   ; $68eb: $2a
    jr nz, jr_0de_68f0                            ; $68ec: $20 $02

    cpl                                           ; $68ee: $2f
    adc h                                         ; $68ef: $8c

jr_0de_68f0:
    ccf                                           ; $68f0: $3f
    ld [hl-], a                                   ; $68f1: $32
    dec sp                                        ; $68f2: $3b
    add hl, sp                                    ; $68f3: $39
    ccf                                           ; $68f4: $3f
    jr z, jr_0de_6916                             ; $68f5: $28 $1f

    inc d                                         ; $68f7: $14
    ld e, $16                                     ; $68f8: $1e $16
    rra                                           ; $68fa: $1f
    jr jr_0de_68ff                                ; $68fb: $18 $02

    ld a, [hl-]                                   ; $68fd: $3a
    adc d                                         ; $68fe: $8a

jr_0de_68ff:
    ld e, l                                       ; $68ff: $5d
    ld a, l                                       ; $6900: $7d
    ld e, d                                       ; $6901: $5a
    ld a, a                                       ; $6902: $7f
    ld e, l                                       ; $6903: $5d
    ld a, a                                       ; $6904: $7f
    sbc l                                         ; $6905: $9d
    rst $38                                       ; $6906: $ff
    cp l                                          ; $6907: $bd
    rst $38                                       ; $6908: $ff
    ld [bc], a                                    ; $6909: $02
    db $10                                        ; $690a: $10
    add d                                         ; $690b: $82
    jr jr_0de_6916                                ; $690c: $18 $08

    ld [bc], a                                    ; $690e: $02
    inc b                                         ; $690f: $04
    ld [bc], a                                    ; $6910: $02
    inc c                                         ; $6911: $0c
    inc bc                                        ; $6912: $03
    inc e                                         ; $6913: $1c
    ld [bc], a                                    ; $6914: $02
    inc d                                         ; $6915: $14

jr_0de_6916:
    add l                                         ; $6916: $85
    inc b                                         ; $6917: $04
    jr jr_0de_6922                                ; $6918: $18 $08

    jr jr_0de_6924                                ; $691a: $18 $08

    ld [bc], a                                    ; $691c: $02
    inc e                                         ; $691d: $1c
    ld [bc], a                                    ; $691e: $02
    ld e, $85                                     ; $691f: $1e $85
    ld a, [de]                                    ; $6921: $1a

jr_0de_6922:
    ld e, $19                                     ; $6922: $1e $19

jr_0de_6924:
    rra                                           ; $6924: $1f
    dec e                                         ; $6925: $1d
    inc b                                         ; $6926: $04
    rra                                           ; $6927: $1f
    adc b                                         ; $6928: $88
    dec e                                         ; $6929: $1d
    db $fc                                        ; $692a: $fc
    db $db                                        ; $692b: $db
    ld a, e                                       ; $692c: $7b
    ld b, a                                       ; $692d: $47
    ld l, e                                       ; $692e: $6b
    ld e, a                                       ; $692f: $5f
    scf                                           ; $6930: $37
    inc bc                                        ; $6931: $03
    ccf                                           ; $6932: $3f
    add d                                         ; $6933: $82
    cpl                                           ; $6934: $2f
    ccf                                           ; $6935: $3f
    ld [bc], a                                    ; $6936: $02
    dec e                                         ; $6937: $1d
    ld [bc], a                                    ; $6938: $02
    ld bc, $0010                                  ; $6939: $01 $10 $00
    add [hl]                                      ; $693c: $86
    rra                                           ; $693d: $1f
    dec e                                         ; $693e: $1d
    ld c, $1e                                     ; $693f: $0e $1e
    inc d                                         ; $6941: $14
    inc e                                         ; $6942: $1c
    inc b                                         ; $6943: $04
    ld e, $81                                     ; $6944: $1e $81
    inc b                                         ; $6946: $04
    inc bc                                        ; $6947: $03
    inc e                                         ; $6948: $1c
    ld [bc], a                                    ; $6949: $02
    jr jr_0de_695c                                ; $694a: $18 $10

    nop                                           ; $694c: $00
    rst $38                                       ; $694d: $ff
    rlca                                          ; $694e: $07
    ld bc, $07f8                                  ; $694f: $01 $f8 $07
    ld a, [c]                                     ; $6952: $f2
    ld bc, $fceb                                  ; $6953: $01 $eb $fc
    ld [bc], a                                    ; $6956: $02
    inc [hl]                                      ; $6957: $34
    ld [bc], a                                    ; $6958: $02
    ld d, a                                       ; $6959: $57
    ld [bc], a                                    ; $695a: $02
    ld b, d                                       ; $695b: $42

jr_0de_695c:
    ld [bc], a                                    ; $695c: $02
    nop                                           ; $695d: $00
    ld [bc], a                                    ; $695e: $02
    db $10                                        ; $695f: $10
    ld [bc], a                                    ; $6960: $02
    ld bc, $0002                                  ; $6961: $01 $02 $00
    ld [bc], a                                    ; $6964: $02
    inc b                                         ; $6965: $04
    ld [bc], a                                    ; $6966: $02
    nop                                           ; $6967: $00
    add e                                         ; $6968: $83
    inc d                                         ; $6969: $14
    nop                                           ; $696a: $00
    ld [$000b], sp                                ; $696b: $08 $0b $00
    rst $38                                       ; $696e: $ff
    dec c                                         ; $696f: $0d
    inc b                                         ; $6970: $04
    ei                                            ; $6971: $fb
    dec b                                         ; $6972: $05
    rst $30                                       ; $6973: $f7
    cp $eb                                        ; $6974: $fe $eb
    ld a, [$ffeb]                                 ; $6976: $fa $eb $ff
    ei                                            ; $6979: $fb
    ld a, [$fffb]                                 ; $697a: $fa $fb $ff
    ld [bc], a                                    ; $697d: $02
    rrca                                          ; $697e: $0f
    ld [bc], a                                    ; $697f: $02
    ld [de], a                                    ; $6980: $12
    add d                                         ; $6981: $82
    ld a, [hl+]                                   ; $6982: $2a
    jr nz, jr_0de_6987                            ; $6983: $20 $02

    cpl                                           ; $6985: $2f
    adc h                                         ; $6986: $8c

jr_0de_6987:
    ccf                                           ; $6987: $3f
    ld [hl-], a                                   ; $6988: $32
    dec sp                                        ; $6989: $3b
    add hl, sp                                    ; $698a: $39
    ccf                                           ; $698b: $3f
    jr z, jr_0de_69ad                             ; $698c: $28 $1f

    inc d                                         ; $698e: $14
    ld e, $16                                     ; $698f: $1e $16
    rra                                           ; $6991: $1f
    jr jr_0de_6996                                ; $6992: $18 $02

    ld a, [hl-]                                   ; $6994: $3a
    adc d                                         ; $6995: $8a

jr_0de_6996:
    ld e, l                                       ; $6996: $5d
    ld a, l                                       ; $6997: $7d
    ld e, d                                       ; $6998: $5a
    ld a, a                                       ; $6999: $7f
    ld e, l                                       ; $699a: $5d
    ld a, a                                       ; $699b: $7f
    cp l                                          ; $699c: $bd
    rst $38                                       ; $699d: $ff
    sbc l                                         ; $699e: $9d
    rst $38                                       ; $699f: $ff
    ld [bc], a                                    ; $69a0: $02
    db $10                                        ; $69a1: $10
    add d                                         ; $69a2: $82
    jr jr_0de_69ad                                ; $69a3: $18 $08

    ld [bc], a                                    ; $69a5: $02
    inc b                                         ; $69a6: $04
    ld [bc], a                                    ; $69a7: $02
    inc c                                         ; $69a8: $0c
    inc bc                                        ; $69a9: $03
    inc e                                         ; $69aa: $1c
    ld [bc], a                                    ; $69ab: $02
    inc d                                         ; $69ac: $14

jr_0de_69ad:
    add l                                         ; $69ad: $85
    inc b                                         ; $69ae: $04
    jr jr_0de_69b9                                ; $69af: $18 $08

    jr jr_0de_69bb                                ; $69b1: $18 $08

    ld [bc], a                                    ; $69b3: $02
    jr jr_0de_69b8                                ; $69b4: $18 $02

    ld e, $87                                     ; $69b6: $1e $87

jr_0de_69b8:
    ld a, [de]                                    ; $69b8: $1a

jr_0de_69b9:
    ld e, $1a                                     ; $69b9: $1e $1a

jr_0de_69bb:
    ld e, $19                                     ; $69bb: $1e $19
    rra                                           ; $69bd: $1f
    dec e                                         ; $69be: $1d
    inc bc                                        ; $69bf: $03
    rra                                           ; $69c0: $1f
    adc b                                         ; $69c1: $88
    ld a, [$fbdf]                                 ; $69c2: $fa $df $fb
    add a                                         ; $69c5: $87
    cp e                                          ; $69c6: $bb
    rst $38                                       ; $69c7: $ff
    ld [hl], a                                    ; $69c8: $77
    ld a, a                                       ; $69c9: $7f
    ld [bc], a                                    ; $69ca: $02
    rra                                           ; $69cb: $1f
    ld [bc], a                                    ; $69cc: $02
    dec c                                         ; $69cd: $0d
    ld [bc], a                                    ; $69ce: $02
    ld bc, $0012                                  ; $69cf: $01 $12 $00
    add [hl]                                      ; $69d2: $86
    rra                                           ; $69d3: $1f
    dec e                                         ; $69d4: $1d
    rrca                                          ; $69d5: $0f
    dec e                                         ; $69d6: $1d
    ld d, $1e                                     ; $69d7: $16 $1e
    ld [bc], a                                    ; $69d9: $02
    inc e                                         ; $69da: $1c
    ld [bc], a                                    ; $69db: $02
    ld e, $81                                     ; $69dc: $1e $81
    inc b                                         ; $69de: $04
    inc bc                                        ; $69df: $03
    inc e                                         ; $69e0: $1c
    ld [de], a                                    ; $69e1: $12
    nop                                           ; $69e2: $00
    rst $38                                       ; $69e3: $ff
    rlca                                          ; $69e4: $07
    ld bc, $07f8                                  ; $69e5: $01 $f8 $07
    ld a, [c]                                     ; $69e8: $f2
    ld bc, $fcec                                  ; $69e9: $01 $ec $fc
    ld [bc], a                                    ; $69ec: $02
    inc [hl]                                      ; $69ed: $34
    ld [bc], a                                    ; $69ee: $02
    ld d, a                                       ; $69ef: $57
    ld [bc], a                                    ; $69f0: $02
    ld b, d                                       ; $69f1: $42
    ld [bc], a                                    ; $69f2: $02
    nop                                           ; $69f3: $00
    ld [bc], a                                    ; $69f4: $02
    db $10                                        ; $69f5: $10
    ld [bc], a                                    ; $69f6: $02
    ld bc, $0002                                  ; $69f7: $01 $02 $00
    ld [bc], a                                    ; $69fa: $02
    inc b                                         ; $69fb: $04
    ld [bc], a                                    ; $69fc: $02
    nop                                           ; $69fd: $00
    add e                                         ; $69fe: $83
    inc d                                         ; $69ff: $14
    nop                                           ; $6a00: $00
    ld [$000b], sp                                ; $6a01: $08 $0b $00
    rst $38                                       ; $6a04: $ff
    dec c                                         ; $6a05: $0d
    inc b                                         ; $6a06: $04
    ei                                            ; $6a07: $fb
    dec b                                         ; $6a08: $05
    rst $30                                       ; $6a09: $f7
    cp $ea                                        ; $6a0a: $fe $ea
    ld a, [$ffea]                                 ; $6a0c: $fa $ea $ff
    ld a, [$fafa]                                 ; $6a0f: $fa $fa $fa
    rst $38                                       ; $6a12: $ff
    ld [bc], a                                    ; $6a13: $02
    rrca                                          ; $6a14: $0f
    ld [bc], a                                    ; $6a15: $02
    ld [de], a                                    ; $6a16: $12
    add d                                         ; $6a17: $82
    add hl, hl                                    ; $6a18: $29
    jr nz, jr_0de_6a1d                            ; $6a19: $20 $02

    ld h, $8c                                     ; $6a1b: $26 $8c

jr_0de_6a1d:
    ccf                                           ; $6a1d: $3f
    add hl, sp                                    ; $6a1e: $39
    ccf                                           ; $6a1f: $3f
    dec l                                         ; $6a20: $2d
    ccf                                           ; $6a21: $3f
    inc h                                         ; $6a22: $24
    rra                                           ; $6a23: $1f
    ld [de], a                                    ; $6a24: $12
    rra                                           ; $6a25: $1f
    rla                                           ; $6a26: $17
    rra                                           ; $6a27: $1f
    jr jr_0de_6a2c                                ; $6a28: $18 $02

    ld a, [hl-]                                   ; $6a2a: $3a
    adc d                                         ; $6a2b: $8a

jr_0de_6a2c:
    ld e, l                                       ; $6a2c: $5d
    ld a, l                                       ; $6a2d: $7d
    ld e, d                                       ; $6a2e: $5a
    ld a, a                                       ; $6a2f: $7f
    cp l                                          ; $6a30: $bd
    rst $38                                       ; $6a31: $ff
    db $fd                                        ; $6a32: $fd
    rst $38                                       ; $6a33: $ff
    db $fd                                        ; $6a34: $fd
    cp a                                          ; $6a35: $bf
    ld [bc], a                                    ; $6a36: $02
    db $10                                        ; $6a37: $10
    add d                                         ; $6a38: $82
    jr jr_0de_6a43                                ; $6a39: $18 $08

    ld [bc], a                                    ; $6a3b: $02
    inc b                                         ; $6a3c: $04
    ld [bc], a                                    ; $6a3d: $02
    inc d                                         ; $6a3e: $14
    adc d                                         ; $6a3f: $8a
    inc e                                         ; $6a40: $1c
    inc c                                         ; $6a41: $0c
    inc e                                         ; $6a42: $1c

jr_0de_6a43:
    inc d                                         ; $6a43: $14
    inc e                                         ; $6a44: $1c
    inc b                                         ; $6a45: $04
    jr jr_0de_6a50                                ; $6a46: $18 $08

    jr jr_0de_6a52                                ; $6a48: $18 $08

    ld [bc], a                                    ; $6a4a: $02
    jr jr_0de_6a4f                                ; $6a4b: $18 $02

    inc e                                         ; $6a4d: $1c
    add l                                         ; $6a4e: $85

jr_0de_6a4f:
    ld a, [de]                                    ; $6a4f: $1a

jr_0de_6a50:
    ld e, $1a                                     ; $6a50: $1e $1a

jr_0de_6a52:
    ld e, $1d                                     ; $6a52: $1e $1d
    inc b                                         ; $6a54: $04
    rra                                           ; $6a55: $1f
    adc b                                         ; $6a56: $88
    dec e                                         ; $6a57: $1d
    ld a, [$fa9f]                                 ; $6a58: $fa $9f $fa
    sbc a                                         ; $6a5b: $9f
    ld a, d                                       ; $6a5c: $7a
    ld l, a                                       ; $6a5d: $6f
    scf                                           ; $6a5e: $37
    inc bc                                        ; $6a5f: $03
    ccf                                           ; $6a60: $3f
    add d                                         ; $6a61: $82
    dec [hl]                                      ; $6a62: $35
    dec a                                         ; $6a63: $3d
    ld [bc], a                                    ; $6a64: $02
    add hl, de                                    ; $6a65: $19
    ld [de], a                                    ; $6a66: $12
    nop                                           ; $6a67: $00
    add h                                         ; $6a68: $84
    rra                                           ; $6a69: $1f
    add hl, de                                    ; $6a6a: $19
    rra                                           ; $6a6b: $1f
    dec e                                         ; $6a6c: $1d
    ld [bc], a                                    ; $6a6d: $02
    ld e, $81                                     ; $6a6e: $1e $81
    inc c                                         ; $6a70: $0c
    inc bc                                        ; $6a71: $03
    inc e                                         ; $6a72: $1c
    add c                                         ; $6a73: $81
    inc b                                         ; $6a74: $04
    inc bc                                        ; $6a75: $03
    inc e                                         ; $6a76: $1c
    ld [de], a                                    ; $6a77: $12
    nop                                           ; $6a78: $00
    rst $38                                       ; $6a79: $ff
    rlca                                          ; $6a7a: $07
    ld bc, $07f8                                  ; $6a7b: $01 $f8 $07
    ld a, [c]                                     ; $6a7e: $f2
    ld bc, $fceb                                  ; $6a7f: $01 $eb $fc
    ld [bc], a                                    ; $6a82: $02
    inc [hl]                                      ; $6a83: $34
    ld [bc], a                                    ; $6a84: $02
    ld e, e                                       ; $6a85: $5b
    ld [bc], a                                    ; $6a86: $02
    ld h, l                                       ; $6a87: $65
    inc c                                         ; $6a88: $0c
    nop                                           ; $6a89: $00
    add e                                         ; $6a8a: $83
    inc d                                         ; $6a8b: $14
    nop                                           ; $6a8c: $00
    ld [$000b], sp                                ; $6a8d: $08 $0b $00
    rst $38                                       ; $6a90: $ff
    dec c                                         ; $6a91: $0d
    inc b                                         ; $6a92: $04
    ei                                            ; $6a93: $fb
    dec b                                         ; $6a94: $05
    rst $30                                       ; $6a95: $f7
    cp $ea                                        ; $6a96: $fe $ea
    ld a, [$ffea]                                 ; $6a98: $fa $ea $ff
    ld a, [$fafa]                                 ; $6a9b: $fa $fa $fa
    rst $38                                       ; $6a9e: $ff
    ld [bc], a                                    ; $6a9f: $02
    rrca                                          ; $6aa0: $0f
    ld [bc], a                                    ; $6aa1: $02
    ld [de], a                                    ; $6aa2: $12
    add d                                         ; $6aa3: $82
    inc h                                         ; $6aa4: $24
    jr nz, jr_0de_6aa9                            ; $6aa5: $20 $02

    scf                                           ; $6aa7: $37
    adc h                                         ; $6aa8: $8c

jr_0de_6aa9:
    ccf                                           ; $6aa9: $3f
    add hl, sp                                    ; $6aaa: $39
    dec a                                         ; $6aab: $3d
    inc l                                         ; $6aac: $2c
    cpl                                           ; $6aad: $2f
    ld [hl+], a                                   ; $6aae: $22
    rra                                           ; $6aaf: $1f
    ld de, $131b                                  ; $6ab0: $11 $1b $13
    ccf                                           ; $6ab3: $3f
    jr c, jr_0de_6ab8                             ; $6ab4: $38 $02

    ld a, d                                       ; $6ab6: $7a
    adc d                                         ; $6ab7: $8a

jr_0de_6ab8:
    ld e, l                                       ; $6ab8: $5d
    ld a, l                                       ; $6ab9: $7d
    sbc d                                         ; $6aba: $9a
    rst $38                                       ; $6abb: $ff
    cp l                                          ; $6abc: $bd
    rst $38                                       ; $6abd: $ff
    db $fd                                        ; $6abe: $fd
    rst $38                                       ; $6abf: $ff
    db $fd                                        ; $6ac0: $fd
    cp a                                          ; $6ac1: $bf
    ld [bc], a                                    ; $6ac2: $02
    db $10                                        ; $6ac3: $10
    add h                                         ; $6ac4: $84
    jr jr_0de_6acf                                ; $6ac5: $18 $08

    inc d                                         ; $6ac7: $14
    inc b                                         ; $6ac8: $04
    ld [bc], a                                    ; $6ac9: $02
    inc d                                         ; $6aca: $14
    add d                                         ; $6acb: $82
    inc e                                         ; $6acc: $1c
    inc c                                         ; $6acd: $0c
    inc bc                                        ; $6ace: $03

jr_0de_6acf:
    inc e                                         ; $6acf: $1c
    add l                                         ; $6ad0: $85
    inc b                                         ; $6ad1: $04
    jr jr_0de_6adc                                ; $6ad2: $18 $08

    jr jr_0de_6ade                                ; $6ad4: $18 $08

    ld [bc], a                                    ; $6ad6: $02
    jr jr_0de_6adb                                ; $6ad7: $18 $02

    inc e                                         ; $6ad9: $1c
    sub b                                         ; $6ada: $90

jr_0de_6adb:
    ld a, [de]                                    ; $6adb: $1a

jr_0de_6adc:
    ld e, $1a                                     ; $6adc: $1e $1a

jr_0de_6ade:
    ld e, $1a                                     ; $6ade: $1e $1a
    ld e, $19                                     ; $6ae0: $1e $19
    rra                                           ; $6ae2: $1f
    dec e                                         ; $6ae3: $1d
    rra                                           ; $6ae4: $1f
    ld sp, hl                                     ; $6ae5: $f9
    cp a                                          ; $6ae6: $bf
    halt                                          ; $6ae7: $76
    ld e, a                                       ; $6ae8: $5f
    ld l, $3f                                     ; $6ae9: $2e $3f
    inc b                                         ; $6aeb: $04
    ld a, a                                       ; $6aec: $7f
    add d                                         ; $6aed: $82
    daa                                           ; $6aee: $27
    ccf                                           ; $6aef: $3f
    ld [bc], a                                    ; $6af0: $02
    dec a                                         ; $6af1: $3d
    ld [bc], a                                    ; $6af2: $02
    inc e                                         ; $6af3: $1c
    stop                                          ; $6af4: $10 $00
    add a                                         ; $6af6: $87
    rra                                           ; $6af7: $1f
    dec de                                        ; $6af8: $1b
    ld e, $12                                     ; $6af9: $1e $12
    ld d, $1a                                     ; $6afb: $16 $1a
    inc c                                         ; $6afd: $0c
    inc bc                                        ; $6afe: $03
    inc e                                         ; $6aff: $1c
    add d                                         ; $6b00: $82
    inc d                                         ; $6b01: $14
    inc e                                         ; $6b02: $1c
    ld [bc], a                                    ; $6b03: $02
    jr jr_0de_6b18                                ; $6b04: $18 $12

    nop                                           ; $6b06: $00
    rst $38                                       ; $6b07: $ff
    rlca                                          ; $6b08: $07
    ld bc, $07f8                                  ; $6b09: $01 $f8 $07
    ld a, [c]                                     ; $6b0c: $f2
    ld bc, $fceb                                  ; $6b0d: $01 $eb $fc
    ld [bc], a                                    ; $6b10: $02
    inc [hl]                                      ; $6b11: $34
    ld [bc], a                                    ; $6b12: $02
    ld l, l                                       ; $6b13: $6d
    ld [bc], a                                    ; $6b14: $02
    ld hl, $0002                                  ; $6b15: $21 $02 $00

jr_0de_6b18:
    ld [bc], a                                    ; $6b18: $02
    ld [$4002], sp                                ; $6b19: $08 $02 $40
    ld [bc], a                                    ; $6b1c: $02
    nop                                           ; $6b1d: $00
    ld [bc], a                                    ; $6b1e: $02
    db $10                                        ; $6b1f: $10
    ld [bc], a                                    ; $6b20: $02
    nop                                           ; $6b21: $00
    add e                                         ; $6b22: $83
    inc d                                         ; $6b23: $14
    nop                                           ; $6b24: $00
    ld [$000b], sp                                ; $6b25: $08 $0b $00
    rst $38                                       ; $6b28: $ff
    dec c                                         ; $6b29: $0d
    inc b                                         ; $6b2a: $04
    ei                                            ; $6b2b: $fb
    dec b                                         ; $6b2c: $05
    rst $30                                       ; $6b2d: $f7
    cp $eb                                        ; $6b2e: $fe $eb
    ld a, [$ffeb]                                 ; $6b30: $fa $eb $ff
    ei                                            ; $6b33: $fb
    ld a, [$fffb]                                 ; $6b34: $fa $fb $ff
    ld [bc], a                                    ; $6b37: $02
    rrca                                          ; $6b38: $0f
    ld [bc], a                                    ; $6b39: $02
    ld [de], a                                    ; $6b3a: $12
    add d                                         ; $6b3b: $82
    inc h                                         ; $6b3c: $24
    jr nz, jr_0de_6b41                            ; $6b3d: $20 $02

    scf                                           ; $6b3f: $37
    adc h                                         ; $6b40: $8c

jr_0de_6b41:
    ccf                                           ; $6b41: $3f
    add hl, sp                                    ; $6b42: $39
    dec a                                         ; $6b43: $3d
    inc l                                         ; $6b44: $2c
    cpl                                           ; $6b45: $2f
    ld [hl+], a                                   ; $6b46: $22
    rra                                           ; $6b47: $1f
    ld de, $131b                                  ; $6b48: $11 $1b $13
    rra                                           ; $6b4b: $1f
    jr jr_0de_6b50                                ; $6b4c: $18 $02

    ld a, d                                       ; $6b4e: $7a
    adc d                                         ; $6b4f: $8a

jr_0de_6b50:
    ld e, l                                       ; $6b50: $5d
    ld a, l                                       ; $6b51: $7d
    ld e, d                                       ; $6b52: $5a
    ld a, a                                       ; $6b53: $7f
    sbc l                                         ; $6b54: $9d
    rst $38                                       ; $6b55: $ff
    cp l                                          ; $6b56: $bd
    rst $38                                       ; $6b57: $ff
    db $fd                                        ; $6b58: $fd
    rst $38                                       ; $6b59: $ff
    ld [bc], a                                    ; $6b5a: $02
    db $10                                        ; $6b5b: $10
    add h                                         ; $6b5c: $84
    jr jr_0de_6b67                                ; $6b5d: $18 $08

    inc d                                         ; $6b5f: $14
    inc b                                         ; $6b60: $04
    ld [bc], a                                    ; $6b61: $02
    inc d                                         ; $6b62: $14
    add d                                         ; $6b63: $82
    inc e                                         ; $6b64: $1c
    inc c                                         ; $6b65: $0c
    inc bc                                        ; $6b66: $03

jr_0de_6b67:
    inc e                                         ; $6b67: $1c
    add l                                         ; $6b68: $85
    inc b                                         ; $6b69: $04
    jr jr_0de_6b74                                ; $6b6a: $18 $08

    jr jr_0de_6b76                                ; $6b6c: $18 $08

    ld [bc], a                                    ; $6b6e: $02
    jr jr_0de_6b73                                ; $6b6f: $18 $02

    inc e                                         ; $6b71: $1c
    sub b                                         ; $6b72: $90

jr_0de_6b73:
    ld a, [de]                                    ; $6b73: $1a

jr_0de_6b74:
    ld e, $1a                                     ; $6b74: $1e $1a

jr_0de_6b76:
    ld e, $1a                                     ; $6b76: $1e $1a
    ld e, $1d                                     ; $6b78: $1e $1d
    rra                                           ; $6b7a: $1f
    add hl, de                                    ; $6b7b: $19
    rra                                           ; $6b7c: $1f
    ld a, [$f6bf]                                 ; $6b7d: $fa $bf $f6
    cp a                                          ; $6b80: $bf
    ld l, [hl]                                    ; $6b81: $6e
    ld a, a                                       ; $6b82: $7f
    ld [bc], a                                    ; $6b83: $02
    ccf                                           ; $6b84: $3f
    ld [bc], a                                    ; $6b85: $02
    ld a, a                                       ; $6b86: $7f
    add d                                         ; $6b87: $82
    dec h                                         ; $6b88: $25
    dec a                                         ; $6b89: $3d
    ld [bc], a                                    ; $6b8a: $02
    inc a                                         ; $6b8b: $3c
    ld [de], a                                    ; $6b8c: $12
    nop                                           ; $6b8d: $00
    adc b                                         ; $6b8e: $88
    rra                                           ; $6b8f: $1f
    dec de                                        ; $6b90: $1b
    rra                                           ; $6b91: $1f
    add hl, de                                    ; $6b92: $19
    dec e                                         ; $6b93: $1d
    rra                                           ; $6b94: $1f
    ld c, $1e                                     ; $6b95: $0e $1e
    ld [bc], a                                    ; $6b97: $02
    jr jr_0de_6b9c                                ; $6b98: $18 $02

    db $10                                        ; $6b9a: $10
    inc d                                         ; $6b9b: $14

jr_0de_6b9c:
    nop                                           ; $6b9c: $00
    rst $38                                       ; $6b9d: $ff
    rlca                                          ; $6b9e: $07
    ld bc, $07f8                                  ; $6b9f: $01 $f8 $07
    ld a, [c]                                     ; $6ba2: $f2
    ld bc, $fcec                                  ; $6ba3: $01 $ec $fc
    ld [bc], a                                    ; $6ba6: $02
    inc [hl]                                      ; $6ba7: $34
    ld [bc], a                                    ; $6ba8: $02
    ld l, l                                       ; $6ba9: $6d
    ld [bc], a                                    ; $6baa: $02
    ld hl, $0002                                  ; $6bab: $21 $02 $00
    ld [bc], a                                    ; $6bae: $02
    ld [$4002], sp                                ; $6baf: $08 $02 $40
    ld [bc], a                                    ; $6bb2: $02
    nop                                           ; $6bb3: $00
    ld [bc], a                                    ; $6bb4: $02
    db $10                                        ; $6bb5: $10
    ld [bc], a                                    ; $6bb6: $02
    nop                                           ; $6bb7: $00
    add e                                         ; $6bb8: $83
    inc d                                         ; $6bb9: $14
    nop                                           ; $6bba: $00
    ld [$000b], sp                                ; $6bbb: $08 $0b $00
    rst $38                                       ; $6bbe: $ff
    dec c                                         ; $6bbf: $0d
    inc b                                         ; $6bc0: $04
    ei                                            ; $6bc1: $fb
    dec b                                         ; $6bc2: $05
    rst $30                                       ; $6bc3: $f7
    cp $ea                                        ; $6bc4: $fe $ea
    ld a, [$ffea]                                 ; $6bc6: $fa $ea $ff
    ld a, [$fafa]                                 ; $6bc9: $fa $fa $fa
    rst $38                                       ; $6bcc: $ff
    ld [bc], a                                    ; $6bcd: $02
    rrca                                          ; $6bce: $0f
    ld [bc], a                                    ; $6bcf: $02
    ld [de], a                                    ; $6bd0: $12
    add d                                         ; $6bd1: $82
    add hl, hl                                    ; $6bd2: $29
    jr nz, jr_0de_6bd7                            ; $6bd3: $20 $02

    ld h, $8c                                     ; $6bd5: $26 $8c

jr_0de_6bd7:
    ccf                                           ; $6bd7: $3f
    add hl, sp                                    ; $6bd8: $39
    ccf                                           ; $6bd9: $3f
    dec l                                         ; $6bda: $2d
    ccf                                           ; $6bdb: $3f
    inc h                                         ; $6bdc: $24
    rra                                           ; $6bdd: $1f
    ld [de], a                                    ; $6bde: $12
    rra                                           ; $6bdf: $1f
    rla                                           ; $6be0: $17
    rra                                           ; $6be1: $1f
    jr jr_0de_6be6                                ; $6be2: $18 $02

    ld a, [hl-]                                   ; $6be4: $3a
    adc d                                         ; $6be5: $8a

jr_0de_6be6:
    ld e, l                                       ; $6be6: $5d
    ld a, l                                       ; $6be7: $7d
    ld e, d                                       ; $6be8: $5a
    ld a, a                                       ; $6be9: $7f
    cp l                                          ; $6bea: $bd
    rst $38                                       ; $6beb: $ff
    db $fd                                        ; $6bec: $fd
    rst $38                                       ; $6bed: $ff
    db $fd                                        ; $6bee: $fd
    cp a                                          ; $6bef: $bf
    ld [bc], a                                    ; $6bf0: $02
    db $10                                        ; $6bf1: $10
    add d                                         ; $6bf2: $82
    jr jr_0de_6bfd                                ; $6bf3: $18 $08

    ld [bc], a                                    ; $6bf5: $02
    inc b                                         ; $6bf6: $04
    ld [bc], a                                    ; $6bf7: $02
    inc d                                         ; $6bf8: $14
    adc d                                         ; $6bf9: $8a
    inc e                                         ; $6bfa: $1c
    inc c                                         ; $6bfb: $0c
    inc e                                         ; $6bfc: $1c

jr_0de_6bfd:
    inc d                                         ; $6bfd: $14
    inc e                                         ; $6bfe: $1c
    inc b                                         ; $6bff: $04
    jr jr_0de_6c0a                                ; $6c00: $18 $08

    jr jr_0de_6c0c                                ; $6c02: $18 $08

    ld [bc], a                                    ; $6c04: $02
    jr jr_0de_6c09                                ; $6c05: $18 $02

    inc e                                         ; $6c07: $1c
    add l                                         ; $6c08: $85

jr_0de_6c09:
    ld a, [de]                                    ; $6c09: $1a

jr_0de_6c0a:
    ld e, $1a                                     ; $6c0a: $1e $1a

jr_0de_6c0c:
    ld e, $1d                                     ; $6c0c: $1e $1d
    inc b                                         ; $6c0e: $04
    rra                                           ; $6c0f: $1f
    adc b                                         ; $6c10: $88
    dec e                                         ; $6c11: $1d
    ld a, [$fa9f]                                 ; $6c12: $fa $9f $fa
    and a                                         ; $6c15: $a7
    ld a, d                                       ; $6c16: $7a
    ld a, a                                       ; $6c17: $7f
    scf                                           ; $6c18: $37
    inc bc                                        ; $6c19: $03
    ccf                                           ; $6c1a: $3f
    add d                                         ; $6c1b: $82
    dec h                                         ; $6c1c: $25
    dec a                                         ; $6c1d: $3d
    ld [bc], a                                    ; $6c1e: $02
    inc a                                         ; $6c1f: $3c
    ld [de], a                                    ; $6c20: $12
    nop                                           ; $6c21: $00
    add h                                         ; $6c22: $84
    rra                                           ; $6c23: $1f
    add hl, de                                    ; $6c24: $19
    rra                                           ; $6c25: $1f
    dec e                                         ; $6c26: $1d
    ld [bc], a                                    ; $6c27: $02
    ld e, $81                                     ; $6c28: $1e $81
    inc c                                         ; $6c2a: $0c
    inc bc                                        ; $6c2b: $03
    inc e                                         ; $6c2c: $1c
    add d                                         ; $6c2d: $82
    inc c                                         ; $6c2e: $0c
    inc e                                         ; $6c2f: $1c
    ld [bc], a                                    ; $6c30: $02
    jr jr_0de_6c45                                ; $6c31: $18 $12

    nop                                           ; $6c33: $00
    rst $38                                       ; $6c34: $ff
    rlca                                          ; $6c35: $07
    ld bc, $07f8                                  ; $6c36: $01 $f8 $07
    ld a, [c]                                     ; $6c39: $f2
    ld bc, $fceb                                  ; $6c3a: $01 $eb $fc
    ld [bc], a                                    ; $6c3d: $02
    inc [hl]                                      ; $6c3e: $34
    ld [bc], a                                    ; $6c3f: $02
    ld e, e                                       ; $6c40: $5b
    ld [bc], a                                    ; $6c41: $02
    ld h, l                                       ; $6c42: $65
    inc c                                         ; $6c43: $0c
    nop                                           ; $6c44: $00

jr_0de_6c45:
    add e                                         ; $6c45: $83
    inc d                                         ; $6c46: $14
    nop                                           ; $6c47: $00
    ld [$000b], sp                                ; $6c48: $08 $0b $00
    rst $38                                       ; $6c4b: $ff
    dec c                                         ; $6c4c: $0d
    inc b                                         ; $6c4d: $04
    ld a, [$f704]                                 ; $6c4e: $fa $04 $f7
    cp $ea                                        ; $6c51: $fe $ea
    ei                                            ; $6c53: $fb
    db $eb                                        ; $6c54: $eb
    db $fd                                        ; $6c55: $fd
    ld a, [$fafb]                                 ; $6c56: $fa $fb $fa
    db $fc                                        ; $6c59: $fc
    ld [bc], a                                    ; $6c5a: $02
    rra                                           ; $6c5b: $1f
    sbc [hl]                                      ; $6c5c: $9e
    db $e4                                        ; $6c5d: $e4
    ldh [rOBP1], a                                ; $6c5e: $e0 $49
    ld b, c                                       ; $6c60: $41
    and l                                         ; $6c61: $a5
    add l                                         ; $6c62: $85
    adc a                                         ; $6c63: $8f
    adc d                                         ; $6c64: $8a
    rst $18                                       ; $6c65: $df
    sub $7f                                       ; $6c66: $d6 $7f
    ld [hl], b                                    ; $6c68: $70
    ld a, a                                       ; $6c69: $7f
    ld d, b                                       ; $6c6a: $50
    ccf                                           ; $6c6b: $3f
    inc sp                                        ; $6c6c: $33
    ccf                                           ; $6c6d: $3f
    add hl, sp                                    ; $6c6e: $39
    ld d, d                                       ; $6c6f: $52
    ld [hl], d                                    ; $6c70: $72
    xor l                                         ; $6c71: $ad
    db $fd                                        ; $6c72: $fd
    db $eb                                        ; $6c73: $eb
    rst $38                                       ; $6c74: $ff
    ld c, l                                       ; $6c75: $4d
    ld a, a                                       ; $6c76: $7f
    ld e, l                                       ; $6c77: $5d
    ld a, a                                       ; $6c78: $7f
    ld a, l                                       ; $6c79: $7d
    ld l, a                                       ; $6c7a: $6f
    ld [bc], a                                    ; $6c7b: $02
    ld [bc], a                                    ; $6c7c: $02
    ld [bc], a                                    ; $6c7d: $02
    ld bc, $0206                                  ; $6c7e: $01 $06 $02
    add d                                         ; $6c81: $82
    inc bc                                        ; $6c82: $03
    ld bc, $0204                                  ; $6c83: $01 $04 $02
    ld c, $00                                     ; $6c86: $0e $00
    add d                                         ; $6c88: $82
    db $fc                                        ; $6c89: $fc
    sbc h                                         ; $6c8a: $9c
    ld [bc], a                                    ; $6c8b: $02
    ld b, b                                       ; $6c8c: $40

jr_0de_6c8d:
    add [hl]                                      ; $6c8d: $86
    rst $38                                       ; $6c8e: $ff
    add sp, -$45                                  ; $6c8f: $e8 $bb
    rst $38                                       ; $6c91: $ff
    rst $30                                       ; $6c92: $f7
    rst $38                                       ; $6c93: $ff
    ld [bc], a                                    ; $6c94: $02
    cp $02                                        ; $6c95: $fe $02
    ld a, [hl]                                    ; $6c97: $7e
    add c                                         ; $6c98: $81
    add hl, hl                                    ; $6c99: $29
    inc bc                                        ; $6c9a: $03
    ccf                                           ; $6c9b: $3f
    ld [de], a                                    ; $6c9c: $12
    nop                                           ; $6c9d: $00
    ld [bc], a                                    ; $6c9e: $02
    ld bc, $001c                                  ; $6c9f: $01 $1c $00
    rst $38                                       ; $6ca2: $ff

jr_0de_6ca3:
    rlca                                          ; $6ca3: $07
    ld bc, $07f8                                  ; $6ca4: $01 $f8 $07
    ld a, [c]                                     ; $6ca7: $f2
    ld bc, $fceb                                  ; $6ca8: $01 $eb $fc
    ld [bc], a                                    ; $6cab: $02
    ld [hl], $02                                  ; $6cac: $36 $02
    ld l, l                                       ; $6cae: $6d
    ld [bc], a                                    ; $6caf: $02
    or h                                          ; $6cb0: $b4
    ld [bc], a                                    ; $6cb1: $02
    ldh [rSC], a                                  ; $6cb2: $e0 $02
    ld b, b                                       ; $6cb4: $40
    ld [$8300], sp                                ; $6cb5: $08 $00 $83
    jr jr_0de_6cba                                ; $6cb8: $18 $00

jr_0de_6cba:
    inc b                                         ; $6cba: $04
    dec bc                                        ; $6cbb: $0b
    nop                                           ; $6cbc: $00
    rst $38                                       ; $6cbd: $ff
    dec c                                         ; $6cbe: $0d
    inc b                                         ; $6cbf: $04
    ld a, [$f704]                                 ; $6cc0: $fa $04 $f7
    cp $ea                                        ; $6cc3: $fe $ea
    ei                                            ; $6cc5: $fb
    db $eb                                        ; $6cc6: $eb
    db $fd                                        ; $6cc7: $fd
    ld a, [$fafa]                                 ; $6cc8: $fa $fa $fa
    rst $38                                       ; $6ccb: $ff
    ld [bc], a                                    ; $6ccc: $02
    rra                                           ; $6ccd: $1f
    adc b                                         ; $6cce: $88
    db $e4                                        ; $6ccf: $e4
    ldh [rHDMA2], a                               ; $6cd0: $e0 $52
    ld b, d                                       ; $6cd2: $42
    xor e                                         ; $6cd3: $ab
    adc e                                         ; $6cd4: $8b
    adc a                                         ; $6cd5: $8f
    adc h                                         ; $6cd6: $8c
    ld [bc], a                                    ; $6cd7: $02
    sub [hl]                                      ; $6cd8: $96
    sub h                                         ; $6cd9: $94
    ld a, a                                       ; $6cda: $7f
    ld [hl], b                                    ; $6cdb: $70
    ld a, a                                       ; $6cdc: $7f
    ld d, b                                       ; $6cdd: $50
    ccf                                           ; $6cde: $3f
    inc sp                                        ; $6cdf: $33
    ccf                                           ; $6ce0: $3f
    add hl, sp                                    ; $6ce1: $39
    ld d, d                                       ; $6ce2: $52
    ld [hl], d                                    ; $6ce3: $72
    xor l                                         ; $6ce4: $ad
    db $fd                                        ; $6ce5: $fd
    db $eb                                        ; $6ce6: $eb
    rst $38                                       ; $6ce7: $ff
    dec l                                         ; $6ce8: $2d
    ccf                                           ; $6ce9: $3f
    ld b, l                                       ; $6cea: $45
    ld a, a                                       ; $6ceb: $7f
    ld l, a                                       ; $6cec: $6f
    halt                                          ; $6ced: $76
    ld [bc], a                                    ; $6cee: $02
    ld [bc], a                                    ; $6cef: $02
    ld [bc], a                                    ; $6cf0: $02
    ld bc, $0302                                  ; $6cf1: $01 $02 $03
    inc b                                         ; $6cf4: $04
    ld [bc], a                                    ; $6cf5: $02
    add d                                         ; $6cf6: $82
    inc bc                                        ; $6cf7: $03
    ld bc, $0204                                  ; $6cf8: $01 $04 $02
    ld a, [bc]                                    ; $6cfb: $0a
    nop                                           ; $6cfc: $00
    add c                                         ; $6cfd: $81
    ld [bc], a                                    ; $6cfe: $02
    inc bc                                        ; $6cff: $03
    nop                                           ; $6d00: $00
    add d                                         ; $6d01: $82
    db $fc                                        ; $6d02: $fc
    db $e4                                        ; $6d03: $e4
    ld [bc], a                                    ; $6d04: $02
    jr nz, jr_0de_6c8d                            ; $6d05: $20 $86

    ld a, a                                       ; $6d07: $7f
    ld a, l                                       ; $6d08: $7d
    ld e, l                                       ; $6d09: $5d
    ld a, a                                       ; $6d0a: $7f
    ld l, e                                       ; $6d0b: $6b
    ld a, a                                       ; $6d0c: $7f
    ld [bc], a                                    ; $6d0d: $02
    rst $38                                       ; $6d0e: $ff
    ld [bc], a                                    ; $6d0f: $02
    db $fd                                        ; $6d10: $fd
    add d                                         ; $6d11: $82
    ld h, l                                       ; $6d12: $65
    ld a, l                                       ; $6d13: $7d
    ld [bc], a                                    ; $6d14: $02
    inc e                                         ; $6d15: $1c
    ld [de], a                                    ; $6d16: $12
    nop                                           ; $6d17: $00
    ld [bc], a                                    ; $6d18: $02
    jr jr_0de_6ca3                                ; $6d19: $18 $88

    ld [$1618], sp                                ; $6d1b: $08 $18 $16
    ld e, $19                                     ; $6d1e: $1e $19
    rra                                           ; $6d20: $1f
    ld d, $1e                                     ; $6d21: $16 $1e
    ld [bc], a                                    ; $6d23: $02
    jr @+$14                                      ; $6d24: $18 $12

    nop                                           ; $6d26: $00
    rst $38                                       ; $6d27: $ff
    rlca                                          ; $6d28: $07
    ld bc, $07f8                                  ; $6d29: $01 $f8 $07
    ld a, [c]                                     ; $6d2c: $f2
    ld bc, $fceb                                  ; $6d2d: $01 $eb $fc
    ld [bc], a                                    ; $6d30: $02
    ld [hl], $02                                  ; $6d31: $36 $02
    ld e, e                                       ; $6d33: $5b
    ld [bc], a                                    ; $6d34: $02
    xor b                                         ; $6d35: $a8
    ld [bc], a                                    ; $6d36: $02
    ldh [rSC], a                                  ; $6d37: $e0 $02
    jp nc, RST_08                                 ; $6d39: $d2 $08 $00

    add e                                         ; $6d3c: $83
    jr jr_0de_6d3f                                ; $6d3d: $18 $00

jr_0de_6d3f:
    inc b                                         ; $6d3f: $04
    dec bc                                        ; $6d40: $0b
    nop                                           ; $6d41: $00
    rst $38                                       ; $6d42: $ff
    dec c                                         ; $6d43: $0d
    inc b                                         ; $6d44: $04
    ld a, [$f704]                                 ; $6d45: $fa $04 $f7
    cp $eb                                        ; $6d48: $fe $eb
    ei                                            ; $6d4a: $fb
    db $ec                                        ; $6d4b: $ec
    db $fd                                        ; $6d4c: $fd
    ei                                            ; $6d4d: $fb
    ld a, [$fdfb]                                 ; $6d4e: $fa $fb $fd
    ld [bc], a                                    ; $6d51: $02
    ccf                                           ; $6d52: $3f
    adc b                                         ; $6d53: $88
    call nz, Call_0de_5ac0                        ; $6d54: $c4 $c0 $5a
    ld b, d                                       ; $6d57: $42
    xor e                                         ; $6d58: $ab
    adc e                                         ; $6d59: $8b
    adc a                                         ; $6d5a: $8f
    adc h                                         ; $6d5b: $8c
    ld [bc], a                                    ; $6d5c: $02
    sub [hl]                                      ; $6d5d: $96
    sub h                                         ; $6d5e: $94
    ld a, a                                       ; $6d5f: $7f
    ld [hl], b                                    ; $6d60: $70
    ld a, a                                       ; $6d61: $7f
    ld d, b                                       ; $6d62: $50
    ccf                                           ; $6d63: $3f
    inc sp                                        ; $6d64: $33
    ld a, a                                       ; $6d65: $7f
    ld a, c                                       ; $6d66: $79
    sub d                                         ; $6d67: $92
    ld a, [c]                                     ; $6d68: $f2
    db $ed                                        ; $6d69: $ed
    db $fd                                        ; $6d6a: $fd
    dec hl                                        ; $6d6b: $2b
    ccf                                           ; $6d6c: $3f
    ld l, l                                       ; $6d6d: $6d
    ld a, a                                       ; $6d6e: $7f
    ld b, l                                       ; $6d6f: $45
    ld a, a                                       ; $6d70: $7f
    ld l, a                                       ; $6d71: $6f
    ld [hl], h                                    ; $6d72: $74
    ld [bc], a                                    ; $6d73: $02
    ld [bc], a                                    ; $6d74: $02
    ld [bc], a                                    ; $6d75: $02
    ld bc, $0302                                  ; $6d76: $01 $02 $03
    inc b                                         ; $6d79: $04
    ld [bc], a                                    ; $6d7a: $02
    add d                                         ; $6d7b: $82
    inc bc                                        ; $6d7c: $03
    ld bc, $0204                                  ; $6d7d: $01 $04 $02
    ld c, $00                                     ; $6d80: $0e $00
    add d                                         ; $6d82: $82
    db $fc                                        ; $6d83: $fc
    call z, Call_000_2002                         ; $6d84: $cc $02 $20
    add [hl]                                      ; $6d87: $86
    ld e, a                                       ; $6d88: $5f
    ld a, e                                       ; $6d89: $7b
    db $dd                                        ; $6d8a: $dd
    rst $38                                       ; $6d8b: $ff
    ei                                            ; $6d8c: $fb
    rst $38                                       ; $6d8d: $ff
    ld [bc], a                                    ; $6d8e: $02
    ld a, a                                       ; $6d8f: $7f
    add d                                         ; $6d90: $82
    ld l, e                                       ; $6d91: $6b
    ld a, e                                       ; $6d92: $7b
    ld [bc], a                                    ; $6d93: $02
    jr nc, @+$16                                  ; $6d94: $30 $14

    nop                                           ; $6d96: $00
    ld [bc], a                                    ; $6d97: $02
    inc b                                         ; $6d98: $04
    add c                                         ; $6d99: $81
    ld [bc], a                                    ; $6d9a: $02
    inc bc                                        ; $6d9b: $03
    ld b, $81                                     ; $6d9c: $06 $81
    ld bc, $0703                                  ; $6d9e: $01 $03 $07
    inc d                                         ; $6da1: $14
    nop                                           ; $6da2: $00
    rst $38                                       ; $6da3: $ff
    rlca                                          ; $6da4: $07
    ld bc, $07f8                                  ; $6da5: $01 $f8 $07
    ld a, [c]                                     ; $6da8: $f2
    ld bc, $fcec                                  ; $6da9: $01 $ec $fc
    ld [bc], a                                    ; $6dac: $02
    halt                                          ; $6dad: $76
    ld [bc], a                                    ; $6dae: $02
    ld c, e                                       ; $6daf: $4b
    ld [bc], a                                    ; $6db0: $02
    xor b                                         ; $6db1: $a8
    ld [bc], a                                    ; $6db2: $02
    ldh [rSC], a                                  ; $6db3: $e0 $02
    jp nc, RST_08                                 ; $6db5: $d2 $08 $00

    add e                                         ; $6db8: $83
    jr jr_0de_6dbb                                ; $6db9: $18 $00

jr_0de_6dbb:
    inc b                                         ; $6dbb: $04
    dec bc                                        ; $6dbc: $0b
    nop                                           ; $6dbd: $00
    rst $38                                       ; $6dbe: $ff
    dec bc                                        ; $6dbf: $0b
    inc bc                                        ; $6dc0: $03
    ld a, [$f704]                                 ; $6dc1: $fa $04 $f7
    cp $ea                                        ; $6dc4: $fe $ea
    ei                                            ; $6dc6: $fb
    db $eb                                        ; $6dc7: $eb
    db $fd                                        ; $6dc8: $fd
    ld a, [$02fc]                                 ; $6dc9: $fa $fc $02
    rra                                           ; $6dcc: $1f
    sbc [hl]                                      ; $6dcd: $9e
    ld h, h                                       ; $6dce: $64
    ld h, b                                       ; $6dcf: $60
    ret                                           ; $6dd0: $c9


    pop bc                                        ; $6dd1: $c1
    and l                                         ; $6dd2: $a5
    add l                                         ; $6dd3: $85
    adc a                                         ; $6dd4: $8f
    adc d                                         ; $6dd5: $8a
    rst $18                                       ; $6dd6: $df
    sub $7f                                       ; $6dd7: $d6 $7f
    ld [hl], b                                    ; $6dd9: $70
    ld a, a                                       ; $6dda: $7f
    ld d, b                                       ; $6ddb: $50
    ccf                                           ; $6ddc: $3f
    inc sp                                        ; $6ddd: $33
    ccf                                           ; $6dde: $3f
    add hl, sp                                    ; $6ddf: $39
    jp nc, $adf2                                  ; $6de0: $d2 $f2 $ad

    db $fd                                        ; $6de3: $fd
    ld l, e                                       ; $6de4: $6b
    ld a, a                                       ; $6de5: $7f
    ld e, l                                       ; $6de6: $5d
    ld a, a                                       ; $6de7: $7f
    ld c, l                                       ; $6de8: $4d
    ld a, a                                       ; $6de9: $7f
    ld a, l                                       ; $6dea: $7d
    ld e, a                                       ; $6deb: $5f
    ld [bc], a                                    ; $6dec: $02
    ld [bc], a                                    ; $6ded: $02
    ld [bc], a                                    ; $6dee: $02
    ld bc, $0206                                  ; $6def: $01 $06 $02
    add d                                         ; $6df2: $82
    inc bc                                        ; $6df3: $03
    ld bc, $0204                                  ; $6df4: $01 $04 $02
    ld c, $00                                     ; $6df7: $0e $00
    add d                                         ; $6df9: $82
    db $f4                                        ; $6dfa: $f4
    cp h                                          ; $6dfb: $bc
    ld [bc], a                                    ; $6dfc: $02
    add b                                         ; $6dfd: $80
    adc d                                         ; $6dfe: $8a
    db $fd                                        ; $6dff: $fd
    sub e                                         ; $6e00: $93
    or c                                          ; $6e01: $b1
    rst $38                                       ; $6e02: $ff
    ld a, l                                       ; $6e03: $7d
    ld a, a                                       ; $6e04: $7f
    xor $fe                                       ; $6e05: $ee $fe
    di                                            ; $6e07: $f3
    rst $38                                       ; $6e08: $ff
    ld [bc], a                                    ; $6e09: $02
    ld a, [hl]                                    ; $6e0a: $7e
    ld [de], a                                    ; $6e0b: $12
    nop                                           ; $6e0c: $00
    rst $38                                       ; $6e0d: $ff
    rlca                                          ; $6e0e: $07
    ld bc, $07f8                                  ; $6e0f: $01 $f8 $07
    ld a, [c]                                     ; $6e12: $f2
    ld bc, $fceb                                  ; $6e13: $01 $eb $fc
    ld [bc], a                                    ; $6e16: $02
    ld [hl], $02                                  ; $6e17: $36 $02
    ld l, l                                       ; $6e19: $6d
    ld [bc], a                                    ; $6e1a: $02
    or h                                          ; $6e1b: $b4
    ld [bc], a                                    ; $6e1c: $02
    ldh [rSC], a                                  ; $6e1d: $e0 $02
    ld b, b                                       ; $6e1f: $40
    ld [$8300], sp                                ; $6e20: $08 $00 $83
    jr jr_0de_6e25                                ; $6e23: $18 $00

jr_0de_6e25:
    inc b                                         ; $6e25: $04
    dec bc                                        ; $6e26: $0b
    nop                                           ; $6e27: $00
    rst $38                                       ; $6e28: $ff
    dec c                                         ; $6e29: $0d
    inc b                                         ; $6e2a: $04
    ld a, [$f704]                                 ; $6e2b: $fa $04 $f7
    cp $ea                                        ; $6e2e: $fe $ea
    ei                                            ; $6e30: $fb
    db $eb                                        ; $6e31: $eb
    db $fd                                        ; $6e32: $fd
    ld a, [$fafa]                                 ; $6e33: $fa $fa $fa
    rst $38                                       ; $6e36: $ff
    ld [bc], a                                    ; $6e37: $02
    rra                                           ; $6e38: $1f
    sbc [hl]                                      ; $6e39: $9e
    db $e4                                        ; $6e3a: $e4
    ldh [rOBP0], a                                ; $6e3b: $e0 $48
    ld b, b                                       ; $6e3d: $40
    and l                                         ; $6e3e: $a5
    add l                                         ; $6e3f: $85
    adc a                                         ; $6e40: $8f
    adc [hl]                                      ; $6e41: $8e
    rst $08                                       ; $6e42: $cf
    bit 7, a                                      ; $6e43: $cb $7f
    ld [hl], b                                    ; $6e45: $70
    ld a, a                                       ; $6e46: $7f
    ld d, b                                       ; $6e47: $50
    ccf                                           ; $6e48: $3f
    ld sp, $393f                                  ; $6e49: $31 $3f $39
    ld d, d                                       ; $6e4c: $52
    ld [hl], d                                    ; $6e4d: $72
    xor l                                         ; $6e4e: $ad
    db $fd                                        ; $6e4f: $fd
    set 7, a                                      ; $6e50: $cb $ff
    ld e, l                                       ; $6e52: $5d
    ld a, a                                       ; $6e53: $7f
    db $dd                                        ; $6e54: $dd
    rst $38                                       ; $6e55: $ff
    db $fd                                        ; $6e56: $fd
    rst $18                                       ; $6e57: $df
    ld [bc], a                                    ; $6e58: $02
    ld [bc], a                                    ; $6e59: $02
    ld [bc], a                                    ; $6e5a: $02
    ld bc, $0206                                  ; $6e5b: $01 $06 $02
    add d                                         ; $6e5e: $82
    inc bc                                        ; $6e5f: $03
    ld bc, $0204                                  ; $6e60: $01 $04 $02
    ld c, $00                                     ; $6e63: $0e $00
    adc c                                         ; $6e65: $89
    db $f4                                        ; $6e66: $f4
    ld a, h                                       ; $6e67: $7c
    ld h, b                                       ; $6e68: $60
    ld b, b                                       ; $6e69: $40
    ld e, [hl]                                    ; $6e6a: $5e
    ld h, a                                       ; $6e6b: $67
    ld e, l                                       ; $6e6c: $5d
    ld a, e                                       ; $6e6d: $7b
    db $ed                                        ; $6e6e: $ed
    inc bc                                        ; $6e6f: $03
    rst $38                                       ; $6e70: $ff
    add d                                         ; $6e71: $82
    ld [hl], a                                    ; $6e72: $77
    ld a, a                                       ; $6e73: $7f
    ld [bc], a                                    ; $6e74: $02
    dec de                                        ; $6e75: $1b
    ld [bc], a                                    ; $6e76: $02
    ld bc, $0012                                  ; $6e77: $01 $12 $00
    ld [bc], a                                    ; $6e7a: $02
    db $10                                        ; $6e7b: $10
    adc d                                         ; $6e7c: $8a
    ld [$0818], sp                                ; $6e7d: $08 $18 $08
    jr jr_0de_6e98                                ; $6e80: $18 $16

    ld e, $19                                     ; $6e82: $1e $19
    rra                                           ; $6e84: $1f
    ld b, $1e                                     ; $6e85: $06 $1e
    ld [bc], a                                    ; $6e87: $02
    jr jr_0de_6e9a                                ; $6e88: $18 $10

    nop                                           ; $6e8a: $00
    rst $38                                       ; $6e8b: $ff
    rlca                                          ; $6e8c: $07
    ld bc, $07f8                                  ; $6e8d: $01 $f8 $07
    ld a, [c]                                     ; $6e90: $f2
    ld bc, $fceb                                  ; $6e91: $01 $eb $fc
    ld [bc], a                                    ; $6e94: $02
    ld [hl], $02                                  ; $6e95: $36 $02
    ld l, a                                       ; $6e97: $6f

jr_0de_6e98:
    ld [bc], a                                    ; $6e98: $02
    or h                                          ; $6e99: $b4

jr_0de_6e9a:
    ld [bc], a                                    ; $6e9a: $02
    ldh [rSC], a                                  ; $6e9b: $e0 $02
    ld h, b                                       ; $6e9d: $60
    ld [$8300], sp                                ; $6e9e: $08 $00 $83
    jr jr_0de_6ea3                                ; $6ea1: $18 $00

jr_0de_6ea3:
    inc b                                         ; $6ea3: $04
    dec bc                                        ; $6ea4: $0b
    nop                                           ; $6ea5: $00
    rst $38                                       ; $6ea6: $ff
    dec c                                         ; $6ea7: $0d
    inc b                                         ; $6ea8: $04
    ld a, [$f704]                                 ; $6ea9: $fa $04 $f7
    cp $eb                                        ; $6eac: $fe $eb
    ei                                            ; $6eae: $fb
    db $ec                                        ; $6eaf: $ec
    db $fd                                        ; $6eb0: $fd
    ei                                            ; $6eb1: $fb
    ld a, [$fdfb]                                 ; $6eb2: $fa $fb $fd
    ld [bc], a                                    ; $6eb5: $02
    ccf                                           ; $6eb6: $3f
    sbc [hl]                                      ; $6eb7: $9e
    call nz, Call_0de_58c0                        ; $6eb8: $c4 $c0 $58
    ld b, b                                       ; $6ebb: $40
    and l                                         ; $6ebc: $a5
    add l                                         ; $6ebd: $85
    adc a                                         ; $6ebe: $8f
    adc [hl]                                      ; $6ebf: $8e
    rst $08                                       ; $6ec0: $cf
    bit 7, a                                      ; $6ec1: $cb $7f
    ld [hl], b                                    ; $6ec3: $70
    ld a, a                                       ; $6ec4: $7f
    ld d, b                                       ; $6ec5: $50
    ccf                                           ; $6ec6: $3f
    ld sp, $797f                                  ; $6ec7: $31 $7f $79
    sub d                                         ; $6eca: $92
    ld a, [c]                                     ; $6ecb: $f2
    db $ed                                        ; $6ecc: $ed
    db $fd                                        ; $6ecd: $fd
    dec hl                                        ; $6ece: $2b
    ccf                                           ; $6ecf: $3f
    ld c, l                                       ; $6ed0: $4d
    ld a, a                                       ; $6ed1: $7f
    ld e, l                                       ; $6ed2: $5d
    ld a, a                                       ; $6ed3: $7f
    ld a, l                                       ; $6ed4: $7d
    ld l, a                                       ; $6ed5: $6f
    ld [bc], a                                    ; $6ed6: $02
    ld [bc], a                                    ; $6ed7: $02
    ld [bc], a                                    ; $6ed8: $02
    ld bc, $0206                                  ; $6ed9: $01 $06 $02
    add d                                         ; $6edc: $82
    inc bc                                        ; $6edd: $03
    ld bc, $0204                                  ; $6ede: $01 $04 $02
    ld c, $00                                     ; $6ee1: $0e $00
    add d                                         ; $6ee3: $82
    db $f4                                        ; $6ee4: $f4
    inc a                                         ; $6ee5: $3c
    ld [bc], a                                    ; $6ee6: $02
    ld h, b                                       ; $6ee7: $60
    adc d                                         ; $6ee8: $8a
    xor $f7                                       ; $6ee9: $ee $f7
    adc $fb                                       ; $6eeb: $ce $fb
    ld a, l                                       ; $6eed: $7d
    ld a, a                                       ; $6eee: $7f
    ld l, a                                       ; $6eef: $6f
    ld a, a                                       ; $6ef0: $7f
    ld [hl], $37                                  ; $6ef1: $36 $37
    ld [bc], a                                    ; $6ef3: $02
    rlca                                          ; $6ef4: $07
    inc d                                         ; $6ef5: $14
    nop                                           ; $6ef6: $00
    inc b                                         ; $6ef7: $04
    inc b                                         ; $6ef8: $04
    add c                                         ; $6ef9: $81
    ld [bc], a                                    ; $6efa: $02
    inc bc                                        ; $6efb: $03
    ld b, $81                                     ; $6efc: $06 $81
    ld bc, $0703                                  ; $6efe: $01 $03 $07
    ld [de], a                                    ; $6f01: $12
    nop                                           ; $6f02: $00
    rst $38                                       ; $6f03: $ff
    rlca                                          ; $6f04: $07
    ld bc, $07f8                                  ; $6f05: $01 $f8 $07
    ld a, [c]                                     ; $6f08: $f2
    ld bc, $fcec                                  ; $6f09: $01 $ec $fc
    ld [bc], a                                    ; $6f0c: $02
    halt                                          ; $6f0d: $76
    ld [bc], a                                    ; $6f0e: $02
    ld c, a                                       ; $6f0f: $4f
    ld [bc], a                                    ; $6f10: $02
    or h                                          ; $6f11: $b4
    ld [bc], a                                    ; $6f12: $02
    ldh [rSC], a                                  ; $6f13: $e0 $02
    ld h, b                                       ; $6f15: $60
    ld [$8300], sp                                ; $6f16: $08 $00 $83
    jr jr_0de_6f1b                                ; $6f19: $18 $00

jr_0de_6f1b:
    inc b                                         ; $6f1b: $04
    dec bc                                        ; $6f1c: $0b
    nop                                           ; $6f1d: $00
    rst $38                                       ; $6f1e: $ff
    dec c                                         ; $6f1f: $0d
    inc b                                         ; $6f20: $04
    ld a, [$f704]                                 ; $6f21: $fa $04 $f7
    cp $ea                                        ; $6f24: $fe $ea
    ei                                            ; $6f26: $fb
    db $eb                                        ; $6f27: $eb
    db $fd                                        ; $6f28: $fd
    ld a, [$fafb]                                 ; $6f29: $fa $fb $fa
    db $fc                                        ; $6f2c: $fc
    ld [bc], a                                    ; $6f2d: $02
    rra                                           ; $6f2e: $1f
    sbc [hl]                                      ; $6f2f: $9e
    ld h, h                                       ; $6f30: $64
    ld h, b                                       ; $6f31: $60
    ret                                           ; $6f32: $c9


    pop bc                                        ; $6f33: $c1
    and l                                         ; $6f34: $a5
    add l                                         ; $6f35: $85
    adc a                                         ; $6f36: $8f
    adc d                                         ; $6f37: $8a
    rst $18                                       ; $6f38: $df
    sub $7f                                       ; $6f39: $d6 $7f
    ld [hl], b                                    ; $6f3b: $70
    ld a, a                                       ; $6f3c: $7f
    ld d, b                                       ; $6f3d: $50
    ccf                                           ; $6f3e: $3f
    inc sp                                        ; $6f3f: $33
    ccf                                           ; $6f40: $3f
    add hl, sp                                    ; $6f41: $39
    jp nc, $adf2                                  ; $6f42: $d2 $f2 $ad

    db $fd                                        ; $6f45: $fd
    ld l, e                                       ; $6f46: $6b
    ld a, a                                       ; $6f47: $7f
    ld e, l                                       ; $6f48: $5d
    ld a, a                                       ; $6f49: $7f
    ld c, l                                       ; $6f4a: $4d
    ld a, a                                       ; $6f4b: $7f
    ld e, l                                       ; $6f4c: $5d
    ld l, a                                       ; $6f4d: $6f
    ld [bc], a                                    ; $6f4e: $02
    ld [bc], a                                    ; $6f4f: $02
    ld [bc], a                                    ; $6f50: $02
    ld bc, $0206                                  ; $6f51: $01 $06 $02
    add d                                         ; $6f54: $82
    inc bc                                        ; $6f55: $03
    ld bc, $0204                                  ; $6f56: $01 $04 $02
    ld c, $00                                     ; $6f59: $0e $00
    add d                                         ; $6f5b: $82
    or $de                                        ; $6f5c: $f6 $de
    ld [bc], a                                    ; $6f5e: $02
    ld b, b                                       ; $6f5f: $40
    adc b                                         ; $6f60: $88
    ld a, a                                       ; $6f61: $7f
    ld h, l                                       ; $6f62: $65
    db $fd                                        ; $6f63: $fd
    rst $38                                       ; $6f64: $ff
    cp e                                          ; $6f65: $bb
    rst $38                                       ; $6f66: $ff
    ld a, l                                       ; $6f67: $7d
    ld a, a                                       ; $6f68: $7f
    ld [bc], a                                    ; $6f69: $02
    ccf                                           ; $6f6a: $3f
    add c                                         ; $6f6b: $81
    ld sp, $3f03                                  ; $6f6c: $31 $03 $3f
    ld [de], a                                    ; $6f6f: $12
    nop                                           ; $6f70: $00
    inc b                                         ; $6f71: $04
    ld bc, $001a                                  ; $6f72: $01 $1a $00
    rst $38                                       ; $6f75: $ff
    rlca                                          ; $6f76: $07
    ld bc, $07f8                                  ; $6f77: $01 $f8 $07
    ld a, [c]                                     ; $6f7a: $f2
    ld bc, $fceb                                  ; $6f7b: $01 $eb $fc
    ld [bc], a                                    ; $6f7e: $02
    ld [hl], $02                                  ; $6f7f: $36 $02
    ld l, l                                       ; $6f81: $6d
    ld [bc], a                                    ; $6f82: $02
    or h                                          ; $6f83: $b4
    ld [bc], a                                    ; $6f84: $02
    ldh [rSC], a                                  ; $6f85: $e0 $02
    ld b, b                                       ; $6f87: $40
    ld [$8300], sp                                ; $6f88: $08 $00 $83
    jr jr_0de_6f8d                                ; $6f8b: $18 $00

jr_0de_6f8d:
    inc b                                         ; $6f8d: $04
    dec bc                                        ; $6f8e: $0b
    nop                                           ; $6f8f: $00
    rst $38                                       ; $6f90: $ff
    dec c                                         ; $6f91: $0d
    inc b                                         ; $6f92: $04
    ld sp, hl                                     ; $6f93: $f9
    ld [$01f2], sp                                ; $6f94: $08 $f2 $01
    db $ec                                        ; $6f97: $ec
    ei                                            ; $6f98: $fb
    db $ed                                        ; $6f99: $ed
    db $fd                                        ; $6f9a: $fd
    db $fc                                        ; $6f9b: $fc
    ei                                            ; $6f9c: $fb
    db $fc                                        ; $6f9d: $fc
    db $fd                                        ; $6f9e: $fd
    ld [bc], a                                    ; $6f9f: $02
    rra                                           ; $6fa0: $1f
    sbc [hl]                                      ; $6fa1: $9e
    db $e4                                        ; $6fa2: $e4
    ldh [rOBP1], a                                ; $6fa3: $e0 $49
    ld b, c                                       ; $6fa5: $41
    and l                                         ; $6fa6: $a5
    add l                                         ; $6fa7: $85
    adc a                                         ; $6fa8: $8f
    adc d                                         ; $6fa9: $8a
    rst $18                                       ; $6faa: $df
    sub $7f                                       ; $6fab: $d6 $7f
    ld [hl], b                                    ; $6fad: $70
    ld a, a                                       ; $6fae: $7f
    ld d, b                                       ; $6faf: $50
    ccf                                           ; $6fb0: $3f
    inc sp                                        ; $6fb1: $33
    ld a, a                                       ; $6fb2: $7f
    ld a, c                                       ; $6fb3: $79
    sub d                                         ; $6fb4: $92
    ld a, [c]                                     ; $6fb5: $f2
    xor l                                         ; $6fb6: $ad
    db $fd                                        ; $6fb7: $fd
    ld l, e                                       ; $6fb8: $6b
    ld a, a                                       ; $6fb9: $7f
    ld h, l                                       ; $6fba: $65
    ld a, a                                       ; $6fbb: $7f
    ld c, l                                       ; $6fbc: $4d
    ld a, a                                       ; $6fbd: $7f
    ld l, a                                       ; $6fbe: $6f
    ld a, c                                       ; $6fbf: $79
    ld [bc], a                                    ; $6fc0: $02
    ld [bc], a                                    ; $6fc1: $02
    ld [bc], a                                    ; $6fc2: $02
    ld bc, $0206                                  ; $6fc3: $01 $06 $02
    add d                                         ; $6fc6: $82
    inc bc                                        ; $6fc7: $03
    ld bc, $0204                                  ; $6fc8: $01 $04 $02
    ld c, $00                                     ; $6fcb: $0e $00
    add d                                         ; $6fcd: $82
    db $fc                                        ; $6fce: $fc
    db $e4                                        ; $6fcf: $e4
    ld [bc], a                                    ; $6fd0: $02
    ld b, b                                       ; $6fd1: $40
    ld [bc], a                                    ; $6fd2: $02
    rst $38                                       ; $6fd3: $ff
    add l                                         ; $6fd4: $85
    cp d                                          ; $6fd5: $ba
    rst $38                                       ; $6fd6: $ff
    ld b, a                                       ; $6fd7: $47
    ld a, a                                       ; $6fd8: $7f
    cp l                                          ; $6fd9: $bd
    inc bc                                        ; $6fda: $03
    rst $38                                       ; $6fdb: $ff
    ld d, $00                                     ; $6fdc: $16 $00
    ld [bc], a                                    ; $6fde: $02
    ld [bc], a                                    ; $6fdf: $02
    add e                                         ; $6fe0: $83
    ld bc, $0103                                  ; $6fe1: $01 $03 $01
    inc bc                                        ; $6fe4: $03
    inc bc                                        ; $6fe5: $03
    ld [bc], a                                    ; $6fe6: $02
    ld [bc], a                                    ; $6fe7: $02
    inc d                                         ; $6fe8: $14
    nop                                           ; $6fe9: $00
    rst $38                                       ; $6fea: $ff
    rlca                                          ; $6feb: $07
    ld bc, $08f9                                  ; $6fec: $01 $f9 $08
    ld a, [c]                                     ; $6fef: $f2
    ld bc, $fced                                  ; $6ff0: $01 $ed $fc
    ld [bc], a                                    ; $6ff3: $02
    ld [hl], $02                                  ; $6ff4: $36 $02
    ld l, l                                       ; $6ff6: $6d
    ld [bc], a                                    ; $6ff7: $02
    or h                                          ; $6ff8: $b4
    ld [bc], a                                    ; $6ff9: $02
    ldh [rSC], a                                  ; $6ffa: $e0 $02
    ld b, b                                       ; $6ffc: $40
    ld [$8300], sp                                ; $6ffd: $08 $00 $83
    jr jr_0de_7002                                ; $7000: $18 $00

jr_0de_7002:
    inc b                                         ; $7002: $04
    dec bc                                        ; $7003: $0b
    nop                                           ; $7004: $00
    rst $38                                       ; $7005: $ff
    dec c                                         ; $7006: $0d
    inc b                                         ; $7007: $04
    ld sp, hl                                     ; $7008: $f9
    ld [$01f2], sp                                ; $7009: $08 $f2 $01
    db $ec                                        ; $700c: $ec
    ei                                            ; $700d: $fb
    db $ec                                        ; $700e: $ec
    rst $38                                       ; $700f: $ff
    db $fc                                        ; $7010: $fc
    ei                                            ; $7011: $fb
    db $fc                                        ; $7012: $fc
    db $fd                                        ; $7013: $fd
    ld [bc], a                                    ; $7014: $02
    rrca                                          ; $7015: $0f
    sbc [hl]                                      ; $7016: $9e
    ld [hl], d                                    ; $7017: $72
    ld [hl], b                                    ; $7018: $70
    inc h                                         ; $7019: $24
    jr nz, jr_0de_706e                            ; $701a: $20 $52

    ld b, d                                       ; $701c: $42
    ld b, a                                       ; $701d: $47
    ld b, l                                       ; $701e: $45
    ld l, a                                       ; $701f: $6f
    ld l, e                                       ; $7020: $6b
    ccf                                           ; $7021: $3f
    jr c, jr_0de_7063                             ; $7022: $38 $3f

    jr z, jr_0de_7045                             ; $7024: $28 $1f

    add hl, de                                    ; $7026: $19
    ld a, a                                       ; $7027: $7f
    ld a, h                                       ; $7028: $7c
    ld d, e                                       ; $7029: $53
    ld [hl], e                                    ; $702a: $73
    cp l                                          ; $702b: $bd
    db $fd                                        ; $702c: $fd
    ld l, a                                       ; $702d: $6f
    ld a, a                                       ; $702e: $7f
    ld [hl], e                                    ; $702f: $73
    ld a, a                                       ; $7030: $7f
    ld [hl], e                                    ; $7031: $73
    ld a, a                                       ; $7032: $7f
    ld a, e                                       ; $7033: $7b
    ld a, [hl]                                    ; $7034: $7e
    ld [bc], a                                    ; $7035: $02
    ld [$0402], sp                                ; $7036: $08 $02 $04
    ld [bc], a                                    ; $7039: $02
    ld a, [bc]                                    ; $703a: $0a
    inc bc                                        ; $703b: $03
    inc c                                         ; $703c: $0c
    add a                                         ; $703d: $87
    inc b                                         ; $703e: $04
    inc c                                         ; $703f: $0c
    inc b                                         ; $7040: $04
    ld c, $02                                     ; $7041: $0e $02
    inc c                                         ; $7043: $0c
    inc b                                         ; $7044: $04

jr_0de_7045:
    ld [bc], a                                    ; $7045: $02
    inc c                                         ; $7046: $0c
    ld [bc], a                                    ; $7047: $02
    ld [$0006], sp                                ; $7048: $08 $06 $00
    ld [bc], a                                    ; $704b: $02
    ld c, $84                                     ; $704c: $0e $84
    rrca                                          ; $704e: $0f
    add hl, bc                                    ; $704f: $09
    ld c, $02                                     ; $7050: $0e $02
    ld [bc], a                                    ; $7052: $02
    ld a, a                                       ; $7053: $7f
    add a                                         ; $7054: $87
    db $fd                                        ; $7055: $fd
    rst $38                                       ; $7056: $ff
    cp d                                          ; $7057: $ba
    rst $38                                       ; $7058: $ff
    ld b, a                                       ; $7059: $47
    ld a, a                                       ; $705a: $7f
    cp l                                          ; $705b: $bd
    inc bc                                        ; $705c: $03
    rst $38                                       ; $705d: $ff
    inc d                                         ; $705e: $14

Jump_0de_705f:
    nop                                           ; $705f: $00
    ld [bc], a                                    ; $7060: $02
    inc bc                                        ; $7061: $03
    ld [bc], a                                    ; $7062: $02

jr_0de_7063:
    ld [bc], a                                    ; $7063: $02
    add e                                         ; $7064: $83
    ld bc, $0103                                  ; $7065: $01 $03 $01
    inc bc                                        ; $7068: $03
    inc bc                                        ; $7069: $03
    ld [bc], a                                    ; $706a: $02
    ld [bc], a                                    ; $706b: $02
    inc d                                         ; $706c: $14
    nop                                           ; $706d: $00

jr_0de_706e:
    rst $38                                       ; $706e: $ff
    rlca                                          ; $706f: $07
    ld bc, $08f9                                  ; $7070: $01 $f9 $08
    ld a, [c]                                     ; $7073: $f2
    ld bc, $fded                                  ; $7074: $01 $ed $fd
    ld [bc], a                                    ; $7077: $02
    ld [hl], $02                                  ; $7078: $36 $02
    ld l, l                                       ; $707a: $6d
    ld [bc], a                                    ; $707b: $02
    or h                                          ; $707c: $b4
    ld [bc], a                                    ; $707d: $02
    ldh [rSC], a                                  ; $707e: $e0 $02
    ld b, b                                       ; $7080: $40
    ld [$8300], sp                                ; $7081: $08 $00 $83
    jr nc, jr_0de_7086                            ; $7084: $30 $00

jr_0de_7086:
    ld [$000b], sp                                ; $7086: $08 $0b $00
    rst $38                                       ; $7089: $ff
    dec c                                         ; $708a: $0d
    inc b                                         ; $708b: $04
    ld sp, hl                                     ; $708c: $f9
    ld [$01f2], sp                                ; $708d: $08 $f2 $01
    db $ec                                        ; $7090: $ec
    ei                                            ; $7091: $fb
    db $ec                                        ; $7092: $ec
    cp $fc                                        ; $7093: $fe $fc
    ei                                            ; $7095: $fb
    db $fc                                        ; $7096: $fc
    db $fd                                        ; $7097: $fd
    ld [bc], a                                    ; $7098: $02
    rrca                                          ; $7099: $0f
    sbc [hl]                                      ; $709a: $9e
    ld [hl], d                                    ; $709b: $72
    ld [hl], b                                    ; $709c: $70
    inc h                                         ; $709d: $24
    jr nz, jr_0de_70f2                            ; $709e: $20 $52

    ld b, d                                       ; $70a0: $42
    ld b, a                                       ; $70a1: $47
    ld b, l                                       ; $70a2: $45
    ld l, a                                       ; $70a3: $6f
    ld l, e                                       ; $70a4: $6b
    ccf                                           ; $70a5: $3f
    jr c, jr_0de_70e7                             ; $70a6: $38 $3f

    jr z, jr_0de_70c9                             ; $70a8: $28 $1f

    add hl, de                                    ; $70aa: $19
    ld a, a                                       ; $70ab: $7f
    ld a, h                                       ; $70ac: $7c
    ld d, e                                       ; $70ad: $53
    ld [hl], e                                    ; $70ae: $73
    xor l                                         ; $70af: $ad
    db $fd                                        ; $70b0: $fd
    ld a, e                                       ; $70b1: $7b
    ld a, a                                       ; $70b2: $7f
    ld h, a                                       ; $70b3: $67
    ld a, [hl]                                    ; $70b4: $7e
    ld b, a                                       ; $70b5: $47
    ld a, h                                       ; $70b6: $7c
    ld l, a                                       ; $70b7: $6f
    ld a, a                                       ; $70b8: $7f
    ld [bc], a                                    ; $70b9: $02
    inc b                                         ; $70ba: $04
    ld [bc], a                                    ; $70bb: $02
    ld [bc], a                                    ; $70bc: $02
    ld [bc], a                                    ; $70bd: $02
    dec b                                         ; $70be: $05
    inc bc                                        ; $70bf: $03
    ld b, $87                                     ; $70c0: $06 $87
    ld [bc], a                                    ; $70c2: $02
    ld b, $02                                     ; $70c3: $06 $02
    rlca                                          ; $70c5: $07
    ld bc, $0206                                  ; $70c6: $01 $06 $02

jr_0de_70c9:
    ld [bc], a                                    ; $70c9: $02
    ld b, $02                                     ; $70ca: $06 $02
    inc b                                         ; $70cc: $04
    inc b                                         ; $70cd: $04
    nop                                           ; $70ce: $00
    ld [bc], a                                    ; $70cf: $02
    inc b                                         ; $70d0: $04
    add h                                         ; $70d1: $84
    ld b, $02                                     ; $70d2: $06 $02
    ld b, $02                                     ; $70d4: $06 $02
    ld [bc], a                                    ; $70d6: $02
    inc b                                         ; $70d7: $04
    adc c                                         ; $70d8: $89
    ld a, l                                       ; $70d9: $7d
    ld a, a                                       ; $70da: $7f
    db $fd                                        ; $70db: $fd
    rst $38                                       ; $70dc: $ff
    cp d                                          ; $70dd: $ba
    rst $38                                       ; $70de: $ff
    ld b, a                                       ; $70df: $47
    ld a, a                                       ; $70e0: $7f
    cp l                                          ; $70e1: $bd
    inc bc                                        ; $70e2: $03
    rst $38                                       ; $70e3: $ff
    ld d, $00                                     ; $70e4: $16 $00
    ld [bc], a                                    ; $70e6: $02

jr_0de_70e7:
    ld [bc], a                                    ; $70e7: $02
    add e                                         ; $70e8: $83
    ld bc, $0103                                  ; $70e9: $01 $03 $01
    inc bc                                        ; $70ec: $03
    inc bc                                        ; $70ed: $03
    ld [bc], a                                    ; $70ee: $02
    ld [bc], a                                    ; $70ef: $02
    inc d                                         ; $70f0: $14
    nop                                           ; $70f1: $00

jr_0de_70f2:
    rst $38                                       ; $70f2: $ff
    rlca                                          ; $70f3: $07
    ld bc, $08f9                                  ; $70f4: $01 $f9 $08
    ld a, [c]                                     ; $70f7: $f2
    ld bc, $fded                                  ; $70f8: $01 $ed $fd
    ld [bc], a                                    ; $70fb: $02

Call_0de_70fc:
    ld [hl], $02                                  ; $70fc: $36 $02
    ld l, l                                       ; $70fe: $6d
    ld [bc], a                                    ; $70ff: $02
    or h                                          ; $7100: $b4
    ld [bc], a                                    ; $7101: $02
    ldh [rSC], a                                  ; $7102: $e0 $02
    ld b, b                                       ; $7104: $40
    ld [$8300], sp                                ; $7105: $08 $00 $83
    jr nc, jr_0de_710a                            ; $7108: $30 $00

jr_0de_710a:
    ld [$000b], sp                                ; $710a: $08 $0b $00
    rst $38                                       ; $710d: $ff
    dec c                                         ; $710e: $0d
    inc b                                         ; $710f: $04
    ld sp, hl                                     ; $7110: $f9
    ld [$01f2], sp                                ; $7111: $08 $f2 $01
    db $ec                                        ; $7114: $ec
    ei                                            ; $7115: $fb
    db $ed                                        ; $7116: $ed
    db $fd                                        ; $7117: $fd
    db $fc                                        ; $7118: $fc
    ei                                            ; $7119: $fb
    db $fc                                        ; $711a: $fc
    db $fd                                        ; $711b: $fd
    ld [bc], a                                    ; $711c: $02
    rra                                           ; $711d: $1f
    sbc [hl]                                      ; $711e: $9e
    db $e4                                        ; $711f: $e4
    ldh [rOBP1], a                                ; $7120: $e0 $49
    ld b, c                                       ; $7122: $41
    and l                                         ; $7123: $a5
    add l                                         ; $7124: $85
    adc a                                         ; $7125: $8f
    adc d                                         ; $7126: $8a
    rst $18                                       ; $7127: $df
    sub $7f                                       ; $7128: $d6 $7f
    ld [hl], b                                    ; $712a: $70
    ld a, a                                       ; $712b: $7f
    ld d, b                                       ; $712c: $50
    ccf                                           ; $712d: $3f
    inc sp                                        ; $712e: $33
    ld a, a                                       ; $712f: $7f
    ld a, c                                       ; $7130: $79
    sub [hl]                                      ; $7131: $96
    or $af                                        ; $7132: $f6 $af
    ld sp, hl                                     ; $7134: $f9
    ld c, a                                       ; $7135: $4f
    ld [hl], e                                    ; $7136: $73
    adc l                                         ; $7137: $8d
    rst $38                                       ; $7138: $ff
    ld e, l                                       ; $7139: $5d
    ld a, a                                       ; $713a: $7f
    ld a, l                                       ; $713b: $7d
    ld a, a                                       ; $713c: $7f
    ld [bc], a                                    ; $713d: $02
    ld [bc], a                                    ; $713e: $02
    ld [bc], a                                    ; $713f: $02
    ld bc, $0206                                  ; $7140: $01 $06 $02
    add d                                         ; $7143: $82
    inc bc                                        ; $7144: $03
    ld bc, $0204                                  ; $7145: $01 $04 $02
    ld [$0200], sp                                ; $7148: $08 $00 $02
    ld [bc], a                                    ; $714b: $02
    add [hl]                                      ; $714c: $86
    inc bc                                        ; $714d: $03
    ld bc, $0103                                  ; $714e: $01 $03 $01
    or $fe                                        ; $7151: $f6 $fe
    ld [bc], a                                    ; $7153: $02
    ld b, b                                       ; $7154: $40
    add a                                         ; $7155: $87
    db $fd                                        ; $7156: $fd
    rst $38                                       ; $7157: $ff
    cp d                                          ; $7158: $ba
    rst $38                                       ; $7159: $ff
    ld b, a                                       ; $715a: $47
    ld a, a                                       ; $715b: $7f
    cp l                                          ; $715c: $bd
    inc bc                                        ; $715d: $03
    rst $38                                       ; $715e: $ff
    ld d, $00                                     ; $715f: $16 $00
    ld [bc], a                                    ; $7161: $02
    ld [bc], a                                    ; $7162: $02
    add e                                         ; $7163: $83
    ld bc, $0103                                  ; $7164: $01 $03 $01
    inc bc                                        ; $7167: $03
    inc bc                                        ; $7168: $03
    ld [bc], a                                    ; $7169: $02
    ld [bc], a                                    ; $716a: $02
    inc d                                         ; $716b: $14
    nop                                           ; $716c: $00
    rst $38                                       ; $716d: $ff
    rlca                                          ; $716e: $07
    ld bc, $08f9                                  ; $716f: $01 $f9 $08
    ld a, [c]                                     ; $7172: $f2
    ld bc, $fced                                  ; $7173: $01 $ed $fc
    ld [bc], a                                    ; $7176: $02
    ld [hl], $02                                  ; $7177: $36 $02
    ld l, l                                       ; $7179: $6d
    ld [bc], a                                    ; $717a: $02
    or h                                          ; $717b: $b4
    ld [bc], a                                    ; $717c: $02
    ldh [rSC], a                                  ; $717d: $e0 $02
    ld b, b                                       ; $717f: $40
    ld [$8100], sp                                ; $7180: $08 $00 $81
    db $10                                        ; $7183: $10
    dec c                                         ; $7184: $0d
    nop                                           ; $7185: $00
    rst $38                                       ; $7186: $ff
    dec c                                         ; $7187: $0d
    inc b                                         ; $7188: $04
    ld sp, hl                                     ; $7189: $f9
    ld [$01f2], sp                                ; $718a: $08 $f2 $01
    db $ec                                        ; $718d: $ec
    ei                                            ; $718e: $fb
    db $ec                                        ; $718f: $ec
    rst $38                                       ; $7190: $ff
    db $fc                                        ; $7191: $fc
    ei                                            ; $7192: $fb
    db $fc                                        ; $7193: $fc
    db $fd                                        ; $7194: $fd
    ld [bc], a                                    ; $7195: $02
    rrca                                          ; $7196: $0f
    sbc [hl]                                      ; $7197: $9e
    ld [hl], d                                    ; $7198: $72
    ld [hl], b                                    ; $7199: $70
    inc h                                         ; $719a: $24
    jr nz, jr_0de_71ef                            ; $719b: $20 $52

    ld b, d                                       ; $719d: $42
    ld b, a                                       ; $719e: $47
    ld b, l                                       ; $719f: $45
    ld l, a                                       ; $71a0: $6f
    ld l, e                                       ; $71a1: $6b
    ccf                                           ; $71a2: $3f
    jr c, jr_0de_71e4                             ; $71a3: $38 $3f

    jr z, jr_0de_71c6                             ; $71a5: $28 $1f

    add hl, de                                    ; $71a7: $19
    ld a, a                                       ; $71a8: $7f
    ld a, h                                       ; $71a9: $7c
    ld e, a                                       ; $71aa: $5f
    ld [hl], e                                    ; $71ab: $73
    cp l                                          ; $71ac: $bd
    db $ed                                        ; $71ad: $ed
    ld a, e                                       ; $71ae: $7b
    ld h, a                                       ; $71af: $67
    ld c, l                                       ; $71b0: $4d
    ld a, a                                       ; $71b1: $7f
    adc l                                         ; $71b2: $8d
    rst $38                                       ; $71b3: $ff
    ld e, l                                       ; $71b4: $5d
    ld a, a                                       ; $71b5: $7f
    ld [bc], a                                    ; $71b6: $02
    ld [$0402], sp                                ; $71b7: $08 $02 $04
    ld [bc], a                                    ; $71ba: $02
    ld a, [bc]                                    ; $71bb: $0a
    inc bc                                        ; $71bc: $03
    inc c                                         ; $71bd: $0c
    add a                                         ; $71be: $87
    inc b                                         ; $71bf: $04
    inc c                                         ; $71c0: $0c
    inc b                                         ; $71c1: $04
    ld c, $02                                     ; $71c2: $0e $02
    inc c                                         ; $71c4: $0c
    inc b                                         ; $71c5: $04

jr_0de_71c6:
    ld [bc], a                                    ; $71c6: $02
    inc c                                         ; $71c7: $0c
    ld [bc], a                                    ; $71c8: $02
    ld [$0004], sp                                ; $71c9: $08 $04 $00
    ld [bc], a                                    ; $71cc: $02
    ld c, $84                                     ; $71cd: $0e $84
    rrca                                          ; $71cf: $0f
    add hl, bc                                    ; $71d0: $09
    ld c, $02                                     ; $71d1: $0e $02
    ld [bc], a                                    ; $71d3: $02
    inc c                                         ; $71d4: $0c
    adc c                                         ; $71d5: $89
    ld a, l                                       ; $71d6: $7d
    ld a, a                                       ; $71d7: $7f
    db $fd                                        ; $71d8: $fd
    rst $38                                       ; $71d9: $ff
    cp d                                          ; $71da: $ba
    rst $38                                       ; $71db: $ff
    ld b, a                                       ; $71dc: $47
    ld a, a                                       ; $71dd: $7f
    cp l                                          ; $71de: $bd
    inc bc                                        ; $71df: $03
    rst $38                                       ; $71e0: $ff
    ld d, $00                                     ; $71e1: $16 $00
    ld [bc], a                                    ; $71e3: $02

jr_0de_71e4:
    ld [bc], a                                    ; $71e4: $02
    add e                                         ; $71e5: $83
    ld bc, $0103                                  ; $71e6: $01 $03 $01
    inc bc                                        ; $71e9: $03
    inc bc                                        ; $71ea: $03
    ld [bc], a                                    ; $71eb: $02
    ld [bc], a                                    ; $71ec: $02
    inc d                                         ; $71ed: $14
    nop                                           ; $71ee: $00

jr_0de_71ef:
    rst $38                                       ; $71ef: $ff
    rlca                                          ; $71f0: $07
    ld bc, $08f9                                  ; $71f1: $01 $f9 $08
    ld a, [c]                                     ; $71f4: $f2
    ld bc, $fded                                  ; $71f5: $01 $ed $fd
    ld [bc], a                                    ; $71f8: $02
    ld [hl], $02                                  ; $71f9: $36 $02
    ld l, l                                       ; $71fb: $6d
    ld [bc], a                                    ; $71fc: $02
    or h                                          ; $71fd: $b4
    ld [bc], a                                    ; $71fe: $02
    ldh [rSC], a                                  ; $71ff: $e0 $02
    ld b, b                                       ; $7201: $40
    ld a, [bc]                                    ; $7202: $0a
    nop                                           ; $7203: $00
    add c                                         ; $7204: $81
    ld [$000b], sp                                ; $7205: $08 $0b $00
    rst $38                                       ; $7208: $ff
    dec c                                         ; $7209: $0d
    inc b                                         ; $720a: $04
    ld sp, hl                                     ; $720b: $f9
    ld [$01f2], sp                                ; $720c: $08 $f2 $01
    db $ec                                        ; $720f: $ec
    ei                                            ; $7210: $fb
    db $ec                                        ; $7211: $ec
    cp $fc                                        ; $7212: $fe $fc
    ei                                            ; $7214: $fb
    db $fc                                        ; $7215: $fc
    db $fd                                        ; $7216: $fd
    ld [bc], a                                    ; $7217: $02
    rrca                                          ; $7218: $0f
    sbc [hl]                                      ; $7219: $9e
    ld [hl], d                                    ; $721a: $72
    ld [hl], b                                    ; $721b: $70
    inc h                                         ; $721c: $24
    jr nz, jr_0de_7271                            ; $721d: $20 $52

    ld b, d                                       ; $721f: $42
    ld b, a                                       ; $7220: $47
    ld b, l                                       ; $7221: $45
    ld l, a                                       ; $7222: $6f
    ld l, e                                       ; $7223: $6b
    ccf                                           ; $7224: $3f
    jr c, jr_0de_7266                             ; $7225: $38 $3f

    jr z, jr_0de_7248                             ; $7227: $28 $1f

    add hl, de                                    ; $7229: $19
    ld a, a                                       ; $722a: $7f
    ld a, h                                       ; $722b: $7c
    ld d, e                                       ; $722c: $53
    ld [hl], e                                    ; $722d: $73
    xor l                                         ; $722e: $ad
    db $fd                                        ; $722f: $fd
    ld l, e                                       ; $7230: $6b
    ld a, a                                       ; $7231: $7f
    ld b, a                                       ; $7232: $47
    ld a, [hl]                                    ; $7233: $7e
    adc a                                         ; $7234: $8f
    db $fc                                        ; $7235: $fc
    ld l, a                                       ; $7236: $6f
    ld a, a                                       ; $7237: $7f
    ld [bc], a                                    ; $7238: $02
    inc b                                         ; $7239: $04
    ld [bc], a                                    ; $723a: $02
    ld [bc], a                                    ; $723b: $02
    ld [bc], a                                    ; $723c: $02
    dec b                                         ; $723d: $05
    inc bc                                        ; $723e: $03
    ld b, $87                                     ; $723f: $06 $87
    ld [bc], a                                    ; $7241: $02
    ld b, $02                                     ; $7242: $06 $02
    rlca                                          ; $7244: $07
    ld bc, $0206                                  ; $7245: $01 $06 $02

jr_0de_7248:
    ld [bc], a                                    ; $7248: $02
    ld b, $04                                     ; $7249: $06 $04
    inc b                                         ; $724b: $04
    add d                                         ; $724c: $82
    ld b, $02                                     ; $724d: $06 $02
    inc bc                                        ; $724f: $03
    ld b, $83                                     ; $7250: $06 $83
    ld [bc], a                                    ; $7252: $02
    ld b, $02                                     ; $7253: $06 $02
    ld [bc], a                                    ; $7255: $02
    inc b                                         ; $7256: $04
    adc c                                         ; $7257: $89
    ld a, l                                       ; $7258: $7d
    ld a, a                                       ; $7259: $7f
    db $fd                                        ; $725a: $fd
    rst $38                                       ; $725b: $ff
    cp d                                          ; $725c: $ba
    rst $38                                       ; $725d: $ff
    ld b, a                                       ; $725e: $47
    ld a, a                                       ; $725f: $7f
    cp l                                          ; $7260: $bd
    inc bc                                        ; $7261: $03
    rst $38                                       ; $7262: $ff
    inc d                                         ; $7263: $14
    nop                                           ; $7264: $00
    inc b                                         ; $7265: $04

jr_0de_7266:
    ld [bc], a                                    ; $7266: $02
    add e                                         ; $7267: $83
    ld bc, $0103                                  ; $7268: $01 $03 $01
    inc bc                                        ; $726b: $03
    inc bc                                        ; $726c: $03
    ld [bc], a                                    ; $726d: $02
    ld [bc], a                                    ; $726e: $02
    inc d                                         ; $726f: $14
    nop                                           ; $7270: $00

jr_0de_7271:
    rst $38                                       ; $7271: $ff
    rlca                                          ; $7272: $07
    ld bc, $08f9                                  ; $7273: $01 $f9 $08
    ld a, [c]                                     ; $7276: $f2
    ld bc, $fded                                  ; $7277: $01 $ed $fd
    ld [bc], a                                    ; $727a: $02
    ld [hl], $02                                  ; $727b: $36 $02
    ld l, l                                       ; $727d: $6d
    ld [bc], a                                    ; $727e: $02
    or h                                          ; $727f: $b4
    ld [bc], a                                    ; $7280: $02
    ldh [rSC], a                                  ; $7281: $e0 $02
    ld b, b                                       ; $7283: $40
    ld [$8300], sp                                ; $7284: $08 $00 $83
    jr nc, jr_0de_7289                            ; $7287: $30 $00

jr_0de_7289:
    ld [$000b], sp                                ; $7289: $08 $0b $00
    rst $38                                       ; $728c: $ff
    dec c                                         ; $728d: $0d
    inc b                                         ; $728e: $04
    ld sp, hl                                     ; $728f: $f9
    ld [$01f2], sp                                ; $7290: $08 $f2 $01
    db $ec                                        ; $7293: $ec
    ei                                            ; $7294: $fb
    db $ed                                        ; $7295: $ed
    db $fd                                        ; $7296: $fd
    db $fc                                        ; $7297: $fc
    ei                                            ; $7298: $fb
    db $fc                                        ; $7299: $fc
    db $fd                                        ; $729a: $fd
    ld [bc], a                                    ; $729b: $02
    rra                                           ; $729c: $1f
    sbc [hl]                                      ; $729d: $9e
    db $e4                                        ; $729e: $e4
    ldh [rOBP1], a                                ; $729f: $e0 $49
    ld b, c                                       ; $72a1: $41
    and l                                         ; $72a2: $a5
    add l                                         ; $72a3: $85
    adc a                                         ; $72a4: $8f
    adc d                                         ; $72a5: $8a
    rst $18                                       ; $72a6: $df
    sub $7f                                       ; $72a7: $d6 $7f
    ld [hl], b                                    ; $72a9: $70
    ld a, a                                       ; $72aa: $7f
    ld d, b                                       ; $72ab: $50
    ccf                                           ; $72ac: $3f
    inc sp                                        ; $72ad: $33
    ld a, a                                       ; $72ae: $7f
    ld a, c                                       ; $72af: $79
    sub e                                         ; $72b0: $93
    di                                            ; $72b1: $f3
    xor l                                         ; $72b2: $ad
    db $fd                                        ; $72b3: $fd
    ld l, e                                       ; $72b4: $6b
    ld a, a                                       ; $72b5: $7f
    ld h, l                                       ; $72b6: $65
    ld a, a                                       ; $72b7: $7f
    ld h, e                                       ; $72b8: $63
    ld a, a                                       ; $72b9: $7f
    ld [hl], a                                    ; $72ba: $77
    ld a, h                                       ; $72bb: $7c
    ld [bc], a                                    ; $72bc: $02
    ld [bc], a                                    ; $72bd: $02
    ld [bc], a                                    ; $72be: $02
    ld bc, $0206                                  ; $72bf: $01 $06 $02
    add d                                         ; $72c2: $82
    inc bc                                        ; $72c3: $03
    ld bc, $0204                                  ; $72c4: $01 $04 $02
    ld a, [bc]                                    ; $72c7: $0a
    nop                                           ; $72c8: $00
    ld [bc], a                                    ; $72c9: $02
    ld [bc], a                                    ; $72ca: $02
    add h                                         ; $72cb: $84
    inc bc                                        ; $72cc: $03
    ld bc, $f9ff                                  ; $72cd: $01 $ff $f9
    ld [bc], a                                    ; $72d0: $02
    ld b, b                                       ; $72d1: $40
    ld [bc], a                                    ; $72d2: $02
    rst $38                                       ; $72d3: $ff
    add l                                         ; $72d4: $85
    cp d                                          ; $72d5: $ba
    rst $38                                       ; $72d6: $ff

jr_0de_72d7:
    ld b, a                                       ; $72d7: $47
    ld a, a                                       ; $72d8: $7f
    cp l                                          ; $72d9: $bd
    inc bc                                        ; $72da: $03
    rst $38                                       ; $72db: $ff
    ld d, $00                                     ; $72dc: $16 $00
    ld [bc], a                                    ; $72de: $02
    ld [bc], a                                    ; $72df: $02
    add e                                         ; $72e0: $83
    ld bc, $0103                                  ; $72e1: $01 $03 $01
    inc bc                                        ; $72e4: $03
    inc bc                                        ; $72e5: $03
    ld [bc], a                                    ; $72e6: $02
    ld [bc], a                                    ; $72e7: $02
    inc d                                         ; $72e8: $14
    nop                                           ; $72e9: $00
    rst $38                                       ; $72ea: $ff
    rlca                                          ; $72eb: $07
    ld bc, $08f9                                  ; $72ec: $01 $f9 $08
    ld a, [c]                                     ; $72ef: $f2
    ld bc, $fced                                  ; $72f0: $01 $ed $fc
    ld [bc], a                                    ; $72f3: $02
    ld [hl], $02                                  ; $72f4: $36 $02
    ld l, l                                       ; $72f6: $6d
    ld [bc], a                                    ; $72f7: $02
    or h                                          ; $72f8: $b4
    ld [bc], a                                    ; $72f9: $02
    ldh [rSC], a                                  ; $72fa: $e0 $02
    ld b, b                                       ; $72fc: $40
    ld [$8300], sp                                ; $72fd: $08 $00 $83
    jr jr_0de_7302                                ; $7300: $18 $00

jr_0de_7302:
    inc b                                         ; $7302: $04
    dec bc                                        ; $7303: $0b
    nop                                           ; $7304: $00
    rst $38                                       ; $7305: $ff
    dec c                                         ; $7306: $0d
    inc b                                         ; $7307: $04
    db $eb                                        ; $7308: $eb
    ld [bc], a                                    ; $7309: $02
    ld a, [$ea01]                                 ; $730a: $fa $01 $ea
    ei                                            ; $730d: $fb
    ld [$fa00], a                                 ; $730e: $ea $00 $fa
    ld a, [$fdfa]                                 ; $7311: $fa $fa $fd
    ld [bc], a                                    ; $7314: $02
    rlca                                          ; $7315: $07
    add [hl]                                      ; $7316: $86
    add hl, sp                                    ; $7317: $39
    jr c, jr_0de_732e                             ; $7318: $38 $14

    db $10                                        ; $731a: $10
    ld a, [hl+]                                   ; $731b: $2a
    ld [hl+], a                                   ; $731c: $22
    ld [bc], a                                    ; $731d: $02
    inc hl                                        ; $731e: $23
    ld [bc], a                                    ; $731f: $02
    dec h                                         ; $7320: $25
    sub d                                         ; $7321: $92
    rra                                           ; $7322: $1f
    inc e                                         ; $7323: $1c
    rra                                           ; $7324: $1f
    inc d                                         ; $7325: $14
    cpl                                           ; $7326: $2f
    inc a                                         ; $7327: $3c
    rra                                           ; $7328: $1f
    ld e, $2d                                     ; $7329: $1e $2d
    dec a                                         ; $732b: $3d
    ld e, [hl]                                    ; $732c: $5e
    ld a, [hl]                                    ; $732d: $7e

jr_0de_732e:
    xor a                                         ; $732e: $af
    db $f4                                        ; $732f: $f4
    cp e                                          ; $7330: $bb
    adc $7b                                       ; $7331: $ce $7b
    ld c, a                                       ; $7333: $4f
    ld [bc], a                                    ; $7334: $02
    rst $38                                       ; $7335: $ff
    ld [bc], a                                    ; $7336: $02
    jr jr_0de_733b                                ; $7337: $18 $02

    inc b                                         ; $7339: $04
    ld [bc], a                                    ; $733a: $02

jr_0de_733b:
    ld [de], a                                    ; $733b: $12
    ld [bc], a                                    ; $733c: $02
    ld e, $82                                     ; $733d: $1e $82
    inc e                                         ; $733f: $1c
    inc b                                         ; $7340: $04
    ld [bc], a                                    ; $7341: $02
    inc d                                         ; $7342: $14
    add h                                         ; $7343: $84
    ld e, $02                                     ; $7344: $1e $02
    inc e                                         ; $7346: $1c
    inc c                                         ; $7347: $0c
    ld [bc], a                                    ; $7348: $02
    jr jr_0de_72d7                                ; $7349: $18 $8c

    inc e                                         ; $734b: $1c
    inc c                                         ; $734c: $0c
    ld a, [bc]                                    ; $734d: $0a
    ld c, $1a                                     ; $734e: $0e $1a
    ld e, $1d                                     ; $7350: $1e $1d
    rra                                           ; $7352: $1f
    dec e                                         ; $7353: $1d
    rla                                           ; $7354: $17
    add hl, de                                    ; $7355: $19
    rra                                           ; $7356: $1f
    ld [bc], a                                    ; $7357: $02
    ld e, $88                                     ; $7358: $1e $88
    ld a, e                                       ; $735a: $7b
    ld a, a                                       ; $735b: $7f
    db $ed                                        ; $735c: $ed
    rst $38                                       ; $735d: $ff
    ld a, [hl]                                    ; $735e: $7e
    ld a, a                                       ; $735f: $7f
    sub l                                         ; $7360: $95
    rst $30                                       ; $7361: $f7
    ld [bc], a                                    ; $7362: $02
    ld l, a                                       ; $7363: $6f
    add d                                         ; $7364: $82
    ld de, $021f                                  ; $7365: $11 $1f $02
    ld e, $12                                     ; $7368: $1e $12
    nop                                           ; $736a: $00
    ld [bc], a                                    ; $736b: $02

jr_0de_736c:
    rlca                                          ; $736c: $07
    ld [bc], a                                    ; $736d: $02
    ld b, $82                                     ; $736e: $06 $82
    ld [bc], a                                    ; $7370: $02
    ld b, $02                                     ; $7371: $06 $02
    inc b                                         ; $7373: $04
    jr jr_0de_7376                                ; $7374: $18 $00

jr_0de_7376:
    rst $38                                       ; $7376: $ff
    rlca                                          ; $7377: $07
    ld bc, $02eb                                  ; $7378: $01 $eb $02
    ld a, [$eb01]                                 ; $737b: $fa $01 $eb

jr_0de_737e:
    cp $02                                        ; $737e: $fe $02
    ld [hl], $02                                  ; $7380: $36 $02
    ld e, e                                       ; $7382: $5b
    ld [bc], a                                    ; $7383: $02
    xor b                                         ; $7384: $a8
    ld [bc], a                                    ; $7385: $02
    ldh [rSC], a                                  ; $7386: $e0 $02
    jp nc, RST_08                                 ; $7388: $d2 $08 $00

    add e                                         ; $738b: $83
    inc d                                         ; $738c: $14
    nop                                           ; $738d: $00
    ld [$000b], sp                                ; $738e: $08 $0b $00
    rst $38                                       ; $7391: $ff
    dec c                                         ; $7392: $0d
    inc b                                         ; $7393: $04
    db $eb                                        ; $7394: $eb
    ld [bc], a                                    ; $7395: $02
    ld a, [$e901]                                 ; $7396: $fa $01 $e9
    db $fc                                        ; $7399: $fc
    add sp, $01                                   ; $739a: $e8 $01
    ld hl, sp-$07                                 ; $739c: $f8 $f9
    ld hl, sp-$01                                 ; $739e: $f8 $ff
    ld [bc], a                                    ; $73a0: $02
    dec b                                         ; $73a1: $05
    ld [bc], a                                    ; $73a2: $02
    ld b, $83                                     ; $73a3: $06 $83
    dec b                                         ; $73a5: $05
    inc b                                         ; $73a6: $04
    ld a, [bc]                                    ; $73a7: $0a
    inc bc                                        ; $73a8: $03
    ld [$0902], sp                                ; $73a9: $08 $02 $09
    inc bc                                        ; $73ac: $03
    rlca                                          ; $73ad: $07
    sub c                                         ; $73ae: $91
    dec b                                         ; $73af: $05
    rra                                           ; $73b0: $1f
    ld e, $2d                                     ; $73b1: $1e $2d
    dec a                                         ; $73b3: $3d
    ld e, h                                       ; $73b4: $5c
    ld a, h                                       ; $73b5: $7c
    ld e, a                                       ; $73b6: $5f
    ld a, [hl]                                    ; $73b7: $7e
    sbc l                                         ; $73b8: $9d
    or $bb                                        ; $73b9: $f6 $bb
    rst $28                                       ; $73bb: $ef
    ei                                            ; $73bc: $fb
    rst $08                                       ; $73bd: $cf
    rst $30                                       ; $73be: $f7
    rst $38                                       ; $73bf: $ff
    ld [bc], a                                    ; $73c0: $02
    inc d                                         ; $73c1: $14
    ld [bc], a                                    ; $73c2: $02
    ld a, [bc]                                    ; $73c3: $0a
    ld [bc], a                                    ; $73c4: $02
    ld bc, $0902                                  ; $73c5: $01 $02 $09
    ld [bc], a                                    ; $73c8: $02
    rra                                           ; $73c9: $1f
    add d                                         ; $73ca: $82
    ld e, $12                                     ; $73cb: $1e $12
    ld [bc], a                                    ; $73cd: $02
    ld [bc], a                                    ; $73ce: $02
    adc c                                         ; $73cf: $89
    rra                                           ; $73d0: $1f
    ld bc, $0616                                  ; $73d1: $01 $16 $06
    inc d                                         ; $73d4: $14
    inc b                                         ; $73d5: $04
    ld e, $02                                     ; $73d6: $1e $02
    inc d                                         ; $73d8: $14
    ld [bc], a                                    ; $73d9: $02
    inc e                                         ; $73da: $1c
    add a                                         ; $73db: $87
    inc c                                         ; $73dc: $0c
    ld a, [de]                                    ; $73dd: $1a
    ld c, $1a                                     ; $73de: $0e $1a
    ld e, $14                                     ; $73e0: $1e $14
    inc e                                         ; $73e2: $1c
    ld [bc], a                                    ; $73e3: $02
    jr nz, jr_0de_736c                            ; $73e4: $20 $86

    daa                                           ; $73e6: $27
    ccf                                           ; $73e7: $3f
    ld a, [hl]                                    ; $73e8: $7e
    ld a, a                                       ; $73e9: $7f
    sbc [hl]                                      ; $73ea: $9e
    rst $38                                       ; $73eb: $ff
    ld [bc], a                                    ; $73ec: $02
    ld [hl], c                                    ; $73ed: $71
    ld [bc], a                                    ; $73ee: $02
    ld bc, $0281                                  ; $73ef: $01 $81 $02
    inc bc                                        ; $73f2: $03
    inc bc                                        ; $73f3: $03
    stop                                          ; $73f4: $10 $00
    ld [bc], a                                    ; $73f6: $02
    rlca                                          ; $73f7: $07
    inc b                                         ; $73f8: $04
    inc a                                         ; $73f9: $3c
    ld [bc], a                                    ; $73fa: $02
    jr c, jr_0de_737e                             ; $73fb: $38 $81

    ld [$3803], sp                                ; $73fd: $08 $03 $38
    add d                                         ; $7400: $82
    db $10                                        ; $7401: $10
    jr nc, jr_0de_7406                            ; $7402: $30 $02

    jr nz, jr_0de_7416                            ; $7404: $20 $10

jr_0de_7406:
    nop                                           ; $7406: $00
    rst $38                                       ; $7407: $ff
    rlca                                          ; $7408: $07
    ld bc, $02eb                                  ; $7409: $01 $eb $02
    ld a, [$e901]                                 ; $740c: $fa $01 $e9
    nop                                           ; $740f: $00
    ld [bc], a                                    ; $7410: $02
    ld a, [bc]                                    ; $7411: $0a
    ld [bc], a                                    ; $7412: $02
    rra                                           ; $7413: $1f
    ld [bc], a                                    ; $7414: $02
    dec hl                                        ; $7415: $2b

jr_0de_7416:
    ld [bc], a                                    ; $7416: $02
    ld d, b                                       ; $7417: $50
    ld [bc], a                                    ; $7418: $02
    ld [hl], b                                    ; $7419: $70
    add d                                         ; $741a: $82
    ld h, b                                       ; $741b: $60
    ld l, [hl]                                    ; $741c: $6e
    inc bc                                        ; $741d: $03
    nop                                           ; $741e: $00
    add [hl]                                      ; $741f: $86
    inc b                                         ; $7420: $04
    nop                                           ; $7421: $00
    inc b                                         ; $7422: $04
    jr nz, jr_0de_7425                            ; $7423: $20 $00

jr_0de_7425:
    jr nc, @+$0d                                  ; $7425: $30 $0b

    nop                                           ; $7427: $00
    rst $38                                       ; $7428: $ff
    dec c                                         ; $7429: $0d
    inc b                                         ; $742a: $04
    db $eb                                        ; $742b: $eb
    ld [bc], a                                    ; $742c: $02
    ld a, [$e901]                                 ; $742d: $fa $01 $e9
    db $fc                                        ; $7430: $fc
    ld [$f9ff], a                                 ; $7431: $ea $ff $f9
    ei                                            ; $7434: $fb
    ld sp, hl                                     ; $7435: $f9
    cp $02                                        ; $7436: $fe $02
    dec bc                                        ; $7438: $0b
    ld [bc], a                                    ; $7439: $02
    dec d                                         ; $743a: $15
    add h                                         ; $743b: $84
    dec h                                         ; $743c: $25
    inc h                                         ; $743d: $24
    ld c, b                                       ; $743e: $48
    ld b, b                                       ; $743f: $40
    ld [bc], a                                    ; $7440: $02
    ld l, a                                       ; $7441: $6f
    sub [hl]                                      ; $7442: $96
    ld a, a                                       ; $7443: $7f
    ld [hl], d                                    ; $7444: $72
    ld h, d                                       ; $7445: $62
    ld b, b                                       ; $7446: $40
    ld e, a                                       ; $7447: $5f
    ld b, h                                       ; $7448: $44
    cpl                                           ; $7449: $2f
    ld [hl+], a                                   ; $744a: $22
    dec de                                        ; $744b: $1b
    inc de                                        ; $744c: $13
    rra                                           ; $744d: $1f
    jr jr_0de_747b                                ; $744e: $18 $2b

    dec sp                                        ; $7450: $3b
    ld e, l                                       ; $7451: $5d
    ld a, l                                       ; $7452: $7d
    sbc l                                         ; $7453: $9d
    rst $30                                       ; $7454: $f7
    ld e, a                                       ; $7455: $5f
    ld [hl], a                                    ; $7456: $77
    ld a, e                                       ; $7457: $7b
    ld h, a                                       ; $7458: $67
    ld [bc], a                                    ; $7459: $02
    ld [bc], a                                    ; $745a: $02
    ld [bc], a                                    ; $745b: $02
    inc b                                         ; $745c: $04
    ld [bc], a                                    ; $745d: $02
    ld [bc], a                                    ; $745e: $02
    ld [bc], a                                    ; $745f: $02
    dec b                                         ; $7460: $05
    ld [bc], a                                    ; $7461: $02
    ld b, $02                                     ; $7462: $06 $02
    ld [bc], a                                    ; $7464: $02
    add [hl]                                      ; $7465: $86
    ld b, $02                                     ; $7466: $06 $02
    ld b, $02                                     ; $7468: $06 $02
    ld b, $02                                     ; $746a: $06 $02
    ld [bc], a                                    ; $746c: $02
    ld b, $81                                     ; $746d: $06 $81
    dec b                                         ; $746f: $05
    ld [bc], a                                    ; $7470: $02
    rlca                                          ; $7471: $07
    add e                                         ; $7472: $83
    ld bc, $0107                                  ; $7473: $01 $07 $01
    ld [bc], a                                    ; $7476: $02
    rlca                                          ; $7477: $07
    adc [hl]                                      ; $7478: $8e
    dec b                                         ; $7479: $05
    rlca                                          ; $747a: $07

jr_0de_747b:
    db $dd                                        ; $747b: $dd
    rst $38                                       ; $747c: $ff
    ld d, b                                       ; $747d: $50
    ld [hl], b                                    ; $747e: $70

jr_0de_747f:
    ld a, e                                       ; $747f: $7b
    ld a, a                                       ; $7480: $7f
    sbc e                                         ; $7481: $9b
    rst $38                                       ; $7482: $ff
    ld c, l                                       ; $7483: $4d
    ld a, a                                       ; $7484: $7f

jr_0de_7485:
    ld [hl-], a                                   ; $7485: $32
    inc sp                                        ; $7486: $33
    ld [bc], a                                    ; $7487: $02
    inc bc                                        ; $7488: $03
    add d                                         ; $7489: $82
    ld [bc], a                                    ; $748a: $02
    inc bc                                        ; $748b: $03
    ld [bc], a                                    ; $748c: $02
    ld bc, $0012                                  ; $748d: $01 $12 $00
    ld a, [bc]                                    ; $7490: $0a
    rlca                                          ; $7491: $07
    add d                                         ; $7492: $82
    ld [bc], a                                    ; $7493: $02
    ld b, $02                                     ; $7494: $06 $02
    inc b                                         ; $7496: $04
    stop                                          ; $7497: $10 $00
    rst $38                                       ; $7499: $ff
    rlca                                          ; $749a: $07
    ld bc, $02eb                                  ; $749b: $01 $eb $02
    ld a, [$ea01]                                 ; $749e: $fa $01 $ea
    cp $02                                        ; $74a1: $fe $02
    jr z, jr_0de_74a7                             ; $74a3: $28 $02

    ld l, b                                       ; $74a5: $68
    ld [bc], a                                    ; $74a6: $02

jr_0de_74a7:
    sbc $02                                       ; $74a7: $de $02
    ld b, c                                       ; $74a9: $41
    inc bc                                        ; $74aa: $03
    nop                                           ; $74ab: $00
    add a                                         ; $74ac: $87
    halt                                          ; $74ad: $76
    nop                                           ; $74ae: $00
    add b                                         ; $74af: $80
    nop                                           ; $74b0: $00
    ld b, b                                       ; $74b1: $40
    nop                                           ; $74b2: $00
    db $10                                        ; $74b3: $10
    ld [bc], a                                    ; $74b4: $02
    nop                                           ; $74b5: $00
    add e                                         ; $74b6: $83
    stop                                          ; $74b7: $10 $00
    ld [$0009], sp                                ; $74b9: $08 $09 $00
    rst $38                                       ; $74bc: $ff
    dec c                                         ; $74bd: $0d
    inc b                                         ; $74be: $04
    db $eb                                        ; $74bf: $eb
    ld [bc], a                                    ; $74c0: $02
    ld a, [$ea01]                                 ; $74c1: $fa $01 $ea
    ld a, [$ffeb]                                 ; $74c4: $fa $eb $ff
    ld a, [$fafb]                                 ; $74c7: $fa $fb $fa
    cp $02                                        ; $74ca: $fe $02
    inc b                                         ; $74cc: $04
    ld [bc], a                                    ; $74cd: $02
    dec de                                        ; $74ce: $1b
    add h                                         ; $74cf: $84
    dec h                                         ; $74d0: $25
    inc h                                         ; $74d1: $24
    ld d, d                                       ; $74d2: $52
    ld b, b                                       ; $74d3: $40
    ld [bc], a                                    ; $74d4: $02
    ld c, l                                       ; $74d5: $4d
    adc h                                         ; $74d6: $8c
    ld a, a                                       ; $74d7: $7f
    ld [hl], d                                    ; $74d8: $72
    ld h, h                                       ; $74d9: $64
    ld b, b                                       ; $74da: $40
    ld a, a                                       ; $74db: $7f
    ld c, b                                       ; $74dc: $48
    ccf                                           ; $74dd: $3f
    inc h                                         ; $74de: $24
    ccf                                           ; $74df: $3f
    ld h, $1f                                     ; $74e0: $26 $1f
    ld de, $1d02                                  ; $74e2: $11 $02 $1d
    adc b                                         ; $74e5: $88

jr_0de_74e6:
    dec hl                                        ; $74e6: $2b
    dec sp                                        ; $74e7: $3b
    ld d, l                                       ; $74e8: $55
    ld a, a                                       ; $74e9: $7f
    ei                                            ; $74ea: $fb
    rst $38                                       ; $74eb: $ff
    sbc a                                         ; $74ec: $9f
    ld sp, hl                                     ; $74ed: $f9
    inc b                                         ; $74ee: $04
    db $10                                        ; $74ef: $10
    ld [bc], a                                    ; $74f0: $02
    inc c                                         ; $74f1: $0c
    ld [bc], a                                    ; $74f2: $02
    ld [$1803], sp                                ; $74f3: $08 $03 $18
    add e                                         ; $74f6: $83
    ld [$0818], sp                                ; $74f7: $08 $18 $08
    ld [bc], a                                    ; $74fa: $02
    jr jr_0de_747f                                ; $74fb: $18 $82

    inc d                                         ; $74fd: $14
    inc e                                         ; $74fe: $1c
    ld [bc], a                                    ; $74ff: $02
    jr jr_0de_7485                                ; $7500: $18 $83

    inc d                                         ; $7502: $14
    inc e                                         ; $7503: $1c
    ld a, [de]                                    ; $7504: $1a
    ld [bc], a                                    ; $7505: $02
    ld e, $83                                     ; $7506: $1e $83
    ld a, [de]                                    ; $7508: $1a
    rra                                           ; $7509: $1f
    add hl, de                                    ; $750a: $19
    ld [bc], a                                    ; $750b: $02
    rra                                           ; $750c: $1f
    adc d                                         ; $750d: $8a
    cp [hl]                                       ; $750e: $be
    cp $f0                                        ; $750f: $fe $f0
    add b                                         ; $7511: $80
    ld a, e                                       ; $7512: $7b

jr_0de_7513:
    ld e, a                                       ; $7513: $5f
    db $fd                                        ; $7514: $fd
    rst $38                                       ; $7515: $ff
    ld c, [hl]                                    ; $7516: $4e
    ld a, a                                       ; $7517: $7f
    ld [bc], a                                    ; $7518: $02
    ld [hl], e                                    ; $7519: $73
    add d                                         ; $751a: $82
    ld [bc], a                                    ; $751b: $02
    inc bc                                        ; $751c: $03
    ld [bc], a                                    ; $751d: $02
    ld bc, $0014                                  ; $751e: $01 $14 $00
    ld [bc], a                                    ; $7521: $02
    ld b, $02                                     ; $7522: $06 $02
    rlca                                          ; $7524: $07
    add c                                         ; $7525: $81
    inc bc                                        ; $7526: $03
    inc bc                                        ; $7527: $03
    rlca                                          ; $7528: $07
    add c                                         ; $7529: $81
    ld [bc], a                                    ; $752a: $02
    inc bc                                        ; $752b: $03
    ld b, $12                                     ; $752c: $06 $12
    nop                                           ; $752e: $00
    rst $38                                       ; $752f: $ff
    rlca                                          ; $7530: $07
    ld bc, $02eb                                  ; $7531: $01 $eb $02
    ld a, [$eb01]                                 ; $7534: $fa $01 $eb
    ei                                            ; $7537: $fb
    ld [bc], a                                    ; $7538: $02
    ld [$3402], sp                                ; $7539: $08 $02 $34
    ld [bc], a                                    ; $753c: $02
    ld e, e                                       ; $753d: $5b
    ld [bc], a                                    ; $753e: $02
    ld h, l                                       ; $753f: $65
    inc bc                                        ; $7540: $03
    nop                                           ; $7541: $00
    add c                                         ; $7542: $81
    ld [hl], $08                                  ; $7543: $36 $08
    nop                                           ; $7545: $00
    add e                                         ; $7546: $83
    inc b                                         ; $7547: $04
    nop                                           ; $7548: $00
    ld [$0009], sp                                ; $7549: $08 $09 $00
    rst $38                                       ; $754c: $ff
    dec c                                         ; $754d: $0d
    inc b                                         ; $754e: $04
    db $eb                                        ; $754f: $eb
    ld [bc], a                                    ; $7550: $02
    ld a, [$ee01]                                 ; $7551: $fa $01 $ee
    or $ef                                        ; $7554: $f6 $ef
    db $fd                                        ; $7556: $fd
    cp $f7                                        ; $7557: $fe $f7
    cp $fd                                        ; $7559: $fe $fd
    ld [bc], a                                    ; $755b: $02
    rra                                           ; $755c: $1f
    ld [bc], a                                    ; $755d: $02
    jr z, jr_0de_74e6                             ; $755e: $28 $86

    ld d, c                                       ; $7560: $51
    ld b, b                                       ; $7561: $40
    ld b, d                                       ; $7562: $42
    ld b, b                                       ; $7563: $40
    ld l, b                                       ; $7564: $68
    ld c, b                                       ; $7565: $48
    ld [bc], a                                    ; $7566: $02
    add [hl]                                      ; $7567: $86
    add [hl]                                      ; $7568: $86
    ld a, a                                       ; $7569: $7f
    ld a, c                                       ; $756a: $79
    inc h                                         ; $756b: $24
    jr nz, jr_0de_758d                            ; $756c: $20 $1f

    inc d                                         ; $756e: $14
    ld [bc], a                                    ; $756f: $02
    ld a, [bc]                                    ; $7570: $0a
    adc h                                         ; $7571: $8c
    ld d, $1e                                     ; $7572: $16 $1e
    ld a, $3f                                     ; $7574: $3e $3f
    dec l                                         ; $7576: $2d
    ccf                                           ; $7577: $3f
    ld e, [hl]                                    ; $7578: $5e
    ld a, a                                       ; $7579: $7f
    halt                                          ; $757a: $76
    ld [hl], a                                    ; $757b: $77
    rst $30                                       ; $757c: $f7
    sub a                                         ; $757d: $97
    ld [bc], a                                    ; $757e: $02
    ld b, b                                       ; $757f: $40
    ld b, $20                                     ; $7580: $06 $20
    ld [bc], a                                    ; $7582: $02
    ld h, b                                       ; $7583: $60
    add h                                         ; $7584: $84
    ld a, b                                       ; $7585: $78
    jr c, jr_0de_75f0                             ; $7586: $38 $68

    jr c, jr_0de_758c                             ; $7588: $38 $02

    jr nc, jr_0de_7513                            ; $758a: $30 $87

jr_0de_758c:
    ld l, b                                       ; $758c: $68

jr_0de_758d:
    ld a, b                                       ; $758d: $78
    ld [hl], h                                    ; $758e: $74
    ld a, h                                       ; $758f: $7c
    ld [hl], d                                    ; $7590: $72
    ld a, [hl]                                    ; $7591: $7e
    halt                                          ; $7592: $76
    ld [bc], a                                    ; $7593: $02
    ld a, [hl]                                    ; $7594: $7e
    adc e                                         ; $7595: $8b
    ld a, d                                       ; $7596: $7a
    ld a, a                                       ; $7597: $7f
    ld [hl], e                                    ; $7598: $73
    ccf                                           ; $7599: $3f
    ld a, a                                       ; $759a: $7f
    rst $00                                       ; $759b: $c7
    rst $38                                       ; $759c: $ff
    db $fc                                        ; $759d: $fc
    call c, Call_000_2f3d                         ; $759e: $dc $3d $2f
    ld [bc], a                                    ; $75a1: $02
    inc de                                        ; $75a2: $13
    inc e                                         ; $75a3: $1c
    nop                                           ; $75a4: $00
    add d                                         ; $75a5: $82
    dec a                                         ; $75a6: $3d
    ccf                                           ; $75a7: $3f
    ld [bc], a                                    ; $75a8: $02
    rlca                                          ; $75a9: $07
    ld a, [de]                                    ; $75aa: $1a
    nop                                           ; $75ab: $00
    rst $38                                       ; $75ac: $ff
    rlca                                          ; $75ad: $07
    ld bc, $02eb                                  ; $75ae: $01 $eb $02
    ld a, [$ef01]                                 ; $75b1: $fa $01 $ef
    rst $30                                       ; $75b4: $f7
    ld [bc], a                                    ; $75b5: $02
    ld l, $02                                     ; $75b6: $2e $02
    ld e, l                                       ; $75b8: $5d
    ld [bc], a                                    ; $75b9: $02
    ld a, e                                       ; $75ba: $7b
    ld [bc], a                                    ; $75bb: $02
    cpl                                           ; $75bc: $2f
    ld [bc], a                                    ; $75bd: $02
    ld a, [c]                                     ; $75be: $f2
    inc bc                                        ; $75bf: $03
    nop                                           ; $75c0: $00
    add [hl]                                      ; $75c1: $86
    ld [hl], $00                                  ; $75c2: $36 $00
    ld bc, $0a00                                  ; $75c4: $01 $00 $0a
    ld [bc], a                                    ; $75c7: $02
    dec c                                         ; $75c8: $0d
    nop                                           ; $75c9: $00
    rst $38                                       ; $75ca: $ff
    dec bc                                        ; $75cb: $0b
    inc bc                                        ; $75cc: $03
    db $eb                                        ; $75cd: $eb
    ld [bc], a                                    ; $75ce: $02
    ld a, [$f101]                                 ; $75cf: $fa $01 $f1
    or $f3                                        ; $75d2: $f6 $f3
    db $fd                                        ; $75d4: $fd
    ld bc, $02f6                                  ; $75d5: $01 $f6 $02
    ld a, $02                                     ; $75d8: $3e $02
    ld d, c                                       ; $75da: $51
    adc b                                         ; $75db: $88
    and d                                         ; $75dc: $a2
    add b                                         ; $75dd: $80
    add d                                         ; $75de: $82
    add b                                         ; $75df: $80
    call nz, $d180                                ; $75e0: $c4 $80 $d1
    sub c                                         ; $75e3: $91
    ld [bc], a                                    ; $75e4: $02
    adc e                                         ; $75e5: $8b
    sub d                                         ; $75e6: $92
    ld e, a                                       ; $75e7: $5f
    ld d, h                                       ; $75e8: $54
    dec a                                         ; $75e9: $3d
    ld sp, $3f2e                                  ; $75ea: $31 $2e $3f
    ld c, l                                       ; $75ed: $4d
    ld a, a                                       ; $75ee: $7f
    ld d, [hl]                                    ; $75ef: $56

jr_0de_75f0:
    ld [hl], a                                    ; $75f0: $77
    xor l                                         ; $75f1: $ad
    rst $38                                       ; $75f2: $ff
    db $fd                                        ; $75f3: $fd
    rst $18                                       ; $75f4: $df
    ld a, [$7f9f]                                 ; $75f5: $fa $9f $7f
    ld h, a                                       ; $75f8: $67
    ld [$0240], sp                                ; $75f9: $08 $40 $02
    ld h, b                                       ; $75fc: $60
    add c                                         ; $75fd: $81
    ld d, b                                       ; $75fe: $50
    inc bc                                        ; $75ff: $03
    ld [hl], b                                    ; $7600: $70
    adc [hl]                                      ; $7601: $8e
    ld l, b                                       ; $7602: $68
    ld a, b                                       ; $7603: $78
    ld [hl], h                                    ; $7604: $74
    ld a, h                                       ; $7605: $7c
    ld [hl], h                                    ; $7606: $74
    ld a, h                                       ; $7607: $7c
    ld h, [hl]                                    ; $7608: $66
    ld a, [hl]                                    ; $7609: $7e
    ld d, a                                       ; $760a: $57
    ld a, a                                       ; $760b: $7f
    ld a, l                                       ; $760c: $7d
    ld l, a                                       ; $760d: $6f
    ld a, [hl]                                    ; $760e: $7e
    ld h, [hl]                                    ; $760f: $66
    ld [bc], a                                    ; $7610: $02
    jr jr_0de_7615                                ; $7611: $18 $02

    nop                                           ; $7613: $00
    ld [bc], a                                    ; $7614: $02

jr_0de_7615:
    jr jr_0de_7635                                ; $7615: $18 $1e

    nop                                           ; $7617: $00
    rst $38                                       ; $7618: $ff
    rlca                                          ; $7619: $07
    ld bc, $02eb                                  ; $761a: $01 $eb $02
    ld a, [$f201]                                 ; $761d: $fa $01 $f2
    or $02                                        ; $7620: $f6 $02
    ld l, $02                                     ; $7622: $2e $02
    ld e, l                                       ; $7624: $5d
    ld [bc], a                                    ; $7625: $02
    ld a, l                                       ; $7626: $7d
    ld [bc], a                                    ; $7627: $02
    dec sp                                        ; $7628: $3b
    ld [bc], a                                    ; $7629: $02
    ld l, $02                                     ; $762a: $2e $02
    ld [hl], h                                    ; $762c: $74
    ld [bc], a                                    ; $762d: $02
    jr nz, @-$7c                                  ; $762e: $20 $82

    nop                                           ; $7630: $00
    ld [bc], a                                    ; $7631: $02
    stop                                          ; $7632: $10 $00
    rst $38                                       ; $7634: $ff

jr_0de_7635:
    dec bc                                        ; $7635: $0b
    inc bc                                        ; $7636: $03
    db $eb                                        ; $7637: $eb
    ld [bc], a                                    ; $7638: $02
    ld a, [$f201]                                 ; $7639: $fa $01 $f2
    di                                            ; $763c: $f3
    ld a, [c]                                     ; $763d: $f2
    ei                                            ; $763e: $fb
    ld a, [c]                                     ; $763f: $f2
    db $fc                                        ; $7640: $fc
    ld [bc], a                                    ; $7641: $02
    ld a, $90                                     ; $7642: $3e $90
    ld d, l                                       ; $7644: $55
    ld d, c                                       ; $7645: $51
    and d                                         ; $7646: $a2
    add b                                         ; $7647: $80
    sub d                                         ; $7648: $92
    sub b                                         ; $7649: $90
    ret nc                                        ; $764a: $d0

    sub b                                         ; $764b: $90
    xor c                                         ; $764c: $a9
    adc c                                         ; $764d: $89
    adc a                                         ; $764e: $8f
    adc [hl]                                      ; $764f: $8e
    ld l, a                                       ; $7650: $6f
    ld l, d                                       ; $7651: $6a
    ld [hl], $30                                  ; $7652: $36 $30
    ld [bc], a                                    ; $7654: $02
    rra                                           ; $7655: $1f
    add h                                         ; $7656: $84
    dec l                                         ; $7657: $2d
    ccf                                           ; $7658: $3f
    ld h, $3f                                     ; $7659: $26 $3f
    ld [bc], a                                    ; $765b: $02
    ld a, a                                       ; $765c: $7f
    add h                                         ; $765d: $84
    ld a, e                                       ; $765e: $7b
    ld c, e                                       ; $765f: $4b
    ccf                                           ; $7660: $3f
    scf                                           ; $7661: $37
    ld [bc], a                                    ; $7662: $02
    ld [$0004], sp                                ; $7663: $08 $04 $00
    ld [$0280], sp                                ; $7666: $08 $80 $02
    ret nz                                        ; $7669: $c0

    add d                                         ; $766a: $82
    or b                                          ; $766b: $b0
    ldh a, [rSC]                                  ; $766c: $f0 $02
    ld hl, sp-$74                                 ; $766e: $f8 $8c
    and h                                         ; $7670: $a4
    db $fc                                        ; $7671: $fc
    ld a, [c]                                     ; $7672: $f2
    cp $f3                                        ; $7673: $fe $f3
    rst $38                                       ; $7675: $ff
    ld l, a                                       ; $7676: $6f
    rst $38                                       ; $7677: $ff
    ld a, $fb                                     ; $7678: $3e $fb
    rst $38                                       ; $767a: $ff
    di                                            ; $767b: $f3
    ld [bc], a                                    ; $767c: $02
    inc c                                         ; $767d: $0c
    ld a, [de]                                    ; $767e: $1a
    nop                                           ; $767f: $00
    inc b                                         ; $7680: $04
    ld bc, $0002                                  ; $7681: $01 $02 $00
    rst $38                                       ; $7684: $ff
    rlca                                          ; $7685: $07
    ld bc, $02eb                                  ; $7686: $01 $eb $02
    ld a, [$f301]                                 ; $7689: $fa $01 $f3
    di                                            ; $768c: $f3
    ld [bc], a                                    ; $768d: $02
    ld a, [hl+]                                   ; $768e: $2a
    ld [bc], a                                    ; $768f: $02
    ld e, l                                       ; $7690: $5d
    ld [bc], a                                    ; $7691: $02
    ld l, l                                       ; $7692: $6d
    ld [bc], a                                    ; $7693: $02
    cpl                                           ; $7694: $2f
    ld [bc], a                                    ; $7695: $02
    ld d, [hl]                                    ; $7696: $56
    ld [bc], a                                    ; $7697: $02
    ld [hl], b                                    ; $7698: $70
    ld [bc], a                                    ; $7699: $02
    db $10                                        ; $769a: $10
    add d                                         ; $769b: $82
    nop                                           ; $769c: $00
    add hl, bc                                    ; $769d: $09
    stop                                          ; $769e: $10 $00
    rst $38                                       ; $76a0: $ff
    dec bc                                        ; $76a1: $0b
    inc bc                                        ; $76a2: $03
    db $eb                                        ; $76a3: $eb
    ld [bc], a                                    ; $76a4: $02
    ld a, [$f501]                                 ; $76a5: $fa $01 $f5
    rst $28                                       ; $76a8: $ef
    push af                                       ; $76a9: $f5
    rst $30                                       ; $76aa: $f7
    push af                                       ; $76ab: $f5
    ei                                            ; $76ac: $fb
    ld [bc], a                                    ; $76ad: $02
    ld a, $82                                     ; $76ae: $3e $82
    ld h, a                                       ; $76b0: $67
    ld h, c                                       ; $76b1: $61
    ld [bc], a                                    ; $76b2: $02
    add b                                         ; $76b3: $80
    add d                                         ; $76b4: $82
    xor c                                         ; $76b5: $a9
    adc c                                         ; $76b6: $89
    ld [bc], a                                    ; $76b7: $02
    add c                                         ; $76b8: $81
    add d                                         ; $76b9: $82
    sbc e                                         ; $76ba: $9b
    add d                                         ; $76bb: $82
    ld [bc], a                                    ; $76bc: $02
    add c                                         ; $76bd: $81
    add d                                         ; $76be: $82
    ld l, a                                       ; $76bf: $6f
    ld l, [hl]                                    ; $76c0: $6e
    ld [bc], a                                    ; $76c1: $02
    ccf                                           ; $76c2: $3f
    add h                                         ; $76c3: $84
    ld h, e                                       ; $76c4: $63
    ld a, a                                       ; $76c5: $7f
    or $9e                                        ; $76c6: $f6 $9e
    ld [bc], a                                    ; $76c8: $02
    ld a, b                                       ; $76c9: $78
    inc c                                         ; $76ca: $0c
    nop                                           ; $76cb: $00
    inc b                                         ; $76cc: $04
    add b                                         ; $76cd: $80
    adc [hl]                                      ; $76ce: $8e
    ldh [$60], a                                  ; $76cf: $e0 $60
    ret c                                         ; $76d1: $d8

    ld a, b                                       ; $76d2: $78
    cp $7e                                        ; $76d3: $fe $7e
    db $e3                                        ; $76d5: $e3
    rst $38                                       ; $76d6: $ff
    add hl, sp                                    ; $76d7: $39
    rst $38                                       ; $76d8: $ff
    db $dd                                        ; $76d9: $dd
    rst $38                                       ; $76da: $ff
    rst $08                                       ; $76db: $cf
    cp $02                                        ; $76dc: $fe $02
    ld a, a                                       ; $76de: $7f
    ld d, $00                                     ; $76df: $16 $00
    ld [bc], a                                    ; $76e1: $02
    ld [$0e03], sp                                ; $76e2: $08 $03 $0e
    add e                                         ; $76e5: $83
    ld b, $0d                                     ; $76e6: $06 $0d
    rlca                                          ; $76e8: $07
    ld [bc], a                                    ; $76e9: $02
    rrca                                          ; $76ea: $0f
    ld [$ff00], sp                                ; $76eb: $08 $00 $ff
    rlca                                          ; $76ee: $07
    ld bc, $02eb                                  ; $76ef: $01 $eb $02
    ld a, [$f601]                                 ; $76f2: $fa $01 $f6
    rst $28                                       ; $76f5: $ef
    ld [bc], a                                    ; $76f6: $02
    jr jr_0de_76fb                                ; $76f7: $18 $02

    ld a, a                                       ; $76f9: $7f
    ld [bc], a                                    ; $76fa: $02

jr_0de_76fb:
    ld d, [hl]                                    ; $76fb: $56
    ld [bc], a                                    ; $76fc: $02
    ld a, [hl]                                    ; $76fd: $7e
    ld [bc], a                                    ; $76fe: $02
    ld h, h                                       ; $76ff: $64
    ld [bc], a                                    ; $7700: $02
    ld a, [hl]                                    ; $7701: $7e
    ld [bc], a                                    ; $7702: $02
    db $10                                        ; $7703: $10
    ld [de], a                                    ; $7704: $12
    nop                                           ; $7705: $00
    rst $38                                       ; $7706: $ff
    dec bc                                        ; $7707: $0b
    inc bc                                        ; $7708: $03
    db $eb                                        ; $7709: $eb
    ld [bc], a                                    ; $770a: $02
    ld a, [$fa01]                                 ; $770b: $fa $01 $fa
    db $ec                                        ; $770e: $ec
    ld a, [$faf4]                                 ; $770f: $fa $f4 $fa
    ei                                            ; $7712: $fb
    ld [bc], a                                    ; $7713: $02
    rrca                                          ; $7714: $0f
    add d                                         ; $7715: $82
    add hl, de                                    ; $7716: $19
    jr jr_0de_771b                                ; $7717: $18 $02

    jr nz, jr_0de_771d                            ; $7719: $20 $02

jr_0de_771b:
    inc hl                                        ; $771b: $23
    add h                                         ; $771c: $84

jr_0de_771d:
    ld h, h                                       ; $771d: $64
    ld h, b                                       ; $771e: $60
    pop hl                                        ; $771f: $e1
    and b                                         ; $7720: $a0
    ld [bc], a                                    ; $7721: $02
    di                                            ; $7722: $f3
    ld [bc], a                                    ; $7723: $02
    rra                                           ; $7724: $1f
    stop                                          ; $7725: $10 $00
    ld [bc], a                                    ; $7727: $02
    add b                                         ; $7728: $80
    ld [bc], a                                    ; $7729: $02
    ld a, e                                       ; $772a: $7b
    add d                                         ; $772b: $82
    or a                                          ; $772c: $b7
    ccf                                           ; $772d: $3f
    ld [bc], a                                    ; $772e: $02
    ld a, a                                       ; $772f: $7f
    add [hl]                                      ; $7730: $86
    ld [hl], b                                    ; $7731: $70
    ld e, a                                       ; $7732: $5f
    ld a, [hl]                                    ; $7733: $7e
    ld e, a                                       ; $7734: $5f
    rst $38                                       ; $7735: $ff
    cp a                                          ; $7736: $bf
    ld [bc], a                                    ; $7737: $02
    ret nz                                        ; $7738: $c0

    ld [de], a                                    ; $7739: $12
    nop                                           ; $773a: $00
    ld [bc], a                                    ; $773b: $02
    ld h, b                                       ; $773c: $60
    ld [bc], a                                    ; $773d: $02
    ld [hl], b                                    ; $773e: $70
    ld [bc], a                                    ; $773f: $02
    ld a, [hl]                                    ; $7740: $7e
    add h                                         ; $7741: $84
    ld a, [hl-]                                   ; $7742: $3a
    ld l, [hl]                                    ; $7743: $6e
    dec a                                         ; $7744: $3d
    ld h, a                                       ; $7745: $67
    ld [bc], a                                    ; $7746: $02
    ld a, a                                       ; $7747: $7f
    ld [de], a                                    ; $7748: $12
    nop                                           ; $7749: $00
    rst $38                                       ; $774a: $ff
    rlca                                          ; $774b: $07
    ld bc, $02eb                                  ; $774c: $01 $eb $02
    ld a, [$fb01]                                 ; $774f: $fa $01 $fb
    xor $02                                       ; $7752: $ee $02
    ld a, [de]                                    ; $7754: $1a
    ld [bc], a                                    ; $7755: $02
    ld a, l                                       ; $7756: $7d
    ld [bc], a                                    ; $7757: $02
    ld [hl], d                                    ; $7758: $72
    ld [bc], a                                    ; $7759: $02
    ld l, [hl]                                    ; $775a: $6e
    ld [bc], a                                    ; $775b: $02
    ld a, d                                       ; $775c: $7a
    ld [bc], a                                    ; $775d: $02
    jr nc, jr_0de_7774                            ; $775e: $30 $14

    nop                                           ; $7760: $00
    rst $38                                       ; $7761: $ff
    dec c                                         ; $7762: $0d
    inc b                                         ; $7763: $04
    ld hl, sp+$07                                 ; $7764: $f8 $07
    ld a, [c]                                     ; $7766: $f2
    ld bc, $f8eb                                  ; $7767: $01 $eb $f8
    db $eb                                        ; $776a: $eb
    rst $38                                       ; $776b: $ff
    ei                                            ; $776c: $fb
    ei                                            ; $776d: $fb
    ei                                            ; $776e: $fb
    rst $38                                       ; $776f: $ff
    ld [bc], a                                    ; $7770: $02
    rlca                                          ; $7771: $07
    ld [bc], a                                    ; $7772: $02
    add hl, bc                                    ; $7773: $09

jr_0de_7774:
    add d                                         ; $7774: $82
    ld [de], a                                    ; $7775: $12
    db $10                                        ; $7776: $10
    ld [bc], a                                    ; $7777: $02
    ld a, e                                       ; $7778: $7b
    adc [hl]                                      ; $7779: $8e
    cp $9c                                        ; $777a: $fe $9c
    cp $96                                        ; $777c: $fe $96
    rst $30                                       ; $777e: $f7
    pop de                                        ; $777f: $d1
    call c, Call_0de_4ff8                         ; $7780: $dc $f8 $4f
    ld a, e                                       ; $7783: $7b
    daa                                           ; $7784: $27
    inc a                                         ; $7785: $3c
    dec d                                         ; $7786: $15
    dec e                                         ; $7787: $1d
    ld [bc], a                                    ; $7788: $02
    rra                                           ; $7789: $1f
    add c                                         ; $778a: $81
    inc e                                         ; $778b: $1c
    rlca                                          ; $778c: $07
    rra                                           ; $778d: $1f
    ld [bc], a                                    ; $778e: $02
    ld h, b                                       ; $778f: $60
    add h                                         ; $7790: $84
    jr nc, jr_0de_77a3                            ; $7791: $30 $10

    jr z, jr_0de_779d                             ; $7793: $28 $08

    ld [bc], a                                    ; $7795: $02
    ld l, b                                       ; $7796: $68
    adc [hl]                                      ; $7797: $8e
    ld a, b                                       ; $7798: $78
    ld e, b                                       ; $7799: $58
    ld a, b                                       ; $779a: $78
    jr c, jr_0de_781b                             ; $779b: $38 $7e

jr_0de_779d:
    ld c, $6f                                     ; $779d: $0e $6f
    ld c, c                                       ; $779f: $49
    ld [hl], a                                    ; $77a0: $77
    ld e, l                                       ; $77a1: $5d
    ld h, l                                       ; $77a2: $65

jr_0de_77a3:
    dec sp                                        ; $77a3: $3b
    ld h, $3e                                     ; $77a4: $26 $3e
    ld [bc], a                                    ; $77a6: $02
    ld a, h                                       ; $77a7: $7c
    adc l                                         ; $77a8: $8d
    jr nz, @+$62                                  ; $77a9: $20 $60

    ld a, $7e                                     ; $77ab: $3e $7e
    ld d, e                                       ; $77ad: $53
    ld a, a                                       ; $77ae: $7f
    ld e, [hl]                                    ; $77af: $5e
    ld a, [hl]                                    ; $77b0: $7e
    db $fd                                        ; $77b1: $fd
    rst $38                                       ; $77b2: $ff
    ld [hl], d                                    ; $77b3: $72
    ld a, a                                       ; $77b4: $7f
    ld c, a                                       ; $77b5: $4f
    inc bc                                        ; $77b6: $03
    ld a, a                                       ; $77b7: $7f
    add c                                         ; $77b8: $81
    inc h                                         ; $77b9: $24
    inc bc                                        ; $77ba: $03
    inc a                                         ; $77bb: $3c
    add d                                         ; $77bc: $82
    inc h                                         ; $77bd: $24
    inc a                                         ; $77be: $3c
    ld [bc], a                                    ; $77bf: $02
    jr jr_0de_77d2                                ; $77c0: $18 $10

    nop                                           ; $77c2: $00
    ld [bc], a                                    ; $77c3: $02
    ld c, $86                                     ; $77c4: $0e $86
    inc b                                         ; $77c6: $04
    inc c                                         ; $77c7: $0c
    rlca                                          ; $77c8: $07
    rrca                                          ; $77c9: $0f
    add hl, bc                                    ; $77ca: $09
    rrca                                          ; $77cb: $0f
    ld [bc], a                                    ; $77cc: $02
    ld c, $16                                     ; $77cd: $0e $16
    nop                                           ; $77cf: $00
    rst $38                                       ; $77d0: $ff
    rlca                                          ; $77d1: $07

jr_0de_77d2:
    ld bc, $07f8                                  ; $77d2: $01 $f8 $07
    ld a, [c]                                     ; $77d5: $f2
    ld bc, $fbec                                  ; $77d6: $01 $ec $fb
    ld [bc], a                                    ; $77d9: $02
    inc [hl]                                      ; $77da: $34
    ld [bc], a                                    ; $77db: $02
    ld l, l                                       ; $77dc: $6d
    ld [bc], a                                    ; $77dd: $02
    ld hl, $0804                                  ; $77de: $21 $04 $08
    ld [bc], a                                    ; $77e1: $02
    ld b, b                                       ; $77e2: $40
    ld [bc], a                                    ; $77e3: $02
    add hl, de                                    ; $77e4: $19
    inc b                                         ; $77e5: $04
    nop                                           ; $77e6: $00
    add c                                         ; $77e7: $81
    inc d                                         ; $77e8: $14
    dec c                                         ; $77e9: $0d
    nop                                           ; $77ea: $00
    rst $38                                       ; $77eb: $ff
    dec c                                         ; $77ec: $0d
    inc b                                         ; $77ed: $04
    ld hl, sp+$07                                 ; $77ee: $f8 $07
    ld a, [c]                                     ; $77f0: $f2
    ld bc, $f7eb                                  ; $77f1: $01 $eb $f7
    db $eb                                        ; $77f4: $eb
    rst $38                                       ; $77f5: $ff
    ei                                            ; $77f6: $fb
    db $fc                                        ; $77f7: $fc
    ei                                            ; $77f8: $fb
    rst $38                                       ; $77f9: $ff
    ld [bc], a                                    ; $77fa: $02
    inc bc                                        ; $77fb: $03
    ld [bc], a                                    ; $77fc: $02
    inc b                                         ; $77fd: $04
    add d                                         ; $77fe: $82
    add hl, bc                                    ; $77ff: $09
    ld [$0d02], sp                                ; $7800: $08 $02 $0d
    adc [hl]                                      ; $7803: $8e
    ld l, a                                       ; $7804: $6f
    ld l, [hl]                                    ; $7805: $6e
    rst $38                                       ; $7806: $ff
    sbc e                                         ; $7807: $9b
    ei                                            ; $7808: $fb
    sbc b                                         ; $7809: $98
    ld [$4fd8], a                                 ; $780a: $ea $d8 $4f
    ld a, l                                       ; $780d: $7d
    ld b, a                                       ; $780e: $47
    ld a, [hl]                                    ; $780f: $7e
    ld a, [hl-]                                   ; $7810: $3a
    ld a, $0a                                     ; $7811: $3e $0a
    rrca                                          ; $7813: $0f
    ld [bc], a                                    ; $7814: $02
    ldh [$84], a                                  ; $7815: $e0 $84
    or b                                          ; $7817: $b0
    sub b                                         ; $7818: $90
    jr z, jr_0de_7823                             ; $7819: $28 $08

jr_0de_781b:
    ld [bc], a                                    ; $781b: $02
    add sp, -$72                                  ; $781c: $e8 $8e
    ld a, b                                       ; $781e: $78
    ld e, b                                       ; $781f: $58
    ld a, [hl]                                    ; $7820: $7e
    ld a, $ff                                     ; $7821: $3e $ff

jr_0de_7823:
    adc c                                         ; $7823: $89
    ld l, a                                       ; $7824: $6f
    ld c, l                                       ; $7825: $4d
    push af                                       ; $7826: $f5
    db $db                                        ; $7827: $db
    ld [c], a                                     ; $7828: $e2
    ld a, $ac                                     ; $7829: $3e $ac
    cp h                                          ; $782b: $bc
    ld [bc], a                                    ; $782c: $02
    ld [hl], b                                    ; $782d: $70
    sub b                                         ; $782e: $90
    inc a                                         ; $782f: $3c
    db $fc                                        ; $7830: $fc
    jp nc, $edfe                                  ; $7831: $d2 $fe $ed

    rst $38                                       ; $7834: $ff
    rst $28                                       ; $7835: $ef
    rst $38                                       ; $7836: $ff
    di                                            ; $7837: $f3
    rst $38                                       ; $7838: $ff
    adc $ff                                       ; $7839: $ce $ff
    cp a                                          ; $783b: $bf
    rst $38                                       ; $783c: $ff
    adc $ff                                       ; $783d: $ce $ff
    ld [bc], a                                    ; $783f: $02
    pop af                                        ; $7840: $f1
    add d                                         ; $7841: $82
    sub c                                         ; $7842: $91
    pop af                                        ; $7843: $f1
    ld [bc], a                                    ; $7844: $02
    ld h, b                                       ; $7845: $60
    ld [de], a                                    ; $7846: $12
    nop                                           ; $7847: $00
    ld [bc], a                                    ; $7848: $02
    ld b, $02                                     ; $7849: $06 $02
    inc b                                         ; $784b: $04
    add d                                         ; $784c: $82
    ld [bc], a                                    ; $784d: $02
    ld b, $02                                     ; $784e: $06 $02
    rlca                                          ; $7850: $07
    add d                                         ; $7851: $82
    ld bc, $0207                                  ; $7852: $01 $07 $02
    ld b, $14                                     ; $7855: $06 $14
    nop                                           ; $7857: $00
    rst $38                                       ; $7858: $ff
    rlca                                          ; $7859: $07
    ld bc, $07f8                                  ; $785a: $01 $f8 $07
    ld a, [c]                                     ; $785d: $f2
    ld bc, $fbec                                  ; $785e: $01 $ec $fb
    ld [bc], a                                    ; $7861: $02

jr_0de_7862:
    inc [hl]                                      ; $7862: $34
    ld [bc], a                                    ; $7863: $02
    ld l, l                                       ; $7864: $6d
    ld [bc], a                                    ; $7865: $02
    ld hl, $0804                                  ; $7866: $21 $04 $08
    ld [bc], a                                    ; $7869: $02
    ld b, b                                       ; $786a: $40
    ld [bc], a                                    ; $786b: $02
    ld e, c                                       ; $786c: $59
    inc b                                         ; $786d: $04
    nop                                           ; $786e: $00
    add e                                         ; $786f: $83
    inc d                                         ; $7870: $14
    nop                                           ; $7871: $00
    ld [$000b], sp                                ; $7872: $08 $0b $00
    rst $38                                       ; $7875: $ff
    dec c                                         ; $7876: $0d
    inc b                                         ; $7877: $04
    ld hl, sp+$07                                 ; $7878: $f8 $07
    ld a, [c]                                     ; $787a: $f2
    ld bc, $f7eb                                  ; $787b: $01 $eb $f7
    db $eb                                        ; $787e: $eb
    rst $38                                       ; $787f: $ff
    ei                                            ; $7880: $fb
    ei                                            ; $7881: $fb
    ei                                            ; $7882: $fb
    nop                                           ; $7883: $00
    ld [bc], a                                    ; $7884: $02
    inc bc                                        ; $7885: $03
    ld [bc], a                                    ; $7886: $02
    inc b                                         ; $7887: $04
    add d                                         ; $7888: $82
    add hl, bc                                    ; $7889: $09
    ld [$0d02], sp                                ; $788a: $08 $02 $0d
    adc [hl]                                      ; $788d: $8e
    ld l, a                                       ; $788e: $6f
    ld l, [hl]                                    ; $788f: $6e
    rst $38                                       ; $7890: $ff
    sbc e                                         ; $7891: $9b
    ei                                            ; $7892: $fb
    sbc b                                         ; $7893: $98
    ld l, d                                       ; $7894: $6a
    ld e, b                                       ; $7895: $58
    ld c, a                                       ; $7896: $4f
    ld a, l                                       ; $7897: $7d
    ld h, e                                       ; $7898: $63
    ld a, [hl]                                    ; $7899: $7e
    ld a, [de]                                    ; $789a: $1a
    ld e, $02                                     ; $789b: $1e $02
    rrca                                          ; $789d: $0f
    add c                                         ; $789e: $81
    ld c, $05                                     ; $789f: $0e $05
    rrca                                          ; $78a1: $0f
    add d                                         ; $78a2: $82
    ld c, $0f                                     ; $78a3: $0e $0f
    ld [bc], a                                    ; $78a5: $02
    ldh [$84], a                                  ; $78a6: $e0 $84
    or b                                          ; $78a8: $b0
    sub b                                         ; $78a9: $90
    jr z, jr_0de_78b4                             ; $78aa: $28 $08

    ld [bc], a                                    ; $78ac: $02
    add sp, -$72                                  ; $78ad: $e8 $8e
    ld a, b                                       ; $78af: $78
    ld e, b                                       ; $78b0: $58
    ld a, b                                       ; $78b1: $78

jr_0de_78b2:
    jr c, jr_0de_78b2                             ; $78b2: $38 $fe

jr_0de_78b4:
    adc [hl]                                      ; $78b4: $8e
    ld l, a                                       ; $78b5: $6f
    ld c, c                                       ; $78b6: $49
    rst $30                                       ; $78b7: $f7
    db $dd                                        ; $78b8: $dd
    and $3a                                       ; $78b9: $e6 $3a
    ld h, $3e                                     ; $78bb: $26 $3e
    ld [bc], a                                    ; $78bd: $02
    ld hl, sp-$75                                 ; $78be: $f8 $8b
    ld l, [hl]                                    ; $78c0: $6e
    xor $96                                       ; $78c1: $ee $96
    cp $b6                                        ; $78c3: $fe $b6
    cp $7e                                        ; $78c5: $fe $7e
    cp $df                                        ; $78c7: $fe $df
    rst $38                                       ; $78c9: $ff
    ld e, a                                       ; $78ca: $5f
    inc bc                                        ; $78cb: $03
    ld a, a                                       ; $78cc: $7f
    add d                                         ; $78cd: $82
    ld h, [hl]                                    ; $78ce: $66
    ld a, [hl]                                    ; $78cf: $7e
    ld [bc], a                                    ; $78d0: $02
    inc a                                         ; $78d1: $3c
    add d                                         ; $78d2: $82
    inc h                                         ; $78d3: $24
    inc a                                         ; $78d4: $3c
    ld [bc], a                                    ; $78d5: $02
    jr @+$14                                      ; $78d6: $18 $12

    nop                                           ; $78d8: $00
    ld [bc], a                                    ; $78d9: $02
    jr jr_0de_7862                                ; $78da: $18 $86

    inc b                                         ; $78dc: $04
    inc e                                         ; $78dd: $1c
    rla                                           ; $78de: $17
    rra                                           ; $78df: $1f
    add hl, de                                    ; $78e0: $19
    rra                                           ; $78e1: $1f
    ld [bc], a                                    ; $78e2: $02
    ld c, $16                                     ; $78e3: $0e $16
    nop                                           ; $78e5: $00
    rst $38                                       ; $78e6: $ff
    rlca                                          ; $78e7: $07
    ld bc, $07f8                                  ; $78e8: $01 $f8 $07
    ld a, [c]                                     ; $78eb: $f2
    ld bc, $fbec                                  ; $78ec: $01 $ec $fb
    ld [bc], a                                    ; $78ef: $02
    inc [hl]                                      ; $78f0: $34
    ld [bc], a                                    ; $78f1: $02
    ld l, l                                       ; $78f2: $6d
    ld [bc], a                                    ; $78f3: $02
    ld hl, $0804                                  ; $78f4: $21 $04 $08
    ld [bc], a                                    ; $78f7: $02
    ld b, b                                       ; $78f8: $40
    ld [bc], a                                    ; $78f9: $02
    ld e, c                                       ; $78fa: $59
    inc b                                         ; $78fb: $04
    nop                                           ; $78fc: $00
    add c                                         ; $78fd: $81
    inc e                                         ; $78fe: $1c
    dec c                                         ; $78ff: $0d
    nop                                           ; $7900: $00
    rst $38                                       ; $7901: $ff
    dec c                                         ; $7902: $0d
    inc b                                         ; $7903: $04
    ld hl, sp+$07                                 ; $7904: $f8 $07
    ld a, [c]                                     ; $7906: $f2
    ld bc, $f9ef                                  ; $7907: $01 $ef $f9
    rst $28                                       ; $790a: $ef
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    ld a, [$fdff]                                 ; $790d: $fa $ff $fd
    ld [bc], a                                    ; $7910: $02
    ld bc, $0202                                  ; $7911: $01 $02 $02
    ld [bc], a                                    ; $7914: $02
    inc b                                         ; $7915: $04
    ld [bc], a                                    ; $7916: $02
    ld b, $03                                     ; $7917: $06 $03
    rlca                                          ; $7919: $07
    ld [bc], a                                    ; $791a: $02
    dec b                                         ; $791b: $05
    sub e                                         ; $791c: $93
    inc b                                         ; $791d: $04
    inc bc                                        ; $791e: $03
    ld [bc], a                                    ; $791f: $02
    rra                                           ; $7920: $1f
    ld e, $25                                     ; $7921: $1e $25
    dec a                                         ; $7923: $3d
    ld e, [hl]                                    ; $7924: $5e
    ld a, [hl]                                    ; $7925: $7e
    ld c, [hl]                                    ; $7926: $4e
    ld a, a                                       ; $7927: $7f
    cp [hl]                                       ; $7928: $be
    rst $28                                       ; $7929: $ef
    ld a, a                                       ; $792a: $7f
    ld c, a                                       ; $792b: $4f
    db $fd                                        ; $792c: $fd
    rst $38                                       ; $792d: $ff
    or e                                          ; $792e: $b3
    rst $38                                       ; $792f: $ff
    ld [bc], a                                    ; $7930: $02
    inc a                                         ; $7931: $3c
    add h                                         ; $7932: $84
    ld d, $12                                     ; $7933: $16 $12
    dec h                                         ; $7935: $25
    ld bc, $3d02                                  ; $7936: $01 $02 $3d
    adc h                                         ; $7939: $8c
    ccf                                           ; $793a: $3f
    dec bc                                        ; $793b: $0b
    cpl                                           ; $793c: $2f
    daa                                           ; $793d: $27
    ccf                                           ; $793e: $3f
    ld de, $0a3e                                  ; $793f: $11 $3e $0a
    ld e, $1a                                     ; $7942: $1e $1a
    inc a                                         ; $7944: $3c
    inc b                                         ; $7945: $04
    ld [bc], a                                    ; $7946: $02
    ld a, $88                                     ; $7947: $3e $88
    dec e                                         ; $7949: $1d
    ccf                                           ; $794a: $3f
    dec a                                         ; $794b: $3d
    dec sp                                        ; $794c: $3b
    rra                                           ; $794d: $1f
    add hl, sp                                    ; $794e: $39
    ld l, $3e                                     ; $794f: $2e $3e
    ld [bc], a                                    ; $7951: $02
    jr c, jr_0de_7956                             ; $7952: $38 $02

    rst $38                                       ; $7954: $ff
    add d                                         ; $7955: $82

jr_0de_7956:
    rst $00                                       ; $7956: $c7
    rst $38                                       ; $7957: $ff
    ld [bc], a                                    ; $7958: $02
    ld a, b                                       ; $7959: $78
    ld a, [de]                                    ; $795a: $1a
    nop                                           ; $795b: $00
    add d                                         ; $795c: $82
    ld bc, $0207                                  ; $795d: $01 $07 $02
    ld b, $1c                                     ; $7960: $06 $1c
    nop                                           ; $7962: $00
    rst $38                                       ; $7963: $ff
    rlca                                          ; $7964: $07
    ld bc, $07f8                                  ; $7965: $01 $f8 $07
    ld a, [c]                                     ; $7968: $f2
    ld bc, $fef0                                  ; $7969: $01 $f0 $fe
    ld [bc], a                                    ; $796c: $02
    inc [hl]                                      ; $796d: $34
    ld [bc], a                                    ; $796e: $02
    ld l, l                                       ; $796f: $6d
    ld [bc], a                                    ; $7970: $02
    ld hl, $0002                                  ; $7971: $21 $02 $00
    ld [bc], a                                    ; $7974: $02
    ld [$4002], sp                                ; $7975: $08 $02 $40
    ld [bc], a                                    ; $7978: $02
    nop                                           ; $7979: $00
    ld [bc], a                                    ; $797a: $02
    db $10                                        ; $797b: $10
    add e                                         ; $797c: $83
    ld b, b                                       ; $797d: $40
    nop                                           ; $797e: $00
    jr nz, @+$0f                                  ; $797f: $20 $0d

    nop                                           ; $7981: $00
    rst $38                                       ; $7982: $ff
    dec bc                                        ; $7983: $0b
    inc bc                                        ; $7984: $03
    ld hl, sp+$07                                 ; $7985: $f8 $07
    ld a, [c]                                     ; $7987: $f2
    ld bc, $f7ea                                  ; $7988: $01 $ea $f7
    db $ec                                        ; $798b: $ec
    db $fc                                        ; $798c: $fc
    ld a, [$02fb]                                 ; $798d: $fa $fb $02
    inc c                                         ; $7990: $0c
    ld [bc], a                                    ; $7991: $02
    ld [de], a                                    ; $7992: $12
    adc [hl]                                      ; $7993: $8e
    ld [hl], $26                                  ; $7994: $36 $26
    ld b, a                                       ; $7996: $47
    ld b, l                                       ; $7997: $45
    ld e, a                                       ; $7998: $5f
    ld c, [hl]                                    ; $7999: $4e
    ld b, a                                       ; $799a: $47
    ld b, d                                       ; $799b: $42
    ld l, a                                       ; $799c: $6f
    ld c, b                                       ; $799d: $48
    ld l, a                                       ; $799e: $6f
    ld l, h                                       ; $799f: $6c
    cp a                                          ; $79a0: $bf
    cp d                                          ; $79a1: $ba
    ld [bc], a                                    ; $79a2: $02
    rra                                           ; $79a3: $1f
    ld [bc], a                                    ; $79a4: $02
    rlca                                          ; $79a5: $07
    add a                                         ; $79a6: $87
    ld a, [bc]                                    ; $79a7: $0a
    rrca                                          ; $79a8: $0f
    ld a, [bc]                                    ; $79a9: $0a
    rrca                                          ; $79aa: $0f
    inc c                                         ; $79ab: $0c
    rrca                                          ; $79ac: $0f
    dec b                                         ; $79ad: $05
    ld [bc], a                                    ; $79ae: $02
    rlca                                          ; $79af: $07
    add c                                         ; $79b0: $81
    ld b, $02                                     ; $79b1: $06 $02
    db $10                                        ; $79b3: $10
    adc h                                         ; $79b4: $8c
    jr jr_0de_79bf                                ; $79b5: $18 $08

    jr jr_0de_79c1                                ; $79b7: $18 $08

    inc e                                         ; $79b9: $1c
    inc b                                         ; $79ba: $04
    ld e, $0a                                     ; $79bb: $1e $0a
    ld e, $02                                     ; $79bd: $1e $02

jr_0de_79bf:
    inc e                                         ; $79bf: $1c
    inc b                                         ; $79c0: $04

jr_0de_79c1:
    ld [bc], a                                    ; $79c1: $02
    jr jr_0de_79c6                                ; $79c2: $18 $02

    inc b                                         ; $79c4: $04
    adc [hl]                                      ; $79c5: $8e

jr_0de_79c6:
    inc d                                         ; $79c6: $14
    inc e                                         ; $79c7: $1c
    ld a, [de]                                    ; $79c8: $1a
    ld e, $1a                                     ; $79c9: $1e $1a
    ld e, $1a                                     ; $79cb: $1e $1a
    ld e, $1a                                     ; $79cd: $1e $1a
    ld e, $fe                                     ; $79cf: $1e $fe
    adc $ff                                       ; $79d1: $ce $ff
    pop de                                        ; $79d3: $d1
    ld [bc], a                                    ; $79d4: $02
    nop                                           ; $79d5: $00
    ld [bc], a                                    ; $79d6: $02
    add b                                         ; $79d7: $80
    add h                                         ; $79d8: $84
    cp e                                          ; $79d9: $bb
    rst $38                                       ; $79da: $ff
    rst $30                                       ; $79db: $f7
    rst $38                                       ; $79dc: $ff
    ld [bc], a                                    ; $79dd: $02
    cp $02                                        ; $79de: $fe $02
    ld a, [hl]                                    ; $79e0: $7e
    add c                                         ; $79e1: $81
    add hl, hl                                    ; $79e2: $29
    inc bc                                        ; $79e3: $03
    ccf                                           ; $79e4: $3f
    stop                                          ; $79e5: $10 $00
    rst $38                                       ; $79e7: $ff
    rlca                                          ; $79e8: $07
    ld bc, $07f8                                  ; $79e9: $01 $f8 $07
    ld a, [c]                                     ; $79ec: $f2
    ld bc, $f9eb                                  ; $79ed: $01 $eb $f9
    ld [bc], a                                    ; $79f0: $02
    jr nc, jr_0de_79f5                            ; $79f1: $30 $02

    jr nz, jr_0de_79f7                            ; $79f3: $20 $02

jr_0de_79f5:
    ldh [rSC], a                                  ; $79f5: $e0 $02

jr_0de_79f7:
    add b                                         ; $79f7: $80
    ld [bc], a                                    ; $79f8: $02
    ldh [rDIV], a                                 ; $79f9: $e0 $04
    ld b, b                                       ; $79fb: $40
    inc b                                         ; $79fc: $04
    nop                                           ; $79fd: $00
    add c                                         ; $79fe: $81
    inc bc                                        ; $79ff: $03
    dec c                                         ; $7a00: $0d
    nop                                           ; $7a01: $00
    rst $38                                       ; $7a02: $ff
    dec c                                         ; $7a03: $0d
    inc b                                         ; $7a04: $04
    ld hl, sp+$07                                 ; $7a05: $f8 $07
    ld a, [c]                                     ; $7a07: $f2
    ld bc, $faea                                  ; $7a08: $01 $ea $fa
    ld [$fa00], a                                 ; $7a0b: $ea $00 $fa
    ld a, [$fffa]                                 ; $7a0e: $fa $fa $ff
    rst $08                                       ; $7a11: $cf
    rrca                                          ; $7a12: $0f
    nop                                           ; $7a13: $00
    dec e                                         ; $7a14: $1d
    nop                                           ; $7a15: $00
    ccf                                           ; $7a16: $3f
    nop                                           ; $7a17: $00
    ccf                                           ; $7a18: $3f
    nop                                           ; $7a19: $00
    ccf                                           ; $7a1a: $3f
    nop                                           ; $7a1b: $00
    ccf                                           ; $7a1c: $3f
    nop                                           ; $7a1d: $00
    ld a, [hl+]                                   ; $7a1e: $2a
    nop                                           ; $7a1f: $00
    rla                                           ; $7a20: $17
    nop                                           ; $7a21: $00
    jr jr_0de_7a24                                ; $7a22: $18 $00

jr_0de_7a24:
    rrca                                          ; $7a24: $0f
    nop                                           ; $7a25: $00
    jr c, jr_0de_7a28                             ; $7a26: $38 $00

jr_0de_7a28:
    ld h, a                                       ; $7a28: $67
    nop                                           ; $7a29: $00
    ld h, d                                       ; $7a2a: $62
    nop                                           ; $7a2b: $00
    ldh [rP1], a                                  ; $7a2c: $e0 $00
    ret nz                                        ; $7a2e: $c0

    nop                                           ; $7a2f: $00
    ret nz                                        ; $7a30: $c0

    nop                                           ; $7a31: $00
    jr nz, jr_0de_7a34                            ; $7a32: $20 $00

jr_0de_7a34:
    jr nc, jr_0de_7a36                            ; $7a34: $30 $00

jr_0de_7a36:
    jr c, jr_0de_7a38                             ; $7a36: $38 $00

jr_0de_7a38:
    jr c, jr_0de_7a3a                             ; $7a38: $38 $00

jr_0de_7a3a:
    jr c, jr_0de_7a3c                             ; $7a3a: $38 $00

jr_0de_7a3c:
    jr jr_0de_7a3e                                ; $7a3c: $18 $00

jr_0de_7a3e:
    jr z, jr_0de_7a40                             ; $7a3e: $28 $00

jr_0de_7a40:
    stop                                          ; $7a40: $10 $00
    jr nc, jr_0de_7a44                            ; $7a42: $30 $00

jr_0de_7a44:
    jr nz, jr_0de_7a46                            ; $7a44: $20 $00

jr_0de_7a46:
    jr c, jr_0de_7a48                             ; $7a46: $38 $00

jr_0de_7a48:
    inc c                                         ; $7a48: $0c
    nop                                           ; $7a49: $00
    inc c                                         ; $7a4a: $0c
    nop                                           ; $7a4b: $00
    ld c, $00                                     ; $7a4c: $0e $00
    ld b, $00                                     ; $7a4e: $06 $00
    inc bc                                        ; $7a50: $03
    nop                                           ; $7a51: $00
    ret nz                                        ; $7a52: $c0

    nop                                           ; $7a53: $00
    ret nz                                        ; $7a54: $c0

    nop                                           ; $7a55: $00
    jr nz, jr_0de_7a58                            ; $7a56: $20 $00

jr_0de_7a58:
    jr nz, jr_0de_7a5a                            ; $7a58: $20 $00

jr_0de_7a5a:
    ld b, b                                       ; $7a5a: $40
    nop                                           ; $7a5b: $00
    ld b, c                                       ; $7a5c: $41
    nop                                           ; $7a5d: $00
    scf                                           ; $7a5e: $37
    nop                                           ; $7a5f: $00
    jr @+$13                                      ; $7a60: $18 $11

    nop                                           ; $7a62: $00
    adc a                                         ; $7a63: $8f
    inc bc                                        ; $7a64: $03
    nop                                           ; $7a65: $00
    dec bc                                        ; $7a66: $0b
    nop                                           ; $7a67: $00
    inc c                                         ; $7a68: $0c
    nop                                           ; $7a69: $00
    inc b                                         ; $7a6a: $04
    nop                                           ; $7a6b: $00
    ld a, [bc]                                    ; $7a6c: $0a

Jump_0de_7a6d:
    nop                                           ; $7a6d: $00
    ld [de], a                                    ; $7a6e: $12
    nop                                           ; $7a6f: $00
    inc c                                         ; $7a70: $0c
    nop                                           ; $7a71: $00
    jr jr_0de_7a85                                ; $7a72: $18 $11

    nop                                           ; $7a74: $00
    rst $38                                       ; $7a75: $ff
    dec c                                         ; $7a76: $0d
    inc b                                         ; $7a77: $04
    ld hl, sp+$07                                 ; $7a78: $f8 $07
    ld a, [c]                                     ; $7a7a: $f2
    ld bc, $faea                                  ; $7a7b: $01 $ea $fa
    ld [$faff], a                                 ; $7a7e: $ea $ff $fa
    ld a, [$fefa]                                 ; $7a81: $fa $fa $fe
    rst $08                                       ; $7a84: $cf

jr_0de_7a85:
    rrca                                          ; $7a85: $0f
    nop                                           ; $7a86: $00
    dec e                                         ; $7a87: $1d
    nop                                           ; $7a88: $00
    ccf                                           ; $7a89: $3f
    nop                                           ; $7a8a: $00
    ccf                                           ; $7a8b: $3f
    nop                                           ; $7a8c: $00
    ccf                                           ; $7a8d: $3f
    nop                                           ; $7a8e: $00
    ccf                                           ; $7a8f: $3f
    nop                                           ; $7a90: $00
    inc h                                         ; $7a91: $24
    nop                                           ; $7a92: $00
    ld d, $00                                     ; $7a93: $16 $00
    ld de, $0e00                                  ; $7a95: $11 $00 $0e
    nop                                           ; $7a98: $00
    jr jr_0de_7a9b                                ; $7a99: $18 $00

jr_0de_7a9b:
    daa                                           ; $7a9b: $27
    nop                                           ; $7a9c: $00
    ld h, d                                       ; $7a9d: $62
    nop                                           ; $7a9e: $00
    ld h, b                                       ; $7a9f: $60
    nop                                           ; $7aa0: $00
    ldh [rP1], a                                  ; $7aa1: $e0 $00
    ret nz                                        ; $7aa3: $c0

    nop                                           ; $7aa4: $00
    stop                                          ; $7aa5: $10 $00
    jr jr_0de_7aa9                                ; $7aa7: $18 $00

jr_0de_7aa9:
    inc e                                         ; $7aa9: $1c
    nop                                           ; $7aaa: $00
    inc e                                         ; $7aab: $1c
    nop                                           ; $7aac: $00
    inc e                                         ; $7aad: $1c
    nop                                           ; $7aae: $00
    inc c                                         ; $7aaf: $0c
    nop                                           ; $7ab0: $00
    jr jr_0de_7ab3                                ; $7ab1: $18 $00

jr_0de_7ab3:
    ld [$1800], sp                                ; $7ab3: $08 $00 $18
    nop                                           ; $7ab6: $00
    stop                                          ; $7ab7: $10 $00
    inc e                                         ; $7ab9: $1c
    nop                                           ; $7aba: $00
    ld b, $00                                     ; $7abb: $06 $00
    dec b                                         ; $7abd: $05
    nop                                           ; $7abe: $00
    inc bc                                        ; $7abf: $03
    nop                                           ; $7ac0: $00
    inc bc                                        ; $7ac1: $03
    nop                                           ; $7ac2: $00
    inc bc                                        ; $7ac3: $03
    nop                                           ; $7ac4: $00
    add b                                         ; $7ac5: $80
    nop                                           ; $7ac6: $00
    ret nz                                        ; $7ac7: $c0

    nop                                           ; $7ac8: $00
    ldh [rP1], a                                  ; $7ac9: $e0 $00
    ld b, b                                       ; $7acb: $40
    nop                                           ; $7acc: $00
    ld b, d                                       ; $7acd: $42
    nop                                           ; $7ace: $00
    jr nz, jr_0de_7ad1                            ; $7acf: $20 $00

jr_0de_7ad1:
    ld e, $00                                     ; $7ad1: $1e $00
    ld bc, $0011                                  ; $7ad3: $01 $11 $00
    adc a                                         ; $7ad6: $8f
    ld bc, $0600                                  ; $7ad7: $01 $00 $06
    nop                                           ; $7ada: $00
    ld [bc], a                                    ; $7adb: $02
    nop                                           ; $7adc: $00
    ld c, $00                                     ; $7add: $0e $00
    ld [bc], a                                    ; $7adf: $02
    nop                                           ; $7ae0: $00
    dec c                                         ; $7ae1: $0d
    nop                                           ; $7ae2: $00
    ld [bc], a                                    ; $7ae3: $02
    nop                                           ; $7ae4: $00
    ld c, $11                                     ; $7ae5: $0e $11
    nop                                           ; $7ae7: $00
    rst $38                                       ; $7ae8: $ff
    dec c                                         ; $7ae9: $0d
    inc b                                         ; $7aea: $04
    ld hl, sp+$07                                 ; $7aeb: $f8 $07
    ld a, [c]                                     ; $7aed: $f2
    ld bc, $faeb                                  ; $7aee: $01 $eb $fa
    db $eb                                        ; $7af1: $eb
    rst $38                                       ; $7af2: $ff
    ei                                            ; $7af3: $fb
    ld a, [$fffb]                                 ; $7af4: $fa $fb $ff
    call Call_000_000f                            ; $7af7: $cd $0f $00
    dec e                                         ; $7afa: $1d
    nop                                           ; $7afb: $00
    ccf                                           ; $7afc: $3f
    nop                                           ; $7afd: $00
    ccf                                           ; $7afe: $3f
    nop                                           ; $7aff: $00
    ccf                                           ; $7b00: $3f
    nop                                           ; $7b01: $00
    ccf                                           ; $7b02: $3f
    nop                                           ; $7b03: $00
    inc h                                         ; $7b04: $24
    nop                                           ; $7b05: $00
    ld d, $00                                     ; $7b06: $16 $00
    ld de, $0a00                                  ; $7b08: $11 $00 $0a
    nop                                           ; $7b0b: $00
    ccf                                           ; $7b0c: $3f
    nop                                           ; $7b0d: $00
    ld [hl+], a                                   ; $7b0e: $22
    nop                                           ; $7b0f: $00
    ld h, b                                       ; $7b10: $60
    nop                                           ; $7b11: $00
    ld h, b                                       ; $7b12: $60
    nop                                           ; $7b13: $00
    ret nz                                        ; $7b14: $c0

    nop                                           ; $7b15: $00
    add b                                         ; $7b16: $80
    nop                                           ; $7b17: $00
    stop                                          ; $7b18: $10 $00
    jr jr_0de_7b1c                                ; $7b1a: $18 $00

jr_0de_7b1c:
    inc e                                         ; $7b1c: $1c
    nop                                           ; $7b1d: $00
    inc e                                         ; $7b1e: $1c
    nop                                           ; $7b1f: $00
    inc e                                         ; $7b20: $1c
    nop                                           ; $7b21: $00
    inc c                                         ; $7b22: $0c
    nop                                           ; $7b23: $00
    jr jr_0de_7b26                                ; $7b24: $18 $00

jr_0de_7b26:
    ld [$1800], sp                                ; $7b26: $08 $00 $18
    nop                                           ; $7b29: $00
    stop                                          ; $7b2a: $10 $00
    inc e                                         ; $7b2c: $1c
    nop                                           ; $7b2d: $00
    ld b, $00                                     ; $7b2e: $06 $00
    ld b, $00                                     ; $7b30: $06 $00
    inc bc                                        ; $7b32: $03
    nop                                           ; $7b33: $00
    inc bc                                        ; $7b34: $03
    nop                                           ; $7b35: $00
    inc bc                                        ; $7b36: $03
    nop                                           ; $7b37: $00
    ret nz                                        ; $7b38: $c0

    nop                                           ; $7b39: $00
    ret nz                                        ; $7b3a: $c0

    nop                                           ; $7b3b: $00
    ld b, e                                       ; $7b3c: $43
    nop                                           ; $7b3d: $00
    ld b, b                                       ; $7b3e: $40
    nop                                           ; $7b3f: $00
    ld [hl+], a                                   ; $7b40: $22
    nop                                           ; $7b41: $00
    dec a                                         ; $7b42: $3d
    nop                                           ; $7b43: $00
    ld bc, $0013                                  ; $7b44: $01 $13 $00
    adc l                                         ; $7b47: $8d
    dec bc                                        ; $7b48: $0b
    nop                                           ; $7b49: $00
    inc e                                         ; $7b4a: $1c
    nop                                           ; $7b4b: $00
    inc b                                         ; $7b4c: $04
    nop                                           ; $7b4d: $00
    inc d                                         ; $7b4e: $14
    nop                                           ; $7b4f: $00
    inc b                                         ; $7b50: $04
    nop                                           ; $7b51: $00
    inc b                                         ; $7b52: $04
    nop                                           ; $7b53: $00
    jr jr_0de_7b69                                ; $7b54: $18 $13

    nop                                           ; $7b56: $00
    rst $38                                       ; $7b57: $ff
    dec c                                         ; $7b58: $0d
    inc b                                         ; $7b59: $04
    ld hl, sp+$07                                 ; $7b5a: $f8 $07
    ld a, [c]                                     ; $7b5c: $f2
    ld bc, $faea                                  ; $7b5d: $01 $ea $fa
    ld [$faff], a                                 ; $7b60: $ea $ff $fa
    ld a, [$fffa]                                 ; $7b63: $fa $fa $ff
    rst $08                                       ; $7b66: $cf
    rrca                                          ; $7b67: $0f
    nop                                           ; $7b68: $00

jr_0de_7b69:
    dec e                                         ; $7b69: $1d
    nop                                           ; $7b6a: $00
    ccf                                           ; $7b6b: $3f
    nop                                           ; $7b6c: $00
    ccf                                           ; $7b6d: $3f
    nop                                           ; $7b6e: $00
    ccf                                           ; $7b6f: $3f
    nop                                           ; $7b70: $00
    ccf                                           ; $7b71: $3f
    nop                                           ; $7b72: $00
    ld a, [hl+]                                   ; $7b73: $2a
    nop                                           ; $7b74: $00
    rla                                           ; $7b75: $17
    nop                                           ; $7b76: $00
    jr jr_0de_7b79                                ; $7b77: $18 $00

jr_0de_7b79:
    rrca                                          ; $7b79: $0f
    nop                                           ; $7b7a: $00
    jr c, jr_0de_7b7d                             ; $7b7b: $38 $00

jr_0de_7b7d:
    ld h, a                                       ; $7b7d: $67
    nop                                           ; $7b7e: $00
    ld h, d                                       ; $7b7f: $62
    nop                                           ; $7b80: $00
    ldh [rP1], a                                  ; $7b81: $e0 $00
    ret nz                                        ; $7b83: $c0

    nop                                           ; $7b84: $00
    ret nz                                        ; $7b85: $c0

    nop                                           ; $7b86: $00
    stop                                          ; $7b87: $10 $00
    jr jr_0de_7b8b                                ; $7b89: $18 $00

jr_0de_7b8b:
    inc e                                         ; $7b8b: $1c
    nop                                           ; $7b8c: $00
    inc e                                         ; $7b8d: $1c
    nop                                           ; $7b8e: $00
    inc e                                         ; $7b8f: $1c
    nop                                           ; $7b90: $00
    inc c                                         ; $7b91: $0c
    nop                                           ; $7b92: $00
    inc d                                         ; $7b93: $14
    nop                                           ; $7b94: $00
    ld [$1800], sp                                ; $7b95: $08 $00 $18
    nop                                           ; $7b98: $00
    stop                                          ; $7b99: $10 $00
    inc e                                         ; $7b9b: $1c
    nop                                           ; $7b9c: $00
    ld b, $00                                     ; $7b9d: $06 $00
    ld b, $00                                     ; $7b9f: $06 $00
    rlca                                          ; $7ba1: $07
    nop                                           ; $7ba2: $00
    inc bc                                        ; $7ba3: $03
    nop                                           ; $7ba4: $00
    inc bc                                        ; $7ba5: $03
    nop                                           ; $7ba6: $00
    ret nz                                        ; $7ba7: $c0

    nop                                           ; $7ba8: $00
    ret nz                                        ; $7ba9: $c0

    nop                                           ; $7baa: $00
    jr nz, jr_0de_7bad                            ; $7bab: $20 $00

jr_0de_7bad:
    ld b, b                                       ; $7bad: $40
    nop                                           ; $7bae: $00
    ld b, b                                       ; $7baf: $40
    nop                                           ; $7bb0: $00
    ld b, b                                       ; $7bb1: $40
    nop                                           ; $7bb2: $00
    cpl                                           ; $7bb3: $2f
    nop                                           ; $7bb4: $00
    jr c, jr_0de_7bc8                             ; $7bb5: $38 $11

    nop                                           ; $7bb7: $00
    adc l                                         ; $7bb8: $8d
    inc bc                                        ; $7bb9: $03
    nop                                           ; $7bba: $00
    inc bc                                        ; $7bbb: $03
    nop                                           ; $7bbc: $00
    inc b                                         ; $7bbd: $04
    nop                                           ; $7bbe: $00
    inc c                                         ; $7bbf: $0c
    nop                                           ; $7bc0: $00
    inc c                                         ; $7bc1: $0c
    nop                                           ; $7bc2: $00
    inc d                                         ; $7bc3: $14
    nop                                           ; $7bc4: $00
    jr jr_0de_7bda                                ; $7bc5: $18 $13

    nop                                           ; $7bc7: $00

jr_0de_7bc8:
    rst $38                                       ; $7bc8: $ff
    dec c                                         ; $7bc9: $0d
    inc b                                         ; $7bca: $04
    ld hl, sp+$07                                 ; $7bcb: $f8 $07
    ld a, [c]                                     ; $7bcd: $f2
    ld bc, $faea                                  ; $7bce: $01 $ea $fa
    ld [$faff], a                                 ; $7bd1: $ea $ff $fa
    ei                                            ; $7bd4: $fb
    ld a, [$cfff]                                 ; $7bd5: $fa $ff $cf
    rrca                                          ; $7bd8: $0f
    nop                                           ; $7bd9: $00

jr_0de_7bda:
    dec e                                         ; $7bda: $1d
    nop                                           ; $7bdb: $00
    ccf                                           ; $7bdc: $3f
    nop                                           ; $7bdd: $00
    ccf                                           ; $7bde: $3f
    nop                                           ; $7bdf: $00
    ccf                                           ; $7be0: $3f
    nop                                           ; $7be1: $00
    scf                                           ; $7be2: $37
    nop                                           ; $7be3: $00
    dec e                                         ; $7be4: $1d
    nop                                           ; $7be5: $00
    inc de                                        ; $7be6: $13
    nop                                           ; $7be7: $00
    inc e                                         ; $7be8: $1c
    nop                                           ; $7be9: $00
    dec bc                                        ; $7bea: $0b
    nop                                           ; $7beb: $00
    jr c, jr_0de_7bee                             ; $7bec: $38 $00

jr_0de_7bee:
    ld h, a                                       ; $7bee: $67
    nop                                           ; $7bef: $00
    and d                                         ; $7bf0: $a2
    nop                                           ; $7bf1: $00
    ret nz                                        ; $7bf2: $c0

    nop                                           ; $7bf3: $00
    ret nz                                        ; $7bf4: $c0

    nop                                           ; $7bf5: $00
    ret nz                                        ; $7bf6: $c0

    nop                                           ; $7bf7: $00
    stop                                          ; $7bf8: $10 $00
    jr jr_0de_7bfc                                ; $7bfa: $18 $00

jr_0de_7bfc:
    inc e                                         ; $7bfc: $1c
    nop                                           ; $7bfd: $00
    inc e                                         ; $7bfe: $1c
    nop                                           ; $7bff: $00
    inc e                                         ; $7c00: $1c
    nop                                           ; $7c01: $00
    inc d                                         ; $7c02: $14
    nop                                           ; $7c03: $00
    inc b                                         ; $7c04: $04
    nop                                           ; $7c05: $00
    ld [$0800], sp                                ; $7c06: $08 $00 $08
    nop                                           ; $7c09: $00
    stop                                          ; $7c0a: $10 $00
    jr jr_0de_7c0e                                ; $7c0c: $18 $00

jr_0de_7c0e:
    inc b                                         ; $7c0e: $04
    nop                                           ; $7c0f: $00
    ld b, $00                                     ; $7c10: $06 $00
    ld b, $00                                     ; $7c12: $06 $00
    rlca                                          ; $7c14: $07
    nop                                           ; $7c15: $00
    inc bc                                        ; $7c16: $03
    nop                                           ; $7c17: $00
    add b                                         ; $7c18: $80
    nop                                           ; $7c19: $00
    ld h, b                                       ; $7c1a: $60
    nop                                           ; $7c1b: $00
    ld b, b                                       ; $7c1c: $40
    nop                                           ; $7c1d: $00
    ld [hl], b                                    ; $7c1e: $70
    nop                                           ; $7c1f: $00
    ld b, h                                       ; $7c20: $44
    nop                                           ; $7c21: $00
    or b                                          ; $7c22: $b0
    nop                                           ; $7c23: $00
    ld b, a                                       ; $7c24: $47
    nop                                           ; $7c25: $00
    ld a, b                                       ; $7c26: $78
    ld de, $8d00                                  ; $7c27: $11 $00 $8d
    ld bc, $0300                                  ; $7c2a: $01 $00 $03
    nop                                           ; $7c2d: $00
    rlca                                          ; $7c2e: $07
    nop                                           ; $7c2f: $00
    ld [bc], a                                    ; $7c30: $02
    nop                                           ; $7c31: $00
    ld [bc], a                                    ; $7c32: $02
    nop                                           ; $7c33: $00
    inc b                                         ; $7c34: $04
    nop                                           ; $7c35: $00
    ld [$0013], sp                                ; $7c36: $08 $13 $00
    rst $38                                       ; $7c39: $ff
    dec c                                         ; $7c3a: $0d
    inc b                                         ; $7c3b: $04
    ld hl, sp+$07                                 ; $7c3c: $f8 $07
    ld a, [c]                                     ; $7c3e: $f2
    ld bc, $faeb                                  ; $7c3f: $01 $eb $fa
    db $eb                                        ; $7c42: $eb
    rst $38                                       ; $7c43: $ff
    ei                                            ; $7c44: $fb
    ld a, [$fffb]                                 ; $7c45: $fa $fb $ff
    call Call_000_000f                            ; $7c48: $cd $0f $00
    dec e                                         ; $7c4b: $1d
    nop                                           ; $7c4c: $00
    ccf                                           ; $7c4d: $3f
    nop                                           ; $7c4e: $00
    ccf                                           ; $7c4f: $3f
    nop                                           ; $7c50: $00
    ccf                                           ; $7c51: $3f
    nop                                           ; $7c52: $00
    scf                                           ; $7c53: $37
    nop                                           ; $7c54: $00
    dec e                                         ; $7c55: $1d
    nop                                           ; $7c56: $00
    inc de                                        ; $7c57: $13
    nop                                           ; $7c58: $00
    inc e                                         ; $7c59: $1c
    nop                                           ; $7c5a: $00
    ld a, [bc]                                    ; $7c5b: $0a
    nop                                           ; $7c5c: $00
    ccf                                           ; $7c5d: $3f
    nop                                           ; $7c5e: $00
    ld h, b                                       ; $7c5f: $60
    nop                                           ; $7c60: $00
    ld h, b                                       ; $7c61: $60
    nop                                           ; $7c62: $00
    ret nz                                        ; $7c63: $c0

    nop                                           ; $7c64: $00
    ret nz                                        ; $7c65: $c0

    nop                                           ; $7c66: $00
    ret nz                                        ; $7c67: $c0

    nop                                           ; $7c68: $00
    stop                                          ; $7c69: $10 $00
    jr jr_0de_7c6d                                ; $7c6b: $18 $00

jr_0de_7c6d:
    inc e                                         ; $7c6d: $1c
    nop                                           ; $7c6e: $00
    inc e                                         ; $7c6f: $1c
    nop                                           ; $7c70: $00
    inc e                                         ; $7c71: $1c
    nop                                           ; $7c72: $00
    inc d                                         ; $7c73: $14
    nop                                           ; $7c74: $00
    inc b                                         ; $7c75: $04
    nop                                           ; $7c76: $00
    ld [$0800], sp                                ; $7c77: $08 $00 $08
    nop                                           ; $7c7a: $00
    stop                                          ; $7c7b: $10 $00
    inc e                                         ; $7c7d: $1c
    nop                                           ; $7c7e: $00
    inc b                                         ; $7c7f: $04
    nop                                           ; $7c80: $00
    ld b, $00                                     ; $7c81: $06 $00
    ld b, $00                                     ; $7c83: $06 $00
    inc bc                                        ; $7c85: $03
    nop                                           ; $7c86: $00
    ld bc, $c000                                  ; $7c87: $01 $00 $c0
    nop                                           ; $7c8a: $00
    jr z, jr_0de_7c8d                             ; $7c8b: $28 $00

jr_0de_7c8d:
    inc h                                         ; $7c8d: $24
    nop                                           ; $7c8e: $00
    jr z, jr_0de_7c91                             ; $7c8f: $28 $00

jr_0de_7c91:
    ld [hl+], a                                   ; $7c91: $22
    nop                                           ; $7c92: $00
    dec h                                         ; $7c93: $25
    nop                                           ; $7c94: $00
    inc e                                         ; $7c95: $1c
    inc de                                        ; $7c96: $13
    nop                                           ; $7c97: $00
    adc e                                         ; $7c98: $8b
    inc bc                                        ; $7c99: $03
    nop                                           ; $7c9a: $00
    inc bc                                        ; $7c9b: $03
    nop                                           ; $7c9c: $00
    ld [bc], a                                    ; $7c9d: $02
    nop                                           ; $7c9e: $00
    ld [bc], a                                    ; $7c9f: $02
    nop                                           ; $7ca0: $00
    inc c                                         ; $7ca1: $0c
    nop                                           ; $7ca2: $00
    inc e                                         ; $7ca3: $1c
    dec d                                         ; $7ca4: $15
    nop                                           ; $7ca5: $00
    rst $38                                       ; $7ca6: $ff
    dec c                                         ; $7ca7: $0d
    inc b                                         ; $7ca8: $04
    ld hl, sp+$07                                 ; $7ca9: $f8 $07
    ld a, [c]                                     ; $7cab: $f2
    ld bc, $faea                                  ; $7cac: $01 $ea $fa
    ld [$faff], a                                 ; $7caf: $ea $ff $fa
    ld a, [$fffa]                                 ; $7cb2: $fa $fa $ff
    call Call_000_000f                            ; $7cb5: $cd $0f $00
    dec e                                         ; $7cb8: $1d
    nop                                           ; $7cb9: $00
    ccf                                           ; $7cba: $3f
    nop                                           ; $7cbb: $00
    ccf                                           ; $7cbc: $3f
    nop                                           ; $7cbd: $00
    ccf                                           ; $7cbe: $3f
    nop                                           ; $7cbf: $00
    ccf                                           ; $7cc0: $3f
    nop                                           ; $7cc1: $00
    ld a, [hl+]                                   ; $7cc2: $2a
    nop                                           ; $7cc3: $00
    rla                                           ; $7cc4: $17
    nop                                           ; $7cc5: $00
    jr jr_0de_7cc8                                ; $7cc6: $18 $00

jr_0de_7cc8:
    ld [$3800], sp                                ; $7cc8: $08 $00 $38
    nop                                           ; $7ccb: $00
    ld h, a                                       ; $7ccc: $67
    nop                                           ; $7ccd: $00
    ld h, d                                       ; $7cce: $62
    nop                                           ; $7ccf: $00
    ldh [rP1], a                                  ; $7cd0: $e0 $00
    ret nz                                        ; $7cd2: $c0

    nop                                           ; $7cd3: $00
    ret nz                                        ; $7cd4: $c0

    nop                                           ; $7cd5: $00
    stop                                          ; $7cd6: $10 $00
    jr jr_0de_7cda                                ; $7cd8: $18 $00

jr_0de_7cda:
    inc e                                         ; $7cda: $1c
    nop                                           ; $7cdb: $00
    inc e                                         ; $7cdc: $1c
    nop                                           ; $7cdd: $00
    inc e                                         ; $7cde: $1c
    nop                                           ; $7cdf: $00
    inc c                                         ; $7ce0: $0c
    nop                                           ; $7ce1: $00
    inc d                                         ; $7ce2: $14
    nop                                           ; $7ce3: $00
    ld [$1800], sp                                ; $7ce4: $08 $00 $18
    nop                                           ; $7ce7: $00
    stop                                          ; $7ce8: $10 $00
    inc e                                         ; $7cea: $1c
    nop                                           ; $7ceb: $00
    ld b, $00                                     ; $7cec: $06 $00
    ld b, $00                                     ; $7cee: $06 $00
    rlca                                          ; $7cf0: $07
    nop                                           ; $7cf1: $00
    inc bc                                        ; $7cf2: $03
    nop                                           ; $7cf3: $00
    inc bc                                        ; $7cf4: $03
    nop                                           ; $7cf5: $00
    ret nz                                        ; $7cf6: $c0

    nop                                           ; $7cf7: $00
    ret nz                                        ; $7cf8: $c0

    nop                                           ; $7cf9: $00
    jr nz, jr_0de_7cfc                            ; $7cfa: $20 $00

jr_0de_7cfc:
    jr nc, jr_0de_7cfe                            ; $7cfc: $30 $00

Jump_0de_7cfe:
jr_0de_7cfe:
    jr nc, jr_0de_7d00                            ; $7cfe: $30 $00

jr_0de_7d00:
    jr z, jr_0de_7d02                             ; $7d00: $28 $00

jr_0de_7d02:
    rra                                           ; $7d02: $1f
    inc de                                        ; $7d03: $13
    nop                                           ; $7d04: $00
    adc a                                         ; $7d05: $8f
    inc bc                                        ; $7d06: $03
    nop                                           ; $7d07: $00
    inc bc                                        ; $7d08: $03
    nop                                           ; $7d09: $00
    inc b                                         ; $7d0a: $04
    nop                                           ; $7d0b: $00
    ld [bc], a                                    ; $7d0c: $02
    nop                                           ; $7d0d: $00
    ld [bc], a                                    ; $7d0e: $02
    nop                                           ; $7d0f: $00
    ld [bc], a                                    ; $7d10: $02
    nop                                           ; $7d11: $00
    inc d                                         ; $7d12: $14
    nop                                           ; $7d13: $00
    inc e                                         ; $7d14: $1c
    ld de, $ff00                                  ; $7d15: $11 $00 $ff
    dec c                                         ; $7d18: $0d
    inc b                                         ; $7d19: $04
    ld hl, sp+$07                                 ; $7d1a: $f8 $07
    ld a, [c]                                     ; $7d1c: $f2
    ld bc, $faea                                  ; $7d1d: $01 $ea $fa
    ld [$faff], a                                 ; $7d20: $ea $ff $fa
    ld a, [$fffa]                                 ; $7d23: $fa $fa $ff
    rst $08                                       ; $7d26: $cf
    rrca                                          ; $7d27: $0f
    nop                                           ; $7d28: $00
    dec e                                         ; $7d29: $1d
    nop                                           ; $7d2a: $00
    ccf                                           ; $7d2b: $3f
    nop                                           ; $7d2c: $00
    add hl, sp                                    ; $7d2d: $39
    nop                                           ; $7d2e: $00
    ld h, $00                                     ; $7d2f: $26 $00
    ld [hl-], a                                   ; $7d31: $32
    nop                                           ; $7d32: $00
    dec sp                                        ; $7d33: $3b
    nop                                           ; $7d34: $00
    dec e                                         ; $7d35: $1d
    nop                                           ; $7d36: $00
    jr jr_0de_7d39                                ; $7d37: $18 $00

jr_0de_7d39:
    rla                                           ; $7d39: $17
    nop                                           ; $7d3a: $00
    dec h                                         ; $7d3b: $25
    nop                                           ; $7d3c: $00
    ld h, d                                       ; $7d3d: $62
    nop                                           ; $7d3e: $00
    ld h, l                                       ; $7d3f: $65
    nop                                           ; $7d40: $00
    jp nz, $8200                                  ; $7d41: $c2 $00 $82

    nop                                           ; $7d44: $00
    jp nz, Jump_000_1000                          ; $7d45: $c2 $00 $10

    nop                                           ; $7d48: $00
    jr jr_0de_7d4b                                ; $7d49: $18 $00

jr_0de_7d4b:
    inc e                                         ; $7d4b: $1c
    nop                                           ; $7d4c: $00
    inc c                                         ; $7d4d: $0c
    nop                                           ; $7d4e: $00
    inc d                                         ; $7d4f: $14
    nop                                           ; $7d50: $00
    inc c                                         ; $7d51: $0c
    nop                                           ; $7d52: $00
    inc e                                         ; $7d53: $1c
    nop                                           ; $7d54: $00
    jr jr_0de_7d57                                ; $7d55: $18 $00

jr_0de_7d57:
    jr jr_0de_7d59                                ; $7d57: $18 $00

jr_0de_7d59:
    ld [$0400], sp                                ; $7d59: $08 $00 $04
    nop                                           ; $7d5c: $00
    ld b, $00                                     ; $7d5d: $06 $00
    ld b, $00                                     ; $7d5f: $06 $00
    inc bc                                        ; $7d61: $03
    nop                                           ; $7d62: $00
    ld bc, $0300                                  ; $7d63: $01 $00 $03
    nop                                           ; $7d66: $00
    push hl                                       ; $7d67: $e5
    nop                                           ; $7d68: $00
    db $dd                                        ; $7d69: $dd
    nop                                           ; $7d6a: $00
    ld b, l                                       ; $7d6b: $45
    nop                                           ; $7d6c: $00
    jr z, jr_0de_7d6f                             ; $7d6d: $28 $00

jr_0de_7d6f:
    ld b, b                                       ; $7d6f: $40
    nop                                           ; $7d70: $00
    ld [hl+], a                                   ; $7d71: $22
    nop                                           ; $7d72: $00
    dec a                                         ; $7d73: $3d
    nop                                           ; $7d74: $00
    jr @+$13                                      ; $7d75: $18 $11

    nop                                           ; $7d77: $00
    adc a                                         ; $7d78: $8f
    rlca                                          ; $7d79: $07
    nop                                           ; $7d7a: $00
    inc bc                                        ; $7d7b: $03
    nop                                           ; $7d7c: $00
    ld [bc], a                                    ; $7d7d: $02
    nop                                           ; $7d7e: $00
    inc d                                         ; $7d7f: $14
    nop                                           ; $7d80: $00
    ld [bc], a                                    ; $7d81: $02
    nop                                           ; $7d82: $00
    inc b                                         ; $7d83: $04
    nop                                           ; $7d84: $00
    inc e                                         ; $7d85: $1c
    nop                                           ; $7d86: $00
    jr jr_0de_7d9a                                ; $7d87: $18 $11

    nop                                           ; $7d89: $00
    rst $38                                       ; $7d8a: $ff
    dec c                                         ; $7d8b: $0d
    inc b                                         ; $7d8c: $04
    ld hl, sp+$07                                 ; $7d8d: $f8 $07
    ld a, [c]                                     ; $7d8f: $f2
    ld bc, $faea                                  ; $7d90: $01 $ea $fa
    ld [$faff], a                                 ; $7d93: $ea $ff $fa
    ld a, [$fffa]                                 ; $7d96: $fa $fa $ff
    rst $08                                       ; $7d99: $cf

jr_0de_7d9a:
    rrca                                          ; $7d9a: $0f
    nop                                           ; $7d9b: $00
    dec e                                         ; $7d9c: $1d
    nop                                           ; $7d9d: $00
    ccf                                           ; $7d9e: $3f
    nop                                           ; $7d9f: $00
    jr nc, jr_0de_7da2                            ; $7da0: $30 $00

jr_0de_7da2:
    dec l                                         ; $7da2: $2d
    nop                                           ; $7da3: $00
    ld h, $00                                     ; $7da4: $26 $00
    scf                                           ; $7da6: $37
    nop                                           ; $7da7: $00
    dec de                                        ; $7da8: $1b
    nop                                           ; $7da9: $00
    add hl, de                                    ; $7daa: $19
    nop                                           ; $7dab: $00
    rla                                           ; $7dac: $17
    nop                                           ; $7dad: $00
    dec h                                         ; $7dae: $25
    nop                                           ; $7daf: $00
    ld h, d                                       ; $7db0: $62
    nop                                           ; $7db1: $00
    ld h, l                                       ; $7db2: $65
    nop                                           ; $7db3: $00
    ld h, d                                       ; $7db4: $62
    nop                                           ; $7db5: $00
    ld [c], a                                     ; $7db6: $e2
    nop                                           ; $7db7: $00
    jp nz, Jump_000_1000                          ; $7db8: $c2 $00 $10

    nop                                           ; $7dbb: $00
    jr jr_0de_7dbe                                ; $7dbc: $18 $00

jr_0de_7dbe:
    inc e                                         ; $7dbe: $1c
    nop                                           ; $7dbf: $00
    inc d                                         ; $7dc0: $14
    nop                                           ; $7dc1: $00
    inc b                                         ; $7dc2: $04
    nop                                           ; $7dc3: $00
    inc c                                         ; $7dc4: $0c
    nop                                           ; $7dc5: $00
    inc e                                         ; $7dc6: $1c
    nop                                           ; $7dc7: $00
    jr jr_0de_7dca                                ; $7dc8: $18 $00

jr_0de_7dca:
    jr jr_0de_7dcc                                ; $7dca: $18 $00

jr_0de_7dcc:
    inc b                                         ; $7dcc: $04
    nop                                           ; $7dcd: $00
    ld [bc], a                                    ; $7dce: $02
    nop                                           ; $7dcf: $00
    ld b, $00                                     ; $7dd0: $06 $00
    rlca                                          ; $7dd2: $07
    nop                                           ; $7dd3: $00
    inc bc                                        ; $7dd4: $03
    nop                                           ; $7dd5: $00
    ld bc, $0300                                  ; $7dd6: $01 $00 $03
    nop                                           ; $7dd9: $00
    and a                                         ; $7dda: $a7
    nop                                           ; $7ddb: $00
    ld a, h                                       ; $7ddc: $7c
    nop                                           ; $7ddd: $00
    ld [hl], h                                    ; $7dde: $74
    nop                                           ; $7ddf: $00
    jr z, jr_0de_7de2                             ; $7de0: $28 $00

jr_0de_7de2:
    jr nz, jr_0de_7de4                            ; $7de2: $20 $00

jr_0de_7de4:
    ld [hl-], a                                   ; $7de4: $32
    nop                                           ; $7de5: $00
    dec e                                         ; $7de6: $1d
    nop                                           ; $7de7: $00
    ld bc, $0011                                  ; $7de8: $01 $11 $00
    adc a                                         ; $7deb: $8f
    inc bc                                        ; $7dec: $03
    nop                                           ; $7ded: $00
    ld [de], a                                    ; $7dee: $12
    nop                                           ; $7def: $00
    inc c                                         ; $7df0: $0c
    nop                                           ; $7df1: $00
    ld [bc], a                                    ; $7df2: $02
    nop                                           ; $7df3: $00
    ld [bc], a                                    ; $7df4: $02
    nop                                           ; $7df5: $00
    inc e                                         ; $7df6: $1c
    nop                                           ; $7df7: $00
    inc b                                         ; $7df8: $04
    nop                                           ; $7df9: $00
    jr @+$13                                      ; $7dfa: $18 $11

    nop                                           ; $7dfc: $00
    rst $38                                       ; $7dfd: $ff
    dec c                                         ; $7dfe: $0d
    inc b                                         ; $7dff: $04
    ld hl, sp+$07                                 ; $7e00: $f8 $07
    ld a, [c]                                     ; $7e02: $f2
    ld bc, $faeb                                  ; $7e03: $01 $eb $fa
    db $eb                                        ; $7e06: $eb
    rst $38                                       ; $7e07: $ff
    ei                                            ; $7e08: $fb
    ld a, [$fffb]                                 ; $7e09: $fa $fb $ff
    call Call_000_000f                            ; $7e0c: $cd $0f $00
    dec e                                         ; $7e0f: $1d
    nop                                           ; $7e10: $00
    ccf                                           ; $7e11: $3f
    nop                                           ; $7e12: $00
    jr nc, jr_0de_7e15                            ; $7e13: $30 $00

jr_0de_7e15:
    dec l                                         ; $7e15: $2d
    nop                                           ; $7e16: $00
    ld h, $00                                     ; $7e17: $26 $00
    scf                                           ; $7e19: $37
    nop                                           ; $7e1a: $00
    dec de                                        ; $7e1b: $1b
    nop                                           ; $7e1c: $00
    add hl, de                                    ; $7e1d: $19
    nop                                           ; $7e1e: $00
    rla                                           ; $7e1f: $17
    nop                                           ; $7e20: $00
    dec h                                         ; $7e21: $25
    nop                                           ; $7e22: $00
    ld h, d                                       ; $7e23: $62
    nop                                           ; $7e24: $00
    ld h, l                                       ; $7e25: $65
    nop                                           ; $7e26: $00
    ld h, d                                       ; $7e27: $62
    nop                                           ; $7e28: $00
    jp nz, $e200                                  ; $7e29: $c2 $00 $e2

    nop                                           ; $7e2c: $00
    stop                                          ; $7e2d: $10 $00
    jr jr_0de_7e31                                ; $7e2f: $18 $00

jr_0de_7e31:
    inc e                                         ; $7e31: $1c
    nop                                           ; $7e32: $00
    inc d                                         ; $7e33: $14
    nop                                           ; $7e34: $00
    inc b                                         ; $7e35: $04
    nop                                           ; $7e36: $00
    inc c                                         ; $7e37: $0c
    nop                                           ; $7e38: $00
    inc e                                         ; $7e39: $1c
    nop                                           ; $7e3a: $00
    jr jr_0de_7e3d                                ; $7e3b: $18 $00

jr_0de_7e3d:
    jr jr_0de_7e3f                                ; $7e3d: $18 $00

jr_0de_7e3f:
    ld [$0600], sp                                ; $7e3f: $08 $00 $06
    nop                                           ; $7e42: $00
    ld b, $00                                     ; $7e43: $06 $00
    ld b, $00                                     ; $7e45: $06 $00
    rlca                                          ; $7e47: $07
    nop                                           ; $7e48: $00
    inc bc                                        ; $7e49: $03
    nop                                           ; $7e4a: $00
    ld bc, $a500                                  ; $7e4b: $01 $00 $a5
    nop                                           ; $7e4e: $00
    db $fc                                        ; $7e4f: $fc
    nop                                           ; $7e50: $00
    call nz, $6800                                ; $7e51: $c4 $00 $68
    nop                                           ; $7e54: $00
    ld [de], a                                    ; $7e55: $12
    nop                                           ; $7e56: $00
    dec c                                         ; $7e57: $0d
    nop                                           ; $7e58: $00
    ld bc, $0013                                  ; $7e59: $01 $13 $00
    adc l                                         ; $7e5c: $8d
    inc bc                                        ; $7e5d: $03
    nop                                           ; $7e5e: $00
    inc de                                        ; $7e5f: $13
    nop                                           ; $7e60: $00
    ld a, [bc]                                    ; $7e61: $0a
    nop                                           ; $7e62: $00
    inc b                                         ; $7e63: $04
    nop                                           ; $7e64: $00
    ld [bc], a                                    ; $7e65: $02
    nop                                           ; $7e66: $00
    inc e                                         ; $7e67: $1c
    nop                                           ; $7e68: $00
    inc e                                         ; $7e69: $1c
    inc de                                        ; $7e6a: $13
    nop                                           ; $7e6b: $00
    rst $38                                       ; $7e6c: $ff
    dec c                                         ; $7e6d: $0d
    inc b                                         ; $7e6e: $04
    ld hl, sp+$07                                 ; $7e6f: $f8 $07
    ld a, [c]                                     ; $7e71: $f2
    ld bc, $faea                                  ; $7e72: $01 $ea $fa
    ld [$faff], a                                 ; $7e75: $ea $ff $fa
    ld a, [$fffa]                                 ; $7e78: $fa $fa $ff
    call Call_000_000f                            ; $7e7b: $cd $0f $00
    dec e                                         ; $7e7e: $1d
    nop                                           ; $7e7f: $00
    ccf                                           ; $7e80: $3f
    nop                                           ; $7e81: $00
    add hl, sp                                    ; $7e82: $39
    nop                                           ; $7e83: $00
    ld h, $00                                     ; $7e84: $26 $00
    ld [hl-], a                                   ; $7e86: $32
    nop                                           ; $7e87: $00
    dec sp                                        ; $7e88: $3b
    nop                                           ; $7e89: $00
    dec e                                         ; $7e8a: $1d
    nop                                           ; $7e8b: $00
    jr jr_0de_7e8e                                ; $7e8c: $18 $00

jr_0de_7e8e:
    rla                                           ; $7e8e: $17
    nop                                           ; $7e8f: $00
    dec h                                         ; $7e90: $25
    nop                                           ; $7e91: $00
    ld h, d                                       ; $7e92: $62
    nop                                           ; $7e93: $00
    ld h, l                                       ; $7e94: $65
    nop                                           ; $7e95: $00
    jp nz, $8200                                  ; $7e96: $c2 $00 $82

    nop                                           ; $7e99: $00
    jp nz, Jump_000_1000                          ; $7e9a: $c2 $00 $10

    nop                                           ; $7e9d: $00
    jr jr_0de_7ea0                                ; $7e9e: $18 $00

jr_0de_7ea0:
    inc e                                         ; $7ea0: $1c
    nop                                           ; $7ea1: $00
    inc c                                         ; $7ea2: $0c
    nop                                           ; $7ea3: $00
    inc d                                         ; $7ea4: $14
    nop                                           ; $7ea5: $00
    inc c                                         ; $7ea6: $0c
    nop                                           ; $7ea7: $00
    inc e                                         ; $7ea8: $1c
    nop                                           ; $7ea9: $00
    jr jr_0de_7eac                                ; $7eaa: $18 $00

jr_0de_7eac:
    jr jr_0de_7eae                                ; $7eac: $18 $00

jr_0de_7eae:
    ld [$0400], sp                                ; $7eae: $08 $00 $04
    nop                                           ; $7eb1: $00
    ld b, $00                                     ; $7eb2: $06 $00
    ld b, $00                                     ; $7eb4: $06 $00
    inc bc                                        ; $7eb6: $03
    nop                                           ; $7eb7: $00
    ld bc, $0300                                  ; $7eb8: $01 $00 $03
    nop                                           ; $7ebb: $00
    push hl                                       ; $7ebc: $e5
    nop                                           ; $7ebd: $00
    push hl                                       ; $7ebe: $e5
    nop                                           ; $7ebf: $00
    ld d, l                                       ; $7ec0: $55
    nop                                           ; $7ec1: $00
    jr z, jr_0de_7ec4                             ; $7ec2: $28 $00

jr_0de_7ec4:
    ld [hl+], a                                   ; $7ec4: $22
    nop                                           ; $7ec5: $00
    dec l                                         ; $7ec6: $2d
    nop                                           ; $7ec7: $00
    add hl, de                                    ; $7ec8: $19
    inc de                                        ; $7ec9: $13
    nop                                           ; $7eca: $00
    adc l                                         ; $7ecb: $8d
    rlca                                          ; $7ecc: $07
    nop                                           ; $7ecd: $00
    inc bc                                        ; $7ece: $03
    nop                                           ; $7ecf: $00
    ld [bc], a                                    ; $7ed0: $02
    nop                                           ; $7ed1: $00
    inc d                                         ; $7ed2: $14
    nop                                           ; $7ed3: $00
    inc b                                         ; $7ed4: $04
    nop                                           ; $7ed5: $00
    inc e                                         ; $7ed6: $1c
    nop                                           ; $7ed7: $00
    inc e                                         ; $7ed8: $1c
    inc de                                        ; $7ed9: $13
    nop                                           ; $7eda: $00
    rst $38                                       ; $7edb: $ff
    dec c                                         ; $7edc: $0d
    inc b                                         ; $7edd: $04
    ld hl, sp+$07                                 ; $7ede: $f8 $07
    ld a, [c]                                     ; $7ee0: $f2
    ld bc, $faea                                  ; $7ee1: $01 $ea $fa
    ld [$faff], a                                 ; $7ee4: $ea $ff $fa
    ld a, [$fffa]                                 ; $7ee7: $fa $fa $ff
    rst $08                                       ; $7eea: $cf
    rrca                                          ; $7eeb: $0f
    nop                                           ; $7eec: $00
    dec e                                         ; $7eed: $1d
    nop                                           ; $7eee: $00
    ccf                                           ; $7eef: $3f
    nop                                           ; $7ef0: $00
    jr z, jr_0de_7ef3                             ; $7ef1: $28 $00

jr_0de_7ef3:
    ld h, $00                                     ; $7ef3: $26 $00
    inc sp                                        ; $7ef5: $33
    nop                                           ; $7ef6: $00
    dec a                                         ; $7ef7: $3d
    nop                                           ; $7ef8: $00
    ld e, $00                                     ; $7ef9: $1e $00
    inc e                                         ; $7efb: $1c
    nop                                           ; $7efc: $00
    daa                                           ; $7efd: $27
    nop                                           ; $7efe: $00
    ld b, l                                       ; $7eff: $45
    nop                                           ; $7f00: $00
    ld h, d                                       ; $7f01: $62
    nop                                           ; $7f02: $00
    push hl                                       ; $7f03: $e5
    nop                                           ; $7f04: $00
    jp nz, $8200                                  ; $7f05: $c2 $00 $82

    nop                                           ; $7f08: $00
    jp nz, Jump_000_1000                          ; $7f09: $c2 $00 $10

    nop                                           ; $7f0c: $00
    jr jr_0de_7f0f                                ; $7f0d: $18 $00

jr_0de_7f0f:
    inc e                                         ; $7f0f: $1c
    nop                                           ; $7f10: $00
    inc c                                         ; $7f11: $0c
    nop                                           ; $7f12: $00
    inc d                                         ; $7f13: $14
    nop                                           ; $7f14: $00
    inc b                                         ; $7f15: $04
    nop                                           ; $7f16: $00
    inc e                                         ; $7f17: $1c
    nop                                           ; $7f18: $00
    jr jr_0de_7f1b                                ; $7f19: $18 $00

jr_0de_7f1b:
    jr jr_0de_7f1d                                ; $7f1b: $18 $00

jr_0de_7f1d:
    ld [$0400], sp                                ; $7f1d: $08 $00 $04
    nop                                           ; $7f20: $00
    ld b, $00                                     ; $7f21: $06 $00
    ld b, $00                                     ; $7f23: $06 $00
    ld b, $00                                     ; $7f25: $06 $00
    rlca                                          ; $7f27: $07
    nop                                           ; $7f28: $00
    inc bc                                        ; $7f29: $03
    nop                                           ; $7f2a: $00
    add $00                                       ; $7f2b: $c6 $00
    ld l, c                                       ; $7f2d: $69
    nop                                           ; $7f2e: $00
    ld sp, $4000                                  ; $7f2f: $31 $00 $40
    nop                                           ; $7f32: $00
    ld b, b                                       ; $7f33: $40
    nop                                           ; $7f34: $00
    ld a, [hl-]                                   ; $7f35: $3a
    nop                                           ; $7f36: $00
    dec h                                         ; $7f37: $25
    nop                                           ; $7f38: $00
    inc e                                         ; $7f39: $1c
    ld de, $8d00                                  ; $7f3a: $11 $00 $8d
    dec b                                         ; $7f3d: $05
    nop                                           ; $7f3e: $00
    ld c, $00                                     ; $7f3f: $0e $00
    ld c, $00                                     ; $7f41: $0e $00
    inc d                                         ; $7f43: $14
    nop                                           ; $7f44: $00
    inc b                                         ; $7f45: $04
    nop                                           ; $7f46: $00
    inc c                                         ; $7f47: $0c
    nop                                           ; $7f48: $00
    jr jr_0de_7f5e                                ; $7f49: $18 $13

    nop                                           ; $7f4b: $00
    rst $38                                       ; $7f4c: $ff
    dec c                                         ; $7f4d: $0d
    inc b                                         ; $7f4e: $04
    ld hl, sp+$07                                 ; $7f4f: $f8 $07
    ld a, [c]                                     ; $7f51: $f2
    ld bc, $faeb                                  ; $7f52: $01 $eb $fa
    db $eb                                        ; $7f55: $eb
    rst $38                                       ; $7f56: $ff
    ei                                            ; $7f57: $fb
    ld a, [$fffb]                                 ; $7f58: $fa $fb $ff
    call Call_000_000f                            ; $7f5b: $cd $0f $00

jr_0de_7f5e:
    dec e                                         ; $7f5e: $1d
    nop                                           ; $7f5f: $00
    ccf                                           ; $7f60: $3f
    nop                                           ; $7f61: $00
    jr z, jr_0de_7f64                             ; $7f62: $28 $00

jr_0de_7f64:
    ld h, $00                                     ; $7f64: $26 $00
    inc sp                                        ; $7f66: $33
    nop                                           ; $7f67: $00
    dec a                                         ; $7f68: $3d
    nop                                           ; $7f69: $00
    ld e, $00                                     ; $7f6a: $1e $00
    inc e                                         ; $7f6c: $1c
    nop                                           ; $7f6d: $00
    rla                                           ; $7f6e: $17
    nop                                           ; $7f6f: $00
    ld h, l                                       ; $7f70: $65
    nop                                           ; $7f71: $00
    ld h, d                                       ; $7f72: $62
    nop                                           ; $7f73: $00
    ld h, l                                       ; $7f74: $65
    nop                                           ; $7f75: $00
    ld [c], a                                     ; $7f76: $e2
    nop                                           ; $7f77: $00
    jp nz, $8200                                  ; $7f78: $c2 $00 $82

    nop                                           ; $7f7b: $00
    stop                                          ; $7f7c: $10 $00
    jr jr_0de_7f80                                ; $7f7e: $18 $00

jr_0de_7f80:
    inc e                                         ; $7f80: $1c
    nop                                           ; $7f81: $00
    inc c                                         ; $7f82: $0c
    nop                                           ; $7f83: $00
    inc d                                         ; $7f84: $14
    nop                                           ; $7f85: $00
    inc b                                         ; $7f86: $04
    nop                                           ; $7f87: $00
    inc e                                         ; $7f88: $1c
    nop                                           ; $7f89: $00
    jr jr_0de_7f8c                                ; $7f8a: $18 $00

jr_0de_7f8c:
    jr jr_0de_7f8e                                ; $7f8c: $18 $00

jr_0de_7f8e:
    ld [$0400], sp                                ; $7f8e: $08 $00 $04
    nop                                           ; $7f91: $00
    ld b, $00                                     ; $7f92: $06 $00
    ld b, $00                                     ; $7f94: $06 $00
    ld b, $00                                     ; $7f96: $06 $00
    inc bc                                        ; $7f98: $03
    nop                                           ; $7f99: $00
    rlca                                          ; $7f9a: $07
    nop                                           ; $7f9b: $00
    push bc                                       ; $7f9c: $c5
    nop                                           ; $7f9d: $00
    ret                                           ; $7f9e: $c9


    nop                                           ; $7f9f: $00
    ld d, c                                       ; $7fa0: $51
    nop                                           ; $7fa1: $00
    jr nz, jr_0de_7fa4                            ; $7fa2: $20 $00

jr_0de_7fa4:
    ld b, d                                       ; $7fa4: $42
    nop                                           ; $7fa5: $00
    dec a                                         ; $7fa6: $3d
    nop                                           ; $7fa7: $00
    inc a                                         ; $7fa8: $3c
    inc de                                        ; $7fa9: $13
    nop                                           ; $7faa: $00
    adc e                                         ; $7fab: $8b
    dec b                                         ; $7fac: $05
    nop                                           ; $7fad: $00
    rlca                                          ; $7fae: $07
    nop                                           ; $7faf: $00
    inc bc                                        ; $7fb0: $03
    nop                                           ; $7fb1: $00
    ld d, $00                                     ; $7fb2: $16 $00
    ld [$1000], sp                                ; $7fb4: $08 $00 $10
    dec d                                         ; $7fb7: $15
    nop                                           ; $7fb8: $00
    rst $38                                       ; $7fb9: $ff
    rlca                                          ; $7fba: $07
    ld bc, $07f8                                  ; $7fbb: $01 $f8 $07
    ld a, [c]                                     ; $7fbe: $f2
    ld bc, $fcec                                  ; $7fbf: $01 $ec $fc
    add a                                         ; $7fc2: $87
    add hl, sp                                    ; $7fc3: $39
    nop                                           ; $7fc4: $00
    ld l, h                                       ; $7fc5: $6c
    nop                                           ; $7fc6: $00
    ld d, b                                       ; $7fc7: $50
    nop                                           ; $7fc8: $00
    jr nz, jr_0de_7fd7                            ; $7fc9: $20 $0c

    nop                                           ; $7fcb: $00
    add e                                         ; $7fcc: $83
    ld [bc], a                                    ; $7fcd: $02
    nop                                           ; $7fce: $00
    ld bc, $000a                                  ; $7fcf: $01 $0a $00
    rst $38                                       ; $7fd2: $ff
    rlca                                          ; $7fd3: $07
    ld bc, $07f8                                  ; $7fd4: $01 $f8 $07

jr_0de_7fd7:
    ld a, [c]                                     ; $7fd7: $f2
    ld bc, $feed                                  ; $7fd8: $01 $ed $fe
    add a                                         ; $7fdb: $87
    add hl, sp                                    ; $7fdc: $39
    nop                                           ; $7fdd: $00
    ld e, b                                       ; $7fde: $58
    nop                                           ; $7fdf: $00
    jr nz, jr_0de_7fe2                            ; $7fe0: $20 $00

jr_0de_7fe2:
    ld b, b                                       ; $7fe2: $40
    inc c                                         ; $7fe3: $0c
    nop                                           ; $7fe4: $00
    add e                                         ; $7fe5: $83
    inc b                                         ; $7fe6: $04
    nop                                           ; $7fe7: $00
    ld [bc], a                                    ; $7fe8: $02
    ld a, [bc]                                    ; $7fe9: $0a
    nop                                           ; $7fea: $00
    rst $38                                       ; $7feb: $ff
    rlca                                          ; $7fec: $07
    ld bc, $07f8                                  ; $7fed: $01 $f8 $07
    ld a, [c]                                     ; $7ff0: $f2
    ld bc, $ffeb                                  ; $7ff1: $01 $eb $ff
    adc b                                         ; $7ff4: $88
    nop                                           ; $7ff5: $00
    inc l                                         ; $7ff6: $2c
    nop                                           ; $7ff7: $00
    ld e, d                                       ; $7ff8: $5a
    nop                                           ; $7ff9: $00
    ld d, c                                       ; $7ffa: $51
    nop                                           ; $7ffb: $00
    inc b                                         ; $7ffc: $04
    jr jr_0de_7fff                                ; $7ffd: $18 $00

jr_0de_7fff:
    rst $38                                       ; $7fff: $ff
