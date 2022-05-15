; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d8", ROMX[$4000], BANK[$d8]

    db $d8

Call_0d8_4001:
    ld c, [hl]                                    ; $4001: $4e
    ld bc, $002e                                  ; $4002: $01 $2e $00
    ld [hl], $00                                  ; $4005: $36 $00
    ld a, $00                                     ; $4007: $3e $00
    ld b, [hl]                                    ; $4009: $46
    nop                                           ; $400a: $00
    ld c, [hl]                                    ; $400b: $4e
    nop                                           ; $400c: $00
    ld d, [hl]                                    ; $400d: $56
    nop                                           ; $400e: $00
    ld e, [hl]                                    ; $400f: $5e
    nop                                           ; $4010: $00
    ld h, [hl]                                    ; $4011: $66
    nop                                           ; $4012: $00
    ld l, [hl]                                    ; $4013: $6e
    nop                                           ; $4014: $00
    halt                                          ; $4015: $76
    nop                                           ; $4016: $00
    ld a, [hl]                                    ; $4017: $7e
    nop                                           ; $4018: $00
    adc h                                         ; $4019: $8c
    nop                                           ; $401a: $00
    sub [hl]                                      ; $401b: $96
    nop                                           ; $401c: $00
    sbc [hl]                                      ; $401d: $9e
    nop                                           ; $401e: $00
    or h                                          ; $401f: $b4
    nop                                           ; $4020: $00
    call nz, $da00                                ; $4021: $c4 $00 $da
    nop                                           ; $4024: $00
    or $00                                        ; $4025: $f6 $00
    db $10                                        ; $4027: $10
    ld bc, $0122                                  ; $4028: $01 $22 $01
    jr nc, jr_0d8_402e                            ; $402b: $30 $01

    ld a, [hl-]                                   ; $402d: $3a

jr_0d8_402e:
    ld bc, HeaderNewLicenseeCode                  ; $402e: $01 $44 $01

Jump_0d8_4031:
    ld bc, $fa00                                  ; $4031: $01 $00 $fa
    ld bc, $01fa                                  ; $4034: $01 $fa $01
    ei                                            ; $4037: $fb
    ld sp, hl                                     ; $4038: $f9

Jump_0d8_4039:
    ld bc, $fa02                                  ; $4039: $01 $02 $fa
    ld bc, $01fa                                  ; $403c: $01 $fa $01
    ei                                            ; $403f: $fb
    ld hl, sp+$01                                 ; $4040: $f8 $01
    inc b                                         ; $4042: $04
    ld a, [$fa01]                                 ; $4043: $fa $01 $fa
    ld bc, $f9fb                                  ; $4046: $01 $fb $f9
    ld bc, $fa06                                  ; $4049: $01 $06 $fa
    ld bc, $01fa                                  ; $404c: $01 $fa $01
    ei                                            ; $404f: $fb
    ld sp, hl                                     ; $4050: $f9
    ld bc, $fa08                                  ; $4051: $01 $08 $fa
    ld bc, $01fa                                  ; $4054: $01 $fa $01
    ei                                            ; $4057: $fb
    ld sp, hl                                     ; $4058: $f9
    ld bc, $fa0a                                  ; $4059: $01 $0a $fa
    ld bc, $01fa                                  ; $405c: $01 $fa $01
    ei                                            ; $405f: $fb
    ld sp, hl                                     ; $4060: $f9
    ld bc, $fa0c                                  ; $4061: $01 $0c $fa
    ld bc, $01fa                                  ; $4064: $01 $fa $01
    ei                                            ; $4067: $fb
    ld sp, hl                                     ; $4068: $f9
    ld bc, $fa0e                                  ; $4069: $01 $0e $fa
    ld bc, $01fa                                  ; $406c: $01 $fa $01
    ei                                            ; $406f: $fb
    ld sp, hl                                     ; $4070: $f9
    ld bc, $fa10                                  ; $4071: $01 $10 $fa
    ld bc, $01fa                                  ; $4074: $01 $fa $01
    ei                                            ; $4077: $fb
    ld sp, hl                                     ; $4078: $f9
    ld bc, $fa12                                  ; $4079: $01 $12 $fa
    ld bc, $01fa                                  ; $407c: $01 $fa $01
    ei                                            ; $407f: $fb
    ld sp, hl                                     ; $4080: $f9
    inc b                                         ; $4081: $04
    inc d                                         ; $4082: $14
    nop                                           ; $4083: $00
    rrca                                          ; $4084: $0f
    nop                                           ; $4085: $00
    rrca                                          ; $4086: $0f
    ei                                            ; $4087: $fb
    ei                                            ; $4088: $fb
    ei                                            ; $4089: $fb
    dec c                                         ; $408a: $0d
    dec bc                                        ; $408b: $0b
    ei                                            ; $408c: $fb
    dec bc                                        ; $408d: $0b
    dec c                                         ; $408e: $0d
    ld [bc], a                                    ; $408f: $02
    inc e                                         ; $4090: $1c
    ld a, [$fa06]                                 ; $4091: $fa $06 $fa
    ld b, $fa                                     ; $4094: $06 $fa
    ld a, [$00fa]                                 ; $4096: $fa $fa $00
    ld bc, $fd20                                  ; $4099: $01 $20 $fd
    inc b                                         ; $409c: $04
    db $fc                                        ; $409d: $fc
    inc bc                                        ; $409e: $03
    db $fd                                        ; $409f: $fd
    db $fc                                        ; $40a0: $fc
    ld [$fc22], sp                                ; $40a1: $08 $22 $fc
    inc b                                         ; $40a4: $04
    ld hl, sp+$00                                 ; $40a5: $f8 $00
    db $ed                                        ; $40a7: $ed
    db $ec                                        ; $40a8: $ec
    ld [c], a                                     ; $40a9: $e2
    push af                                       ; $40aa: $f5
    pop hl                                        ; $40ab: $e1
    cp $e7                                        ; $40ac: $fe $e7
    ld b, $ef                                     ; $40ae: $06 $ef
    inc c                                         ; $40b0: $0c
    pop af                                        ; $40b1: $f1
    db $f4                                        ; $40b2: $f4
    pop af                                        ; $40b3: $f1
    db $fc                                        ; $40b4: $fc
    pop af                                        ; $40b5: $f1
    inc b                                         ; $40b6: $04
    dec b                                         ; $40b7: $05
    ld [hl-], a                                   ; $40b8: $32
    db $fc                                        ; $40b9: $fc
    inc b                                         ; $40ba: $04
    ld hl, sp+$00                                 ; $40bb: $f8 $00
    xor $f5                                       ; $40bd: $ee $f5
    db $ec                                        ; $40bf: $ec
    db $fd                                        ; $40c0: $fd
    rst $28                                       ; $40c1: $ef
    inc b                                         ; $40c2: $04
    db $fc                                        ; $40c3: $fc
    ld hl, sp-$04                                 ; $40c4: $f8 $fc
    db $fc                                        ; $40c6: $fc
    ld [$fc3c], sp                                ; $40c7: $08 $3c $fc
    inc b                                         ; $40ca: $04
    ld hl, sp+$00                                 ; $40cb: $f8 $00
    db $ed                                        ; $40cd: $ed
    db $ed                                        ; $40ce: $ed
    jp hl                                         ; $40cf: $e9


    push af                                       ; $40d0: $f5
    ld [$eafd], a                                 ; $40d1: $ea $fd $ea
    dec b                                         ; $40d4: $05
    xor $0c                                       ; $40d5: $ee $0c
    ld sp, hl                                     ; $40d7: $f9
    push af                                       ; $40d8: $f5
    ld sp, hl                                     ; $40d9: $f9
    db $fd                                        ; $40da: $fd
    ld sp, hl                                     ; $40db: $f9
    inc b                                         ; $40dc: $04
    dec bc                                        ; $40dd: $0b
    ld c, h                                       ; $40de: $4c
    db $fc                                        ; $40df: $fc
    inc b                                         ; $40e0: $04
    ld hl, sp+$00                                 ; $40e1: $f8 $00
    jp hl                                         ; $40e3: $e9


    db $ec                                        ; $40e4: $ec
    and $f4                                       ; $40e5: $e6 $f4
    push hl                                       ; $40e7: $e5
    db $fc                                        ; $40e8: $fc
    and $04                                       ; $40e9: $e6 $04
    and $0c                                       ; $40eb: $e6 $0c
    ld [$f50e], a                                 ; $40ed: $ea $0e $f5
    db $ed                                        ; $40f0: $ed
    push af                                       ; $40f1: $f5
    push af                                       ; $40f2: $f5
    push af                                       ; $40f3: $f5
    db $fd                                        ; $40f4: $fd
    push af                                       ; $40f5: $f5

jr_0d8_40f6:
    dec b                                         ; $40f6: $05
    push af                                       ; $40f7: $f5
    ld a, [bc]                                    ; $40f8: $0a
    ld a, [bc]                                    ; $40f9: $0a
    ld h, d                                       ; $40fa: $62
    db $fc                                        ; $40fb: $fc
    inc b                                         ; $40fc: $04
    ld hl, sp+$00                                 ; $40fd: $f8 $00
    ldh a, [$ea]                                  ; $40ff: $f0 $ea
    add sp, -$0e                                  ; $4101: $e8 $f2
    ld hl, sp-$0e                                 ; $4103: $f8 $f2
    db $e4                                        ; $4105: $e4
    ld a, [$faf4]                                 ; $4106: $fa $f4 $fa
    push hl                                       ; $4109: $e5
    ld [bc], a                                    ; $410a: $02
    push af                                       ; $410b: $f5
    ld [bc], a                                    ; $410c: $02
    add sp, $0a                                   ; $410d: $e8 $0a
    ld hl, sp+$0a                                 ; $410f: $f8 $0a
    xor $12                                       ; $4111: $ee $12
    ld b, $76                                     ; $4113: $06 $76
    db $fc                                        ; $4115: $fc
    inc b                                         ; $4116: $04
    ld hl, sp+$00                                 ; $4117: $f8 $00
    push hl                                       ; $4119: $e5
    rst $30                                       ; $411a: $f7
    db $e4                                        ; $411b: $e4
    rst $38                                       ; $411c: $ff
    ld [$f405], a                                 ; $411d: $ea $05 $f4
    push af                                       ; $4120: $f5
    db $f4                                        ; $4121: $f4
    db $fd                                        ; $4122: $fd
    db $f4                                        ; $4123: $f4
    nop                                           ; $4124: $00

jr_0d8_4125:
    inc b                                         ; $4125: $04
    add d                                         ; $4126: $82
    db $fc                                        ; $4127: $fc
    inc b                                         ; $4128: $04
    ld hl, sp+$00                                 ; $4129: $f8 $00
    rst $18                                       ; $412b: $df
    ei                                            ; $412c: $fb
    and $fe                                       ; $412d: $e6 $fe
    rst $28                                       ; $412f: $ef
    ei                                            ; $4130: $fb
    rst $38                                       ; $4131: $ff
    ei                                            ; $4132: $fb
    ld [bc], a                                    ; $4133: $02
    adc d                                         ; $4134: $8a
    db $fc                                        ; $4135: $fc
    inc b                                         ; $4136: $04
    ld hl, sp+$00                                 ; $4137: $f8 $00
    db $e3                                        ; $4139: $e3
    ld a, [$faf3]                                 ; $413a: $fa $f3 $fa
    ld [bc], a                                    ; $413d: $02
    adc [hl]                                      ; $413e: $8e
    or $fe                                        ; $413f: $f6 $fe
    db $fc                                        ; $4141: $fc
    inc b                                         ; $4142: $04
    ld sp, hl                                     ; $4143: $f9
    or $f9                                        ; $4144: $f6 $f9
    ld sp, hl                                     ; $4146: $f9
    ld [bc], a                                    ; $4147: $02
    sub d                                         ; $4148: $92
    ld bc, $fc09                                  ; $4149: $01 $09 $fc
    inc b                                         ; $414c: $04
    ld sp, hl                                     ; $414d: $f9
    nop                                           ; $414e: $00
    ld sp, hl                                     ; $414f: $f9
    inc bc                                        ; $4150: $03
    ld h, b                                       ; $4151: $60
    add hl, bc                                    ; $4152: $09
    rst $08                                       ; $4153: $cf
    inc b                                         ; $4154: $04
    nop                                           ; $4155: $00
    ld c, $02                                     ; $4156: $0e $02
    rra                                           ; $4158: $1f
    dec c                                         ; $4159: $0d
    dec de                                        ; $415a: $1b
    add hl, bc                                    ; $415b: $09
    dec de                                        ; $415c: $1b
    add hl, bc                                    ; $415d: $09
    inc b                                         ; $415e: $04
    rrca                                          ; $415f: $0f
    inc bc                                        ; $4160: $03
    ld c, $0e                                     ; $4161: $0e $0e

jr_0d8_4163:
    nop                                           ; $4163: $00
    ld bc, $0380                                  ; $4164: $01 $80 $03
    ld bc, $02a0                                  ; $4167: $01 $a0 $02
    jr nc, @+$05                                  ; $416a: $30 $03

    jr nz, jr_0d8_40f6                            ; $416c: $20 $88

    ld e, $02                                     ; $416e: $1e $02
    rra                                           ; $4170: $1f
    dec e                                         ; $4171: $1d
    rlca                                          ; $4172: $07
    ld bc, $0e03                                  ; $4173: $01 $03 $0e
    ld b, $1f                                     ; $4176: $06 $1f
    ld bc, $1f1f                                  ; $4178: $01 $1f $1f
    jr nz, jr_0d8_4125                            ; $417b: $20 $a8

    nop                                           ; $417d: $00
    rrca                                          ; $417e: $0f
    inc bc                                        ; $417f: $03
    rrca                                          ; $4180: $0f
    dec c                                         ; $4181: $0d
    rra                                           ; $4182: $1f
    inc bc                                        ; $4183: $03
    ld e, $1e                                     ; $4184: $1e $1e
    db $ed                                        ; $4186: $ed
    ld h, b                                       ; $4187: $60
    adc b                                         ; $4188: $88
    ld a, h                                       ; $4189: $7c
    ld [$003c], sp                                ; $418a: $08 $3c $00
    dec e                                         ; $418d: $1d
    ld h, b                                       ; $418e: $60
    xor b                                         ; $418f: $a8
    ld e, b                                       ; $4190: $58
    nop                                           ; $4191: $00
    rrca                                          ; $4192: $0f
    ld h, h                                       ; $4193: $64
    ld [$4084], sp                                ; $4194: $08 $84 $40
    xor b                                         ; $4197: $a8
    ld c, $02                                     ; $4198: $0e $02
    ld e, $0e                                     ; $419a: $1e $0e
    add h                                         ; $419c: $84
    nop                                           ; $419d: $00
    dec c                                         ; $419e: $0d
    rra                                           ; $419f: $1f
    ld [hl], b                                    ; $41a0: $70
    inc de                                        ; $41a1: $13
    ret nz                                        ; $41a2: $c0

    sbc b                                         ; $41a3: $98
    ld e, h                                       ; $41a4: $5c
    ld [$08a0], sp                                ; $41a5: $08 $a0 $08
    inc c                                         ; $41a8: $0c
    inc b                                         ; $41a9: $04
    inc c                                         ; $41aa: $0c
    inc c                                         ; $41ab: $0c
    pop af                                        ; $41ac: $f1
    ld b, b                                       ; $41ad: $40
    sbc b                                         ; $41ae: $98
    inc a                                         ; $41af: $3c
    ld [$b840], sp                                ; $41b0: $08 $40 $b8
    jr nz, @+$12                                  ; $41b3: $20 $10

    ld de, $0d0f                                  ; $41b5: $11 $0f $0d
    jr nz, jr_0d8_4163                            ; $41b8: $20 $a9

    add b                                         ; $41ba: $80
    cp e                                          ; $41bb: $bb
    nop                                           ; $41bc: $00
    inc hl                                        ; $41bd: $23
    dec a                                         ; $41be: $3d
    ld b, e                                       ; $41bf: $43
    ld [hl], c                                    ; $41c0: $71
    adc a                                         ; $41c1: $8f
    ld l, a                                       ; $41c2: $6f
    sbc a                                         ; $41c3: $9f
    jr nz, jr_0d8_422e                            ; $41c4: $20 $68

    sbc b                                         ; $41c6: $98
    ld [bc], a                                    ; $41c7: $02
    adc b                                         ; $41c8: $88
    add b                                         ; $41c9: $80
    ld hl, sp-$48                                 ; $41ca: $f8 $b8
    call nz, $01bc                                ; $41cc: $c4 $bc $01
    jp nz, $f18e                                  ; $41cf: $c2 $8e $f1

    or $f9                                        ; $41d2: $f6 $f9
    ld d, $19                                     ; $41d4: $16 $19
    ld [bc], a                                    ; $41d6: $02
    adc b                                         ; $41d7: $88
    add b                                         ; $41d8: $80
    ld [hl], $38                                  ; $41d9: $36 $38
    ld l, a                                       ; $41db: $6f
    sbc a                                         ; $41dc: $9f
    ld [hl], c                                    ; $41dd: $71
    adc a                                         ; $41de: $8f
    dec a                                         ; $41df: $3d
    ld b, e                                       ; $41e0: $43
    dec e                                         ; $41e1: $1d
    jr nc, jr_0d8_4207                            ; $41e2: $30 $23

    ld bc, $5148                                  ; $41e4: $01 $48 $51
    ld [hl], $38                                  ; $41e7: $36 $38
    or $f9                                        ; $41e9: $f6 $f9
    adc [hl]                                      ; $41eb: $8e
    pop af                                        ; $41ec: $f1
    ld [bc], a                                    ; $41ed: $02
    cp h                                          ; $41ee: $bc
    jp nz, $c4b8                                  ; $41ef: $c2 $b8 $c4

    add b                                         ; $41f2: $80
    ld hl, sp-$58                                 ; $41f3: $f8 $a8
    ld d, c                                       ; $41f5: $51
    rrca                                          ; $41f6: $0f
    ld [hl+], a                                   ; $41f7: $22
    rlca                                          ; $41f8: $07
    ld [$1002], sp                                ; $41f9: $08 $02 $10
    ld hl, sp+$7f                                 ; $41fc: $f8 $7f
    add b                                         ; $41fe: $80
    ld [bc], a                                    ; $41ff: $02
    ld [$1a07], sp                                ; $4200: $08 $07 $1a
    ld hl, sp+$77                                 ; $4203: $f8 $77
    ld a, b                                       ; $4205: $78
    ld [de], a                                    ; $4206: $12

jr_0d8_4207:
    ld [$0018], sp                                ; $4207: $08 $18 $00
    rlca                                          ; $420a: $07
    ret nc                                        ; $420b: $d0

    ld de, $2120                                  ; $420c: $11 $20 $21
    db $10                                        ; $420f: $10
    jr nc, @+$04                                  ; $4210: $30 $02

    ld [$3e00], sp                                ; $4212: $08 $00 $3e
    dec a                                         ; $4215: $3d
    inc bc                                        ; $4216: $03
    ld [bc], a                                    ; $4217: $02
    ld [$0109], sp                                ; $4218: $08 $09 $01
    ccf                                           ; $421b: $3f
    rra                                           ; $421c: $1f
    ccf                                           ; $421d: $3f
    ld [de], a                                    ; $421e: $12
    jr jr_0d8_4251                                ; $421f: $18 $30

    jr nc, @-$0e                                  ; $4221: $30 $f0

    add hl, bc                                    ; $4223: $09
    nop                                           ; $4224: $00
    ld [$0418], sp                                ; $4225: $08 $18 $04
    inc e                                         ; $4228: $1c
    ld a, [bc]                                    ; $4229: $0a
    ld d, $0d                                     ; $422a: $16 $0d
    inc de                                        ; $422c: $13
    nop                                           ; $422d: $00

jr_0d8_422e:
    dec bc                                        ; $422e: $0b
    rla                                           ; $422f: $17
    ld b, $1e                                     ; $4230: $06 $1e
    inc c                                         ; $4232: $0c
    inc e                                         ; $4233: $1c

jr_0d8_4234:
    ld [$8008], sp                                ; $4234: $08 $08 $80
    inc b                                         ; $4237: $04
    ld l, d                                       ; $4238: $6a

jr_0d8_4239:
    add b                                         ; $4239: $80
    nop                                           ; $423a: $00
    ld b, b                                       ; $423b: $40

jr_0d8_423c:
    nop                                           ; $423c: $00
    jr nz, jr_0d8_423f                            ; $423d: $20 $00

jr_0d8_423f:
    stop                                          ; $423f: $10 $00

jr_0d8_4241:
    nop                                           ; $4241: $00
    ld [$0410], sp                                ; $4242: $08 $10 $04
    ld [$0402], sp                                ; $4245: $08 $02 $04
    ld bc, $0214                                  ; $4248: $01 $14 $02
    nop                                           ; $424b: $00
    ld bc, $5a26                                  ; $424c: $01 $26 $5a
    ld b, b                                       ; $424f: $40
    dec b                                         ; $4250: $05

jr_0d8_4251:
    db $10                                        ; $4251: $10
    jr nz, @+$42                                  ; $4252: $20 $40

    nop                                           ; $4254: $00
    jr nz, jr_0d8_4257                            ; $4255: $20 $00

jr_0d8_4257:
    jr nc, jr_0d8_4259                            ; $4257: $30 $00

jr_0d8_4259:
    db $10                                        ; $4259: $10
    jr nz, jr_0d8_426c                            ; $425a: $20 $10

    jr nz, jr_0d8_425e                            ; $425c: $20 $00

jr_0d8_425e:
    jr @+$22                                      ; $425e: $18 $20

    jr jr_0d8_4262                                ; $4260: $18 $00

jr_0d8_4262:
    inc c                                         ; $4262: $0c
    db $10                                        ; $4263: $10
    inc c                                         ; $4264: $0c
    db $10                                        ; $4265: $10
    rrca                                          ; $4266: $0f
    ld c, $10                                     ; $4267: $0e $10
    ld c, $00                                     ; $4269: $0e $00
    sbc d                                         ; $426b: $9a

jr_0d8_426c:
    ld [$0820], sp                                ; $426c: $08 $20 $08
    inc b                                         ; $426f: $04
    jr jr_0d8_4274                                ; $4270: $18 $02

    jr nz, jr_0d8_4234                            ; $4272: $20 $c0

jr_0d8_4274:
    dec hl                                        ; $4274: $2b
    nop                                           ; $4275: $00
    inc b                                         ; $4276: $04
    jr jr_0d8_4239                                ; $4277: $18 $c0

    jr nz, jr_0d8_423c                            ; $4279: $20 $c1

    jr nz, jr_0d8_425e                            ; $427b: $20 $e1

    db $10                                        ; $427d: $10
    ld b, c                                       ; $427e: $41
    jr nz, jr_0d8_42c7                            ; $427f: $20 $46

    jr nz, jr_0d8_42c3                            ; $4281: $20 $40

    nop                                           ; $4283: $00
    add b                                         ; $4284: $80
    ld b, b                                       ; $4285: $40
    add b                                         ; $4286: $80
    ld l, [hl]                                    ; $4287: $6e
    nop                                           ; $4288: $00
    ld h, b                                       ; $4289: $60
    add b                                         ; $428a: $80
    ld [hl], e                                    ; $428b: $73
    ld [$1007], sp                                ; $428c: $08 $07 $10
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    ld [bc], a                                    ; $4291: $02
    ld bc, $8e04                                  ; $4292: $01 $04 $8e
    ld [hl], b                                    ; $4295: $70
    jr jr_0d8_429c                                ; $4296: $18 $04

    nop                                           ; $4298: $00
    ld [$0083], sp                                ; $4299: $08 $83 $00

jr_0d8_429c:
    dec hl                                        ; $429c: $2b
    jr jr_0d8_4241                                ; $429d: $18 $a2

    ld a, d                                       ; $429f: $7a
    inc b                                         ; $42a0: $04
    nop                                           ; $42a1: $00
    inc bc                                        ; $42a2: $03
    nop                                           ; $42a3: $00
    add c                                         ; $42a4: $81
    ld [bc], a                                    ; $42a5: $02
    pop bc                                        ; $42a6: $c1
    ld [bc], a                                    ; $42a7: $02
    ld h, c                                       ; $42a8: $61
    add d                                         ; $42a9: $82
    nop                                           ; $42aa: $00
    ld sp, $1942                                  ; $42ab: $31 $42 $19
    ld h, b                                       ; $42ae: $60
    inc c                                         ; $42af: $0c
    ld sp, $1906                                  ; $42b0: $31 $06 $19
    ld [bc], a                                    ; $42b3: $02
    inc bc                                        ; $42b4: $03
    inc c                                         ; $42b5: $0c
    ld bc, $0006                                  ; $42b6: $01 $06 $00
    inc bc                                        ; $42b9: $03
    xor d                                         ; $42ba: $aa
    jr jr_0d8_42f5                                ; $42bb: $18 $38

    ld [$b804], sp                                ; $42bd: $08 $04 $b8
    inc b                                         ; $42c0: $04
    ld hl, sp+$02                                 ; $42c1: $f8 $02

jr_0d8_42c3:
    db $10                                        ; $42c3: $10
    ld sp, hl                                     ; $42c4: $f9
    inc b                                         ; $42c5: $04
    ei                                            ; $42c6: $fb

jr_0d8_42c7:
    sub b                                         ; $42c7: $90
    ld [bc], a                                    ; $42c8: $02
    nop                                           ; $42c9: $00
    rst $38                                       ; $42ca: $ff
    nop                                           ; $42cb: $00
    ld [bc], a                                    ; $42cc: $02
    jr @-$3f                                      ; $42cd: $18 $bf

    ld b, b                                       ; $42cf: $40
    ld d, l                                       ; $42d0: $55
    xor d                                         ; $42d1: $aa
    dec bc                                        ; $42d2: $0b
    ld [$00f6], sp                                ; $42d3: $08 $f6 $00
    ld d, l                                       ; $42d6: $55
    sbc b                                         ; $42d7: $98
    ld [$02c0], sp                                ; $42d8: $08 $c0 $02
    nop                                           ; $42db: $00
    ld a, [hl]                                    ; $42dc: $7e
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    ld b, b                                       ; $42df: $40
    add d                                         ; $42e0: $82
    ld b, c                                       ; $42e1: $41
    adc h                                         ; $42e2: $8c
    ld b, d                                       ; $42e3: $42
    sbc b                                         ; $42e4: $98
    inc b                                         ; $42e5: $04
    jr nc, jr_0d8_42e9                            ; $42e6: $30 $01

    adc b                                         ; $42e8: $88

jr_0d8_42e9:
    ld h, b                                       ; $42e9: $60
    sbc b                                         ; $42ea: $98
    ret nz                                        ; $42eb: $c0

    jr nc, @-$7e                                  ; $42ec: $30 $80

    ld h, b                                       ; $42ee: $60
    dec d                                         ; $42ef: $15
    ld [$e1c0], sp                                ; $42f0: $08 $c0 $e1
    add hl, bc                                    ; $42f3: $09
    ld a, [c]                                     ; $42f4: $f2

jr_0d8_42f5:
    nop                                           ; $42f5: $00
    rrca                                          ; $42f6: $0f
    inc b                                         ; $42f7: $04
    dec de                                        ; $42f8: $1b
    ld a, [de]                                    ; $42f9: $1a
    dec h                                         ; $42fa: $25
    ccf                                           ; $42fb: $3f
    db $10                                        ; $42fc: $10
    ld b, b                                       ; $42fd: $40
    ccf                                           ; $42fe: $3f
    ld b, b                                       ; $42ff: $40
    ld h, h                                       ; $4300: $64
    add hl, bc                                    ; $4301: $09
    cp a                                          ; $4302: $bf
    ret nz                                        ; $4303: $c0

    ld e, a                                       ; $4304: $5f
    ld h, b                                       ; $4305: $60
    nop                                           ; $4306: $00
    dec hl                                        ; $4307: $2b
    inc [hl]                                      ; $4308: $34
    dec [hl]                                      ; $4309: $35
    ld a, [hl-]                                   ; $430a: $3a
    cpl                                           ; $430b: $2f
    jr nc, jr_0d8_4333                            ; $430c: $30 $25

    ld a, [hl-]                                   ; $430e: $3a
    nop                                           ; $430f: $00
    ld a, [bc]                                    ; $4310: $0a
    dec d                                         ; $4311: $15
    nop                                           ; $4312: $00
    ld a, h                                       ; $4313: $7c
    inc a                                         ; $4314: $3c
    jp nz, $a15e                                  ; $4315: $c2 $5e $a1

    ld c, $7f                                     ; $4318: $0e $7f
    add b                                         ; $431a: $80
    ccf                                           ; $431b: $3f
    ret nz                                        ; $431c: $c0

    ld a, [de]                                    ; $431d: $1a

jr_0d8_431e:
    nop                                           ; $431e: $00
    jr nz, jr_0d8_4321                            ; $431f: $20 $00

jr_0d8_4321:
    ld h, b                                       ; $4321: $60
    jr jr_0d8_431e                                ; $4322: $18 $fa

    nop                                           ; $4324: $00
    dec b                                         ; $4325: $05
    push af                                       ; $4326: $f5
    ld a, [bc]                                    ; $4327: $0a
    ld a, [$5405]                                 ; $4328: $fa $05 $54
    xor e                                         ; $432b: $ab
    and l                                         ; $432c: $a5
    ld b, b                                       ; $432d: $40
    ld e, a                                       ; $432e: $5f
    ccf                                           ; $432f: $3f
    ld bc, $7070                                  ; $4330: $01 $70 $70

jr_0d8_4333:
    ld [$0478], sp                                ; $4333: $08 $78 $04
    ld a, h                                       ; $4336: $7c
    nop                                           ; $4337: $00
    inc b                                         ; $4338: $04
    ld l, b                                       ; $4339: $68
    inc d                                         ; $433a: $14
    ld [hl], h                                    ; $433b: $74
    inc c                                         ; $433c: $0c
    ld l, h                                       ; $433d: $6c
    inc d                                         ; $433e: $14
    ld [hl], b                                    ; $433f: $70
    nop                                           ; $4340: $00
    ld c, $7c                                     ; $4341: $0e $7c
    ld [bc], a                                    ; $4343: $02
    ld e, $61                                     ; $4344: $1e $61
    ld e, h                                       ; $4346: $5c
    ld h, e                                       ; $4347: $63
    add hl, bc                                    ; $4348: $09
    nop                                           ; $4349: $00
    ld [hl], a                                    ; $434a: $77
    ld d, h                                       ; $434b: $54
    ld [$fca4], a                                 ; $434c: $ea $a4 $fc
    ld [hl], b                                    ; $434f: $70
    ld [hl], b                                    ; $4350: $70
    ld b, $00                                     ; $4351: $06 $00
    ld bc, $0205                                  ; $4353: $01 $05 $02
    xor d                                         ; $4356: $aa
    push de                                       ; $4357: $d5
    ld c, d                                       ; $4358: $4a
    ld a, a                                       ; $4359: $7f
    rla                                           ; $435a: $17
    adc b                                         ; $435b: $88
    ld a, $93                                     ; $435c: $3e $93
    nop                                           ; $435e: $00

jr_0d8_435f:
    nop                                           ; $435f: $00
    rlca                                          ; $4360: $07
    dec a                                         ; $4361: $3d
    inc bc                                        ; $4362: $03
    ld b, $0e                                     ; $4363: $06 $0e
    inc c                                         ; $4365: $0c
    ld h, h                                       ; $4366: $64
    inc c                                         ; $4367: $0c
    sbc d                                         ; $4368: $9a
    ld a, c                                       ; $4369: $79
    nop                                           ; $436a: $00
    ld a, [hl+]                                   ; $436b: $2a
    ld c, $31                                     ; $436c: $0e $31
    sbc d                                         ; $436e: $9a
    ld [$a0df], sp                                ; $436f: $08 $df $a0
    nop                                           ; $4372: $00
    ccf                                           ; $4373: $3f
    ret nz                                        ; $4374: $c0

    rst $10                                       ; $4375: $d7
    xor b                                         ; $4376: $a8
    xor c                                         ; $4377: $a9
    sub $d4                                       ; $4378: $d6 $d4
    db $eb                                        ; $437a: $eb
    nop                                           ; $437b: $00
    ld h, d                                       ; $437c: $62
    ld a, a                                       ; $437d: $7f
    ld [hl], l                                    ; $437e: $75
    ld a, a                                       ; $437f: $7f
    ld a, $3f                                     ; $4380: $3e $3f
    rrca                                          ; $4382: $0f
    rrca                                          ; $4383: $0f
    db $10                                        ; $4384: $10
    inc bc                                        ; $4385: $03
    inc bc                                        ; $4386: $03
    ld bc, $0001                                  ; $4387: $01 $01 $00
    nop                                           ; $438a: $00
    ld c, $0e                                     ; $438b: $0e $0e
    ld de, $1f00                                  ; $438d: $11 $00 $1f
    jr nz, jr_0d8_43a9                            ; $4390: $20 $17

    jr z, jr_0d8_435f                             ; $4392: $28 $cb

    db $f4                                        ; $4394: $f4
    daa                                           ; $4395: $27
    ld hl, sp+$08                                 ; $4396: $f8 $08
    add e                                         ; $4398: $83
    ld a, h                                       ; $4399: $7c
    push af                                       ; $439a: $f5
    ld a, [bc]                                    ; $439b: $0a
    nop                                           ; $439c: $00
    add hl, hl                                    ; $439d: $29
    ld a, a                                       ; $439e: $7f
    add b                                         ; $439f: $80
    sbc l                                         ; $43a0: $9d
    nop                                           ; $43a1: $00
    ld [c], a                                     ; $43a2: $e2
    ld a, $c1                                     ; $43a3: $3e $c1

jr_0d8_43a5:
    ld a, d                                       ; $43a5: $7a
    add a                                         ; $43a6: $87
    nop                                           ; $43a7: $00
    add a                                         ; $43a8: $87

jr_0d8_43a9:
    rlca                                          ; $43a9: $07
    inc b                                         ; $43aa: $04
    ld hl, sp-$71                                 ; $43ab: $f8 $8f
    ld [hl], b                                    ; $43ad: $70
    rst $18                                       ; $43ae: $df
    jr nz, jr_0d8_43b5                            ; $43af: $20 $04

    ld [$00ff], sp                                ; $43b1: $08 $ff $00
    ret nz                                        ; $43b4: $c0

jr_0d8_43b5:
    inc b                                         ; $43b5: $04
    ld [$2820], sp                                ; $43b6: $08 $20 $28
    cp a                                          ; $43b9: $bf
    ld b, b                                       ; $43ba: $40

jr_0d8_43bb:
    ld d, a                                       ; $43bb: $57
    xor b                                         ; $43bc: $a8
    adc e                                         ; $43bd: $8b
    db $f4                                        ; $43be: $f4
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    ret nz                                        ; $43c1: $c0

    ret nz                                        ; $43c2: $c0

    jr nc, jr_0d8_43a5                            ; $43c3: $30 $e0

    jr jr_0d8_43bb                                ; $43c5: $18 $f4

    inc c                                         ; $43c7: $0c
    nop                                           ; $43c8: $00
    or $0f                                        ; $43c9: $f6 $0f
    push af                                       ; $43cb: $f5
    ld c, $e2                                     ; $43cc: $0e $e2
    dec e                                         ; $43ce: $1d
    rst $10                                       ; $43cf: $d7
    jr z, jr_0d8_43f2                             ; $43d0: $28 $20

    rst $28                                       ; $43d2: $ef
    db $10                                        ; $43d3: $10
    ld b, d                                       ; $43d4: $42
    add hl, de                                    ; $43d5: $19
    db $fd                                        ; $43d6: $fd
    ld [bc], a                                    ; $43d7: $02
    ld a, [c]                                     ; $43d8: $f2
    dec c                                         ; $43d9: $0d
    db $e4                                        ; $43da: $e4
    jr z, jr_0d8_43fc                             ; $43db: $28 $1f

    xor d                                         ; $43dd: $aa
    ldh [$08], a                                  ; $43de: $e0 $08
    ld a, b                                       ; $43e0: $78
    sbc $00                                       ; $43e1: $de $00
    ld [bc], a                                    ; $43e3: $02
    ld a, h                                       ; $43e4: $7c
    ld [bc], a                                    ; $43e5: $02
    nop                                           ; $43e6: $00
    ld a, [hl]                                    ; $43e7: $7e
    ld bc, $057b                                  ; $43e8: $01 $7b $05
    ld d, h                                       ; $43eb: $54
    dec hl                                        ; $43ec: $2b
    add hl, hl                                    ; $43ed: $29
    ld d, a                                       ; $43ee: $57
    nop                                           ; $43ef: $00
    ld b, e                                       ; $43f0: $43
    ccf                                           ; $43f1: $3f

jr_0d8_43f2:
    ld b, $7e                                     ; $43f2: $06 $7e
    ld e, [hl]                                    ; $43f4: $5e
    ld a, [hl]                                    ; $43f5: $7e
    cp h                                          ; $43f6: $bc
    db $fc                                        ; $43f7: $fc
    nop                                           ; $43f8: $00
    ld [hl], b                                    ; $43f9: $70
    ldh a, [$e0]                                  ; $43fa: $f0 $e0

jr_0d8_43fc:
    ldh [$c0], a                                  ; $43fc: $e0 $c0
    ret nz                                        ; $43fe: $c0

    inc a                                         ; $43ff: $3c
    jp Jump_0d8_5f00                              ; $4400: $c3 $00 $5f


    and b                                         ; $4403: $a0
    ld a, [hl+]                                   ; $4404: $2a
    push de                                       ; $4405: $d5
    sub l                                         ; $4406: $95
    ld [$ffd0], a                                 ; $4407: $ea $d0 $ff
    ld [$7f69], sp                                ; $440a: $08 $69 $7f
    ld a, $3e                                     ; $440d: $3e $3e
    ld h, d                                       ; $440f: $62
    adc h                                         ; $4410: $8c
    ld d, l                                       ; $4411: $55
    ld [$018a], a                                 ; $4412: $ea $8a $01
    ld [hl], l                                    ; $4415: $75
    ld h, h                                       ; $4416: $64
    ei                                            ; $4417: $fb
    ld [hl], c                                    ; $4418: $71
    rst $38                                       ; $4419: $ff
    sbc [hl]                                      ; $441a: $9e
    sbc [hl]                                      ; $441b: $9e
    ldh [$99], a                                  ; $441c: $e0 $99
    nop                                           ; $441e: $00
    ld [hl+], a                                   ; $441f: $22
    ld e, a                                       ; $4420: $5f
    dec d                                         ; $4421: $15
    ld a, a                                       ; $4422: $7f
    ld a, a                                       ; $4423: $7f
    ld a, a                                       ; $4424: $7f
    ld e, a                                       ; $4425: $5f
    ld e, a                                       ; $4426: $5f
    adc b                                         ; $4427: $88
    nop                                           ; $4428: $00
    and c                                         ; $4429: $a1
    inc bc                                        ; $442a: $03
    inc bc                                        ; $442b: $03
    inc b                                         ; $442c: $04
    ld [bc], a                                    ; $442d: $02
    dec bc                                        ; $442e: $0b
    rrca                                          ; $442f: $0f
    ld [$0005], sp                                ; $4430: $08 $05 $00
    ld a, [bc]                                    ; $4433: $0a
    ld a, [bc]                                    ; $4434: $0a
    dec c                                         ; $4435: $0d
    dec c                                         ; $4436: $0d
    ld c, $00                                     ; $4437: $0e $00
    rra                                           ; $4439: $1f
    dec e                                         ; $443a: $1d
    ld c, b                                       ; $443b: $48
    ld [hl+], a                                   ; $443c: $22
    xor d                                         ; $443d: $aa
    ld bc, $ffc0                                  ; $443e: $01 $c0 $ff
    xor d                                         ; $4441: $aa
    ld de, $e897                                  ; $4442: $11 $97 $e8
    ld [bc], a                                    ; $4445: $02
    nop                                           ; $4446: $00
    inc bc                                        ; $4447: $03
    dec b                                         ; $4448: $05
    ld b, $0d                                     ; $4449: $06 $0d
    cp $e7                                        ; $444b: $fe $e7
    inc e                                         ; $444d: $1c
    ei                                            ; $444e: $fb
    inc b                                         ; $444f: $04
    inc b                                         ; $4450: $04
    db $fd                                        ; $4451: $fd
    ld [bc], a                                    ; $4452: $02
    ld a, [$fe05]                                 ; $4453: $fa $05 $fe
    add hl, de                                    ; $4456: $19
    ld e, [hl]                                    ; $4457: $5e
    and c                                         ; $4458: $a1
    ld [$40bf], sp                                ; $4459: $08 $bf $40
    ld a, [hl]                                    ; $445c: $7e
    add c                                         ; $445d: $81
    ld a, [bc]                                    ; $445e: $0a
    ld a, [de]                                    ; $445f: $1a
    nop                                           ; $4460: $00
    db $fc                                        ; $4461: $fc
    db $fc                                        ; $4462: $fc
    ld h, b                                       ; $4463: $60
    inc bc                                        ; $4464: $03
    inc d                                         ; $4465: $14
    ld a, [hl+]                                   ; $4466: $2a
    ld [$df38], sp                                ; $4467: $08 $38 $df
    jr nz, jr_0d8_44db                            ; $446a: $20 $6f

    sub b                                         ; $446c: $90
    or a                                          ; $446d: $b7
    ld b, e                                       ; $446e: $43
    ld c, b                                       ; $446f: $48
    adc $09                                       ; $4470: $ce $09
    nop                                           ; $4472: $00
    add a                                         ; $4473: $87
    inc bc                                        ; $4474: $03
    call c, $08f6                                 ; $4475: $dc $f6 $08
    ld a, [de]                                    ; $4478: $1a
    add hl, de                                    ; $4479: $19
    add b                                         ; $447a: $80
    cp $08                                        ; $447b: $fe $08
    rst $28                                       ; $447d: $ef
    db $10                                        ; $447e: $10
    push de                                       ; $447f: $d5
    ld a, [hl+]                                   ; $4480: $2a
    and d                                         ; $4481: $a2
    ld e, l                                       ; $4482: $5d
    pop bc                                        ; $4483: $c1
    ld [bc], a                                    ; $4484: $02
    ld a, $ac                                     ; $4485: $3e $ac
    ld d, e                                       ; $4487: $53
    ld e, a                                       ; $4488: $5f

jr_0d8_4489:
    and b                                         ; $4489: $a0
    cp a                                          ; $448a: $bf
    dec a                                         ; $448b: $3d
    ld [bc], a                                    ; $448c: $02
    ret nz                                        ; $448d: $c0

    inc b                                         ; $448e: $04
    jr c, jr_0d8_4489                             ; $448f: $38 $f8

    ld b, $fe                                     ; $4491: $06 $fe
    ld bc, $5844                                  ; $4493: $01 $44 $58
    db $fd                                        ; $4496: $fd
    ld [bc], a                                    ; $4497: $02
    nop                                           ; $4498: $00
    ld e, d                                       ; $4499: $5a
    and l                                         ; $449a: $a5
    or h                                          ; $449b: $b4
    ld c, e                                       ; $449c: $4b
    ld b, c                                       ; $449d: $41
    cp a                                          ; $449e: $bf
    jp z, $013f                                   ; $449f: $ca $3f $01

    nop                                           ; $44a2: $00
    ld [bc], a                                    ; $44a3: $02
    nop                                           ; $44a4: $00
    ld [bc], a                                    ; $44a5: $02
    ld [bc], a                                    ; $44a6: $02
    ld bc, $4602                                  ; $44a7: $01 $02 $46
    dec b                                         ; $44aa: $05
    ldh [rDIV], a                                 ; $44ab: $e0 $04
    ld [$0d4f], sp                                ; $44ad: $08 $4f $0d
    ld c, b                                       ; $44b0: $48
    dec b                                         ; $44b1: $05
    ld [bc], a                                    ; $44b2: $02
    ld [bc], a                                    ; $44b3: $02
    ld [bc], a                                    ; $44b4: $02
    or [hl]                                       ; $44b5: $b6
    ld a, [hl]                                    ; $44b6: $7e
    ld [bc], a                                    ; $44b7: $02
    sbc h                                         ; $44b8: $9c
    ld a, h                                       ; $44b9: $7c
    ld e, b                                       ; $44ba: $58
    ld hl, sp+$30                                 ; $44bb: $f8 $30
    ldh a, [$61]                                  ; $44bd: $f0 $61
    ld a, [de]                                    ; $44bf: $1a
    ld bc, $0000                                  ; $44c0: $01 $00 $00
    sub l                                         ; $44c3: $95
    ld [$f5ca], a                                 ; $44c4: $ea $ca $f5
    ld h, b                                       ; $44c7: $60
    ld a, a                                       ; $44c8: $7f
    ld a, [hl-]                                   ; $44c9: $3a
    inc e                                         ; $44ca: $1c
    ccf                                           ; $44cb: $3f
    dec e                                         ; $44cc: $1d
    rra                                           ; $44cd: $1f
    cp b                                          ; $44ce: $b8
    inc hl                                        ; $44cf: $23
    ld h, b                                       ; $44d0: $60
    inc l                                         ; $44d1: $2c
    ld [hl], h                                    ; $44d2: $74
    nop                                           ; $44d3: $00
    rst $10                                       ; $44d4: $d7
    jr z, jr_0d8_44d7                             ; $44d5: $28 $00

jr_0d8_44d7:
    xor e                                         ; $44d7: $ab
    ld d, h                                       ; $44d8: $54
    ld b, a                                       ; $44d9: $47
    cp b                                          ; $44da: $b8

jr_0d8_44db:
    dec bc                                        ; $44db: $0b
    db $f4                                        ; $44dc: $f4
    dec b                                         ; $44dd: $05
    ld a, [$2200]                                 ; $44de: $fa $00 $22
    db $fd                                        ; $44e1: $fd
    ld d, c                                       ; $44e2: $51
    cp $e8                                        ; $44e3: $fe $e8
    rst $38                                       ; $44e5: $ff
    dec [hl]                                      ; $44e6: $35
    ccf                                           ; $44e7: $3f
    ld [de], a                                    ; $44e8: $12
    ld e, $1f                                     ; $44e9: $1e $1f
    rrca                                          ; $44eb: $0f
    ldh [rNR44], a                                ; $44ec: $e0 $23
    cp $00                                        ; $44ee: $fe $00
    ld a, h                                       ; $44f0: $7c
    ld [$00fe], sp                                ; $44f1: $08 $fe $00
    ld bc, $02fd                                  ; $44f4: $01 $fd $02
    cp $01                                        ; $44f7: $fe $01
    ld a, h                                       ; $44f9: $7c
    add e                                         ; $44fa: $83
    xor b                                         ; $44fb: $a8
    nop                                           ; $44fc: $00
    ld d, a                                       ; $44fd: $57
    ld d, c                                       ; $44fe: $51
    xor a                                         ; $44ff: $af
    inc bc                                        ; $4500: $03
    rst $38                                       ; $4501: $ff
    ld d, [hl]                                    ; $4502: $56
    cp $be                                        ; $4503: $fe $be
    ld c, $fe                                     ; $4505: $0e $fe
    db $fc                                        ; $4507: $fc
    db $fc                                        ; $4508: $fc
    ldh a, [$5c]                                  ; $4509: $f0 $5c
    nop                                           ; $450b: $00
    jp nc, $960d                                  ; $450c: $d2 $0d $96

    ld a, [bc]                                    ; $450f: $0a
    xor a                                         ; $4510: $af
    nop                                           ; $4511: $00
    ld d, b                                       ; $4512: $50
    ld d, l                                       ; $4513: $55
    xor d                                         ; $4514: $aa
    ld a, [hl+]                                   ; $4515: $2a
    push de                                       ; $4516: $d5
    ld b, c                                       ; $4517: $41
    rst $38                                       ; $4518: $ff
    db $eb                                        ; $4519: $eb
    ld d, $ff                                     ; $451a: $16 $ff
    rst $38                                       ; $451c: $ff
    rst $38                                       ; $451d: $ff
    ld h, b                                       ; $451e: $60
    ld e, b                                       ; $451f: $58
    nop                                           ; $4520: $00
    call c, Call_000_0203                         ; $4521: $dc $03 $02
    ld [$0000], sp                                ; $4524: $08 $00 $00
    db $10                                        ; $4527: $10
    rla                                           ; $4528: $17
    rra                                           ; $4529: $1f
    rrca                                          ; $452a: $0f
    rra                                           ; $452b: $1f
    ld e, $1e                                     ; $452c: $1e $1e
    inc e                                         ; $452e: $1c
    jr c, jr_0d8_454d                             ; $452f: $38 $1c

    db $10                                        ; $4531: $10
    dec c                                         ; $4532: $0d
    nop                                           ; $4533: $00
    ld a, [bc]                                    ; $4534: $0a
    ld a, $40                                     ; $4535: $3e $40
    add hl, bc                                    ; $4537: $09
    dec bc                                        ; $4538: $0b
    inc c                                         ; $4539: $0c
    rla                                           ; $453a: $17
    inc b                                         ; $453b: $04
    jr jr_0d8_4555                                ; $453c: $18 $17

    jr jr_0d8_4553                                ; $453e: $18 $13

    inc e                                         ; $4540: $1c
    inc b                                         ; $4541: $04
    ld [$1a15], sp                                ; $4542: $08 $15 $1a
    ld bc, $1d12                                  ; $4545: $01 $12 $1d
    dec d                                         ; $4548: $15
    ld e, $1a                                     ; $4549: $1e $1a
    rra                                           ; $454b: $1f
    dec c                                         ; $454c: $0d

jr_0d8_454d:
    ld h, b                                       ; $454d: $60
    inc b                                         ; $454e: $04
    add b                                         ; $454f: $80
    ld [de], a                                    ; $4550: $12
    ld d, $07                                     ; $4551: $16 $07

jr_0d8_4553:
    ld b, $19                                     ; $4553: $06 $19

jr_0d8_4555:
    rra                                           ; $4555: $1f
    jr nz, jr_0d8_4587                            ; $4556: $20 $2f

    ld d, b                                       ; $4558: $50
    jr nz, jr_0d8_457a                            ; $4559: $20 $1f

    ld h, b                                       ; $455b: $60
    inc b                                         ; $455c: $04
    ld [$f00f], sp                                ; $455d: $08 $0f $f0
    ld e, a                                       ; $4560: $5f
    and b                                         ; $4561: $a0
    cp $00                                        ; $4562: $fe $00
    ld bc, $0af5                                  ; $4564: $01 $f5 $0a
    ld [$f515], a                                 ; $4567: $ea $15 $f5
    ld a, [bc]                                    ; $456a: $0a
    xor $40                                       ; $456b: $ee $40
    ld de, $0896                                  ; $456d: $11 $96 $08
    ld a, [$f405]                                 ; $4570: $fa $05 $f4
    dec bc                                        ; $4573: $0b
    cp b                                          ; $4574: $b8
    ld b, a                                       ; $4575: $47
    inc b                                         ; $4576: $04
    ld d, b                                       ; $4577: $50
    xor a                                         ; $4578: $af
    dec b                                         ; $4579: $05

jr_0d8_457a:
    rst $38                                       ; $457a: $ff
    xor e                                         ; $457b: $ab
    ld a, h                                       ; $457c: $7c
    nop                                           ; $457d: $00
    cp $fe                                        ; $457e: $fe $fe
    add h                                         ; $4580: $84
    ld h, h                                       ; $4581: $64
    halt                                          ; $4582: $76
    ccf                                           ; $4583: $3f
    ld a, $41                                     ; $4584: $3e $41
    ld e, a                                       ; $4586: $5f

jr_0d8_4587:
    cp h                                          ; $4587: $bc
    ld [bc], a                                    ; $4588: $02
    rra                                           ; $4589: $1f
    ldh [$38], a                                  ; $458a: $e0 $38
    cpl                                           ; $458c: $2f
    ret nc                                        ; $458d: $d0

    inc a                                         ; $458e: $3c
    ld [$08cc], sp                                ; $458f: $08 $cc $08
    ret nc                                        ; $4592: $d0

    ld [$807f], sp                                ; $4593: $08 $7f $80
    db $fd                                        ; $4596: $fd
    db $10                                        ; $4597: $10
    ld [bc], a                                    ; $4598: $02
    call nc, $d02b                                ; $4599: $d4 $2b $d0
    ld [$ff0a], sp                                ; $459c: $08 $0a $ff
    rla                                           ; $459f: $17
    rst $38                                       ; $45a0: $ff
    nop                                           ; $45a1: $00
    ccf                                           ; $45a2: $3f
    rst $38                                       ; $45a3: $ff
    ld e, a                                       ; $45a4: $5f
    rst $38                                       ; $45a5: $ff
    ld a, $fe                                     ; $45a6: $3e $fe
    ld d, b                                       ; $45a8: $50
    ldh a, [rNR21]                                ; $45a9: $f0 $16
    or b                                          ; $45ab: $b0
    ldh a, [$60]                                  ; $45ac: $f0 $60
    ld d, h                                       ; $45ae: $54
    ld [bc], a                                    ; $45af: $02
    add b                                         ; $45b0: $80
    ld e, $14                                     ; $45b1: $1e $14
    xor [hl]                                      ; $45b3: $ae
    ld h, $c0                                     ; $45b4: $26 $c0
    inc c                                         ; $45b6: $0c
    add b                                         ; $45b7: $80
    ld h, b                                       ; $45b8: $60
    ret nz                                        ; $45b9: $c0

    ccf                                           ; $45ba: $3f
    sub [hl]                                      ; $45bb: $96
    ld a, [hl+]                                   ; $45bc: $2a
    add h                                         ; $45bd: $84
    dec bc                                        ; $45be: $0b
    ld e, l                                       ; $45bf: $5d
    and d                                         ; $45c0: $a2
    add b                                         ; $45c1: $80
    ld c, $09                                     ; $45c2: $0e $09
    ld a, [hl]                                    ; $45c4: $7e
    add c                                         ; $45c5: $81
    xor l                                         ; $45c6: $ad
    ld d, d                                       ; $45c7: $52
    inc de                                        ; $45c8: $13
    db $ec                                        ; $45c9: $ec
    ld bc, $fe00                                  ; $45ca: $01 $00 $fe
    db $e3                                        ; $45cd: $e3
    db $fc                                        ; $45ce: $fc
    ld a, [$39fd]                                 ; $45cf: $fa $fd $39
    ld a, $18                                     ; $45d2: $3e $18
    jr c, jr_0d8_45f5                             ; $45d4: $38 $1f

    ld a, [bc]                                    ; $45d6: $0a
    jp $b205                                      ; $45d7: $c3 $05 $b2


    jr nz, @-$17                                  ; $45da: $20 $e7

    ld e, [hl]                                    ; $45dc: $5e
    ret nz                                        ; $45dd: $c0

    ret nz                                        ; $45de: $c0

    jr nz, jr_0d8_4601                            ; $45df: $20 $20

    and b                                         ; $45e1: $a0
    ld d, b                                       ; $45e2: $50
    db $e4                                        ; $45e3: $e4
    ld a, [bc]                                    ; $45e4: $0a
    ldh [rNR34], a                                ; $45e5: $e0 $1e
    ldh a, [rIF]                                  ; $45e7: $f0 $0f
    ld a, [$0570]                                 ; $45e9: $fa $70 $05
    ld c, b                                       ; $45ec: $48
    add hl, bc                                    ; $45ed: $09
    jp z, $bc0b                                   ; $45ee: $ca $0b $bc

    jr jr_0d8_4668                                ; $45f1: $18 $75

    adc d                                         ; $45f3: $8a
    xor b                                         ; $45f4: $a8

jr_0d8_45f5:
    ld d, a                                       ; $45f5: $57
    ld b, $02                                     ; $45f6: $06 $02
    rst $38                                       ; $45f8: $ff
    ld d, l                                       ; $45f9: $55
    rst $38                                       ; $45fa: $ff
    xor a                                         ; $45fb: $af
    cp h                                          ; $45fc: $bc
    sbc b                                         ; $45fd: $98
    jr nz, jr_0d8_460d                            ; $45fe: $20 $0d

jr_0d8_4600:
    add b                                         ; $4600: $80

jr_0d8_4601:
    ld b, b                                       ; $4601: $40
    ld b, b                                       ; $4602: $40
    ccf                                           ; $4603: $3f
    inc b                                         ; $4604: $04
    add b                                         ; $4605: $80

jr_0d8_4606:
    ld h, b                                       ; $4606: $60
    and b                                         ; $4607: $a0
    ld h, b                                       ; $4608: $60
    nop                                           ; $4609: $00
    ldh [rDIV], a                                 ; $460a: $e0 $04
    sub b                                         ; $460c: $90

jr_0d8_460d:
    ld [hl], b                                    ; $460d: $70
    jr nc, jr_0d8_4600                            ; $460e: $30 $f0

    or b                                          ; $4610: $b0
    inc b                                         ; $4611: $04
    nop                                           ; $4612: $00
    ld h, b                                       ; $4613: $60
    ldh [$e0], a                                  ; $4614: $e0 $e0
    ld a, [$a80a]                                 ; $4616: $fa $0a $a8
    jr nz, @+$42                                  ; $4619: $20 $40

    inc b                                         ; $461b: $04
    ld bc, $0304                                  ; $461c: $01 $04 $03
    inc c                                         ; $461f: $0c
    dec b                                         ; $4620: $05
    jr nz, jr_0d8_4623                            ; $4621: $20 $00

jr_0d8_4623:
    dec bc                                        ; $4623: $0b
    inc b                                         ; $4624: $04
    nop                                           ; $4625: $00
    ld a, [bc]                                    ; $4626: $0a
    dec c                                         ; $4627: $0d
    ld bc, $0c04                                  ; $4628: $01 $04 $0c
    nop                                           ; $462b: $00
    rrca                                          ; $462c: $0f
    inc b                                         ; $462d: $04
    dec b                                         ; $462e: $05
    nop                                           ; $462f: $00
    ccf                                           ; $4630: $3f
    dec d                                         ; $4631: $15
    ld b, b                                       ; $4632: $40
    cpl                                           ; $4633: $2f
    jr nz, jr_0d8_4606                            ; $4634: $20 $d0

    ld d, l                                       ; $4636: $55
    add [hl]                                      ; $4637: $86
    inc bc                                        ; $4638: $03
    nop                                           ; $4639: $00
    ldh [rLCDC], a                                ; $463a: $e0 $40
    db $10                                        ; $463c: $10
    ld hl, sp+$2a                                 ; $463d: $f8 $2a
    inc b                                         ; $463f: $04
    ld d, h                                       ; $4640: $54
    add $01                                       ; $4641: $c6 $01
    ld d, h                                       ; $4643: $54
    ld b, h                                       ; $4644: $44
    ld [bc], a                                    ; $4645: $02
    ld d, l                                       ; $4646: $55
    adc $01                                       ; $4647: $ce $01
    ld d, l                                       ; $4649: $55
    ld b, $00                                     ; $464a: $06 $00
    xor [hl]                                      ; $464c: $ae
    ld d, c                                       ; $464d: $51
    dec d                                         ; $464e: $15
    ld b, b                                       ; $464f: $40
    and b                                         ; $4650: $a0
    inc b                                         ; $4651: $04
    ld l, [hl]                                    ; $4652: $6e
    ld [bc], a                                    ; $4653: $02
    ld d, h                                       ; $4654: $54
    ld h, b                                       ; $4655: $60
    ld bc, $0cf6                                  ; $4656: $01 $f6 $0c
    jp nz, $1005                                  ; $4659: $c2 $05 $10

    nop                                           ; $465c: $00
    inc a                                         ; $465d: $3c
    inc d                                         ; $465e: $14
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    inc l                                         ; $4661: $2c
    ld [de], a                                    ; $4662: $12
    inc d                                         ; $4663: $14
    ld bc, $013e                                  ; $4664: $01 $3e $01
    inc d                                         ; $4667: $14

jr_0d8_4668:
    ld bc, $db00                                  ; $4668: $01 $00 $db
    dec h                                         ; $466b: $25
    ld b, h                                       ; $466c: $44
    ld de, $bf41                                  ; $466d: $11 $41 $bf
    ld de, $0155                                  ; $4670: $11 $55 $01
    ld e, a                                       ; $4673: $5f
    rst $38                                       ; $4674: $ff

jr_0d8_4675:
    inc b                                         ; $4675: $04
    ld b, h                                       ; $4676: $44
    nop                                           ; $4677: $00
    ld b, b                                       ; $4678: $40
    ld d, l                                       ; $4679: $55
    sbc b                                         ; $467a: $98
    inc b                                         ; $467b: $04
    nop                                           ; $467c: $00
    dec d                                         ; $467d: $15

jr_0d8_467e:
    ld b, b                                       ; $467e: $40

Call_0d8_467f:
    xor a                                         ; $467f: $af
    ret nc                                        ; $4680: $d0

    dec d                                         ; $4681: $15
    ld b, b                                       ; $4682: $40
    adc d                                         ; $4683: $8a
    push af                                       ; $4684: $f5
    nop                                           ; $4685: $00
    ld b, l                                       ; $4686: $45
    ld d, b                                       ; $4687: $50
    ld l, b                                       ; $4688: $68
    ld a, a                                       ; $4689: $7f
    dec d                                         ; $468a: $15
    dec d                                         ; $468b: $15
    ld a, [de]                                    ; $468c: $1a
    rra                                           ; $468d: $1f
    ld [hl+], a                                   ; $468e: $22
    dec b                                         ; $468f: $05
    dec b                                         ; $4690: $05
    xor [hl]                                      ; $4691: $ae
    cpl                                           ; $4692: $2f
    dec hl                                        ; $4693: $2b
    inc d                                         ; $4694: $14
    ld d, l                                       ; $4695: $55
    xor h                                         ; $4696: $ac
    inc bc                                        ; $4697: $03
    ld d, h                                       ; $4698: $54
    nop                                           ; $4699: $00
    ld bc, $17e8                                  ; $469a: $01 $e8 $17
    ld d, b                                       ; $469d: $50
    dec b                                         ; $469e: $05
    and e                                         ; $469f: $a3
    ld e, a                                       ; $46a0: $5f
    ld b, l                                       ; $46a1: $45
    nop                                           ; $46a2: $00
    dec d                                         ; $46a3: $15
    ld a, [bc]                                    ; $46a4: $0a
    cp $54                                        ; $46a5: $fe $54
    ld d, h                                       ; $46a7: $54
    cp h                                          ; $46a8: $bc
    db $fc                                        ; $46a9: $fc
    ld d, b                                       ; $46aa: $50
    ld de, $e050                                  ; $46ab: $11 $50 $e0
    ldh [$ec], a                                  ; $46ae: $e0 $ec
    add a                                         ; $46b0: $87
    rlca                                          ; $46b1: $07
    ld [bc], a                                    ; $46b2: $02
    ld [bc], a                                    ; $46b3: $02
    db $e4                                        ; $46b4: $e4
    ld [hl], a                                    ; $46b5: $77
    db $10                                        ; $46b6: $10
    stop                                          ; $46b7: $10 $00

jr_0d8_46b9:
    jr z, jr_0d8_46b9                             ; $46b9: $28 $fe

    dec b                                         ; $46bb: $05

jr_0d8_46bc:
    jr nz, @+$06                                  ; $46bc: $20 $04

    db $10                                        ; $46be: $10
    ld a, [bc]                                    ; $46bf: $0a
    nop                                           ; $46c0: $00
    jr nz, jr_0d8_46c8                            ; $46c1: $20 $05

    db $10                                        ; $46c3: $10
    ld [bc], a                                    ; $46c4: $02
    jr z, jr_0d8_46cc                             ; $46c5: $28 $05

    ld d, b                                       ; $46c7: $50

jr_0d8_46c8:
    ld a, [hl+]                                   ; $46c8: $2a
    nop                                           ; $46c9: $00
    add b                                         ; $46ca: $80
    ld d, l                                       ; $46cb: $55

jr_0d8_46cc:
    nop                                           ; $46cc: $00
    ld a, [hl+]                                   ; $46cd: $2a
    add b                                         ; $46ce: $80
    dec d                                         ; $46cf: $15
    ld b, b                                       ; $46d0: $40
    ld a, [bc]                                    ; $46d1: $0a
    inc b                                         ; $46d2: $04
    and b                                         ; $46d3: $a0
    inc d                                         ; $46d4: $14
    ld b, c                                       ; $46d5: $41
    adc d                                         ; $46d6: $8a
    and b                                         ; $46d7: $a0
    sbc h                                         ; $46d8: $9c
    dec b                                         ; $46d9: $05
    ld [bc], a                                    ; $46da: $02
    inc b                                         ; $46db: $04
    ret z                                         ; $46dc: $c8

    xor e                                         ; $46dd: $ab
    dec b                                         ; $46de: $05
    dec de                                        ; $46df: $1b
    ld c, $05                                     ; $46e0: $0e $05
    ld bc, $02ee                                  ; $46e2: $01 $ee $02
    inc b                                         ; $46e5: $04
    ld [hl+], a                                   ; $46e6: $22
    adc d                                         ; $46e7: $8a
    nop                                           ; $46e8: $00
    ld d, h                                       ; $46e9: $54
    inc b                                         ; $46ea: $04
    jr nz, jr_0d8_4675                            ; $46eb: $20 $88

    ld d, b                                       ; $46ed: $50
    nop                                           ; $46ee: $00
    and b                                         ; $46ef: $a0
    ld [$4008], sp                                ; $46f0: $08 $08 $40
    db $10                                        ; $46f3: $10
    jr nz, jr_0d8_467e                            ; $46f4: $20 $88

    ccf                                           ; $46f6: $3f
    ld c, $40                                     ; $46f7: $0e $40
    ld b, b                                       ; $46f9: $40
    jr nz, jr_0d8_46bc                            ; $46fa: $20 $c0

    inc b                                         ; $46fc: $04
    nop                                           ; $46fd: $00
    ld [$0808], sp                                ; $46fe: $08 $08 $08
    ld [hl+], a                                   ; $4701: $22
    ld b, l                                       ; $4702: $45
    ld d, c                                       ; $4703: $51
    nop                                           ; $4704: $00
    ld a, [hl+]                                   ; $4705: $2a
    nop                                           ; $4706: $00
    ld b, l                                       ; $4707: $45
    ld d, c                                       ; $4708: $51
    jr nz, jr_0d8_4735                            ; $4709: $20 $2a

    ld d, c                                       ; $470b: $51
    ld d, l                                       ; $470c: $55
    jr z, jr_0d8_4739                             ; $470d: $28 $2a

    rlca                                          ; $470f: $07
    dec d                                         ; $4710: $15
    dec d                                         ; $4711: $15
    ld a, [bc]                                    ; $4712: $0a
    ld a, [bc]                                    ; $4713: $0a
    inc b                                         ; $4714: $04
    dec a                                         ; $4715: $3d
    nop                                           ; $4716: $00
    ld [bc], a                                    ; $4717: $02
    ret nc                                        ; $4718: $d0

    inc bc                                        ; $4719: $03
    ld b, $03                                     ; $471a: $06 $03
    nop                                           ; $471c: $00
    dec b                                         ; $471d: $05
    ld [$010a], sp                                ; $471e: $08 $0a $01
    dec b                                         ; $4721: $05
    rrca                                          ; $4722: $0f
    ld b, $04                                     ; $4723: $06 $04
    jr nz, jr_0d8_4732                            ; $4725: $20 $0b

    nop                                           ; $4727: $00
    inc b                                         ; $4728: $04
    ld a, [bc]                                    ; $4729: $0a
    ld a, [bc]                                    ; $472a: $0a
    inc b                                         ; $472b: $04
    jr z, jr_0d8_4732                             ; $472c: $28 $04

    inc b                                         ; $472e: $04
    db $10                                        ; $472f: $10
    ld b, h                                       ; $4730: $44
    ret nz                                        ; $4731: $c0

jr_0d8_4732:
    nop                                           ; $4732: $00
    ldh a, [rSVBK]                                ; $4733: $f0 $70

jr_0d8_4735:
    adc b                                         ; $4735: $88
    ld a, b                                       ; $4736: $78
    add h                                         ; $4737: $84
    ld a, h                                       ; $4738: $7c

jr_0d8_4739:
    add d                                         ; $4739: $82
    ld a, [hl]                                    ; $473a: $7e
    ld b, b                                       ; $473b: $40
    add c                                         ; $473c: $81
    jr nz, @+$21                                  ; $473d: $20 $1f

    ld a, [hl]                                    ; $473f: $7e
    add c                                         ; $4740: $81
    ld a, l                                       ; $4741: $7d
    add e                                         ; $4742: $83
    ld a, e                                       ; $4743: $7b
    add a                                         ; $4744: $87
    ld [bc], a                                    ; $4745: $02
    halt                                          ; $4746: $76
    adc [hl]                                      ; $4747: $8e
    inc c                                         ; $4748: $0c
    db $fc                                        ; $4749: $fc
    ld a, b                                       ; $474a: $78
    ld a, b                                       ; $474b: $78
    ld l, d                                       ; $474c: $6a
    ld l, b                                       ; $474d: $68
    inc b                                         ; $474e: $04
    ld b, $02                                     ; $474f: $06 $02
    inc bc                                        ; $4751: $03
    rlca                                          ; $4752: $07
    ld b, $06                                     ; $4753: $06 $06
    sub d                                         ; $4755: $92
    ld h, b                                       ; $4756: $60
    ld h, b                                       ; $4757: $60
    inc d                                         ; $4758: $14
    rrca                                          ; $4759: $0f
    db $10                                        ; $475a: $10
    db $10                                        ; $475b: $10
    rra                                           ; $475c: $1f

jr_0d8_475d:
    jr nz, jr_0d8_475d                            ; $475d: $20 $fe

    dec c                                         ; $475f: $0d
    ccf                                           ; $4760: $3f
    ld b, b                                       ; $4761: $40
    rra                                           ; $4762: $1f
    jr nz, jr_0d8_4768                            ; $4763: $20 $03

    rrca                                          ; $4765: $0f
    db $10                                        ; $4766: $10
    rlca                                          ; $4767: $07

jr_0d8_4768:
    ld [$0403], sp                                ; $4768: $08 $03 $04
    jp z, Jump_000_0a03                           ; $476b: $ca $03 $0a

    rra                                           ; $476e: $1f
    ld [de], a                                    ; $476f: $12
    ld b, $05                                     ; $4770: $06 $05
    inc bc                                        ; $4772: $03
    ld [bc], a                                    ; $4773: $02
    adc b                                         ; $4774: $88
    ld bc, $8007                                  ; $4775: $01 $07 $80
    rra                                           ; $4778: $1f
    sbc b                                         ; $4779: $98
    nop                                           ; $477a: $00
    inc d                                         ; $477b: $14
    nop                                           ; $477c: $00
    jr nz, jr_0d8_477f                            ; $477d: $20 $00

jr_0d8_477f:
    ld l, $00                                     ; $477f: $2e $00
    ld a, [hl-]                                   ; $4781: $3a
    nop                                           ; $4782: $00
    ld c, b                                       ; $4783: $48
    nop                                           ; $4784: $00
    ld d, [hl]                                    ; $4785: $56
    nop                                           ; $4786: $00
    ld h, h                                       ; $4787: $64
    nop                                           ; $4788: $00
    ld [hl], b                                    ; $4789: $70
    nop                                           ; $478a: $00
    ld a, h                                       ; $478b: $7c
    nop                                           ; $478c: $00
    adc d                                         ; $478d: $8a
    nop                                           ; $478e: $00
    inc bc                                        ; $478f: $03
    nop                                           ; $4790: $00
    ld hl, sp+$07                                 ; $4791: $f8 $07
    pop af                                        ; $4793: $f1
    nop                                           ; $4794: $00
    xor $f8                                       ; $4795: $ee $f8
    xor $fb                                       ; $4797: $ee $fb
    cp $f9                                        ; $4799: $fe $f9
    inc b                                         ; $479b: $04
    ld b, $f8                                     ; $479c: $06 $f8
    rlca                                          ; $479e: $07
    pop af                                        ; $479f: $f1
    nop                                           ; $47a0: $00
    db $ec                                        ; $47a1: $ec
    ld sp, hl                                     ; $47a2: $f9
    db $ec                                        ; $47a3: $ec
    db $fc                                        ; $47a4: $fc
    db $fc                                        ; $47a5: $fc
    ei                                            ; $47a6: $fb
    db $fc                                        ; $47a7: $fc
    db $fc                                        ; $47a8: $fc
    inc bc                                        ; $47a9: $03
    ld c, $f8                                     ; $47aa: $0e $f8
    rlca                                          ; $47ac: $07
    pop af                                        ; $47ad: $f1
    nop                                           ; $47ae: $00
    db $ed                                        ; $47af: $ed
    ld hl, sp-$12                                 ; $47b0: $f8 $ee
    ei                                            ; $47b2: $fb
    db $fd                                        ; $47b3: $fd
    ld sp, hl                                     ; $47b4: $f9
    inc b                                         ; $47b5: $04
    inc d                                         ; $47b6: $14
    ld hl, sp+$07                                 ; $47b7: $f8 $07
    pop af                                        ; $47b9: $f1
    nop                                           ; $47ba: $00
    db $ec                                        ; $47bb: $ec
    ld hl, sp-$14                                 ; $47bc: $f8 $ec
    ei                                            ; $47be: $fb
    db $fc                                        ; $47bf: $fc
    ld a, [$fbfc]                                 ; $47c0: $fa $fc $fb
    inc b                                         ; $47c3: $04
    inc e                                         ; $47c4: $1c
    ld hl, sp+$07                                 ; $47c5: $f8 $07
    pop af                                        ; $47c7: $f1
    nop                                           ; $47c8: $00
    db $ec                                        ; $47c9: $ec
    rst $30                                       ; $47ca: $f7
    db $ec                                        ; $47cb: $ec
    ei                                            ; $47cc: $fb
    db $fc                                        ; $47cd: $fc
    ld a, [$fbfc]                                 ; $47ce: $fa $fc $fb
    inc b                                         ; $47d1: $04
    inc h                                         ; $47d2: $24
    ld hl, sp+$07                                 ; $47d3: $f8 $07
    pop af                                        ; $47d5: $f1
    nop                                           ; $47d6: $00
    db $ec                                        ; $47d7: $ec
    ld sp, hl                                     ; $47d8: $f9
    db $ed                                        ; $47d9: $ed
    ei                                            ; $47da: $fb
    db $fc                                        ; $47db: $fc
    ld sp, hl                                     ; $47dc: $f9
    db $fc                                        ; $47dd: $fc
    ld a, [$2c03]                                 ; $47de: $fa $03 $2c
    ld hl, sp+$07                                 ; $47e1: $f8 $07
    pop af                                        ; $47e3: $f1
    nop                                           ; $47e4: $00
    db $ed                                        ; $47e5: $ed
    ld hl, sp-$12                                 ; $47e6: $f8 $ee
    ei                                            ; $47e8: $fb
    db $fd                                        ; $47e9: $fd
    ld sp, hl                                     ; $47ea: $f9
    inc bc                                        ; $47eb: $03
    ld [hl-], a                                   ; $47ec: $32
    ld hl, sp+$07                                 ; $47ed: $f8 $07
    pop af                                        ; $47ef: $f1
    nop                                           ; $47f0: $00
    db $ec                                        ; $47f1: $ec

jr_0d8_47f2:
    ld hl, sp-$13                                 ; $47f2: $f8 $ed
    ei                                            ; $47f4: $fb
    db $fc                                        ; $47f5: $fc
    ld sp, hl                                     ; $47f6: $f9
    inc b                                         ; $47f7: $04
    jr c, jr_0d8_47f2                             ; $47f8: $38 $f8

    rlca                                          ; $47fa: $07
    pop af                                        ; $47fb: $f1
    nop                                           ; $47fc: $00
    db $eb                                        ; $47fd: $eb
    ld sp, hl                                     ; $47fe: $f9
    db $ec                                        ; $47ff: $ec
    ei                                            ; $4800: $fb
    ei                                            ; $4801: $fb
    ld a, [$fbfb]                                 ; $4802: $fa $fb $fb
    inc b                                         ; $4805: $04
    ld b, b                                       ; $4806: $40
    ld hl, sp+$07                                 ; $4807: $f8 $07
    pop af                                        ; $4809: $f1
    nop                                           ; $480a: $00
    db $ec                                        ; $480b: $ec
    ld hl, sp-$13                                 ; $480c: $f8 $ed
    ei                                            ; $480e: $fb
    db $fc                                        ; $480f: $fc
    ld sp, hl                                     ; $4810: $f9
    db $fc                                        ; $4811: $fc
    ld a, [$0480]                                 ; $4812: $fa $80 $04
    cp l                                          ; $4815: $bd
    ld bc, $1f00                                  ; $4816: $01 $00 $1f
    rra                                           ; $4819: $1f
    ccf                                           ; $481a: $3f
    dec h                                         ; $481b: $25
    ld a, a                                       ; $481c: $7f
    ld c, h                                       ; $481d: $4c
    ld a, a                                       ; $481e: $7f
    ld a, e                                       ; $481f: $7b
    nop                                           ; $4820: $00
    ld a, a                                       ; $4821: $7f
    ld e, b                                       ; $4822: $58
    ld a, a                                       ; $4823: $7f
    ld [hl], h                                    ; $4824: $74
    ld a, a                                       ; $4825: $7f
    ld a, c                                       ; $4826: $79
    ld a, a                                       ; $4827: $7f
    ld e, h                                       ; $4828: $5c
    nop                                           ; $4829: $00
    rst $38                                       ; $482a: $ff
    sbc e                                         ; $482b: $9b
    push af                                       ; $482c: $f5
    sbc a                                         ; $482d: $9f
    or $bf                                        ; $482e: $f6 $bf
    push af                                       ; $4830: $f5
    cp a                                          ; $4831: $bf
    nop                                           ; $4832: $00
    halt                                          ; $4833: $76
    ld a, a                                       ; $4834: $7f
    ld h, $3f                                     ; $4835: $26 $3f
    ld hl, $333f                                  ; $4837: $21 $3f $33
    ld a, $10                                     ; $483a: $3e $10
    ld [bc], a                                    ; $483c: $02
    ld [bc], a                                    ; $483d: $02
    inc b                                         ; $483e: $04
    ld bc, $0600                                  ; $483f: $01 $00 $06
    ld [bc], a                                    ; $4842: $02
    rlca                                          ; $4843: $07
    ld bc, $0617                                  ; $4844: $01 $17 $06
    ld [bc], a                                    ; $4847: $02
    ld b, $0c                                     ; $4848: $06 $0c
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    ld bc, $1000                                  ; $484c: $01 $00 $10
    nop                                           ; $484f: $00
    ld bc, $0000                                  ; $4850: $01 $00 $00
    rlca                                          ; $4853: $07
    dec b                                         ; $4854: $05
    inc bc                                        ; $4855: $03
    rlca                                          ; $4856: $07
    inc b                                         ; $4857: $04
    inc b                                         ; $4858: $04
    ld a, a                                       ; $4859: $7f
    ld a, e                                       ; $485a: $7b
    inc c                                         ; $485b: $0c
    ld [hl], a                                    ; $485c: $77
    ld a, a                                       ; $485d: $7f
    ccf                                           ; $485e: $3f
    ccf                                           ; $485f: $3f
    ld d, $08                                     ; $4860: $16 $08
    inc b                                         ; $4862: $04
    sbc b                                         ; $4863: $98
    ld b, $06                                     ; $4864: $06 $06
    nop                                           ; $4866: $00
    rra                                           ; $4867: $1f
    add hl, de                                    ; $4868: $19
    ccf                                           ; $4869: $3f
    ld [hl-], a                                   ; $486a: $32
    ccf                                           ; $486b: $3f
    dec l                                         ; $486c: $2d
    ld a, a                                       ; $486d: $7f
    ld b, a                                       ; $486e: $47
    ld [bc], a                                    ; $486f: $02
    ld a, a                                       ; $4870: $7f
    ld l, h                                       ; $4871: $6c
    rst $38                                       ; $4872: $ff
    sbc a                                         ; $4873: $9f
    rst $38                                       ; $4874: $ff
    xor b                                         ; $4875: $a8
    ld h, d                                       ; $4876: $62
    nop                                           ; $4877: $00
    cp c                                          ; $4878: $b9
    nop                                           ; $4879: $00
    ld a, a                                       ; $487a: $7f
    ld e, h                                       ; $487b: $5c
    db $fd                                        ; $487c: $fd
    xor a                                         ; $487d: $af
    ld a, [hl]                                    ; $487e: $7e
    ld l, a                                       ; $487f: $6f
    dec [hl]                                      ; $4880: $35
    ccf                                           ; $4881: $3f
    ld [$1f16], sp                                ; $4882: $08 $16 $1f
    ld h, $3f                                     ; $4885: $26 $3f
    ld e, h                                       ; $4887: $5c
    db $10                                        ; $4888: $10
    inc bc                                        ; $4889: $03
    rlca                                          ; $488a: $07
    dec b                                         ; $488b: $05
    inc a                                         ; $488c: $3c
    rlca                                          ; $488d: $07
    inc bc                                        ; $488e: $03
    ld [$6808], sp                                ; $488f: $08 $08 $68
    jr jr_0d8_48fa                                ; $4892: $18 $66

    ld [$2864], sp                                ; $4894: $08 $64 $28
    add l                                         ; $4897: $85
    rst $38                                       ; $4898: $ff
    nop                                           ; $4899: $00
    adc $fa                                       ; $489a: $ce $fa
    cp $f6                                        ; $489c: $fe $f6
    xor $fe                                       ; $489e: $ee $fe
    ld a, [hl]                                    ; $48a0: $7e
    ld a, [hl]                                    ; $48a1: $7e
    sbc b                                         ; $48a2: $98
    ld h, h                                       ; $48a3: $64
    sbc b                                         ; $48a4: $98
    ld bc, $7c01                                  ; $48a5: $01 $01 $7c
    cp b                                          ; $48a8: $b8
    xor h                                         ; $48a9: $ac
    ld [$3d3d], sp                                ; $48aa: $08 $3d $3d
    halt                                          ; $48ad: $76

jr_0d8_48ae:
    nop                                           ; $48ae: $00
    ld a, a                                       ; $48af: $7f
    ei                                            ; $48b0: $fb
    rst $38                                       ; $48b1: $ff
    cp a                                          ; $48b2: $bf
    db $fd                                        ; $48b3: $fd
    rst $18                                       ; $48b4: $df
    or $ff                                        ; $48b5: $f6 $ff
    ld b, b                                       ; $48b7: $40
    ldh a, [rSC]                                  ; $48b8: $f0 $02
    nop                                           ; $48ba: $00
    di                                            ; $48bb: $f3
    rst $38                                       ; $48bc: $ff
    ld sp, hl                                     ; $48bd: $f9
    ld a, a                                       ; $48be: $7f
    ld a, a                                       ; $48bf: $7f
    or l                                          ; $48c0: $b5
    nop                                           ; $48c1: $00
    rst $38                                       ; $48c2: $ff
    or [hl]                                       ; $48c3: $b6
    rst $38                                       ; $48c4: $ff
    ld l, l                                       ; $48c5: $6d
    ld a, a                                       ; $48c6: $7f
    cpl                                           ; $48c7: $2f
    ccf                                           ; $48c8: $3f
    jr nz, jr_0d8_4907                            ; $48c9: $20 $3c

    ccf                                           ; $48cb: $3f
    jr nc, @-$7e                                  ; $48cc: $30 $80

    nop                                           ; $48ce: $00
    ld [bc], a                                    ; $48cf: $02
    jr jr_0d8_48ae                                ; $48d0: $18 $dc

    ld [$18de], sp                                ; $48d2: $08 $de $18
    ld [bc], a                                    ; $48d5: $02
    ld [bc], a                                    ; $48d6: $02
    jr nz, jr_0d8_48e0                            ; $48d7: $20 $07

    dec b                                         ; $48d9: $05
    sbc $00                                       ; $48da: $de $00
    rlca                                          ; $48dc: $07
    inc bc                                        ; $48dd: $03
    dec b                                         ; $48de: $05
    rlca                                          ; $48df: $07

jr_0d8_48e0:
    dec b                                         ; $48e0: $05
    nop                                           ; $48e1: $00
    xor $fe                                       ; $48e2: $ee $fe
    ret nz                                        ; $48e4: $c0

    ret nz                                        ; $48e5: $c0

    db $fd                                        ; $48e6: $fd
    rst $38                                       ; $48e7: $ff
    ei                                            ; $48e8: $fb
    rst $38                                       ; $48e9: $ff
    jr nz, jr_0d8_496b                            ; $48ea: $20 $7f

    ld a, a                                       ; $48ec: $7f
    ld [c], a                                     ; $48ed: $e2
    xor b                                         ; $48ee: $a8
    rlca                                          ; $48ef: $07
    rlca                                          ; $48f0: $07
    dec e                                         ; $48f1: $1d
    dec de                                        ; $48f2: $1b
    scf                                           ; $48f3: $37
    nop                                           ; $48f4: $00
    add hl, sp                                    ; $48f5: $39
    ccf                                           ; $48f6: $3f
    ld a, $3f                                     ; $48f7: $3e $3f
    inc a                                         ; $48f9: $3c

jr_0d8_48fa:
    ccf                                           ; $48fa: $3f
    ccf                                           ; $48fb: $3f
    ld a, a                                       ; $48fc: $7f
    nop                                           ; $48fd: $00
    ld e, b                                       ; $48fe: $58
    ld l, a                                       ; $48ff: $6f
    ld e, h                                       ; $4900: $5c
    ld e, a                                       ; $4901: $5f
    ld l, c                                       ; $4902: $69
    ld l, a                                       ; $4903: $6f
    ld a, h                                       ; $4904: $7c
    rst $38                                       ; $4905: $ff
    rlca                                          ; $4906: $07

jr_0d8_4907:
    rst $38                                       ; $4907: $ff
    ld [hl], l                                    ; $4908: $75
    ld a, a                                       ; $4909: $7f
    sub $ff                                       ; $490a: $d6 $ff
    ldh [rNR23], a                                ; $490c: $e0 $18
    ld c, [hl]                                    ; $490e: $4e
    ld [$00dd], sp                                ; $490f: $08 $dd $00
    ld a, c                                       ; $4912: $79
    rlca                                          ; $4913: $07
    sbc $68                                       ; $4914: $de $68
    ldh [$f8], a                                  ; $4916: $e0 $f8
    ldh [$f8], a                                  ; $4918: $e0 $f8
    nop                                           ; $491a: $00
    add hl, de                                    ; $491b: $19
    rrca                                          ; $491c: $0f
    rrca                                          ; $491d: $0f
    call nz, Call_0d8_4001                        ; $491e: $c4 $01 $40
    cpl                                           ; $4921: $2f
    add d                                         ; $4922: $82
    nop                                           ; $4923: $00
    dec a                                         ; $4924: $3d
    ccf                                           ; $4925: $3f
    inc a                                         ; $4926: $3c
    rra                                           ; $4927: $1f
    ld a, [de]                                    ; $4928: $1a
    cpl                                           ; $4929: $2f
    ld [bc], a                                    ; $492a: $02
    inc a                                         ; $492b: $3c
    ld a, a                                       ; $492c: $7f
    ld a, [hl]                                    ; $492d: $7e
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    ld a, d                                       ; $4930: $7a
    db $f4                                        ; $4931: $f4
    nop                                           ; $4932: $00
    ld a, [$b880]                                 ; $4933: $fa $80 $b8
    nop                                           ; $4936: $00
    ld [hl], e                                    ; $4937: $73
    ld a, a                                       ; $4938: $7f
    inc b                                         ; $4939: $04
    inc b                                         ; $493a: $04
    ld a, [bc]                                    ; $493b: $0a
    ld a, [bc]                                    ; $493c: $0a
    ld c, $00                                     ; $493d: $0e $00
    ld c, $0c                                     ; $493f: $0e $0c
    inc b                                         ; $4941: $04
    ld c, $02                                     ; $4942: $0e $02
    ld c, $0a                                     ; $4944: $0e $0a
    ld c, $00                                     ; $4946: $0e $00
    ld [bc], a                                    ; $4948: $02
    rrca                                          ; $4949: $0f
    ld bc, $0a0e                                  ; $494a: $01 $0e $0a
    inc c                                         ; $494d: $0c
    inc b                                         ; $494e: $04
    ld [$0800], sp                                ; $494f: $08 $00 $08
    inc c                                         ; $4952: $0c
    inc c                                         ; $4953: $0c
    inc b                                         ; $4954: $04
    inc c                                         ; $4955: $0c
    ld c, $0e                                     ; $4956: $0e $0e
    ld b, $18                                     ; $4958: $06 $18
    ld c, $07                                     ; $495a: $0e $07
    dec c                                         ; $495c: $0d
    ld h, b                                       ; $495d: $60
    ld sp, hl                                     ; $495e: $f9
    ld h, b                                       ; $495f: $60
    reti                                          ; $4960: $d9


    ld a, $3e                                     ; $4961: $3e $3e
    ld a, a                                       ; $4963: $7f
    nop                                           ; $4964: $00
    ld b, l                                       ; $4965: $45
    rst $38                                       ; $4966: $ff
    adc e                                         ; $4967: $8b
    rst $38                                       ; $4968: $ff
    sub h                                         ; $4969: $94
    rst $38                                       ; $496a: $ff

jr_0d8_496b:
    xor b                                         ; $496b: $a8
    rst $38                                       ; $496c: $ff
    nop                                           ; $496d: $00
    or $7f                                        ; $496e: $f6 $7f
    ld d, b                                       ; $4970: $50
    ccf                                           ; $4971: $3f
    ld hl, $121f                                  ; $4972: $21 $1f $12
    ccf                                           ; $4975: $3f
    nop                                           ; $4976: $00
    ld sp, $7e5e                                  ; $4977: $31 $5e $7e
    xor d                                         ; $497a: $aa
    cp $6d                                        ; $497b: $fe $6d
    ld a, a                                       ; $497d: $7f
    ld e, e                                       ; $497e: $5b
    nop                                           ; $497f: $00
    ld a, a                                       ; $4980: $7f
    ld e, a                                       ; $4981: $5f
    ld a, a                                       ; $4982: $7f
    ld b, b                                       ; $4983: $40
    ld a, a                                       ; $4984: $7f
    ld [bc], a                                    ; $4985: $02
    ld [bc], a                                    ; $4986: $02
    inc bc                                        ; $4987: $03
    inc a                                         ; $4988: $3c
    ld bc, $0102                                  ; $4989: $01 $02 $01
    db $10                                        ; $498c: $10
    ld [$6218], sp                                ; $498d: $08 $18 $62
    add hl, de                                    ; $4990: $19
    inc d                                         ; $4991: $14
    ld [$0303], sp                                ; $4992: $08 $03 $03
    nop                                           ; $4995: $00
    inc bc                                        ; $4996: $03
    ld bc, $fd87                                  ; $4997: $01 $87 $fd
    ld b, b                                       ; $499a: $40
    ld b, b                                       ; $499b: $40
    ei                                            ; $499c: $fb
    rst $38                                       ; $499d: $ff
    ret nz                                        ; $499e: $c0

    ld h, d                                       ; $499f: $62
    reti                                          ; $49a0: $d9


    ld [c], a                                     ; $49a1: $e2
    reti                                          ; $49a2: $d9


    dec a                                         ; $49a3: $3d
    dec a                                         ; $49a4: $3d
    ld a, a                                       ; $49a5: $7f
    ld b, d                                       ; $49a6: $42
    rst $38                                       ; $49a7: $ff
    and a                                         ; $49a8: $a7
    nop                                           ; $49a9: $00
    rst $38                                       ; $49aa: $ff
    reti                                          ; $49ab: $d9


    rst $38                                       ; $49ac: $ff
    or $ff                                        ; $49ad: $f6 $ff
    ret nc                                        ; $49af: $d0

    ld a, a                                       ; $49b0: $7f
    ld [hl], b                                    ; $49b1: $70
    nop                                           ; $49b2: $00
    ccf                                           ; $49b3: $3f
    ld [hl-], a                                   ; $49b4: $32
    rra                                           ; $49b5: $1f
    add hl, de                                    ; $49b6: $19
    cpl                                           ; $49b7: $2f
    ccf                                           ; $49b8: $3f
    ld d, l                                       ; $49b9: $55
    ld a, a                                       ; $49ba: $7f
    rra                                           ; $49bb: $1f
    ld [hl], $3f                                  ; $49bc: $36 $3f
    dec l                                         ; $49be: $2d
    inc de                                        ; $49bf: $13
    ld bc, $29e0                                  ; $49c0: $01 $e0 $29
    or d                                          ; $49c3: $b2
    ld [de], a                                    ; $49c4: $12
    ret z                                         ; $49c5: $c8

    ld [de], a                                    ; $49c6: $12
    ret nz                                        ; $49c7: $c0

    ld a, [bc]                                    ; $49c8: $0a
    ret nz                                        ; $49c9: $c0

    ldh [$f9], a                                  ; $49ca: $e0 $f9
    adc $4a                                       ; $49cc: $ce $4a
    dec de                                        ; $49ce: $1b
    dec de                                        ; $49cf: $1b
    ld a, l                                       ; $49d0: $7d
    ld a, a                                       ; $49d1: $7f
    or a                                          ; $49d2: $b7
    rst $38                                       ; $49d3: $ff
    add d                                         ; $49d4: $82
    ld c, l                                       ; $49d5: $4d
    ld bc, $bff8                                  ; $49d6: $01 $f8 $bf
    ld a, [$785f]                                 ; $49d9: $fa $5f $78
    ld h, d                                       ; $49dc: $62
    nop                                           ; $49dd: $00
    ld sp, $1f00                                  ; $49de: $31 $00 $1f
    jr jr_0d8_4a02                                ; $49e1: $18 $1f

    rra                                           ; $49e3: $1f
    dec [hl]                                      ; $49e4: $35
    ccf                                           ; $49e5: $3f
    ld d, [hl]                                    ; $49e6: $56
    ld a, a                                       ; $49e7: $7f
    sbc b                                         ; $49e8: $98
    ret nz                                        ; $49e9: $c0

    ld a, [de]                                    ; $49ea: $1a
    ld b, $06                                     ; $49eb: $06 $06
    ld b, d                                       ; $49ed: $42
    ld e, d                                       ; $49ee: $5a
    sbc $59                                       ; $49ef: $de $59
    dec bc                                        ; $49f1: $0b
    rst $38                                       ; $49f2: $ff
    ld b, b                                       ; $49f3: $40
    db $10                                        ; $49f4: $10
    ld b, b                                       ; $49f5: $40
    ld h, a                                       ; $49f6: $67
    ld a, l                                       ; $49f7: $7d
    inc h                                         ; $49f8: $24
    rlc h                                         ; $49f9: $cb $04
    inc b                                         ; $49fb: $04
    ld e, [hl]                                    ; $49fc: $5e
    ld e, [hl]                                    ; $49fd: $5e
    add b                                         ; $49fe: $80
    ld a, [hl-]                                   ; $49ff: $3a
    ld [bc], a                                    ; $4a00: $02
    ld a, a                                       ; $4a01: $7f

jr_0d8_4a02:
    ld a, a                                       ; $4a02: $7f
    ld a, d                                       ; $4a03: $7a
    rst $38                                       ; $4a04: $ff
    ld hl, sp+$7f                                 ; $4a05: $f8 $7f
    ld [hl], d                                    ; $4a07: $72
    add b                                         ; $4a08: $80
    ld b, d                                       ; $4a09: $42
    ld bc, $1f30                                  ; $4a0a: $01 $30 $1f
    ld [de], a                                    ; $4a0d: $12
    rra                                           ; $4a0e: $1f
    add hl, de                                    ; $4a0f: $19
    ld a, $3e                                     ; $4a10: $3e $3e
    ld bc, $7f6b                                  ; $4a12: $01 $6b $7f
    xor l                                         ; $4a15: $ad
    rst $38                                       ; $4a16: $ff
    ld l, e                                       ; $4a17: $6b
    ld a, a                                       ; $4a18: $7f
    dec l                                         ; $4a19: $2d
    ld b, b                                       ; $4a1a: $40
    ld [bc], a                                    ; $4a1b: $02
    jr c, jr_0d8_4a21                             ; $4a1c: $38 $03

    inc bc                                        ; $4a1e: $03
    ld b, b                                       ; $4a1f: $40
    add hl, de                                    ; $4a20: $19

jr_0d8_4a21:
    ld b, d                                       ; $4a21: $42
    ld c, c                                       ; $4a22: $49
    xor b                                         ; $4a23: $a8
    ld a, [de]                                    ; $4a24: $1a
    ld [bc], a                                    ; $4a25: $02
    ld [bc], a                                    ; $4a26: $02

jr_0d8_4a27:
    scf                                           ; $4a27: $37
    jr jr_0d8_4a27                                ; $4a28: $18 $fd

    add b                                         ; $4a2a: $80
    add b                                         ; $4a2b: $80
    ld [hl+], a                                   ; $4a2c: $22
    ei                                            ; $4a2d: $fb
    ld [hl+], a                                   ; $4a2e: $22
    bit 3, [hl]                                   ; $4a2f: $cb $5e
    ld e, [hl]                                    ; $4a31: $5e
    cp a                                          ; $4a32: $bf
    inc d                                         ; $4a33: $14
    cp a                                          ; $4a34: $bf
    ld a, a                                       ; $4a35: $7f
    ld a, a                                       ; $4a36: $7f
    dec l                                         ; $4a37: $2d
    ld [bc], a                                    ; $4a38: $02
    ldh a, [$c0]                                  ; $4a39: $f0 $c0
    ld de, $1f30                                  ; $4a3b: $11 $30 $1f
    dec bc                                        ; $4a3e: $0b
    ld de, $181f                                  ; $4a3f: $11 $1f $18
    ccf                                           ; $4a42: $3f
    ld b, d                                       ; $4a43: $42
    ld bc, $7c56                                  ; $4a44: $01 $56 $7c
    nop                                           ; $4a47: $00
    ld [hl+], a                                   ; $4a48: $22
    dec bc                                        ; $4a49: $0b
    ld hl, sp-$14                                 ; $4a4a: $f8 $ec
    dec bc                                        ; $4a4c: $0b
    ldh [rBCPS], a                                ; $4a4d: $e0 $68
    ld [hl+], a                                   ; $4a4f: $22
    dec sp                                        ; $4a50: $3b
    ret nz                                        ; $4a51: $c0

    ld sp, hl                                     ; $4a52: $f9
    and d                                         ; $4a53: $a2
    db $eb                                        ; $4a54: $eb
    sbc h                                         ; $4a55: $9c
    nop                                           ; $4a56: $00
    inc d                                         ; $4a57: $14
    nop                                           ; $4a58: $00
    jr nz, jr_0d8_4a5b                            ; $4a59: $20 $00

jr_0d8_4a5b:
    ld l, $00                                     ; $4a5b: $2e $00
    ld a, [hl-]                                   ; $4a5d: $3a
    nop                                           ; $4a5e: $00
    ld c, b                                       ; $4a5f: $48
    nop                                           ; $4a60: $00
    ld d, [hl]                                    ; $4a61: $56
    nop                                           ; $4a62: $00
    ld h, h                                       ; $4a63: $64
    nop                                           ; $4a64: $00
    ld [hl], d                                    ; $4a65: $72
    nop                                           ; $4a66: $00
    add b                                         ; $4a67: $80
    nop                                           ; $4a68: $00
    adc [hl]                                      ; $4a69: $8e
    nop                                           ; $4a6a: $00
    inc bc                                        ; $4a6b: $03
    nop                                           ; $4a6c: $00
    ld hl, sp+$07                                 ; $4a6d: $f8 $07
    pop af                                        ; $4a6f: $f1
    nop                                           ; $4a70: $00
    ld a, [c]                                     ; $4a71: $f2
    ld a, [$fff2]                                 ; $4a72: $fa $f2 $ff
    ld [bc], a                                    ; $4a75: $02
    ei                                            ; $4a76: $fb
    inc b                                         ; $4a77: $04
    ld b, $f8                                     ; $4a78: $06 $f8
    rlca                                          ; $4a7a: $07
    pop af                                        ; $4a7b: $f1
    nop                                           ; $4a7c: $00
    db $ec                                        ; $4a7d: $ec
    ld a, [$ffec]                                 ; $4a7e: $fa $ec $ff
    db $fc                                        ; $4a81: $fc
    ei                                            ; $4a82: $fb
    db $fc                                        ; $4a83: $fc
    cp $03                                        ; $4a84: $fe $03
    ld c, $f8                                     ; $4a86: $0e $f8
    rlca                                          ; $4a88: $07
    pop af                                        ; $4a89: $f1
    nop                                           ; $4a8a: $00
    pop af                                        ; $4a8b: $f1
    ld a, [$fff1]                                 ; $4a8c: $fa $f1 $ff
    ld bc, $04fe                                  ; $4a8f: $01 $fe $04
    inc d                                         ; $4a92: $14
    ld hl, sp+$07                                 ; $4a93: $f8 $07
    pop af                                        ; $4a95: $f1
    nop                                           ; $4a96: $00
    db $ec                                        ; $4a97: $ec
    ld a, [$ffec]                                 ; $4a98: $fa $ec $ff
    db $fc                                        ; $4a9b: $fc
    ei                                            ; $4a9c: $fb
    db $fc                                        ; $4a9d: $fc
    cp $04                                        ; $4a9e: $fe $04
    inc e                                         ; $4aa0: $1c
    ld hl, sp+$07                                 ; $4aa1: $f8 $07
    pop af                                        ; $4aa3: $f1
    nop                                           ; $4aa4: $00
    ldh a, [$fa]                                  ; $4aa5: $f0 $fa
    pop af                                        ; $4aa7: $f1
    rst $38                                       ; $4aa8: $ff
    nop                                           ; $4aa9: $00
    ld a, [$fd00]                                 ; $4aaa: $fa $00 $fd
    inc b                                         ; $4aad: $04
    inc h                                         ; $4aae: $24
    ld hl, sp+$07                                 ; $4aaf: $f8 $07
    pop af                                        ; $4ab1: $f1
    nop                                           ; $4ab2: $00
    db $ec                                        ; $4ab3: $ec
    ld a, [$ffec]                                 ; $4ab4: $fa $ec $ff
    db $fc                                        ; $4ab7: $fc
    ei                                            ; $4ab8: $fb
    db $fc                                        ; $4ab9: $fc
    cp $04                                        ; $4aba: $fe $04
    inc l                                         ; $4abc: $2c
    ld hl, sp+$07                                 ; $4abd: $f8 $07
    pop af                                        ; $4abf: $f1
    nop                                           ; $4ac0: $00
    pop af                                        ; $4ac1: $f1
    ld a, [$fff1]                                 ; $4ac2: $fa $f1 $ff
    ld bc, $01fb                                  ; $4ac5: $01 $fb $01
    cp $04                                        ; $4ac8: $fe $04
    inc [hl]                                      ; $4aca: $34
    ld hl, sp+$07                                 ; $4acb: $f8 $07
    pop af                                        ; $4acd: $f1
    nop                                           ; $4ace: $00
    db $ec                                        ; $4acf: $ec
    ld a, [$ffec]                                 ; $4ad0: $fa $ec $ff
    db $fc                                        ; $4ad3: $fc
    ei                                            ; $4ad4: $fb
    db $fc                                        ; $4ad5: $fc
    cp $04                                        ; $4ad6: $fe $04
    inc a                                         ; $4ad8: $3c
    ld hl, sp+$07                                 ; $4ad9: $f8 $07
    pop af                                        ; $4adb: $f1
    nop                                           ; $4adc: $00
    rst $28                                       ; $4add: $ef
    ld a, [$fff0]                                 ; $4ade: $fa $f0 $ff
    rst $38                                       ; $4ae1: $ff
    ld a, [$ffff]                                 ; $4ae2: $fa $ff $ff
    inc b                                         ; $4ae5: $04
    ld b, h                                       ; $4ae6: $44
    ld hl, sp+$07                                 ; $4ae7: $f8 $07
    pop af                                        ; $4ae9: $f1
    nop                                           ; $4aea: $00
    db $ec                                        ; $4aeb: $ec
    ld a, [$ffec]                                 ; $4aec: $fa $ec $ff
    db $fc                                        ; $4aef: $fc
    ei                                            ; $4af0: $fb
    db $fc                                        ; $4af1: $fc
    cp $c0                                        ; $4af2: $fe $c0
    inc b                                         ; $4af4: $04
    add $01                                       ; $4af5: $c6 $01
    nop                                           ; $4af7: $00
    rrca                                          ; $4af8: $0f
    rrca                                          ; $4af9: $0f
    rra                                           ; $4afa: $1f
    inc de                                        ; $4afb: $13
    ccf                                           ; $4afc: $3f
    jr z, jr_0d8_4b3e                             ; $4afd: $28 $3f

    dec a                                         ; $4aff: $3d
    nop                                           ; $4b00: $00
    ccf                                           ; $4b01: $3f
    jr nc, jr_0d8_4b43                            ; $4b02: $30 $3f

    ld [hl+], a                                   ; $4b04: $22
    rra                                           ; $4b05: $1f
    dec d                                         ; $4b06: $15
    rrca                                          ; $4b07: $0f
    ld a, [bc]                                    ; $4b08: $0a
    nop                                           ; $4b09: $00
    rra                                           ; $4b0a: $1f
    rra                                           ; $4b0b: $1f
    ld a, [hl+]                                   ; $4b0c: $2a
    ccf                                           ; $4b0d: $3f
    ld e, l                                       ; $4b0e: $5d
    ld a, a                                       ; $4b0f: $7f
    ld e, d                                       ; $4b10: $5a
    ld a, a                                       ; $4b11: $7f
    nop                                           ; $4b12: $00
    ld e, l                                       ; $4b13: $5d
    ld a, a                                       ; $4b14: $7f
    and l                                         ; $4b15: $a5
    rst $38                                       ; $4b16: $ff
    rst $08                                       ; $4b17: $cf
    db $fc                                        ; $4b18: $fc
    ccf                                           ; $4b19: $3f
    ld [hl-], a                                   ; $4b1a: $32
    nop                                           ; $4b1b: $00
    db $10                                        ; $4b1c: $10
    db $10                                        ; $4b1d: $10
    jr jr_0d8_4b28                                ; $4b1e: $18 $08

    inc e                                         ; $4b20: $1c
    inc d                                         ; $4b21: $14
    inc e                                         ; $4b22: $1c
    inc e                                         ; $4b23: $1c
    ld [bc], a                                    ; $4b24: $02
    inc e                                         ; $4b25: $1c
    inc c                                         ; $4b26: $0c
    inc e                                         ; $4b27: $1c

jr_0d8_4b28:
    inc b                                         ; $4b28: $04
    jr @+$0a                                      ; $4b29: $18 $08

    ld c, $00                                     ; $4b2b: $0e $00
    jr jr_0d8_4b37                                ; $4b2d: $18 $08

    inc d                                         ; $4b2f: $14
    inc e                                         ; $4b30: $1c
    ld a, [de]                                    ; $4b31: $1a
    ld e, $02                                     ; $4b32: $1e $02
    ld [$1f05], sp                                ; $4b34: $08 $05 $1f

jr_0d8_4b37:
    inc de                                        ; $4b37: $13
    ld [bc], a                                    ; $4b38: $02
    rra                                           ; $4b39: $1f
    inc e                                         ; $4b3a: $1c
    inc c                                         ; $4b3b: $0c
    dec de                                        ; $4b3c: $1b
    dec de                                        ; $4b3d: $1b

jr_0d8_4b3e:
    nop                                           ; $4b3e: $00
    ld bc, $0bd0                                  ; $4b3f: $01 $d0 $0b
    db $10                                        ; $4b42: $10

jr_0d8_4b43:
    dec bc                                        ; $4b43: $0b
    rra                                           ; $4b44: $1f
    dec d                                         ; $4b45: $15
    ld h, b                                       ; $4b46: $60
    nop                                           ; $4b47: $00
    ld hl, $547f                                  ; $4b48: $21 $7f $54
    ld a, a                                       ; $4b4b: $7f
    nop                                           ; $4b4c: $00
    ld [hl], d                                    ; $4b4d: $72
    rst $38                                       ; $4b4e: $ff
    xor c                                         ; $4b4f: $a9
    rst $38                                       ; $4b50: $ff
    and b                                         ; $4b51: $a0
    ld a, a                                       ; $4b52: $7f
    ld d, l                                       ; $4b53: $55
    rst $38                                       ; $4b54: $ff
    nop                                           ; $4b55: $00
    and d                                         ; $4b56: $a2
    rst $38                                       ; $4b57: $ff
    sub e                                         ; $4b58: $93
    ld a, a                                       ; $4b59: $7f
    ld l, d                                       ; $4b5a: $6a
    ccf                                           ; $4b5b: $3f
    dec a                                         ; $4b5c: $3d
    ld e, a                                       ; $4b5d: $5f
    inc b                                         ; $4b5e: $04
    halt                                          ; $4b5f: $76
    ld e, a                                       ; $4b60: $5f
    ld a, a                                       ; $4b61: $7f
    sbc a                                         ; $4b62: $9f
    rst $38                                       ; $4b63: $ff
    ld h, b                                       ; $4b64: $60
    jr nz, jr_0d8_4b6b                            ; $4b65: $20 $04

    ld e, $00                                     ; $4b67: $1e $00
    ld d, $1f                                     ; $4b69: $16 $1f

jr_0d8_4b6b:
    dec c                                         ; $4b6b: $0d
    ld e, $12                                     ; $4b6c: $1e $12
    rra                                           ; $4b6e: $1f
    dec d                                         ; $4b6f: $15
    rra                                           ; $4b70: $1f
    ld b, b                                       ; $4b71: $40
    dec b                                         ; $4b72: $05
    ld b, $00                                     ; $4b73: $06 $00
    dec b                                         ; $4b75: $05
    ld e, $1a                                     ; $4b76: $1e $1a
    inc e                                         ; $4b78: $1c
    inc c                                         ; $4b79: $0c
    ld a, [de]                                    ; $4b7a: $1a
    nop                                           ; $4b7b: $00
    ld e, $0a                                     ; $4b7c: $1e $0a
    ld e, $09                                     ; $4b7e: $1e $09
    rra                                           ; $4b80: $1f
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    ld a, [hl]                                    ; $4b83: $7e
    ld bc, $717f                                  ; $4b84: $01 $7f $71
    ld a, a                                       ; $4b87: $7f
    ld a, a                                       ; $4b88: $7f
    ld a, a                                       ; $4b89: $7f
    ccf                                           ; $4b8a: $3f
    ccf                                           ; $4b8b: $3f
    ld l, b                                       ; $4b8c: $68
    sbc b                                         ; $4b8d: $98
    db $10                                        ; $4b8e: $10
    rlca                                          ; $4b8f: $07
    rlca                                          ; $4b90: $07
    ld b, $01                                     ; $4b91: $06 $01
    nop                                           ; $4b93: $00
    ld [bc], a                                    ; $4b94: $02
    ld b, $04                                     ; $4b95: $06 $04
    inc b                                         ; $4b97: $04
    add b                                         ; $4b98: $80
    adc b                                         ; $4b99: $88
    sbc b                                         ; $4b9a: $98
    rrca                                          ; $4b9b: $0f
    rrca                                          ; $4b9c: $0f
    rla                                           ; $4b9d: $17
    rra                                           ; $4b9e: $1f
    inc a                                         ; $4b9f: $3c
    ccf                                           ; $4ba0: $3f
    ccf                                           ; $4ba1: $3f
    nop                                           ; $4ba2: $00
    dec sp                                        ; $4ba3: $3b
    ccf                                           ; $4ba4: $3f
    dec l                                         ; $4ba5: $2d
    ccf                                           ; $4ba6: $3f
    ld hl, $323f                                  ; $4ba7: $21 $3f $32
    ccf                                           ; $4baa: $3f
    inc b                                         ; $4bab: $04
    inc sp                                        ; $4bac: $33
    ccf                                           ; $4bad: $3f
    jr c, jr_0d8_4bef                             ; $4bae: $38 $3f

    ccf                                           ; $4bb0: $3f
    sbc $08                                       ; $4bb1: $de $08
    ld e, d                                       ; $4bb3: $5a
    ld a, a                                       ; $4bb4: $7f
    ld b, c                                       ; $4bb5: $41
    cp l                                          ; $4bb6: $bd
    ldh [rP1], a                                  ; $4bb7: $e0 $00
    rst $38                                       ; $4bb9: $ff
    cp $10                                        ; $4bba: $fe $10
    db $10                                        ; $4bbc: $10
    ld [$00d2], sp                                ; $4bbd: $08 $d2 $00
    adc e                                         ; $4bc0: $8b
    sbc $00                                       ; $4bc1: $de $00
    inc e                                         ; $4bc3: $1c
    inc e                                         ; $4bc4: $1c
    inc b                                         ; $4bc5: $04
    db $e4                                        ; $4bc6: $e4
    nop                                           ; $4bc7: $00
    inc c                                         ; $4bc8: $0c
    db $eb                                        ; $4bc9: $eb
    ld [$18e0], sp                                ; $4bca: $08 $e0 $18
    nop                                           ; $4bcd: $00
    dec e                                         ; $4bce: $1d
    rra                                           ; $4bcf: $1f
    ld de, $191f                                  ; $4bd0: $11 $1f $19
    rrca                                          ; $4bd3: $0f
    rra                                           ; $4bd4: $1f
    rra                                           ; $4bd5: $1f
    add b                                         ; $4bd6: $80
    ldh [$d8], a                                  ; $4bd7: $e0 $d8
    dec c                                         ; $4bd9: $0d
    dec c                                         ; $4bda: $0d
    rla                                           ; $4bdb: $17
    dec de                                        ; $4bdc: $1b
    ld [hl], $39                                  ; $4bdd: $36 $39
    dec a                                         ; $4bdf: $3d
    inc b                                         ; $4be0: $04
    ld a, $3e                                     ; $4be1: $3e $3e
    ccf                                           ; $4be3: $3f
    ccf                                           ; $4be4: $3f
    ccf                                           ; $4be5: $3f
    and a                                         ; $4be6: $a7
    nop                                           ; $4be7: $00
    ld a, a                                       ; $4be8: $7f
    dec hl                                        ; $4be9: $2b
    ld [$7737], sp                                ; $4bea: $08 $37 $77
    ld a, b                                       ; $4bed: $78
    ld a, [hl-]                                   ; $4bee: $3a

jr_0d8_4bef:
    inc c                                         ; $4bef: $0c
    nop                                           ; $4bf0: $00
    ld a, $3f                                     ; $4bf1: $3e $3f
    ld e, a                                       ; $4bf3: $5f
    ld c, b                                       ; $4bf4: $48
    ld a, a                                       ; $4bf5: $7f
    ldh [$28], a                                  ; $4bf6: $e0 $28
    jr jr_0d8_4c02                                ; $4bf8: $18 $08

    ld e, a                                       ; $4bfa: $5f
    nop                                           ; $4bfb: $00
    inc d                                         ; $4bfc: $14
    ld d, $0e                                     ; $4bfd: $16 $0e
    nop                                           ; $4bff: $00

jr_0d8_4c00:
    inc c                                         ; $4c00: $0c
    inc e                                         ; $4c01: $1c

jr_0d8_4c02:
    ld e, $1e                                     ; $4c02: $1e $1e
    ld c, $16                                     ; $4c04: $0e $16
    inc d                                         ; $4c06: $14
    inc c                                         ; $4c07: $0c
    jr c, @+$18                                   ; $4c08: $38 $16

    ld e, $6f                                     ; $4c0a: $1e $6f
    ld [$f8e0], sp                                ; $4c0c: $08 $e0 $f8
    ldh [$f8], a                                  ; $4c0f: $e0 $f8
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    inc d                                         ; $4c13: $14
    dec b                                         ; $4c14: $05
    inc d                                         ; $4c15: $14
    cpl                                           ; $4c16: $2f
    cpl                                           ; $4c17: $2f
    rra                                           ; $4c18: $1f
    rra                                           ; $4c19: $1f
    sub $00                                       ; $4c1a: $d6 $00
    jr nc, jr_0d8_4c00                            ; $4c1c: $30 $e2

    nop                                           ; $4c1e: $00
    ld bc, $3f20                                  ; $4c1f: $01 $20 $3f
    inc [hl]                                      ; $4c22: $34
    rra                                           ; $4c23: $1f
    inc de                                        ; $4c24: $13
    rrca                                          ; $4c25: $0f
    ld [$49c4], sp                                ; $4c26: $08 $c4 $49
    db $e4                                        ; $4c29: $e4
    or d                                          ; $4c2a: $b2
    add hl, bc                                    ; $4c2b: $09
    cp [hl]                                       ; $4c2c: $be
    ld de, $0164                                  ; $4c2d: $11 $64 $01
    inc e                                         ; $4c30: $1c
    inc c                                         ; $4c31: $0c
    jp nz, $f369                                  ; $4c32: $c2 $69 $f3

    sbc a                                         ; $4c35: $9f
    ld [bc], a                                    ; $4c36: $02
    ret z                                         ; $4c37: $c8

    ld hl, sp+$3f                                 ; $4c38: $f8 $3f
    ld [hl-], a                                   ; $4c3a: $32
    dec c                                         ; $4c3b: $0d
    dec c                                         ; $4c3c: $0d
    call nz, $07c9                                ; $4c3d: $c4 $c9 $07
    ld l, b                                       ; $4c40: $68
    inc bc                                        ; $4c41: $03
    ld e, h                                       ; $4c42: $5c
    xor c                                         ; $4c43: $a9
    ldh [rNR42], a                                ; $4c44: $e0 $21
    inc d                                         ; $4c46: $14
    ld b, b                                       ; $4c47: $40
    ld [bc], a                                    ; $4c48: $02
    jr nz, jr_0d8_4c8a                            ; $4c49: $20 $3f

    dec [hl]                                      ; $4c4b: $35
    nop                                           ; $4c4c: $00
    ccf                                           ; $4c4d: $3f
    ld a, [hl-]                                   ; $4c4e: $3a
    ccf                                           ; $4c4f: $3f
    cpl                                           ; $4c50: $2f
    rra                                           ; $4c51: $1f
    rla                                           ; $4c52: $17
    rra                                           ; $4c53: $1f
    jr @+$03                                      ; $4c54: $18 $01

    jr z, jr_0d8_4c97                             ; $4c56: $28 $3f

    scf                                           ; $4c58: $37
    ccf                                           ; $4c59: $3f
    ld e, b                                       ; $4c5a: $58
    ld a, a                                       ; $4c5b: $7f
    ld e, h                                       ; $4c5c: $5c
    call c, $0a01                                 ; $4c5d: $dc $01 $0a
    cp a                                          ; $4c60: $bf
    rst $38                                       ; $4c61: $ff
    ld a, a                                       ; $4c62: $7f
    ld a, a                                       ; $4c63: $7f
    ld b, b                                       ; $4c64: $40
    ld [hl+], a                                   ; $4c65: $22
    inc d                                         ; $4c66: $14
    ld h, d                                       ; $4c67: $62
    ld de, $c414                                  ; $4c68: $11 $14 $c4
    inc c                                         ; $4c6b: $0c
    ld bc, $0240                                  ; $4c6c: $01 $40 $02
    inc c                                         ; $4c6f: $0c
    inc e                                         ; $4c70: $1c
    ld a, [bc]                                    ; $4c71: $0a
    ld b, d                                       ; $4c72: $42
    ld [bc], a                                    ; $4c73: $02
    add hl, de                                    ; $4c74: $19
    rra                                           ; $4c75: $1f
    ld [bc], a                                    ; $4c76: $02
    dec e                                         ; $4c77: $1d
    rra                                           ; $4c78: $1f
    ld c, $1e                                     ; $4c79: $0e $1e
    ld a, a                                       ; $4c7b: $7f
    ld a, a                                       ; $4c7c: $7f
    ldh [$09], a                                  ; $4c7d: $e0 $09
    cp $ec                                        ; $4c7f: $fe $ec
    ld a, [hl+]                                   ; $4c81: $2a

jr_0d8_4c82:
    nop                                           ; $4c82: $00
    ld c, b                                       ; $4c83: $48
    sbc d                                         ; $4c84: $9a
    sbc $19                                       ; $4c85: $de $19
    inc bc                                        ; $4c87: $03
    and $01                                       ; $4c88: $e6 $01

jr_0d8_4c8a:
    ldh [$a9], a                                  ; $4c8a: $e0 $a9
    rra                                           ; $4c8c: $1f
    ld [de], a                                    ; $4c8d: $12
    ld hl, $2f3f                                  ; $4c8e: $21 $3f $2f
    cp [hl]                                       ; $4c91: $be
    ld [bc], a                                    ; $4c92: $02
    dec a                                         ; $4c93: $3d
    ccf                                           ; $4c94: $3f
    inc h                                         ; $4c95: $24
    rra                                           ; $4c96: $1f

jr_0d8_4c97:
    ld b, b                                       ; $4c97: $40
    ld [bc], a                                    ; $4c98: $02
    db $10                                        ; $4c99: $10
    rrca                                          ; $4c9a: $0f
    ld a, [bc]                                    ; $4c9b: $0a
    scf                                           ; $4c9c: $37
    ldh [rNR42], a                                ; $4c9d: $e0 $21
    sbc l                                         ; $4c9f: $9d
    rst $38                                       ; $4ca0: $ff
    and c                                         ; $4ca1: $a1
    rst $38                                       ; $4ca2: $ff
    dec e                                         ; $4ca3: $1d
    add d                                         ; $4ca4: $82
    rst $38                                       ; $4ca5: $ff
    ld [$387e], sp                                ; $4ca6: $08 $7e $38
    ret nz                                        ; $4ca9: $c0

    ld [bc], a                                    ; $4caa: $02
    jp nz, Jump_000_0c0a                          ; $4cab: $c2 $0a $0c

    ret nz                                        ; $4cae: $c0

    ld [de], a                                    ; $4caf: $12
    jr nz, @+$1b                                  ; $4cb0: $20 $19

    rra                                           ; $4cb2: $1f
    add b                                         ; $4cb3: $80
    nop                                           ; $4cb4: $00
    rlca                                          ; $4cb5: $07
    inc bc                                        ; $4cb6: $03
    rra                                           ; $4cb7: $1f
    ei                                            ; $4cb8: $fb
    ei                                            ; $4cb9: $fb
    sub b                                         ; $4cba: $90
    ret nz                                        ; $4cbb: $c0

    jp c, $0707                                   ; $4cbc: $da $07 $07

    ldh [$da], a                                  ; $4cbf: $e0 $da
    dec d                                         ; $4cc1: $15
    dec d                                         ; $4cc2: $15
    rra                                           ; $4cc3: $1f
    rra                                           ; $4cc4: $1f
    ld h, h                                       ; $4cc5: $64
    scf                                           ; $4cc6: $37
    ld e, a                                       ; $4cc7: $5f
    ld [bc], a                                    ; $4cc8: $02
    ld bc, $1d08                                  ; $4cc9: $01 $08 $1d
    rra                                           ; $4ccc: $1f
    ld bc, $1700                                  ; $4ccd: $01 $00 $17
    rrca                                          ; $4cd0: $0f
    dec bc                                        ; $4cd1: $0b
    ld [$1f18], sp                                ; $4cd2: $08 $18 $1f
    cpl                                           ; $4cd5: $2f
    ld d, e                                       ; $4cd6: $53
    inc bc                                        ; $4cd7: $03
    ld e, h                                       ; $4cd8: $5c
    nop                                           ; $4cd9: $00
    ld [hl+], a                                   ; $4cda: $22
    ld h, b                                       ; $4cdb: $60
    ld [de], a                                    ; $4cdc: $12
    sbc $43                                       ; $4cdd: $de $43
    inc de                                        ; $4cdf: $13
    db $fd                                        ; $4ce0: $fd
    nop                                           ; $4ce1: $00
    jr jr_0d8_4d28                                ; $4ce2: $18 $44

    dec hl                                        ; $4ce4: $2b
    add [hl]                                      ; $4ce5: $86
    ld [$fae0], sp                                ; $4ce6: $08 $e0 $fa
    ldh [$fa], a                                  ; $4ce9: $e0 $fa
    add hl, bc                                    ; $4ceb: $09
    ld h, d                                       ; $4cec: $62
    add hl, bc                                    ; $4ced: $09
    cp $01                                        ; $4cee: $fe $01
    ld a, h                                       ; $4cf0: $7c
    ld a, [bc]                                    ; $4cf1: $0a
    ld [hl], h                                    ; $4cf2: $74
    ccf                                           ; $4cf3: $3f
    jr nc, @+$6c                                  ; $4cf4: $30 $6a

    inc bc                                        ; $4cf6: $03
    jr nz, jr_0d8_4c82                            ; $4cf7: $20 $89

    inc b                                         ; $4cf9: $04
    add hl, bc                                    ; $4cfa: $09
    rra                                           ; $4cfb: $1f
    ld a, [de]                                    ; $4cfc: $1a
    cpl                                           ; $4cfd: $2f
    db $e4                                        ; $4cfe: $e4
    ld [hl-], a                                   ; $4cff: $32
    inc c                                         ; $4d00: $0c
    inc c                                         ; $4d01: $0c
    nop                                           ; $4d02: $00
    ld a, [bc]                                    ; $4d03: $0a
    ld hl, sp+$04                                 ; $4d04: $f8 $04
    ld [bc], a                                    ; $4d06: $02
    db $fc                                        ; $4d07: $fc
    ld bc, $1902                                  ; $4d08: $01 $02 $19
    db $10                                        ; $4d0b: $10
    ld a, [bc]                                    ; $4d0c: $0a
    call nz, $1f1b                                ; $4d0d: $c4 $1b $1f
    rra                                           ; $4d10: $1f
    cp c                                          ; $4d11: $b9
    ld bc, $c8ff                                  ; $4d12: $01 $ff $c8
    ld hl, sp-$62                                 ; $4d15: $f8 $9e
    di                                            ; $4d17: $f3
    ld a, h                                       ; $4d18: $7c
    ld a, h                                       ; $4d19: $7c
    call nz, Call_000_0ccb                        ; $4d1a: $c4 $cb $0c
    rra                                           ; $4d1d: $1f
    inc de                                        ; $4d1e: $13
    inc c                                         ; $4d1f: $0c
    inc c                                         ; $4d20: $0c
    ldh [$d3], a                                  ; $4d21: $e0 $d3
    add b                                         ; $4d23: $80
    db $10                                        ; $4d24: $10
    ccf                                           ; $4d25: $3f
    ccf                                           ; $4d26: $3f
    ret nz                                        ; $4d27: $c0

jr_0d8_4d28:
    add [hl]                                      ; $4d28: $86
    ld [bc], a                                    ; $4d29: $02
    adc d                                         ; $4d2a: $8a
    ld [bc], a                                    ; $4d2b: $02
    rra                                           ; $4d2c: $1f
    db $10                                        ; $4d2d: $10
    rra                                           ; $4d2e: $1f
    rra                                           ; $4d2f: $1f
    jr z, jr_0d8_4d71                             ; $4d30: $28 $3f

    inc bc                                        ; $4d32: $03
    ld [hl], a                                    ; $4d33: $77
    ld a, a                                       ; $4d34: $7f
    ld e, b                                       ; $4d35: $58
    ld a, a                                       ; $4d36: $7f
    call c, Call_000_02ff                         ; $4d37: $dc $ff $02
    ld a, [bc]                                    ; $4d3a: $0a
    add b                                         ; $4d3b: $80
    ld [hl+], a                                   ; $4d3c: $22
    jp c, $0441                                   ; $4d3d: $da $41 $04

    adc b                                         ; $4d40: $88
    ld [bc], a                                    ; $4d41: $02
    inc d                                         ; $4d42: $14
    nop                                           ; $4d43: $00
    add hl, bc                                    ; $4d44: $09
    ld b, d                                       ; $4d45: $42
    inc c                                         ; $4d46: $0c
    ld a, [bc]                                    ; $4d47: $0a
    call c, Call_000_1b03                         ; $4d48: $dc $03 $1b
    cp h                                          ; $4d4b: $bc
    add d                                         ; $4d4c: $82
    ld bc, $e00d                                  ; $4d4d: $01 $0d $e0
    inc hl                                        ; $4d50: $23
    nop                                           ; $4d51: $00
    cp d                                          ; $4d52: $ba
    ldh [$0b], a                                  ; $4d53: $e0 $0b
    nop                                           ; $4d55: $00
    jp z, $009c                                   ; $4d56: $ca $9c $00

    inc d                                         ; $4d59: $14
    nop                                           ; $4d5a: $00
    ld [hl+], a                                   ; $4d5b: $22
    nop                                           ; $4d5c: $00
    jr nc, jr_0d8_4d5f                            ; $4d5d: $30 $00

jr_0d8_4d5f:
    ld a, $00                                     ; $4d5f: $3e $00
    ld c, h                                       ; $4d61: $4c
    nop                                           ; $4d62: $00
    ld e, d                                       ; $4d63: $5a
    nop                                           ; $4d64: $00
    ld h, h                                       ; $4d65: $64
    nop                                           ; $4d66: $00
    ld [hl], d                                    ; $4d67: $72
    nop                                           ; $4d68: $00
    add b                                         ; $4d69: $80
    nop                                           ; $4d6a: $00
    adc [hl]                                      ; $4d6b: $8e
    nop                                           ; $4d6c: $00
    inc b                                         ; $4d6d: $04
    nop                                           ; $4d6e: $00
    ld hl, sp+$07                                 ; $4d6f: $f8 $07

jr_0d8_4d71:
    pop af                                        ; $4d71: $f1
    nop                                           ; $4d72: $00
    xor $fa                                       ; $4d73: $ee $fa
    xor $ff                                       ; $4d75: $ee $ff
    cp $fc                                        ; $4d77: $fe $fc
    cp $fd                                        ; $4d79: $fe $fd
    inc b                                         ; $4d7b: $04
    ld [$07f8], sp                                ; $4d7c: $08 $f8 $07
    pop af                                        ; $4d7f: $f1
    nop                                           ; $4d80: $00
    ldh a, [$fb]                                  ; $4d81: $f0 $fb
    ldh a, [rP1]                                  ; $4d83: $f0 $00
    nop                                           ; $4d85: $00
    ld a, [$ff00]                                 ; $4d86: $fa $00 $ff
    inc b                                         ; $4d89: $04
    db $10                                        ; $4d8a: $10
    ld hl, sp+$07                                 ; $4d8b: $f8 $07
    pop af                                        ; $4d8d: $f1
    nop                                           ; $4d8e: $00
    db $ed                                        ; $4d8f: $ed
    ld a, [$ffed]                                 ; $4d90: $fa $ed $ff
    db $fd                                        ; $4d93: $fd
    ei                                            ; $4d94: $fb
    db $fd                                        ; $4d95: $fd
    cp $04                                        ; $4d96: $fe $04
    jr @-$06                                      ; $4d98: $18 $f8

    rlca                                          ; $4d9a: $07
    pop af                                        ; $4d9b: $f1
    nop                                           ; $4d9c: $00
    ldh a, [$fa]                                  ; $4d9d: $f0 $fa
    ldh a, [rIE]                                  ; $4d9f: $f0 $ff
    nop                                           ; $4da1: $00
    ld a, [$ff00]                                 ; $4da2: $fa $00 $ff
    inc b                                         ; $4da5: $04
    jr nz, @-$06                                  ; $4da6: $20 $f8

    rlca                                          ; $4da8: $07
    pop af                                        ; $4da9: $f1
    nop                                           ; $4daa: $00
    db $ec                                        ; $4dab: $ec
    ld a, [$ffec]                                 ; $4dac: $fa $ec $ff
    db $fc                                        ; $4daf: $fc
    ei                                            ; $4db0: $fb
    db $fc                                        ; $4db1: $fc
    cp $02                                        ; $4db2: $fe $02
    jr z, @-$06                                   ; $4db4: $28 $f8

    rlca                                          ; $4db6: $07
    pop af                                        ; $4db7: $f1
    nop                                           ; $4db8: $00
    ld a, [c]                                     ; $4db9: $f2
    ld sp, hl                                     ; $4dba: $f9
    ld a, [c]                                     ; $4dbb: $f2
    nop                                           ; $4dbc: $00
    inc b                                         ; $4dbd: $04
    inc l                                         ; $4dbe: $2c
    ld hl, sp+$07                                 ; $4dbf: $f8 $07
    pop af                                        ; $4dc1: $f1
    nop                                           ; $4dc2: $00
    db $ed                                        ; $4dc3: $ed
    ld a, [$ffed]                                 ; $4dc4: $fa $ed $ff
    db $fd                                        ; $4dc7: $fd
    ei                                            ; $4dc8: $fb
    db $fd                                        ; $4dc9: $fd
    cp $04                                        ; $4dca: $fe $04
    inc [hl]                                      ; $4dcc: $34
    ld hl, sp+$07                                 ; $4dcd: $f8 $07
    pop af                                        ; $4dcf: $f1
    nop                                           ; $4dd0: $00
    ldh a, [$fa]                                  ; $4dd1: $f0 $fa
    ldh a, [rIE]                                  ; $4dd3: $f0 $ff
    nop                                           ; $4dd5: $00
    ld a, [$ff00]                                 ; $4dd6: $fa $00 $ff
    inc b                                         ; $4dd9: $04
    inc a                                         ; $4dda: $3c
    ld hl, sp+$07                                 ; $4ddb: $f8 $07
    pop af                                        ; $4ddd: $f1
    nop                                           ; $4dde: $00
    db $eb                                        ; $4ddf: $eb
    ei                                            ; $4de0: $fb
    db $ed                                        ; $4de1: $ed
    rst $38                                       ; $4de2: $ff
    ei                                            ; $4de3: $fb
    ld a, [$fdfb]                                 ; $4de4: $fa $fb $fd
    inc b                                         ; $4de7: $04
    ld b, h                                       ; $4de8: $44
    ld hl, sp+$07                                 ; $4de9: $f8 $07
    pop af                                        ; $4deb: $f1
    nop                                           ; $4dec: $00
    ldh a, [$fa]                                  ; $4ded: $f0 $fa
    ldh a, [rIE]                                  ; $4def: $f0 $ff
    nop                                           ; $4df1: $00
    ld a, [$ff00]                                 ; $4df2: $fa $00 $ff
    ret nz                                        ; $4df5: $c0

    inc b                                         ; $4df6: $04
    and $01                                       ; $4df7: $e6 $01
    nop                                           ; $4df9: $00
    rrca                                          ; $4dfa: $0f
    rrca                                          ; $4dfb: $0f
    rra                                           ; $4dfc: $1f
    inc de                                        ; $4dfd: $13
    ccf                                           ; $4dfe: $3f
    jr nz, @+$41                                  ; $4dff: $20 $3f

    jr nc, jr_0d8_4e05                            ; $4e01: $30 $02

    ccf                                           ; $4e03: $3f
    ld a, [hl+]                                   ; $4e04: $2a

jr_0d8_4e05:
    ccf                                           ; $4e05: $3f
    ccf                                           ; $4e06: $3f
    rra                                           ; $4e07: $1f
    dec e                                         ; $4e08: $1d
    ld [bc], a                                    ; $4e09: $02
    nop                                           ; $4e0a: $00
    jr jr_0d8_4e0d                                ; $4e0b: $18 $00

jr_0d8_4e0d:
    cpl                                           ; $4e0d: $2f
    jr c, jr_0d8_4e3f                             ; $4e0e: $38 $2f

    jr c, jr_0d8_4e71                             ; $4e10: $38 $5f

    ld a, c                                       ; $4e12: $79
    ld e, a                                       ; $4e13: $5f
    ld a, a                                       ; $4e14: $7f
    nop                                           ; $4e15: $00
    sbc a                                         ; $4e16: $9f
    rst $38                                       ; $4e17: $ff
    ld a, a                                       ; $4e18: $7f
    ld a, a                                       ; $4e19: $7f
    ccf                                           ; $4e1a: $3f
    ccf                                           ; $4e1b: $3f
    db $10                                        ; $4e1c: $10
    stop                                          ; $4e1d: $10 $00
    jr jr_0d8_4e29                                ; $4e1f: $18 $08

    inc e                                         ; $4e21: $1c
    inc b                                         ; $4e22: $04
    inc e                                         ; $4e23: $1c
    inc c                                         ; $4e24: $0c
    inc e                                         ; $4e25: $1c
    inc d                                         ; $4e26: $14
    db $10                                        ; $4e27: $10
    inc e                                         ; $4e28: $1c

jr_0d8_4e29:
    inc c                                         ; $4e29: $0c
    jr jr_0d8_4e2d                                ; $4e2a: $18 $01

    db $10                                        ; $4e2c: $10

jr_0d8_4e2d:
    inc d                                         ; $4e2d: $14
    inc e                                         ; $4e2e: $1c
    inc e                                         ; $4e2f: $1c
    inc e                                         ; $4e30: $1c
    nop                                           ; $4e31: $00
    ld a, [de]                                    ; $4e32: $1a
    ld e, $0a                                     ; $4e33: $1e $0a
    ld e, $09                                     ; $4e35: $1e $09
    rra                                           ; $4e37: $1f
    ld e, $1e                                     ; $4e38: $1e $1e
    dec b                                         ; $4e3a: $05
    inc c                                         ; $4e3b: $0c
    inc e                                         ; $4e3c: $1c
    db $e3                                        ; $4e3d: $e3
    rst $38                                       ; $4e3e: $ff

jr_0d8_4e3f:
    cp $28                                        ; $4e3f: $fe $28
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    ld bc, $60b0                                  ; $4e43: $01 $b0 $60
    ld bc, $0001                                  ; $4e46: $01 $01 $00
    ld e, $b8                                     ; $4e49: $1e $b8
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    ld c, $0e                                     ; $4e4d: $0e $0e
    rra                                           ; $4e4f: $1f
    ld b, b                                       ; $4e50: $40
    ld de, $007c                                  ; $4e51: $11 $7c $00
    scf                                           ; $4e54: $37
    ld a, a                                       ; $4e55: $7f
    ld l, h                                       ; $4e56: $6c
    rst $38                                       ; $4e57: $ff
    or b                                          ; $4e58: $b0
    ld a, a                                       ; $4e59: $7f
    nop                                           ; $4e5a: $00
    ld e, l                                       ; $4e5b: $5d
    rst $38                                       ; $4e5c: $ff
    or b                                          ; $4e5d: $b0
    rst $38                                       ; $4e5e: $ff
    or h                                          ; $4e5f: $b4
    ld a, a                                       ; $4e60: $7f
    ld [hl], e                                    ; $4e61: $73
    rst $38                                       ; $4e62: $ff
    nop                                           ; $4e63: $00
    cp c                                          ; $4e64: $b9
    ld [hl], l                                    ; $4e65: $75
    ld e, a                                       ; $4e66: $5f
    ld e, e                                       ; $4e67: $5b
    ld a, a                                       ; $4e68: $7f
    ld d, l                                       ; $4e69: $55
    ld a, a                                       ; $4e6a: $7f
    ei                                            ; $4e6b: $fb
    jr @+$01                                      ; $4e6c: $18 $ff

    sbc e                                         ; $4e6e: $9b
    rst $38                                       ; $4e6f: $ff
    add b                                         ; $4e70: $80

jr_0d8_4e71:
    db $10                                        ; $4e71: $10
    ld a, h                                       ; $4e72: $7c
    nop                                           ; $4e73: $00
    ld e, $12                                     ; $4e74: $1e $12
    ld e, $40                                     ; $4e76: $1e $40
    ld c, $a0                                     ; $4e78: $0e $a0
    nop                                           ; $4e7a: $00
    rrca                                          ; $4e7b: $0f
    ld e, $16                                     ; $4e7c: $1e $16
    rra                                           ; $4e7e: $1f
    rla                                           ; $4e7f: $17
    rra                                           ; $4e80: $1f
    ld [bc], a                                    ; $4e81: $02
    dec c                                         ; $4e82: $0d
    ld d, $1e                                     ; $4e83: $16 $1e
    inc b                                         ; $4e85: $04
    inc e                                         ; $4e86: $1c
    ld [bc], a                                    ; $4e87: $02
    inc de                                        ; $4e88: $13
    nop                                           ; $4e89: $00
    ld a, [de]                                    ; $4e8a: $1a
    inc b                                         ; $4e8b: $04
    ld e, $9e                                     ; $4e8c: $1e $9e
    di                                            ; $4e8e: $f3
    ld a, h                                       ; $4e8f: $7c
    ld a, h                                       ; $4e90: $7c
    ld h, b                                       ; $4e91: $60
    ret z                                         ; $4e92: $c8

    rra                                           ; $4e93: $1f
    rra                                           ; $4e94: $1f
    add b                                         ; $4e95: $80
    ld a, [hl]                                    ; $4e96: $7e
    ret z                                         ; $4e97: $c8

    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    rrca                                          ; $4e9a: $0f
    rrca                                          ; $4e9b: $0f
    ld d, $1f                                     ; $4e9c: $16 $1f
    add hl, sp                                    ; $4e9e: $39
    db $10                                        ; $4e9f: $10
    ccf                                           ; $4ea0: $3f
    dec a                                         ; $4ea1: $3d
    ccf                                           ; $4ea2: $3f
    ld bc, $2b28                                  ; $4ea3: $01 $28 $2b
    ccf                                           ; $4ea6: $3f
    jr c, jr_0d8_4ee8                             ; $4ea7: $38 $3f

    nop                                           ; $4ea9: $00
    ld a, a                                       ; $4eaa: $7f
    ld a, a                                       ; $4eab: $7f
    ld e, b                                       ; $4eac: $58
    ld a, a                                       ; $4ead: $7f
    call c, $9fff                                 ; $4eae: $dc $ff $9f
    rst $38                                       ; $4eb1: $ff
    ld b, c                                       ; $4eb2: $41
    cp a                                          ; $4eb3: $bf
    ld [bc], a                                    ; $4eb4: $02
    ld bc, $1010                                  ; $4eb5: $01 $10 $10
    ld [$0c18], sp                                ; $4eb8: $08 $18 $0c
    ld a, [c]                                     ; $4ebb: $f2
    nop                                           ; $4ebc: $00
    ldh [$f6], a                                  ; $4ebd: $e0 $f6
    ld [$0806], sp                                ; $4ebf: $08 $06 $08
    cp $28                                        ; $4ec2: $fe $28
    dec de                                        ; $4ec4: $1b
    rra                                           ; $4ec5: $1f
    add hl, de                                    ; $4ec6: $19
    rra                                           ; $4ec7: $1f
    dec c                                         ; $4ec8: $0d
    add h                                         ; $4ec9: $84
    ld [bc], a                                    ; $4eca: $02
    ld bc, $7f7e                                  ; $4ecb: $01 $7e $7f
    ld [hl], c                                    ; $4ece: $71
    ld a, a                                       ; $4ecf: $7f
    ld [bc], a                                    ; $4ed0: $02
    ret                                           ; $4ed1: $c9


    ld b, $06                                     ; $4ed2: $06 $06
    ld [bc], a                                    ; $4ed4: $02
    ld [bc], a                                    ; $4ed5: $02
    ld b, $03                                     ; $4ed6: $06 $03
    rlca                                          ; $4ed8: $07
    ld b, $06                                     ; $4ed9: $06 $06
    ld [hl+], a                                   ; $4edb: $22
    xor c                                         ; $4edc: $a9
    dec c                                         ; $4edd: $0d
    nop                                           ; $4ede: $00
    dec c                                         ; $4edf: $0d
    dec de                                        ; $4ee0: $1b
    rla                                           ; $4ee1: $17
    rra                                           ; $4ee2: $1f
    inc de                                        ; $4ee3: $13
    cpl                                           ; $4ee4: $2f
    inc a                                         ; $4ee5: $3c
    ccf                                           ; $4ee6: $3f
    nop                                           ; $4ee7: $00

jr_0d8_4ee8:
    jr nc, jr_0d8_4f59                            ; $4ee8: $30 $6f

    ld a, l                                       ; $4eea: $7d
    ccf                                           ; $4eeb: $3f
    jr nz, jr_0d8_4f4d                            ; $4eec: $20 $5f

    ld [hl], h                                    ; $4eee: $74
    ld a, a                                       ; $4eef: $7f
    nop                                           ; $4ef0: $00
    ld [hl], e                                    ; $4ef1: $73
    ccf                                           ; $4ef2: $3f
    jr c, jr_0d8_4f74                             ; $4ef3: $38 $7f

    ld a, a                                       ; $4ef5: $7f
    ld a, [hl+]                                   ; $4ef6: $2a
    ccf                                           ; $4ef7: $3f
    ld e, l                                       ; $4ef8: $5d
    ld [bc], a                                    ; $4ef9: $02
    ld a, a                                       ; $4efa: $7f
    ld e, d                                       ; $4efb: $5a
    ld a, a                                       ; $4efc: $7f
    ld e, l                                       ; $4efd: $5d
    ld a, a                                       ; $4efe: $7f
    cp l                                          ; $4eff: $bd
    nop                                           ; $4f00: $00
    ld bc, $1008                                  ; $4f01: $01 $08 $10
    jr jr_0d8_4f22                                ; $4f04: $18 $1c

    inc b                                         ; $4f06: $04
    ld [hl], h                                    ; $4f07: $74
    ld bc, $140c                                  ; $4f08: $01 $0c $14
    inc e                                         ; $4f0b: $1c
    ld a, [de]                                    ; $4f0c: $1a
    dec d                                         ; $4f0d: $15
    ld b, $1e                                     ; $4f0e: $06 $1e
    ld a, [bc]                                    ; $4f10: $0a
    ld a, [bc]                                    ; $4f11: $0a
    ld bc, $8e1e                                  ; $4f12: $01 $1e $8e
    ld [$fc1a], sp                                ; $4f15: $08 $1a $fc
    nop                                           ; $4f18: $00
    ld [bc], a                                    ; $4f19: $02
    ld a, [de]                                    ; $4f1a: $1a
    ld e, $1d                                     ; $4f1b: $1e $1d
    rra                                           ; $4f1d: $1f
    jp c, $e0ff                                   ; $4f1e: $da $ff $e0

    ret c                                         ; $4f21: $d8

jr_0d8_4f22:
    dec de                                        ; $4f22: $1b
    sub c                                         ; $4f23: $91
    nop                                           ; $4f24: $00
    pop hl                                        ; $4f25: $e1
    ld [bc], a                                    ; $4f26: $02
    ld [bc], a                                    ; $4f27: $02
    ld [bc], a                                    ; $4f28: $02
    ld [bc], a                                    ; $4f29: $02
    rra                                           ; $4f2a: $1f
    ccf                                           ; $4f2b: $3f
    cpl                                           ; $4f2c: $2f
    ld bc, $0a19                                  ; $4f2d: $01 $19 $0a
    dec a                                         ; $4f30: $3d
    ccf                                           ; $4f31: $3f
    ld a, [de]                                    ; $4f32: $1a
    rra                                           ; $4f33: $1f
    db $10                                        ; $4f34: $10
    ld [$112f], sp                                ; $4f35: $08 $2f $11
    nop                                           ; $4f38: $00
    ld e, a                                       ; $4f39: $5f
    ld b, b                                       ; $4f3a: $40
    ld a, a                                       ; $4f3b: $7f
    inc b                                         ; $4f3c: $04
    ld a, [bc]                                    ; $4f3d: $0a
    db $10                                        ; $4f3e: $10
    db $10                                        ; $4f3f: $10
    inc e                                         ; $4f40: $1c
    inc e                                         ; $4f41: $1c
    jr jr_0d8_4f5c                                ; $4f42: $18 $18

    call z, Call_000_20ff                         ; $4f44: $cc $ff $20
    ld a, [$1801]                                 ; $4f47: $fa $01 $18
    jr jr_0d8_4f5e                                ; $4f4a: $18 $12

    ld [bc], a                                    ; $4f4c: $02

jr_0d8_4f4d:
    inc b                                         ; $4f4d: $04
    ld b, d                                       ; $4f4e: $42
    rst $38                                       ; $4f4f: $ff
    rst $38                                       ; $4f50: $ff
    db $ec                                        ; $4f51: $ec
    ld [bc], a                                    ; $4f52: $02
    add hl, bc                                    ; $4f53: $09
    ld a, [hl+]                                   ; $4f54: $2a
    ld a, [bc]                                    ; $4f55: $0a
    inc b                                         ; $4f56: $04
    sbc d                                         ; $4f57: $9a
    rlca                                          ; $4f58: $07

jr_0d8_4f59:
    db $fc                                        ; $4f59: $fc
    nop                                           ; $4f5a: $00
    inc b                                         ; $4f5b: $04

jr_0d8_4f5c:
    add hl, bc                                    ; $4f5c: $09
    inc b                                         ; $4f5d: $04

jr_0d8_4f5e:
    inc b                                         ; $4f5e: $04
    sub b                                         ; $4f5f: $90
    jr nz, @-$56                                  ; $4f60: $20 $a8

    rrca                                          ; $4f62: $0f
    ld a, [bc]                                    ; $4f63: $0a
    ld a, b                                       ; $4f64: $78
    ld [bc], a                                    ; $4f65: $02
    ld [de], a                                    ; $4f66: $12
    rra                                           ; $4f67: $1f
    inc e                                         ; $4f68: $1c
    rra                                           ; $4f69: $1f
    nop                                           ; $4f6a: $00
    ld d, $1f                                     ; $4f6b: $16 $1f
    jr jr_0d8_4fae                                ; $4f6d: $18 $3f

    dec h                                         ; $4f6f: $25
    rra                                           ; $4f70: $1f
    inc d                                         ; $4f71: $14
    rra                                           ; $4f72: $1f
    nop                                           ; $4f73: $00

jr_0d8_4f74:
    dec de                                        ; $4f74: $1b
    dec l                                         ; $4f75: $2d
    ccf                                           ; $4f76: $3f
    ld l, [hl]                                    ; $4f77: $6e
    ld a, a                                       ; $4f78: $7f
    ld b, l                                       ; $4f79: $45
    ld a, a                                       ; $4f7a: $7f
    adc [hl]                                      ; $4f7b: $8e
    ld [$5eff], sp                                ; $4f7c: $08 $ff $5e
    ld a, a                                       ; $4f7f: $7f
    jr nz, jr_0d8_4f83                            ; $4f80: $20 $01

    nop                                           ; $4f82: $00

jr_0d8_4f83:
    ld [hl], b                                    ; $4f83: $70
    ld d, b                                       ; $4f84: $50
    ld a, b                                       ; $4f85: $78
    inc b                                         ; $4f86: $04
    ld l, b                                       ; $4f87: $68
    ld a, b                                       ; $4f88: $78
    jr c, jr_0d8_5003                             ; $4f89: $38 $78

    jr jr_0d8_4f93                                ; $4f8b: $18 $06

    nop                                           ; $4f8d: $00
    jr @+$7e                                      ; $4f8e: $18 $7c

    nop                                           ; $4f90: $00
    inc h                                         ; $4f91: $24
    ld a, b                                       ; $4f92: $78

jr_0d8_4f93:
    jr z, jr_0d8_500d                             ; $4f93: $28 $78

    ld e, b                                       ; $4f95: $58
    inc [hl]                                      ; $4f96: $34
    ld a, h                                       ; $4f97: $7c
    halt                                          ; $4f98: $76
    nop                                           ; $4f99: $00
    ld a, [hl]                                    ; $4f9a: $7e
    ld [hl+], a                                   ; $4f9b: $22
    ld a, [hl]                                    ; $4f9c: $7e

jr_0d8_4f9d:
    ld [hl], c                                    ; $4f9d: $71
    ld a, a                                       ; $4f9e: $7f
    ld a, d                                       ; $4f9f: $7a
    ld a, [hl]                                    ; $4fa0: $7e
    inc b                                         ; $4fa1: $04
    ld bc, $1704                                  ; $4fa2: $01 $04 $17
    rla                                           ; $4fa5: $17
    ccf                                           ; $4fa6: $3f
    jr z, jr_0d8_4fe8                             ; $4fa7: $28 $3f

    inc l                                         ; $4fa9: $2c
    ret nz                                        ; $4faa: $c0

    ld [de], a                                    ; $4fab: $12
    db $10                                        ; $4fac: $10
    dec [hl]                                      ; $4fad: $35

jr_0d8_4fae:
    rra                                           ; $4fae: $1f
    rra                                           ; $4faf: $1f
    inc e                                         ; $4fb0: $1c
    ld [bc], a                                    ; $4fb1: $02
    rra                                           ; $4fb2: $1f
    jr z, @+$41                                   ; $4fb3: $28 $3f

    ld [hl], a                                    ; $4fb5: $77
    rst $10                                       ; $4fb6: $d7
    ret nz                                        ; $4fb7: $c0

    ld d, c                                       ; $4fb8: $51
    ret nz                                        ; $4fb9: $c0

    ld d, d                                       ; $4fba: $52
    ld [$0ac0], sp                                ; $4fbb: $08 $c0 $0a
    ld a, [bc]                                    ; $4fbe: $0a
    ret nz                                        ; $4fbf: $c0

    ld sp, hl                                     ; $4fc0: $f9
    ret nz                                        ; $4fc1: $c0

    ld sp, hl                                     ; $4fc2: $f9
    di                                            ; $4fc3: $f3
    ld [hl+], a                                   ; $4fc4: $22
    nop                                           ; $4fc5: $00
    dec bc                                        ; $4fc6: $0b
    dec bc                                        ; $4fc7: $0b
    ld d, $1f                                     ; $4fc8: $16 $1f
    ccf                                           ; $4fca: $3f
    ccf                                           ; $4fcb: $3f
    cpl                                           ; $4fcc: $2f
    add hl, sp                                    ; $4fcd: $39
    adc b                                         ; $4fce: $88
    ld b, d                                       ; $4fcf: $42
    inc bc                                        ; $4fd0: $03
    dec [hl]                                      ; $4fd1: $35
    ccf                                           ; $4fd2: $3f
    jr nz, jr_0d8_4f9d                            ; $4fd3: $20 $c8

    nop                                           ; $4fd5: $00
    rla                                           ; $4fd6: $17
    rrca                                          ; $4fd7: $0f
    ld [$1f20], sp                                ; $4fd8: $08 $20 $1f
    rra                                           ; $4fdb: $1f
    ret nz                                        ; $4fdc: $c0

    add hl, de                                    ; $4fdd: $19
    ld a, l                                       ; $4fde: $7d
    ld a, a                                       ; $4fdf: $7f
    sbc l                                         ; $4fe0: $9d
    rst $38                                       ; $4fe1: $ff
    ld [$72eb], sp                                ; $4fe2: $08 $eb $72
    db $10                                        ; $4fe5: $10
    ld b, b                                       ; $4fe6: $40
    inc bc                                        ; $4fe7: $03

jr_0d8_4fe8:
    ld [bc], a                                    ; $4fe8: $02
    ld [$8004], sp                                ; $4fe9: $08 $04 $80
    nop                                           ; $4fec: $00
    ld [$1940], sp                                ; $4fed: $08 $40 $19
    ret nz                                        ; $4ff0: $c0

    add hl, bc                                    ; $4ff1: $09
    nop                                           ; $4ff2: $00
    ld e, $1e                                     ; $4ff3: $1e $1e
    add hl, de                                    ; $4ff5: $19
    rra                                           ; $4ff6: $1f
    db $fd                                        ; $4ff7: $fd
    rst $08                                       ; $4ff8: $cf
    jr nc, jr_0d8_502b                            ; $4ff9: $30 $30

    adc e                                         ; $4ffb: $8b
    ret nz                                        ; $4ffc: $c0

    jp nc, Jump_000_0c13                          ; $4ffd: $d2 $13 $0c

    inc c                                         ; $5000: $0c
    ret nz                                        ; $5001: $c0

    reti                                          ; $5002: $d9


jr_0d8_5003:
    cpl                                           ; $5003: $2f
    cp h                                          ; $5004: $bc
    ld bc, $0181                                  ; $5005: $01 $81 $01
    sub b                                         ; $5008: $90
    add h                                         ; $5009: $84
    ld de, $5f7f                                  ; $500a: $11 $7f $5f

jr_0d8_500d:
    add [hl]                                      ; $500d: $86
    nop                                           ; $500e: $00
    ld sp, $1f1f                                  ; $500f: $31 $1f $1f
    ld sp, $be82                                  ; $5012: $31 $82 $be
    ld bc, $7f50                                  ; $5015: $01 $50 $7f
    cp c                                          ; $5018: $b9
    rst $38                                       ; $5019: $ff
    cp [hl]                                       ; $501a: $be
    add b                                         ; $501b: $80
    nop                                           ; $501c: $00
    inc c                                         ; $501d: $0c
    ld c, b                                       ; $501e: $48
    inc c                                         ; $501f: $0c
    inc b                                         ; $5020: $04
    jr nz, jr_0d8_5027                            ; $5021: $20 $04

    ld [$0001], sp                                ; $5023: $08 $01 $00
    nop                                           ; $5026: $00

jr_0d8_5027:
    nop                                           ; $5027: $00
    ld [$0800], sp                                ; $5028: $08 $00 $08

jr_0d8_502b:
    inc b                                         ; $502b: $04
    inc c                                         ; $502c: $0c
    inc c                                         ; $502d: $0c
    inc c                                         ; $502e: $0c
    ld a, [bc]                                    ; $502f: $0a
    ld c, $0a                                     ; $5030: $0e $0a
    nop                                           ; $5032: $00
    ld c, $e9                                     ; $5033: $0e $e9
    rst $38                                       ; $5035: $ff
    cp $fe                                        ; $5036: $fe $fe
    sbc b                                         ; $5038: $98
    ld hl, sp+$78                                 ; $5039: $f8 $78
    jr c, jr_0d8_50b5                             ; $503b: $38 $78

    ccf                                           ; $503d: $3f
    db $f4                                        ; $503e: $f4
    ld [bc], a                                    ; $503f: $02
    cp $03                                        ; $5040: $fe $03
    ld a, [hl+]                                   ; $5042: $2a
    or e                                          ; $5043: $b3
    inc bc                                        ; $5044: $03
    rlca                                          ; $5045: $07
    rlca                                          ; $5046: $07
    ld [hl-], a                                   ; $5047: $32
    rlca                                          ; $5048: $07
    dec b                                         ; $5049: $05
    call nz, $3ea2                                ; $504a: $c4 $a2 $3e
    ld [de], a                                    ; $504d: $12
    ccf                                           ; $504e: $3f
    ccf                                           ; $504f: $3f
    nop                                           ; $5050: $00
    ld bc, $101f                                  ; $5051: $01 $1f $10
    dec e                                         ; $5054: $1d
    ccf                                           ; $5055: $3f
    inc h                                         ; $5056: $24
    ret z                                         ; $5057: $c8

    ld bc, $0f13                                  ; $5058: $01 $13 $0f
    ld [$5f3f], sp                                ; $505b: $08 $3f $5f
    ccf                                           ; $505e: $3f
    cp h                                          ; $505f: $bc
    ld a, [bc]                                    ; $5060: $0a
    ld e, d                                       ; $5061: $5a
    cp [hl]                                       ; $5062: $be
    ld [bc], a                                    ; $5063: $02
    nop                                           ; $5064: $00
    add hl, de                                    ; $5065: $19
    ld sp, $0004                                  ; $5066: $31 $04 $00
    ld bc, $0246                                  ; $5069: $01 $46 $02
    db $fc                                        ; $506c: $fc
    nop                                           ; $506d: $00
    ld hl, $0c40                                  ; $506e: $21 $40 $0c
    cp [hl]                                       ; $5071: $be
    ld a, [de]                                    ; $5072: $1a
    nop                                           ; $5073: $00
    ld bc, $e2c0                                  ; $5074: $01 $c0 $e2
    ret nz                                        ; $5077: $c0

    db $eb                                        ; $5078: $eb
    sbc [hl]                                      ; $5079: $9e
    nop                                           ; $507a: $00
    inc d                                         ; $507b: $14
    nop                                           ; $507c: $00
    jr nz, jr_0d8_507f                            ; $507d: $20 $00

jr_0d8_507f:
    ld l, $00                                     ; $507f: $2e $00
    inc a                                         ; $5081: $3c
    nop                                           ; $5082: $00
    ld c, d                                       ; $5083: $4a
    nop                                           ; $5084: $00
    ld e, b                                       ; $5085: $58
    nop                                           ; $5086: $00
    ld h, [hl]                                    ; $5087: $66
    nop                                           ; $5088: $00
    ld [hl], h                                    ; $5089: $74
    nop                                           ; $508a: $00
    add d                                         ; $508b: $82
    nop                                           ; $508c: $00
    sub b                                         ; $508d: $90
    nop                                           ; $508e: $00
    inc bc                                        ; $508f: $03
    nop                                           ; $5090: $00
    ld hl, sp+$07                                 ; $5091: $f8 $07
    pop af                                        ; $5093: $f1
    nop                                           ; $5094: $00
    xor $fe                                       ; $5095: $ee $fe
    rst $28                                       ; $5097: $ef
    ld bc, $fffe                                  ; $5098: $01 $fe $ff
    inc b                                         ; $509b: $04
    ld b, $f8                                     ; $509c: $06 $f8
    rlca                                          ; $509e: $07
    pop af                                        ; $509f: $f1
    nop                                           ; $50a0: $00
    db $ec                                        ; $50a1: $ec
    cp $ee                                        ; $50a2: $fe $ee
    ld bc, $fefc                                  ; $50a4: $01 $fc $fe
    db $fc                                        ; $50a7: $fc
    rst $38                                       ; $50a8: $ff
    inc b                                         ; $50a9: $04
    ld c, $f8                                     ; $50aa: $0e $f8
    rlca                                          ; $50ac: $07
    pop af                                        ; $50ad: $f1
    nop                                           ; $50ae: $00
    db $ed                                        ; $50af: $ed
    cp $ed                                        ; $50b0: $fe $ed
    ld bc, $fffd                                  ; $50b2: $01 $fd $ff

jr_0d8_50b5:
    db $fd                                        ; $50b5: $fd
    nop                                           ; $50b6: $00
    inc b                                         ; $50b7: $04
    ld d, $f8                                     ; $50b8: $16 $f8
    rlca                                          ; $50ba: $07
    pop af                                        ; $50bb: $f1
    nop                                           ; $50bc: $00
    db $ec                                        ; $50bd: $ec
    cp $ee                                        ; $50be: $fe $ee
    ld bc, $fefc                                  ; $50c0: $01 $fc $fe
    db $fc                                        ; $50c3: $fc
    rst $38                                       ; $50c4: $ff
    inc b                                         ; $50c5: $04
    ld e, $f8                                     ; $50c6: $1e $f8
    rlca                                          ; $50c8: $07
    pop af                                        ; $50c9: $f1
    nop                                           ; $50ca: $00
    db $ec                                        ; $50cb: $ec
    cp $ee                                        ; $50cc: $fe $ee
    ld [bc], a                                    ; $50ce: $02
    db $fc                                        ; $50cf: $fc
    cp $fc                                        ; $50d0: $fe $fc
    rst $38                                       ; $50d2: $ff
    inc b                                         ; $50d3: $04
    ld h, $f8                                     ; $50d4: $26 $f8
    rlca                                          ; $50d6: $07
    pop af                                        ; $50d7: $f1
    nop                                           ; $50d8: $00
    db $ec                                        ; $50d9: $ec
    cp $ed                                        ; $50da: $fe $ed
    nop                                           ; $50dc: $00
    db $fc                                        ; $50dd: $fc
    cp $fc                                        ; $50de: $fe $fc
    nop                                           ; $50e0: $00
    inc b                                         ; $50e1: $04
    ld l, $f8                                     ; $50e2: $2e $f8
    rlca                                          ; $50e4: $07
    pop af                                        ; $50e5: $f1
    nop                                           ; $50e6: $00
    db $ed                                        ; $50e7: $ed
    cp $ed                                        ; $50e8: $fe $ed
    ld bc, $fffd                                  ; $50ea: $01 $fd $ff
    db $fd                                        ; $50ed: $fd
    nop                                           ; $50ee: $00
    inc b                                         ; $50ef: $04
    ld [hl], $f8                                  ; $50f0: $36 $f8
    rlca                                          ; $50f2: $07
    pop af                                        ; $50f3: $f1
    nop                                           ; $50f4: $00
    db $ec                                        ; $50f5: $ec
    cp $ed                                        ; $50f6: $fe $ed
    ld bc, $fefc                                  ; $50f8: $01 $fc $fe
    db $fc                                        ; $50fb: $fc
    rst $38                                       ; $50fc: $ff
    inc b                                         ; $50fd: $04
    ld a, $f8                                     ; $50fe: $3e $f8
    rlca                                          ; $5100: $07
    pop af                                        ; $5101: $f1
    nop                                           ; $5102: $00
    db $eb                                        ; $5103: $eb
    cp $ec                                        ; $5104: $fe $ec
    nop                                           ; $5106: $00
    ei                                            ; $5107: $fb
    cp $fb                                        ; $5108: $fe $fb
    rst $38                                       ; $510a: $ff
    inc b                                         ; $510b: $04
    ld b, [hl]                                    ; $510c: $46
    ld hl, sp+$07                                 ; $510d: $f8 $07
    pop af                                        ; $510f: $f1
    nop                                           ; $5110: $00
    db $ec                                        ; $5111: $ec
    cp $ec                                        ; $5112: $fe $ec
    ld bc, $fefc                                  ; $5114: $01 $fc $fe
    db $fc                                        ; $5117: $fc
    nop                                           ; $5118: $00
    ldh [rDIV], a                                 ; $5119: $e0 $04
    adc c                                         ; $511b: $89
    ld bc, $5f00                                  ; $511c: $01 $00 $5f
    ld e, a                                       ; $511f: $5f
    ccf                                           ; $5120: $3f
    inc [hl]                                      ; $5121: $34
    ccf                                           ; $5122: $3f
    ld h, $7f                                     ; $5123: $26 $7f
    ld e, e                                       ; $5125: $5b
    nop                                           ; $5126: $00
    rst $38                                       ; $5127: $ff
    add e                                         ; $5128: $83
    ld a, a                                       ; $5129: $7f
    ld b, l                                       ; $512a: $45
    ld a, a                                       ; $512b: $7f
    ld d, e                                       ; $512c: $53
    ccf                                           ; $512d: $3f
    daa                                           ; $512e: $27
    nop                                           ; $512f: $00
    rra                                           ; $5130: $1f
    dec de                                        ; $5131: $1b
    dec d                                         ; $5132: $15
    rra                                           ; $5133: $1f
    dec l                                         ; $5134: $2d
    ccf                                           ; $5135: $3f
    ld [hl], l                                    ; $5136: $75
    ld a, a                                       ; $5137: $7f
    nop                                           ; $5138: $00
    ld l, l                                       ; $5139: $6d
    ld a, a                                       ; $513a: $7f
    db $ec                                        ; $513b: $ec
    cp a                                          ; $513c: $bf
    ret nc                                        ; $513d: $d0

    rst $38                                       ; $513e: $ff
    add hl, sp                                    ; $513f: $39
    cpl                                           ; $5140: $2f
    inc bc                                        ; $5141: $03
    inc b                                         ; $5142: $04
    inc b                                         ; $5143: $04
    ld b, $02                                     ; $5144: $06 $02
    ld b, $06                                     ; $5146: $06 $06
    inc b                                         ; $5148: $04
    db $10                                        ; $5149: $10
    ld b, $00                                     ; $514a: $06 $00
    jr nz, @+$09                                  ; $514c: $20 $07

    ld bc, $0002                                  ; $514e: $01 $02 $00
    dec b                                         ; $5151: $05
    rlca                                          ; $5152: $07
    dec b                                         ; $5153: $05
    ld b, $06                                     ; $5154: $06 $06
    ld b, b                                       ; $5156: $40
    inc b                                         ; $5157: $04
    ld bc, $fc10                                  ; $5158: $01 $10 $fc
    cp h                                          ; $515b: $bc
    ld b, b                                       ; $515c: $40
    ld b, b                                       ; $515d: $40
    ld [hl], a                                    ; $515e: $77
    ld a, a                                       ; $515f: $7f
    db $10                                        ; $5160: $10
    ld a, [hl]                                    ; $5161: $7e
    ld a, [hl]                                    ; $5162: $7e
    nop                                           ; $5163: $00
    ld bc, $2cb0                                  ; $5164: $01 $b0 $2c
    inc l                                         ; $5167: $2c
    ld a, a                                       ; $5168: $7f
    ld d, e                                       ; $5169: $53
    nop                                           ; $516a: $00
    rst $38                                       ; $516b: $ff
    ret                                           ; $516c: $c9


    rst $38                                       ; $516d: $ff
    or [hl]                                       ; $516e: $b6
    rst $38                                       ; $516f: $ff
    call c, Call_0d8_467f                         ; $5170: $dc $7f $46
    ld [bc], a                                    ; $5173: $02
    rst $38                                       ; $5174: $ff
    rst $18                                       ; $5175: $df
    ld a, a                                       ; $5176: $7f
    ld b, d                                       ; $5177: $42
    rst $38                                       ; $5178: $ff
    add a                                         ; $5179: $87
    ld h, [hl]                                    ; $517a: $66
    ld [$1f17], sp                                ; $517b: $08 $17 $1f
    ld e, $2f                                     ; $517e: $1e $2f
    ld a, $64                                     ; $5180: $3e $64
    jr jr_0d8_51cc                                ; $5182: $18 $48

    ld [$0862], sp                                ; $5184: $08 $62 $08
    ld e, b                                       ; $5187: $58
    ld [$0060], sp                                ; $5188: $08 $60 $00
    ret nz                                        ; $518b: $c0

    inc b                                         ; $518c: $04
    jr jr_0d8_51ed                                ; $518d: $18 $5e

    nop                                           ; $518f: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    inc b                                         ; $5192: $04
    inc b                                         ; $5193: $04
    add h                                         ; $5194: $84
    db $fc                                        ; $5195: $fc
    nop                                           ; $5196: $00
    call z, $c07c                                 ; $5197: $cc $7c $c0
    ldh [rNR41], a                                ; $519a: $e0 $20
    jr nz, @+$41                                  ; $519c: $20 $3f

    scf                                           ; $519e: $37
    dec bc                                        ; $519f: $0b
    dec sp                                        ; $51a0: $3b
    ccf                                           ; $51a1: $3f
    ccf                                           ; $51a2: $3f
    ccf                                           ; $51a3: $3f
    ld h, h                                       ; $51a4: $64
    cp b                                          ; $51a5: $b8
    ld bc, $0001                                  ; $51a6: $01 $01 $00
    add d                                         ; $51a9: $82
    xor b                                         ; $51aa: $a8
    ld [$1717], sp                                ; $51ab: $08 $17 $17
    dec l                                         ; $51ae: $2d
    ccf                                           ; $51af: $3f
    ld a, $00                                     ; $51b0: $3e $00
    scf                                           ; $51b2: $37
    ccf                                           ; $51b3: $3f
    dec l                                         ; $51b4: $2d
    nop                                           ; $51b5: $00
    ld a, a                                       ; $51b6: $7f
    ld b, c                                       ; $51b7: $41
    ccf                                           ; $51b8: $3f
    ld hl, $393f                                  ; $51b9: $21 $3f $39
    rra                                           ; $51bc: $1f
    inc de                                        ; $51bd: $13
    nop                                           ; $51be: $00
    rra                                           ; $51bf: $1f
    rra                                           ; $51c0: $1f
    ld d, l                                       ; $51c1: $55
    ld e, a                                       ; $51c2: $5f
    db $ed                                        ; $51c3: $ed
    cp a                                          ; $51c4: $bf
    halt                                          ; $51c5: $76
    ld a, a                                       ; $51c6: $7f
    rlca                                          ; $51c7: $07
    cp $ff                                        ; $51c8: $fe $ff
    ret nz                                        ; $51ca: $c0

    cp a                                          ; $51cb: $bf

jr_0d8_51cc:
    pop hl                                        ; $51cc: $e1
    add b                                         ; $51cd: $80
    nop                                           ; $51ce: $00
    ld a, h                                       ; $51cf: $7c
    nop                                           ; $51d0: $00
    db $d3                                        ; $51d1: $d3
    nop                                           ; $51d2: $00
    daa                                           ; $51d3: $27
    inc bc                                        ; $51d4: $03
    rlca                                          ; $51d5: $07
    ld bc, $0628                                  ; $51d6: $01 $28 $06
    ld b, $e1                                     ; $51d9: $06 $e1
    nop                                           ; $51db: $00
    ld b, $00                                     ; $51dc: $06 $00
    ld [c], a                                     ; $51de: $e2
    jr jr_0d8_51e1                                ; $51df: $18 $00

jr_0d8_51e1:
    rst $28                                       ; $51e1: $ef
    rst $38                                       ; $51e2: $ff
    ld e, a                                       ; $51e3: $5f
    ld a, a                                       ; $51e4: $7f
    ld l, a                                       ; $51e5: $6f
    ld a, a                                       ; $51e6: $7f
    ld a, a                                       ; $51e7: $7f
    ld a, a                                       ; $51e8: $7f
    ret nz                                        ; $51e9: $c0

    ld a, h                                       ; $51ea: $7c
    ret z                                         ; $51eb: $c8

    ld a, [hl]                                    ; $51ec: $7e

jr_0d8_51ed:
    cp b                                          ; $51ed: $b8
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    ld e, h                                       ; $51f0: $5c
    ld e, h                                       ; $51f1: $5c
    rst $30                                       ; $51f2: $f7
    cp e                                          ; $51f3: $bb
    ld [bc], a                                    ; $51f4: $02
    cp l                                          ; $51f5: $bd
    di                                            ; $51f6: $f3
    rst $18                                       ; $51f7: $df
    rst $28                                       ; $51f8: $ef
    ld a, a                                       ; $51f9: $7f
    ld b, a                                       ; $51fa: $47
    cp $00                                        ; $51fb: $fe $00
    ld b, e                                       ; $51fd: $43
    nop                                           ; $51fe: $00
    cp $87                                        ; $51ff: $fe $87
    ld a, a                                       ; $5201: $7f
    ld d, d                                       ; $5202: $52
    ld a, $27                                     ; $5203: $3e $27
    rra                                           ; $5205: $1f
    rra                                           ; $5206: $1f
    dec sp                                        ; $5207: $3b
    dec [hl]                                      ; $5208: $35
    ccf                                           ; $5209: $3f
    ld h, h                                       ; $520a: $64

jr_0d8_520b:
    add hl, hl                                    ; $520b: $29
    ld c, b                                       ; $520c: $48
    add hl, de                                    ; $520d: $19
    ld h, [hl]                                    ; $520e: $66
    ld de, $6902                                  ; $520f: $11 $02 $69
    add hl, bc                                    ; $5212: $09
    add b                                         ; $5213: $80
    ld [$0338], sp                                ; $5214: $08 $38 $03

jr_0d8_5217:
    rlca                                          ; $5217: $07
    nop                                           ; $5218: $00
    ld sp, hl                                     ; $5219: $f9
    nop                                           ; $521a: $00
    ld sp, hl                                     ; $521b: $f9
    sub h                                         ; $521c: $94
    add hl, de                                    ; $521d: $19
    jr z, @+$2a                                   ; $521e: $28 $28

    ld e, a                                       ; $5220: $5f
    nop                                           ; $5221: $00
    ld e, a                                       ; $5222: $5f
    ld a, a                                       ; $5223: $7f
    ld a, a                                       ; $5224: $7f
    ccf                                           ; $5225: $3f
    cpl                                           ; $5226: $2f
    ld a, a                                       ; $5227: $7f
    ld b, a                                       ; $5228: $47
    ld a, a                                       ; $5229: $7f
    ld b, $5b                                     ; $522a: $06 $5b
    ld a, a                                       ; $522c: $7f
    ld b, e                                       ; $522d: $43
    rst $38                                       ; $522e: $ff
    add l                                         ; $522f: $85
    db $e4                                        ; $5230: $e4
    ld de, $4080                                  ; $5231: $11 $80 $40
    ld [$0808], sp                                ; $5234: $08 $08 $08
    inc c                                         ; $5237: $0c
    inc b                                         ; $5238: $04
    inc c                                         ; $5239: $0c
    ld bc, $0810                                  ; $523a: $01 $10 $08
    ld [$0604], sp                                ; $523d: $08 $04 $06
    inc c                                         ; $5240: $0c
    ld c, $0e                                     ; $5241: $0e $0e
    rrca                                          ; $5243: $0f
    rrca                                          ; $5244: $0f
    inc b                                         ; $5245: $04
    ld [$0802], sp                                ; $5246: $08 $02 $08
    ld c, $00                                     ; $5249: $0e $00
    ld c, $08                                     ; $524b: $0e $08
    ld hl, sp-$68                                 ; $524d: $f8 $98
    ld hl, sp-$30                                 ; $524f: $f8 $d0
    ldh a, [$30]                                  ; $5251: $f0 $30
    ret nz                                        ; $5253: $c0

    add b                                         ; $5254: $80
    ld sp, hl                                     ; $5255: $f9
    add b                                         ; $5256: $80
    pop bc                                        ; $5257: $c1
    rra                                           ; $5258: $1f
    rra                                           ; $5259: $1f
    ld a, a                                       ; $525a: $7f
    ld l, b                                       ; $525b: $68
    rst $38                                       ; $525c: $ff
    or h                                          ; $525d: $b4
    jr nz, jr_0d8_52df                            ; $525e: $20 $7f

    ld c, d                                       ; $5260: $4a
    ld e, [hl]                                    ; $5261: $5e
    ld [bc], a                                    ; $5262: $02
    ld e, e                                       ; $5263: $5b
    rst $38                                       ; $5264: $ff
    add d                                         ; $5265: $82
    ld a, a                                       ; $5266: $7f
    ld h, c                                       ; $5267: $61
    inc b                                         ; $5268: $04
    ld a, [hl]                                    ; $5269: $7e
    ld d, d                                       ; $526a: $52
    ccf                                           ; $526b: $3f
    inc hl                                        ; $526c: $23
    ld e, $82                                     ; $526d: $1e $82
    ld b, c                                       ; $526f: $41
    ld [bc], a                                    ; $5270: $02
    ld [bc], a                                    ; $5271: $02
    ld [hl+], a                                   ; $5272: $22
    inc bc                                        ; $5273: $03
    ld bc, $1002                                  ; $5274: $01 $02 $10
    inc bc                                        ; $5277: $03
    ld [bc], a                                    ; $5278: $02
    ld [bc], a                                    ; $5279: $02
    ld b, [hl]                                    ; $527a: $46
    ld a, [de]                                    ; $527b: $1a
    ld [bc], a                                    ; $527c: $02
    jr nc, @+$04                                  ; $527d: $30 $02

    ld bc, $000c                                  ; $527f: $01 $0c $00
    ld [bc], a                                    ; $5282: $02
    jr jr_0d8_520b                                ; $5283: $18 $86

    cp $c0                                        ; $5285: $fe $c0
    add b                                         ; $5287: $80
    dec de                                        ; $5288: $1b
    ld [hl], a                                    ; $5289: $77
    ld a, a                                       ; $528a: $7f
    cpl                                           ; $528b: $2f
    cp a                                          ; $528c: $bf
    ld bc, $ba00                                  ; $528d: $01 $00 $ba
    inc bc                                        ; $5290: $03
    ld bc, $3e10                                  ; $5291: $01 $10 $3e
    jr z, jr_0d8_5217                             ; $5294: $28 $81

    nop                                           ; $5296: $00
    ld a, d                                       ; $5297: $7a
    ccf                                           ; $5298: $3f
    jr z, jr_0d8_52da                             ; $5299: $28 $3f

    inc a                                         ; $529b: $3c
    rra                                           ; $529c: $1f
    inc de                                        ; $529d: $13
    nop                                           ; $529e: $00
    ld [hl+], a                                   ; $529f: $22
    ld e, $29                                     ; $52a0: $1e $29
    ccf                                           ; $52a2: $3f
    inc sp                                        ; $52a3: $33
    ld a, [hl]                                    ; $52a4: $7e
    ld c, b                                       ; $52a5: $48
    nop                                           ; $52a6: $00
    ld [de], a                                    ; $52a7: $12
    halt                                          ; $52a8: $76
    ld [bc], a                                    ; $52a9: $02
    rst $38                                       ; $52aa: $ff
    ld de, $b803                                  ; $52ab: $11 $03 $b8
    ld a, b                                       ; $52ae: $78
    ld a, [hl+]                                   ; $52af: $2a
    ld [bc], a                                    ; $52b0: $02
    sbc $22                                       ; $52b1: $de $22
    nop                                           ; $52b3: $00
    ld a, [$fa00]                                 ; $52b4: $fa $00 $fa
    dec de                                        ; $52b7: $1b
    dec de                                        ; $52b8: $1b
    ld [hl], a                                    ; $52b9: $77
    nop                                           ; $52ba: $00
    ld a, a                                       ; $52bb: $7f
    dec a                                         ; $52bc: $3d
    ccf                                           ; $52bd: $3f
    ccf                                           ; $52be: $3f
    dec hl                                        ; $52bf: $2b
    ccf                                           ; $52c0: $3f
    inc hl                                        ; $52c1: $23
    ccf                                           ; $52c2: $3f
    ld de, $7f2b                                  ; $52c3: $11 $2b $7f
    ld b, e                                       ; $52c6: $43
    add d                                         ; $52c7: $82
    ld [bc], a                                    ; $52c8: $02
    ld sp, $233f                                  ; $52c9: $31 $3f $23
    nop                                           ; $52cc: $00
    ld c, d                                       ; $52cd: $4a
    rst $08                                       ; $52ce: $cf
    ld l, [hl]                                    ; $52cf: $6e
    ld a, [bc]                                    ; $52d0: $0a
    ld a, e                                       ; $52d1: $7b
    ld a, [bc]                                    ; $52d2: $0a
    dec b                                         ; $52d3: $05
    rlca                                          ; $52d4: $07
    ld h, a                                       ; $52d5: $67
    dec bc                                        ; $52d6: $0b
    ld hl, sp+$0a                                 ; $52d7: $f8 $0a
    add d                                         ; $52d9: $82

jr_0d8_52da:
    jr z, jr_0d8_52de                             ; $52da: $28 $02

    dec de                                        ; $52dc: $1b
    inc e                                         ; $52dd: $1c

jr_0d8_52de:
    ret nz                                        ; $52de: $c0

jr_0d8_52df:
    ldh [$39], a                                  ; $52df: $e0 $39
    rst $38                                       ; $52e1: $ff
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    res 0, d                                      ; $52e4: $cb $82
    jp c, Jump_000_0808                           ; $52e6: $da $08 $08

    ld a, [bc]                                    ; $52e9: $0a
    ld e, [hl]                                    ; $52ea: $5e
    ld e, [hl]                                    ; $52eb: $5e
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    pop bc                                        ; $52ee: $c1
    ld [bc], a                                    ; $52ef: $02
    ld d, a                                       ; $52f0: $57
    ld [bc], a                                    ; $52f1: $02
    ld [bc], a                                    ; $52f2: $02
    ld d, e                                       ; $52f3: $53
    add e                                         ; $52f4: $83
    add d                                         ; $52f5: $82
    ld bc, $7e43                                  ; $52f6: $01 $43 $7e
    ld d, d                                       ; $52f9: $52
    ld a, $26                                     ; $52fa: $3e $26
    add d                                         ; $52fc: $82
    ld a, [hl-]                                   ; $52fd: $3a
    halt                                          ; $52fe: $76
    add hl, bc                                    ; $52ff: $09
    pop af                                        ; $5300: $f1
    ld l, [hl]                                    ; $5301: $6e
    add hl, bc                                    ; $5302: $09
    add b                                         ; $5303: $80
    add hl, bc                                    ; $5304: $09
    ld b, h                                       ; $5305: $44
    add hl, sp                                    ; $5306: $39
    add h                                         ; $5307: $84
    add hl, de                                    ; $5308: $19
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    or d                                          ; $530b: $b2
    add b                                         ; $530c: $80
    ld bc, $06f0                                  ; $530d: $01 $f0 $06
    inc c                                         ; $5310: $0c
    add d                                         ; $5311: $82
    rlc d                                         ; $5312: $cb $02
    dec de                                        ; $5314: $1b
    add d                                         ; $5315: $82
    xor e                                         ; $5316: $ab
    rrca                                          ; $5317: $0f
    rrca                                          ; $5318: $0f
    ccf                                           ; $5319: $3f
    ccf                                           ; $531a: $3f
    cp l                                          ; $531b: $bd
    add b                                         ; $531c: $80
    ld [bc], a                                    ; $531d: $02
    dec hl                                        ; $531e: $2b
    ld a, h                                       ; $531f: $7c
    inc bc                                        ; $5320: $03
    add d                                         ; $5321: $82
    dec de                                        ; $5322: $1b
    nop                                           ; $5323: $00
    ld de, $4a00                                  ; $5324: $11 $00 $4a
    dec b                                         ; $5327: $05
    ld c, [hl]                                    ; $5328: $4e
    inc b                                         ; $5329: $04
    or e                                          ; $532a: $b3
    ld a, d                                       ; $532b: $7a
    inc hl                                        ; $532c: $23
    ld [bc], a                                    ; $532d: $02
    nop                                           ; $532e: $00
    add hl, sp                                    ; $532f: $39
    add h                                         ; $5330: $84
    add hl, hl                                    ; $5331: $29
    pop hl                                        ; $5332: $e1
    cp a                                          ; $5333: $bf
    nop                                           ; $5334: $00
    jp c, Jump_000_08ba                           ; $5335: $da $ba $08

    add b                                         ; $5338: $80
    nop                                           ; $5339: $00
    jp z, Jump_000_0070                           ; $533a: $ca $70 $00

    stop                                          ; $533d: $10 $00
    inc e                                         ; $533f: $1c
    nop                                           ; $5340: $00
    jr z, jr_0d8_5343                             ; $5341: $28 $00

jr_0d8_5343:
    inc [hl]                                      ; $5343: $34
    nop                                           ; $5344: $00
    ld b, b                                       ; $5345: $40
    nop                                           ; $5346: $00
    ld c, h                                       ; $5347: $4c
    nop                                           ; $5348: $00
    ld e, b                                       ; $5349: $58
    nop                                           ; $534a: $00
    ld h, h                                       ; $534b: $64
    nop                                           ; $534c: $00
    inc bc                                        ; $534d: $03
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    rrca                                          ; $5350: $0f
    db $fd                                        ; $5351: $fd
    inc bc                                        ; $5352: $03
    db $ed                                        ; $5353: $ed
    add hl, bc                                    ; $5354: $09
    db $fd                                        ; $5355: $fd
    nop                                           ; $5356: $00
    db $fd                                        ; $5357: $fd
    ld [$0603], sp                                ; $5358: $08 $03 $06
    nop                                           ; $535b: $00
    rrca                                          ; $535c: $0f
    db $fd                                        ; $535d: $fd
    inc bc                                        ; $535e: $03
    db $ec                                        ; $535f: $ec
    add hl, bc                                    ; $5360: $09
    db $fc                                        ; $5361: $fc
    nop                                           ; $5362: $00
    db $fc                                        ; $5363: $fc
    ld [$0c03], sp                                ; $5364: $08 $03 $0c
    nop                                           ; $5367: $00
    rrca                                          ; $5368: $0f
    db $fd                                        ; $5369: $fd
    inc bc                                        ; $536a: $03
    db $eb                                        ; $536b: $eb
    ld [$00fb], sp                                ; $536c: $08 $fb $00
    ei                                            ; $536f: $fb
    ld [$1203], sp                                ; $5370: $08 $03 $12
    nop                                           ; $5373: $00
    rrca                                          ; $5374: $0f
    db $fd                                        ; $5375: $fd
    inc bc                                        ; $5376: $03
    db $ec                                        ; $5377: $ec
    rlca                                          ; $5378: $07
    db $fc                                        ; $5379: $fc
    nop                                           ; $537a: $00
    db $fc                                        ; $537b: $fc
    ld [$1803], sp                                ; $537c: $08 $03 $18
    nop                                           ; $537f: $00
    rrca                                          ; $5380: $0f
    db $fd                                        ; $5381: $fd
    inc bc                                        ; $5382: $03
    db $eb                                        ; $5383: $eb
    rlca                                          ; $5384: $07
    ei                                            ; $5385: $fb
    nop                                           ; $5386: $00
    ei                                            ; $5387: $fb
    ld [$1e03], sp                                ; $5388: $08 $03 $1e
    nop                                           ; $538b: $00
    rrca                                          ; $538c: $0f
    db $fd                                        ; $538d: $fd
    inc bc                                        ; $538e: $03
    ld [$fa07], a                                 ; $538f: $ea $07 $fa
    nop                                           ; $5392: $00
    ld a, [$0308]                                 ; $5393: $fa $08 $03
    inc h                                         ; $5396: $24
    nop                                           ; $5397: $00
    rrca                                          ; $5398: $0f
    db $fd                                        ; $5399: $fd
    inc bc                                        ; $539a: $03
    db $eb                                        ; $539b: $eb
    add hl, bc                                    ; $539c: $09
    ei                                            ; $539d: $fb
    nop                                           ; $539e: $00
    ei                                            ; $539f: $fb
    ld [$2a03], sp                                ; $53a0: $08 $03 $2a
    nop                                           ; $53a3: $00
    rrca                                          ; $53a4: $0f
    db $fd                                        ; $53a5: $fd
    inc bc                                        ; $53a6: $03
    db $ec                                        ; $53a7: $ec
    add hl, bc                                    ; $53a8: $09
    db $fc                                        ; $53a9: $fc
    nop                                           ; $53aa: $00
    db $fc                                        ; $53ab: $fc
    ld [$0300], sp                                ; $53ac: $08 $00 $03
    and [hl]                                      ; $53af: $a6
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    ld [bc], a                                    ; $53b2: $02
    nop                                           ; $53b3: $00
    ld bc, $0200                                  ; $53b4: $01 $00 $02
    nop                                           ; $53b7: $00
    dec b                                         ; $53b8: $05
    nop                                           ; $53b9: $00
    dec b                                         ; $53ba: $05
    ld a, [bc]                                    ; $53bb: $0a
    nop                                           ; $53bc: $00
    dec d                                         ; $53bd: $15
    nop                                           ; $53be: $00
    ld a, [hl+]                                   ; $53bf: $2a
    inc b                                         ; $53c0: $04
    db $10                                        ; $53c1: $10
    inc d                                         ; $53c2: $14
    inc c                                         ; $53c3: $0c
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    ld b, b                                       ; $53c6: $40
    nop                                           ; $53c7: $00
    xor b                                         ; $53c8: $a8
    nop                                           ; $53c9: $00
    ld d, b                                       ; $53ca: $50
    nop                                           ; $53cb: $00
    and b                                         ; $53cc: $a0
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    ld b, $07                                     ; $53d1: $06 $07
    jr nz, jr_0d8_5414                            ; $53d3: $20 $3f

    ld b, d                                       ; $53d5: $42

jr_0d8_53d6:
    ld a, a                                       ; $53d6: $7f
    nop                                           ; $53d7: $00
    add l                                         ; $53d8: $85
    rst $38                                       ; $53d9: $ff
    ld b, b                                       ; $53da: $40
    ld a, a                                       ; $53db: $7f
    jr nz, jr_0d8_541d                            ; $53dc: $20 $3f

    ld b, $07                                     ; $53de: $06 $07
    ret nz                                        ; $53e0: $c0

    ld de, $0300                                  ; $53e1: $11 $00 $03

jr_0d8_53e4:
    ld h, b                                       ; $53e4: $60
    ld h, b                                       ; $53e5: $60
    ldh [rDIV], a                                 ; $53e6: $e0 $04
    db $fc                                        ; $53e8: $fc
    ld [bc], a                                    ; $53e9: $02
    cp $00                                        ; $53ea: $fe $00
    ld bc, $02ff                                  ; $53ec: $01 $ff $02
    cp $04                                        ; $53ef: $fe $04
    db $fc                                        ; $53f1: $fc
    ld h, b                                       ; $53f2: $60
    ldh [$b5], a                                  ; $53f3: $e0 $b5
    jr nz, @+$7a                                  ; $53f5: $20 $78

    ld bc, $1004                                  ; $53f7: $01 $04 $10
    ld h, d                                       ; $53fa: $62
    jr z, jr_0d8_5407                             ; $53fb: $28 $0a

    ld l, d                                       ; $53fd: $6a
    nop                                           ; $53fe: $00
    ld [hl+], a                                   ; $53ff: $22
    ld e, d                                       ; $5400: $5a
    nop                                           ; $5401: $00
    db $10                                        ; $5402: $10
    ld a, [hl+]                                   ; $5403: $2a
    nop                                           ; $5404: $00
    ld d, h                                       ; $5405: $54
    ld h, d                                       ; $5406: $62

jr_0d8_5407:
    ld b, b                                       ; $5407: $40
    daa                                           ; $5408: $27
    ccf                                           ; $5409: $3f
    ld c, b                                       ; $540a: $48
    ld a, a                                       ; $540b: $7f
    ld b, [hl]                                    ; $540c: $46
    adc b                                         ; $540d: $88
    ld h, d                                       ; $540e: $62
    ret nc                                        ; $540f: $d0

    add d                                         ; $5410: $82
    cp $81                                        ; $5411: $fe $81
    ld h, d                                       ; $5413: $62

jr_0d8_5414:
    and b                                         ; $5414: $a0
    ld h, b                                       ; $5415: $60
    jr c, jr_0d8_5418                             ; $5416: $38 $00

jr_0d8_5418:
    push de                                       ; $5418: $d5
    cp d                                          ; $5419: $ba
    db $10                                        ; $541a: $10

jr_0d8_541b:
    add $08                                       ; $541b: $c6 $08

jr_0d8_541d:
    ld d, h                                       ; $541d: $54
    ld h, b                                       ; $541e: $60
    db $10                                        ; $541f: $10
    jr z, jr_0d8_53e4                             ; $5420: $28 $c2

    nop                                           ; $5422: $00
    jr z, jr_0d8_53d6                             ; $5423: $28 $b1

    db $10                                        ; $5425: $10
    ld bc, $0706                                  ; $5426: $01 $06 $07
    dec h                                         ; $5429: $25
    ccf                                           ; $542a: $3f
    ld d, b                                       ; $542b: $50
    ld a, a                                       ; $542c: $7f
    add b                                         ; $542d: $80
    call nz, $5790                                ; $542e: $c4 $90 $57
    ld d, b                                       ; $5431: $50
    call nz, $4220                                ; $5432: $c4 $20 $42
    call nz, $2200                                ; $5435: $c4 $00 $22
    call nz, $c080                                ; $5438: $c4 $80 $c0
    ld [$28bc], sp                                ; $543b: $08 $bc $28
    db $db                                        ; $543e: $db
    ld e, $19                                     ; $543f: $1e $19
    ld [hl+], a                                   ; $5441: $22
    add hl, bc                                    ; $5442: $09
    jr z, jr_0d8_5449                             ; $5443: $28 $04

    jr nc, @+$24                                  ; $5445: $30 $22

    add hl, de                                    ; $5447: $19
    ld b, b                                       ; $5448: $40

jr_0d8_5449:
    ld e, [hl]                                    ; $5449: $5e
    and b                                         ; $544a: $a0
    ld [hl+], a                                   ; $544b: $22
    ld sp, hl                                     ; $544c: $f9
    rst $38                                       ; $544d: $ff
    ld a, h                                       ; $544e: $7c
    add hl, de                                    ; $544f: $19
    ld d, d                                       ; $5450: $52
    ld [$18b2], sp                                ; $5451: $08 $b2 $18
    ld a, b                                       ; $5454: $78
    add hl, bc                                    ; $5455: $09
    inc b                                         ; $5456: $04
    jr z, jr_0d8_541b                             ; $5457: $28 $c2

    ld [$18c0], sp                                ; $5459: $08 $c0 $18
    ld h, d                                       ; $545c: $62
    cp b                                          ; $545d: $b8
    add e                                         ; $545e: $83
    ret nz                                        ; $545f: $c0

    jr z, jr_0d8_5464                             ; $5460: $28 $02

    cp $21                                        ; $5462: $fe $21

jr_0d8_5464:
    rst $38                                       ; $5464: $ff
    ld d, d                                       ; $5465: $52
    ret nz                                        ; $5466: $c0

    sub b                                         ; $5467: $90
    sbc $19                                       ; $5468: $de $19
    db $fd                                        ; $546a: $fd
    ld [c], a                                     ; $546b: $e2
    add hl, hl                                    ; $546c: $29
    ret nz                                        ; $546d: $c0

    ld [$091c], sp                                ; $546e: $08 $1c $09
    inc b                                         ; $5471: $04
    jr z, @-$2c                                   ; $5472: $28 $d2

    add hl, de                                    ; $5474: $19
    call nz, $a0b8                                ; $5475: $c4 $b8 $a0
    ld [hl+], a                                   ; $5478: $22
    ld sp, $7207                                  ; $5479: $31 $07 $72
    cp $89                                        ; $547c: $fe $89
    rst $38                                       ; $547e: $ff
    adc d                                         ; $547f: $8a
    and $71                                       ; $5480: $e6 $71
    jp c, Jump_0d8_4039                           ; $5482: $da $39 $40

    ld a, [bc]                                    ; $5485: $0a
    ld l, d                                       ; $5486: $6a
    ld d, l                                       ; $5487: $55
    jp c, Jump_0d8_4031                           ; $5488: $da $31 $40

    ld a, [de]                                    ; $548b: $1a
    ld b, b                                       ; $548c: $40
    ret nz                                        ; $548d: $c0

    ld d, b                                       ; $548e: $50
    ld b, c                                       ; $548f: $41
    add b                                         ; $5490: $80
    or c                                          ; $5491: $b1
    inc h                                         ; $5492: $24
    inc l                                         ; $5493: $2c
    db $fc                                        ; $5494: $fc
    adc d                                         ; $5495: $8a
    ld b, h                                       ; $5496: $44
    ld [bc], a                                    ; $5497: $02
    ld b, $c0                                     ; $5498: $06 $c0
    and b                                         ; $549a: $a0
    and d                                         ; $549b: $a2
    ld c, d                                       ; $549c: $4a
    ld d, l                                       ; $549d: $55
    nop                                           ; $549e: $00
    ld e, h                                       ; $549f: $5c
    xor d                                         ; $54a0: $aa
    inc a                                         ; $54a1: $3c
    ld [hl-], a                                   ; $54a2: $32
    ld b, b                                       ; $54a3: $40
    and d                                         ; $54a4: $a2
    ld [hl-], a                                   ; $54a5: $32
    add b                                         ; $54a6: $80
    ld sp, hl                                     ; $54a7: $f9
    and d                                         ; $54a8: $a2
    xor d                                         ; $54a9: $aa

    db $12, $01, $22, $00, $34, $00, $46, $00, $58, $00, $6c, $00, $80, $00, $96, $00
    db $b0, $00, $ca, $00, $d2, $00, $da, $00, $e2, $00, $ea, $00, $f2, $00, $fa, $00
    db $02, $01

    ld a, [bc]                                    ; $54cc: $0a
    db $01                                        ; $54cd: $01

    db $06, $00

    db $fd                                        ; $54d0: $fd
    rlca                                          ; $54d1: $07
    rst $30                                       ; $54d2: $f7
    nop                                           ; $54d3: $00

    db $ea, $f8, $e8, $00, $e7, $08, $f4, $0a, $f7, $fb, $f7, $02, $06, $0c

    db $fd                                        ; $54e2: $fd
    rlca                                          ; $54e3: $07
    rst $30                                       ; $54e4: $f7
    nop                                           ; $54e5: $00

    db $e7, $f7, $e3, $ff, $e7, $07, $f3, $fa, $f3, $02, $f3, $08, $06, $18

    db $fd                                        ; $54f4: $fd
    rlca                                          ; $54f5: $07
    rst $30                                       ; $54f6: $f7
    nop                                           ; $54f7: $00

    db $e3, $f6, $e2, $fe, $ea, $06, $f2, $f8, $f2, $00, $f2, $08, $07, $24

    db $fd                                        ; $5506: $fd
    rlca                                          ; $5507: $07
    rst $30                                       ; $5508: $f7
    nop                                           ; $5509: $00

    db $e0, $f5, $f0, $f5, $e2, $fd, $f2, $fd, $ea, $05, $fa, $05, $f3, $0d, $07, $32

    db $fd                                        ; $551a: $fd
    rlca                                          ; $551b: $07
    rst $30                                       ; $551c: $f7
    nop                                           ; $551d: $00

    db $e1, $f3, $e6, $fb, $ea, $03, $ee, $08, $f1, $f6, $f1, $fe, $f1, $01, $08, $40

    db $fd                                        ; $552e: $fd
    rlca                                          ; $552f: $07
    rst $30                                       ; $5530: $f7
    nop                                           ; $5531: $00

    db $e2, $ed, $e4, $f5, $eb, $fd, $ea, $05, $f2, $f3, $f2, $fb, $f2, $03, $f2, $08
    db $0a, $50

    db $fd                                        ; $5544: $fd
    rlca                                          ; $5545: $07
    rst $30                                       ; $5546: $f7
    nop                                           ; $5547: $00

    db $e7, $e8, $e8, $f0, $ed, $f8, $ea, $00, $ea, $08, $f7, $ef, $f7, $f7, $f7, $ff
    db $f7, $07, $f7, $08, $0a, $64

    db $fd                                        ; $555e: $fd
    rlca                                          ; $555f: $07
    rst $30                                       ; $5560: $f7
    nop                                           ; $5561: $00

    db $eb, $e6, $eb, $ee, $ed, $f6, $eb, $fe, $ea, $06, $f6, $08, $fa, $ec, $fa, $f4
    db $fa, $fc, $fa, $00, $01, $78

    db $fc                                        ; $5578: $fc
    inc b                                         ; $5579: $04
    db $fc                                        ; $557a: $fc
    inc b                                         ; $557b: $04

    db $fd, $fc, $01, $7a

    db $fc                                        ; $5580: $fc
    inc b                                         ; $5581: $04
    db $fc                                        ; $5582: $fc
    inc b                                         ; $5583: $04

    db $fd, $fc, $01, $7c

    db $fc                                        ; $5588: $fc
    inc b                                         ; $5589: $04
    db $fc                                        ; $558a: $fc
    inc b                                         ; $558b: $04

    db $fe, $fb, $01, $7e

    db $fc                                        ; $5590: $fc
    inc b                                         ; $5591: $04
    db $fc                                        ; $5592: $fc
    inc b                                         ; $5593: $04

    db $fd, $fc, $01, $80

    db $fc                                        ; $5598: $fc
    inc b                                         ; $5599: $04
    db $fc                                        ; $559a: $fc
    inc b                                         ; $559b: $04

    db $fd, $fc, $01, $82

    db $fc                                        ; $55a0: $fc
    inc b                                         ; $55a1: $04
    db $fc                                        ; $55a2: $fc
    inc b                                         ; $55a3: $04

    db $fd, $fc, $01, $84

    db $fc                                        ; $55a8: $fc
    inc b                                         ; $55a9: $04
    db $fc                                        ; $55aa: $fc
    inc b                                         ; $55ab: $04

    db $fe, $fb, $01, $86

    db $fc                                        ; $55b0: $fc
    inc b                                         ; $55b1: $04
    db $fc                                        ; $55b2: $fc
    inc b                                         ; $55b3: $04

    db $fd, $fc

    ld bc, $fc88                                  ; $55b6: $01 $88 $fc
    nop                                           ; $55b9: $00
    db $fc                                        ; $55ba: $fc
    inc b                                         ; $55bb: $04
    db $fc                                        ; $55bc: $fc
    db $fa                                        ; $55bd: $fa

    db $a0, $08, $6e, $05, $00, $07, $07, $38, $3f, $51, $7f, $62, $7f, $00, $e5, $fe
    db $a3, $ff, $87, $ff, $9f, $ff, $00, $df, $ff, $4f, $7f, $6c, $7f, $28, $3f, $00
    db $20, $3f, $34, $3f, $16, $1f, $11, $1f, $00, $07, $07, $78, $7f, $9f, $ff, $20
    db $ff, $00, $d7, $e8, $94, $6b, $4a, $b5, $4a, $b5, $00, $b5, $ca, $e5, $da, $a2
    db $dd, $6a, $9d, $04, $9c, $ff, $63, $ff, $00, $02, $00, $60, $60, $00, $b0, $f0
    db $50, $f0, $28, $f8, $98, $f8, $00, $4c, $fc, $bc, $7c, $5c, $bc, $5e, $be, $00
    db $ba, $7e, $61, $ff, $a1, $7f, $a3, $7f, $01, $41, $ff, $82, $ff, $05, $ff, $02
    db $01, $00, $00, $01, $03, $0b, $ff, $5f, $ff, $f6, $fa, $00, $7a, $86, $bc, $7c
    db $dc, $fc, $e0, $e0, $40, $00, $01, $58, $07, $02, $07, $d5, $ff, $4b, $00, $7f
    db $6e, $7f, $2a, $3d, $3f, $3f, $33, $10, $3f, $1c, $1c, $20, $50, $03, $00, $7f
    db $00, $00, $7f, $2f, $7f, $74, $7b, $3b, $47, $7d, $04, $3f, $5e, $7e, $60, $60
    db $3e, $58, $01, $01, $00, $02, $03, $05, $07, $1a, $1f, $25, $3e, $00, $4d, $7e
    db $50, $7f, $ec, $f3, $d3, $fc, $00, $4a, $7d, $4d, $7e, $7d, $7e, $3e, $3f, $00
    db $3e, $3f, $1d, $1e, $12, $1f, $08, $08, $00, $14, $1c, $26, $3e, $43, $7f, $e2
    db $ff, $00, $93, $ff, $6f, $9f, $97, $6f, $4b, $b7, $00, $4b, $b7, $b7, $4f, $ae
    db $5f, $54, $af, $00, $54, $af, $28, $df, $28, $df, $80, $80, $00, $40, $c0, $c0
    db $40, $20, $e0, $e0, $a0, $00, $90, $f0, $70, $d0, $68, $d8, $58, $e8, $00, $38
    db $e8, $6c, $f4, $bc, $f4, $5a, $f6, $00, $ba, $e6, $56, $ee, $a9, $df, $04, $03
    db $00, $05, $03, $02, $07, $04, $07, $c8, $ff, $01, $60, $7f, $50, $7f, $69, $7f
    db $36, $58, $00, $12, $17, $1f, $1f, $1a, $01, $0e, $0e, $c8, $08, $80, $08, $f8
    db $00, $f8, $08, $04, $00, $1f, $f9, $2a, $00, $f7, $57, $ef, $ad, $de, $b6, $79
    db $db, $04, $e7, $7d, $bf, $de, $fe, $e6, $68, $22, $3e, $00, $0f, $3f, $33, $3d
    db $15, $2b, $2f, $1f, $0a, $37, $3f, $38, $38, $c0, $58, $04, $60, $00, $0b, $00
    db $0f, $14, $1f, $1b, $1c, $34, $3b, $32, $00, $3d, $6a, $75, $65, $7a, $65, $7a
    db $d2, $00, $ed, $6a, $75, $6d, $72, $75, $7a, $80, $00, $80, $c0, $c0, $60, $e0
    db $50, $f0, $38, $00, $e8, $24, $fc, $fc, $f4, $72, $fe, $be, $00, $7a, $b9, $7f
    db $a7, $7d, $64, $ff, $47, $00, $fe, $a2, $7f, $a5, $7f, $43, $ff, $e0, $00, $e0
    db $70, $90, $e8, $18, $f8, $88, $b4, $00, $cc, $7c, $c4, $fc, $44, $ba, $66, $7e
    db $00, $a2, $fd, $43, $7f, $c1, $9f, $e1, $2e, $00, $d1, $5e, $a1, $a3, $5f, $3c
    db $ff, $01, $00, $03, $d2, $ef, $ea, $f7, $74, $7f, $48, $00, $7f, $60, $7f, $20
    db $3f, $30, $3f, $3b, $00, $3f, $15, $1f, $1a, $1f, $0d, $0f, $0f, $00, $0f, $04
    db $07, $03, $03, $00, $00, $18, $00, $fc, $2c, $f8, $54, $f8, $2c, $f0, $6c, $00
    db $f4, $58, $ec, $b0, $dc, $e4, $b8, $cb, $00, $77, $8d, $fe, $b6, $f9, $cf, $ff
    db $f7, $06, $ff, $78, $f8, $80, $80, $aa, $39, $c8, $09, $03, $01, $03, $03, $01
    db $55, $ab, $af, $5f, $1c, $48, $00, $10, $10, $18, $18, $1f, $1f, $17, $1c, $00
    db $23, $3e, $23, $3e, $2a, $3f, $35, $3f, $00, $2b, $37, $6b, $77, $55, $6b, $55
    db $6b, $00, $6d, $73, $ab, $f7, $d5, $eb, $4d, $73, $20, $59, $67, $0c, $08, $2a
    db $37, $3a, $37, $14, $20, $1f, $18, $02, $00, $08, $0f, $08, $0f, $0c, $83, $7c
    db $00, $06, $07, $02, $03, $01, $01, $00, $80, $09, $00, $a0, $60, $e0, $20, $d0
    db $30, $f0, $10, $00, $68, $98, $f8, $88, $f4, $8c, $bf, $c7, $00, $db, $e6, $7f
    db $e2, $35, $fb, $2f, $f1, $00, $37, $e9, $2f, $f1, $35, $eb, $4d, $f3, $00, $5f
    db $e2, $7f, $c4, $55, $ee, $7a, $cd, $00, $6d, $da, $b2, $dd, $95, $fa, $a1, $ff
    db $00, $d6, $ff, $39, $ff, $fe, $ff, $0f, $ff, $00, $f0, $f0, $00, $00, $70, $70
    db $b8, $c8, $00, $f4, $0c, $bc, $44, $5a, $a6, $fe, $02, $00, $fe, $02, $5d, $a3
    db $bf, $41, $fe, $01, $00, $ff, $00, $e3, $1c, $57, $a8, $3f, $c0, $00, $f9, $07
    db $de, $3f, $6a, $f5, $b5, $cb, $1a, $de, $3f, $ef, $2c, $10, $02, $88, $80, $01
    db $10, $40, $01, $c0, $40, $c0, $e0, $e0, $60, $a0, $8a, $00, $c0, $01, $00, $a0
    db $4a, $8e, $8e, $f2, $fe, $dd, $e3, $00, $bf, $e1, $bf, $e1, $ae, $f1, $5f, $70
    db $00, $5f, $70, $57, $78, $7f, $78, $3b, $3c, $40, $3f, $02, $00, $3d, $3e, $1a
    db $1f, $1b, $1f, $80, $40, $28, $c0, $40, $a1, $61, $e6, $27, $fb, $00, $3c, $be
    db $71, $fd, $f2, $99, $f6, $bb, $00, $54, $6e, $99, $bc, $4b, $7d, $8a, $fb, $00
    db $0c, $1c, $1c, $ee, $f2, $fd, $03, $ef, $00, $11, $d6, $29, $7f, $80, $ff, $00
    db $d7, $10, $28, $af, $50, $08, $08, $f8, $07, $55, $aa, $01, $8f, $70, $7e, $81
    db $f7, $0f, $10, $01, $10, $00, $08, $18, $18, $08, $14, $0c, $1c, $04, $00, $1c
    db $04, $1a, $06, $1a, $06, $0f, $1f, $20, $13, $1d, $68, $29, $90, $f8, $d0, $f8
    db $58, $02, $78, $68, $78, $28, $38, $2b, $76, $00, $17, $00, $1c, $17, $1c, $1d
    db $1e, $0f, $0e, $0f, $38, $0e, $06, $be, $01, $42, $09, $4c, $3b, $f8, $40, $f8
    db $00, $40, $e8, $50, $d0, $68, $6e, $d1, $53, $00, $ef, $ad, $fe, $73, $ff, $fd
    db $ff, $1e, $c0, $86, $72, $7a, $0b, $06, $06, $02, $04, $04, $02, $08, $06, $06
    db $07, $07, $0e, $18, $9b, $9f, $ef, $00, $f1, $e5, $fb, $6e, $71, $57, $78, $37
    db $20, $38, $2f, $66, $00, $15, $1e, $14, $1f, $0d, $00, $0e, $0a, $0f, $0a, $0f
    db $05, $07, $05, $42, $07, $a0, $11, $e0, $d0, $b0, $b0, $1c, $03, $d8, $00, $68
    db $e4, $3c, $b4, $6c, $ea, $36, $f5, $00, $1b, $53, $bd, $ad, $5b, $4e, $b9, $bb
    db $00, $fc, $d5, $ee, $07, $07, $1b, $1c, $6f, $00, $70, $bb, $c4, $f5, $0a, $e7
    db $18, $af, $00, $d0, $da, $a5, $f1, $8e, $57, $e8, $ef, $00, $50, $7d, $c2, $fe
    db $c1, $b5, $ea, $7b, $10, $e4, $ff, $60, $a0, $e9, $80, $c0, $80, $c0, $00, $5a
    db $75, $57, $78, $2e, $39, $17, $1c, $5a, $0b, $76, $00, $05, $18, $22, $24, $4c
    db $c0, $05, $0b, $40, $80, $07, $00, $40, $c0, $00, $c0, $00, $eb, $9c, $00, $75
    db $cf, $4e, $ff, $ff, $ff, $43, $7f, $20, $3c, $3c, $d4, $79, $1a, $3d, $6d, $f2
    db $b7, $01, $cf, $7b, $ff, $bc, $fc, $c0, $c0, $68, $1c, $44, $04, $01, $10, $02
    db $06, $02, $f2, $00, $03, $05, $00, $15, $0b, $0f, $1f, $17, $1f, $18, $18, $80
    db $0e, $39, $7b, $7f, $b2, $ff, $a5, $fb, $53, $00, $7d, $54, $7b, $2a, $3d, $29
    db $3e, $17, $0b, $1c, $15, $1e, $0c, $fc, $00, $06, $fc, $00, $62, $09, $00, $80
    db $80, $60, $e0, $d8, $38, $76, $8e, $00, $fd, $83, $b6, $c9, $7b, $c4, $5f, $e0
    db $00, $bf, $60, $af, $70, $5b, $b4, $94, $7b, $00, $2a, $dd, $46, $bf, $bd, $e3
    db $ff, $c0, $00, $83, $83, $4d, $ce, $b7, $78, $df, $30, $00, $75, $9a, $ae, $59
    db $db, $2c, $76, $8d, $00, $ff, $04, $ed, $96, $73, $ce, $ae, $73, $00, $d5, $3b
    db $6b, $9d, $b5, $cf, $6a, $f7, $00, $03, $03, $3d, $3e, $df, $e0, $7d, $82, $00
    db $da, $25, $af, $50, $3f, $c0, $7a, $85, $00, $d5, $2a, $8f, $70, $bf, $40, $7f
    db $80, $00, $ea, $15, $f1, $0e, $af, $50, $de, $21, $a4, $e0, $03, $40, $00, $2b
    db $f0, $10, $ca, $03, $08, $f4, $00, $0c, $fc, $04, $1c, $e4, $ba, $46, $fa, $00
    db $06, $cf, $3f, $f3, $fd, $80, $80, $b6, $01, $f9, $6d, $7e, $13, $1f, $0c, $0f
    db $ae, $0b, $e0, $c2, $92, $03, $08, $c7, $02, $00, $80, $cc, $ff, $37, $40, $3f
    db $28, $98, $7d, $03, $36, $4f, $5b, $7c, $06, $e7, $ff, $fb, $ff, $3c, $18, $31
    db $86, $4d, $aa, $1f, $d5, $d7, $2f, $34, $49, $2c, $6b, $aa, $0b, $94, $59, $c4
    db $2d, $00, $0f, $0f, $17, $18, $2f, $38, $6b, $7c, $00, $a7, $fc, $a5, $fe, $53
    db $7e, $52, $7f, $00, $29, $3f, $29, $3f, $14, $1f, $14, $1f, $80, $40, $2a, $f0
    db $f0, $cf, $3f, $fe, $01, $37, $04, $c8, $da, $25, $fc, $03, $00, $0b, $ea, $15
    db $02, $7d, $82, $ff, $80, $b4, $cb, $4c, $09, $2b, $00, $f4, $3f, $ff, $c0, $c0
    db $b3, $73, $ed, $00, $1e, $57, $ac, $bd, $46, $fb, $06, $2e, $00, $d3, $8d, $73
    db $ff, $01, $df, $21, $aa, $00, $55, $f7, $08, $ff, $00, $e7, $f8, $9e, $00, $7f
    db $d5, $2b, $0f, $0f, $37, $38, $df, $00, $e0, $76, $89, $eb, $14, $cf, $30, $5e
    db $00, $a1, $b5, $4a, $e3, $1c, $af, $50, $df, $00, $20, $7a, $85, $fc, $83, $ab
    db $d4, $77, $10, $c8, $fe, $41, $00, $1d, $78, $88, $b4, $4c, $00, $fc, $04, $fc
    db $04, $ba, $46, $7e, $82, $00, $fd, $03, $ff, $01, $c7, $39, $ae, $51, $03, $7e
    db $81, $f3, $0f, $bc, $7f, $b8, $ac, $84, $3e, $01, $a7, $f8, $a7, $f8, $5a, $75
    db $5f, $1e, $05, $31, $1f, $1f, $22, $94, $76, $02, $be, $41, $ff, $ee, $06, $c0
    db $04, $00, $45, $84, $36, $19, $2b, $3f, $9c, $7f, $02, $ff, $ff, $07, $ff, $f8
    db $f8, $64, $7c, $03, $00, $03, $0d, $0e, $06, $09, $0f, $0f, $07, $18, $0f, $08
    db $08, $82, $8c, $15, $08, $08, $00, $5d, $d0, $08, $20, $a4, $7c, $10, $2d, $07
    db $09, $00, $1c, $00, $6a, $48, $ca, $0a, $c3, $84, $11, $16, $00, $0e, $1a, $00
    db $11, $d6, $df, $9c, $34, $10, $48, $40, $00, $09, $4c, $20, $81, $98, $08, $49
    db $55, $81, $d8, $08, $14, $81, $c8, $04, $0a, $81, $e8, $c0, $40, $00, $81, $a0
    db $20, $00, $30, $00, $38, $00, $00, $3c, $00, $3e, $00, $3f, $03, $3e, $06, $04
    db $3c, $0c, $38, $18, $10, $a7, $50

    stop                                          ; $5c45: $10 $00
    ld [bc], a                                    ; $5c47: $02
    nop                                           ; $5c48: $00
    inc b                                         ; $5c49: $04
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    rrca                                          ; $5c4c: $0f
    nop                                           ; $5c4d: $00
    rrca                                          ; $5c4e: $0f
    ei                                            ; $5c4f: $fb
    ei                                            ; $5c50: $fb
    ei                                            ; $5c51: $fb
    dec c                                         ; $5c52: $0d
    dec bc                                        ; $5c53: $0b

Call_0d8_5c54:
    ei                                            ; $5c54: $fb
    dec bc                                        ; $5c55: $0b
    dec c                                         ; $5c56: $0d
    add b                                         ; $5c57: $80
    nop                                           ; $5c58: $00
    ld b, h                                       ; $5c59: $44
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    ld bc, $1d1f                                  ; $5c5c: $01 $1f $1d
    inc hl                                        ; $5c5f: $23
    dec a                                         ; $5c60: $3d
    ld b, e                                       ; $5c61: $43
    ld [hl], c                                    ; $5c62: $71
    adc a                                         ; $5c63: $8f
    nop                                           ; $5c64: $00
    ld l, a                                       ; $5c65: $6f
    sbc a                                         ; $5c66: $9f
    ld l, b                                       ; $5c67: $68
    sbc b                                         ; $5c68: $98
    ld [$f8f8], sp                                ; $5c69: $08 $f8 $f8
    ld hl, sp+$40                                 ; $5c6c: $f8 $40
    nop                                           ; $5c6e: $00
    ld bc, $8060                                  ; $5c6f: $01 $60 $80
    ld hl, sp-$48                                 ; $5c72: $f8 $b8
    call nz, $c2bc                                ; $5c74: $c4 $bc $c2
    nop                                           ; $5c77: $00
    adc [hl]                                      ; $5c78: $8e
    pop af                                        ; $5c79: $f1
    or $f9                                        ; $5c7a: $f6 $f9
    ld d, $19                                     ; $5c7c: $16 $19
    db $10                                        ; $5c7e: $10
    rra                                           ; $5c7f: $1f
    jr nc, jr_0d8_5ca1                            ; $5c80: $30 $1f

    rra                                           ; $5c82: $1f
    jr nz, jr_0d8_5ced                            ; $5c83: $20 $68

    jr nc, jr_0d8_5c8f                            ; $5c85: $30 $08

    ld hl, sp-$08                                 ; $5c87: $f8 $f8
    ld [$00f8], sp                                ; $5c89: $08 $f8 $00
    ld l, b                                       ; $5c8c: $68
    sbc b                                         ; $5c8d: $98
    ld l, a                                       ; $5c8e: $6f

jr_0d8_5c8f:
    sbc a                                         ; $5c8f: $9f
    ld [hl], c                                    ; $5c90: $71
    adc a                                         ; $5c91: $8f
    dec a                                         ; $5c92: $3d
    ld b, e                                       ; $5c93: $43
    db $10                                        ; $5c94: $10
    dec e                                         ; $5c95: $1d
    inc hl                                        ; $5c96: $23
    ld bc, $7024                                  ; $5c97: $01 $24 $70
    rra                                           ; $5c9a: $1f
    rra                                           ; $5c9b: $1f
    db $10                                        ; $5c9c: $10
    rra                                           ; $5c9d: $1f
    nop                                           ; $5c9e: $00
    ld d, $19                                     ; $5c9f: $16 $19

jr_0d8_5ca1:
    or $f9                                        ; $5ca1: $f6 $f9
    adc [hl]                                      ; $5ca3: $8e
    pop af                                        ; $5ca4: $f1
    cp h                                          ; $5ca5: $bc
    jp nz, $b810                                  ; $5ca6: $c2 $10 $b8

    call nz, Call_0d8_6480                        ; $5ca9: $c4 $80 $64
    ld d, b                                       ; $5cac: $50
    sub h                                         ; $5cad: $94
    nop                                           ; $5cae: $00
    jr jr_0d8_5cb1                                ; $5caf: $18 $00

jr_0d8_5cb1:
    ld [hl+], a                                   ; $5cb1: $22
    nop                                           ; $5cb2: $00
    inc l                                         ; $5cb3: $2c
    nop                                           ; $5cb4: $00
    ld [hl], $00                                  ; $5cb5: $36 $00
    ld b, d                                       ; $5cb7: $42
    nop                                           ; $5cb8: $00
    ld c, h                                       ; $5cb9: $4c
    nop                                           ; $5cba: $00
    ld d, [hl]                                    ; $5cbb: $56
    nop                                           ; $5cbc: $00
    ld h, b                                       ; $5cbd: $60
    nop                                           ; $5cbe: $00
    ld l, d                                       ; $5cbf: $6a
    nop                                           ; $5cc0: $00
    ld [hl], h                                    ; $5cc1: $74
    nop                                           ; $5cc2: $00
    ld a, [hl]                                    ; $5cc3: $7e
    nop                                           ; $5cc4: $00
    adc b                                         ; $5cc5: $88
    nop                                           ; $5cc6: $00
    ld [bc], a                                    ; $5cc7: $02
    nop                                           ; $5cc8: $00
    ld sp, hl                                     ; $5cc9: $f9
    inc b                                         ; $5cca: $04
    ld a, [$fa06]                                 ; $5ccb: $fa $06 $fa
    ld sp, hl                                     ; $5cce: $f9
    ld a, [$02fd]                                 ; $5ccf: $fa $fd $02
    inc b                                         ; $5cd2: $04
    ld sp, hl                                     ; $5cd3: $f9
    inc b                                         ; $5cd4: $04
    ld a, [$fb06]                                 ; $5cd5: $fa $06 $fb
    ld hl, sp-$05                                 ; $5cd8: $f8 $fb
    cp $02                                        ; $5cda: $fe $02
    ld [$04f9], sp                                ; $5cdc: $08 $f9 $04
    ld a, [$fc06]                                 ; $5cdf: $fa $06 $fc
    rst $30                                       ; $5ce2: $f7
    db $fc                                        ; $5ce3: $fc
    rst $38                                       ; $5ce4: $ff
    inc bc                                        ; $5ce5: $03
    inc c                                         ; $5ce6: $0c
    ld sp, hl                                     ; $5ce7: $f9
    inc b                                         ; $5ce8: $04
    ld a, [$fd06]                                 ; $5ce9: $fa $06 $fd
    rst $30                                       ; $5cec: $f7

jr_0d8_5ced:
    db $fd                                        ; $5ced: $fd
    rst $38                                       ; $5cee: $ff
    db $fd                                        ; $5cef: $fd
    nop                                           ; $5cf0: $00
    ld [bc], a                                    ; $5cf1: $02
    ld [de], a                                    ; $5cf2: $12
    ld a, [$fd05]                                 ; $5cf3: $fa $05 $fd
    add hl, bc                                    ; $5cf6: $09
    ld sp, hl                                     ; $5cf7: $f9
    ld a, [$fff9]                                 ; $5cf8: $fa $f9 $ff
    ld [bc], a                                    ; $5cfb: $02
    ld d, $fa                                     ; $5cfc: $16 $fa
    dec b                                         ; $5cfe: $05
    db $fd                                        ; $5cff: $fd
    add hl, bc                                    ; $5d00: $09
    ld a, [$fafb]                                 ; $5d01: $fa $fb $fa
    cp $02                                        ; $5d04: $fe $02
    ld a, [de]                                    ; $5d06: $1a
    ld a, [$fd05]                                 ; $5d07: $fa $05 $fd
    add hl, bc                                    ; $5d0a: $09
    ei                                            ; $5d0b: $fb
    ei                                            ; $5d0c: $fb
    ei                                            ; $5d0d: $fb
    db $fd                                        ; $5d0e: $fd
    ld [bc], a                                    ; $5d0f: $02
    ld e, $fa                                     ; $5d10: $1e $fa
    dec b                                         ; $5d12: $05
    db $fd                                        ; $5d13: $fd
    add hl, bc                                    ; $5d14: $09
    ld a, [$fafa]                                 ; $5d15: $fa $fa $fa
    db $fd                                        ; $5d18: $fd
    ld [bc], a                                    ; $5d19: $02
    ld [hl+], a                                   ; $5d1a: $22
    ld a, [$fd05]                                 ; $5d1b: $fa $05 $fd
    add hl, bc                                    ; $5d1e: $09
    ld sp, hl                                     ; $5d1f: $f9
    ld a, [$00f9]                                 ; $5d20: $fa $f9 $00
    ld [bc], a                                    ; $5d23: $02
    ld h, $fa                                     ; $5d24: $26 $fa
    dec b                                         ; $5d26: $05
    db $fd                                        ; $5d27: $fd
    add hl, bc                                    ; $5d28: $09
    ld sp, hl                                     ; $5d29: $f9
    ld a, [$00f9]                                 ; $5d2a: $fa $f9 $00
    ld [bc], a                                    ; $5d2d: $02
    ld a, [hl+]                                   ; $5d2e: $2a
    ld a, [$fd05]                                 ; $5d2f: $fa $05 $fd
    add hl, bc                                    ; $5d32: $09
    ld sp, hl                                     ; $5d33: $f9
    ld a, [$00f9]                                 ; $5d34: $fa $f9 $00
    inc bc                                        ; $5d37: $03
    ld l, $fa                                     ; $5d38: $2e $fa
    dec b                                         ; $5d3a: $05
    db $fd                                        ; $5d3b: $fd
    add hl, bc                                    ; $5d3c: $09
    ld sp, hl                                     ; $5d3d: $f9
    ld sp, hl                                     ; $5d3e: $f9
    ld sp, hl                                     ; $5d3f: $f9
    ld bc, $f909                                  ; $5d40: $01 $09 $f9
    ld b, b                                       ; $5d43: $40
    inc bc                                        ; $5d44: $03
    xor e                                         ; $5d45: $ab
    ld bc, $0000                                  ; $5d46: $01 $00 $00
    nop                                           ; $5d49: $00
    nop                                           ; $5d4a: $00
    ld bc, $0201                                  ; $5d4b: $01 $01 $02
    inc bc                                        ; $5d4e: $03
    inc b                                         ; $5d4f: $04
    nop                                           ; $5d50: $00
    rlca                                          ; $5d51: $07
    add hl, bc                                    ; $5d52: $09
    rrca                                          ; $5d53: $0f
    ld [de], a                                    ; $5d54: $12
    rrca                                          ; $5d55: $0f
    inc d                                         ; $5d56: $14
    rra                                           ; $5d57: $1f
    jr z, jr_0d8_5d5a                             ; $5d58: $28 $00

jr_0d8_5d5a:
    ld e, $23                                     ; $5d5a: $1e $23
    jr jr_0d8_5d8c                                ; $5d5c: $18 $2e

    nop                                           ; $5d5e: $00
    jr c, jr_0d8_5d61                             ; $5d5f: $38 $00

jr_0d8_5d61:
    ld h, b                                       ; $5d61: $60
    jr nc, jr_0d8_5d64                            ; $5d62: $30 $00

jr_0d8_5d64:
    ret nz                                        ; $5d64: $c0

    ld a, [de]                                    ; $5d65: $1a
    nop                                           ; $5d66: $00
    inc bc                                        ; $5d67: $03
    ld [$0607], sp                                ; $5d68: $08 $07 $06
    add hl, bc                                    ; $5d6b: $09
    ld c, $00                                     ; $5d6c: $0e $00
    dec b                                         ; $5d6e: $05
    ld c, $0b                                     ; $5d6f: $0e $0b
    inc c                                         ; $5d71: $0c
    ld [bc], a                                    ; $5d72: $02
    inc c                                         ; $5d73: $0c
    ld b, $08                                     ; $5d74: $06 $08
    ld a, [de]                                    ; $5d76: $1a
    inc b                                         ; $5d77: $04
    nop                                           ; $5d78: $00
    ld [$2016], sp                                ; $5d79: $08 $16 $20
    rlca                                          ; $5d7c: $07
    ld e, b                                       ; $5d7d: $58
    inc bc                                        ; $5d7e: $03
    ld b, b                                       ; $5d7f: $40
    jr nz, jr_0d8_5d92                            ; $5d80: $20 $10

    inc c                                         ; $5d82: $0c
    ld c, $13                                     ; $5d83: $0e $13

jr_0d8_5d85:
    nop                                           ; $5d85: $00
    ld a, [hl]                                    ; $5d86: $7e
    ld a, [hl-]                                   ; $5d87: $3a
    jr nc, @+$42                                  ; $5d88: $30 $40

    jr z, jr_0d8_5dc5                             ; $5d8a: $28 $39

jr_0d8_5d8c:
    ld a, $00                                     ; $5d8c: $3e $00
    dec b                                         ; $5d8e: $05
    ld a, $13                                     ; $5d8f: $3e $13
    inc a                                         ; $5d91: $3c

jr_0d8_5d92:
    ld b, $38                                     ; $5d92: $06 $38
    inc c                                         ; $5d94: $0c
    jr nc, @+$12                                  ; $5d95: $30 $10

    jr jr_0d8_5d99                                ; $5d97: $18 $00

jr_0d8_5d99:
    jr nc, @+$42                                  ; $5d99: $30 $40

    or b                                          ; $5d9b: $b0
    dec bc                                        ; $5d9c: $0b
    rrca                                          ; $5d9d: $0f
    db $10                                        ; $5d9e: $10
    rlca                                          ; $5d9f: $07
    db $10                                        ; $5da0: $10
    db $fc                                        ; $5da1: $fc
    nop                                           ; $5da2: $00
    rlca                                          ; $5da3: $07
    ld h, b                                       ; $5da4: $60
    ld [hl], b                                    ; $5da5: $70
    ld e, $1e                                     ; $5da6: $1e $1e
    pop hl                                        ; $5da8: $e1
    cp $00                                        ; $5da9: $fe $00
    dec bc                                        ; $5dab: $0b
    db $fc                                        ; $5dac: $fc
    and [hl]                                      ; $5dad: $a6
    ld hl, sp+$0c                                 ; $5dae: $f8 $0c
    ldh a, [rNR23]                                ; $5db0: $f0 $18
    ret nz                                        ; $5db2: $c0

    ld h, b                                       ; $5db3: $60
    ldh a, [$5c]                                  ; $5db4: $f0 $5c
    ld h, b                                       ; $5db6: $60
    ld a, [hl]                                    ; $5db7: $7e
    jr c, jr_0d8_5d85                             ; $5db8: $38 $cb

    rrca                                          ; $5dba: $0f
    jr c, jr_0d8_5dc4                             ; $5dbb: $38 $07

    inc c                                         ; $5dbd: $0c
    add b                                         ; $5dbe: $80
    ld a, $80                                     ; $5dbf: $3e $80
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    ld a, h                                       ; $5dc3: $7c

jr_0d8_5dc4:
    ld a, h                                       ; $5dc4: $7c

jr_0d8_5dc5:
    add e                                         ; $5dc5: $83
    rst $38                                       ; $5dc6: $ff
    dec l                                         ; $5dc7: $2d
    nop                                           ; $5dc8: $00
    cp $43                                        ; $5dc9: $fe $43
    ld hl, sp+$0e                                 ; $5dcb: $f8 $0e
    ldh [$78], a                                  ; $5dcd: $e0 $78
    nop                                           ; $5dcf: $00
    ldh [$f0], a                                  ; $5dd0: $e0 $f0
    cp [hl]                                       ; $5dd2: $be
    sub b                                         ; $5dd3: $90
    ld [bc], a                                    ; $5dd4: $02
    ld bc, $a018                                  ; $5dd5: $01 $18 $a0
    dec e                                         ; $5dd8: $1d
    ld bc, $0e0e                                  ; $5dd9: $01 $0e $0e
    ld de, $001f                                  ; $5ddc: $11 $1f $00
    db $10                                        ; $5ddf: $10
    rra                                           ; $5de0: $1f
    inc hl                                        ; $5de1: $23
    ccf                                           ; $5de2: $3f
    inc hl                                        ; $5de3: $23
    ccf                                           ; $5de4: $3f
    ld hl, $083f                                  ; $5de5: $21 $3f $08
    jr nz, jr_0d8_5e29                            ; $5de8: $20 $3f

    ld b, b                                       ; $5dea: $40
    ld a, a                                       ; $5deb: $7f
    ld [bc], a                                    ; $5dec: $02
    ld [$fff0], sp                                ; $5ded: $08 $f0 $ff
    xor [hl]                                      ; $5df0: $ae
    nop                                           ; $5df1: $00
    rst $18                                       ; $5df2: $df
    sbc l                                         ; $5df3: $9d
    db $e3                                        ; $5df4: $e3
    ld [hl], a                                    ; $5df5: $77
    ld a, b                                       ; $5df6: $78
    ld c, $0f                                     ; $5df7: $0e $0f
    ld bc, $3a80                                  ; $5df9: $01 $80 $3a
    nop                                           ; $5dfc: $00
    jr @+$1a                                      ; $5dfd: $18 $18

    rlca                                          ; $5dff: $07
    rra                                           ; $5e00: $1f
    ld bc, $191f                                  ; $5e01: $01 $1f $19
    sub b                                         ; $5e04: $90
    ld [bc], a                                    ; $5e05: $02
    nop                                           ; $5e06: $00
    ld [bc], a                                    ; $5e07: $02
    ld e, $02                                     ; $5e08: $1e $02
    jr jr_0d8_5e10                                ; $5e0a: $18 $04

    inc e                                         ; $5e0c: $1c
    inc b                                         ; $5e0d: $04
    inc e                                         ; $5e0e: $1c
    nop                                           ; $5e0f: $00

jr_0d8_5e10:
    inc e                                         ; $5e10: $1c
    inc e                                         ; $5e11: $1c
    inc d                                         ; $5e12: $14
    inc c                                         ; $5e13: $0c
    jr jr_0d8_5e1e                                ; $5e14: $18 $08

    jr jr_0d8_5e30                                ; $5e16: $18 $18

    db $10                                        ; $5e18: $10
    inc a                                         ; $5e19: $3c
    inc a                                         ; $5e1a: $3c
    ld b, e                                       ; $5e1b: $43
    inc [hl]                                      ; $5e1c: $34
    nop                                           ; $5e1d: $00

jr_0d8_5e1e:
    ld c, [hl]                                    ; $5e1e: $4e
    ld a, a                                       ; $5e1f: $7f
    ld c, a                                       ; $5e20: $4f

jr_0d8_5e21:
    ld a, a                                       ; $5e21: $7f
    db $10                                        ; $5e22: $10
    add e                                         ; $5e23: $83
    rst $38                                       ; $5e24: $ff
    add b                                         ; $5e25: $80
    ld [bc], a                                    ; $5e26: $02
    jr nz, jr_0d8_5e21                            ; $5e27: $20 $f8

jr_0d8_5e29:
    rst $38                                       ; $5e29: $ff
    or a                                          ; $5e2a: $b7
    rst $08                                       ; $5e2b: $cf
    inc b                                         ; $5e2c: $04
    cp a                                          ; $5e2d: $bf
    ret nz                                        ; $5e2e: $c0

    ld a, e                                       ; $5e2f: $7b

jr_0d8_5e30:
    ld a, h                                       ; $5e30: $7c
    rlca                                          ; $5e31: $07
    xor $10                                       ; $5e32: $ee $10
    rlca                                          ; $5e34: $07
    rlca                                          ; $5e35: $07
    ld d, b                                       ; $5e36: $50
    ld bc, $2002                                  ; $5e37: $01 $02 $20
    inc bc                                        ; $5e3a: $03
    ld [bc], a                                    ; $5e3b: $02
    db $10                                        ; $5e3c: $10
    ld [bc], a                                    ; $5e3d: $02
    ld b, $02                                     ; $5e3e: $06 $02
    ld b, $c2                                     ; $5e40: $06 $c2
    ld bc, $0700                                  ; $5e42: $01 $00 $07
    stop                                          ; $5e45: $10 $00
    nop                                           ; $5e47: $00
    ld a, a                                       ; $5e48: $7f
    ld a, a                                       ; $5e49: $7f
    ld [hl], $08                                  ; $5e4a: $36 $08
    sbc [hl]                                      ; $5e4c: $9e
    ret nz                                        ; $5e4d: $c0

    ld [bc], a                                    ; $5e4e: $02
    nop                                           ; $5e4f: $00
    ld a, $28                                     ; $5e50: $3e $28
    add b                                         ; $5e52: $80
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    cp a                                          ; $5e56: $bf
    ret nz                                        ; $5e57: $c0

    dec bc                                        ; $5e58: $0b
    sbc a                                         ; $5e59: $9f
    ldh [$7f], a                                  ; $5e5a: $e0 $7f
    ld a, a                                       ; $5e5c: $7f
    ld a, e                                       ; $5e5d: $7b
    add hl, de                                    ; $5e5e: $19
    ld bc, $7002                                  ; $5e5f: $01 $02 $70
    ld bc, $d400                                  ; $5e62: $01 $00 $d4
    rlca                                          ; $5e65: $07
    db $10                                        ; $5e66: $10
    ld e, [hl]                                    ; $5e67: $5e
    jr jr_0d8_5ee2                                ; $5e68: $18 $78

    ld b, d                                       ; $5e6a: $42
    nop                                           ; $5e6b: $00
    adc [hl]                                      ; $5e6c: $8e
    ld b, d                                       ; $5e6d: $42
    nop                                           ; $5e6e: $00
    sbc b                                         ; $5e6f: $98
    rst $38                                       ; $5e70: $ff
    ld b, b                                       ; $5e71: $40
    ret nz                                        ; $5e72: $c0

    ld [bc], a                                    ; $5e73: $02
    db $10                                        ; $5e74: $10
    ld b, b                                       ; $5e75: $40
    ld a, a                                       ; $5e76: $7f
    ld b, e                                       ; $5e77: $43
    ld a, a                                       ; $5e78: $7f
    ld a, l                                       ; $5e79: $7d
    ld a, [hl]                                    ; $5e7a: $7e
    nop                                           ; $5e7b: $00
    ld e, a                                       ; $5e7c: $5f
    ld h, b                                       ; $5e7d: $60
    ld c, e                                       ; $5e7e: $4b
    ld [hl], a                                    ; $5e7f: $77
    inc a                                         ; $5e80: $3c
    inc a                                         ; $5e81: $3c
    nop                                           ; $5e82: $00

jr_0d8_5e83:
    nop                                           ; $5e83: $00
    add hl, sp                                    ; $5e84: $39
    inc b                                         ; $5e85: $04
    inc b                                         ; $5e86: $04
    ld [hl], b                                    ; $5e87: $70
    ld [$0874], sp                                ; $5e88: $08 $74 $08
    add [hl]                                      ; $5e8b: $86
    jr z, jr_0d8_5e8f                             ; $5e8c: $28 $01

    rlca                                          ; $5e8e: $07

jr_0d8_5e8f:
    ld bc, $d000                                  ; $5e8f: $01 $00 $d0
    rlca                                          ; $5e92: $07
    db $10                                        ; $5e93: $10
    sbc [hl]                                      ; $5e94: $9e
    jr jr_0d8_5ecf                                ; $5e95: $18 $38

    or $00                                        ; $5e97: $f6 $00
    add b                                         ; $5e99: $80
    rst $38                                       ; $5e9a: $ff
    and b                                         ; $5e9b: $a0
    rst $18                                       ; $5e9c: $df
    nop                                           ; $5e9d: $00
    ret c                                         ; $5e9e: $d8

    rst $20                                       ; $5e9f: $e7
    rst $30                                       ; $5ea0: $f7
    ld hl, sp+$4f                                 ; $5ea1: $f8 $4f
    ld a, a                                       ; $5ea3: $7f
    inc sp                                        ; $5ea4: $33
    inc a                                         ; $5ea5: $3c
    ld b, b                                       ; $5ea6: $40
    ld e, a                                       ; $5ea7: $5f
    call z, $4e00                                 ; $5ea8: $cc $00 $4e
    ld a, a                                       ; $5eab: $7f
    sub e                                         ; $5eac: $93
    di                                            ; $5ead: $f3
    sub b                                         ; $5eae: $90
    ldh a, [rP1]                                  ; $5eaf: $f0 $00

jr_0d8_5eb1:
    ld h, b                                       ; $5eb1: $60
    ld h, b                                       ; $5eb2: $60
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    jr nc, @+$32                                  ; $5eb5: $30 $30

    inc c                                         ; $5eb7: $0c
    inc a                                         ; $5eb8: $3c
    nop                                           ; $5eb9: $00
    ld [bc], a                                    ; $5eba: $02
    ld a, $01                                     ; $5ebb: $3e $01
    ccf                                           ; $5ebd: $3f
    ld bc, $0d3f                                  ; $5ebe: $01 $3f $0d
    inc sp                                        ; $5ec1: $33
    nop                                           ; $5ec2: $00
    scf                                           ; $5ec3: $37
    rrca                                          ; $5ec4: $0f
    dec sp                                        ; $5ec5: $3b
    ccf                                           ; $5ec6: $3f
    ld h, $1e                                     ; $5ec7: $26 $1e
    inc a                                         ; $5ec9: $3c
    inc a                                         ; $5eca: $3c
    db $10                                        ; $5ecb: $10
    inc [hl]                                      ; $5ecc: $34
    inc a                                         ; $5ecd: $3c
    inc h                                         ; $5ece: $24

jr_0d8_5ecf:
    ld [bc], a                                    ; $5ecf: $02
    jr nz, jr_0d8_5eea                            ; $5ed0: $20 $18

    jr jr_0d8_5ee3                                ; $5ed2: $18 $0f

    rrca                                          ; $5ed4: $0f
    ld b, b                                       ; $5ed5: $40
    jr nc, @+$42                                  ; $5ed6: $30 $40

    ld h, b                                       ; $5ed8: $60
    ccf                                           ; $5ed9: $3f
    ccf                                           ; $5eda: $3f
    cpl                                           ; $5edb: $2f
    ccf                                           ; $5edc: $3f
    ld h, $3f                                     ; $5edd: $26 $3f
    ld bc, $7b4b                                  ; $5edf: $01 $4b $7b

jr_0d8_5ee2:
    ld c, b                                       ; $5ee2: $48

jr_0d8_5ee3:
    ld a, b                                       ; $5ee3: $78
    ld c, b                                       ; $5ee4: $48
    ld a, b                                       ; $5ee5: $78
    jr nc, jr_0d8_5ee9                            ; $5ee6: $30 $01

jr_0d8_5ee8:
    nop                                           ; $5ee8: $00

jr_0d8_5ee9:
    add b                                         ; $5ee9: $80

jr_0d8_5eea:
    ld b, b                                       ; $5eea: $40
    jr jr_0d8_5ef2                                ; $5eeb: $18 $05

    dec sp                                        ; $5eed: $3b
    dec de                                        ; $5eee: $1b
    daa                                           ; $5eef: $27
    cpl                                           ; $5ef0: $2f
    rra                                           ; $5ef1: $1f

jr_0d8_5ef2:
    ld [hl-], a                                   ; $5ef2: $32
    ld [de], a                                    ; $5ef3: $12
    ld a, $2c                                     ; $5ef4: $3e $2c
    inc e                                         ; $5ef6: $1c
    ld b, b                                       ; $5ef7: $40
    jr jr_0d8_5f0c                                ; $5ef8: $18 $12

    ld e, $02                                     ; $5efa: $1e $02
    ld [$400c], sp                                ; $5efc: $08 $0c $40
    inc c                                         ; $5eff: $0c

Jump_0d8_5f00:
    ld b, b                                       ; $5f00: $40
    jr z, jr_0d8_5e83                             ; $5f01: $28 $80

    rst $38                                       ; $5f03: $ff
    or b                                          ; $5f04: $b0
    rst $08                                       ; $5f05: $cf
    rst $28                                       ; $5f06: $ef
    ldh a, [$08]                                  ; $5f07: $f0 $08
    rst $18                                       ; $5f09: $df
    rst $38                                       ; $5f0a: $ff
    ld h, a                                       ; $5f0b: $67

jr_0d8_5f0c:
    ld a, b                                       ; $5f0c: $78
    ld b, b                                       ; $5f0d: $40
    ld [$3f25], sp                                ; $5f0e: $08 $25 $3f
    daa                                           ; $5f11: $27
    ld b, h                                       ; $5f12: $44
    ccf                                           ; $5f13: $3f
    ld h, b                                       ; $5f14: $60
    jr jr_0d8_5f37                                ; $5f15: $18 $20

    jr nz, @+$1e                                  ; $5f17: $20 $1c

    ld b, b                                       ; $5f19: $40
    ld d, b                                       ; $5f1a: $50
    inc c                                         ; $5f1b: $0c
    inc a                                         ; $5f1c: $3c
    db $10                                        ; $5f1d: $10
    ld a, [hl-]                                   ; $5f1e: $3a
    ld a, $32                                     ; $5f1f: $3e $32
    ld [bc], a                                    ; $5f21: $02
    nop                                           ; $5f22: $00
    add hl, bc                                    ; $5f23: $09
    rrca                                          ; $5f24: $0f
    add hl, bc                                    ; $5f25: $09
    rrca                                          ; $5f26: $0f
    adc b                                         ; $5f27: $88
    ld b, b                                       ; $5f28: $40
    add hl, bc                                    ; $5f29: $09
    ld bc, $0e01                                  ; $5f2a: $01 $01 $0e
    ld b, d                                       ; $5f2d: $42
    jr nc, jr_0d8_5eb1                            ; $5f2e: $30 $81

    cp $cf                                        ; $5f30: $fe $cf
    nop                                           ; $5f32: $00
    pop af                                        ; $5f33: $f1
    cp $ff                                        ; $5f34: $fe $ff
    ld b, [hl]                                    ; $5f36: $46

jr_0d8_5f37:
    ld a, c                                       ; $5f37: $79

jr_0d8_5f38:
    ccf                                           ; $5f38: $3f
    ccf                                           ; $5f39: $3f
    inc de                                        ; $5f3a: $13
    db $10                                        ; $5f3b: $10
    rra                                           ; $5f3c: $1f
    inc de                                        ; $5f3d: $13
    rra                                           ; $5f3e: $1f
    ld [hl+], a                                   ; $5f3f: $22
    ld [$0f09], sp                                ; $5f40: $08 $09 $0f
    ret nz                                        ; $5f43: $c0

    ret nz                                        ; $5f44: $c0

    nop                                           ; $5f45: $00
    jr nc, jr_0d8_5f38                            ; $5f46: $30 $f0

    ld [$04f8], sp                                ; $5f48: $08 $f8 $04
    db $fc                                        ; $5f4b: $fc
    inc d                                         ; $5f4c: $14
    db $ec                                        ; $5f4d: $ec
    nop                                           ; $5f4e: $00
    ld l, h                                       ; $5f4f: $6c
    sbc h                                         ; $5f50: $9c
    or h                                          ; $5f51: $b4
    ld a, h                                       ; $5f52: $7c
    ret z                                         ; $5f53: $c8

    ld hl, sp-$28                                 ; $5f54: $f8 $d8
    jr c, jr_0d8_5f58                             ; $5f56: $38 $00

jr_0d8_5f58:
    db $e4                                        ; $5f58: $e4
    db $fc                                        ; $5f59: $fc
    ld [c], a                                     ; $5f5a: $e2
    cp $52                                        ; $5f5b: $fe $52
    sbc $89                                       ; $5f5d: $de $89
    adc a                                         ; $5f5f: $8f
    ldh [rLCDC], a                                ; $5f60: $e0 $40
    jr jr_0d8_5ee8                                ; $5f62: $18 $84

    add hl, bc                                    ; $5f64: $09
    ld [bc], a                                    ; $5f65: $02
    ret z                                         ; $5f66: $c8

    ld e, h                                       ; $5f67: $5c
    nop                                           ; $5f68: $00
    inc c                                         ; $5f69: $0c
    nop                                           ; $5f6a: $00
    ld d, $00                                     ; $5f6b: $16 $00
    jr nz, jr_0d8_5f6f                            ; $5f6d: $20 $00

jr_0d8_5f6f:
    jr z, jr_0d8_5f71                             ; $5f6f: $28 $00

jr_0d8_5f71:
    ld a, $00                                     ; $5f71: $3e $00
    ld c, [hl]                                    ; $5f73: $4e
    nop                                           ; $5f74: $00
    ld [bc], a                                    ; $5f75: $02
    nop                                           ; $5f76: $00
    ld sp, hl                                     ; $5f77: $f9
    rlca                                          ; $5f78: $07
    ei                                            ; $5f79: $fb
    rlca                                          ; $5f7a: $07
    db $fc                                        ; $5f7b: $fc
    ld sp, hl                                     ; $5f7c: $f9
    db $fc                                        ; $5f7d: $fc
    nop                                           ; $5f7e: $00
    ld [bc], a                                    ; $5f7f: $02
    inc b                                         ; $5f80: $04
    ld sp, hl                                     ; $5f81: $f9
    rlca                                          ; $5f82: $07
    ei                                            ; $5f83: $fb
    rlca                                          ; $5f84: $07
    db $fd                                        ; $5f85: $fd
    ei                                            ; $5f86: $fb
    db $fd                                        ; $5f87: $fd
    cp $01                                        ; $5f88: $fe $01
    ld [$07f9], sp                                ; $5f8a: $08 $f9 $07
    ei                                            ; $5f8d: $fb
    rlca                                          ; $5f8e: $07
    cp $fc                                        ; $5f8f: $fe $fc
    ld [$f80a], sp                                ; $5f91: $08 $0a $f8
    ld b, $fb                                     ; $5f94: $06 $fb
    rlca                                          ; $5f96: $07
    ld a, [c]                                     ; $5f97: $f2
    ld a, [c]                                     ; $5f98: $f2
    or $fa                                        ; $5f99: $f6 $fa
    db $f4                                        ; $5f9b: $f4
    ld [bc], a                                    ; $5f9c: $02
    ld a, [c]                                     ; $5f9d: $f2
    ld [$f204], sp                                ; $5f9e: $08 $04 $f2
    ld b, $fa                                     ; $5fa1: $06 $fa
    inc b                                         ; $5fa3: $04
    ld [bc], a                                    ; $5fa4: $02
    ld b, $09                                     ; $5fa5: $06 $09
    dec b                                         ; $5fa7: $05
    ld a, [de]                                    ; $5fa8: $1a
    ld hl, sp+$06                                 ; $5fa9: $f8 $06
    ei                                            ; $5fab: $fb
    rlca                                          ; $5fac: $07
    or $f5                                        ; $5fad: $f6 $f5
    ei                                            ; $5faf: $fb
    db $fd                                        ; $5fb0: $fd
    or $05                                        ; $5fb1: $f6 $05
    ld b, $f5                                     ; $5fb3: $06 $f5
    ld b, $05                                     ; $5fb5: $06 $05
    inc b                                         ; $5fb7: $04
    inc h                                         ; $5fb8: $24
    ld hl, sp+$06                                 ; $5fb9: $f8 $06
    ei                                            ; $5fbb: $fb
    rlca                                          ; $5fbc: $07
    ld a, [$faf9]                                 ; $5fbd: $fa $f9 $fa
    ld bc, $f90a                                  ; $5fc0: $01 $0a $f9
    ld a, [bc]                                    ; $5fc3: $0a
    rst $38                                       ; $5fc4: $ff
    ret nz                                        ; $5fc5: $c0

    ld [bc], a                                    ; $5fc6: $02
    ld l, d                                       ; $5fc7: $6a
    ld bc, $0100                                  ; $5fc8: $01 $00 $01
    nop                                           ; $5fcb: $00
    ld [bc], a                                    ; $5fcc: $02
    ld bc, $0304                                  ; $5fcd: $01 $04 $03
    ld [$0007], sp                                ; $5fd0: $08 $07 $00
    db $10                                        ; $5fd3: $10
    rrca                                          ; $5fd4: $0f
    jr nz, jr_0d8_5ff6                            ; $5fd5: $20 $1f

    ld b, b                                       ; $5fd7: $40
    ccf                                           ; $5fd8: $3f
    add b                                         ; $5fd9: $80
    ld a, a                                       ; $5fda: $7f
    inc b                                         ; $5fdb: $04
    rst $38                                       ; $5fdc: $ff
    nop                                           ; $5fdd: $00
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    nop                                           ; $5fe0: $00
    ld bc, $4050                                  ; $5fe1: $01 $50 $40
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    jr nz, jr_0d8_6028                            ; $5fe6: $20 $40

    db $10                                        ; $5fe8: $10
    ld h, b                                       ; $5fe9: $60
    ld [$0470], sp                                ; $5fea: $08 $70 $04
    ld a, b                                       ; $5fed: $78
    nop                                           ; $5fee: $00
    ld [bc], a                                    ; $5fef: $02
    ld a, h                                       ; $5ff0: $7c
    ld bc, $7f7e                                  ; $5ff1: $01 $7e $7f
    nop                                           ; $5ff4: $00
    ld a, a                                       ; $5ff5: $7f

jr_0d8_5ff6:
    ld a, a                                       ; $5ff6: $7f
    add c                                         ; $5ff7: $81
    jr nz, jr_0d8_6042                            ; $5ff8: $20 $48

    inc b                                         ; $5ffa: $04
    nop                                           ; $5ffb: $00
    ld a, [bc]                                    ; $5ffc: $0a
    inc b                                         ; $5ffd: $04
    ld de, $3c0e                                  ; $5ffe: $11 $0e $3c
    xor b                                         ; $6001: $a8
    add b                                         ; $6002: $80
    ld h, $38                                     ; $6003: $26 $38
    ld [bc], a                                    ; $6005: $02
    inc b                                         ; $6006: $04
    ld bc, $0706                                  ; $6007: $01 $06 $07
    nop                                           ; $600a: $00
    rlca                                          ; $600b: $07
    ld b, b                                       ; $600c: $40
    rlca                                          ; $600d: $07
    jr nz, jr_0d8_6078                            ; $600e: $20 $68

    ld [$1400], sp                                ; $6010: $08 $00 $14
    ld [$1c22], sp                                ; $6013: $08 $22 $1c
    jr nc, jr_0d8_6059                            ; $6016: $30 $41

    ld a, $58                                     ; $6018: $3e $58
    ld l, b                                       ; $601a: $68
    add h                                         ; $601b: $84
    jr z, @+$1a                                   ; $601c: $28 $18

    jr jr_0d8_605c                                ; $601e: $18 $3c

    inc h                                         ; $6020: $24
    nop                                           ; $6021: $00
    ld a, [hl]                                    ; $6022: $7e
    ld b, d                                       ; $6023: $42
    rst $38                                       ; $6024: $ff
    add c                                         ; $6025: $81
    rst $38                                       ; $6026: $ff
    add b                                         ; $6027: $80

jr_0d8_6028:
    rst $38                                       ; $6028: $ff
    ret nz                                        ; $6029: $c0

    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    ldh [rIE], a                                  ; $602c: $e0 $ff
    ldh a, [$7f]                                  ; $602e: $f0 $7f
    ld a, b                                       ; $6030: $78
    ccf                                           ; $6031: $3f
    inc a                                         ; $6032: $3c
    nop                                           ; $6033: $00
    rra                                           ; $6034: $1f
    ld e, $0f                                     ; $6035: $1e $0f
    rrca                                          ; $6037: $0f
    rlca                                          ; $6038: $07
    rlca                                          ; $6039: $07
    inc bc                                        ; $603a: $03
    inc bc                                        ; $603b: $03
    nop                                           ; $603c: $00
    ld bc, $0001                                  ; $603d: $01 $01 $00
    nop                                           ; $6040: $00
    add b                                         ; $6041: $80

jr_0d8_6042:
    add b                                         ; $6042: $80
    ret nz                                        ; $6043: $c0

    ld b, b                                       ; $6044: $40
    nop                                           ; $6045: $00
    ldh [rNR41], a                                ; $6046: $e0 $20
    ldh a, [rNR10]                                ; $6048: $f0 $10
    ld hl, sp+$08                                 ; $604a: $f8 $08
    db $fc                                        ; $604c: $fc
    inc b                                         ; $604d: $04
    ld sp, $03ff                                  ; $604e: $31 $ff $03
    cp [hl]                                       ; $6051: $be
    nop                                           ; $6052: $00
    jr z, @+$1a                                   ; $6053: $28 $18

    ldh [$7f], a                                  ; $6055: $e0 $7f
    ld b, b                                       ; $6057: $40
    ld [hl-], a                                   ; $6058: $32

jr_0d8_6059:
    nop                                           ; $6059: $00
    jr nz, jr_0d8_605c                            ; $605a: $20 $00

jr_0d8_605c:
    rst $38                                       ; $605c: $ff
    inc h                                         ; $605d: $24
    nop                                           ; $605e: $00
    inc bc                                        ; $605f: $03
    ld [bc], a                                    ; $6060: $02
    rlca                                          ; $6061: $07
    inc b                                         ; $6062: $04
    rrca                                          ; $6063: $0f
    dec b                                         ; $6064: $05
    ld [$101f], sp                                ; $6065: $08 $1f $10
    ccf                                           ; $6068: $3f
    jr nz, jr_0d8_607f                            ; $6069: $20 $14

    db $10                                        ; $606b: $10
    ld bc, $0026                                  ; $606c: $01 $26 $00
    ld bc, $ff07                                  ; $606f: $01 $07 $ff
    rrca                                          ; $6072: $0f
    cp $1e                                        ; $6073: $fe $1e
    db $fc                                        ; $6075: $fc
    inc e                                         ; $6076: $1c
    inc [hl]                                      ; $6077: $34

jr_0d8_6078:
    ld [$6084], sp                                ; $6078: $08 $84 $60

jr_0d8_607b:
    ld [$023e], sp                                ; $607b: $08 $3e $02
    ccf                                           ; $607e: $3f

jr_0d8_607f:
    ld bc, $0002                                  ; $607f: $01 $02 $00
    inc bc                                        ; $6082: $03
    ccf                                           ; $6083: $3f
    nop                                           ; $6084: $00
    rlca                                          ; $6085: $07
    ccf                                           ; $6086: $3f
    rrca                                          ; $6087: $0f
    ld a, $1e                                     ; $6088: $3e $1e
    inc a                                         ; $608a: $3c
    inc a                                         ; $608b: $3c
    jr c, jr_0d8_6094                             ; $608c: $38 $06

    jr c, jr_0d8_60c0                             ; $608e: $38 $30

    jr nc, @+$22                                  ; $6090: $30 $20

    jr nz, jr_0d8_609a                            ; $6092: $20 $06

jr_0d8_6094:
    add hl, de                                    ; $6094: $19
    ld b, b                                       ; $6095: $40
    ld [hl], b                                    ; $6096: $70
    add c                                         ; $6097: $81
    nop                                           ; $6098: $00
    rst $38                                       ; $6099: $ff

jr_0d8_609a:
    jp $e7ff                                      ; $609a: $c3 $ff $e7


    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    ld a, [hl]                                    ; $609f: $7e
    ld a, [hl]                                    ; $60a0: $7e
    ld [bc], a                                    ; $60a1: $02
    inc a                                         ; $60a2: $3c
    inc a                                         ; $60a3: $3c
    jr jr_0d8_60be                                ; $60a4: $18 $18

    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    ld c, h                                       ; $60a8: $4c
    ld [$00ff], sp                                ; $60a9: $08 $ff $00
    rra                                           ; $60ac: $1f
    db $fc                                        ; $60ad: $fc
    inc a                                         ; $60ae: $3c
    ld hl, sp+$78                                 ; $60af: $f8 $78
    ldh a, [$f0]                                  ; $60b1: $f0 $f0
    ldh [rDIV], a                                 ; $60b3: $e0 $04
    ldh [$c0], a                                  ; $60b5: $e0 $c0
    ret nz                                        ; $60b7: $c0

    add b                                         ; $60b8: $80
    add b                                         ; $60b9: $80
    ld a, $59                                     ; $60ba: $3e $59
    cp $02                                        ; $60bc: $fe $02

jr_0d8_60be:
    ldh [$72], a                                  ; $60be: $e0 $72

jr_0d8_60c0:
    nop                                           ; $60c0: $00
    cp h                                          ; $60c1: $bc
    and b                                         ; $60c2: $a0
    ld e, [hl]                                    ; $60c3: $5e
    ld de, $6040                                  ; $60c4: $11 $40 $60
    jr nz, jr_0d8_6139                            ; $60c7: $20 $70

    stop                                          ; $60c9: $10 $00
    ld a, b                                       ; $60cb: $78
    ld [$047c], sp                                ; $60cc: $08 $7c $04
    ld a, [hl]                                    ; $60cf: $7e
    ld [bc], a                                    ; $60d0: $02
    ld a, a                                       ; $60d1: $7f
    inc bc                                        ; $60d2: $03
    nop                                           ; $60d3: $00
    ld a, a                                       ; $60d4: $7f
    rlca                                          ; $60d5: $07
    ld a, a                                       ; $60d6: $7f
    ld c, a                                       ; $60d7: $4f
    ld a, [hl]                                    ; $60d8: $7e
    ld a, [hl]                                    ; $60d9: $7e
    ld a, h                                       ; $60da: $7c
    ld a, h                                       ; $60db: $7c
    ld [$7878], sp                                ; $60dc: $08 $78 $78
    jr nc, jr_0d8_6111                            ; $60df: $30 $30

    add [hl]                                      ; $60e1: $86
    add hl, de                                    ; $60e2: $19
    db $10                                        ; $60e3: $10
    db $10                                        ; $60e4: $10
    jr c, @+$03                                   ; $60e5: $38 $01

    jr z, jr_0d8_6165                             ; $60e7: $28 $7c

    ld b, h                                       ; $60e9: $44
    cp $82                                        ; $60ea: $fe $82
    rst $38                                       ; $60ec: $ff
    pop bc                                        ; $60ed: $c1
    call nc, $0100                                ; $60ee: $d4 $00 $01
    ld [hl], b                                    ; $60f1: $70
    ccf                                           ; $60f2: $3f
    jr c, jr_0d8_6114                             ; $60f3: $38 $1f

    inc e                                         ; $60f5: $1c
    rrca                                          ; $60f6: $0f
    ld c, $fc                                     ; $60f7: $0e $fc
    jr jr_0d8_607b                                ; $60f9: $18 $80

    jp c, $8118                                   ; $60fb: $da $18 $81

    add c                                         ; $60fe: $81
    jp $e742                                      ; $60ff: $c3 $42 $e7


    inc h                                         ; $6102: $24
    rst $38                                       ; $6103: $ff
    ld d, h                                       ; $6104: $54
    jr @-$46                                      ; $6105: $18 $b8

    ld bc, $2600                                  ; $6107: $01 $00 $26
    ld bc, $0881                                  ; $610a: $01 $81 $08
    db $10                                        ; $610d: $10
    jr @+$01                                      ; $610e: $18 $ff

    nop                                           ; $6110: $00

jr_0d8_6111:
    inc a                                         ; $6111: $3c
    rst $38                                       ; $6112: $ff
    ld a, [hl]                                    ; $6113: $7e

jr_0d8_6114:
    rst $20                                       ; $6114: $e7
    rst $20                                       ; $6115: $e7
    jp $81c3                                      ; $6116: $c3 $c3 $81


    nop                                           ; $6119: $00
    add c                                         ; $611a: $81
    ld [$1c08], sp                                ; $611b: $08 $08 $1c
    inc d                                         ; $611e: $14
    ld a, $22                                     ; $611f: $3e $22
    ld a, a                                       ; $6121: $7f
    ld bc, $ff41                                  ; $6122: $01 $41 $ff
    add e                                         ; $6125: $83
    rst $38                                       ; $6126: $ff
    rlca                                          ; $6127: $07
    cp $0e                                        ; $6128: $fe $0e
    db $f4                                        ; $612a: $f4
    nop                                           ; $612b: $00
    ld e, $38                                     ; $612c: $1e $38
    ldh a, [rSVBK]                                ; $612e: $f0 $70
    xor b                                         ; $6130: $a8
    jr jr_0d8_616d                                ; $6131: $18 $3a

    add hl, de                                    ; $6133: $19
    ld a, [de]                                    ; $6134: $1a
    ld hl, $0820                                  ; $6135: $21 $20 $08
    rst $00                                       ; $6138: $c7

jr_0d8_6139:
    nop                                           ; $6139: $00
    cp $ee                                        ; $613a: $fe $ee
    ld a, h                                       ; $613c: $7c
    ld a, h                                       ; $613d: $7c
    jr c, jr_0d8_6178                             ; $613e: $38 $38

    db $10                                        ; $6140: $10
    db $10                                        ; $6141: $10
    ldh [rP1], a                                  ; $6142: $e0 $00
    ld c, d                                       ; $6144: $4a
    ld e, d                                       ; $6145: $5a
    add hl, de                                    ; $6146: $19
    add b                                         ; $6147: $80
    db $10                                        ; $6148: $10
    db $e3                                        ; $6149: $e3
    ld a, a                                       ; $614a: $7f
    ld [hl], a                                    ; $614b: $77
    ld a, $3e                                     ; $614c: $3e $3e
    ld [$1c1c], sp                                ; $614e: $08 $1c $1c
    ld [$2008], sp                                ; $6151: $08 $08 $20
    ld c, d                                       ; $6154: $4a
    jr nz, jr_0d8_6177                            ; $6155: $20 $20

    ld [hl], b                                    ; $6157: $70
    nop                                           ; $6158: $00
    ld d, b                                       ; $6159: $50
    ld hl, sp-$78                                 ; $615a: $f8 $88
    db $fc                                        ; $615c: $fc
    call nz, $627e                                ; $615d: $c4 $7e $62
    ccf                                           ; $6160: $3f
    inc b                                         ; $6161: $04
    ld sp, $181f                                  ; $6162: $31 $1f $18

jr_0d8_6165:
    rrca                                          ; $6165: $0f
    inc c                                         ; $6166: $0c
    ld l, h                                       ; $6167: $6c
    ld de, $3f11                                  ; $6168: $11 $11 $3f
    nop                                           ; $616b: $00
    inc hl                                        ; $616c: $23

jr_0d8_616d:
    ld a, [hl]                                    ; $616d: $7e
    ld b, [hl]                                    ; $616e: $46
    db $fc                                        ; $616f: $fc
    adc h                                         ; $6170: $8c
    ld hl, sp-$28                                 ; $6171: $f8 $d8
    ld [hl], b                                    ; $6173: $70
    inc b                                         ; $6174: $04
    ld [hl], b                                    ; $6175: $70
    inc b                                         ; $6176: $04

jr_0d8_6177:
    inc b                                         ; $6177: $04

jr_0d8_6178:
    ld c, $0a                                     ; $6178: $0e $0a
    db $10                                        ; $617a: $10
    jr nc, jr_0d8_6195                            ; $617b: $30 $18

    ldh a, [$63]                                  ; $617d: $f0 $63
    jr nc, @-$52                                  ; $617f: $30 $ac

    ld de, $2830                                  ; $6181: $11 $30 $28
    dec de                                        ; $6184: $1b
    ld c, $0e                                     ; $6185: $0e $0e
    ld l, b                                       ; $6187: $68
    add hl, hl                                    ; $6188: $29
    ld b, $a8                                     ; $6189: $06 $a8
    ret nz                                        ; $618b: $c0

    jr z, jr_0d8_61b7                             ; $618c: $28 $29

    ld h, $a8                                     ; $618e: $26 $a8
    stop                                          ; $6190: $10 $00
    ld [bc], a                                    ; $6192: $02
    nop                                           ; $6193: $00
    inc b                                         ; $6194: $04

jr_0d8_6195:
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    rra                                           ; $6197: $1f
    nop                                           ; $6198: $00
    cpl                                           ; $6199: $2f
    ei                                            ; $619a: $fb
    ei                                            ; $619b: $fb
    ei                                            ; $619c: $fb
    dec e                                         ; $619d: $1d
    dec hl                                        ; $619e: $2b
    ei                                            ; $619f: $fb
    dec hl                                        ; $61a0: $2b
    dec e                                         ; $61a1: $1d
    add b                                         ; $61a2: $80
    nop                                           ; $61a3: $00
    ld b, h                                       ; $61a4: $44
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    ld bc, $1d1f                                  ; $61a7: $01 $1f $1d
    inc hl                                        ; $61aa: $23
    dec a                                         ; $61ab: $3d
    ld b, e                                       ; $61ac: $43
    ld [hl], c                                    ; $61ad: $71
    adc a                                         ; $61ae: $8f
    nop                                           ; $61af: $00
    ld l, a                                       ; $61b0: $6f
    sbc a                                         ; $61b1: $9f
    ld l, b                                       ; $61b2: $68
    sbc b                                         ; $61b3: $98
    ld [$f8f8], sp                                ; $61b4: $08 $f8 $f8

jr_0d8_61b7:
    ld hl, sp+$40                                 ; $61b7: $f8 $40
    nop                                           ; $61b9: $00
    ld bc, $8060                                  ; $61ba: $01 $60 $80
    ld hl, sp-$48                                 ; $61bd: $f8 $b8
    call nz, $c2bc                                ; $61bf: $c4 $bc $c2
    nop                                           ; $61c2: $00
    adc [hl]                                      ; $61c3: $8e
    pop af                                        ; $61c4: $f1
    or $f9                                        ; $61c5: $f6 $f9
    ld d, $19                                     ; $61c7: $16 $19
    db $10                                        ; $61c9: $10
    rra                                           ; $61ca: $1f
    jr nc, jr_0d8_61ec                            ; $61cb: $30 $1f

    rra                                           ; $61cd: $1f
    jr nz, jr_0d8_6238                            ; $61ce: $20 $68

    jr nc, jr_0d8_61da                            ; $61d0: $30 $08

    ld hl, sp-$08                                 ; $61d2: $f8 $f8
    ld [$00f8], sp                                ; $61d4: $08 $f8 $00
    ld l, b                                       ; $61d7: $68
    sbc b                                         ; $61d8: $98
    ld l, a                                       ; $61d9: $6f

jr_0d8_61da:
    sbc a                                         ; $61da: $9f
    ld [hl], c                                    ; $61db: $71
    adc a                                         ; $61dc: $8f
    dec a                                         ; $61dd: $3d
    ld b, e                                       ; $61de: $43
    db $10                                        ; $61df: $10
    dec e                                         ; $61e0: $1d
    inc hl                                        ; $61e1: $23
    ld bc, $7024                                  ; $61e2: $01 $24 $70
    rra                                           ; $61e5: $1f
    rra                                           ; $61e6: $1f
    db $10                                        ; $61e7: $10
    rra                                           ; $61e8: $1f
    nop                                           ; $61e9: $00
    ld d, $19                                     ; $61ea: $16 $19

jr_0d8_61ec:
    or $f9                                        ; $61ec: $f6 $f9
    adc [hl]                                      ; $61ee: $8e
    pop af                                        ; $61ef: $f1
    cp h                                          ; $61f0: $bc
    jp nz, $b810                                  ; $61f1: $c2 $10 $b8

    call nz, Call_0d8_6480                        ; $61f4: $c4 $80 $64
    ld d, b                                       ; $61f7: $50
    ld a, [c]                                     ; $61f8: $f2
    nop                                           ; $61f9: $00
    jr nz, jr_0d8_61fc                            ; $61fa: $20 $00

jr_0d8_61fc:
    ld a, [hl+]                                   ; $61fc: $2a
    nop                                           ; $61fd: $00
    inc [hl]                                      ; $61fe: $34
    nop                                           ; $61ff: $00
    ld a, $00                                     ; $6200: $3e $00
    ld c, b                                       ; $6202: $48
    nop                                           ; $6203: $00
    ld d, d                                       ; $6204: $52
    nop                                           ; $6205: $00
    ld e, h                                       ; $6206: $5c
    nop                                           ; $6207: $00
    ld h, [hl]                                    ; $6208: $66
    nop                                           ; $6209: $00
    ld [hl], b                                    ; $620a: $70
    nop                                           ; $620b: $00
    ld a, b                                       ; $620c: $78
    nop                                           ; $620d: $00
    add d                                         ; $620e: $82
    nop                                           ; $620f: $00
    adc h                                         ; $6210: $8c
    nop                                           ; $6211: $00
    sub [hl]                                      ; $6212: $96
    nop                                           ; $6213: $00
    xor [hl]                                      ; $6214: $ae
    nop                                           ; $6215: $00
    adc $00                                       ; $6216: $ce $00
    ld [c], a                                     ; $6218: $e2
    nop                                           ; $6219: $00
    ld [bc], a                                    ; $621a: $02
    nop                                           ; $621b: $00
    db $fd                                        ; $621c: $fd
    inc b                                         ; $621d: $04
    nop                                           ; $621e: $00
    rra                                           ; $621f: $1f
    nop                                           ; $6220: $00
    db $fd                                        ; $6221: $fd
    db $10                                        ; $6222: $10
    db $fd                                        ; $6223: $fd
    ld [bc], a                                    ; $6224: $02
    inc b                                         ; $6225: $04
    db $fd                                        ; $6226: $fd
    inc b                                         ; $6227: $04
    nop                                           ; $6228: $00
    rra                                           ; $6229: $1f
    nop                                           ; $622a: $00
    db $fd                                        ; $622b: $fd
    db $10                                        ; $622c: $10
    db $fd                                        ; $622d: $fd
    ld [bc], a                                    ; $622e: $02
    ld [$04fd], sp                                ; $622f: $08 $fd $04
    nop                                           ; $6232: $00
    rra                                           ; $6233: $1f
    nop                                           ; $6234: $00
    db $fd                                        ; $6235: $fd
    db $10                                        ; $6236: $10
    db $fd                                        ; $6237: $fd

jr_0d8_6238:
    ld [bc], a                                    ; $6238: $02
    inc c                                         ; $6239: $0c
    db $fd                                        ; $623a: $fd
    inc b                                         ; $623b: $04
    nop                                           ; $623c: $00
    rra                                           ; $623d: $1f
    nop                                           ; $623e: $00
    db $fd                                        ; $623f: $fd
    db $10                                        ; $6240: $10
    db $fd                                        ; $6241: $fd
    ld [bc], a                                    ; $6242: $02
    db $10                                        ; $6243: $10
    db $fd                                        ; $6244: $fd
    inc b                                         ; $6245: $04
    nop                                           ; $6246: $00
    rra                                           ; $6247: $1f
    nop                                           ; $6248: $00
    db $fd                                        ; $6249: $fd
    db $10                                        ; $624a: $10
    db $fd                                        ; $624b: $fd
    ld [bc], a                                    ; $624c: $02
    inc d                                         ; $624d: $14
    db $fd                                        ; $624e: $fd
    inc b                                         ; $624f: $04
    nop                                           ; $6250: $00
    rra                                           ; $6251: $1f
    nop                                           ; $6252: $00
    db $fd                                        ; $6253: $fd
    db $10                                        ; $6254: $10
    db $fd                                        ; $6255: $fd

jr_0d8_6256:
    ld [bc], a                                    ; $6256: $02
    jr jr_0d8_6256                                ; $6257: $18 $fd

    inc b                                         ; $6259: $04
    nop                                           ; $625a: $00
    rra                                           ; $625b: $1f
    nop                                           ; $625c: $00
    db $fd                                        ; $625d: $fd
    db $10                                        ; $625e: $10
    db $fd                                        ; $625f: $fd
    ld [bc], a                                    ; $6260: $02
    inc e                                         ; $6261: $1c
    db $fd                                        ; $6262: $fd
    inc b                                         ; $6263: $04
    nop                                           ; $6264: $00
    rra                                           ; $6265: $1f
    nop                                           ; $6266: $00
    db $fd                                        ; $6267: $fd
    db $10                                        ; $6268: $10
    db $fd                                        ; $6269: $fd
    ld bc, $fa20                                  ; $626a: $01 $20 $fa
    ld b, $fb                                     ; $626d: $06 $fb
    ld b, $fd                                     ; $626f: $06 $fd
    db $fc                                        ; $6271: $fc
    ld [bc], a                                    ; $6272: $02
    ld [hl+], a                                   ; $6273: $22
    ld a, [$fb06]                                 ; $6274: $fa $06 $fb
    ld b, $fc                                     ; $6277: $06 $fc
    db $fc                                        ; $6279: $fc
    db $fc                                        ; $627a: $fc
    db $fd                                        ; $627b: $fd
    ld [bc], a                                    ; $627c: $02
    ld h, $fa                                     ; $627d: $26 $fa
    ld b, $fb                                     ; $627f: $06 $fb
    ld b, $fb                                     ; $6281: $06 $fb
    ei                                            ; $6283: $fb
    ei                                            ; $6284: $fb
    cp $02                                        ; $6285: $fe $02
    ld a, [hl+]                                   ; $6287: $2a
    ld a, [$fb06]                                 ; $6288: $fa $06 $fb
    ld b, $fc                                     ; $628b: $06 $fc
    ei                                            ; $628d: $fb
    db $fc                                        ; $628e: $fc
    db $fd                                        ; $628f: $fd
    add hl, bc                                    ; $6290: $09
    ld l, $fa                                     ; $6291: $2e $fa
    ld b, $01                                     ; $6293: $06 $01
    inc c                                         ; $6295: $0c
    ld c, $e1                                     ; $6296: $0e $e1
    ld [$0dfd], sp                                ; $6298: $08 $fd $0d
    dec b                                         ; $629b: $05
    dec d                                         ; $629c: $15
    ld c, $18                                     ; $629d: $0e $18
    pop hl                                        ; $629f: $e1
    jr @-$16                                      ; $62a0: $18 $e8

    jr jr_0d8_62a6                                ; $62a2: $18 $02

    jr jr_0d8_62ac                                ; $62a4: $18 $06

jr_0d8_62a6:
    jr jr_0d8_62b7                                ; $62a6: $18 $0f

    dec c                                         ; $62a8: $0d
    ld b, b                                       ; $62a9: $40
    jp hl                                         ; $62aa: $e9


    rla                                           ; $62ab: $17

jr_0d8_62ac:
    jp hl                                         ; $62ac: $e9


    rla                                           ; $62ad: $17
    rst $28                                       ; $62ae: $ef
    db $eb                                        ; $62af: $eb
    ld [$e9f3], a                                 ; $62b0: $ea $f3 $e9
    ei                                            ; $62b3: $fb
    jp hl                                         ; $62b4: $e9


    inc bc                                        ; $62b5: $03
    db $ec                                        ; $62b6: $ec

jr_0d8_62b7:
    dec bc                                        ; $62b7: $0b
    db $f4                                        ; $62b8: $f4
    db $10                                        ; $62b9: $10
    ld sp, hl                                     ; $62ba: $f9
    jp hl                                         ; $62bb: $e9


    inc b                                         ; $62bc: $04
    db $10                                        ; $62bd: $10
    add hl, bc                                    ; $62be: $09
    db $eb                                        ; $62bf: $eb
    add hl, bc                                    ; $62c0: $09
    di                                            ; $62c1: $f3
    add hl, bc                                    ; $62c2: $09
    ei                                            ; $62c3: $fb
    add hl, bc                                    ; $62c4: $09
    inc bc                                        ; $62c5: $03
    add hl, bc                                    ; $62c6: $09
    ld [$5a07], sp                                ; $62c7: $08 $07 $5a
    ld a, [c]                                     ; $62ca: $f2
    dec c                                         ; $62cb: $0d
    ld a, [c]                                     ; $62cc: $f2
    inc c                                         ; $62cd: $0c
    db $f4                                        ; $62ce: $f4
    ld a, [c]                                     ; $62cf: $f2
    ld a, [c]                                     ; $62d0: $f2
    ld a, [$02f2]                                 ; $62d1: $fa $f2 $02
    rst $30                                       ; $62d4: $f7
    ld b, $02                                     ; $62d5: $06 $02
    di                                            ; $62d7: $f3
    ld [bc], a                                    ; $62d8: $02
    ei                                            ; $62d9: $fb
    ld [bc], a                                    ; $62da: $02
    inc bc                                        ; $62db: $03
    dec b                                         ; $62dc: $05
    ld l, b                                       ; $62dd: $68
    or $0a                                        ; $62de: $f6 $0a
    or $0a                                        ; $62e0: $f6 $0a
    rst $30                                       ; $62e2: $f7
    or $f6                                        ; $62e3: $f6 $f6
    cp $f8                                        ; $62e5: $fe $f8
    inc bc                                        ; $62e7: $03
    ld b, $f9                                     ; $62e8: $06 $f9
    ld b, $ff                                     ; $62ea: $06 $ff
    jr nz, jr_0d8_62f5                            ; $62ec: $20 $07

    sbc l                                         ; $62ee: $9d
    ld bc, $3c01                                  ; $62ef: $01 $01 $3c
    nop                                           ; $62f2: $00
    ld a, b                                       ; $62f3: $78
    nop                                           ; $62f4: $00

jr_0d8_62f5:
    ld [hl], b                                    ; $62f5: $70
    nop                                           ; $62f6: $00
    ldh [rSC], a                                  ; $62f7: $e0 $02
    db $10                                        ; $62f9: $10
    ld b, b                                       ; $62fa: $40
    ld [hl], b                                    ; $62fb: $70
    inc c                                         ; $62fc: $0c
    nop                                           ; $62fd: $00

jr_0d8_62fe:
    inc a                                         ; $62fe: $3c
    nop                                           ; $62ff: $00
    ld e, $00                                     ; $6300: $1e $00
    ld c, $00                                     ; $6302: $0e $00
    ld e, a                                       ; $6304: $5f
    rlca                                          ; $6305: $07
    ld [bc], a                                    ; $6306: $02
    db $10                                        ; $6307: $10
    ld c, $0c                                     ; $6308: $0e $0c
    nop                                           ; $630a: $00
    jr nz, jr_0d8_62f5                            ; $630b: $20 $e8

    inc a                                         ; $630d: $3c
    ld hl, sp+$5c                                 ; $630e: $f8 $5c
    ret c                                         ; $6310: $d8

    ld a, b                                       ; $6311: $78
    ld hl, sp-$01                                 ; $6312: $f8 $ff
    sbc b                                         ; $6314: $98
    ret c                                         ; $6315: $d8

    or h                                          ; $6316: $b4
    ld hl, sp-$2c                                 ; $6317: $f8 $d4
    ret c                                         ; $6319: $d8

    ldh a, [$f8]                                  ; $631a: $f0 $f8
    db $10                                        ; $631c: $10
    reti                                          ; $631d: $d9


    inc l                                         ; $631e: $2c
    ld sp, hl                                     ; $631f: $f9
    ld c, h                                       ; $6320: $4c
    reti                                          ; $6321: $d9


    ld l, b                                       ; $6322: $68
    ld sp, hl                                     ; $6323: $f9
    db $ec                                        ; $6324: $ec
    adc b                                         ; $6325: $88
    reti                                          ; $6326: $d9


    and h                                         ; $6327: $a4
    ld sp, hl                                     ; $6328: $f9
    call nz, $7fd9                                ; $6329: $c4 $d9 $7f
    ld [bc], a                                    ; $632c: $02
    ld h, b                                       ; $632d: $60
    ld bc, $0c68                                  ; $632e: $01 $68 $0c
    nop                                           ; $6331: $00
    ld a, [de]                                    ; $6332: $1a
    ld a, [hl]                                    ; $6333: $7e
    nop                                           ; $6334: $00
    cp $02                                        ; $6335: $fe $02
    nop                                           ; $6337: $00
    jr z, jr_0d8_6342                             ; $6338: $28 $08

    ccf                                           ; $633a: $3f
    ld [bc], a                                    ; $633b: $02
    nop                                           ; $633c: $00
    inc a                                         ; $633d: $3c
    ld [hl], $00                                  ; $633e: $36 $00
    jr @+$26                                      ; $6340: $18 $24

jr_0d8_6342:
    ld [hl], b                                    ; $6342: $70
    dec [hl]                                      ; $6343: $35
    jr jr_0d8_6347                                ; $6344: $18 $01

    ld [bc], a                                    ; $6346: $02

jr_0d8_6347:
    nop                                           ; $6347: $00
    dec de                                        ; $6348: $1b
    ld a, b                                       ; $6349: $78
    inc c                                         ; $634a: $0c
    dec bc                                        ; $634b: $0b
    nop                                           ; $634c: $00
    inc e                                         ; $634d: $1c
    nop                                           ; $634e: $00
    rra                                           ; $634f: $1f
    ld h, [hl]                                    ; $6350: $66
    nop                                           ; $6351: $00
    rst $38                                       ; $6352: $ff
    ld [bc], a                                    ; $6353: $02
    nop                                           ; $6354: $00
    ld b, d                                       ; $6355: $42
    ld [$1f05], sp                                ; $6356: $08 $05 $1f
    nop                                           ; $6359: $00
    rrca                                          ; $635a: $0f
    nop                                           ; $635b: $00
    ld b, $66                                     ; $635c: $06 $66
    ld [hl], b                                    ; $635e: $70
    inc b                                         ; $635f: $04
    ld [bc], a                                    ; $6360: $02
    nop                                           ; $6361: $00
    or l                                          ; $6362: $b5
    ld [hl], h                                    ; $6363: $74
    ld a, [bc]                                    ; $6364: $0a
    ld b, $0a                                     ; $6365: $06 $0a
    nop                                           ; $6367: $00
    add e                                         ; $6368: $83
    ld e, b                                       ; $6369: $58
    jr jr_0d8_62fe                                ; $636a: $18 $92

    ld [bc], a                                    ; $636c: $02
    ccf                                           ; $636d: $3f
    and [hl]                                      ; $636e: $a6
    db $10                                        ; $636f: $10
    and b                                         ; $6370: $a0
    ld b, b                                       ; $6371: $40
    ld [$3c1f], sp                                ; $6372: $08 $1f $3c
    add b                                         ; $6375: $80
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    ld [bc], a                                    ; $6378: $02
    nop                                           ; $6379: $00
    inc bc                                        ; $637a: $03
    and b                                         ; $637b: $a0
    ld [bc], a                                    ; $637c: $02
    nop                                           ; $637d: $00
    ld [bc], a                                    ; $637e: $02
    sbc b                                         ; $637f: $98
    sbc b                                         ; $6380: $98
    ld [$1418], sp                                ; $6381: $08 $18 $14
    nop                                           ; $6384: $00
    inc c                                         ; $6385: $0c
    add b                                         ; $6386: $80
    inc b                                         ; $6387: $04
    jr c, @+$24                                   ; $6388: $38 $22

    ld a, $c1                                     ; $638a: $3e $c1

jr_0d8_638c:
    rst $38                                       ; $638c: $ff
    sub h                                         ; $638d: $94
    rst $30                                       ; $638e: $f7
    ld d, l                                       ; $638f: $55
    nop                                           ; $6390: $00
    or [hl]                                       ; $6391: $b6
    push de                                       ; $6392: $d5
    ld [hl], $c0                                  ; $6393: $36 $c0
    inc hl                                        ; $6395: $23
    ld d, l                                       ; $6396: $55
    or [hl]                                       ; $6397: $b6
    inc d                                         ; $6398: $14
    nop                                           ; $6399: $00
    rst $30                                       ; $639a: $f7
    db $10                                        ; $639b: $10
    stop                                          ; $639c: $10 $00
    db $10                                        ; $639e: $10
    inc [hl]                                      ; $639f: $34
    inc [hl]                                      ; $63a0: $34
    ld a, [hl+]                                   ; $63a1: $2a
    inc b                                         ; $63a2: $04
    ld a, [hl]                                    ; $63a3: $7e
    ld de, $8293                                  ; $63a4: $11 $93 $82
    sub e                                         ; $63a7: $93
    inc b                                         ; $63a8: $04
    jr z, jr_0d8_63ef                             ; $63a9: $28 $44

    cp $02                                        ; $63ab: $fe $02
    xor b                                         ; $63ad: $a8

jr_0d8_63ae:
    db $fc                                        ; $63ae: $fc
    dec b                                         ; $63af: $05
    dec a                                         ; $63b0: $3d
    ld c, $1e                                     ; $63b1: $0e $1e
    dec c                                         ; $63b3: $0d
    add hl, bc                                    ; $63b4: $09
    add b                                         ; $63b5: $80
    add c                                         ; $63b6: $81
    ld bc, $e030                                  ; $63b7: $01 $30 $e0
    ldh [$f0], a                                  ; $63ba: $e0 $f0
    ldh a, [$80]                                  ; $63bc: $f0 $80
    add b                                         ; $63be: $80
    ld hl, $0039                                  ; $63bf: $21 $39 $00
    dec b                                         ; $63c2: $05
    ld b, $2f                                     ; $63c3: $06 $2f
    jr nc, @+$61                                  ; $63c5: $30 $5f

    and b                                         ; $63c7: $a0
    add b                                         ; $63c8: $80
    nop                                           ; $63c9: $00
    jr nz, jr_0d8_638c                            ; $63ca: $20 $c0

    ld b, b                                       ; $63cc: $40
    ld [bc], a                                    ; $63cd: $02
    ld [$7090], sp                                ; $63ce: $08 $90 $70
    add d                                         ; $63d1: $82
    ld a, $7b                                     ; $63d2: $3e $7b
    nop                                           ; $63d4: $00
    ld a, a                                       ; $63d5: $7f
    and e                                         ; $63d6: $a3
    inc hl                                        ; $63d7: $23
    jp $8363                                      ; $63d8: $c3 $63 $83


jr_0d8_63db:
    ccf                                           ; $63db: $3f
    call nz, $7c00                                ; $63dc: $c4 $00 $7c
    add h                                         ; $63df: $84
    inc a                                         ; $63e0: $3c
    ret nz                                        ; $63e1: $c0

    ld a, b                                       ; $63e2: $78
    adc b                                         ; $63e3: $88
    jr c, jr_0d8_63ae                             ; $63e4: $38 $c8

    ld [de], a                                    ; $63e6: $12
    ld a, b                                       ; $63e7: $78
    sub b                                         ; $63e8: $90
    jr nc, @+$53                                  ; $63e9: $30 $51

    ld c, c                                       ; $63eb: $49
    ld d, e                                       ; $63ec: $53
    db $d3                                        ; $63ed: $d3
    dec sp                                        ; $63ee: $3b

jr_0d8_63ef:
    ld a, c                                       ; $63ef: $79
    ld b, b                                       ; $63f0: $40
    nop                                           ; $63f1: $00
    ld b, b                                       ; $63f2: $40
    jr nz, jr_0d8_6455                            ; $63f3: $20 $60

    ld d, b                                       ; $63f5: $50
    jr nc, @+$6a                                  ; $63f6: $30 $68

    jr jr_0d8_642e                                ; $63f8: $18 $34

    nop                                           ; $63fa: $00
    ld c, h                                       ; $63fb: $4c
    ld bc, $037d                                  ; $63fc: $01 $7d $03
    scf                                           ; $63ff: $37
    scf                                           ; $6400: $37
    ccf                                           ; $6401: $3f
    ld a, [bc]                                    ; $6402: $0a
    inc b                                         ; $6403: $04
    ld c, $1c                                     ; $6404: $0e $1c
    inc e                                         ; $6406: $1c
    ld [$6308], sp                                ; $6407: $08 $08 $63
    ld a, c                                       ; $640a: $79
    jr nz, jr_0d8_642d                            ; $640b: $20 $20

    nop                                           ; $640d: $00
    sub $f8                                       ; $640e: $d6 $f8
    and d                                         ; $6410: $a2
    ldh [$03], a                                  ; $6411: $e0 $03
    jr nz, jr_0d8_6420                            ; $6413: $20 $0b

    inc d                                         ; $6415: $14
    nop                                           ; $6416: $00
    rlca                                          ; $6417: $07
    ld [$0d0a], sp                                ; $6418: $08 $0a $0d
    dec b                                         ; $641b: $05
    ld c, $0a                                     ; $641c: $0e $0a
    rra                                           ; $641e: $1f
    xor d                                         ; $641f: $aa

jr_0d8_6420:
    ld a, b                                       ; $6420: $78
    ld sp, $7a01                                  ; $6421: $31 $01 $7a
    add hl, bc                                    ; $6424: $09
    ld bc, $1104                                  ; $6425: $01 $04 $11
    rrca                                          ; $6428: $0f
    ld [bc], a                                    ; $6429: $02
    jr nz, jr_0d8_6431                            ; $642a: $20 $05

    dec e                                         ; $642c: $1d

jr_0d8_642d:
    ld a, [bc]                                    ; $642d: $0a

jr_0d8_642e:
    ld a, [bc]                                    ; $642e: $0a
    dec c                                         ; $642f: $0d
    sbc [hl]                                      ; $6430: $9e

jr_0d8_6431:
    ld h, c                                       ; $6431: $61
    daa                                           ; $6432: $27
    ld [$99b7], sp                                ; $6433: $08 $b7 $99
    ld [bc], a                                    ; $6436: $02
    ld a, a                                       ; $6437: $7f
    ld bc, $0802                                  ; $6438: $01 $02 $08
    stop                                          ; $643b: $10 $00
    jr nz, jr_0d8_643f                            ; $643d: $20 $00

jr_0d8_643f:
    ld b, b                                       ; $643f: $40
    rst $28                                       ; $6440: $ef
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    ld h, b                                       ; $6443: $60
    ld b, b                                       ; $6444: $40
    db $e3                                        ; $6445: $e3
    ld [$40e7], sp                                ; $6446: $08 $e7 $40
    ld [bc], a                                    ; $6449: $02
    dec b                                         ; $644a: $05
    db $10                                        ; $644b: $10
    jr nz, jr_0d8_6456                            ; $644c: $20 $08

    ld h, [hl]                                    ; $644e: $66
    ld b, b                                       ; $644f: $40
    ld [de], a                                    ; $6450: $12
    ld c, b                                       ; $6451: $48
    inc h                                         ; $6452: $24
    ld e, d                                       ; $6453: $5a
    ld d, l                                       ; $6454: $55

jr_0d8_6455:
    ld a, [hl+]                                   ; $6455: $2a

jr_0d8_6456:
    dec de                                        ; $6456: $1b
    or b                                          ; $6457: $b0
    pop hl                                        ; $6458: $e1
    jr jr_0d8_63db                                ; $6459: $18 $80

    inc a                                         ; $645b: $3c
    jr z, @+$16                                   ; $645c: $28 $14

    ld h, h                                       ; $645e: $64
    ld [$a236], sp                                ; $645f: $08 $36 $a2
    ld [hl], c                                    ; $6462: $71
    nop                                           ; $6463: $00
    ld a, d                                       ; $6464: $7a
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    db $10                                        ; $6467: $10
    cpl                                           ; $6468: $2f
    nop                                           ; $6469: $00
    ld [$0205], sp                                ; $646a: $08 $05 $02
    ld [bc], a                                    ; $646d: $02
    ld b, d                                       ; $646e: $42
    ld a, d                                       ; $646f: $7a
    add hl, de                                    ; $6470: $19
    ld [$08a0], sp                                ; $6471: $08 $a0 $08
    jr jr_0d8_6478                                ; $6474: $18 $02

    ld c, a                                       ; $6476: $4f
    ld [bc], a                                    ; $6477: $02

jr_0d8_6478:
    inc b                                         ; $6478: $04
    ld [$0100], sp                                ; $6479: $08 $00 $01
    add sp, $01                                   ; $647c: $e8 $01
    inc b                                         ; $647e: $04
    ld c, b                                       ; $647f: $48

Call_0d8_6480:
    or l                                          ; $6480: $b5
    nop                                           ; $6481: $00
    cp c                                          ; $6482: $b9
    nop                                           ; $6483: $00
    ld h, a                                       ; $6484: $67
    add b                                         ; $6485: $80
    cp h                                          ; $6486: $bc
    ld [$4804], sp                                ; $6487: $08 $04 $48
    nop                                           ; $648a: $00
    ld b, b                                       ; $648b: $40
    ld d, [hl]                                    ; $648c: $56
    nop                                           ; $648d: $00
    inc b                                         ; $648e: $04
    ld [$00e0], sp                                ; $648f: $08 $e0 $00
    sbc $3c                                       ; $6492: $de $3c
    jr nz, @+$64                                  ; $6494: $20 $62

    nop                                           ; $6496: $00
    ld [$0069], sp                                ; $6497: $08 $69 $00
    jr jr_0d8_64a4                                ; $649a: $18 $08

    pop hl                                        ; $649c: $e1
    ld b, b                                       ; $649d: $40
    inc a                                         ; $649e: $3c
    db $10                                        ; $649f: $10
    jr nz, @-$0d                                  ; $64a0: $20 $f1

    add c                                         ; $64a2: $81
    nop                                           ; $64a3: $00

jr_0d8_64a4:
    add d                                         ; $64a4: $82
    jr @-$39                                      ; $64a5: $18 $c5

    sub d                                         ; $64a7: $92
    or d                                          ; $64a8: $b2
    ld a, b                                       ; $64a9: $78
    ld [$1005], sp                                ; $64aa: $08 $05 $10
    call nc, $d0b8                                ; $64ad: $d4 $b8 $d0
    ld b, l                                       ; $64b0: $45
    dec de                                        ; $64b1: $1b
    jr jr_0d8_64b5                                ; $64b2: $18 $01

    ld d, l                                       ; $64b4: $55

jr_0d8_64b5:
    ld a, [de]                                    ; $64b5: $1a
    or c                                          ; $64b6: $b1
    ld [bc], a                                    ; $64b7: $02
    inc d                                         ; $64b8: $14
    ld bc, $7e80                                  ; $64b9: $01 $80 $7e
    jr z, @-$42                                   ; $64bc: $28 $bc

    db $10                                        ; $64be: $10
    adc [hl]                                      ; $64bf: $8e
    ld [hl], c                                    ; $64c0: $71
    adc l                                         ; $64c1: $8d
    ld bc, $088e                                  ; $64c2: $01 $8e $08
    and b                                         ; $64c5: $a0
    ld h, c                                       ; $64c6: $61
    cp c                                          ; $64c7: $b9
    db $10                                        ; $64c8: $10
    ld d, b                                       ; $64c9: $50
    ldh [$a5], a                                  ; $64ca: $e0 $a5
    ld de, $0933                                  ; $64cc: $11 $33 $09
    inc b                                         ; $64cf: $04
    jr z, @-$5e                                   ; $64d0: $28 $a0

    nop                                           ; $64d2: $00
    dec d                                         ; $64d3: $15
    nop                                           ; $64d4: $00
    xor d                                         ; $64d5: $aa
    ldh [$d0], a                                  ; $64d6: $e0 $d0
    ld d, b                                       ; $64d8: $50
    ld h, c                                       ; $64d9: $61
    ld [hl], d                                    ; $64da: $72
    inc h                                         ; $64db: $24
    nop                                           ; $64dc: $00
    ld d, h                                       ; $64dd: $54
    nop                                           ; $64de: $00
    ld a, [bc]                                    ; $64df: $0a
    nop                                           ; $64e0: $00
    dec b                                         ; $64e1: $05
    ei                                            ; $64e2: $fb
    call c, Call_0d8_78a0                         ; $64e3: $dc $a0 $78
    add hl, bc                                    ; $64e6: $09
    ld a, [$2218]                                 ; $64e7: $fa $18 $22
    jr jr_0d8_64f0                                ; $64ea: $18 $04

    jr c, jr_0d8_64f2                             ; $64ec: $38 $04

    ld [hl], $00                                  ; $64ee: $36 $00

jr_0d8_64f0:
    adc a                                         ; $64f0: $8f
    dec de                                        ; $64f1: $1b

jr_0d8_64f2:
    add e                                         ; $64f2: $83
    and l                                         ; $64f3: $a5
    add hl, de                                    ; $64f4: $19
    ld d, b                                       ; $64f5: $50
    nop                                           ; $64f6: $00
    jr z, jr_0d8_64f9                             ; $64f7: $28 $00

jr_0d8_64f9:
    inc d                                         ; $64f9: $14
    ld c, d                                       ; $64fa: $4a
    db $10                                        ; $64fb: $10
    inc hl                                        ; $64fc: $23
    reti                                          ; $64fd: $d9


    ld [hl], l                                    ; $64fe: $75
    ld b, b                                       ; $64ff: $40
    sub d                                         ; $6500: $92
    nop                                           ; $6501: $00
    ld a, [$6a88]                                 ; $6502: $fa $88 $6a
    ld a, [de]                                    ; $6505: $1a
    jr z, @-$38                                   ; $6506: $28 $c6

    nop                                           ; $6508: $00
    and b                                         ; $6509: $a0
    scf                                           ; $650a: $37
    ld c, h                                       ; $650b: $4c
    ld [bc], a                                    ; $650c: $02
    ld [bc], a                                    ; $650d: $02
    ld [$1004], sp                                ; $650e: $08 $04 $10
    nop                                           ; $6511: $00
    jr z, @-$66                                   ; $6512: $28 $98

    ld hl, $b820                                  ; $6514: $21 $20 $b8
    add h                                         ; $6517: $84
    ld [bc], a                                    ; $6518: $02
    and b                                         ; $6519: $a0
    adc b                                         ; $651a: $88
    ld [bc], a                                    ; $651b: $02
    adc l                                         ; $651c: $8d
    ld [bc], a                                    ; $651d: $02
    sub h                                         ; $651e: $94
    ld de, $0028                                  ; $651f: $11 $28 $00
    jr nz, @+$0f                                  ; $6522: $20 $0d

    ld d, b                                       ; $6524: $50
    inc b                                         ; $6525: $04
    ld [bc], a                                    ; $6526: $02
    xor b                                         ; $6527: $a8
    sub l                                         ; $6528: $95
    pop bc                                        ; $6529: $c1
    ld a, [hl-]                                   ; $652a: $3a
    ld a, [bc]                                    ; $652b: $0a
    inc d                                         ; $652c: $14
    dec a                                         ; $652d: $3d
    ld a, [bc]                                    ; $652e: $0a
    call c, $0ac8                                 ; $652f: $dc $c8 $0a
    inc b                                         ; $6532: $04
    inc b                                         ; $6533: $04
    dec b                                         ; $6534: $05
    ld [$4a04], sp                                ; $6535: $08 $04 $4a
    ld [bc], a                                    ; $6538: $02
    ld b, [hl]                                    ; $6539: $46
    add hl, bc                                    ; $653a: $09
    nop                                           ; $653b: $00
    inc d                                         ; $653c: $14
    ld b, b                                       ; $653d: $40
    jr nz, jr_0d8_658a                            ; $653e: $20 $4a

    inc bc                                        ; $6540: $03
    jr nz, @-$7e                                  ; $6541: $20 $80

    db $10                                        ; $6543: $10
    ld b, l                                       ; $6544: $45
    ld [bc], a                                    ; $6545: $02
    ld [$d898], sp                                ; $6546: $08 $98 $d8
    ret                                           ; $6549: $c9


    inc b                                         ; $654a: $04
    ld de, $0828                                  ; $654b: $11 $28 $08
    rst $10                                       ; $654e: $d7
    sbc h                                         ; $654f: $9c
    adc h                                         ; $6550: $8c
    nop                                           ; $6551: $00
    ld [de], a                                    ; $6552: $12
    nop                                           ; $6553: $00
    ld [hl+], a                                   ; $6554: $22
    nop                                           ; $6555: $00
    ld [hl-], a                                   ; $6556: $32
    nop                                           ; $6557: $00
    ld b, d                                       ; $6558: $42
    nop                                           ; $6559: $00
    ld d, b                                       ; $655a: $50
    nop                                           ; $655b: $00
    ld e, [hl]                                    ; $655c: $5e
    nop                                           ; $655d: $00
    ld l, h                                       ; $655e: $6c
    nop                                           ; $655f: $00
    ld a, b                                       ; $6560: $78
    nop                                           ; $6561: $00
    add h                                         ; $6562: $84
    nop                                           ; $6563: $00
    dec b                                         ; $6564: $05
    nop                                           ; $6565: $00
    ld hl, sp+$0a                                 ; $6566: $f8 $0a
    ld hl, sp+$05                                 ; $6568: $f8 $05
    pop af                                        ; $656a: $f1
    pop af                                        ; $656b: $f1
    pop af                                        ; $656c: $f1
    ld sp, hl                                     ; $656d: $f9
    ld bc, $f7f9                                  ; $656e: $01 $f9 $f7
    ld bc, $09f7                                  ; $6571: $01 $f7 $09
    dec b                                         ; $6574: $05
    ld a, [bc]                                    ; $6575: $0a
    ld hl, sp+$0a                                 ; $6576: $f8 $0a
    ld hl, sp+$05                                 ; $6578: $f8 $05
    ldh a, [$f0]                                  ; $657a: $f0 $f0
    ld a, [c]                                     ; $657c: $f2
    ld hl, sp+$02                                 ; $657d: $f8 $02
    ld hl, sp-$09                                 ; $657f: $f8 $f7
    nop                                           ; $6581: $00
    ld hl, sp+$08                                 ; $6582: $f8 $08
    dec b                                         ; $6584: $05
    inc d                                         ; $6585: $14
    ld hl, sp+$0a                                 ; $6586: $f8 $0a
    ld hl, sp+$05                                 ; $6588: $f8 $05

jr_0d8_658a:
    xor $f3                                       ; $658a: $ee $f3
    di                                            ; $658c: $f3
    ei                                            ; $658d: $fb
    or $03                                        ; $658e: $f6 $03
    db $f4                                        ; $6590: $f4
    ld b, $fe                                     ; $6591: $06 $fe
    rst $30                                       ; $6593: $f7
    inc b                                         ; $6594: $04
    ld e, $f8                                     ; $6595: $1e $f8
    ld a, [bc]                                    ; $6597: $0a
    ld hl, sp+$05                                 ; $6598: $f8 $05
    ld sp, hl                                     ; $659a: $f9
    ld hl, sp-$08                                 ; $659b: $f8 $f8
    nop                                           ; $659d: $00
    ld sp, hl                                     ; $659e: $f9
    ld [bc], a                                    ; $659f: $02
    ld [$04f8], sp                                ; $65a0: $08 $f8 $04
    ld h, $f8                                     ; $65a3: $26 $f8
    ld a, [bc]                                    ; $65a5: $0a
    ld hl, sp+$05                                 ; $65a6: $f8 $05
    ld a, [$f8f9]                                 ; $65a8: $fa $f9 $f8
    ld bc, $02fb                                  ; $65ab: $01 $fb $02
    ld [$04f9], sp                                ; $65ae: $08 $f9 $04
    ld l, $f8                                     ; $65b1: $2e $f8
    ld a, [bc]                                    ; $65b3: $0a

jr_0d8_65b4:
    ld hl, sp+$05                                 ; $65b4: $f8 $05
    ld a, [$faf9]                                 ; $65b6: $fa $f9 $fa
    ld bc, $02fd                                  ; $65b9: $01 $fd $02
    ld a, [bc]                                    ; $65bc: $0a
    ei                                            ; $65bd: $fb
    inc bc                                        ; $65be: $03
    ld [hl], $f8                                  ; $65bf: $36 $f8
    ld a, [bc]                                    ; $65c1: $0a
    ld hl, sp+$05                                 ; $65c2: $f8 $05
    ld sp, hl                                     ; $65c4: $f9
    ld hl, sp-$07                                 ; $65c5: $f8 $f9
    nop                                           ; $65c7: $00
    ld sp, hl                                     ; $65c8: $f9
    ld [bc], a                                    ; $65c9: $02
    inc bc                                        ; $65ca: $03
    inc a                                         ; $65cb: $3c
    ld hl, sp+$0a                                 ; $65cc: $f8 $0a
    ld hl, sp+$05                                 ; $65ce: $f8 $05
    rst $30                                       ; $65d0: $f7
    db $f4                                        ; $65d1: $f4
    rst $30                                       ; $65d2: $f7
    db $fc                                        ; $65d3: $fc
    rst $30                                       ; $65d4: $f7
    ld [bc], a                                    ; $65d5: $02
    ld bc, $fd42                                  ; $65d6: $01 $42 $fd
    inc b                                         ; $65d9: $04
    db $fc                                        ; $65da: $fc
    inc bc                                        ; $65db: $03
    db $fc                                        ; $65dc: $fc
    db $fc                                        ; $65dd: $fc
    ld b, b                                       ; $65de: $40
    inc b                                         ; $65df: $04
    sub c                                         ; $65e0: $91
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    inc bc                                        ; $65e3: $03
    nop                                           ; $65e4: $00
    rrca                                          ; $65e5: $0f
    inc bc                                        ; $65e6: $03
    ld e, $0f                                     ; $65e7: $1e $0f
    add hl, sp                                    ; $65e9: $39
    ld e, $00                                     ; $65ea: $1e $00
    ld h, $19                                     ; $65ec: $26 $19
    jr @+$09                                      ; $65ee: $18 $07

    rlca                                          ; $65f0: $07
    ld bc, $0001                                  ; $65f1: $01 $01 $00
    and b                                         ; $65f4: $a0
    ld bc, HeaderROMSize                          ; $65f5: $01 $48 $01
    ld [bc], a                                    ; $65f8: $02
    nop                                           ; $65f9: $00
    ldh [rP1], a                                  ; $65fa: $e0 $00
    db $fc                                        ; $65fc: $fc
    ldh [$be], a                                  ; $65fd: $e0 $be
    nop                                           ; $65ff: $00
    db $fc                                        ; $6600: $fc
    adc [hl]                                      ; $6601: $8e
    ld a, h                                       ; $6602: $7c
    inc bc                                        ; $6603: $03
    cp $63                                        ; $6604: $fe $63
    cp $89                                        ; $6606: $fe $89
    nop                                           ; $6608: $00
    rst $38                                       ; $6609: $ff
    pop af                                        ; $660a: $f1
    ccf                                           ; $660b: $3f
    dec h                                         ; $660c: $25
    rra                                           ; $660d: $1f
    add hl, de                                    ; $660e: $19
    rrca                                          ; $660f: $0f
    inc de                                        ; $6610: $13
    nop                                           ; $6611: $00
    inc c                                         ; $6612: $0c
    inc c                                         ; $6613: $0c
    inc bc                                        ; $6614: $03
    dec bc                                        ; $6615: $0b
    rlca                                          ; $6616: $07
    rst $08                                       ; $6617: $cf
    rlca                                          ; $6618: $07
    ld a, [c]                                     ; $6619: $f2
    nop                                           ; $661a: $00
    adc a                                         ; $661b: $8f
    call nc, $9feb                                ; $661c: $d4 $eb $9f
    ld h, h                                       ; $661f: $64
    rst $08                                       ; $6620: $cf
    inc [hl]                                      ; $6621: $34
    daa                                           ; $6622: $27
    inc c                                         ; $6623: $0c
    dec de                                        ; $6624: $1b
    ccf                                           ; $6625: $3f
    ld bc, $3a03                                  ; $6626: $01 $03 $3a
    ld d, b                                       ; $6629: $50
    ld b, a                                       ; $662a: $47
    jr c, jr_0d8_65b4                             ; $662b: $38 $87

    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    db $db                                        ; $662f: $db
    rlca                                          ; $6630: $07
    cp $01                                        ; $6631: $fe $01

jr_0d8_6633:
    jp hl                                         ; $6633: $e9


    ld e, $27                                     ; $6634: $1e $27
    sbc $00                                       ; $6636: $de $00
    xor a                                         ; $6638: $af
    reti                                          ; $6639: $d9


    xor l                                         ; $663a: $ad
    rst $18                                       ; $663b: $df
    cp a                                          ; $663c: $bf
    adc $dc                                       ; $663d: $ce $dc
    ldh [rSB], a                                  ; $663f: $e0 $01
    ldh [rP1], a                                  ; $6641: $e0 $00
    add b                                         ; $6643: $80
    nop                                           ; $6644: $00
    ret nz                                        ; $6645: $c0

    add b                                         ; $6646: $80
    add b                                         ; $6647: $80
    ld b, $00                                     ; $6648: $06 $00
    add b                                         ; $664a: $80
    ld l, l                                       ; $664b: $6d
    ld [$0080], sp                                ; $664c: $08 $80 $00
    ldh [$80], a                                  ; $664f: $e0 $80
    jr nc, jr_0d8_6633                            ; $6651: $30 $e0

    jr c, jr_0d8_6655                             ; $6653: $38 $00

jr_0d8_6655:
    ldh a, [$8c]                                  ; $6655: $f0 $8c
    ld hl, sp-$74                                 ; $6657: $f8 $8c
    ld a, b                                       ; $6659: $78
    add $7c                                       ; $665a: $c6 $7c
    ld c, $08                                     ; $665c: $0e $08
    ld a, h                                       ; $665e: $7c
    ld l, [hl]                                    ; $665f: $6e
    inc e                                         ; $6660: $1c
    inc e                                         ; $6661: $1c
    add h                                         ; $6662: $84
    ld d, b                                       ; $6663: $50
    ld b, $00                                     ; $6664: $06 $00
    rra                                           ; $6666: $1f
    nop                                           ; $6667: $00
    ld b, $3f                                     ; $6668: $06 $3f
    rra                                           ; $666a: $1f
    add hl, sp                                    ; $666b: $39
    rra                                           ; $666c: $1f
    inc a                                         ; $666d: $3c
    rlca                                          ; $666e: $07
    inc e                                         ; $666f: $1c
    ld [bc], a                                    ; $6670: $02
    dec bc                                        ; $6671: $0b
    jr jr_0d8_6683                                ; $6672: $18 $0f

    dec bc                                        ; $6674: $0b
    rlca                                          ; $6675: $07
    ld b, $a4                                     ; $6676: $06 $a4
    ld h, b                                       ; $6678: $60
    ldh [rP1], a                                  ; $6679: $e0 $00
    nop                                           ; $667b: $00
    ld hl, sp-$20                                 ; $667c: $f8 $e0
    inc a                                         ; $667e: $3c
    ld hl, sp+$0e                                 ; $667f: $f8 $0e
    db $fc                                        ; $6681: $fc
    ld b, a                                       ; $6682: $47

jr_0d8_6683:
    nop                                           ; $6683: $00
    cp $8b                                        ; $6684: $fe $8b
    rst $38                                       ; $6686: $ff
    ld [hl], c                                    ; $6687: $71
    rst $38                                       ; $6688: $ff
    ld [c], a                                     ; $6689: $e2
    rra                                           ; $668a: $1f
    inc e                                         ; $668b: $1c
    nop                                           ; $668c: $00
    rrca                                          ; $668d: $0f
    add hl, de                                    ; $668e: $19
    ld c, $0a                                     ; $668f: $0e $0a
    dec b                                         ; $6691: $05
    dec b                                         ; $6692: $05
    inc bc                                        ; $6693: $03
    ld h, a                                       ; $6694: $67
    nop                                           ; $6695: $00
    inc bc                                        ; $6696: $03
    ld sp, hl                                     ; $6697: $f9
    ld b, a                                       ; $6698: $47
    ld [$4f75], a                                 ; $6699: $ea $75 $4f
    ld [hl-], a                                   ; $669c: $32
    ld h, a                                       ; $669d: $67
    inc c                                         ; $669e: $0c
    ld a, [de]                                    ; $669f: $1a
    inc de                                        ; $66a0: $13
    dec c                                         ; $66a1: $0d
    rra                                           ; $66a2: $1f
    jp z, $0100                                   ; $66a3: $ca $00 $01

    xor b                                         ; $66a6: $a8
    add b                                         ; $66a7: $80
    nop                                           ; $66a8: $00
    nop                                           ; $66a9: $00
    jp $ff80                                      ; $66aa: $c3 $80 $ff


    ret nz                                        ; $66ad: $c0

    ld [hl], h                                    ; $66ae: $74
    rst $08                                       ; $66af: $cf
    sub e                                         ; $66b0: $93
    ld l, a                                       ; $66b1: $6f
    nop                                           ; $66b2: $00
    ld d, a                                       ; $66b3: $57
    db $ec                                        ; $66b4: $ec
    sub $ef                                       ; $66b5: $d6 $ef
    rst $18                                       ; $66b7: $df
    rst $20                                       ; $66b8: $e7
    ld l, [hl]                                    ; $66b9: $6e
    ldh a, [rP1]                                  ; $66ba: $f0 $00
    ld [hl], b                                    ; $66bc: $70
    add b                                         ; $66bd: $80
    ret nz                                        ; $66be: $c0

    nop                                           ; $66bf: $00
    ldh [rLCDC], a                                ; $66c0: $e0 $40
    ret nz                                        ; $66c2: $c0

    add b                                         ; $66c3: $80
    ret nz                                        ; $66c4: $c0

    and h                                         ; $66c5: $a4
    ld [$08a0], sp                                ; $66c6: $08 $a0 $08
    ldh a, [$80]                                  ; $66c9: $f0 $80
    ldh a, [$60]                                  ; $66cb: $f0 $60
    ld hl, sp+$70                                 ; $66cd: $f8 $70
    nop                                           ; $66cf: $00
    ret c                                         ; $66d0: $d8

    or b                                          ; $66d1: $b0
    adc $b8                                       ; $66d2: $ce $b8
    adc a                                         ; $66d4: $8f
    ld a, [hl]                                    ; $66d5: $7e
    db $d3                                        ; $66d6: $d3
    ld a, $40                                     ; $66d7: $3e $40
    ld a, $e8                                     ; $66d9: $3e $e8
    ld h, b                                       ; $66db: $60
    ld h, b                                       ; $66dc: $60
    nop                                           ; $66dd: $00
    ldh a, [$60]                                  ; $66de: $f0 $60
    cp b                                          ; $66e0: $b8
    ld [hl], b                                    ; $66e1: $70
    nop                                           ; $66e2: $00
    sbc [hl]                                      ; $66e3: $9e
    ld a, b                                       ; $66e4: $78
    adc a                                         ; $66e5: $8f
    ld a, [hl]                                    ; $66e6: $7e
    sbc e                                         ; $66e7: $9b
    ld a, a                                       ; $66e8: $7f
    ld h, c                                       ; $66e9: $61
    ccf                                           ; $66ea: $3f
    nop                                           ; $66eb: $00
    ld b, [hl]                                    ; $66ec: $46
    ccf                                           ; $66ed: $3f
    jr z, jr_0d8_670f                             ; $66ee: $28 $1f

    jr nz, jr_0d8_6711                            ; $66f0: $20 $1f

    inc de                                        ; $66f2: $13
    rrca                                          ; $66f3: $0f
    ld l, b                                       ; $66f4: $68
    ld [$00a8], sp                                ; $66f5: $08 $a8 $00
    ld c, e                                       ; $66f8: $4b
    add hl, bc                                    ; $66f9: $09
    inc bc                                        ; $66fa: $03
    db $ec                                        ; $66fb: $ec
    db $10                                        ; $66fc: $10
    ldh [$c0], a                                  ; $66fd: $e0 $c0
    ld h, b                                       ; $66ff: $60
    nop                                           ; $6700: $00

jr_0d8_6701:
    ret nz                                        ; $6701: $c0

    ld hl, sp-$20                                 ; $6702: $f8 $e0
    ccf                                           ; $6704: $3f
    ldh a, [$7d]                                  ; $6705: $f0 $7d
    ld a, [c]                                     ; $6707: $f2
    sub d                                         ; $6708: $92
    nop                                           ; $6709: $00
    rst $28                                       ; $670a: $ef
    xor [hl]                                      ; $670b: $ae
    ld e, a                                       ; $670c: $5f
    ld l, h                                       ; $670d: $6c
    rra                                           ; $670e: $1f

jr_0d8_670f:
    ld c, e                                       ; $670f: $4b
    ccf                                           ; $6710: $3f

jr_0d8_6711:
    ret nc                                        ; $6711: $d0

    nop                                           ; $6712: $00
    cpl                                           ; $6713: $2f
    ld a, a                                       ; $6714: $7f
    sub b                                         ; $6715: $90
    ld a, a                                       ; $6716: $7f
    sbc d                                         ; $6717: $9a
    ld a, $c8                                     ; $6718: $3e $c8
    sbc b                                         ; $671a: $98
    ld b, b                                       ; $671b: $40
    ld h, b                                       ; $671c: $60

jr_0d8_671d:
    add b                                         ; $671d: $80
    add hl, bc                                    ; $671e: $09
    ld a, [hl]                                    ; $671f: $7e
    rlca                                          ; $6720: $07
    and l                                         ; $6721: $a5
    ld a, e                                       ; $6722: $7b
    sbc [hl]                                      ; $6723: $9e
    ld a, c                                       ; $6724: $79
    ld bc, $64bf                                  ; $6725: $01 $bf $64
    or [hl]                                       ; $6728: $b6
    ld a, h                                       ; $6729: $7c
    db $fc                                        ; $672a: $fc
    jr c, jr_0d8_671d                             ; $672b: $38 $f0

    ld c, b                                       ; $672d: $48
    ld h, c                                       ; $672e: $61
    nop                                           ; $672f: $00
    ld [bc], a                                    ; $6730: $02
    nop                                           ; $6731: $00
    rlca                                          ; $6732: $07
    ld [bc], a                                    ; $6733: $02
    dec b                                         ; $6734: $05
    ld b, $05                                     ; $6735: $06 $05
    ld b, $04                                     ; $6737: $06 $04
    ld [bc], a                                    ; $6739: $02
    inc b                                         ; $673a: $04
    ld [bc], a                                    ; $673b: $02
    inc b                                         ; $673c: $04
    inc b                                         ; $673d: $04
    ld h, h                                       ; $673e: $64
    add c                                         ; $673f: $81
    ld [hl], b                                    ; $6740: $70
    jr nz, @+$07                                  ; $6741: $20 $05

    ld [hl], b                                    ; $6743: $70
    jr nc, jr_0d8_6766                            ; $6744: $30 $20

    db $10                                        ; $6746: $10
    jr nc, jr_0d8_6701                            ; $6747: $30 $b8

    ld bc, $820f                                  ; $6749: $01 $0f $82
    sub c                                         ; $674c: $91
    nop                                           ; $674d: $00
    ld bc, $0600                                  ; $674e: $01 $00 $06
    ld bc, $0709                                  ; $6751: $01 $09 $07
    inc sp                                        ; $6754: $33
    rrca                                          ; $6755: $0f
    nop                                           ; $6756: $00
    inc sp                                        ; $6757: $33
    rra                                           ; $6758: $1f
    ld b, a                                       ; $6759: $47
    ld a, $43                                     ; $675a: $3e $43
    ld a, $e7                                     ; $675c: $3e $e7
    ld a, [hl]                                    ; $675e: $7e
    nop                                           ; $675f: $00
    adc a                                         ; $6760: $8f
    ld a, l                                       ; $6761: $7d
    adc a                                         ; $6762: $8f
    ld a, h                                       ; $6763: $7c
    and $7c                                       ; $6764: $e6 $7c

jr_0d8_6766:
    adc [hl]                                      ; $6766: $8e
    ld a, h                                       ; $6767: $7c
    nop                                           ; $6768: $00
    adc h                                         ; $6769: $8c
    ld a, b                                       ; $676a: $78
    ld e, h                                       ; $676b: $5c
    jr c, jr_0d8_67ca                             ; $676c: $38 $5c

    jr c, jr_0d8_67c8                             ; $676e: $38 $58

    jr nc, jr_0d8_6772                            ; $6770: $30 $00

jr_0d8_6772:
    rrca                                          ; $6772: $0f

jr_0d8_6773:
    nop                                           ; $6773: $00
    call nc, $530f                                ; $6774: $d4 $0f $53
    rst $28                                       ; $6777: $ef
    rst $10                                       ; $6778: $d7
    xor h                                         ; $6779: $ac
    nop                                           ; $677a: $00
    sub [hl]                                      ; $677b: $96
    ld l, a                                       ; $677c: $6f
    rst $38                                       ; $677d: $ff
    ld h, a                                       ; $677e: $67
    rra                                           ; $677f: $1f
    pop hl                                        ; $6780: $e1
    pop af                                        ; $6781: $f1
    rrca                                          ; $6782: $0f
    inc d                                         ; $6783: $14
    pop af                                        ; $6784: $f1
    ld c, a                                       ; $6785: $4f
    pop de                                        ; $6786: $d1
    ld h, [hl]                                    ; $6787: $66
    ld bc, $0209                                  ; $6788: $01 $09 $02
    nop                                           ; $678b: $00
    dec bc                                        ; $678c: $0b
    ld b, $04                                     ; $678d: $06 $04
    dec bc                                        ; $678f: $0b
    ld b, $0e                                     ; $6790: $06 $0e
    inc b                                         ; $6792: $04
    ld [bc], a                                    ; $6793: $02
    add d                                         ; $6794: $82
    nop                                           ; $6795: $00
    inc bc                                        ; $6796: $03
    ld [bc], a                                    ; $6797: $02
    dec e                                         ; $6798: $1d
    inc bc                                        ; $6799: $03
    ld [bc], a                                    ; $679a: $02
    ld [bc], a                                    ; $679b: $02
    adc h                                         ; $679c: $8c
    db $10                                        ; $679d: $10
    ld [bc], a                                    ; $679e: $02
    jr c, jr_0d8_67ca                             ; $679f: $38 $29

    ld a, [de]                                    ; $67a1: $1a
    db $10                                        ; $67a2: $10
    jr nc, jr_0d8_67a7                            ; $67a3: $30 $02

    jr c, @+$3a                                   ; $67a5: $38 $38

jr_0d8_67a7:
    db $10                                        ; $67a7: $10
    ld b, $08                                     ; $67a8: $06 $08
    ld h, c                                       ; $67aa: $61
    xor c                                         ; $67ab: $a9
    add b                                         ; $67ac: $80
    ld [$0768], sp                                ; $67ad: $08 $68 $07
    ld sp, hl                                     ; $67b0: $f9
    nop                                           ; $67b1: $00
    ld b, a                                       ; $67b2: $47
    pop af                                        ; $67b3: $f1
    ld l, a                                       ; $67b4: $6f
    sbc h                                         ; $67b5: $9c
    ld l, a                                       ; $67b6: $6f
    pop hl                                        ; $67b7: $e1
    rra                                           ; $67b8: $1f
    ld h, c                                       ; $67b9: $61
    nop                                           ; $67ba: $00
    rra                                           ; $67bb: $1f
    dec sp                                        ; $67bc: $3b
    rra                                           ; $67bd: $1f
    inc hl                                        ; $67be: $23
    rra                                           ; $67bf: $1f
    ld hl, $3b1f                                  ; $67c0: $21 $1f $3b
    ld [$271e], sp                                ; $67c3: $08 $1e $27
    ld e, $23                                     ; $67c6: $1e $23

jr_0d8_67c8:
    inc b                                         ; $67c8: $04
    nop                                           ; $67c9: $00

jr_0d8_67ca:
    rla                                           ; $67ca: $17
    ld c, $1e                                     ; $67cb: $0e $1e
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    add hl, hl                                    ; $67cf: $29
    ld e, $e7                                     ; $67d0: $1e $e7
    ld e, $ef                                     ; $67d2: $1e $ef
    sbc c                                         ; $67d4: $99
    db $ed                                        ; $67d5: $ed
    nop                                           ; $67d6: $00
    sbc a                                         ; $67d7: $9f
    rst $38                                       ; $67d8: $ff
    adc [hl]                                      ; $67d9: $8e
    sbc $a2                                       ; $67da: $de $a2
    sub $ac                                       ; $67dc: $d6 $ac
    xor $01                                       ; $67de: $ee $01
    inc e                                         ; $67e0: $1c
    add $3c                                       ; $67e1: $c6 $3c
    adc [hl]                                      ; $67e3: $8e
    ld a, h                                       ; $67e4: $7c
    cp h                                          ; $67e5: $bc
    ld a, b                                       ; $67e6: $78
    and b                                         ; $67e7: $a0
    ld [$580c], sp                                ; $67e8: $08 $0c $58
    jr nc, jr_0d8_6845                            ; $67eb: $30 $58

    jr nc, jr_0d8_6773                            ; $67ed: $30 $84

    ld a, [bc]                                    ; $67ef: $0a
    ld e, e                                       ; $67f0: $5b
    sbc d                                         ; $67f1: $9a
    ldh [rLCDC], a                                ; $67f2: $e0 $40
    ld de, $40e0                                  ; $67f4: $11 $e0 $40
    ld b, b                                       ; $67f7: $40
    or b                                          ; $67f8: $b0
    ld [de], a                                    ; $67f9: $12
    ld d, $0c                                     ; $67fa: $16 $0c
    ld c, $1c                                     ; $67fc: $0e $1c
    sub c                                         ; $67fe: $91
    add b                                         ; $67ff: $80
    add b                                         ; $6800: $80
    jr c, @-$06                                   ; $6801: $38 $f8

    ld b, a                                       ; $6803: $47
    ldh a, [$6f]                                  ; $6804: $f0 $6f
    sub a                                         ; $6806: $97
    ld l, a                                       ; $6807: $6f
    ldh [$a0], a                                  ; $6808: $e0 $a0
    add b                                         ; $680a: $80
    nop                                           ; $680b: $00
    ld l, $a0                                     ; $680c: $2e $a0
    ld bc, $1f21                                  ; $680e: $01 $21 $1f
    ld d, $0f                                     ; $6811: $16 $0f
    db $10                                        ; $6813: $10
    jr nz, jr_0d8_6825                            ; $6814: $20 $0f

    ld de, $024e                                  ; $6816: $11 $4e $02
    ld [$de07], sp                                ; $6819: $08 $07 $de
    nop                                           ; $681c: $00
    jp hl                                         ; $681d: $e9


    nop                                           ; $681e: $00
    sbc [hl]                                      ; $681f: $9e
    ld h, a                                       ; $6820: $67
    sbc $ef                                       ; $6821: $de $ef
    reti                                          ; $6823: $d9


    db $ed                                        ; $6824: $ed

jr_0d8_6825:
    rst $18                                       ; $6825: $df
    ld l, a                                       ; $6826: $6f
    nop                                           ; $6827: $00
    sbc $7c                                       ; $6828: $de $7c
    ret nz                                        ; $682a: $c0

    db $ec                                        ; $682b: $ec
    ret c                                         ; $682c: $d8

    db $ec                                        ; $682d: $ec
    ret c                                         ; $682e: $d8

    ld l, h                                       ; $682f: $6c
    inc b                                         ; $6830: $04
    ret c                                         ; $6831: $d8

    ld hl, sp-$30                                 ; $6832: $f8 $d0
    ret c                                         ; $6834: $d8

    or b                                          ; $6835: $b0
    ld [bc], a                                    ; $6836: $02
    jr @-$0e                                      ; $6837: $18 $f0

    and b                                         ; $6839: $a0
    ret nz                                        ; $683a: $c0

    add b                                         ; $683b: $80
    ret z                                         ; $683c: $c8

    inc h                                         ; $683d: $24
    ld a, [bc]                                    ; $683e: $0a
    ld d, $0e                                     ; $683f: $16 $0e
    ld [de], a                                    ; $6841: $12
    ld c, $0c                                     ; $6842: $0e $0c
    ld [bc], a                                    ; $6844: $02

jr_0d8_6845:
    ret nz                                        ; $6845: $c0

    cp $aa                                        ; $6846: $fe $aa
    inc b                                         ; $6848: $04
    ld a, [de]                                    ; $6849: $1a
    dec c                                         ; $684a: $0d
    inc bc                                        ; $684b: $03
    ld [hl], b                                    ; $684c: $70
    rrca                                          ; $684d: $0f
    rst $30                                       ; $684e: $f7
    ld c, a                                       ; $684f: $4f
    nop                                           ; $6850: $00
    and e                                         ; $6851: $a3
    ld e, a                                       ; $6852: $5f
    ld l, a                                       ; $6853: $6f
    ld e, $47                                     ; $6854: $1e $47
    ld a, $5f                                     ; $6856: $3e $5f
    inc a                                         ; $6858: $3c
    nop                                           ; $6859: $00
    ld c, a                                       ; $685a: $4f
    ld a, [hl-]                                   ; $685b: $3a
    sbc a                                         ; $685c: $9f
    ld a, c                                       ; $685d: $79
    sbc e                                         ; $685e: $9b
    ld [hl], h                                    ; $685f: $74
    cp l                                          ; $6860: $bd
    ld h, b                                       ; $6861: $60
    db $10                                        ; $6862: $10
    ld [hl], b                                    ; $6863: $70
    jr nz, @+$22                                  ; $6864: $20 $20

    ld l, [hl]                                    ; $6866: $6e
    inc bc                                        ; $6867: $03

jr_0d8_6868:
    ld l, a                                       ; $6868: $6f
    nop                                           ; $6869: $00
    sub h                                         ; $686a: $94
    ld l, a                                       ; $686b: $6f
    nop                                           ; $686c: $00
    di                                            ; $686d: $f3
    rst $28                                       ; $686e: $ef
    rst $30                                       ; $686f: $f7
    call z, Call_000_2fd6                         ; $6870: $cc $d6 $2f
    rst $18                                       ; $6873: $df
    ld h, a                                       ; $6874: $67
    nop                                           ; $6875: $00
    ld l, a                                       ; $6876: $6f
    ldh a, [rPCM34]                               ; $6877: $f0 $77
    adc [hl]                                      ; $6879: $8e
    db $e3                                        ; $687a: $e3
    ld e, $ee                                     ; $687b: $1e $ee
    ld e, h                                       ; $687d: $5c
    rlca                                          ; $687e: $07
    and $9c                                       ; $687f: $e6 $9c
    call z, $f8b8                                 ; $6881: $cc $b8 $f8
    ld d, [hl]                                    ; $6884: $56
    ld sp, $4982                                  ; $6885: $31 $82 $49
    ld h, l                                       ; $6888: $65
    ld a, e                                       ; $6889: $7b
    nop                                           ; $688a: $00
    rlca                                          ; $688b: $07
    nop                                           ; $688c: $00
    rrca                                          ; $688d: $0f
    rlca                                          ; $688e: $07
    jr @+$11                                      ; $688f: $18 $0f

    inc a                                         ; $6891: $3c
    rra                                           ; $6892: $1f
    nop                                           ; $6893: $00
    ld h, c                                       ; $6894: $61
    ccf                                           ; $6895: $3f
    ld [hl], e                                    ; $6896: $73
    ccf                                           ; $6897: $3f
    rst $00                                       ; $6898: $c7
    ld a, [hl]                                    ; $6899: $7e
    adc [hl]                                      ; $689a: $8e
    ld a, b                                       ; $689b: $78
    inc bc                                        ; $689c: $03
    sbc a                                         ; $689d: $9f
    ld [hl], h                                    ; $689e: $74
    cp $67                                        ; $689f: $fe $67
    ld h, h                                       ; $68a1: $64
    inc bc                                        ; $68a2: $03
    ld h, $0b                                     ; $68a3: $26 $0b
    call z, $001b                                 ; $68a5: $cc $1b $00
    ldh [rP1], a                                  ; $68a8: $e0 $00
    dec de                                        ; $68aa: $1b
    ldh [$7c], a                                  ; $68ab: $e0 $7c
    ei                                            ; $68ad: $fb
    rst $38                                       ; $68ae: $ff
    ret z                                         ; $68af: $c8

    nop                                           ; $68b0: $00
    reti                                          ; $68b1: $d9


    and [hl]                                      ; $68b2: $a6
    and l                                         ; $68b3: $a5
    ld e, [hl]                                    ; $68b4: $5e
    ld d, l                                       ; $68b5: $55
    ld a, $7d                                     ; $68b6: $3e $7d
    ld a, $00                                     ; $68b8: $3e $00
    sub [hl]                                      ; $68ba: $96
    ld a, a                                       ; $68bb: $7f
    and a                                         ; $68bc: $a7
    ld e, b                                       ; $68bd: $58
    db $fc                                        ; $68be: $fc
    jr nz, @+$80                                  ; $68bf: $20 $7e

    and h                                         ; $68c1: $a4
    inc b                                         ; $68c2: $04
    inc a                                         ; $68c3: $3c
    ret c                                         ; $68c4: $d8

    db $fc                                        ; $68c5: $fc
    ld [$ee18], sp                                ; $68c6: $08 $18 $ee
    inc bc                                        ; $68c9: $03
    jr nc, jr_0d8_68cc                            ; $68ca: $30 $00

jr_0d8_68cc:
    nop                                           ; $68cc: $00
    jr c, jr_0d8_68ff                             ; $68cd: $38 $30

    inc a                                         ; $68cf: $3c
    nop                                           ; $68d0: $00
    ld [de], a                                    ; $68d1: $12
    inc a                                         ; $68d2: $3c
    ld c, $3c                                     ; $68d3: $0e $3c
    nop                                           ; $68d5: $00
    rra                                           ; $68d6: $1f
    ld [hl-], a                                   ; $68d7: $32
    dec de                                        ; $68d8: $1b
    ld a, $3e                                     ; $68d9: $3e $3e
    inc e                                         ; $68db: $1c
    dec sp                                        ; $68dc: $3b
    ld b, $00                                     ; $68dd: $06 $00
    inc de                                        ; $68df: $13
    ld c, $16                                     ; $68e0: $0e $16
    inc c                                         ; $68e2: $0c
    ld h, $1c                                     ; $68e3: $26 $1c
    inc l                                         ; $68e5: $2c
    jr jr_0d8_6868                                ; $68e6: $18 $80

    ld e, $08                                     ; $68e8: $1e $08
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    inc a                                         ; $68ec: $3c
    nop                                           ; $68ed: $00
    ld d, d                                       ; $68ee: $52
    inc a                                         ; $68ef: $3c
    ld c, [hl]                                    ; $68f0: $4e
    nop                                           ; $68f1: $00
    inc a                                         ; $68f2: $3c
    ld e, a                                       ; $68f3: $5f
    ld [hl-], a                                   ; $68f4: $32
    ld e, e                                       ; $68f5: $5b
    ld a, $7e                                     ; $68f6: $3e $7e
    inc e                                         ; $68f8: $1c
    inc a                                         ; $68f9: $3c
    add b                                         ; $68fa: $80
    db $e4                                        ; $68fb: $e4
    add e                                         ; $68fc: $83

    db $74, $00

jr_0d8_68ff:
    ld d, $00                                     ; $68ff: $16 $00
    ld e, $00                                     ; $6901: $1e $00
    ld h, $00                                     ; $6903: $26 $00
    ld l, $00                                     ; $6905: $2e $00
    ld [hl], $00                                  ; $6907: $36 $00
    ld a, $00                                     ; $6909: $3e $00
    ld b, [hl]                                    ; $690b: $46
    nop                                           ; $690c: $00
    ld c, [hl]                                    ; $690d: $4e
    nop                                           ; $690e: $00
    ld d, [hl]                                    ; $690f: $56
    nop                                           ; $6910: $00
    ld e, [hl]                                    ; $6911: $5e
    nop                                           ; $6912: $00

    db $66, $00

    ld bc, $fa00                                  ; $6915: $01 $00 $fa
    ld bc, $01fa                                  ; $6918: $01 $fa $01
    ei                                            ; $691b: $fb
    ld sp, hl                                     ; $691c: $f9
    ld bc, $fa02                                  ; $691d: $01 $02 $fa
    ld bc, $01fa                                  ; $6920: $01 $fa $01
    ei                                            ; $6923: $fb
    ld hl, sp+$01                                 ; $6924: $f8 $01
    inc b                                         ; $6926: $04
    ld a, [$fa01]                                 ; $6927: $fa $01 $fa
    ld bc, $f9fb                                  ; $692a: $01 $fb $f9
    ld bc, $fa06                                  ; $692d: $01 $06 $fa
    ld bc, $01fa                                  ; $6930: $01 $fa $01
    ei                                            ; $6933: $fb
    ld sp, hl                                     ; $6934: $f9
    ld bc, $fa08                                  ; $6935: $01 $08 $fa
    ld bc, $01fa                                  ; $6938: $01 $fa $01
    ei                                            ; $693b: $fb
    ld sp, hl                                     ; $693c: $f9
    ld bc, $fa0a                                  ; $693d: $01 $0a $fa
    ld bc, $01fa                                  ; $6940: $01 $fa $01
    ei                                            ; $6943: $fb
    ld sp, hl                                     ; $6944: $f9
    ld bc, $fa0c                                  ; $6945: $01 $0c $fa
    ld bc, $01fa                                  ; $6948: $01 $fa $01
    ei                                            ; $694b: $fb
    ld sp, hl                                     ; $694c: $f9
    ld bc, $fa0e                                  ; $694d: $01 $0e $fa
    ld bc, $01fa                                  ; $6950: $01 $fa $01
    ei                                            ; $6953: $fb
    ld sp, hl                                     ; $6954: $f9
    ld bc, $fa10                                  ; $6955: $01 $10 $fa
    ld bc, $01fa                                  ; $6958: $01 $fa $01
    ei                                            ; $695b: $fb
    ld sp, hl                                     ; $695c: $f9
    ld bc, $fa12                                  ; $695d: $01 $12 $fa
    ld bc, $01fa                                  ; $6960: $01 $fa $01
    ei                                            ; $6963: $fb
    ld sp, hl                                     ; $6964: $f9

    db $04, $14

    nop                                           ; $6967: $00
    rrca                                          ; $6968: $0f
    nop                                           ; $6969: $00
    rrca                                          ; $696a: $0f

    db $fc, $fc, $fc, $0c, $0c, $fc, $0c, $0c, $c0, $01, $7e, $00, $00, $0e, $02, $1f
    db $0d, $1b, $09, $1b, $09, $04, $0f, $03, $0e, $0e, $00, $01, $80, $03, $01, $a0
    db $02, $30, $03, $20, $88, $1e, $02, $1f, $1d, $07, $01, $03, $0e, $06, $1f, $01
    db $1f, $1f, $20, $a8, $00, $0f, $03, $0f, $0d, $1f, $03, $1e, $1e, $ed, $60, $88
    db $7c, $08, $3c, $00, $1d, $60, $a8, $58, $00, $0f, $64, $08, $84, $40, $a8, $0e
    db $02, $1e, $0e, $84, $00, $0d, $1f, $70, $13, $c0, $98, $5c, $08, $a0, $08, $0c
    db $04, $0c, $0c, $f1, $40, $98, $3c, $08, $40, $b8, $20, $10, $11, $0f, $0d, $20
    db $a9, $00, $00, $1e, $1d, $23, $3d, $43, $71, $8f, $00, $60, $90, $60, $90, $00
    db $f0, $70, $70, $80, $44, $71, $78, $b8, $c4, $bc, $c2, $8e, $f1, $03, $06, $09
    db $06, $09, $00, $0f, $64, $79, $32, $00, $40, $f0, $3c, $08, $71, $8f, $3d, $43
    db $1d, $23, $68, $00, $24, $71, $96, $01, $0f, $3c, $08, $8e, $f1, $bc, $04, $c2
    db $b8, $c4, $00, $78, $a4, $69, $a0, $00, $20, $00

    jr z, jr_0d8_6a27                             ; $6a25: $28 $00

jr_0d8_6a27:
    jr nc, jr_0d8_6a29                            ; $6a27: $30 $00

jr_0d8_6a29:
    jr c, jr_0d8_6a2b                             ; $6a29: $38 $00

jr_0d8_6a2b:
    ld b, b                                       ; $6a2b: $40
    nop                                           ; $6a2c: $00
    ld c, b                                       ; $6a2d: $48
    nop                                           ; $6a2e: $00
    ld d, b                                       ; $6a2f: $50
    nop                                           ; $6a30: $00
    ld e, b                                       ; $6a31: $58
    nop                                           ; $6a32: $00
    ld h, b                                       ; $6a33: $60
    nop                                           ; $6a34: $00
    ld l, b                                       ; $6a35: $68
    nop                                           ; $6a36: $00
    ld [hl], b                                    ; $6a37: $70
    nop                                           ; $6a38: $00
    ld a, b                                       ; $6a39: $78
    nop                                           ; $6a3a: $00
    add b                                         ; $6a3b: $80
    nop                                           ; $6a3c: $00
    adc b                                         ; $6a3d: $88
    nop                                           ; $6a3e: $00
    sub b                                         ; $6a3f: $90
    nop                                           ; $6a40: $00
    sbc b                                         ; $6a41: $98
    nop                                           ; $6a42: $00

    db $01, $00

    ld bc, $0008                                  ; $6a45: $01 $08 $00
    rrca                                          ; $6a48: $0f

    db $00, $ff

    ld bc, $0102                                  ; $6a4b: $01 $02 $01
    ld [$0f00], sp                                ; $6a4e: $08 $00 $0f
    nop                                           ; $6a51: $00
    rst $38                                       ; $6a52: $ff
    ld bc, HeaderLogo                             ; $6a53: $01 $04 $01
    ld [$0f00], sp                                ; $6a56: $08 $00 $0f
    nop                                           ; $6a59: $00
    rst $38                                       ; $6a5a: $ff
    ld bc, $0106                                  ; $6a5b: $01 $06 $01
    ld [$0f00], sp                                ; $6a5e: $08 $00 $0f
    nop                                           ; $6a61: $00
    rst $38                                       ; $6a62: $ff
    ld bc, $0108                                  ; $6a63: $01 $08 $01
    ld [$0f00], sp                                ; $6a66: $08 $00 $0f
    nop                                           ; $6a69: $00
    rst $38                                       ; $6a6a: $ff
    ld bc, $010a                                  ; $6a6b: $01 $0a $01
    ld [$0f00], sp                                ; $6a6e: $08 $00 $0f
    nop                                           ; $6a71: $00
    rst $38                                       ; $6a72: $ff
    ld bc, $010c                                  ; $6a73: $01 $0c $01
    ld [$0f00], sp                                ; $6a76: $08 $00 $0f
    nop                                           ; $6a79: $00
    rst $38                                       ; $6a7a: $ff
    ld bc, $010e                                  ; $6a7b: $01 $0e $01
    ld [$0f00], sp                                ; $6a7e: $08 $00 $0f
    nop                                           ; $6a81: $00
    rst $38                                       ; $6a82: $ff
    ld bc, $0110                                  ; $6a83: $01 $10 $01
    ld [$0f00], sp                                ; $6a86: $08 $00 $0f
    nop                                           ; $6a89: $00
    rst $38                                       ; $6a8a: $ff
    ld bc, $0112                                  ; $6a8b: $01 $12 $01
    ld [$0f00], sp                                ; $6a8e: $08 $00 $0f
    nop                                           ; $6a91: $00
    rst $38                                       ; $6a92: $ff
    ld bc, $0114                                  ; $6a93: $01 $14 $01
    ld [$0f00], sp                                ; $6a96: $08 $00 $0f
    nop                                           ; $6a99: $00
    rst $38                                       ; $6a9a: $ff
    ld bc, $0116                                  ; $6a9b: $01 $16 $01
    ld [$0f00], sp                                ; $6a9e: $08 $00 $0f
    nop                                           ; $6aa1: $00
    rst $38                                       ; $6aa2: $ff
    ld bc, $0118                                  ; $6aa3: $01 $18 $01
    ld [$0f00], sp                                ; $6aa6: $08 $00 $0f
    nop                                           ; $6aa9: $00
    rst $38                                       ; $6aaa: $ff
    ld bc, $011a                                  ; $6aab: $01 $1a $01
    ld [$0f00], sp                                ; $6aae: $08 $00 $0f
    nop                                           ; $6ab1: $00
    rst $38                                       ; $6ab2: $ff
    ld bc, $011c                                  ; $6ab3: $01 $1c $01
    ld [$0f00], sp                                ; $6ab6: $08 $00 $0f
    nop                                           ; $6ab9: $00
    rst $38                                       ; $6aba: $ff
    ld bc, $011e                                  ; $6abb: $01 $1e $01
    ld [$0f00], sp                                ; $6abe: $08 $00 $0f
    nop                                           ; $6ac1: $00
    rst $38                                       ; $6ac2: $ff

    db $00, $02, $2a, $00, $0d, $7f, $7f, $7f, $41, $02, $c0, $01, $08, $55, $20, $e0
    db $99, $42, $00, $63, $5d, $02, $88, $40, $20, $41, $7f, $0a, $08, $f9, $60, $b8
    db $20, $08, $22, $a8, $20, $40, $60, $c8, $77, $55, $22, $88, $ff, $20, $48, $22
    db $88, $20, $58, $44, $78, $20, $68, $66, $68, $20, $78, $88, $58, $ff, $20, $f8
    db $40, $78, $ca, $48, $20, $98, $ec, $38, $20, $a8, $0e, $29, $20, $b8, $c0, $30
    db $19, $e0, $09

    jr z, jr_0d8_6b18                             ; $6b16: $28 $00

jr_0d8_6b18:
    ld [$1000], sp                                ; $6b18: $08 $00 $10
    nop                                           ; $6b1b: $00
    jr jr_0d8_6b1e                                ; $6b1c: $18 $00

jr_0d8_6b1e:
    jr nz, jr_0d8_6b20                            ; $6b1e: $20 $00

jr_0d8_6b20:
    ld bc, $f400                                  ; $6b20: $01 $00 $f4
    dec bc                                        ; $6b23: $0b
    ld a, [$fa00]                                 ; $6b24: $fa $00 $fa
    ld a, [$0201]                                 ; $6b27: $fa $01 $02
    db $f4                                        ; $6b2a: $f4
    dec bc                                        ; $6b2b: $0b
    ld a, [$f700]                                 ; $6b2c: $fa $00 $f7
    ei                                            ; $6b2f: $fb
    ld bc, $f404                                  ; $6b30: $01 $04 $f4
    dec bc                                        ; $6b33: $0b
    ld a, [$f300]                                 ; $6b34: $fa $00 $f3
    ei                                            ; $6b37: $fb
    ld bc, $f406                                  ; $6b38: $01 $06 $f4
    dec bc                                        ; $6b3b: $0b
    ld a, [$f100]                                 ; $6b3c: $fa $00 $f1
    ei                                            ; $6b3f: $fb
    add b                                         ; $6b40: $80
    nop                                           ; $6b41: $00
    jr nz, jr_0d8_6b44                            ; $6b42: $20 $00

jr_0d8_6b44:
    ld b, b                                       ; $6b44: $40
    ld [bc], a                                    ; $6b45: $02
    ld bc, $0520                                  ; $6b46: $01 $20 $05
    rlca                                          ; $6b49: $07

jr_0d8_6b4a:
    rlca                                          ; $6b4a: $07
    dec b                                         ; $6b4b: $05
    rlca                                          ; $6b4c: $07
    dec b                                         ; $6b4d: $05
    ld d, b                                       ; $6b4e: $50
    nop                                           ; $6b4f: $00
    ld bc, $0470                                  ; $6b50: $01 $70 $04

jr_0d8_6b53:
    ld bc, $0a20                                  ; $6b53: $01 $20 $0a
    ld c, $0e                                     ; $6b56: $0e $0e
    ld a, [bc]                                    ; $6b58: $0a
    add h                                         ; $6b59: $84
    ld [bc], a                                    ; $6b5a: $02
    ld [$1b15], sp                                ; $6b5b: $08 $15 $1b
    rla                                           ; $6b5e: $17
    add hl, de                                    ; $6b5f: $19
    jr nz, jr_0d8_6b4a                            ; $6b60: $20 $e8

    inc de                                        ; $6b62: $13
    dec e                                         ; $6b63: $1d
    sub b                                         ; $6b64: $90
    inc b                                         ; $6b65: $04
    ld [$1d13], sp                                ; $6b66: $08 $13 $1d
    jr nz, jr_0d8_6b53                            ; $6b69: $20 $e8

    ld de, $001f                                  ; $6b6b: $11 $1f $00
    inc b                                         ; $6b6e: $04
    cp $00                                        ; $6b6f: $fe $00
    jr nz, jr_0d8_6b73                            ; $6b71: $20 $00

jr_0d8_6b73:
    ld l, $00                                     ; $6b73: $2e $00
    inc a                                         ; $6b75: $3c
    nop                                           ; $6b76: $00
    ld c, d                                       ; $6b77: $4a
    nop                                           ; $6b78: $00
    ld e, b                                       ; $6b79: $58
    nop                                           ; $6b7a: $00
    ld h, [hl]                                    ; $6b7b: $66
    nop                                           ; $6b7c: $00
    ld [hl], h                                    ; $6b7d: $74
    nop                                           ; $6b7e: $00
    add d                                         ; $6b7f: $82
    nop                                           ; $6b80: $00
    sub b                                         ; $6b81: $90
    nop                                           ; $6b82: $00
    sbc h                                         ; $6b83: $9c
    nop                                           ; $6b84: $00
    xor d                                         ; $6b85: $aa
    nop                                           ; $6b86: $00
    cp b                                          ; $6b87: $b8
    nop                                           ; $6b88: $00
    add $00                                       ; $6b89: $c6 $00
    call nc, $e200                                ; $6b8b: $d4 $00 $e2
    nop                                           ; $6b8e: $00
    ldh a, [rP1]                                  ; $6b8f: $f0 $00
    inc b                                         ; $6b91: $04
    nop                                           ; $6b92: $00
    db $eb                                        ; $6b93: $eb
    ld a, [bc]                                    ; $6b94: $0a
    ld [$f809], a                                 ; $6b95: $ea $09 $f8
    ld sp, hl                                     ; $6b98: $f9
    ld hl, sp+$01                                 ; $6b99: $f8 $01
    ld [$08fc], sp                                ; $6b9b: $08 $fc $08
    cp $04                                        ; $6b9e: $fe $04
    ld [$0aeb], sp                                ; $6ba0: $08 $eb $0a
    ld [$f809], a                                 ; $6ba3: $ea $09 $f8
    ld hl, sp-$07                                 ; $6ba6: $f8 $f9
    nop                                           ; $6ba8: $00
    db $fc                                        ; $6ba9: $fc
    ld bc, $f908                                  ; $6baa: $01 $08 $f9
    inc b                                         ; $6bad: $04
    db $10                                        ; $6bae: $10
    db $eb                                        ; $6baf: $eb
    ld a, [bc]                                    ; $6bb0: $0a
    ld [$f909], a                                 ; $6bb1: $ea $09 $f9
    ld sp, hl                                     ; $6bb4: $f9
    ld sp, hl                                     ; $6bb5: $f9
    ld bc, $0200                                  ; $6bb6: $01 $00 $02
    add hl, bc                                    ; $6bb9: $09
    ld a, [$1804]                                 ; $6bba: $fa $04 $18
    db $eb                                        ; $6bbd: $eb
    ld a, [bc]                                    ; $6bbe: $0a
    ld [$f909], a                                 ; $6bbf: $ea $09 $f9
    ld hl, sp-$08                                 ; $6bc2: $f8 $f8
    nop                                           ; $6bc4: $00

jr_0d8_6bc5:
    cp $02                                        ; $6bc5: $fe $02
    ld [$04fa], sp                                ; $6bc7: $08 $fa $04
    jr nz, @-$13                                  ; $6bca: $20 $eb

    ld a, [bc]                                    ; $6bcc: $0a
    ld [$f809], a                                 ; $6bcd: $ea $09 $f8
    ld hl, sp-$08                                 ; $6bd0: $f8 $f8
    nop                                           ; $6bd2: $00
    ei                                            ; $6bd3: $fb
    ld bc, $f908                                  ; $6bd4: $01 $08 $f9
    inc b                                         ; $6bd7: $04
    jr z, jr_0d8_6bc5                             ; $6bd8: $28 $eb

    ld a, [bc]                                    ; $6bda: $0a
    ld [$fa09], a                                 ; $6bdb: $ea $09 $fa
    ld hl, sp-$07                                 ; $6bde: $f8 $f9
    nop                                           ; $6be0: $00

jr_0d8_6be1:
    rst $38                                       ; $6be1: $ff
    ld [bc], a                                    ; $6be2: $02
    add hl, bc                                    ; $6be3: $09
    ld a, [$3004]                                 ; $6be4: $fa $04 $30
    db $eb                                        ; $6be7: $eb
    ld a, [bc]                                    ; $6be8: $0a
    ld [$f909], a                                 ; $6be9: $ea $09 $f9
    ld sp, hl                                     ; $6bec: $f9
    ld hl, sp+$01                                 ; $6bed: $f8 $01
    cp $02                                        ; $6bef: $fe $02
    ld [$04fa], sp                                ; $6bf1: $08 $fa $04
    jr c, jr_0d8_6be1                             ; $6bf4: $38 $eb

    ld a, [bc]                                    ; $6bf6: $0a
    ld [$f809], a                                 ; $6bf7: $ea $09 $f8
    ld hl, sp-$08                                 ; $6bfa: $f8 $f8
    nop                                           ; $6bfc: $00
    db $fc                                        ; $6bfd: $fc
    ld bc, $f908                                  ; $6bfe: $01 $08 $f9
    inc bc                                        ; $6c01: $03
    ld b, b                                       ; $6c02: $40
    db $eb                                        ; $6c03: $eb
    ld a, [bc]                                    ; $6c04: $0a
    ld [$f909], a                                 ; $6c05: $ea $09 $f9
    ld sp, hl                                     ; $6c08: $f9
    ld sp, hl                                     ; $6c09: $f9
    ld bc, $fa09                                  ; $6c0a: $01 $09 $fa
    inc b                                         ; $6c0d: $04
    ld b, [hl]                                    ; $6c0e: $46
    db $eb                                        ; $6c0f: $eb
    ld a, [bc]                                    ; $6c10: $0a
    ld [$f909], a                                 ; $6c11: $ea $09 $f9

jr_0d8_6c14:
    ld sp, hl                                     ; $6c14: $f9
    ld hl, sp+$01                                 ; $6c15: $f8 $01
    rst $38                                       ; $6c17: $ff
    ld [bc], a                                    ; $6c18: $02
    ld [$04fa], sp                                ; $6c19: $08 $fa $04
    ld c, [hl]                                    ; $6c1c: $4e
    db $eb                                        ; $6c1d: $eb
    ld a, [bc]                                    ; $6c1e: $0a
    ld [$f809], a                                 ; $6c1f: $ea $09 $f8
    ld hl, sp-$08                                 ; $6c22: $f8 $f8
    nop                                           ; $6c24: $00
    db $fd                                        ; $6c25: $fd
    ld bc, $f908                                  ; $6c26: $01 $08 $f9
    inc b                                         ; $6c29: $04
    ld d, [hl]                                    ; $6c2a: $56
    db $eb                                        ; $6c2b: $eb
    ld a, [bc]                                    ; $6c2c: $0a
    ld [$f909], a                                 ; $6c2d: $ea $09 $f9
    ld hl, sp-$06                                 ; $6c30: $f8 $fa
    nop                                           ; $6c32: $00
    rst $38                                       ; $6c33: $ff
    ld [bc], a                                    ; $6c34: $02
    add hl, bc                                    ; $6c35: $09
    ld hl, sp+$04                                 ; $6c36: $f8 $04
    ld e, [hl]                                    ; $6c38: $5e
    db $eb                                        ; $6c39: $eb
    ld a, [bc]                                    ; $6c3a: $0a
    ld [$f909], a                                 ; $6c3b: $ea $09 $f9
    ld sp, hl                                     ; $6c3e: $f9
    ld hl, sp+$01                                 ; $6c3f: $f8 $01
    nop                                           ; $6c41: $00
    ld [bc], a                                    ; $6c42: $02
    ld [$04fa], sp                                ; $6c43: $08 $fa $04
    ld h, [hl]                                    ; $6c46: $66
    db $eb                                        ; $6c47: $eb
    ld a, [bc]                                    ; $6c48: $0a
    ld [$f909], a                                 ; $6c49: $ea $09 $f9
    ld hl, sp-$08                                 ; $6c4c: $f8 $f8
    nop                                           ; $6c4e: $00
    db $fd                                        ; $6c4f: $fd
    ld [bc], a                                    ; $6c50: $02
    ld [$04fa], sp                                ; $6c51: $08 $fa $04
    ld l, [hl]                                    ; $6c54: $6e
    db $eb                                        ; $6c55: $eb
    ld a, [bc]                                    ; $6c56: $0a
    ld [$f909], a                                 ; $6c57: $ea $09 $f9
    ld hl, sp-$07                                 ; $6c5a: $f8 $f9
    nop                                           ; $6c5c: $00
    db $fd                                        ; $6c5d: $fd
    ld bc, $f909                                  ; $6c5e: $01 $09 $f9
    inc b                                         ; $6c61: $04
    halt                                          ; $6c62: $76
    db $eb                                        ; $6c63: $eb
    ld a, [bc]                                    ; $6c64: $0a
    ld [$f909], a                                 ; $6c65: $ea $09 $f9
    ld sp, hl                                     ; $6c68: $f9
    ld hl, sp+$01                                 ; $6c69: $f8 $01
    nop                                           ; $6c6b: $00
    ld [bc], a                                    ; $6c6c: $02
    ld [$e0fa], sp                                ; $6c6d: $08 $fa $e0
    rlca                                          ; $6c70: $07
    ld l, $03                                     ; $6c71: $2e $03
    nop                                           ; $6c73: $00

jr_0d8_6c74:
    ld bc, $0301                                  ; $6c74: $01 $01 $03
    ld [bc], a                                    ; $6c77: $02
    rlca                                          ; $6c78: $07
    dec b                                         ; $6c79: $05
    inc e                                         ; $6c7a: $1c
    dec de                                        ; $6c7b: $1b
    ld [bc], a                                    ; $6c7c: $02
    inc sp                                        ; $6c7d: $33
    cpl                                           ; $6c7e: $2f
    ld l, a                                       ; $6c7f: $6f
    ld d, a                                       ; $6c80: $57
    rst $18                                       ; $6c81: $df
    cp a                                          ; $6c82: $bf
    ld [bc], a                                    ; $6c83: $02
    jr jr_0d8_6d05                                ; $6c84: $18 $7f

    nop                                           ; $6c86: $00
    ld e, a                                       ; $6c87: $5f
    ld l, a                                       ; $6c88: $6f
    ld e, a                                       ; $6c89: $5f
    ld l, a                                       ; $6c8a: $6f
    ld d, a                                       ; $6c8b: $57
    inc sp                                        ; $6c8c: $33
    cpl                                           ; $6c8d: $2f
    ld sp, $2e00                                  ; $6c8e: $31 $00 $2e
    ccf                                           ; $6c91: $3f
    jr nz, jr_0d8_6c14                            ; $6c92: $20 $80

jr_0d8_6c94:
    add b                                         ; $6c94: $80
    ret nz                                        ; $6c95: $c0

    ld b, b                                       ; $6c96: $40
    ldh [rP1], a                                  ; $6c97: $e0 $00
    and b                                         ; $6c99: $a0
    jr c, jr_0d8_6c74                             ; $6c9a: $38 $d8

    call z, $f6f4                                 ; $6c9c: $cc $f4 $f6
    ld [$40fb], a                                 ; $6c9f: $ea $fb $40
    db $fd                                        ; $6ca2: $fd
    ld [bc], a                                    ; $6ca3: $02

jr_0d8_6ca4:
    jr jr_0d8_6ca4                                ; $6ca4: $18 $fe

    ld a, [$faf6]                                 ; $6ca6: $fa $f6 $fa
    or $ea                                        ; $6ca9: $f6 $ea
    nop                                           ; $6cab: $00
    call z, $8cf4                                 ; $6cac: $cc $f4 $8c
    ld [hl], h                                    ; $6caf: $74
    db $fc                                        ; $6cb0: $fc
    inc b                                         ; $6cb1: $04
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    ld c, d                                       ; $6cb4: $4a
    nop                                           ; $6cb5: $00
    ld bc, $03d0                                  ; $6cb6: $01 $d0 $03
    inc bc                                        ; $6cb9: $03
    jr nz, jr_0d8_6c94                            ; $6cba: $20 $d8

    ld [bc], a                                    ; $6cbc: $02
    ld a, [hl]                                    ; $6cbd: $7e
    nop                                           ; $6cbe: $00
    dec c                                         ; $6cbf: $0d
    nop                                           ; $6cc0: $00
    ld a, [bc]                                    ; $6cc1: $0a
    inc e                                         ; $6cc2: $1c
    rla                                           ; $6cc3: $17
    rra                                           ; $6cc4: $1f
    inc d                                         ; $6cc5: $14
    ccf                                           ; $6cc6: $3f
    cpl                                           ; $6cc7: $2f
    scf                                           ; $6cc8: $37
    ld [$672f], sp                                ; $6cc9: $08 $2f $67
    ld e, a                                       ; $6ccc: $5f
    rst $38                                       ; $6ccd: $ff
    add h                                         ; $6cce: $84
    nop                                           ; $6ccf: $00
    ld l, a                                       ; $6cd0: $6f
    ld d, a                                       ; $6cd1: $57
    ld a, a                                       ; $6cd2: $7f
    nop                                           ; $6cd3: $00
    ld d, a                                       ; $6cd4: $57
    scf                                           ; $6cd5: $37
    cpl                                           ; $6cd6: $2f
    inc e                                         ; $6cd7: $1c
    rla                                           ; $6cd8: $17
    rrca                                          ; $6cd9: $0f
    ld a, [bc]                                    ; $6cda: $0a
    ld c, $00                                     ; $6cdb: $0e $00
    dec bc                                        ; $6cdd: $0b
    ldh [$e0], a                                  ; $6cde: $e0 $e0
    cp $1e                                        ; $6ce0: $fe $1e
    rst $18                                       ; $6ce2: $df
    pop hl                                        ; $6ce3: $e1
    rlc b                                         ; $6ce4: $cb $00
    cp $fd                                        ; $6ce6: $fe $fd
    cp $ff                                        ; $6ce8: $fe $ff
    ld a, [$fafd]                                 ; $6cea: $fa $fd $fa
    rst $38                                       ; $6ced: $ff
    inc c                                         ; $6cee: $0c
    cp $ff                                        ; $6cef: $fe $ff
    cp $f9                                        ; $6cf1: $fe $f9
    ld [bc], a                                    ; $6cf3: $02
    nop                                           ; $6cf4: $00
    ld c, $00                                     ; $6cf5: $0e $00
    call z, Call_000_037f                         ; $6cf7: $cc $7f $03
    db $d3                                        ; $6cfa: $d3
    ld a, h                                       ; $6cfb: $7c
    adc h                                         ; $6cfc: $8c
    ldh a, [rSVBK]                                ; $6cfd: $f0 $70
    ld bc, $9001                                  ; $6cff: $01 $01 $90
    sub h                                         ; $6d02: $94
    jr c, @+$0a                                   ; $6d03: $38 $08

jr_0d8_6d05:
    ld c, $08                                     ; $6d05: $0e $08
    rlca                                          ; $6d07: $07
    rlca                                          ; $6d08: $07
    and d                                         ; $6d09: $a2
    ret z                                         ; $6d0a: $c8

    ld bc, $3f01                                  ; $6d0b: $01 $01 $3f
    add hl, bc                                    ; $6d0e: $09
    ld a, $7f                                     ; $6d0f: $3e $7f
    ld b, c                                       ; $6d11: $41
    ld h, a                                       ; $6d12: $67
    ldh a, [rP1]                                  ; $6d13: $f0 $00
    ld a, a                                       ; $6d15: $7f
    ld e, a                                       ; $6d16: $5f
    ld [bc], a                                    ; $6d17: $02
    ld [$ef20], sp                                ; $6d18: $08 $20 $ef
    sbc a                                         ; $6d1b: $9f
    ld b, $09                                     ; $6d1c: $06 $09
    rst $28                                       ; $6d1e: $ef
    or a                                          ; $6d1f: $b7
    ld [hl], a                                    ; $6d20: $77
    ld c, a                                       ; $6d21: $4f
    ld a, $00                                     ; $6d22: $3e $00
    inc sp                                        ; $6d24: $33
    rrca                                          ; $6d25: $0f
    inc c                                         ; $6d26: $0c
    inc bc                                        ; $6d27: $03
    inc bc                                        ; $6d28: $03

jr_0d8_6d29:
    ld hl, sp-$08                                 ; $6d29: $f8 $f8
    db $fc                                        ; $6d2b: $fc
    ld [$0c04], sp                                ; $6d2c: $08 $04 $0c
    db $f4                                        ; $6d2f: $f4
    ld l, [hl]                                    ; $6d30: $6e
    ldh a, [rP1]                                  ; $6d31: $f0 $00
    rst $38                                       ; $6d33: $ff
    db $fd                                        ; $6d34: $fd

jr_0d8_6d35:
    rst $38                                       ; $6d35: $ff
    jr nz, jr_0d8_6d35                            ; $6d36: $20 $fd

    ei                                            ; $6d38: $fb
    ld a, h                                       ; $6d39: $7c

jr_0d8_6d3a:
    jr jr_0d8_6d3a                                ; $6d3a: $18 $fe

    rst $38                                       ; $6d3c: $ff
    push hl                                       ; $6d3d: $e5
    ld a, [hl]                                    ; $6d3e: $7e
    ld [$fc02], a                                 ; $6d3f: $ea $02 $fc
    ld [hl], h                                    ; $6d42: $74
    jr c, @-$16                                   ; $6d43: $38 $e8

    ldh a, [rNR10]                                ; $6d45: $f0 $10
    ld [hl], d                                    ; $6d47: $72
    ld a, b                                       ; $6d48: $78
    ret nz                                        ; $6d49: $c0

    ld h, b                                       ; $6d4a: $60
    ret nz                                        ; $6d4b: $c0

    ld h, b                                       ; $6d4c: $60
    ld e, b                                       ; $6d4d: $58
    jr nz, jr_0d8_6d29                            ; $6d4e: $20 $d9

    ld bc, $0701                                  ; $6d50: $01 $01 $07
    ld b, $0f                                     ; $6d53: $06 $0f
    inc bc                                        ; $6d55: $03
    add hl, bc                                    ; $6d56: $09
    dec a                                         ; $6d57: $3d
    scf                                           ; $6d58: $37
    ld a, a                                       ; $6d59: $7f
    ld c, a                                       ; $6d5a: $4f
    rst $08                                       ; $6d5b: $cf
    ld hl, sp+$08                                 ; $6d5c: $f8 $08
    add h                                         ; $6d5e: $84
    nop                                           ; $6d5f: $00
    ld [$5f6f], sp                                ; $6d60: $08 $6f $5f
    ld [hl], a                                    ; $6d63: $77
    ld e, a                                       ; $6d64: $5f
    inc c                                         ; $6d65: $0c
    ld bc, $392e                                  ; $6d66: $01 $2e $39
    ld l, $00                                     ; $6d69: $2e $00
    rra                                           ; $6d6b: $1f
    db $10                                        ; $6d6c: $10
    rrca                                          ; $6d6d: $0f
    rrca                                          ; $6d6e: $0f
    ld b, b                                       ; $6d6f: $40
    ld b, b                                       ; $6d70: $40
    ldh a, [$b0]                                  ; $6d71: $f0 $b0
    nop                                           ; $6d73: $00
    ld hl, sp+$48                                 ; $6d74: $f8 $48
    sbc h                                         ; $6d76: $9c
    db $f4                                        ; $6d77: $f4
    cp $ea                                        ; $6d78: $fe $ea
    rst $38                                       ; $6d7a: $ff
    db $dd                                        ; $6d7b: $dd
    ld [bc], a                                    ; $6d7c: $02
    ld sp, hl                                     ; $6d7d: $f9
    cp $fe                                        ; $6d7e: $fe $fe
    ld sp, hl                                     ; $6d80: $f9
    db $fc                                        ; $6d81: $fc
    rst $38                                       ; $6d82: $ff
    inc b                                         ; $6d83: $04
    ld bc, $00fc                                  ; $6d84: $01 $fc $00
    rst $38                                       ; $6d87: $ff
    ld hl, sp-$01                                 ; $6d88: $f8 $ff
    ld sp, hl                                     ; $6d8a: $f9
    ei                                            ; $6d8b: $fb
    db $dd                                        ; $6d8c: $dd
    add $fa                                       ; $6d8d: $c6 $fa
    nop                                           ; $6d8f: $00
    cp $02                                        ; $6d90: $fe $02
    ld [bc], a                                    ; $6d92: $02
    ld [bc], a                                    ; $6d93: $02
    inc bc                                        ; $6d94: $03
    ld bc, $0103                                  ; $6d95: $01 $03 $01
    and $07                                       ; $6d98: $e6 $07
    nop                                           ; $6d9a: $00
    ld a, [bc]                                    ; $6d9b: $0a
    nop                                           ; $6d9c: $00
    adc d                                         ; $6d9d: $8a
    add hl, hl                                    ; $6d9e: $29
    ldh a, [$f0]                                  ; $6d9f: $f0 $f0
    add b                                         ; $6da1: $80
    ld sp, hl                                     ; $6da2: $f9
    and b                                         ; $6da3: $a0
    add hl, sp                                    ; $6da4: $39
    rlca                                          ; $6da5: $07
    nop                                           ; $6da6: $00
    inc b                                         ; $6da7: $04
    ld c, $0b                                     ; $6da8: $0e $0b
    dec c                                         ; $6daa: $0d
    dec bc                                        ; $6dab: $0b
    rra                                           ; $6dac: $1f
    inc de                                        ; $6dad: $13
    dec sp                                        ; $6dae: $3b
    ld b, c                                       ; $6daf: $41
    cpl                                           ; $6db0: $2f
    ld hl, sp+$09                                 ; $6db1: $f8 $09
    rst $08                                       ; $6db3: $cf
    or a                                          ; $6db4: $b7
    rst $18                                       ; $6db5: $df
    and a                                         ; $6db6: $a7
    rst $38                                       ; $6db7: $ff
    ld [bc], a                                    ; $6db8: $02
    ld [bc], a                                    ; $6db9: $02
    nop                                           ; $6dba: $00
    scf                                           ; $6dbb: $37
    dec hl                                        ; $6dbc: $2b
    dec sp                                        ; $6dbd: $3b
    cpl                                           ; $6dbe: $2f
    dec de                                        ; $6dbf: $1b
    rla                                           ; $6dc0: $17
    inc c                                         ; $6dc1: $0c
    dec bc                                        ; $6dc2: $0b
    nop                                           ; $6dc3: $00
    add b                                         ; $6dc4: $80
    add b                                         ; $6dc5: $80
    ldh a, [rSVBK]                                ; $6dc6: $f0 $70
    cp $8e                                        ; $6dc8: $fe $8e
    rst $38                                       ; $6dca: $ff
    ld sp, $fb18                                  ; $6dcb: $31 $18 $fb
    or $f1                                        ; $6dce: $f6 $f1
    add h                                         ; $6dd0: $84
    add hl, bc                                    ; $6dd1: $09
    ld a, d                                       ; $6dd2: $7a
    ld [$fff8], sp                                ; $6dd3: $08 $f8 $ff
    db $fc                                        ; $6dd6: $fc
    nop                                           ; $6dd7: $00
    db $fd                                        ; $6dd8: $fd
    cp $f1                                        ; $6dd9: $fe $f1
    cp $fb                                        ; $6ddb: $fe $fb
    or $ff                                        ; $6ddd: $f6 $ff
    ld sp, $fe32                                  ; $6ddf: $31 $32 $fe
    adc [hl]                                      ; $6de2: $8e
    add b                                         ; $6de3: $80
    sbc c                                         ; $6de4: $99
    add d                                         ; $6de5: $82
    add hl, bc                                    ; $6de6: $09
    ldh [$e0], a                                  ; $6de7: $e0 $e0
    ld a, [de]                                    ; $6de9: $1a
    ld a, [bc]                                    ; $6dea: $0a
    rrca                                          ; $6deb: $0f
    add b                                         ; $6dec: $80
    add b                                         ; $6ded: $80
    pop hl                                        ; $6dee: $e1
    rra                                           ; $6def: $1f
    rra                                           ; $6df0: $1f
    rra                                           ; $6df1: $1f
    db $10                                        ; $6df2: $10
    ld sp, $372e                                  ; $6df3: $31 $2e $37
    ld [$3f2e], sp                                ; $6df6: $08 $2e $3f
    cpl                                           ; $6df9: $2f
    ld a, a                                       ; $6dfa: $7f
    add d                                         ; $6dfb: $82
    add hl, de                                    ; $6dfc: $19
    ld c, a                                       ; $6dfd: $4f
    rst $28                                       ; $6dfe: $ef
    sub a                                         ; $6dff: $97
    inc b                                         ; $6e00: $04
    rst $28                                       ; $6e01: $ef
    cp a                                          ; $6e02: $bf
    ld [hl], a                                    ; $6e03: $77
    ld c, a                                       ; $6e04: $4f
    inc a                                         ; $6e05: $3c
    ld a, [hl]                                    ; $6e06: $7e
    ld de, $0000                                  ; $6e07: $11 $00 $00
    ld bc, $3c3c                                  ; $6e0a: $01 $3c $3c
    cp $c2                                        ; $6e0d: $fe $c2
    sub $3a                                       ; $6e0f: $d6 $3a
    rst $00                                       ; $6e11: $c7
    ld a, d                                       ; $6e12: $7a
    ld [bc], a                                    ; $6e13: $02
    jr nc, @+$01                                  ; $6e14: $30 $ff

    db $fd                                        ; $6e16: $fd
    nop                                           ; $6e17: $00
    ld a, [bc]                                    ; $6e18: $0a
    db $fd                                        ; $6e19: $fd
    ld [$fff9], sp                                ; $6e1a: $08 $f9 $ff
    ei                                            ; $6e1d: $fb
    cp $00                                        ; $6e1e: $fe $00
    rst $38                                       ; $6e20: $ff
    db $dd                                        ; $6e21: $dd
    xor $da                                       ; $6e22: $ee $da
    inc e                                         ; $6e24: $1c
    db $e4                                        ; $6e25: $e4
    ld hl, sp+$18                                 ; $6e26: $f8 $18
    di                                            ; $6e28: $f3
    ld a, [$0208]                                 ; $6e29: $fa $08 $02
    add hl, bc                                    ; $6e2c: $09
    inc b                                         ; $6e2d: $04
    add hl, bc                                    ; $6e2e: $09
    adc d                                         ; $6e2f: $8a
    ld a, [hl+]                                   ; $6e30: $2a
    add b                                         ; $6e31: $80
    add b                                         ; $6e32: $80
    add b                                         ; $6e33: $80
    ld a, [$3aa0]                                 ; $6e34: $fa $a0 $3a
    add hl, bc                                    ; $6e37: $09
    rrca                                          ; $6e38: $0f
    inc c                                         ; $6e39: $0c

jr_0d8_6e3a:
    dec a                                         ; $6e3a: $3d
    ld [hl-], a                                   ; $6e3b: $32
    halt                                          ; $6e3c: $76
    nop                                           ; $6e3d: $00
    or a                                          ; $6e3e: $b7
    db $d3                                        ; $6e3f: $d3
    cp $12                                        ; $6e40: $fe $12
    ld b, b                                       ; $6e42: $40
    ld l, a                                       ; $6e43: $6f
    ld b, $12                                     ; $6e44: $06 $12
    ld l, e                                       ; $6e46: $6b
    ld d, a                                       ; $6e47: $57
    ld h, a                                       ; $6e48: $67
    ld e, a                                       ; $6e49: $5f
    ld a, [hl]                                    ; $6e4a: $7e
    ld c, a                                       ; $6e4b: $4f
    nop                                           ; $6e4c: $00
    ccf                                           ; $6e4d: $3f
    jr nc, jr_0d8_6e5f                            ; $6e4e: $30 $0f

    rrca                                          ; $6e50: $0f
    ldh [$e0], a                                  ; $6e51: $e0 $e0
    ldh a, [rNR10]                                ; $6e53: $f0 $10
    nop                                           ; $6e55: $00
    cp b                                          ; $6e56: $b8
    add sp, -$64                                  ; $6e57: $e8 $9c
    ld [hl], h                                    ; $6e59: $74
    ld a, [hl]                                    ; $6e5a: $7e
    ld [$e5ff], a                                 ; $6e5b: $ea $ff $e5
    ld b, c                                       ; $6e5e: $41

jr_0d8_6e5f:
    ei                                            ; $6e5f: $fb
    add [hl]                                      ; $6e60: $86
    ld [bc], a                                    ; $6e61: $02
    ld sp, hl                                     ; $6e62: $f9
    cp $f7                                        ; $6e63: $fe $f7
    ld sp, hl                                     ; $6e65: $f9
    rst $38                                       ; $6e66: $ff
    ld [bc], a                                    ; $6e67: $02
    inc bc                                        ; $6e68: $03
    nop                                           ; $6e69: $00
    cp $ea                                        ; $6e6a: $fe $ea
    db $ec                                        ; $6e6c: $ec
    db $f4                                        ; $6e6d: $f4
    ld l, h                                       ; $6e6e: $6c
    db $f4                                        ; $6e6f: $f4
    ld hl, sp+$08                                 ; $6e70: $f8 $08
    ldh a, [rSVBK]                                ; $6e72: $f0 $70
    ld l, d                                       ; $6e74: $6a
    add b                                         ; $6e75: $80
    ld l, c                                       ; $6e76: $69
    nop                                           ; $6e77: $00
    ld [$1980], a                                 ; $6e78: $ea $80 $19
    ld e, $15                                     ; $6e7b: $1e $15
    jr jr_0d8_6e96                                ; $6e7d: $18 $17

    ld d, h                                       ; $6e7f: $54
    ccf                                           ; $6e80: $3f
    add d                                         ; $6e81: $82
    inc bc                                        ; $6e82: $03
    rst $08                                       ; $6e83: $cf
    add d                                         ; $6e84: $82
    inc de                                        ; $6e85: $13
    rst $28                                       ; $6e86: $ef
    add [hl]                                      ; $6e87: $86
    nop                                           ; $6e88: $00
    ccf                                           ; $6e89: $3f
    cpl                                           ; $6e8a: $2f
    db $10                                        ; $6e8b: $10
    ccf                                           ; $6e8c: $3f
    cpl                                           ; $6e8d: $2f
    jr jr_0d8_6e92                                ; $6e8e: $18 $02

    inc bc                                        ; $6e90: $03
    add b                                         ; $6e91: $80

jr_0d8_6e92:
    add b                                         ; $6e92: $80
    ldh [$60], a                                  ; $6e93: $e0 $60
    inc bc                                        ; $6e95: $03

jr_0d8_6e96:
    db $fc                                        ; $6e96: $fc
    sbc h                                         ; $6e97: $9c
    rst $38                                       ; $6e98: $ff
    jp $ccf7                                      ; $6e99: $c3 $f7 $cc


    ld hl, sp+$0a                                 ; $6e9c: $f8 $0a
    ld a, [hl]                                    ; $6e9e: $7e
    ld [hl+], a                                   ; $6e9f: $22
    ld b, b                                       ; $6ea0: $40
    ld sp, hl                                     ; $6ea1: $f9
    cp $01                                        ; $6ea2: $fe $01
    db $fd                                        ; $6ea4: $fd
    di                                            ; $6ea5: $f3
    db $dd                                        ; $6ea6: $dd
    rst $18                                       ; $6ea7: $df
    pop hl                                        ; $6ea8: $e1
    cp $61                                        ; $6ea9: $fe $61
    ld e, $f6                                     ; $6eab: $1e $f6
    sbc d                                         ; $6ead: $9a
    add [hl]                                      ; $6eae: $86
    ld a, [hl-]                                   ; $6eaf: $3a
    rra                                           ; $6eb0: $1f
    inc de                                        ; $6eb1: $13
    inc c                                         ; $6eb2: $0c
    inc c                                         ; $6eb3: $0c
    add b                                         ; $6eb4: $80
    reti                                          ; $6eb5: $d9


jr_0d8_6eb6:
    inc a                                         ; $6eb6: $3c
    ccf                                           ; $6eb7: $3f
    jr nz, jr_0d8_6e3a                            ; $6eb8: $20 $80

    ld bc, $03fe                                  ; $6eba: $01 $fe $03
    nop                                           ; $6ebd: $00
    dec bc                                        ; $6ebe: $0b
    ld [bc], a                                    ; $6ebf: $02
    inc [hl]                                      ; $6ec0: $34
    ld d, a                                       ; $6ec1: $57
    ccf                                           ; $6ec2: $3f
    ld bc, $1c27                                  ; $6ec3: $01 $27 $1c
    dec de                                        ; $6ec6: $1b
    rlca                                          ; $6ec7: $07
    dec b                                         ; $6ec8: $05
    inc bc                                        ; $6ec9: $03
    ld [bc], a                                    ; $6eca: $02
    nop                                           ; $6ecb: $00
    dec bc                                        ; $6ecc: $0b
    ld a, [de]                                    ; $6ecd: $1a
    adc h                                         ; $6ece: $8c
    ld [hl], h                                    ; $6ecf: $74
    db $ec                                        ; $6ed0: $ec
    cp $03                                        ; $6ed1: $fe $03
    db $f4                                        ; $6ed3: $f4
    nop                                           ; $6ed4: $00
    ld a, [$3402]                                 ; $6ed5: $fa $02 $34
    ld [$fc00], a                                 ; $6ed8: $ea $00 $fc
    db $e4                                        ; $6edb: $e4
    jr c, jr_0d8_6eb6                             ; $6edc: $38 $d8

    ldh [$a0], a                                  ; $6ede: $e0 $a0
    ret nz                                        ; $6ee0: $c0

    ld b, b                                       ; $6ee1: $40
    add b                                         ; $6ee2: $80
    ldh [$eb], a                                  ; $6ee3: $e0 $eb
    ld bc, $0f01                                  ; $6ee5: $01 $01 $0f
    ld c, $3e                                     ; $6ee8: $0e $3e
    ld sp, $057f                                  ; $6eea: $31 $7f $05
    ld c, c                                       ; $6eed: $49
    rst $28                                       ; $6eee: $ef
    cp l                                          ; $6eef: $bd
    rst $08                                       ; $6ef0: $cf
    cp a                                          ; $6ef1: $bf

jr_0d8_6ef2:
    sbc $08                                       ; $6ef2: $de $08
    rst $38                                       ; $6ef4: $ff
    ld [bc], a                                    ; $6ef5: $02
    nop                                           ; $6ef6: $00
    jr nz, jr_0d8_6f78                            ; $6ef7: $20 $7f

    ld c, a                                       ; $6ef9: $4f
    ld h, b                                       ; $6efa: $60
    inc b                                         ; $6efb: $04
    ld e, a                                       ; $6efc: $5f
    ld [hl], e                                    ; $6efd: $73
    ld c, l                                       ; $6efe: $4d
    ld a, a                                       ; $6eff: $7f
    ld [hl], b                                    ; $6f00: $70
    add b                                         ; $6f01: $80
    ldh [$0a], a                                  ; $6f02: $e0 $0a
    ldh [$a0], a                                  ; $6f04: $e0 $a0
    ldh a, [$50]                                  ; $6f06: $f0 $50
    jr jr_0d8_6ef2                                ; $6f08: $18 $e8

    xor h                                         ; $6f0a: $ac
    ld d, $d4                                     ; $6f0b: $16 $d4
    cp $fa                                        ; $6f0d: $fe $fa
    ld h, b                                       ; $6f0f: $60
    inc bc                                        ; $6f10: $03
    or $dc                                        ; $6f11: $f6 $dc
    dec bc                                        ; $6f13: $0b
    db $ec                                        ; $6f14: $ec
    inc bc                                        ; $6f15: $03
    pop af                                        ; $6f16: $f1
    nop                                           ; $6f17: $00
    rst $38                                       ; $6f18: $ff
    db $fd                                        ; $6f19: $fd
    or $fa                                        ; $6f1a: $f6 $fa
    db $ec                                        ; $6f1c: $ec
    call nc, $f49c                                ; $6f1d: $d4 $9c $f4
    sbc [hl]                                      ; $6f20: $9e
    jp nc, $f07b                                  ; $6f21: $d2 $7b $f0

    db $10                                        ; $6f24: $10
    ld e, d                                       ; $6f25: $5a
    ld a, [de]                                    ; $6f26: $1a
    ret nz                                        ; $6f27: $c0

    inc hl                                        ; $6f28: $23
    ld h, d                                       ; $6f29: $62
    db $e3                                        ; $6f2a: $e3
    ldh [rNR32], a                                ; $6f2b: $e0 $1c
    ld c, $00                                     ; $6f2d: $0e $00
    dec bc                                        ; $6f2f: $0b
    dec e                                         ; $6f30: $1d
    rla                                           ; $6f31: $17
    ccf                                           ; $6f32: $3f
    dec hl                                        ; $6f33: $2b
    ld a, l                                       ; $6f34: $7d
    ld d, e                                       ; $6f35: $53
    rst $28                                       ; $6f36: $ef
    jr @-$3f                                      ; $6f37: $18 $bf

    rst $38                                       ; $6f39: $ff
    xor a                                         ; $6f3a: $af
    ld [$5e0b], a                                 ; $6f3b: $ea $0b $5e
    add hl, bc                                    ; $6f3e: $09
    dec de                                        ; $6f3f: $1b
    rla                                           ; $6f40: $17
    rra                                           ; $6f41: $1f
    add b                                         ; $6f42: $80
    ldh [rNR12], a                                ; $6f43: $e0 $12
    ldh [$60], a                                  ; $6f45: $e0 $60
    ld hl, sp-$68                                 ; $6f47: $f8 $98
    inc a                                         ; $6f49: $3c
    db $e4                                        ; $6f4a: $e4
    rst $38                                       ; $6f4b: $ff
    ld b, $bb                                     ; $6f4c: $06 $bb
    rst $38                                       ; $6f4e: $ff
    db $f4                                        ; $6f4f: $f4

jr_0d8_6f50:
    db $fd                                        ; $6f50: $fd
    ld a, [c]                                     ; $6f51: $f2
    ld h, b                                       ; $6f52: $60
    inc c                                         ; $6f53: $0c
    ldh [rNR13], a                                ; $6f54: $e0 $13
    cp $00                                        ; $6f56: $fe $00
    rst $38                                       ; $6f58: $ff
    or $fb                                        ; $6f59: $f6 $fb
    or $f3                                        ; $6f5b: $f6 $f3
    cp l                                          ; $6f5d: $bd
    ld a, a                                       ; $6f5e: $7f
    add c                                         ; $6f5f: $81
    sbc h                                         ; $6f60: $9c
    ld e, h                                       ; $6f61: $5c
    sbc h                                         ; $6f62: $9c
    db $fc                                        ; $6f63: $fc
    db $fc                                        ; $6f64: $fc

jr_0d8_6f65:
    ret nz                                        ; $6f65: $c0

    ld [hl-], a                                   ; $6f66: $32
    and h                                         ; $6f67: $a4
    inc bc                                        ; $6f68: $03
    ld [bc], a                                    ; $6f69: $02
    call Call_000_0f0f                            ; $6f6a: $cd $0f $0f
    ld b, $1f                                     ; $6f6d: $06 $1f
    db $10                                        ; $6f6f: $10
    ld a, [de]                                    ; $6f70: $1a
    rla                                           ; $6f71: $17
    jr c, jr_0d8_6f50                             ; $6f72: $38 $dc

    inc b                                         ; $6f74: $04
    ldh [$09], a                                  ; $6f75: $e0 $09
    ld a, a                                       ; $6f77: $7f

jr_0d8_6f78:
    add h                                         ; $6f78: $84
    ldh [rDIV], a                                 ; $6f79: $e0 $04
    rst $08                                       ; $6f7b: $cf
    cp a                                          ; $6f7c: $bf
    rst $20                                       ; $6f7d: $e7
    cp a                                          ; $6f7e: $bf
    ld [c], a                                     ; $6f7f: $e2
    inc bc                                        ; $6f80: $03
    ld l, $1d                                     ; $6f81: $2e $1d
    nop                                           ; $6f83: $00
    ld d, $0e                                     ; $6f84: $16 $0e
    add hl, bc                                    ; $6f86: $09
    rlca                                          ; $6f87: $07
    ld b, $fe                                     ; $6f88: $06 $fe
    cp $fe                                        ; $6f8a: $fe $fe
    rlca                                          ; $6f8c: $07
    ld [bc], a                                    ; $6f8d: $02
    db $e3                                        ; $6f8e: $e3
    db $dd                                        ; $6f8f: $dd
    ei                                            ; $6f90: $fb
    db $dd                                        ; $6f91: $dd
    ld e, [hl]                                    ; $6f92: $5e
    inc b                                         ; $6f93: $04
    sbc $14                                       ; $6f94: $de $14
    ld e, h                                       ; $6f96: $5c
    inc bc                                        ; $6f97: $03
    add b                                         ; $6f98: $80
    db $eb                                        ; $6f99: $eb
    ld [bc], a                                    ; $6f9a: $02
    ei                                            ; $6f9b: $fb
    db $fc                                        ; $6f9c: $fc
    rst $08                                       ; $6f9d: $cf
    di                                            ; $6f9e: $f3
    inc a                                         ; $6f9f: $3c
    call z, Call_000_1ef0                         ; $6fa0: $cc $f0 $1e
    jr nc, jr_0d8_6f65                            ; $6fa3: $30 $c0

    ret nz                                        ; $6fa5: $c0

    jp c, $e61b                                   ; $6fa6: $da $1b $e6

    dec hl                                        ; $6fa9: $2b
    ret nz                                        ; $6faa: $c0

    adc h                                         ; $6fab: $8c
    add b                                         ; $6fac: $80
    db $dd                                        ; $6fad: $dd
    rlca                                          ; $6fae: $07
    nop                                           ; $6faf: $00
    rlca                                          ; $6fb0: $07
    ccf                                           ; $6fb1: $3f
    jr c, @+$01                                   ; $6fb2: $38 $ff

    add $ef                                       ; $6fb4: $c6 $ef
    sub a                                         ; $6fb6: $97
    rst $00                                       ; $6fb7: $c7
    adc h                                         ; $6fb8: $8c
    ld a, h                                       ; $6fb9: $7c
    add hl, bc                                    ; $6fba: $09
    sbc a                                         ; $6fbb: $9f
    rst $38                                       ; $6fbc: $ff
    adc a                                         ; $6fbd: $8f
    ld [bc], a                                    ; $6fbe: $02
    nop                                           ; $6fbf: $00
    add h                                         ; $6fc0: $84
    ld bc, $b7cf                                  ; $6fc1: $01 $cf $b7
    nop                                           ; $6fc4: $00
    rst $00                                       ; $6fc5: $c7
    cp [hl]                                       ; $6fc6: $be
    rst $38                                       ; $6fc7: $ff
    add $3f                                       ; $6fc8: $c6 $3f
    jr c, jr_0d8_6fd3                             ; $6fca: $38 $07

    rlca                                          ; $6fcc: $07
    add d                                         ; $6fcd: $82
    ldh [rNR30], a                                ; $6fce: $e0 $1a

jr_0d8_6fd0:
    ret c                                         ; $6fd0: $d8

    ld l, b                                       ; $6fd1: $68
    db $fc                                        ; $6fd2: $fc

jr_0d8_6fd3:
    db $e4                                        ; $6fd3: $e4
    xor $80                                       ; $6fd4: $ee $80
    add hl, bc                                    ; $6fd6: $09
    db $fd                                        ; $6fd7: $fd
    ld [$f6f9], sp                                ; $6fd8: $08 $f9 $f6
    ld sp, hl                                     ; $6fdb: $f9
    or $6c                                        ; $6fdc: $f6 $6c
    dec bc                                        ; $6fde: $0b
    xor $fa                                       ; $6fdf: $ee $fa
    db $fc                                        ; $6fe1: $fc
    inc b                                         ; $6fe2: $04
    db $e4                                        ; $6fe3: $e4
    ret c                                         ; $6fe4: $d8

    ld l, b                                       ; $6fe5: $68
    jr c, jr_0d8_6fd0                             ; $6fe6: $38 $e8

    sbc $6a                                       ; $6fe8: $de $6a
    ldh [rNR41], a                                ; $6fea: $e0 $20
    ldh [$e0], a                                  ; $6fec: $e0 $e0
    ld h, h                                       ; $6fee: $64
    ld [c], a                                     ; $6fef: $e2
    db $e4                                        ; $6ff0: $e4
    ld h, b                                       ; $6ff1: $60
    inc e                                         ; $6ff2: $1c
    rra                                           ; $6ff3: $1f
    dec d                                         ; $6ff4: $15
    ccf                                           ; $6ff5: $3f
    ld l, $67                                     ; $6ff6: $2e $67
    add hl, bc                                    ; $6ff8: $09
    ld e, a                                       ; $6ff9: $5f
    rst $18                                       ; $6ffa: $df
    and a                                         ; $6ffb: $a7
    rst $08                                       ; $6ffc: $cf
    ld e, h                                       ; $6ffd: $5c
    ld b, $7f                                     ; $6ffe: $06 $7f
    ld c, a                                       ; $7000: $4f
    ld e, [hl]                                    ; $7001: $5e
    ld a, [bc]                                    ; $7002: $0a
    inc c                                         ; $7003: $0c
    scf                                           ; $7004: $37
    ld l, $18                                     ; $7005: $2e $18
    rla                                           ; $7007: $17
    ldh [$0c], a                                  ; $7008: $e0 $0c
    add b                                         ; $700a: $80
    add hl, de                                    ; $700b: $19
    ld a, h                                       ; $700c: $7c
    db $e4                                        ; $700d: $e4
    ld [bc], a                                    ; $700e: $02
    rst $28                                       ; $700f: $ef
    ei                                            ; $7010: $fb
    rst $38                                       ; $7011: $ff
    db $fc                                        ; $7012: $fc
    db $fc                                        ; $7013: $fc
    rst $38                                       ; $7014: $ff
    ld [c], a                                     ; $7015: $e2
    dec e                                         ; $7016: $1d
    db $fd                                        ; $7017: $fd
    ld b, c                                       ; $7018: $41
    cp $e0                                        ; $7019: $fe $e0
    inc bc                                        ; $701b: $03
    db $fd                                        ; $701c: $fd
    ei                                            ; $701d: $fb
    db $dd                                        ; $701e: $dd

jr_0d8_701f:
    rst $20                                       ; $701f: $e7
    db $dd                                        ; $7020: $dd
    ldh [rNR32], a                                ; $7021: $e0 $1c
    ldh [rDIV], a                                 ; $7023: $e0 $04
    add hl, hl                                    ; $7025: $29
    ld [c], a                                     ; $7026: $e2
    adc h                                         ; $7027: $8c
    ld h, b                                       ; $7028: $60
    xor $07                                       ; $7029: $ee $07
    rlca                                          ; $702b: $07
    rrca                                          ; $702c: $0f
    ld [$390c], sp                                ; $702d: $08 $0c $39
    dec bc                                        ; $7030: $0b
    dec de                                        ; $7031: $1b
    cp $01                                        ; $7032: $fe $01
    ld h, d                                       ; $7034: $62
    inc b                                         ; $7035: $04
    ld e, [hl]                                    ; $7036: $5e
    inc b                                         ; $7037: $04
    rst $10                                       ; $7038: $d7
    xor a                                         ; $7039: $af
    ld l, b                                       ; $703a: $68
    dec b                                         ; $703b: $05
    nop                                           ; $703c: $00
    ld e, a                                       ; $703d: $5f
    ccf                                           ; $703e: $3f
    inc hl                                        ; $703f: $23
    rra                                           ; $7040: $1f
    inc de                                        ; $7041: $13
    dec c                                         ; $7042: $0d
    dec bc                                        ; $7043: $0b
    ld b, $c7                                     ; $7044: $06 $c7
    ldh [rSC], a                                  ; $7046: $e0 $02
    ld h, b                                       ; $7048: $60
    ld c, $3f                                     ; $7049: $0e $3f
    pop hl                                        ; $704b: $e1
    or e                                          ; $704c: $b3
    ld a, d                                       ; $704d: $7a
    ld [bc], a                                    ; $704e: $02
    db $fc                                        ; $704f: $fc
    add hl, de                                    ; $7050: $19
    cp $19                                        ; $7051: $fe $19
    ld bc, $f6f9                                  ; $7053: $01 $f9 $f6
    or a                                          ; $7056: $b7
    db $fc                                        ; $7057: $fc
    ld a, a                                       ; $7058: $7f
    or e                                          ; $7059: $b3
    ld a, h                                       ; $705a: $7c
    add d                                         ; $705b: $82
    ld bc, $5ce0                                  ; $705c: $01 $e0 $5c
    xor [hl]                                      ; $705f: $ae
    ld h, h                                       ; $7060: $64
    inc l                                         ; $7061: $2c
    ld h, b                                       ; $7062: $60
    db $fd                                        ; $7063: $fd
    ccf                                           ; $7064: $3f
    inc a                                         ; $7065: $3c
    ld a, l                                       ; $7066: $7d
    ld b, e                                       ; $7067: $43
    jp hl                                         ; $7068: $e9


    adc h                                         ; $7069: $8c
    ld a, [$af0a]                                 ; $706a: $fa $0a $af
    rst $18                                       ; $706d: $df
    xor a                                         ; $706e: $af
    ld a, h                                       ; $706f: $7c
    ld de, $1b08                                  ; $7070: $11 $08 $1b
    sbc c                                         ; $7073: $99
    rst $38                                       ; $7074: $ff
    nop                                           ; $7075: $00
    push hl                                       ; $7076: $e5
    rra                                           ; $7077: $1f
    jr jr_0d8_7081                                ; $7078: $18 $07

    rlca                                          ; $707a: $07
    jr nz, jr_0d8_709d                            ; $707b: $20 $20

jr_0d8_707d:
    ldh a, [rSB]                                  ; $707d: $f0 $01
    ret nc                                        ; $707f: $d0

    ret c                                         ; $7080: $d8

jr_0d8_7081:
    jr z, jr_0d8_701f                             ; $7081: $28 $9c

    db $f4                                        ; $7083: $f4
    db $fc                                        ; $7084: $fc
    sub h                                         ; $7085: $94
    ld d, [hl]                                    ; $7086: $56
    rrca                                          ; $7087: $0f
    jr nz, jr_0d8_707d                            ; $7088: $20 $f3

    db $fd                                        ; $708a: $fd
    cp $10                                        ; $708b: $fe $10
    push af                                       ; $708d: $f5
    rst $38                                       ; $708e: $ff
    push af                                       ; $708f: $f5
    or $fa                                        ; $7090: $f6 $fa
    inc c                                         ; $7092: $0c
    sbc h                                         ; $7093: $9c
    db $f4                                        ; $7094: $f4
    ld a, b                                       ; $7095: $78
    xor b                                         ; $7096: $a8
    add b                                         ; $7097: $80
    ld sp, hl                                     ; $7098: $f9
    nop                                           ; $7099: $00
    db $eb                                        ; $709a: $eb
    add h                                         ; $709b: $84
    nop                                           ; $709c: $00

jr_0d8_709d:
    stop                                          ; $709d: $10 $00
    ld e, $00                                     ; $709f: $1e $00
    inc l                                         ; $70a1: $2c
    nop                                           ; $70a2: $00
    ld a, [hl-]                                   ; $70a3: $3a
    nop                                           ; $70a4: $00
    ld c, b                                       ; $70a5: $48
    nop                                           ; $70a6: $00
    ld d, [hl]                                    ; $70a7: $56
    nop                                           ; $70a8: $00
    ld h, h                                       ; $70a9: $64
    nop                                           ; $70aa: $00
    ld [hl], h                                    ; $70ab: $74
    nop                                           ; $70ac: $00
    inc b                                         ; $70ad: $04
    nop                                           ; $70ae: $00
    and $1b                                       ; $70af: $e6 $1b
    ld a, [c]                                     ; $70b1: $f2
    db $10                                        ; $70b2: $10
    ld sp, hl                                     ; $70b3: $f9
    di                                            ; $70b4: $f3
    ld sp, hl                                     ; $70b5: $f9
    ei                                            ; $70b6: $fb
    ld sp, hl                                     ; $70b7: $f9
    inc bc                                        ; $70b8: $03
    ld sp, hl                                     ; $70b9: $f9
    ld b, $04                                     ; $70ba: $06 $04
    ld [$1be6], sp                                ; $70bc: $08 $e6 $1b
    ld a, [c]                                     ; $70bf: $f2

jr_0d8_70c0:
    db $10                                        ; $70c0: $10
    ld sp, hl                                     ; $70c1: $f9
    di                                            ; $70c2: $f3
    ld sp, hl                                     ; $70c3: $f9
    ei                                            ; $70c4: $fb
    ld sp, hl                                     ; $70c5: $f9
    inc bc                                        ; $70c6: $03
    ld sp, hl                                     ; $70c7: $f9
    rlca                                          ; $70c8: $07
    inc b                                         ; $70c9: $04
    db $10                                        ; $70ca: $10
    and $1b                                       ; $70cb: $e6 $1b
    ld a, [c]                                     ; $70cd: $f2

jr_0d8_70ce:
    db $10                                        ; $70ce: $10
    ld sp, hl                                     ; $70cf: $f9
    di                                            ; $70d0: $f3
    ld sp, hl                                     ; $70d1: $f9
    ei                                            ; $70d2: $fb
    ld sp, hl                                     ; $70d3: $f9
    inc bc                                        ; $70d4: $03
    ld sp, hl                                     ; $70d5: $f9
    rlca                                          ; $70d6: $07
    inc b                                         ; $70d7: $04
    jr jr_0d8_70c0                                ; $70d8: $18 $e6

    dec de                                        ; $70da: $1b
    ld a, [c]                                     ; $70db: $f2

jr_0d8_70dc:
    db $10                                        ; $70dc: $10
    ld sp, hl                                     ; $70dd: $f9
    di                                            ; $70de: $f3
    ld sp, hl                                     ; $70df: $f9
    ei                                            ; $70e0: $fb
    ld sp, hl                                     ; $70e1: $f9
    inc bc                                        ; $70e2: $03
    ld sp, hl                                     ; $70e3: $f9
    ld b, $04                                     ; $70e4: $06 $04
    jr nz, jr_0d8_70ce                            ; $70e6: $20 $e6

    dec de                                        ; $70e8: $1b
    ld a, [c]                                     ; $70e9: $f2

jr_0d8_70ea:
    db $10                                        ; $70ea: $10
    ld sp, hl                                     ; $70eb: $f9
    db $f4                                        ; $70ec: $f4
    ld sp, hl                                     ; $70ed: $f9
    db $fc                                        ; $70ee: $fc
    ld sp, hl                                     ; $70ef: $f9
    inc b                                         ; $70f0: $04
    ld sp, hl                                     ; $70f1: $f9
    rlca                                          ; $70f2: $07

jr_0d8_70f3:
    inc b                                         ; $70f3: $04
    jr z, jr_0d8_70dc                             ; $70f4: $28 $e6

    dec de                                        ; $70f6: $1b
    ld a, [c]                                     ; $70f7: $f2
    db $10                                        ; $70f8: $10
    ld sp, hl                                     ; $70f9: $f9
    di                                            ; $70fa: $f3
    ld sp, hl                                     ; $70fb: $f9
    ei                                            ; $70fc: $fb
    ld sp, hl                                     ; $70fd: $f9
    inc bc                                        ; $70fe: $03
    ld sp, hl                                     ; $70ff: $f9
    rlca                                          ; $7100: $07
    dec b                                         ; $7101: $05
    jr nc, jr_0d8_70ea                            ; $7102: $30 $e6

    dec de                                        ; $7104: $1b
    ld a, [c]                                     ; $7105: $f2
    db $10                                        ; $7106: $10
    ld sp, hl                                     ; $7107: $f9
    di                                            ; $7108: $f3
    ld sp, hl                                     ; $7109: $f9
    ei                                            ; $710a: $fb
    ld hl, sp+$03                                 ; $710b: $f8 $03
    ld [$fa03], sp                                ; $710d: $08 $03 $fa
    dec bc                                        ; $7110: $0b
    dec b                                         ; $7111: $05
    ld a, [hl-]                                   ; $7112: $3a
    and $1b                                       ; $7113: $e6 $1b
    ld a, [c]                                     ; $7115: $f2
    db $10                                        ; $7116: $10
    ld sp, hl                                     ; $7117: $f9
    di                                            ; $7118: $f3
    ld sp, hl                                     ; $7119: $f9
    ei                                            ; $711a: $fb
    ld hl, sp+$03                                 ; $711b: $f8 $03
    ld [$fa03], sp                                ; $711d: $08 $03 $fa
    dec bc                                        ; $7120: $0b
    ld b, b                                       ; $7121: $40
    inc b                                         ; $7122: $04
    cp d                                          ; $7123: $ba
    ld [bc], a                                    ; $7124: $02
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    rlca                                          ; $7128: $07
    rlca                                          ; $7129: $07
    ld a, [bc]                                    ; $712a: $0a
    rrca                                          ; $712b: $0f
    inc [hl]                                      ; $712c: $34
    ccf                                           ; $712d: $3f
    nop                                           ; $712e: $00
    ld [hl], b                                    ; $712f: $70
    ld a, a                                       ; $7130: $7f
    ld l, d                                       ; $7131: $6a
    ld a, l                                       ; $7132: $7d
    ret nz                                        ; $7133: $c0

    rst $38                                       ; $7134: $ff
    xor $ff                                       ; $7135: $ee $ff
    nop                                           ; $7137: $00
    sub l                                         ; $7138: $95
    rst $38                                       ; $7139: $ff
    rst $08                                       ; $713a: $cf
    rst $38                                       ; $713b: $ff
    sbc $ff                                       ; $713c: $de $ff
    ld a, [hl]                                    ; $713e: $7e
    ld a, a                                       ; $713f: $7f
    nop                                           ; $7140: $00
    ld a, a                                       ; $7141: $7f
    ld a, a                                       ; $7142: $7f
    ccf                                           ; $7143: $3f
    ccf                                           ; $7144: $3f
    rrca                                          ; $7145: $0f
    rrca                                          ; $7146: $0f
    ld bc, $0401                                  ; $7147: $01 $01 $04
    db $fc                                        ; $714a: $fc
    db $fc                                        ; $714b: $fc
    dec bc                                        ; $714c: $0b
    rst $38                                       ; $714d: $ff
    nop                                           ; $714e: $00
    ld [bc], a                                    ; $714f: $02
    jr nc, jr_0d8_70f3                            ; $7150: $30 $a1

    cp $00                                        ; $7152: $fe $00
    jr @+$01                                      ; $7154: $18 $ff

    inc [hl]                                      ; $7156: $34
    rst $38                                       ; $7157: $ff
    xor c                                         ; $7158: $a9
    rst $38                                       ; $7159: $ff
    ld sp, $00ff                                  ; $715a: $31 $ff $00
    or d                                          ; $715d: $b2
    rst $38                                       ; $715e: $ff
    ld a, [$ffff]                                 ; $715f: $fa $ff $ff
    rst $38                                       ; $7162: $ff
    db $fc                                        ; $7163: $fc
    db $fc                                        ; $7164: $fc
    nop                                           ; $7165: $00
    cp h                                          ; $7166: $bc
    inc a                                         ; $7167: $3c
    set 7, a                                      ; $7168: $cb $ff
    ld b, b                                       ; $716a: $40

jr_0d8_716b:
    rst $38                                       ; $716b: $ff
    inc bc                                        ; $716c: $03
    db $fd                                        ; $716d: $fd
    ld b, b                                       ; $716e: $40
    ld bc, $0026                                  ; $716f: $01 $26 $00
    add b                                         ; $7172: $80
    ld a, a                                       ; $7173: $7f
    ret                                           ; $7174: $c9


    ccf                                           ; $7175: $3f
    sub e                                         ; $7176: $93
    ld a, a                                       ; $7177: $7f
    nop                                           ; $7178: $00
    ret z                                         ; $7179: $c8

    rst $38                                       ; $717a: $ff
    adc [hl]                                      ; $717b: $8e
    rst $38                                       ; $717c: $ff
    add $ff                                       ; $717d: $c6 $ff
    sbc a                                         ; $717f: $9f
    rst $38                                       ; $7180: $ff
    ld bc, $ffc7                                  ; $7181: $01 $c7 $ff
    rst $18                                       ; $7184: $df
    rst $38                                       ; $7185: $ff
    ld a, h                                       ; $7186: $7c
    ld e, h                                       ; $7187: $5c
    nop                                           ; $7188: $00
    ld bc, $4000                                  ; $7189: $01 $00 $40
    inc b                                         ; $718c: $04
    ld bc, $0200                                  ; $718d: $01 $00 $02
    ld b, $01                                     ; $7190: $06 $01
    rlca                                          ; $7192: $07
    ld bc, $0007                                  ; $7193: $01 $07 $00
    inc bc                                        ; $7196: $03
    rlca                                          ; $7197: $07
    rlca                                          ; $7198: $07
    rlca                                          ; $7199: $07
    ld b, $06                                     ; $719a: $06 $06
    ld [bc], a                                    ; $719c: $02
    ld b, $30                                     ; $719d: $06 $30
    ld b, $06                                     ; $719f: $06 $06
    inc d                                         ; $71a1: $14
    ld [$081c], sp                                ; $71a2: $08 $1c $08
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    ld bc, $0001                                  ; $71a7: $01 $01 $00
    ld e, $1f                                     ; $71aa: $1e $1f
    inc [hl]                                      ; $71ac: $34

jr_0d8_71ad:
    ccf                                           ; $71ad: $3f
    ld l, d                                       ; $71ae: $6a
    ld a, l                                       ; $71af: $7d
    ld h, a                                       ; $71b0: $67
    ld a, b                                       ; $71b1: $78
    ld bc, $fdd2                                  ; $71b2: $01 $d2 $fd
    db $d3                                        ; $71b5: $d3
    rst $38                                       ; $71b6: $ff
    rst $28                                       ; $71b7: $ef
    rst $38                                       ; $71b8: $ff
    sub $02                                       ; $71b9: $d6 $02
    nop                                           ; $71bb: $00
    jr nz, jr_0d8_71ad                            ; $71bc: $20 $ef

    rst $38                                       ; $71be: $ff
    add b                                         ; $71bf: $80
    ld [$0307], sp                                ; $71c0: $08 $07 $03
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    ld e, $24                                     ; $71c5: $1e $24
    ld e, $e5                                     ; $71c7: $1e $e5
    add b                                         ; $71c9: $80
    nop                                           ; $71ca: $00
    inc b                                         ; $71cb: $04
    ei                                            ; $71cc: $fb
    add h                                         ; $71cd: $84
    jr z, jr_0d8_71e4                             ; $71ce: $28 $14

    rst $38                                       ; $71d0: $ff
    nop                                           ; $71d1: $00
    ld c, h                                       ; $71d2: $4c
    rst $38                                       ; $71d3: $ff
    adc l                                         ; $71d4: $8d
    rst $38                                       ; $71d5: $ff
    and e                                         ; $71d6: $a3
    rst $38                                       ; $71d7: $ff
    pop de                                        ; $71d8: $d1
    rst $38                                       ; $71d9: $ff
    db $10                                        ; $71da: $10
    db $e3                                        ; $71db: $e3
    rst $38                                       ; $71dc: $ff
    ei                                            ; $71dd: $fb
    ld h, $00                                     ; $71de: $26 $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    db $fc                                        ; $71e2: $fc
    db $fc                                        ; $71e3: $fc

jr_0d8_71e4:
    db $10                                        ; $71e4: $10
    dec hl                                        ; $71e5: $2b
    rst $38                                       ; $71e6: $ff
    ld [bc], a                                    ; $71e7: $02
    and h                                         ; $71e8: $a4
    jr nz, jr_0d8_716b                            ; $71e9: $20 $80

    ld a, a                                       ; $71eb: $7f
    inc bc                                        ; $71ec: $03
    rst $38                                       ; $71ed: $ff
    nop                                           ; $71ee: $00
    ld l, c                                       ; $71ef: $69
    rst $30                                       ; $71f0: $f7
    or c                                          ; $71f1: $b1
    rst $38                                       ; $71f2: $ff
    cp d                                          ; $71f3: $ba
    rst $38                                       ; $71f4: $ff
    add hl, de                                    ; $71f5: $19
    rst $38                                       ; $71f6: $ff
    ld c, b                                       ; $71f7: $48
    or a                                          ; $71f8: $b7
    and b                                         ; $71f9: $a0
    nop                                           ; $71fa: $00
    ldh a, [$f0]                                  ; $71fb: $f0 $f0
    add b                                         ; $71fd: $80
    ld [$0808], sp                                ; $71fe: $08 $08 $08
    inc c                                         ; $7201: $0c
    nop                                           ; $7202: $00
    inc c                                         ; $7203: $0c
    ld [bc], a                                    ; $7204: $02
    ld c, $02                                     ; $7205: $0e $02
    ld c, $01                                     ; $7207: $0e $01
    rrca                                          ; $7209: $0f
    dec bc                                        ; $720a: $0b
    jr nz, jr_0d8_721c                            ; $720b: $20 $0f

    rlca                                          ; $720d: $07
    inc b                                         ; $720e: $04
    nop                                           ; $720f: $00
    rrca                                          ; $7210: $0f
    rrca                                          ; $7211: $0f
    ld c, $0e                                     ; $7212: $0e $0e
    inc c                                         ; $7214: $0c
    ret nz                                        ; $7215: $c0

    ld bc, $8000                                  ; $7216: $01 $00 $80
    jr jr_0d8_721e                                ; $7219: $18 $03

    inc bc                                        ; $721b: $03

jr_0d8_721c:
    dec e                                         ; $721c: $1d
    rra                                           ; $721d: $1f

jr_0d8_721e:
    jr c, @+$41                                   ; $721e: $38 $3f

    ld bc, $7d62                                  ; $7220: $01 $62 $7d
    ld d, a                                       ; $7223: $57
    ld a, b                                       ; $7224: $78
    ld [c], a                                     ; $7225: $e2
    db $fd                                        ; $7226: $fd
    sub $02                                       ; $7227: $d6 $02
    ld bc, $dc04                                  ; $7229: $01 $04 $dc
    rst $38                                       ; $722c: $ff
    ld l, a                                       ; $722d: $6f
    ld a, a                                       ; $722e: $7f
    ld a, [hl]                                    ; $722f: $7e
    cp $00                                        ; $7230: $fe $00
    rra                                           ; $7232: $1f
    dec de                                        ; $7233: $1b
    ld bc, $010f                                  ; $7234: $01 $0f $01
    inc b                                         ; $7237: $04
    nop                                           ; $7238: $00
    ld a, a                                       ; $7239: $7f
    ld a, a                                       ; $723a: $7f
    and b                                         ; $723b: $a0
    ld a, [hl]                                    ; $723c: $7e
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    ld c, $f1                                     ; $723f: $0e $f1
    inc b                                         ; $7241: $04
    ei                                            ; $7242: $fb
    add b                                         ; $7243: $80
    rst $38                                       ; $7244: $ff
    ld [$00ff], sp                                ; $7245: $08 $ff $00
    inc b                                         ; $7248: $04
    rst $38                                       ; $7249: $ff
    inc c                                         ; $724a: $0c
    rst $38                                       ; $724b: $ff
    dec l                                         ; $724c: $2d
    rst $38                                       ; $724d: $ff
    rra                                           ; $724e: $1f
    rst $38                                       ; $724f: $ff
    ld [$ff2f], sp                                ; $7250: $08 $2f $ff
    rst $18                                       ; $7253: $df
    ei                                            ; $7254: $fb
    rst $38                                       ; $7255: $ff
    nop                                           ; $7256: $00
    rst $38                                       ; $7257: $ff
    ccf                                           ; $7258: $3f
    ccf                                           ; $7259: $3f
    dec b                                         ; $725a: $05
    add b                                         ; $725b: $80
    add b                                         ; $725c: $80
    ld a, [hl]                                    ; $725d: $7e
    cp $05                                        ; $725e: $fe $05
    ld [hl+], a                                   ; $7260: $22
    ld de, $2001                                  ; $7261: $11 $01 $20
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    inc [hl]                                      ; $7266: $34
    rst $38                                       ; $7267: $ff
    sbc b                                         ; $7268: $98
    rst $30                                       ; $7269: $f7
    ld e, l                                       ; $726a: $5d
    db $e3                                        ; $726b: $e3
    adc l                                         ; $726c: $8d
    rst $30                                       ; $726d: $f7
    nop                                           ; $726e: $00
    dec e                                         ; $726f: $1d
    rst $38                                       ; $7270: $ff
    xor a                                         ; $7271: $af
    cp $ff                                        ; $7272: $fe $ff
    rst $38                                       ; $7274: $ff
    ld a, [hl]                                    ; $7275: $7e
    cp $22                                        ; $7276: $fe $22
    ldh [$e0], a                                  ; $7278: $e0 $e0
    nop                                           ; $727a: $00
    add hl, bc                                    ; $727b: $09
    inc c                                         ; $727c: $0c
    inc c                                         ; $727d: $0c
    ld a, [bc]                                    ; $727e: $0a
    ld a, h                                       ; $727f: $7c
    nop                                           ; $7280: $00
    inc bc                                        ; $7281: $03
    xor h                                         ; $7282: $ac
    ld a, [hl]                                    ; $7283: $7e
    nop                                           ; $7284: $00
    dec c                                         ; $7285: $0d
    ld a, h                                       ; $7286: $7c
    nop                                           ; $7287: $00
    rlca                                          ; $7288: $07
    ld a, [hl]                                    ; $7289: $7e
    nop                                           ; $728a: $00
    add b                                         ; $728b: $80
    ld [$0808], sp                                ; $728c: $08 $08 $08
    pop de                                        ; $728f: $d1
    nop                                           ; $7290: $00
    add hl, de                                    ; $7291: $19
    add d                                         ; $7292: $82
    add hl, bc                                    ; $7293: $09
    ld a, [de]                                    ; $7294: $1a
    ld [bc], a                                    ; $7295: $02
    ld de, $ffd5                                  ; $7296: $11 $d5 $ff
    db $eb                                        ; $7299: $eb
    inc [hl]                                      ; $729a: $34
    ld bc, $fe62                                  ; $729b: $01 $62 $fe
    add [hl]                                      ; $729e: $86
    ld bc, $017f                                  ; $729f: $01 $7f $01
    ld a, a                                       ; $72a2: $7f
    ccf                                           ; $72a3: $3f
    dec sp                                        ; $72a4: $3b
    add b                                         ; $72a5: $80
    ld [$303f], sp                                ; $72a6: $08 $3f $30
    ccf                                           ; $72a9: $3f
    ret nc                                        ; $72aa: $d0

    add b                                         ; $72ab: $80
    jr nz, jr_0d8_730e                            ; $72ac: $20 $60

    ld bc, $0aff                                  ; $72ae: $01 $ff $0a
    rst $38                                       ; $72b1: $ff
    ld b, $00                                     ; $72b2: $06 $00
    rst $38                                       ; $72b4: $ff
    inc e                                         ; $72b5: $1c
    rst $38                                       ; $72b6: $ff
    xor h                                         ; $72b7: $ac
    rst $38                                       ; $72b8: $ff
    inc e                                         ; $72b9: $1c
    ei                                            ; $72ba: $fb
    ccf                                           ; $72bb: $3f
    jr nz, @-$0d                                  ; $72bc: $20 $f1

    sbc [hl]                                      ; $72be: $9e
    add d                                         ; $72bf: $82
    nop                                           ; $72c0: $00
    ccf                                           ; $72c1: $3f
    ccf                                           ; $72c2: $3f
    ldh a, [$f0]                                  ; $72c3: $f0 $f0
    inc l                                         ; $72c5: $2c
    jr z, @-$02                                   ; $72c6: $28 $fc

    inc bc                                        ; $72c8: $03
    nop                                           ; $72c9: $00
    ld de, $8203                                  ; $72ca: $11 $03 $82
    nop                                           ; $72cd: $00
    ld h, b                                       ; $72ce: $60
    rst $38                                       ; $72cf: $ff
    inc sp                                        ; $72d0: $33
    nop                                           ; $72d1: $00
    rst $38                                       ; $72d2: $ff
    cp e                                          ; $72d3: $bb
    rst $30                                       ; $72d4: $f7
    ld l, a                                       ; $72d5: $6f
    rst $38                                       ; $72d6: $ff
    rst $30                                       ; $72d7: $f7
    cp $7f                                        ; $72d8: $fe $7f
    inc b                                         ; $72da: $04
    db $fc                                        ; $72db: $fc
    rst $38                                       ; $72dc: $ff
    cp $fc                                        ; $72dd: $fe $fc
    db $fc                                        ; $72df: $fc
    add b                                         ; $72e0: $80
    jr jr_0d8_72e3                                ; $72e1: $18 $00

jr_0d8_72e3:
    nop                                           ; $72e3: $00
    cp e                                          ; $72e4: $bb
    ld [hl], h                                    ; $72e5: $74
    add hl, bc                                    ; $72e6: $09
    ld bc, $017c                                  ; $72e7: $01 $7c $01
    inc bc                                        ; $72ea: $03
    jr jr_0d8_736c                                ; $72eb: $18 $7f

    ld bc, $7d06                                  ; $72ed: $01 $06 $7d
    ld hl, $107e                                  ; $72f0: $21 $7e $10
    nop                                           ; $72f3: $00
    inc e                                         ; $72f4: $1c
    rra                                           ; $72f5: $1f
    ld l, d                                       ; $72f6: $6a
    ld a, a                                       ; $72f7: $7f
    ld e, b                                       ; $72f8: $58
    ld a, a                                       ; $72f9: $7f
    halt                                          ; $72fa: $76
    ld a, a                                       ; $72fb: $7f
    ld b, c                                       ; $72fc: $41
    db $ec                                        ; $72fd: $ec
    nop                                           ; $72fe: $00
    ld [bc], a                                    ; $72ff: $02
    sbc $ff                                       ; $7300: $de $ff
    db $ec                                        ; $7302: $ec
    rst $38                                       ; $7303: $ff
    db $ed                                        ; $7304: $ed
    nop                                           ; $7305: $00
    ld [bc], a                                    ; $7306: $02
    nop                                           ; $7307: $00
    ld a, l                                       ; $7308: $7d
    ld a, a                                       ; $7309: $7f
    ld a, $3f                                     ; $730a: $3e $3f
    rrca                                          ; $730c: $0f
    rlca                                          ; $730d: $07

jr_0d8_730e:
    ld bc, $8201                                  ; $730e: $01 $01 $82
    nop                                           ; $7311: $00
    ld bc, $007f                                  ; $7312: $01 $7f $00
    rst $38                                       ; $7315: $ff
    ld [$04f7], sp                                ; $7316: $08 $f7 $04
    ld a, [bc]                                    ; $7319: $0a
    jr jr_0d8_7324                                ; $731a: $18 $08

    rst $38                                       ; $731c: $ff
    jr nc, @+$01                                  ; $731d: $30 $ff

    ld a, h                                       ; $731f: $7c
    ld e, h                                       ; $7320: $5c
    ld bc, $ff7f                                  ; $7321: $01 $7f $ff

jr_0d8_7324:
    ld a, [hl]                                    ; $7324: $7e
    ld [$3fff], sp                                ; $7325: $08 $ff $3f
    rst $30                                       ; $7328: $f7
    cp a                                          ; $7329: $bf
    ldh [rSB], a                                  ; $732a: $e0 $01
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    ldh [rSC], a                                  ; $732e: $e0 $02
    ldh [$9c], a                                  ; $7330: $e0 $9c
    db $fc                                        ; $7332: $fc
    ld a, [bc]                                    ; $7333: $0a
    cp $01                                        ; $7334: $fe $01
    cp $00                                        ; $7336: $fe $00
    and h                                         ; $7338: $a4
    jr nz, @+$01                                  ; $7339: $20 $ff

    ld l, e                                       ; $733b: $6b
    jr jr_0d8_7340                                ; $733c: $18 $02

    ld a, c                                       ; $733e: $79
    rst $38                                       ; $733f: $ff

jr_0d8_7340:
    dec de                                        ; $7340: $1b
    rst $38                                       ; $7341: $ff
    ccf                                           ; $7342: $3f
    nop                                           ; $7343: $00
    rst $38                                       ; $7344: $ff
    cp a                                          ; $7345: $bf
    db $fd                                        ; $7346: $fd
    rst $38                                       ; $7347: $ff
    ld hl, sp-$02                                 ; $7348: $f8 $fe
    db $fc                                        ; $734a: $fc
    ld hl, sp+$77                                 ; $734b: $f8 $77
    ld hl, sp-$80                                 ; $734d: $f8 $80
    jr z, jr_0d8_7355                             ; $734f: $28 $04

    ld a, [bc]                                    ; $7351: $0a
    ld [bc], a                                    ; $7352: $02
    ld a, [bc]                                    ; $7353: $0a

jr_0d8_7354:
    dec b                                         ; $7354: $05

jr_0d8_7355:
    add b                                         ; $7355: $80
    jr nz, jr_0d8_7354                            ; $7356: $20 $fc

    add hl, hl                                    ; $7358: $29
    cp $28                                        ; $7359: $fe $28
    inc b                                         ; $735b: $04
    jr nc, jr_0d8_739d                            ; $735c: $30 $3f

    ld l, h                                       ; $735e: $6c
    ld a, a                                       ; $735f: $7f
    ret c                                         ; $7360: $d8

    ld a, d                                       ; $7361: $7a
    nop                                           ; $7362: $00
    db $fc                                        ; $7363: $fc
    rst $18                                       ; $7364: $df
    ld b, c                                       ; $7365: $41
    ld sp, hl                                     ; $7366: $f9
    ld e, b                                       ; $7367: $58
    ld [bc], a                                    ; $7368: $02
    db $ec                                        ; $7369: $ec
    rst $38                                       ; $736a: $ff
    ld a, d                                       ; $736b: $7a

jr_0d8_736c:
    ld a, a                                       ; $736c: $7f
    dec a                                         ; $736d: $3d
    ld a, [hl]                                    ; $736e: $7e
    ld [bc], a                                    ; $736f: $02
    nop                                           ; $7370: $00
    rlca                                          ; $7371: $07
    rlca                                          ; $7372: $07
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    ld e, a                                       ; $7375: $5f
    rra                                           ; $7376: $1f
    ld [c], a                                     ; $7377: $e2
    rra                                           ; $7378: $1f
    jr z, @+$42                                   ; $7379: $28 $40

    cp a                                          ; $737b: $bf
    add d                                         ; $737c: $82
    ld a, [de]                                    ; $737d: $1a
    ld h, b                                       ; $737e: $60
    or $01                                        ; $737f: $f6 $01
    ld a, c                                       ; $7381: $79
    rst $38                                       ; $7382: $ff
    db $f4                                        ; $7383: $f4
    inc hl                                        ; $7384: $23
    rst $38                                       ; $7385: $ff
    ld hl, sp+$66                                 ; $7386: $f8 $66
    nop                                           ; $7388: $00
    ld [hl], h                                    ; $7389: $74
    ei                                            ; $738a: $fb
    or c                                          ; $738b: $b1
    ld l, $01                                     ; $738c: $2e $01
    add d                                         ; $738e: $82
    ld [bc], a                                    ; $738f: $02
    ld c, b                                       ; $7390: $48
    ld a, h                                       ; $7391: $7c
    and b                                         ; $7392: $a0
    ld a, [bc]                                    ; $7393: $0a
    ld [bc], a                                    ; $7394: $02
    db $fd                                        ; $7395: $fd
    and h                                         ; $7396: $a4
    ld a, [bc]                                    ; $7397: $0a
    ld [de], a                                    ; $7398: $12
    rst $38                                       ; $7399: $ff
    or l                                          ; $739a: $b5
    and b                                         ; $739b: $a0
    inc e                                         ; $739c: $1c

jr_0d8_739d:
    nop                                           ; $739d: $00
    call c, Call_000_00c0                         ; $739e: $dc $c0 $00
    db $ed                                        ; $73a1: $ed
    rst $38                                       ; $73a2: $ff
    ei                                            ; $73a3: $fb
    cp $f7                                        ; $73a4: $fe $f7
    dec b                                         ; $73a6: $05
    rst $38                                       ; $73a7: $ff
    cp $fe                                        ; $73a8: $fe $fe
    ldh a, [$d0]                                  ; $73aa: $f0 $d0
    cp $09                                        ; $73ac: $fe $09
    inc b                                         ; $73ae: $04
    db $ed                                        ; $73af: $ed
    ld bc, $0201                                  ; $73b0: $01 $01 $02
    ld c, $0b                                     ; $73b3: $0e $0b
    rrca                                          ; $73b5: $0f
    dec b                                         ; $73b6: $05
    rrca                                          ; $73b7: $0f
    add hl, bc                                    ; $73b8: $09
    db $fc                                        ; $73b9: $fc
    ld bc, $0d61                                  ; $73ba: $01 $61 $0d
    ld b, $02                                     ; $73bd: $06 $02
    add b                                         ; $73bf: $80
    add hl, sp                                    ; $73c0: $39
    ld bc, $0601                                  ; $73c1: $01 $01 $06
    rlca                                          ; $73c4: $07
    nop                                           ; $73c5: $00
    ld a, [bc]                                    ; $73c6: $0a
    nop                                           ; $73c7: $00
    inc h                                         ; $73c8: $24
    ccf                                           ; $73c9: $3f
    ld l, d                                       ; $73ca: $6a
    ld a, a                                       ; $73cb: $7f
    ld a, h                                       ; $73cc: $7c
    ld e, a                                       ; $73cd: $5f
    ld a, b                                       ; $73ce: $78
    rrca                                          ; $73cf: $0f
    nop                                           ; $73d0: $00
    ld a, h                                       ; $73d1: $7c
    ld e, a                                       ; $73d2: $5f
    ld a, [hl-]                                   ; $73d3: $3a
    ccf                                           ; $73d4: $3f
    dec a                                         ; $73d5: $3d
    ccf                                           ; $73d6: $3f
    ld e, $1f                                     ; $73d7: $1e $1f
    inc b                                         ; $73d9: $04
    inc e                                         ; $73da: $1c
    rra                                           ; $73db: $1f
    ld c, $0f                                     ; $73dc: $0e $0f
    inc bc                                        ; $73de: $03
    add b                                         ; $73df: $80
    ld [bc], a                                    ; $73e0: $02
    rst $38                                       ; $73e1: $ff
    cp [hl]                                       ; $73e2: $be
    ld b, b                                       ; $73e3: $40
    add sp, -$80                                  ; $73e4: $e8 $80
    jr nz, jr_0d8_7408                            ; $73e6: $20 $20

    rst $38                                       ; $73e8: $ff
    ld [hl], b                                    ; $73e9: $70
    rst $38                                       ; $73ea: $ff
    pop hl                                        ; $73eb: $e1
    rst $38                                       ; $73ec: $ff
    dec d                                         ; $73ed: $15
    ret nc                                        ; $73ee: $d0

    rst $38                                       ; $73ef: $ff
    ld [c], a                                     ; $73f0: $e2
    add sp, $00                                   ; $73f1: $e8 $00
    ld [hl], e                                    ; $73f3: $73
    add sp, $00                                   ; $73f4: $e8 $00
    rst $30                                       ; $73f6: $f7
    nop                                           ; $73f7: $00
    inc bc                                        ; $73f8: $03
    nop                                           ; $73f9: $00
    ld a, a                                       ; $73fa: $7f
    ld a, a                                       ; $73fb: $7f
    db $fc                                        ; $73fc: $fc
    ld a, h                                       ; $73fd: $7c
    srl a                                         ; $73fe: $cb $3f
    add b                                         ; $7400: $80
    ld a, a                                       ; $7401: $7f
    ld b, $02                                     ; $7402: $06 $02
    db $fd                                        ; $7404: $fd
    rlca                                          ; $7405: $07
    ld hl, sp+$02                                 ; $7406: $f8 $02

jr_0d8_7408:
    inc b                                         ; $7408: $04
    inc bc                                        ; $7409: $03

jr_0d8_740a:
    inc b                                         ; $740a: $04
    add hl, bc                                    ; $740b: $09
    pop af                                        ; $740c: $f1
    jr nc, @+$01                                  ; $740d: $30 $ff

    add hl, sp                                    ; $740f: $39
    inc b                                         ; $7410: $04
    ld bc, $0a7e                                  ; $7411: $01 $7e $0a
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    cp $de                                        ; $7416: $fe $de
    jr jr_0d8_740a                                ; $7418: $18 $f0

    add b                                         ; $741a: $80
    jr nz, jr_0d8_7408                            ; $741b: $20 $eb

    jr c, @+$0c                                   ; $741d: $38 $0a

    add b                                         ; $741f: $80
    ret nz                                        ; $7420: $c0

    ret nz                                        ; $7421: $c0

    jr nz, jr_0d8_7424                            ; $7422: $20 $00

jr_0d8_7424:
    ldh [rNR41], a                                ; $7424: $e0 $20
    ldh [rNR10], a                                ; $7426: $e0 $10
    ldh a, [$30]                                  ; $7428: $f0 $30
    ldh a, [$90]                                  ; $742a: $f0 $90
    db $10                                        ; $742c: $10
    ldh a, [$d0]                                  ; $742d: $f0 $d0
    ldh a, [rSB]                                  ; $742f: $f0 $01
    ld [$f0b0], sp                                ; $7431: $08 $b0 $f0
    ld h, b                                       ; $7434: $60
    ldh [$08], a                                  ; $7435: $e0 $08
    ret nz                                        ; $7437: $c0

    ret nz                                        ; $7438: $c0

    add b                                         ; $7439: $80
    add b                                         ; $743a: $80
    sbc [hl]                                      ; $743b: $9e
    ld a, [hl+]                                   ; $743c: $2a
    ld c, $0f                                     ; $743d: $0e $0f
    add hl, de                                    ; $743f: $19
    add b                                         ; $7440: $80
    jr nz, jr_0d8_7446                            ; $7441: $20 $03

    jr z, @+$41                                   ; $7443: $28 $3f

    ld [hl], e                                    ; $7445: $73

jr_0d8_7446:
    ld a, a                                       ; $7446: $7f
    ld h, l                                       ; $7447: $65
    ld a, a                                       ; $7448: $7f
    ld l, a                                       ; $7449: $6f
    nop                                           ; $744a: $00
    ld e, a                                       ; $744b: $5f
    halt                                          ; $744c: $76
    ld a, a                                       ; $744d: $7f
    ld l, [hl]                                    ; $744e: $6e
    ld a, a                                       ; $744f: $7f
    scf                                           ; $7450: $37
    ccf                                           ; $7451: $3f
    scf                                           ; $7452: $37
    inc b                                         ; $7453: $04
    ccf                                           ; $7454: $3f
    rra                                           ; $7455: $1f
    rra                                           ; $7456: $1f
    dec e                                         ; $7457: $1d
    rra                                           ; $7458: $1f
    jr nz, jr_0d8_7464                            ; $7459: $20 $09

    ld sp, hl                                     ; $745b: $f9
    ld hl, sp+$54                                 ; $745c: $f8 $54
    ld d, a                                       ; $745e: $57
    ld e, $21                                     ; $745f: $1e $21
    inc b                                         ; $7461: $04
    db $f4                                        ; $7462: $f4
    ld [bc], a                                    ; $7463: $02

jr_0d8_7464:
    ld e, h                                       ; $7464: $5c
    ld a, h                                       ; $7465: $7c
    nop                                           ; $7466: $00
    cp a                                          ; $7467: $bf
    rst $38                                       ; $7468: $ff
    ld bc, $ff38                                  ; $7469: $01 $38 $ff
    cp l                                          ; $746c: $bd
    rst $38                                       ; $746d: $ff
    inc a                                         ; $746e: $3c
    rst $38                                       ; $746f: $ff
    db $dd                                        ; $7470: $dd
    add d                                         ; $7471: $82
    db $10                                        ; $7472: $10
    dec b                                         ; $7473: $05
    add b                                         ; $7474: $80
    nop                                           ; $7475: $00
    cp $3e                                        ; $7476: $fe $3e
    ret                                           ; $7478: $c9


    and b                                         ; $7479: $a0
    jr nz, jr_0d8_747c                            ; $747a: $20 $00

jr_0d8_747c:
    ld d, $03                                     ; $747c: $16 $03
    inc b                                         ; $747e: $04
    ret z                                         ; $747f: $c8

    ld a, a                                       ; $7480: $7f
    xor $ff                                       ; $7481: $ee $ff
    call z, $0264                                 ; $7483: $cc $64 $02
    cp $ff                                        ; $7486: $fe $ff
    ld h, d                                       ; $7488: $62
    db $fd                                        ; $7489: $fd
    and b                                         ; $748a: $a0
    ld hl, sp-$43                                 ; $748b: $f8 $bd
    inc bc                                        ; $748d: $03
    add b                                         ; $748e: $80
    add b                                         ; $748f: $80
    ld b, b                                       ; $7490: $40
    and d                                         ; $7491: $a2
    nop                                           ; $7492: $00
    ld h, b                                       ; $7493: $60
    ld [hl+], a                                   ; $7494: $22
    ldh [$90], a                                  ; $7495: $e0 $90
    sbc h                                         ; $7497: $9c
    nop                                           ; $7498: $00
    ret nc                                        ; $7499: $d0

    ldh a, [$50]                                  ; $749a: $f0 $50
    sbc [hl]                                      ; $749c: $9e
    nop                                           ; $749d: $00
    ldh [$c0], a                                  ; $749e: $e0 $c0
    ld bc, $a000                                  ; $74a0: $01 $00 $a0
    jr c, @+$4c                                   ; $74a3: $38 $4a

    nop                                           ; $74a5: $00
    inc c                                         ; $74a6: $0c
    nop                                           ; $74a7: $00
    ld d, $00                                     ; $74a8: $16 $00
    jr nz, jr_0d8_74ac                            ; $74aa: $20 $00

jr_0d8_74ac:
    ld a, [hl+]                                   ; $74ac: $2a
    nop                                           ; $74ad: $00
    ld [hl], $00                                  ; $74ae: $36 $00
    ld b, b                                       ; $74b0: $40
    nop                                           ; $74b1: $00
    ld [bc], a                                    ; $74b2: $02
    nop                                           ; $74b3: $00
    jp hl                                         ; $74b4: $e9


    nop                                           ; $74b5: $00
    nop                                           ; $74b6: $00
    rrca                                          ; $74b7: $0f
    nop                                           ; $74b8: $00
    ld [$f800], a                                 ; $74b9: $ea $00 $f8
    ld [bc], a                                    ; $74bc: $02
    inc b                                         ; $74bd: $04
    jp hl                                         ; $74be: $e9


    nop                                           ; $74bf: $00
    nop                                           ; $74c0: $00
    rrca                                          ; $74c1: $0f
    nop                                           ; $74c2: $00
    db $eb                                        ; $74c3: $eb
    nop                                           ; $74c4: $00
    ld hl, sp+$02                                 ; $74c5: $f8 $02
    ld [$00e9], sp                                ; $74c7: $08 $e9 $00
    nop                                           ; $74ca: $00
    rrca                                          ; $74cb: $0f
    ld bc, $01eb                                  ; $74cc: $01 $eb $01
    ld hl, sp+$03                                 ; $74cf: $f8 $03
    inc c                                         ; $74d1: $0c
    jp hl                                         ; $74d2: $e9


    nop                                           ; $74d3: $00

jr_0d8_74d4:
    nop                                           ; $74d4: $00
    rrca                                          ; $74d5: $0f
    nop                                           ; $74d6: $00
    db $eb                                        ; $74d7: $eb
    nop                                           ; $74d8: $00
    ld hl, sp+$00                                 ; $74d9: $f8 $00
    ld sp, hl                                     ; $74db: $f9
    ld [bc], a                                    ; $74dc: $02
    ld [de], a                                    ; $74dd: $12
    jp hl                                         ; $74de: $e9


    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    rrca                                          ; $74e1: $0f
    ld bc, $01ea                                  ; $74e2: $01 $ea $01
    ld sp, hl                                     ; $74e5: $f9
    ld [bc], a                                    ; $74e6: $02
    ld d, $e9                                     ; $74e7: $16 $e9
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    rrca                                          ; $74eb: $0f
    nop                                           ; $74ec: $00
    ld [$f900], a                                 ; $74ed: $ea $00 $f9
    and b                                         ; $74f0: $a0
    ld bc, $0097                                  ; $74f1: $01 $97 $00
    nop                                           ; $74f4: $00
    ld [$0808], sp                                ; $74f5: $08 $08 $08

jr_0d8_74f8:
    db $10                                        ; $74f8: $10
    ret nz                                        ; $74f9: $c0

    ret nz                                        ; $74fa: $c0

    ld b, b                                       ; $74fb: $40
    ld b, b                                       ; $74fc: $40
    ld e, b                                       ; $74fd: $58
    nop                                           ; $74fe: $00
    ld bc, $2010                                  ; $74ff: $01 $10 $20
    ld bc, $0a00                                  ; $7502: $01 $00 $0a
    jr jr_0d8_7507                                ; $7505: $18 $00

jr_0d8_7507:
    nop                                           ; $7507: $00
    inc b                                         ; $7508: $04
    pop bc                                        ; $7509: $c1
    ld bc, $1600                                  ; $750a: $01 $00 $16
    ld [$0407], sp                                ; $750d: $08 $07 $04
    rrca                                          ; $7510: $0f
    add hl, de                                    ; $7511: $19
    ld b, $0d                                     ; $7512: $06 $0d
    nop                                           ; $7514: $00

jr_0d8_7515:
    ld bc, $0101                                  ; $7515: $01 $01 $01
    nop                                           ; $7518: $00
    ld bc, $0000                                  ; $7519: $01 $00 $00
    ld bc, $0007                                  ; $751c: $01 $07 $00
    ld [$4141], sp                                ; $751f: $08 $41 $41
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    ld [hl-], a                                   ; $7524: $32
    jr z, @+$12                                   ; $7525: $28 $10

    db $10                                        ; $7527: $10
    jr c, jr_0d8_752d                             ; $7528: $38 $03

    jr z, jr_0d8_74ac                             ; $752a: $28 $80

    add b                                         ; $752c: $80

jr_0d8_752d:
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    add b                                         ; $752f: $80
    ld bc, $4400                                  ; $7530: $01 $00 $44
    jr jr_0d8_7515                                ; $7533: $18 $e0

    ld c, h                                       ; $7535: $4c
    ld [$2850], sp                                ; $7536: $08 $50 $28
    jr nc, jr_0d8_7543                            ; $7539: $30 $08

    dec b                                         ; $753b: $05
    ld b, $16                                     ; $753c: $06 $16
    jr jr_0d8_7546                                ; $753e: $18 $06

    rlca                                          ; $7540: $07
    inc b                                         ; $7541: $04
    rlca                                          ; $7542: $07

jr_0d8_7543:
    dec b                                         ; $7543: $05
    ld [bc], a                                    ; $7544: $02
    ld [bc], a                                    ; $7545: $02

jr_0d8_7546:
    ld h, $08                                     ; $7546: $26 $08
    ld b, [hl]                                    ; $7548: $46
    nop                                           ; $7549: $00
    ld d, $10                                     ; $754a: $16 $10
    db $d3                                        ; $754c: $d3
    ld c, h                                       ; $754d: $4c
    ld [$0874], sp                                ; $754e: $08 $74 $08
    jr jr_0d8_74d4                                ; $7551: $18 $81

    nop                                           ; $7553: $00
    ld [$7e08], sp                                ; $7554: $08 $08 $7e
    ld [$1846], sp                                ; $7557: $08 $46 $18
    ret nz                                        ; $755a: $c0

    ld a, [hl]                                    ; $755b: $7e
    jr z, @-$78                                   ; $755c: $28 $86

    jr z, jr_0d8_7563                             ; $755e: $28 $03

    ld [bc], a                                    ; $7560: $02
    rrca                                          ; $7561: $0f
    add hl, bc                                    ; $7562: $09

jr_0d8_7563:
    inc b                                         ; $7563: $04
    inc b                                         ; $7564: $04
    nop                                           ; $7565: $00
    ld b, $06                                     ; $7566: $06 $06
    ld [bc], a                                    ; $7568: $02
    nop                                           ; $7569: $00
    rlca                                          ; $756a: $07
    dec b                                         ; $756b: $05
    add d                                         ; $756c: $82
    add d                                         ; $756d: $82
    pop hl                                        ; $756e: $e1
    jr nz, jr_0d8_75a9                            ; $756f: $20 $38

    adc b                                         ; $7571: $88
    nop                                           ; $7572: $00
    ld b, d                                       ; $7573: $42
    jr nz, @+$32                                  ; $7574: $20 $30

    jr nz, jr_0d8_74f8                            ; $7576: $20 $80

    add b                                         ; $7578: $80
    ld b, d                                       ; $7579: $42
    nop                                           ; $757a: $00
    inc e                                         ; $757b: $1c
    ld [$040c], sp                                ; $757c: $08 $0c $04
    ld c, b                                       ; $757f: $48
    jr @+$44                                      ; $7580: $18 $42

    ld e, b                                       ; $7582: $58
    or b                                          ; $7583: $b0
    ld [$1217], sp                                ; $7584: $08 $17 $12
    jr c, jr_0d8_758e                             ; $7587: $38 $05

    dec b                                         ; $7589: $05
    ldh [$08], a                                  ; $758a: $e0 $08
    add d                                         ; $758c: $82
    nop                                           ; $758d: $00

jr_0d8_758e:
    add h                                         ; $758e: $84
    nop                                           ; $758f: $00
    add d                                         ; $7590: $82
    add d                                         ; $7591: $82
    ld [bc], a                                    ; $7592: $02
    or $04                                        ; $7593: $f6 $04
    nop                                           ; $7595: $00
    inc h                                         ; $7596: $24
    ld e, b                                       ; $7597: $58
    jr c, @+$7a                                   ; $7598: $38 $78

    ld b, $29                                     ; $759a: $06 $29
    jr @+$20                                      ; $759c: $18 $1e

    ld bc, $190e                                  ; $759e: $01 $0e $19
    nop                                           ; $75a1: $00
    ldh a, [$0e]                                  ; $75a2: $f0 $0e
    ld bc, $0806                                  ; $75a4: $01 $06 $08
    ld d, $19                                     ; $75a7: $16 $19

jr_0d8_75a9:
    ld h, $29                                     ; $75a9: $26 $29
    ld b, $00                                     ; $75ab: $06 $00
    ld a, [bc]                                    ; $75ad: $0a
    jr nz, jr_0d8_75bf                            ; $75ae: $20 $0f

    rrca                                          ; $75b0: $0f
    dec c                                         ; $75b1: $0d
    ld a, [bc]                                    ; $75b2: $0a
    ld a, [bc]                                    ; $75b3: $0a
    jp nz, $3428                                  ; $75b4: $c2 $28 $34

    add hl, de                                    ; $75b7: $19
    ld l, $18                                     ; $75b8: $2e $18
    ld [c], a                                     ; $75ba: $e2
    jr nz, jr_0d8_75f7                            ; $75bb: $20 $3a

    nop                                           ; $75bd: $00
    add b                                         ; $75be: $80

jr_0d8_75bf:
    ld b, d                                       ; $75bf: $42
    db $10                                        ; $75c0: $10
    ld e, [hl]                                    ; $75c1: $5e
    add hl, bc                                    ; $75c2: $09
    jr nz, @+$7a                                  ; $75c3: $20 $78

    ld [bc], a                                    ; $75c5: $02
    ldh [rP1], a                                  ; $75c6: $e0 $00
    inc a                                         ; $75c8: $3c
    ld e, $00                                     ; $75c9: $1e $00
    ld a, [bc]                                    ; $75cb: $0a
    ld a, [bc]                                    ; $75cc: $0a
    ldh [$08], a                                  ; $75cd: $e0 $08
    ld [hl+], a                                   ; $75cf: $22
    add hl, de                                    ; $75d0: $19
    inc b                                         ; $75d1: $04
    add hl, sp                                    ; $75d2: $39
    add d                                         ; $75d3: $82
    add hl, bc                                    ; $75d4: $09
    adc h                                         ; $75d5: $8c
    nop                                           ; $75d6: $00
    stop                                          ; $75d7: $10 $00
    ld e, $00                                     ; $75d9: $1e $00
    inc l                                         ; $75db: $2c
    nop                                           ; $75dc: $00
    ld a, $00                                     ; $75dd: $3e $00
    ld d, b                                       ; $75df: $50
    nop                                           ; $75e0: $00
    ld h, d                                       ; $75e1: $62
    nop                                           ; $75e2: $00
    ld [hl], b                                    ; $75e3: $70
    nop                                           ; $75e4: $00
    ld a, [hl]                                    ; $75e5: $7e
    nop                                           ; $75e6: $00
    inc b                                         ; $75e7: $04
    nop                                           ; $75e8: $00
    ld sp, hl                                     ; $75e9: $f9
    ld [$00f1], sp                                ; $75ea: $08 $f1 $00
    pop hl                                        ; $75ed: $e1
    ld sp, hl                                     ; $75ee: $f9
    pop hl                                        ; $75ef: $e1
    ld bc, $f9f1                                  ; $75f0: $01 $f1 $f9
    pop af                                        ; $75f3: $f1
    ld bc, $0804                                  ; $75f4: $01 $04 $08

jr_0d8_75f7:
    ld sp, hl                                     ; $75f7: $f9
    ld [$00f1], sp                                ; $75f8: $08 $f1 $00
    db $e3                                        ; $75fb: $e3
    ld a, [$02e3]                                 ; $75fc: $fa $e3 $02
    di                                            ; $75ff: $f3
    ld a, [$fff3]                                 ; $7600: $fa $f3 $ff
    ld b, $10                                     ; $7603: $06 $10
    ld sp, hl                                     ; $7605: $f9
    ld [$00f1], sp                                ; $7606: $08 $f1 $00
    sbc $fb                                       ; $7609: $de $fb
    sbc $ff                                       ; $760b: $de $ff
    xor $f9                                       ; $760d: $ee $f9
    xor $01                                       ; $760f: $ee $01
    cp $fa                                        ; $7611: $fe $fa
    cp $00                                        ; $7613: $fe $00
    ld b, $1c                                     ; $7615: $06 $1c
    ld sp, hl                                     ; $7617: $f9
    ld [$00f1], sp                                ; $7618: $08 $f1 $00
    ld [c], a                                     ; $761b: $e2
    ld sp, hl                                     ; $761c: $f9
    ld a, [c]                                     ; $761d: $f2
    ld sp, hl                                     ; $761e: $f9
    pop hl                                        ; $761f: $e1
    ld bc, $01f1                                  ; $7620: $01 $f1 $01
    ldh [$09], a                                  ; $7623: $e0 $09
    ldh a, [$09]                                  ; $7625: $f0 $09
    ld b, $28                                     ; $7627: $06 $28
    ld sp, hl                                     ; $7629: $f9
    ld [$00f1], sp                                ; $762a: $08 $f1 $00
    reti                                          ; $762d: $d9


    ld a, [$00da]                                 ; $762e: $fa $da $00
    jp hl                                         ; $7631: $e9


    ld a, [$ffea]                                 ; $7632: $fa $ea $ff
    ld sp, hl                                     ; $7635: $f9
    ld sp, hl                                     ; $7636: $f9
    ld sp, hl                                     ; $7637: $f9
    ld bc, $3404                                  ; $7638: $01 $04 $34
    ld sp, hl                                     ; $763b: $f9
    ld [$00f1], sp                                ; $763c: $08 $f1 $00
    sbc $ff                                       ; $763f: $de $ff
    pop hl                                        ; $7641: $e1
    ld [$ffee], sp                                ; $7642: $08 $ee $ff
    xor $00                                       ; $7645: $ee $00
    inc b                                         ; $7647: $04
    inc a                                         ; $7648: $3c
    ld sp, hl                                     ; $7649: $f9
    ld [$00f1], sp                                ; $764a: $08 $f1 $00
    ld a, [c]                                     ; $764d: $f2
    inc b                                         ; $764e: $04
    rst $20                                       ; $764f: $e7
    dec c                                         ; $7650: $0d
    ldh a, [rNR14]                                ; $7651: $f0 $14
    rst $30                                       ; $7653: $f7
    ld bc, $4404                                  ; $7654: $01 $04 $44
    ld sp, hl                                     ; $7657: $f9
    ld [$00f1], sp                                ; $7658: $08 $f1 $00
    db $f4                                        ; $765b: $f4
    inc bc                                        ; $765c: $03
    db $f4                                        ; $765d: $f4
    add hl, bc                                    ; $765e: $09
    db $f4                                        ; $765f: $f4
    inc d                                         ; $7660: $14
    db $f4                                        ; $7661: $f4
    jr @-$3e                                      ; $7662: $18 $c0

    inc b                                         ; $7664: $04
    xor a                                         ; $7665: $af
    ld [bc], a                                    ; $7666: $02
    nop                                           ; $7667: $00
    ld bc, $0201                                  ; $7668: $01 $01 $02
    inc bc                                        ; $766b: $03
    inc bc                                        ; $766c: $03
    ld [bc], a                                    ; $766d: $02
    dec b                                         ; $766e: $05
    ld b, $00                                     ; $766f: $06 $00
    ld a, l                                       ; $7671: $7d
    ld a, [hl]                                    ; $7672: $7e
    cp [hl]                                       ; $7673: $be
    rst $00                                       ; $7674: $c7
    or a                                          ; $7675: $b7
    reti                                          ; $7676: $d9


    ld e, c                                       ; $7677: $59
    ld l, [hl]                                    ; $7678: $6e
    nop                                           ; $7679: $00
    cp a                                          ; $767a: $bf
    rst $30                                       ; $767b: $f7
    cp a                                          ; $767c: $bf
    jp c, $dfef                                   ; $767d: $da $ef $df

    cp c                                          ; $7680: $b9
    rst $30                                       ; $7681: $f7
    nop                                           ; $7682: $00
    sbc e                                         ; $7683: $9b
    rst $38                                       ; $7684: $ff
    ld c, l                                       ; $7685: $4d
    ld a, [hl]                                    ; $7686: $7e
    inc sp                                        ; $7687: $33
    inc a                                         ; $7688: $3c
    rra                                           ; $7689: $1f
    rra                                           ; $768a: $1f
    nop                                           ; $768b: $00
    ret nz                                        ; $768c: $c0

    ret nz                                        ; $768d: $c0

    ldh [rNR41], a                                ; $768e: $e0 $20
    ret nc                                        ; $7690: $d0

    jr nc, @-$4e                                  ; $7691: $30 $b0

    ld [hl], b                                    ; $7693: $70
    nop                                           ; $7694: $00
    ldh a, [rSVBK]                                ; $7695: $f0 $70
    ld [hl], b                                    ; $7697: $70
    ldh a, [$cc]                                  ; $7698: $f0 $cc
    cp h                                          ; $769a: $bc
    cp $76                                        ; $769b: $fe $76
    nop                                           ; $769d: $00
    db $ed                                        ; $769e: $ed
    sbc a                                         ; $769f: $9f
    ld [hl], e                                    ; $76a0: $73
    db $fd                                        ; $76a1: $fd
    rst $38                                       ; $76a2: $ff
    push af                                       ; $76a3: $f5
    sbc e                                         ; $76a4: $9b
    push af                                       ; $76a5: $f5
    nop                                           ; $76a6: $00
    rst $18                                       ; $76a7: $df
    push af                                       ; $76a8: $f5
    cp e                                          ; $76a9: $bb
    ld [hl], l                                    ; $76aa: $75
    rst $10                                       ; $76ab: $d7
    add hl, sp                                    ; $76ac: $39
    push af                                       ; $76ad: $f5
    ei                                            ; $76ae: $fb
    nop                                           ; $76af: $00
    inc de                                        ; $76b0: $13
    inc e                                         ; $76b1: $1c
    dec de                                        ; $76b2: $1b
    rra                                           ; $76b3: $1f
    inc de                                        ; $76b4: $13
    inc e                                         ; $76b5: $1c
    inc de                                        ; $76b6: $13
    inc e                                         ; $76b7: $1c
    nop                                           ; $76b8: $00
    ld a, [hl+]                                   ; $76b9: $2a
    dec a                                         ; $76ba: $3d
    inc hl                                        ; $76bb: $23
    inc a                                         ; $76bc: $3c
    dec l                                         ; $76bd: $2d
    ld a, [hl-]                                   ; $76be: $3a
    dec [hl]                                      ; $76bf: $35
    ld a, [hl-]                                   ; $76c0: $3a
    nop                                           ; $76c1: $00
    ld d, a                                       ; $76c2: $57
    ld a, b                                       ; $76c3: $78
    and a                                         ; $76c4: $a7
    ld hl, sp-$25                                 ; $76c5: $f8 $db
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    ldh a, [rP1]                                  ; $76c9: $f0 $00
    xor e                                         ; $76cb: $ab
    rst $38                                       ; $76cc: $ff
    ld c, [hl]                                    ; $76cd: $4e
    ld [hl], c                                    ; $76ce: $71
    ld a, $31                                     ; $76cf: $3e $31
    rrca                                          ; $76d1: $0f
    rrca                                          ; $76d2: $0f
    nop                                           ; $76d3: $00
    adc $3a                                       ; $76d4: $ce $3a
    ld e, d                                       ; $76d6: $5a
    cp [hl]                                       ; $76d7: $be
    ld c, h                                       ; $76d8: $4c
    cp h                                          ; $76d9: $bc
    ld c, b                                       ; $76da: $48
    cp b                                          ; $76db: $b8
    nop                                           ; $76dc: $00
    call nc, $c4fc                                ; $76dd: $d4 $fc $c4
    inc a                                         ; $76e0: $3c
    db $f4                                        ; $76e1: $f4
    inc e                                         ; $76e2: $1c
    db $ec                                        ; $76e3: $ec
    inc e                                         ; $76e4: $1c
    nop                                           ; $76e5: $00
    ld l, d                                       ; $76e6: $6a
    sbc [hl]                                      ; $76e7: $9e
    ld h, a                                       ; $76e8: $67
    sbc l                                         ; $76e9: $9d
    ld c, a                                       ; $76ea: $4f
    ei                                            ; $76eb: $fb
    rst $38                                       ; $76ec: $ff
    rrca                                          ; $76ed: $0f
    nop                                           ; $76ee: $00
    ld h, l                                       ; $76ef: $65
    rst $38                                       ; $76f0: $ff
    ld a, [c]                                     ; $76f1: $f2
    ld c, $fc                                     ; $76f2: $0e $fc
    inc c                                         ; $76f4: $0c
    ldh a, [$f0]                                  ; $76f5: $f0 $f0
    nop                                           ; $76f7: $00
    dec b                                         ; $76f8: $05
    dec b                                         ; $76f9: $05
    dec bc                                        ; $76fa: $0b
    ld c, $3b                                     ; $76fb: $0e $3b
    scf                                           ; $76fd: $37
    ld d, $1f                                     ; $76fe: $16 $1f
    nop                                           ; $7700: $00
    dec c                                         ; $7701: $0d
    dec bc                                        ; $7702: $0b
    rrca                                          ; $7703: $0f
    ld [$0c0b], sp                                ; $7704: $08 $0b $0c
    dec b                                         ; $7707: $05
    ld b, $00                                     ; $7708: $06 $00
    inc b                                         ; $770a: $04
    rlca                                          ; $770b: $07
    rlca                                          ; $770c: $07
    rlca                                          ; $770d: $07
    dec bc                                        ; $770e: $0b
    inc c                                         ; $770f: $0c
    ld e, $19                                     ; $7710: $1e $19
    nop                                           ; $7712: $00
    add hl, hl                                    ; $7713: $29
    ld a, $54                                     ; $7714: $3e $54
    ld l, a                                       ; $7716: $6f
    ld a, d                                       ; $7717: $7a
    ld b, a                                       ; $7718: $47
    cp e                                          ; $7719: $bb
    rst $00                                       ; $771a: $c7
    nop                                           ; $771b: $00
    ret nz                                        ; $771c: $c0

    ret nz                                        ; $771d: $c0

    and b                                         ; $771e: $a0
    ld h, b                                       ; $771f: $60
    ld b, b                                       ; $7720: $40
    ret nz                                        ; $7721: $c0

    add b                                         ; $7722: $80
    add b                                         ; $7723: $80
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    add b                                         ; $7727: $80
    add b                                         ; $7728: $80
    call nz, $fa44                                ; $7729: $c4 $44 $fa
    ld a, $00                                     ; $772c: $3e $00
    db $dd                                        ; $772e: $dd
    db $e3                                        ; $772f: $e3
    ld l, l                                       ; $7730: $6d
    sbc a                                         ; $7731: $9f
    push de                                       ; $7732: $d5
    scf                                           ; $7733: $37
    and l                                         ; $7734: $a5
    ld h, a                                       ; $7735: $67
    nop                                           ; $7736: $00
    ld h, $e6                                     ; $7737: $26 $e6
    ld c, d                                       ; $7739: $4a
    adc $8a                                       ; $773a: $ce $8a
    adc [hl]                                      ; $773c: $8e
    ld b, $06                                     ; $773d: $06 $06
    nop                                           ; $773f: $00
    or $8e                                        ; $7740: $f6 $8e
    xor d                                         ; $7742: $aa
    sbc $d2                                       ; $7743: $de $d2
    cp $ec                                        ; $7745: $fe $ec
    db $f4                                        ; $7747: $f4
    nop                                           ; $7748: $00
    call c, $dcd4                                 ; $7749: $dc $d4 $dc
    call nc, Call_0d8_5c54                        ; $774c: $d4 $54 $5c
    dec bc                                        ; $774f: $0b
    rrca                                          ; $7750: $0f
    nop                                           ; $7751: $00
    inc c                                         ; $7752: $0c
    dec bc                                        ; $7753: $0b
    ld [hl], $39                                  ; $7754: $36 $39
    ld e, a                                       ; $7756: $5f
    ld a, a                                       ; $7757: $7f
    ld c, a                                       ; $7758: $4f
    ld [hl], b                                    ; $7759: $70
    inc b                                         ; $775a: $04
    cpl                                           ; $775b: $2f
    jr nc, @+$21                                  ; $775c: $30 $1f

    rra                                           ; $775e: $1f
    nop                                           ; $775f: $00
    ld bc, $1880                                  ; $7760: $01 $80 $18
    jr jr_0d8_7765                                ; $7763: $18 $00

jr_0d8_7765:
    ld d, $0e                                     ; $7765: $16 $0e
    dec e                                         ; $7767: $1d
    rra                                           ; $7768: $1f
    add hl, de                                    ; $7769: $19
    rlca                                          ; $776a: $07
    ld a, [de]                                    ; $776b: $1a
    ld b, $20                                     ; $776c: $06 $20
    inc e                                         ; $776e: $1c
    inc e                                         ; $776f: $1c
    jr nz, jr_0d8_777a                            ; $7770: $20 $08

    ld d, $16                                     ; $7772: $16 $16
    dec de                                        ; $7774: $1b
    dec c                                         ; $7775: $0d
    rrca                                          ; $7776: $0f
    nop                                           ; $7777: $00
    db $10                                        ; $7778: $10
    db $10                                        ; $7779: $10

jr_0d8_777a:
    rra                                           ; $777a: $1f
    add hl, de                                    ; $777b: $19
    ld d, $16                                     ; $777c: $16 $16
    add hl, de                                    ; $777e: $19
    rrca                                          ; $777f: $0f
    nop                                           ; $7780: $00
    rrca                                          ; $7781: $0f
    jr nc, jr_0d8_77c3                            ; $7782: $30 $3f

    ld l, c                                       ; $7784: $69
    ld e, a                                       ; $7785: $5f
    rst $18                                       ; $7786: $df
    or [hl]                                       ; $7787: $b6
    rst $38                                       ; $7788: $ff
    nop                                           ; $7789: $00
    cp c                                          ; $778a: $b9
    rst $38                                       ; $778b: $ff
    and [hl]                                      ; $778c: $a6
    cp c                                          ; $778d: $b9
    rst $08                                       ; $778e: $cf
    sbc c                                         ; $778f: $99
    rst $38                                       ; $7790: $ff
    ld l, c                                       ; $7791: $69
    nop                                           ; $7792: $00
    ld a, a                                       ; $7793: $7f
    add hl, hl                                    ; $7794: $29
    ccf                                           ; $7795: $3f
    ld [$0808], sp                                ; $7796: $08 $08 $08
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    ret nz                                        ; $779b: $c0

    dec b                                         ; $779c: $05
    nop                                           ; $779d: $00
    inc bc                                        ; $779e: $03
    ld [$0000], sp                                ; $779f: $08 $00 $00
    inc c                                         ; $77a2: $0c
    inc c                                         ; $77a3: $0c
    ld b, $0a                                     ; $77a4: $06 $0a
    nop                                           ; $77a6: $00
    dec bc                                        ; $77a7: $0b
    dec c                                         ; $77a8: $0d
    rrca                                          ; $77a9: $0f
    dec c                                         ; $77aa: $0d
    rrca                                          ; $77ab: $0f
    dec b                                         ; $77ac: $05
    dec c                                         ; $77ad: $0d
    inc bc                                        ; $77ae: $03
    nop                                           ; $77af: $00
    add hl, bc                                    ; $77b0: $09
    rrca                                          ; $77b1: $0f
    ld b, $0e                                     ; $77b2: $06 $0e
    inc b                                         ; $77b4: $04
    inc c                                         ; $77b5: $0c
    rrca                                          ; $77b6: $0f
    ld a, [bc]                                    ; $77b7: $0a
    nop                                           ; $77b8: $00
    ld d, $1b                                     ; $77b9: $16 $1b
    rla                                           ; $77bb: $17
    ld a, [de]                                    ; $77bc: $1a
    dec d                                         ; $77bd: $15
    ld e, $1d                                     ; $77be: $1e $1d
    ld d, $00                                     ; $77c0: $16 $00
    rra                                           ; $77c2: $1f

jr_0d8_77c3:
    inc d                                         ; $77c3: $14
    dec l                                         ; $77c4: $2d
    ld [hl], $2f                                  ; $77c5: $36 $2f
    inc [hl]                                      ; $77c7: $34

jr_0d8_77c8:
    cpl                                           ; $77c8: $2f
    inc [hl]                                      ; $77c9: $34
    nop                                           ; $77ca: $00
    inc l                                         ; $77cb: $2c
    scf                                           ; $77cc: $37
    cpl                                           ; $77cd: $2f
    scf                                           ; $77ce: $37
    cpl                                           ; $77cf: $2f
    dec [hl]                                      ; $77d0: $35
    halt                                          ; $77d1: $76
    ld a, a                                       ; $77d2: $7f
    nop                                           ; $77d3: $00
    sbc h                                         ; $77d4: $9c
    rst $28                                       ; $77d5: $ef
    rst $08                                       ; $77d6: $cf
    ldh a, [$f8]                                  ; $77d7: $f0 $f8
    rst $38                                       ; $77d9: $ff
    ldh a, [$50]                                  ; $77da: $f0 $50
    nop                                           ; $77dc: $00
    ld l, b                                       ; $77dd: $68
    ret c                                         ; $77de: $d8

    add sp, $58                                   ; $77df: $e8 $58
    xor b                                         ; $77e1: $a8
    ld a, b                                       ; $77e2: $78
    cp b                                          ; $77e3: $b8
    ld l, b                                       ; $77e4: $68
    nop                                           ; $77e5: $00
    ld hl, sp+$28                                 ; $77e6: $f8 $28
    or h                                          ; $77e8: $b4
    ld l, h                                       ; $77e9: $6c
    db $f4                                        ; $77ea: $f4
    inc l                                         ; $77eb: $2c
    db $f4                                        ; $77ec: $f4
    inc l                                         ; $77ed: $2c
    nop                                           ; $77ee: $00
    inc [hl]                                      ; $77ef: $34
    db $ec                                        ; $77f0: $ec
    db $f4                                        ; $77f1: $f4
    db $ec                                        ; $77f2: $ec
    db $f4                                        ; $77f3: $f4
    xor h                                         ; $77f4: $ac
    ld l, [hl]                                    ; $77f5: $6e
    cp $00                                        ; $77f6: $fe $00
    add hl, sp                                    ; $77f8: $39
    rst $30                                       ; $77f9: $f7
    di                                            ; $77fa: $f3
    rrca                                          ; $77fb: $0f
    rra                                           ; $77fc: $1f
    rst $38                                       ; $77fd: $ff
    adc a                                         ; $77fe: $8f
    rst $38                                       ; $77ff: $ff
    jr nc, jr_0d8_7871                            ; $7800: $30 $6f

    ld [hl], b                                    ; $7802: $70
    xor d                                         ; $7803: $aa
    sbc b                                         ; $7804: $98
    cp [hl]                                       ; $7805: $be
    jr jr_0d8_7839                                ; $7806: $18 $31

    ccf                                           ; $7808: $3f
    ld [hl], $0e                                  ; $7809: $36 $0e
    ld [hl+], a                                   ; $780b: $22
    jr c, jr_0d8_7846                             ; $780c: $38 $38

    jr nz, jr_0d8_77c8                            ; $780e: $20 $b8

    ld bc, $0101                                  ; $7810: $01 $01 $01
    inc b                                         ; $7813: $04
    nop                                           ; $7814: $00
    jr nc, jr_0d8_7817                            ; $7815: $30 $00

jr_0d8_7817:
    jr nc, jr_0d8_7875                            ; $7817: $30 $5c

    ld l, h                                       ; $7819: $6c
    ld [hl], $3a                                  ; $781a: $36 $3a
    dec bc                                        ; $781c: $0b
    dec c                                         ; $781d: $0d
    dec b                                         ; $781e: $05
    db $10                                        ; $781f: $10
    ld b, $03                                     ; $7820: $06 $03
    inc bc                                        ; $7822: $03
    jr jr_0d8_784d                                ; $7823: $18 $28

    ld [bc], a                                    ; $7825: $02
    inc bc                                        ; $7826: $03
    dec b                                         ; $7827: $05
    ld b, $00                                     ; $7828: $06 $00
    dec bc                                        ; $782a: $0b
    dec c                                         ; $782b: $0d
    dec c                                         ; $782c: $0d
    dec bc                                        ; $782d: $0b
    ld d, $1b                                     ; $782e: $16 $1b
    dec de                                        ; $7830: $1b
    ld d, $00                                     ; $7831: $16 $00
    inc l                                         ; $7833: $2c
    scf                                           ; $7834: $37
    dec l                                         ; $7835: $2d
    ld [hl], $3e                                  ; $7836: $36 $3e
    dec a                                         ; $7838: $3d

jr_0d8_7839:
    ld a, a                                       ; $7839: $7f
    ld [hl], a                                    ; $783a: $77
    nop                                           ; $783b: $00
    sub [hl]                                      ; $783c: $96
    rst $28                                       ; $783d: $ef
    call z, $fcff                                 ; $783e: $cc $ff $fc
    di                                            ; $7841: $f3
    ld c, e                                       ; $7842: $4b
    ld a, h                                       ; $7843: $7c
    ld [bc], a                                    ; $7844: $02
    cpl                                           ; $7845: $2f

jr_0d8_7846:
    scf                                           ; $7846: $37
    rla                                           ; $7847: $17
    jr jr_0d8_7859                                ; $7848: $18 $0f

    rrca                                          ; $784a: $0f
    jr nz, jr_0d8_7856                            ; $784b: $20 $09

jr_0d8_784d:
    add hl, hl                                    ; $784d: $29
    nop                                           ; $784e: $00
    add hl, hl                                    ; $784f: $29
    ld e, c                                       ; $7850: $59
    ld [hl], c                                    ; $7851: $71
    or e                                          ; $7852: $b3
    jp z, Jump_000_3acb                           ; $7853: $ca $cb $3a

jr_0d8_7856:
    inc d                                         ; $7856: $14
    nop                                           ; $7857: $00
    rst $28                                       ; $7858: $ef

jr_0d8_7859:
    rst $30                                       ; $7859: $f7
    adc l                                         ; $785a: $8d
    sbc e                                         ; $785b: $9b
    db $fd                                        ; $785c: $fd
    db $ed                                        ; $785d: $ed
    di                                            ; $785e: $f3
    xor $00                                       ; $785f: $ee $00
    ld [hl], d                                    ; $7861: $72
    ld d, [hl]                                    ; $7862: $56
    ld a, [$faf6]                                 ; $7863: $fa $f6 $fa
    ld e, [hl]                                    ; $7866: $5e
    ld a, d                                       ; $7867: $7a
    xor $00                                       ; $7868: $ee $00
    jp c, $f3dd                                   ; $786a: $da $dd $f3

    cp l                                          ; $786d: $bd
    di                                            ; $786e: $f3
    rst $18                                       ; $786f: $df
    pop af                                        ; $7870: $f1

jr_0d8_7871:
    xor l                                         ; $7871: $ad
    nop                                           ; $7872: $00
    di                                            ; $7873: $f3
    ld l, [hl]                                    ; $7874: $6e

jr_0d8_7875:
    or c                                          ; $7875: $b1
    cp h                                          ; $7876: $bc
    ld h, e                                       ; $7877: $63
    ld a, d                                       ; $7878: $7a
    and l                                         ; $7879: $a5
    cp h                                          ; $787a: $bc
    nop                                           ; $787b: $00
    ld h, e                                       ; $787c: $63
    ld a, [hl-]                                   ; $787d: $3a
    push hl                                       ; $787e: $e5
    call c, $c263                                 ; $787f: $dc $63 $c2
    ld a, l                                       ; $7882: $7d
    rst $38                                       ; $7883: $ff
    nop                                           ; $7884: $00
    rst $38                                       ; $7885: $ff
    ld l, b                                       ; $7886: $68
    ld hl, sp+$3c                                 ; $7887: $f8 $3c
    db $fc                                        ; $7889: $fc
    add d                                         ; $788a: $82
    ld a, [hl]                                    ; $788b: $7e
    halt                                          ; $788c: $76
    nop                                           ; $788d: $00
    adc [hl]                                      ; $788e: $8e
    cp $fe                                        ; $788f: $fe $fe
    call nz, $f83c                                ; $7891: $c4 $3c $f8
    ld hl, sp-$80                                 ; $7894: $f8 $80
    inc bc                                        ; $7896: $03
    add b                                         ; $7897: $80
    ret nz                                        ; $7898: $c0

    ld b, b                                       ; $7899: $40
    ret nz                                        ; $789a: $c0

    ld b, b                                       ; $789b: $40
    add b                                         ; $789c: $80
    ld bc, $c610                                  ; $789d: $01 $10 $c6

Call_0d8_78a0:
    xor b                                         ; $78a0: $a8
    pop hl                                        ; $78a1: $e1
    ld e, $18                                     ; $78a2: $1e $18
    ld b, $28                                     ; $78a4: $06 $28
    sub [hl]                                      ; $78a6: $96
    ld e, c                                       ; $78a7: $59
    inc bc                                        ; $78a8: $03
    inc bc                                        ; $78a9: $03
    rlca                                          ; $78aa: $07
    inc b                                         ; $78ab: $04
    or [hl]                                       ; $78ac: $b6
    ld [$0504], sp                                ; $78ad: $08 $04 $05
    ld b, $0f                                     ; $78b0: $06 $0f
    ld [$be08], sp                                ; $78b2: $08 $08 $be
    ld bc, $0c0b                                  ; $78b5: $01 $0b $0c
    nop                                           ; $78b8: $00
    rlca                                          ; $78b9: $07
    rlca                                          ; $78ba: $07
    jr jr_0d8_78dc                                ; $78bb: $18 $1f

    inc l                                         ; $78bd: $2c
    inc sp                                        ; $78be: $33
    ld e, e                                       ; $78bf: $5b
    ld h, a                                       ; $78c0: $67
    ld bc, $5c6f                                  ; $78c1: $01 $6f $5c
    cp e                                          ; $78c4: $bb
    rst $30                                       ; $78c5: $f7
    call nc, Call_000_20af                        ; $78c6: $d4 $af $20
    ld bc, $0000                                  ; $78c9: $01 $00 $00
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    jr nz, jr_0d8_78f0                            ; $78ce: $20 $20

    jr nc, jr_0d8_78e2                            ; $78d0: $30 $10

    db $10                                        ; $78d2: $10
    jr nc, @-$7e                                  ; $78d3: $30 $80

    inc b                                         ; $78d5: $04
    ld [$2020], sp                                ; $78d6: $08 $20 $20
    jr @+$3a                                      ; $78d9: $18 $38

    inc [hl]                                      ; $78db: $34

jr_0d8_78dc:
    inc c                                         ; $78dc: $0c
    ld a, [de]                                    ; $78dd: $1a
    nop                                           ; $78de: $00
    ld h, $36                                     ; $78df: $26 $36
    ld a, [hl-]                                   ; $78e1: $3a

jr_0d8_78e2:
    dec e                                         ; $78e2: $1d
    cpl                                           ; $78e3: $2f
    dec hl                                        ; $78e4: $2b
    dec [hl]                                      ; $78e5: $35
    add hl, sp                                    ; $78e6: $39
    nop                                           ; $78e7: $00
    rst $38                                       ; $78e8: $ff
    sbc h                                         ; $78e9: $9c
    db $fc                                        ; $78ea: $fc
    halt                                          ; $78eb: $76
    ld a, l                                       ; $78ec: $7d
    dec d                                         ; $78ed: $15
    ld e, $1f                                     ; $78ee: $1e $1f

jr_0d8_78f0:
    ld c, b                                       ; $78f0: $48
    inc d                                         ; $78f1: $14
    halt                                          ; $78f2: $76
    ld bc, $2734                                  ; $78f3: $01 $34 $27
    or b                                          ; $78f6: $b0
    ld [bc], a                                    ; $78f7: $02
    rla                                           ; $78f8: $17
    dec de                                        ; $78f9: $1b
    dec c                                         ; $78fa: $0d
    nop                                           ; $78fb: $00
    dec bc                                        ; $78fc: $0b
    dec c                                         ; $78fd: $0d
    dec bc                                        ; $78fe: $0b
    inc de                                        ; $78ff: $13
    rra                                           ; $7900: $1f
    ld d, $1b                                     ; $7901: $16 $1b
    dec d                                         ; $7903: $15
    nop                                           ; $7904: $00
    dec de                                        ; $7905: $1b
    dec bc                                        ; $7906: $0b
    rrca                                          ; $7907: $0f
    dec c                                         ; $7908: $0d
    dec bc                                        ; $7909: $0b
    rla                                           ; $790a: $17
    rra                                           ; $790b: $1f
    inc d                                         ; $790c: $14
    nop                                           ; $790d: $00
    inc e                                         ; $790e: $1c
    inc e                                         ; $790f: $1c
    inc d                                         ; $7910: $14
    ld a, [de]                                    ; $7911: $1a
    ld d, $1a                                     ; $7912: $16 $1a
    ld d, $12                                     ; $7914: $16 $12
    ld b, b                                       ; $7916: $40
    ld e, $09                                     ; $7917: $1e $09
    nop                                           ; $7919: $00
    inc c                                         ; $791a: $0c
    jr jr_0d8_7925                                ; $791b: $18 $08

    jr @+$0a                                      ; $791d: $18 $08

    inc b                                         ; $791f: $04
    add b                                         ; $7920: $80
    ld [$1400], sp                                ; $7921: $08 $00 $14
    inc c                                         ; $7924: $0c

jr_0d8_7925:
    ld [$1818], sp                                ; $7925: $08 $18 $18
    ld [$106c], sp                                ; $7928: $08 $6c $10
    db $fc                                        ; $792b: $fc
    inc c                                         ; $792c: $0c
    inc c                                         ; $792d: $0c
    xor d                                         ; $792e: $aa
    add hl, hl                                    ; $792f: $29
    ld b, a                                       ; $7930: $47
    ld a, a                                       ; $7931: $7f
    scf                                           ; $7932: $37
    jr c, @-$1e                                   ; $7933: $38 $e0

    inc d                                         ; $7935: $14
    add hl, de                                    ; $7936: $19
    jr c, @+$5c                                   ; $7937: $38 $5a

jr_0d8_7939:
    xor d                                         ; $7939: $aa
    add hl, hl                                    ; $793a: $29
    ld [c], a                                     ; $793b: $e2
    cp $ec                                        ; $793c: $fe $ec
    inc e                                         ; $793e: $1c
    ldh a, [$5c]                                  ; $793f: $f0 $5c
    ldh a, [rHDMA4]                               ; $7941: $f0 $54
    ld l, d                                       ; $7943: $6a
    db $10                                        ; $7944: $10
    ld h, l                                       ; $7945: $65
    ld [de], a                                    ; $7946: $12
    inc h                                         ; $7947: $24
    ld [bc], a                                    ; $7948: $02
    adc $18                                       ; $7949: $ce $18

jr_0d8_794b:
    nop                                           ; $794b: $00
    ld bc, $a0d6                                  ; $794c: $01 $d6 $a0
    ld l, c                                       ; $794f: $69
    add l                                         ; $7950: $85
    ld [bc], a                                    ; $7951: $02
    inc b                                         ; $7952: $04
    adc c                                         ; $7953: $89
    ld [hl+], a                                   ; $7954: $22
    jr nc, jr_0d8_7959                            ; $7955: $30 $02

    nop                                           ; $7957: $00
    sub h                                         ; $7958: $94

jr_0d8_7959:
    ld a, d                                       ; $7959: $7a
    inc bc                                        ; $795a: $03
    xor c                                         ; $795b: $a9
    ld [hl], $00                                  ; $795c: $36 $00
    jr nz, @+$04                                  ; $795e: $20 $02

    nop                                           ; $7960: $00
    ld b, $30                                     ; $7961: $06 $30
    add hl, sp                                    ; $7963: $39
    nop                                           ; $7964: $00
    ret c                                         ; $7965: $d8

    ld e, b                                       ; $7966: $58
    jr nz, jr_0d8_794b                            ; $7967: $20 $e2

    ld b, d                                       ; $7969: $42
    jr @+$56                                      ; $796a: $18 $54

    ld l, b                                       ; $796c: $68
    ret c                                         ; $796d: $d8

    ld c, d                                       ; $796e: $4a
    ret nz                                        ; $796f: $c0

    nop                                           ; $7970: $00
    ld b, e                                       ; $7971: $43
    halt                                          ; $7972: $76
    nop                                           ; $7973: $00
    jr @+$01                                      ; $7974: $18 $ff

    add d                                         ; $7976: $82
    jr nc, jr_0d8_7999                            ; $7977: $30 $20

    ld [hl], d                                    ; $7979: $72
    and h                                         ; $797a: $a4
    jr nc, @+$48                                  ; $797b: $30 $46

    ld bc, $0068                                  ; $797d: $01 $68 $00
    call nz, $0202                                ; $7980: $c4 $02 $02
    nop                                           ; $7983: $00
    ld a, [de]                                    ; $7984: $1a
    dec sp                                        ; $7985: $3b
    ld [hl], l                                    ; $7986: $75
    ld de, $c05c                                  ; $7987: $11 $5c $c0
    ld h, d                                       ; $798a: $62
    jr z, @+$3c                                   ; $798b: $28 $3a

    ld [$2860], sp                                ; $798d: $08 $60 $28
    ret nc                                        ; $7990: $d0

    ld b, b                                       ; $7991: $40
    ld h, $10                                     ; $7992: $26 $10
    or $06                                        ; $7994: $f6 $06
    jr @+$78                                      ; $7996: $18 $76

    ld e, e                                       ; $7998: $5b

jr_0d8_7999:
    ld [hl], h                                    ; $7999: $74
    jr @-$18                                      ; $799a: $18 $e6

    jr @+$32                                      ; $799c: $18 $30

    inc c                                         ; $799e: $0c
    jr nz, jr_0d8_7939                            ; $799f: $20 $98

    ld c, e                                       ; $79a1: $4b
    ld [bc], a                                    ; $79a2: $02
    cp [hl]                                       ; $79a3: $be
    and l                                         ; $79a4: $a5
    inc de                                        ; $79a5: $13
    ld h, b                                       ; $79a6: $60
    ld h, b                                       ; $79a7: $60
    db $10                                        ; $79a8: $10
    add sp, -$78                                  ; $79a9: $e8 $88
    jr nz, @+$1a                                  ; $79ab: $20 $18

    ld c, [hl]                                    ; $79ad: $4e
    ld c, c                                       ; $79ae: $49
    sub $5b                                       ; $79af: $d6 $5b

    db $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $ec, $ff, $fb, $fa, $fb, $ff, $02, $2f
    db $8a, $3d, $3f, $5f, $7f, $5f, $7f, $7a, $7f, $3d, $3f, $03, $7f, $81, $5f, $02
    db $3f, $82, $1f, $17, $02, $0f, $02, $38, $04, $50, $02, $d0, $82, $f0, $b0, $02
    db $1c, $02, $1e, $84, $0c, $1c, $16, $1e, $02, $1c, $81, $16, $02, $1e, $81, $1a
    db $02, $1c, $82, $18, $08, $02, $10, $02, $1c, $02, $02, $02, $0a, $02, $0b, $88
    db $0f, $0d, $c7, $c5, $e0, $a0, $f0, $b0, $02, $d2, $02, $13, $02, $27, $02, $32
    db $82, $2d, $3d, $02, $1d, $12, $00, $82, $0f, $0d, $02, $0b, $02, $08, $02, $04
    db $02, $0c, $82, $14, $1c, $02, $18, $10, $00, $ff, $09, $02, $f8

    rlca                                          ; $7a2e: $07
    di                                            ; $7a2f: $f3
    ld [bc], a                                    ; $7a30: $02

    db $f6, $fc, $f6, $fd, $8d, $1c, $00, $bf, $00, $be, $00, $be, $00, $3e, $00, $67
    db $00, $3e, $02, $00, $87, $36, $00, $32, $00, $63, $00, $36, $0c, $00, $85, $01
    db $00, $01, $00, $01, $19, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $eb
    db $ff, $fb, $fa, $fb, $ff, $02, $17, $8a, $3e, $3f, $5f, $7f, $7e, $7f, $75, $7f
    db $3b, $3f, $03, $7f, $81, $5f, $02, $3f, $02, $1f, $02, $0f, $02, $18, $02, $60
    db $04, $50, $02, $d0, $02, $10, $02, $18, $02, $1c, $02, $1e, $82, $06, $1e, $02
    db $1c, $02, $1e, $86, $0e, $1a, $1c, $14, $18, $08, $02, $10, $02, $1c, $02, $02
    db $02, $0b, $8c, $0f, $0d, $1f, $1d, $f3, $b3, $f0, $b0, $f2, $92, $ff, $bf, $02
    db $5e, $82, $16, $1e, $02, $0d, $02, $01, $10, $00, $02, $07, $02, $0e, $02, $08
    db $02, $14, $02, $04, $02, $1c, $81, $04, $03, $1c, $10, $00, $ff, $09, $02, $f8

    rlca                                          ; $7ad1: $07
    di                                            ; $7ad2: $f3
    ld [bc], a                                    ; $7ad3: $02

    db $f6, $fc, $f6, $fd, $8d, $1c, $00, $7f, $00, $be, $00, $be, $00, $bc, $00, $33
    db $00, $3e, $02, $00, $87, $36, $00, $01, $00, $07, $00, $04, $0c, $00, $83, $01
    db $00, $01, $1b, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $ec, $fa, $ec, $ff, $fc
    db $fa, $fc, $ff, $02, $13, $02, $3f, $85, $5f, $7f, $7e, $7f, $31, $03, $3f, $03
    db $7f, $81, $5f, $02, $3f, $02, $1f, $02, $0f, $02, $30, $02, $60, $04, $50, $82
    db $f0, $b0, $02, $18, $82, $08, $18, $04, $1e, $82, $06, $1e, $02, $1c, $02, $1e
    db $84, $0e, $1a, $1c, $14, $02, $18, $02, $10, $02, $0c, $02, $02, $02, $0a, $8a
    db $0f, $0d, $07, $05, $e7, $a7, $f0, $90, $f3, $b3, $02, $5e, $81, $13, $03, $1f
    db $02, $01, $12, $00, $82, $07, $05, $02, $0e, $02, $04, $02, $1c, $81, $04, $05
    db $1c, $12, $00, $ff, $09, $02, $f8

    rlca                                          ; $7b6b: $07
    di                                            ; $7b6c: $f3
    ld [bc], a                                    ; $7b6d: $02

    db $f7, $fc, $f7, $fd, $8d, $3e, $00, $7f, $00, $be, $00, $be, $00, $3f, $00, $63
    db $00, $3e, $02, $00, $83, $33, $00, $04, $10, $00, $83, $01, $00, $01, $1b, $00
    db $ff, $0d, $04, $f9, $07, $f3, $02, $ec, $fa, $ec, $ff, $fc, $fa, $fc, $ff, $02
    db $17, $8a, $3e, $3f, $5f, $7f, $7e, $7f, $75, $7f, $3b, $3f, $03, $7f, $81, $5f
    db $02, $3f, $02, $1f, $02, $0f, $02, $38, $04, $50, $02, $d0, $82, $f0, $b0, $02
    db $10, $02, $18, $02, $1c, $02, $1e, $82, $06, $1e, $02, $1c, $02, $1e, $86, $0e
    db $1a, $1c, $14, $18, $08, $02, $10, $02, $1c, $02, $02, $02, $0a, $02, $0b, $86
    db $0f, $0d, $e6, $a6, $f0, $b0, $02, $73, $02, $1b, $82, $37, $3f, $02, $1f, $14
    db $00, $84, $07, $05, $0f, $0d, $02, $0b, $02, $1c, $81, $04, $03, $1c, $02, $18
    db $12, $00, $ff, $09, $02, $f8

    rlca                                          ; $7c04: $07
    di                                            ; $7c05: $f3
    ld [bc], a                                    ; $7c06: $02

    db $f7, $fc, $f7, $fd, $8d, $1c, $00, $bf, $00, $be, $00, $be, $00, $3e, $00, $67
    db $00, $3e, $02, $00, $83, $32, $00, $10, $10, $00, $85, $01, $00, $01, $00, $01
    db $19, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $ec, $ff, $fb, $fa, $fb
    db $ff, $02, $2f, $8a, $3d, $3f, $5f, $7f, $5f, $7f, $7a, $7f, $3d, $3f, $03, $7f
    db $81, $5f, $02, $3f, $82, $1f, $17, $02, $0f, $02, $38, $04, $50, $84, $f0, $b0
    db $f0, $b0, $02, $1c, $02, $1e, $84, $0c, $1c, $16, $1e, $02, $1c, $81, $16, $02
    db $1e, $81, $1a, $02, $1c, $82, $18, $08, $02, $10, $02, $18, $02, $06, $04, $0a
    db $86, $0f, $0d, $cf, $cd, $e8, $a8, $02, $70, $02, $12, $02, $13, $02, $27, $02
    db $33, $82, $2d, $3d, $02, $1c, $12, $00, $84, $0f, $0d, $0f, $0d, $02, $0b, $02
    db $1c, $82, $0c, $1c, $02, $18, $12, $00, $ff, $09, $02, $f8

    rlca                                          ; $7ca3: $07
    di                                            ; $7ca4: $f3
    ld [bc], a                                    ; $7ca5: $02

    db $f6, $fc, $f6, $fd, $8d, $1c, $00, $bf, $00, $be, $00, $3e, $00, $3e, $00, $46
    db $00, $3e, $02, $00, $87, $36, $00, $32, $00, $60, $00, $30, $0e, $00, $83, $01
    db $00, $01, $19, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $ec, $ff, $fb
    db $fa, $fb, $ff, $02, $1f, $81, $7b, $03, $7f, $86, $5f, $7f, $5d, $7f, $3e, $3f
    db $03, $7f, $85, $5f, $3f, $2f, $1f, $17, $02, $0f, $02, $38, $02, $50, $02, $d0
    db $84, $f0, $b0, $f0, $b0, $02, $18, $02, $1e, $84, $14, $1c, $0e, $1e, $02, $1c
    db $03, $1e, $81, $1a, $02, $1c, $02, $18, $02, $10, $02, $18, $02, $06, $04, $0a
    db $02, $0b, $82, $8f, $8d, $02, $e8, $02, $70, $02, $12, $02, $2f, $02, $23, $02
    db $3b, $82, $25, $3d, $02, $3c, $12, $00, $86, $0f, $0d, $0f, $09, $1f, $1d, $02
    db $1a, $82, $08, $18, $02, $10, $12, $00, $ff, $09, $02, $f8

    rlca                                          ; $7d42: $07
    di                                            ; $7d43: $f3
    ld [bc], a                                    ; $7d44: $02

    db $f6, $fc, $f6, $fd, $8d, $1c, $00, $bf, $00, $be, $00, $3e, $00, $3e, $00, $4e
    db $00, $3e, $02, $00, $87, $36, $00, $40, $00, $70, $00, $10, $0e, $00, $85, $01
    db $00, $01, $00, $01, $17, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $ec, $fa, $ed
    db $ff, $fc, $fa, $fc, $ff, $02, $5f, $83, $7b, $7f, $5f, $03, $7f, $81, $3c, $03
    db $3f, $03, $7f, $83, $5f, $3f, $2f, $02, $1f, $02, $0f, $02, $30, $04, $50, $84
    db $f0, $b0, $e0, $a0, $02, $1c, $02, $1e, $83, $16, $1e, $0c, $03, $1c, $03, $1e
    db $81, $1a, $02, $1c, $02, $18, $02, $10, $02, $0c, $02, $06, $02, $0a, $02, $0b
    db $86, $0f, $0d, $c7, $c5, $e8, $a8, $02, $70, $02, $26, $02, $3b, $81, $26, $03
    db $3f, $02, $3c, $14, $00, $84, $0f, $09, $0f, $0d, $02, $1a, $81, $08, $03, $18
    db $14, $00, $ff, $09, $02, $f8

    rlca                                          ; $7ddb: $07
    di                                            ; $7ddc: $f3
    ld [bc], a                                    ; $7ddd: $02

    db $f7, $fc, $f7, $fd, $8d, $3e, $00, $bf, $00, $be, $00, $3e, $00, $7e, $00, $47
    db $00, $3e, $02, $00, $83, $66, $00, $10, $12, $00, $83, $01, $00, $01, $19, $00
    db $ff, $0d, $04, $f9, $07, $f3, $02, $ec, $fa, $ed, $ff, $fc, $fa, $fc, $ff, $02
    db $1f, $8a, $7b, $7f, $5f, $7f, $5f, $7f, $7d, $7f, $3e, $3f, $03, $7f, $85, $5f
    db $3f, $2f, $1f, $17, $02, $0f, $02, $38, $04, $50, $02, $d0, $82, $f0, $b0, $02
    db $18, $02, $1e, $84, $14, $1c, $0e, $1e, $02, $1c, $03, $1e, $81, $1a, $02, $1c
    db $02, $18, $02, $10, $02, $1c, $02, $02, $02, $0a, $02, $0b, $88, $0f, $0d, $c7
    db $c5, $e0, $a0, $f0, $b0, $02, $d6, $02, $3e, $81, $27, $03, $3f, $02, $18, $14
    db $00, $82, $0f, $0d, $02, $0e, $02, $18, $82, $0c, $1c, $02, $18, $14, $00, $ff
    db $09, $02, $f8

    rlca                                          ; $7e71: $07
    di                                            ; $7e72: $f3
    ld [bc], a                                    ; $7e73: $02

    db $f7, $fc, $f7, $fd, $8d, $1c, $00, $bf, $00, $be, $00, $be, $00, $3e, $00, $67
    db $00, $3e, $02, $00, $83, $26, $00, $04, $10, $00, $85, $01, $00, $01, $00, $01
    db $19, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $ec, $ff, $fb, $fa, $fb
    db $fe, $02, $2f, $8a, $3d, $3f, $5f, $7f, $5f, $7f, $7a, $7f, $3d, $3f, $03, $7f
    db $81, $5f, $02, $3f, $82, $1f, $17, $02, $0f, $02, $18, $02, $60, $04, $50, $82
    db $f0, $b0, $02, $1c, $02, $1e, $84, $0c, $1c, $16, $1e, $02, $1c, $81, $16, $02
    db $1e, $81, $1a, $02, $1c, $82, $18, $08, $02, $10, $02, $1c, $02, $02, $02, $0a
    db $8c, $0f, $0d, $0f, $0d, $e7, $e5, $f0, $b0, $f0, $b0, $f2, $b2, $02, $d7, $02
    db $3f, $82, $36, $3e, $02, $1d, $02, $01, $12, $00, $02, $07, $04, $04, $02, $02
    db $02, $06, $82, $0a, $0e, $02, $0c, $10, $00, $ff, $09, $02, $f8

    rlca                                          ; $7f11: $07
    di                                            ; $7f12: $f3
    ld [bc], a                                    ; $7f13: $02

    db $f6, $fc, $f6, $fd, $8d, $1c, $00, $7f, $00, $be, $00, $be, $00, $3e, $00, $23
    db $00, $3e, $02, $00, $87, $36, $00, $22, $00, $03, $00, $06, $0c, $00, $83, $01
    db $00, $01, $1b, $00, $ff, $0d, $04, $f9, $07, $f3, $02, $eb, $fa, $eb, $ff, $fb
    db $f9, $fb, $00, $02, $07, $84, $3d, $3f, $77, $7f, $02, $3f, $8e, $7f, $75, $3f
    db $3d, $7f, $72, $7f, $52, $3f, $3d, $1f, $13, $1f, $18, $02, $27, $02, $50, $02
    db $d0, $84, $f0, $b0, $e0, $a0, $02, $14, $02, $1c, $83, $1a, $1e, $1a, $02, $1e
    db $81, $0e, $02, $1c, $84, $1e, $0e, $1e, $0a, $02, $1c, $82, $18, $08, $02, $18
    db $02, $04, $02, $0a, $02, $0b, $88, $0f, $0d, $07, $05, $f8, $98, $7b, $5b, $02
    db $29, $02, $0b, $02, $11, $02, $1e, $82, $12, $1e, $02, $0c, $10, $00, $84, $1f
    db $19, $1e, $1a, $02, $14, $02, $50, $02, $08, $02, $78, $82, $48, $78, $02, $30
    db $10, $00, $ff, $09, $02, $f8

    rlca                                          ; $7fba: $07
    di                                            ; $7fbb: $f3
    ld [bc], a                                    ; $7fbc: $02

    db $f6, $fc, $f6, $fd, $8b, $63, $00, $be, $00, $be, $00, $3e, $00, $7f, $00, $3e
    db $02, $00, $87, $26, $00, $36, $00, $22, $00, $77, $0e, $00, $83, $01, $00, $01
    db $1b, $00, $ff, $07, $01, $f8

    rlca                                          ; $7fe3: $07
    di                                            ; $7fe4: $f3
    ld [bc], a                                    ; $7fe5: $02

    db $f6, $fa, $8d, $08, $00, $0e, $00, $0b, $00, $13, $00, $03, $00, $03, $00, $01
    db $04, $00, $83, $02, $00, $0e, $0c, $00, $ff

    rst $38                                       ; $7fff: $ff
