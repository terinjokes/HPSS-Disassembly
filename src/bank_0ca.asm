; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ca", ROMX[$4000], BANK[$ca]

    db $ca

    jr nz, jr_0ca_400c                            ; $4001: $20 $09

Jump_0ca_4003:
    ld a, [bc]                                    ; $4003: $0a
    ld [$8e00], sp                                ; $4004: $08 $00 $8e
    ld b, c                                       ; $4007: $41
    rlca                                          ; $4008: $07
    nop                                           ; $4009: $00
    rst $38                                       ; $400a: $ff
    nop                                           ; $400b: $00

jr_0ca_400c:
    cp $01                                        ; $400c: $fe $01
    nop                                           ; $400e: $00
    rrca                                          ; $400f: $0f
    ldh a, [rTMA]                                 ; $4010: $f0 $06
    add hl, bc                                    ; $4012: $09
    rst $38                                       ; $4013: $ff
    nop                                           ; $4014: $00
    adc a                                         ; $4015: $8f
    ld h, b                                       ; $4016: $60
    nop                                           ; $4017: $00
    ld a, [$fb05]                                 ; $4018: $fa $05 $fb
    nop                                           ; $401b: $00
    ld a, [$fb01]                                 ; $401c: $fa $01 $fb
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    ld a, d                                       ; $4021: $7a
    add c                                         ; $4022: $81
    ei                                            ; $4023: $fb
    nop                                           ; $4024: $00
    cp d                                          ; $4025: $ba
    ld b, b                                       ; $4026: $40
    db $db                                        ; $4027: $db
    jr nz, jr_0ca_4032                            ; $4028: $20 $08

    ld a, [hl]                                    ; $402a: $7e
    ld bc, $027d                                  ; $402b: $01 $7d $02
    inc b                                         ; $402e: $04
    nop                                           ; $402f: $00
    add d                                         ; $4030: $82
    cp [hl]                                       ; $4031: $be

jr_0ca_4032:
    ld bc, $3f10                                  ; $4032: $01 $10 $3f
    nop                                           ; $4035: $00
    cp [hl]                                       ; $4036: $be
    inc c                                         ; $4037: $0c
    nop                                           ; $4038: $00
    rst $20                                       ; $4039: $e7
    nop                                           ; $403a: $00
    pop af                                        ; $403b: $f1
    ld [bc], a                                    ; $403c: $02
    nop                                           ; $403d: $00
    ld hl, sp+$01                                 ; $403e: $f8 $01
    db $ec                                        ; $4040: $ec
    ld [de], a                                    ; $4041: $12
    db $fc                                        ; $4042: $fc

jr_0ca_4043:
    nop                                           ; $4043: $00
    db $fc                                        ; $4044: $fc
    inc bc                                        ; $4045: $03
    db $10                                        ; $4046: $10
    ei                                            ; $4047: $fb
    inc b                                         ; $4048: $04
    ei                                            ; $4049: $fb
    ld a, [hl-]                                   ; $404a: $3a
    nop                                           ; $404b: $00
    rst $28                                       ; $404c: $ef
    db $10                                        ; $404d: $10
    or $09                                        ; $404e: $f6 $09
    inc b                                         ; $4050: $04
    ccf                                           ; $4051: $3f
    ret nz                                        ; $4052: $c0

    sbc $21                                       ; $4053: $de $21
    ld a, a                                       ; $4055: $7f
    ld b, [hl]                                    ; $4056: $46
    nop                                           ; $4057: $00
    rst $18                                       ; $4058: $df
    jr nz, jr_0ca_405b                            ; $4059: $20 $00

jr_0ca_405b:
    di                                            ; $405b: $f3
    ld [$8877], sp                                ; $405c: $08 $77 $88
    di                                            ; $405f: $f3
    inc b                                         ; $4060: $04
    ld sp, hl                                     ; $4061: $f9
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    db $fc                                        ; $4064: $fc
    ld [bc], a                                    ; $4065: $02
    db $fc                                        ; $4066: $fc
    nop                                           ; $4067: $00
    cp c                                          ; $4068: $b9
    ld b, d                                       ; $4069: $42
    ld [hl], e                                    ; $406a: $73
    adc b                                         ; $406b: $88
    nop                                           ; $406c: $00
    sbc d                                         ; $406d: $9a
    dec h                                         ; $406e: $25
    rst $10                                       ; $406f: $d7
    jr z, @-$5f                                   ; $4070: $28 $9f

    nop                                           ; $4072: $00
    ccf                                           ; $4073: $3f
    ret nz                                        ; $4074: $c0

    nop                                           ; $4075: $00
    ld a, [hl]                                    ; $4076: $7e
    ld bc, $807f                                  ; $4077: $01 $7f $80
    ld a, $41                                     ; $407a: $3e $41
    sbc a                                         ; $407c: $9f
    nop                                           ; $407d: $00
    ld c, b                                       ; $407e: $48
    db $fd                                        ; $407f: $fd
    ld [bc], a                                    ; $4080: $02
    nop                                           ; $4081: $00
    cp l                                          ; $4082: $bd
    ld b, b                                       ; $4083: $40
    inc b                                         ; $4084: $04
    jr jr_0ca_4043                                ; $4085: $18 $bc

    ld b, c                                       ; $4087: $41
    call c, Call_000_2100                         ; $4088: $dc $00 $21
    cp [hl]                                       ; $408b: $be
    ld b, c                                       ; $408c: $41
    ld e, a                                       ; $408d: $5f
    add b                                         ; $408e: $80
    sbc [hl]                                      ; $408f: $9e
    ld bc, $085f                                  ; $4090: $01 $5f $08
    nop                                           ; $4093: $00
    cp a                                          ; $4094: $bf
    nop                                           ; $4095: $00
    ld a, a                                       ; $4096: $7f
    adc b                                         ; $4097: $88
    nop                                           ; $4098: $00
    rst $38                                       ; $4099: $ff
    nop                                           ; $409a: $00
    pop af                                        ; $409b: $f1
    nop                                           ; $409c: $00
    nop                                           ; $409d: $00
    ld [hl], c                                    ; $409e: $71
    add h                                         ; $409f: $84
    push af                                       ; $40a0: $f5
    ld a, [bc]                                    ; $40a1: $0a
    halt                                          ; $40a2: $76
    add c                                         ; $40a3: $81
    rst $30                                       ; $40a4: $f7
    db $10                                        ; $40a5: $10
    ld [$08f0], sp                                ; $40a6: $08 $f0 $08
    db $10                                        ; $40a9: $10
    ld [$419e], sp                                ; $40aa: $08 $9e $41
    sbc a                                         ; $40ad: $9f
    ld b, b                                       ; $40ae: $40
    nop                                           ; $40af: $00
    ld e, [hl]                                    ; $40b0: $5e
    and c                                         ; $40b1: $a1

jr_0ca_40b2:
    dec a                                         ; $40b2: $3d
    ld b, d                                       ; $40b3: $42
    cp [hl]                                       ; $40b4: $be
    ld b, c                                       ; $40b5: $41
    ccf                                           ; $40b6: $3f
    ret nz                                        ; $40b7: $c0

    nop                                           ; $40b8: $00
    ld a, [$fd05]                                 ; $40b9: $fa $05 $fd
    ld [bc], a                                    ; $40bc: $02
    rst $28                                       ; $40bd: $ef
    db $10                                        ; $40be: $10
    ldh a, [rTMA]                                 ; $40bf: $f0 $06
    nop                                           ; $40c1: $00
    rst $38                                       ; $40c2: $ff
    nop                                           ; $40c3: $00
    ld a, a                                       ; $40c4: $7f
    add b                                         ; $40c5: $80
    cp $01                                        ; $40c6: $fe $01
    ld sp, hl                                     ; $40c8: $f9
    inc b                                         ; $40c9: $04
    nop                                           ; $40ca: $00
    and $10                                       ; $40cb: $e6 $10
    reti                                          ; $40cd: $d9


    jr nz, jr_0ca_4147                            ; $40ce: $20 $77

    nop                                           ; $40d0: $00
    db $db                                        ; $40d1: $db

jr_0ca_40d2:
    inc b                                         ; $40d2: $04
    inc c                                         ; $40d3: $0c
    cp e                                          ; $40d4: $bb
    inc b                                         ; $40d5: $04
    rlca                                          ; $40d6: $07
    ret z                                         ; $40d7: $c8

    inc a                                         ; $40d8: $3c
    ld [$08c8], sp                                ; $40d9: $08 $c8 $08
    cp d                                          ; $40dc: $ba
    ld b, b                                       ; $40dd: $40
    ld [$22d9], sp                                ; $40de: $08 $d9 $22
    ld sp, hl                                     ; $40e1: $f9
    ld [bc], a                                    ; $40e2: $02
    ld c, $18                                     ; $40e3: $0e $18
    rst $38                                       ; $40e5: $ff
    nop                                           ; $40e6: $00
    xor $4c                                       ; $40e7: $ee $4c
    ld de, $0834                                  ; $40e9: $11 $34 $08
    rst $38                                       ; $40ec: $ff
    nop                                           ; $40ed: $00
    inc b                                         ; $40ee: $04
    ld [$085e], sp                                ; $40ef: $08 $5e $08
    rst $28                                       ; $40f2: $ef
    db $10                                        ; $40f3: $10
    jr z, jr_0ca_40d2                             ; $40f4: $28 $dc

    jr nz, jr_0ca_40b2                            ; $40f6: $20 $ba

    nop                                           ; $40f8: $00
    ld bc, $086a                                  ; $40f9: $01 $6a $08
    ret nz                                        ; $40fc: $c0

    inc l                                         ; $40fd: $2c
    ret nz                                        ; $40fe: $c0

    ld a, [bc]                                    ; $40ff: $0a
    ld a, [bc]                                    ; $4100: $0a
    rst $08                                       ; $4101: $cf
    jr nz, jr_0ca_4142                            ; $4102: $20 $3e

    inc c                                         ; $4104: $0c
    db $10                                        ; $4105: $10
    cp $12                                        ; $4106: $fe $12
    nop                                           ; $4108: $00
    ld c, $00                                     ; $4109: $0e $00
    ld de, $400f                                  ; $410b: $11 $0f $40
    adc $11                                       ; $410e: $ce $11

jr_0ca_4110:
    or a                                          ; $4110: $b7
    ld b, b                                       ; $4111: $40
    ld a, a                                       ; $4112: $7f
    ld d, b                                       ; $4113: $50
    add b                                         ; $4114: $80
    db $10                                        ; $4115: $10
    add hl, bc                                    ; $4116: $09
    db $fd                                        ; $4117: $fd
    inc d                                         ; $4118: $14
    ld bc, $16e0                                  ; $4119: $01 $e0 $16
    rst $18                                       ; $411c: $df
    jr nz, jr_0ca_415f                            ; $411d: $20 $40

    sbc $2c                                       ; $411f: $de $2c
    db $10                                        ; $4121: $10
    ld a, a                                       ; $4122: $7f
    add b                                         ; $4123: $80
    ld c, $51                                     ; $4124: $0e $51
    rst $20                                       ; $4126: $e7
    nop                                           ; $4127: $00
    ld [bc], a                                    ; $4128: $02
    ld a, $41                                     ; $4129: $3e $41
    rst $38                                       ; $412b: $ff
    nop                                           ; $412c: $00
    cp a                                          ; $412d: $bf
    ld b, b                                       ; $412e: $40
    ld c, [hl]                                    ; $412f: $4e
    ld [$10fe], sp                                ; $4130: $08 $fe $10
    ld bc, $01fe                                  ; $4133: $01 $fe $01
    nop                                           ; $4136: $00
    add hl, bc                                    ; $4137: $09
    rst $30                                       ; $4138: $f7
    ld [$04fb], sp                                ; $4139: $08 $fb $04
    add b                                         ; $413c: $80
    ld c, $08                                     ; $413d: $0e $08
    rra                                           ; $413f: $1f
    jr nz, jr_0ca_4110                            ; $4140: $20 $ce

jr_0ca_4142:
    ld sp, $40bf                                  ; $4142: $31 $bf $40
    ld a, $00                                     ; $4145: $3e $00

jr_0ca_4147:
    add c                                         ; $4147: $81
    ccf                                           ; $4148: $3f
    ld b, b                                       ; $4149: $40
    ldh [rNR23], a                                ; $414a: $e0 $18
    rst $30                                       ; $414c: $f7
    ld [$40b8], sp                                ; $414d: $08 $b8 $40
    ld b, h                                       ; $4150: $44
    ld b, h                                       ; $4151: $44
    ld [$02fc], sp                                ; $4152: $08 $fc $02
    ld hl, sp+$04                                 ; $4155: $f8 $04
    ldh a, [$0b]                                  ; $4157: $f0 $0b
    ld [bc], a                                    ; $4159: $02
    ld c, $31                                     ; $415a: $0e $31
    rst $18                                       ; $415c: $df
    jr nz, jr_0ca_419e                            ; $415d: $20 $3f

jr_0ca_415f:
    ld b, b                                       ; $415f: $40
    ld h, b                                       ; $4160: $60
    ld [$807e], sp                                ; $4161: $08 $7e $80
    ld e, $00                                     ; $4164: $1e $00
    ld a, [de]                                    ; $4166: $1a
    and l                                         ; $4167: $a5
    sbc $21                                       ; $4168: $de $21
    rst $00                                       ; $416a: $c7
    ld [$10fa], sp                                ; $416b: $08 $fa $10
    ld bc, $26c0                                  ; $416e: $01 $c0 $26

jr_0ca_4171:
    and d                                         ; $4171: $a2
    jr z, jr_0ca_4171                             ; $4172: $28 $fd

    ld [bc], a                                    ; $4174: $02
    ld a, $41                                     ; $4175: $3e $41
    nop                                           ; $4177: $00
    db $dd                                        ; $4178: $dd
    ld [hl+], a                                   ; $4179: $22
    xor $11                                       ; $417a: $ee $11

jr_0ca_417c:
    dec c                                         ; $417c: $0d
    ld [de], a                                    ; $417d: $12
    ld a, [$0005]                                 ; $417e: $fa $05 $00
    push af                                       ; $4181: $f5
    ld a, [bc]                                    ; $4182: $0a
    xor d                                         ; $4183: $aa
    rst $38                                       ; $4184: $ff
    call nz, $9108                                ; $4185: $c4 $08 $91
    inc h                                         ; $4188: $24
    ld h, b                                       ; $4189: $60
    cp e                                          ; $418a: $bb
    ld h, h                                       ; $418b: $64
    nop                                           ; $418c: $00
    add [hl]                                      ; $418d: $86
    ld [$a05f], sp                                ; $418e: $08 $5f $a0
    xor d                                         ; $4191: $aa
    rst $38                                       ; $4192: $ff
    ld b, a                                       ; $4193: $47
    ld [$1388], sp                                ; $4194: $08 $88 $13
    inc b                                         ; $4197: $04
    cp e                                          ; $4198: $bb
    and b                                         ; $4199: $a0
    db $10                                        ; $419a: $10
    xor $11                                       ; $419b: $ee $11
    push de                                       ; $419d: $d5

jr_0ca_419e:
    nop                                           ; $419e: $00
    ld a, [hl+]                                   ; $419f: $2a
    xor d                                         ; $41a0: $aa
    rst $38                                       ; $41a1: $ff
    rst $08                                       ; $41a2: $cf
    nop                                           ; $41a3: $00
    call z, $cc22                                 ; $41a4: $cc $22 $cc
    nop                                           ; $41a7: $00
    ld de, $20cc                                  ; $41a8: $11 $cc $20
    call z, $ff21                                 ; $41ab: $cc $21 $ff
    nop                                           ; $41ae: $00
    ld d, a                                       ; $41af: $57
    ld b, b                                       ; $41b0: $40
    xor b                                         ; $41b1: $a8
    db $10                                        ; $41b2: $10
    ld [$10cf], sp                                ; $41b3: $08 $cf $10

jr_0ca_41b6:
    rst $08                                       ; $41b6: $cf
    db $10                                        ; $41b7: $10
    rrca                                          ; $41b8: $0f
    ld b, b                                       ; $41b9: $40
    nop                                           ; $41ba: $00
    ld c, $01                                     ; $41bb: $0e $01
    db $fd                                        ; $41bd: $fd
    ld [bc], a                                    ; $41be: $02
    ld [$aa15], a                                 ; $41bf: $ea $15 $aa
    rst $38                                       ; $41c2: $ff
    inc b                                         ; $41c3: $04
    rst $18                                       ; $41c4: $df
    jr nz, jr_0ca_41b6                            ; $41c5: $20 $ef

    nop                                           ; $41c7: $00
    ldh a, [$ca]                                  ; $41c8: $f0 $ca
    ld bc, $00ff                                  ; $41ca: $01 $ff $00
    nop                                           ; $41cd: $00
    rst $18                                       ; $41ce: $df
    jr nz, jr_0ca_417c                            ; $41cf: $20 $ab

    ld d, h                                       ; $41d1: $54
    xor d                                         ; $41d2: $aa
    rst $38                                       ; $41d3: $ff
    cp $01                                        ; $41d4: $fe $01
    ld [$18e7], sp                                ; $41d6: $08 $e7 $18
    ld e, $61                                     ; $41d9: $1e $61
    or d                                          ; $41db: $b2
    ld [$02fd], sp                                ; $41dc: $08 $fd $02
    ld a, [$0500]                                 ; $41df: $fa $00 $05
    xor d                                         ; $41e2: $aa
    rst $38                                       ; $41e3: $ff
    rst $30                                       ; $41e4: $f7
    nop                                           ; $41e5: $00
    or $00                                        ; $41e6: $f6 $00
    pop af                                        ; $41e8: $f1
    nop                                           ; $41e9: $00
    ld a, [bc]                                    ; $41ea: $0a
    ld [hl], h                                    ; $41eb: $74
    adc c                                         ; $41ec: $89
    cp e                                          ; $41ed: $bb
    ld b, h                                       ; $41ee: $44
    ld e, a                                       ; $41ef: $5f
    and b                                         ; $41f0: $a0
    xor l                                         ; $41f1: $ad
    ld [$aa52], sp                                ; $41f2: $08 $52 $aa
    rst $38                                       ; $41f5: $ff
    ld a, a                                       ; $41f6: $7f
    ld c, h                                       ; $41f7: $4c
    ld bc, $02bd                                  ; $41f8: $01 $bd $02
    sbc [hl]                                      ; $41fb: $9e
    nop                                           ; $41fc: $00
    ld hl, $a25d                                  ; $41fd: $21 $5d $a2
    ld a, [$7505]                                 ; $4200: $fa $05 $75
    adc d                                         ; $4203: $8a
    xor d                                         ; $4204: $aa
    nop                                           ; $4205: $00
    rst $38                                       ; $4206: $ff
    ldh a, [$03]                                  ; $4207: $f0 $03
    ldh a, [$0b]                                  ; $4209: $f0 $0b
    ld hl, sp+$04                                 ; $420b: $f8 $04
    db $fc                                        ; $420d: $fc
    add b                                         ; $420e: $80
    ld b, d                                       ; $420f: $42
    ld de, $807f                                  ; $4210: $11 $7f $80
    xor d                                         ; $4213: $aa
    rst $38                                       ; $4214: $ff
    rra                                           ; $4215: $1f
    add b                                         ; $4216: $80
    rra                                           ; $4217: $1f
    ld hl, $3fa0                                  ; $4218: $21 $a0 $3f
    inc d                                         ; $421b: $14
    ld bc, $01fe                                  ; $421c: $01 $fe $01
    push af                                       ; $421f: $f5
    ld a, [bc]                                    ; $4220: $0a
    ld h, b                                       ; $4221: $60

jr_0ca_4222:
    ld [$bf00], sp                                ; $4222: $08 $00 $bf
    ld b, b                                       ; $4225: $40
    ld a, b                                       ; $4226: $78
    add h                                         ; $4227: $84
    rst $30                                       ; $4228: $f7
    ld [$906f], sp                                ; $4229: $08 $6f $90
    nop                                           ; $422c: $00
    ldh [rNR10], a                                ; $422d: $e0 $10
    ld a, a                                       ; $422f: $7f
    add b                                         ; $4230: $80
    cp a                                          ; $4231: $bf
    ld b, b                                       ; $4232: $40
    xor d                                         ; $4233: $aa
    rst $38                                       ; $4234: $ff
    nop                                           ; $4235: $00
    ret                                           ; $4236: $c9


    db $f4                                        ; $4237: $f4
    rst $00                                       ; $4238: $c7
    ld hl, sp-$2b                                 ; $4239: $f8 $d5
    jr z, jr_0ca_4222                             ; $423b: $28 $e5

    jr jr_0ca_423f                                ; $423d: $18 $00

jr_0ca_423f:
    rla                                           ; $423f: $17
    ld l, b                                       ; $4240: $68
    xor [hl]                                      ; $4241: $ae
    ld d, b                                       ; $4242: $50
    dec h                                         ; $4243: $25
    ld e, b                                       ; $4244: $58
    adc [hl]                                      ; $4245: $8e
    ld [hl], b                                    ; $4246: $70
    nop                                           ; $4247: $00
    call nc, Call_0ca_727b                        ; $4248: $d4 $7b $72
    ld a, l                                       ; $424b: $7d
    push de                                       ; $424c: $d5
    ld a, e                                       ; $424d: $7b
    rst $28                                       ; $424e: $ef
    rst $38                                       ; $424f: $ff
    nop                                           ; $4250: $00
    xor a                                         ; $4251: $af
    rst $38                                       ; $4252: $ff
    cp e                                          ; $4253: $bb
    rst $38                                       ; $4254: $ff
    cp $ff                                        ; $4255: $fe $ff
    sub [hl]                                      ; $4257: $96
    rst $38                                       ; $4258: $ff
    nop                                           ; $4259: $00
    ldh [rIE], a                                  ; $425a: $e0 $ff
    add hl, hl                                    ; $425c: $29
    or $65                                        ; $425d: $f6 $65
    ld a, [$e3b8]                                 ; $425f: $fa $b8 $e3
    nop                                           ; $4262: $00
    db $f4                                        ; $4263: $f4
    db $e3                                        ; $4264: $e3
    xor h                                         ; $4265: $ac
    jp $c235                                      ; $4266: $c3 $35 $c2


    ld [hl], $c1                                  ; $4269: $36 $c1

jr_0ca_426b:
    nop                                           ; $426b: $00
    xor l                                         ; $426c: $ad
    ld b, b                                       ; $426d: $40
    dec l                                         ; $426e: $2d
    ret nz                                        ; $426f: $c0

    ccf                                           ; $4270: $3f
    ret nz                                        ; $4271: $c0

    rst $10                                       ; $4272: $d7
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    ld l, [hl]                                    ; $4275: $6e
    add b                                         ; $4276: $80
    ld [hl], a                                    ; $4277: $77
    add b                                         ; $4278: $80
    ld l, l                                       ; $4279: $6d
    ld hl, sp+$7d                                 ; $427a: $f8 $7d
    ldh a, [rP1]                                  ; $427c: $f0 $00
    ld c, e                                       ; $427e: $4b
    ld sp, $51ab                                  ; $427f: $31 $ab $51
    dec c                                         ; $4282: $0d
    pop af                                        ; $4283: $f1

jr_0ca_4284:
    cp h                                          ; $4284: $bc
    ld bc, $e600                                  ; $4285: $01 $00 $e6
    ld bc, $01ba                                  ; $4288: $01 $ba $01
    or h                                          ; $428b: $b4
    ld bc, $01de                                  ; $428c: $01 $de $01
    nop                                           ; $428f: $00
    cp [hl]                                       ; $4290: $be
    ldh [$7b], a                                  ; $4291: $e0 $7b
    ldh [$fa], a                                  ; $4293: $e0 $fa
    ldh [$37], a                                  ; $4295: $e0 $37
    ret nz                                        ; $4297: $c0

    nop                                           ; $4298: $00
    xor d                                         ; $4299: $aa
    ld b, e                                       ; $429a: $43
    ld a, a                                       ; $429b: $7f
    add e                                         ; $429c: $83
    or a                                          ; $429d: $b7
    ld b, e                                       ; $429e: $43
    xor e                                         ; $429f: $ab
    ld b, e                                       ; $42a0: $43
    nop                                           ; $42a1: $00
    and l                                         ; $42a2: $a5
    jr jr_0ca_426b                                ; $42a3: $18 $c6

    jr c, jr_0ca_4284                             ; $42a5: $38 $dd

    ld a, b                                       ; $42a7: $78
    rst $28                                       ; $42a8: $ef
    ld a, b                                       ; $42a9: $78
    nop                                           ; $42aa: $00
    db $fd                                        ; $42ab: $fd
    ld hl, sp-$0a                                 ; $42ac: $f8 $f6
    ld hl, sp+$6d                                 ; $42ae: $f8 $6d
    ld hl, sp-$2a                                 ; $42b0: $f8 $d6
    ld hl, sp+$00                                 ; $42b2: $f8 $00
    or c                                          ; $42b4: $b1
    rst $38                                       ; $42b5: $ff
    push af                                       ; $42b6: $f5
    ei                                            ; $42b7: $fb
    pop de                                        ; $42b8: $d1
    rst $38                                       ; $42b9: $ff
    db $eb                                        ; $42ba: $eb
    rst $38                                       ; $42bb: $ff
    ld b, b                                       ; $42bc: $40
    and a                                         ; $42bd: $a7
    ld h, b                                       ; $42be: $60
    db $10                                        ; $42bf: $10
    or [hl]                                       ; $42c0: $b6
    rst $38                                       ; $42c1: $ff
    ld h, h                                       ; $42c2: $64
    ei                                            ; $42c3: $fb
    ld de, $02ee                                  ; $42c4: $11 $ee $02
    ld b, l                                       ; $42c7: $45
    ld a, [$c3b8]                                 ; $42c8: $fa $b8 $c3
    db $f4                                        ; $42cb: $f4
    jp $0860                                      ; $42cc: $c3 $60 $08


    or h                                          ; $42cf: $b4
    nop                                           ; $42d0: $00
    ld b, e                                       ; $42d1: $43
    ld l, b                                       ; $42d2: $68
    add a                                         ; $42d3: $87
    ld a, d                                       ; $42d4: $7a
    add l                                         ; $42d5: $85
    ld a, c                                       ; $42d6: $79
    add [hl]                                      ; $42d7: $86
    ld e, c                                       ; $42d8: $59
    nop                                           ; $42d9: $00
    add [hl]                                      ; $42da: $86
    ld e, d                                       ; $42db: $5a
    add l                                         ; $42dc: $85
    ld d, d                                       ; $42dd: $52
    add l                                         ; $42de: $85
    ld a, l                                       ; $42df: $7d
    add d                                         ; $42e0: $82
    ld d, b                                       ; $42e1: $50
    nop                                           ; $42e2: $00
    add a                                         ; $42e3: $87
    ld d, l                                       ; $42e4: $55
    and c                                         ; $42e5: $a1
    scf                                           ; $42e6: $37
    pop bc                                        ; $42e7: $c1
    dec e                                         ; $42e8: $1d
    pop hl                                        ; $42e9: $e1
    cp h                                          ; $42ea: $bc
    jr z, @+$03                                   ; $42eb: $28 $01

    or $60                                        ; $42ed: $f6 $60
    nop                                           ; $42ef: $00
    and h                                         ; $42f0: $a4
    ld h, b                                       ; $42f1: $60
    nop                                           ; $42f2: $00
    rrca                                          ; $42f3: $0f
    ld [hl], b                                    ; $42f4: $70
    call Call_000_3100                            ; $42f5: $cd $00 $31
    cpl                                           ; $42f8: $2f
    pop de                                        ; $42f9: $d1
    ld bc, $45ff                                  ; $42fa: $01 $ff $45
    cp e                                          ; $42fd: $bb
    and l                                         ; $42fe: $a5
    nop                                           ; $42ff: $00
    ld a, [$fac5]                                 ; $4300: $fa $c5 $fa
    xor d                                         ; $4303: $aa
    db $f4                                        ; $4304: $f4
    db $fd                                        ; $4305: $fd
    cp $bc                                        ; $4306: $fe $bc
    nop                                           ; $4308: $00
    rst $38                                       ; $4309: $ff
    ld [hl], h                                    ; $430a: $74
    rst $38                                       ; $430b: $ff
    cp h                                          ; $430c: $bc
    rst $38                                       ; $430d: $ff
    ld [hl], a                                    ; $430e: $77
    db $fc                                        ; $430f: $fc
    xor $00                                       ; $4310: $ee $00
    inc a                                         ; $4312: $3c
    rst $28                                       ; $4313: $ef
    inc a                                         ; $4314: $3c
    or $3c                                        ; $4315: $f6 $3c
    ld a, a                                       ; $4317: $7f
    add a                                         ; $4318: $87
    dec h                                         ; $4319: $25
    nop                                           ; $431a: $00
    rst $00                                       ; $431b: $c7
    xor [hl]                                      ; $431c: $ae
    ld b, a                                       ; $431d: $47
    rla                                           ; $431e: $17
    rst $00                                       ; $431f: $c7
    ld l, a                                       ; $4320: $6f
    rlca                                          ; $4321: $07
    rst $28                                       ; $4322: $ef
    nop                                           ; $4323: $00
    rlca                                          ; $4324: $07
    ld e, e                                       ; $4325: $5b
    rlca                                          ; $4326: $07
    push af                                       ; $4327: $f5
    rlca                                          ; $4328: $07
    ld a, [$ddf0]                                 ; $4329: $fa $f0 $dd
    nop                                           ; $432c: $00
    ldh a, [$fe]                                  ; $432d: $f0 $fe
    ldh a, [$f5]                                  ; $432f: $f0 $f5
    pop af                                        ; $4331: $f1
    xor e                                         ; $4332: $ab
    pop af                                        ; $4333: $f1
    cp e                                          ; $4334: $bb
    nop                                           ; $4335: $00
    pop af                                        ; $4336: $f1
    pop de                                        ; $4337: $d1
    rst $38                                       ; $4338: $ff
    or l                                          ; $4339: $b5
    ei                                            ; $433a: $fb
    add sp, $17                                   ; $433b: $e8 $17
    and h                                         ; $433d: $a4
    nop                                           ; $433e: $00
    dec de                                        ; $433f: $1b
    ldh [rIE], a                                  ; $4340: $e0 $ff
    and l                                         ; $4342: $a5
    ld a, [$f36c]                                 ; $4343: $fa $6c $f3
    xor b                                         ; $4346: $a8
    nop                                           ; $4347: $00
    rst $30                                       ; $4348: $f7
    db $e4                                        ; $4349: $e4
    ei                                            ; $434a: $fb
    xor b                                         ; $434b: $a8
    rst $30                                       ; $434c: $f7
    ld a, l                                       ; $434d: $7d
    add e                                         ; $434e: $83
    xor [hl]                                      ; $434f: $ae
    nop                                           ; $4350: $00
    ld b, a                                       ; $4351: $47
    scf                                           ; $4352: $37
    rst $00                                       ; $4353: $c7
    ld a, [hl]                                    ; $4354: $7e
    add a                                         ; $4355: $87
    cp a                                          ; $4356: $bf
    ld b, a                                       ; $4357: $47
    xor [hl]                                      ; $4358: $ae
    ld [bc], a                                    ; $4359: $02
    ld b, a                                       ; $435a: $47
    or a                                          ; $435b: $b7
    ld b, a                                       ; $435c: $47
    ld l, $c7                                     ; $435d: $2e $c7
    rst $28                                       ; $435f: $ef
    jr nc, jr_0ca_4362                            ; $4360: $30 $00

jr_0ca_4362:
    ld l, a                                       ; $4362: $6f

jr_0ca_4363:
    nop                                           ; $4363: $00
    ldh a, [$f0]                                  ; $4364: $f0 $f0
    rst $38                                       ; $4366: $ff
    ld [hl], d                                    ; $4367: $72
    db $fd                                        ; $4368: $fd
    ld a, [c]                                     ; $4369: $f2
    db $fd                                        ; $436a: $fd
    ld d, d                                       ; $436b: $52
    ld [bc], a                                    ; $436c: $02
    db $fd                                        ; $436d: $fd
    db $f4                                        ; $436e: $f4
    ei                                            ; $436f: $fb
    cp $ff                                        ; $4370: $fe $ff
    ld a, [$00a6]                                 ; $4372: $fa $a6 $00
    or $00                                        ; $4375: $f6 $00
    rst $38                                       ; $4377: $ff
    ei                                            ; $4378: $fb
    cp $f7                                        ; $4379: $fe $f7
    ld e, $f7                                     ; $437b: $1e $f7
    ld e, $7b                                     ; $437d: $1e $7b
    nop                                           ; $437f: $00
    ld e, $ff                                     ; $4380: $1e $ff
    inc bc                                        ; $4382: $03
    dec hl                                        ; $4383: $2b
    jp $43b6                                      ; $4384: $c3 $b6 $43


    dec hl                                        ; $4387: $2b
    nop                                           ; $4388: $00
    jp Jump_000_0377                              ; $4389: $c3 $77 $03


    ld [hl], l                                    ; $438c: $75
    inc bc                                        ; $438d: $03
    xor l                                         ; $438e: $ad
    inc bc                                        ; $438f: $03

jr_0ca_4390:
    ld a, d                                       ; $4390: $7a
    nop                                           ; $4391: $00
    inc bc                                        ; $4392: $03
    add sp, -$79                                  ; $4393: $e8 $87
    ld a, [$d685]                                 ; $4395: $fa $85 $d6
    add b                                         ; $4398: $80
    db $ed                                        ; $4399: $ed
    nop                                           ; $439a: $00
    add b                                         ; $439b: $80
    jp c, $de80                                   ; $439c: $da $80 $de

    add b                                         ; $439f: $80
    ld [$d780], a                                 ; $43a0: $ea $80 $d7
    nop                                           ; $43a3: $00
    add b                                         ; $43a4: $80
    cp b                                          ; $43a5: $b8
    rlca                                          ; $43a6: $07
    call nc, $f00b                                ; $43a7: $d4 $0b $f0
    rst $38                                       ; $43aa: $ff
    call nc, $fb00                                ; $43ab: $d4 $00 $fb
    cp d                                          ; $43ae: $ba
    push af                                       ; $43af: $f5
    call nc, $f2fb                                ; $43b0: $d4 $fb $f2
    db $fd                                        ; $43b3: $fd
    call nc, $fb00                                ; $43b4: $d4 $00 $fb
    rst $20                                       ; $43b7: $e7
    ld hl, sp-$36                                 ; $43b8: $f8 $ca
    db $f4                                        ; $43ba: $f4
    ld b, a                                       ; $43bb: $47
    ld hl, sp-$2d                                 ; $43bc: $f8 $d3
    nop                                           ; $43be: $00
    db $ec                                        ; $43bf: $ec
    sub d                                         ; $43c0: $92
    db $ec                                        ; $43c1: $ec
    ld c, c                                       ; $43c2: $49
    db $f4                                        ; $43c3: $f4
    add $f8                                       ; $43c4: $c6 $f8
    ld a, l                                       ; $43c6: $7d
    nop                                           ; $43c7: $00
    ld hl, sp+$7f                                 ; $43c8: $f8 $7f
    jr c, jr_0ca_4390                             ; $43ca: $38 $c4

    jr c, jr_0ca_4363                             ; $43cc: $38 $95

    ld l, b                                       ; $43ce: $68
    and [hl]                                      ; $43cf: $a6
    ld [bc], a                                    ; $43d0: $02
    ld e, b                                       ; $43d1: $58
    and l                                         ; $43d2: $a5
    ld e, b                                       ; $43d3: $58
    add [hl]                                      ; $43d4: $86
    ld a, b                                       ; $43d5: $78
    sub c                                         ; $43d6: $91
    ld [hl], h                                    ; $43d7: $74
    ld bc, $005b                                  ; $43d8: $01 $5b $00
    rrca                                          ; $43db: $0f
    rst $28                                       ; $43dc: $ef
    rrca                                          ; $43dd: $0f
    ld a, a                                       ; $43de: $7f
    rrca                                          ; $43df: $0f
    pop de                                        ; $43e0: $d1
    ld c, $c5                                     ; $43e1: $0e $c5
    nop                                           ; $43e3: $00
    ld a, [bc]                                    ; $43e4: $0a
    pop af                                        ; $43e5: $f1
    ld c, $d3                                     ; $43e6: $0e $d3
    inc c                                         ; $43e8: $0c
    ld b, c                                       ; $43e9: $41
    cp [hl]                                       ; $43ea: $be
    xor c                                         ; $43eb: $a9
    nop                                           ; $43ec: $00
    rst $30                                       ; $43ed: $f7
    push hl                                       ; $43ee: $e5
    ei                                            ; $43ef: $fb
    push hl                                       ; $43f0: $e5
    dec de                                        ; $43f1: $1b
    db $e3                                        ; $43f2: $e3
    dec e                                         ; $43f3: $1d
    xor d                                         ; $43f4: $aa
    nop                                           ; $43f5: $00
    rla                                           ; $43f6: $17
    db $e3                                        ; $43f7: $e3
    rra                                           ; $43f8: $1f
    ld l, a                                       ; $43f9: $6f
    inc de                                        ; $43fa: $13
    ld c, c                                       ; $43fb: $49
    ld d, $83                                     ; $43fc: $16 $83
    nop                                           ; $43fe: $00
    rst $38                                       ; $43ff: $ff
    adc e                                         ; $4400: $8b
    rst $30                                       ; $4401: $f7
    sub [hl]                                      ; $4402: $96
    db $eb                                        ; $4403: $eb
    ld c, e                                       ; $4404: $4b
    rst $30                                       ; $4405: $f7
    add c                                         ; $4406: $81
    nop                                           ; $4407: $00
    rst $38                                       ; $4408: $ff
    rst $30                                       ; $4409: $f7
    rst $00                                       ; $440a: $c7
    ld a, [hl]                                    ; $440b: $7e
    rst $00                                       ; $440c: $c7
    scf                                           ; $440d: $37
    rst $00                                       ; $440e: $c7
    rst $38                                       ; $440f: $ff
    nop                                           ; $4410: $00
    add a                                         ; $4411: $87
    rst $10                                       ; $4412: $d7
    add a                                         ; $4413: $87
    sub a                                         ; $4414: $97
    rst $28                                       ; $4415: $ef
    cpl                                           ; $4416: $2f
    ret nc                                        ; $4417: $d0

    and [hl]                                      ; $4418: $a6
    nop                                           ; $4419: $00
    ret c                                         ; $441a: $d8

    dec c                                         ; $441b: $0d
    ldh a, [$93]                                  ; $441c: $f0 $93
    add sp, -$75                                  ; $441e: $e8 $8b
    ldh a, [rNR11]                                ; $4420: $f0 $11
    nop                                           ; $4422: $00
    xor $43                                       ; $4423: $ee $43
    cp h                                          ; $4425: $bc
    inc bc                                        ; $4426: $03
    db $fc                                        ; $4427: $fc
    ld b, l                                       ; $4428: $45
    cp d                                          ; $4429: $ba
    ld bc, $fe00                                  ; $442a: $01 $00 $fe
    dec d                                         ; $442d: $15
    ld [$be41], a                                 ; $442e: $ea $41 $be
    ld e, a                                       ; $4431: $5f
    xor [hl]                                      ; $4432: $ae
    cp a                                          ; $4433: $bf
    nop                                           ; $4434: $00
    ld e, $62                                     ; $4435: $1e $62
    inc e                                         ; $4437: $1c
    and $18                                       ; $4438: $e6 $18
    xor e                                         ; $443a: $ab
    inc d                                         ; $443b: $14
    xor d                                         ; $443c: $aa
    nop                                           ; $443d: $00
    inc d                                         ; $443e: $14
    ld h, e                                       ; $443f: $63
    inc e                                         ; $4440: $1c
    and d                                         ; $4441: $a2
    inc e                                         ; $4442: $1c
    ld l, e                                       ; $4443: $6b
    inc d                                         ; $4444: $14
    xor l                                         ; $4445: $ad
    nop                                           ; $4446: $00
    inc bc                                        ; $4447: $03
    ld a, e                                       ; $4448: $7b
    inc bc                                        ; $4449: $03
    cp a                                          ; $444a: $bf
    rlca                                          ; $444b: $07
    ld [hl], b                                    ; $444c: $70
    rlca                                          ; $444d: $07
    ld a, [c]                                     ; $444e: $f2
    nop                                           ; $444f: $00
    dec b                                         ; $4450: $05
    cp c                                          ; $4451: $b9
    ld b, $72                                     ; $4452: $06 $72
    dec b                                         ; $4454: $05
    sbc b                                         ; $4455: $98
    daa                                           ; $4456: $27
    ld [$8000], a                                 ; $4457: $ea $00 $80
    rst $30                                       ; $445a: $f7
    add b                                         ; $445b: $80
    db $fd                                        ; $445c: $fd
    ld hl, sp-$12                                 ; $445d: $f8 $ee
    ld a, b                                       ; $445f: $78
    ld e, e                                       ; $4460: $5b
    nop                                           ; $4461: $00
    ld hl, sp+$7a                                 ; $4462: $f8 $7a
    ld hl, sp-$13                                 ; $4464: $f8 $ed
    ld [hl], b                                    ; $4466: $70
    ld [hl], l                                    ; $4467: $75
    ldh a, [$d1]                                  ; $4468: $f0 $d1
    nop                                           ; $446a: $00
    rst $38                                       ; $446b: $ff
    push hl                                       ; $446c: $e5
    ei                                            ; $446d: $fb
    db $eb                                        ; $446e: $eb
    push af                                       ; $446f: $f5
    push de                                       ; $4470: $d5
    ei                                            ; $4471: $fb
    and c                                         ; $4472: $a1
    nop                                           ; $4473: $00
    rst $38                                       ; $4474: $ff
    ei                                            ; $4475: $fb
    pop af                                        ; $4476: $f1
    db $dd                                        ; $4477: $dd
    pop af                                        ; $4478: $f1
    ld c, l                                       ; $4479: $4d
    or c                                          ; $447a: $b1
    ld a, [hl]                                    ; $447b: $7e
    nop                                           ; $447c: $00
    rst $38                                       ; $447d: $ff
    push de                                       ; $447e: $d5
    rst $38                                       ; $447f: $ff
    xor $ff                                       ; $4480: $ee $ff
    db $db                                        ; $4482: $db
    rst $38                                       ; $4483: $ff
    db $fd                                        ; $4484: $fd
    ld [$5b7f], sp                                ; $4485: $08 $7f $5b
    rst $38                                       ; $4488: $ff
    cp e                                          ; $4489: $bb
    sbc h                                         ; $448a: $9c
    nop                                           ; $448b: $00
    xor a                                         ; $448c: $af
    ret nc                                        ; $448d: $d0

    ld c, $00                                     ; $448e: $0e $00
    ldh a, [$2a]                                  ; $4490: $f0 $2a
    pop de                                        ; $4492: $d1
    ld c, b                                       ; $4493: $48
    or c                                          ; $4494: $b1
    ld a, [hl+]                                   ; $4495: $2a
    rst $18                                       ; $4496: $df
    ld d, $04                                     ; $4497: $16 $04
    rst $38                                       ; $4499: $ff
    ld d, $ff                                     ; $449a: $16 $ff
    ld d, d                                       ; $449c: $52
    cp a                                          ; $449d: $bf
    ld l, d                                       ; $449e: $6a
    ld [$f609], sp                                ; $449f: $08 $09 $f6
    nop                                           ; $44a2: $00
    ld b, l                                       ; $44a3: $45
    cp d                                          ; $44a4: $ba
    adc d                                         ; $44a5: $8a
    ld [hl], h                                    ; $44a6: $74
    inc bc                                        ; $44a7: $03
    db $fc                                        ; $44a8: $fc
    ld a, [hl+]                                   ; $44a9: $2a
    call nc, $9300                                ; $44aa: $d4 $00 $93
    ld l, h                                       ; $44ad: $6c
    ld b, b                                       ; $44ae: $40
    ccf                                           ; $44af: $3f
    push de                                       ; $44b0: $d5
    ld a, [hl+]                                   ; $44b1: $2a
    ret nc                                        ; $44b2: $d0

    cpl                                           ; $44b3: $2f
    nop                                           ; $44b4: $00
    ld b, c                                       ; $44b5: $41
    ld a, $b9                                     ; $44b6: $3e $b9
    ld [bc], a                                    ; $44b8: $02
    ld [hl], b                                    ; $44b9: $70
    rlca                                          ; $44ba: $07
    ld [c], a                                     ; $44bb: $e2
    dec b                                         ; $44bc: $05
    ld bc, $0679                                  ; $44bd: $01 $79 $06
    dec d                                         ; $44c0: $15
    rst $00                                       ; $44c1: $c7
    ld l, [hl]                                    ; $44c2: $6e
    add a                                         ; $44c3: $87
    rst $10                                       ; $44c4: $d7
    ld a, b                                       ; $44c5: $78
    ld bc, $6c40                                  ; $44c6: $01 $40 $6c
    ld b, $00                                     ; $44c9: $06 $00
    ld d, l                                       ; $44cb: $55
    add a                                         ; $44cc: $87
    ld e, e                                       ; $44cd: $5b
    add a                                         ; $44ce: $87
    rrca                                          ; $44cf: $0f
    ldh a, [rP1]                                  ; $44d0: $f0 $00
    adc d                                         ; $44d2: $8a
    ldh a, [$0e]                                  ; $44d3: $f0 $0e
    ldh a, [$fa]                                  ; $44d5: $f0 $fa
    add b                                         ; $44d7: $80
    sbc $00                                       ; $44d8: $de $00
    nop                                           ; $44da: $00
    db $eb                                        ; $44db: $eb
    nop                                           ; $44dc: $00
    jp c, $ae01                                   ; $44dd: $da $01 $ae

    ld bc, $ff1f                                  ; $44e0: $01 $1f $ff
    nop                                           ; $44e3: $00
    dec d                                         ; $44e4: $15
    rst $38                                       ; $44e5: $ff
    dec de                                        ; $44e6: $1b
    rst $38                                       ; $44e7: $ff
    rla                                           ; $44e8: $17
    rst $38                                       ; $44e9: $ff
    ld e, a                                       ; $44ea: $5f
    cp a                                          ; $44eb: $bf
    nop                                           ; $44ec: $00
    dec de                                        ; $44ed: $1b
    rst $38                                       ; $44ee: $ff
    sub a                                         ; $44ef: $97
    ld h, c                                       ; $44f0: $61
    dec e                                         ; $44f1: $1d
    pop hl                                        ; $44f2: $e1
    xor e                                         ; $44f3: $ab
    db $f4                                        ; $44f4: $f4
    nop                                           ; $44f5: $00
    ld h, e                                       ; $44f6: $63
    db $fc                                        ; $44f7: $fc
    jp z, $52f4                                   ; $44f8: $ca $f4 $52

    db $ec                                        ; $44fb: $ec
    adc e                                         ; $44fc: $8b
    rst $30                                       ; $44fd: $f7
    nop                                           ; $44fe: $00
    ld b, d                                       ; $44ff: $42
    rst $38                                       ; $4500: $ff
    ld d, d                                       ; $4501: $52
    rst $28                                       ; $4502: $ef
    jp z, $d1f7                                   ; $4503: $ca $f7 $d1

    ld l, $00                                     ; $4506: $2e $00
    add b                                         ; $4508: $80
    ccf                                           ; $4509: $3f
    jp nz, $913d                                  ; $450a: $c2 $3d $91

    ld l, $42                                     ; $450d: $2e $42
    db $fd                                        ; $450f: $fd
    nop                                           ; $4510: $00
    ret nz                                        ; $4511: $c0

    rst $38                                       ; $4512: $ff
    ret                                           ; $4513: $c9


    or $62                                        ; $4514: $f6 $62
    db $dd                                        ; $4516: $dd
    ld a, [hl]                                    ; $4517: $7e
    ldh a, [rP1]                                  ; $4518: $f0 $00
    ld e, l                                       ; $451a: $5d
    ldh a, [rSVBK]                                ; $451b: $f0 $70
    rst $38                                       ; $451d: $ff
    ld h, b                                       ; $451e: $60
    rst $38                                       ; $451f: $ff
    ld d, h                                       ; $4520: $54
    ei                                            ; $4521: $fb
    nop                                           ; $4522: $00
    ld [hl], d                                    ; $4523: $72
    db $fd                                        ; $4524: $fd
    ld h, b                                       ; $4525: $60
    adc a                                         ; $4526: $8f
    ld [hl], d                                    ; $4527: $72
    adc l                                         ; $4528: $8d
    dec c                                         ; $4529: $0d
    pop af                                        ; $452a: $f1
    nop                                           ; $452b: $00
    ld e, e                                       ; $452c: $5b
    and c                                         ; $452d: $a1
    dec l                                         ; $452e: $2d
    pop de                                        ; $452f: $d1
    ld e, l                                       ; $4530: $5d
    and c                                         ; $4531: $a1
    dec hl                                        ; $4532: $2b
    pop de                                        ; $4533: $d1
    nop                                           ; $4534: $00
    dec e                                         ; $4535: $1d
    pop hl                                        ; $4536: $e1
    ld c, l                                       ; $4537: $4d
    or c                                          ; $4538: $b1
    cpl                                           ; $4539: $2f
    pop de                                        ; $453a: $d1
    cp h                                          ; $453b: $bc
    rrca                                          ; $453c: $0f
    nop                                           ; $453d: $00
    xor $0f                                       ; $453e: $ee $0f
    cp l                                          ; $4540: $bd
    rra                                           ; $4541: $1f
    or l                                          ; $4542: $b5
    rra                                           ; $4543: $1f
    ld d, a                                       ; $4544: $57
    rra                                           ; $4545: $1f
    nop                                           ; $4546: $00
    cp a                                          ; $4547: $bf
    rra                                           ; $4548: $1f
    call nc, $aa1f                                ; $4549: $d4 $1f $aa
    rra                                           ; $454c: $1f
    sub [hl]                                      ; $454d: $96
    ld a, a                                       ; $454e: $7f
    nop                                           ; $454f: $00
    dec de                                        ; $4550: $1b
    cp $bf                                        ; $4551: $fe $bf
    db $fc                                        ; $4553: $fc
    ld a, a                                       ; $4554: $7f
    db $fc                                        ; $4555: $fc
    or [hl]                                       ; $4556: $b6
    db $fc                                        ; $4557: $fc
    nop                                           ; $4558: $00
    jp $d3fc                                      ; $4559: $c3 $fc $d3


    db $ec                                        ; $455c: $ec
    db $d3                                        ; $455d: $d3
    db $ec                                        ; $455e: $ec
    ld d, d                                       ; $455f: $52
    xor h                                         ; $4560: $ac
    nop                                           ; $4561: $00
    ld a, [bc]                                    ; $4562: $0a
    db $f4                                        ; $4563: $f4
    adc e                                         ; $4564: $8b
    inc [hl]                                      ; $4565: $34
    ld b, d                                       ; $4566: $42
    inc a                                         ; $4567: $3c
    rst $00                                       ; $4568: $c7
    jr c, jr_0ca_456b                             ; $4569: $38 $00

jr_0ca_456b:
    ld d, [hl]                                    ; $456b: $56
    cpl                                           ; $456c: $2f
    ld h, a                                       ; $456d: $67
    rra                                           ; $456e: $1f
    ld e, l                                       ; $456f: $5d
    ld a, a                                       ; $4570: $7f
    ldh a, [rTAC]                                 ; $4571: $f0 $07
    dec b                                         ; $4573: $05
    xor $00                                       ; $4574: $ee $00
    ld a, l                                       ; $4576: $7d
    nop                                           ; $4577: $00
    rst $10                                       ; $4578: $d7
    inc b                                         ; $4579: $04
    nop                                           ; $457a: $00
    xor $b6                                       ; $457b: $ee $b6
    ld bc, $de00                                  ; $457d: $01 $00 $de
    add b                                         ; $4580: $80
    ld a, a                                       ; $4581: $7f
    adc a                                         ; $4582: $8f
    pop de                                        ; $4583: $d1
    ld c, $e1                                     ; $4584: $0e $e1
    ld c, $00                                     ; $4586: $0e $00
    inc [hl]                                      ; $4588: $34
    dec bc                                        ; $4589: $0b
    jp nc, $a40d                                  ; $458a: $d2 $0d $a4

    dec bc                                        ; $458d: $0b
    db $f4                                        ; $458e: $f4
    dec bc                                        ; $458f: $0b
    nop                                           ; $4590: $00
    ld de, $ebee                                  ; $4591: $11 $ee $eb
    ld bc, $01db                                  ; $4594: $01 $db $01
    rst $18                                       ; $4597: $df
    ld bc, $b700                                  ; $4598: $01 $00 $b7
    rra                                           ; $459b: $1f
    ei                                            ; $459c: $fb
    rra                                           ; $459d: $1f
    db $fd                                        ; $459e: $fd
    rra                                           ; $459f: $1f
    rst $10                                       ; $45a0: $d7
    rra                                           ; $45a1: $1f
    nop                                           ; $45a2: $00
    ld [hl], l                                    ; $45a3: $75
    rra                                           ; $45a4: $1f
    ld [hl], a                                    ; $45a5: $77
    pop hl                                        ; $45a6: $e1
    db $fc                                        ; $45a7: $fc
    pop hl                                        ; $45a8: $e1
    or a                                          ; $45a9: $b7
    db $e3                                        ; $45aa: $e3
    nop                                           ; $45ab: $00
    ld a, [$d2e3]                                 ; $45ac: $fa $e3 $d2
    db $e3                                        ; $45af: $e3
    cp a                                          ; $45b0: $bf
    db $e3                                        ; $45b1: $e3
    ld e, d                                       ; $45b2: $5a
    db $e3                                        ; $45b3: $e3
    ld bc, $e356                                  ; $45b4: $01 $56 $e3
    ld d, d                                       ; $45b7: $52
    rst $28                                       ; $45b8: $ef
    jp $b7ff                                      ; $45b9: $c3 $ff $b7


    ld e, $03                                     ; $45bc: $1e $03
    inc b                                         ; $45be: $04
    rst $30                                       ; $45bf: $f7
    rst $38                                       ; $45c0: $ff
    db $fc                                        ; $45c1: $fc
    rst $38                                       ; $45c2: $ff
    xor h                                         ; $45c3: $ac
    ld [bc], a                                    ; $45c4: $02
    nop                                           ; $45c5: $00
    jp z, Jump_000_00f5                           ; $45c6: $ca $f5 $00

    ld hl, $71de                                  ; $45c9: $21 $de $71
    add [hl]                                      ; $45cc: $86
    add sp, -$79                                  ; $45cd: $e8 $87
    ret c                                         ; $45cf: $d8

    add a                                         ; $45d0: $87
    nop                                           ; $45d1: $00
    ld l, c                                       ; $45d2: $69
    add [hl]                                      ; $45d3: $86
    ld l, d                                       ; $45d4: $6a
    add l                                         ; $45d5: $85
    ld d, l                                       ; $45d6: $55
    add a                                         ; $45d7: $87
    ld [hl], c                                    ; $45d8: $71
    adc [hl]                                      ; $45d9: $8e
    nop                                           ; $45da: $00
    ld [hl], h                                    ; $45db: $74
    adc e                                         ; $45dc: $8b
    ld d, l                                       ; $45dd: $55
    adc d                                         ; $45de: $8a
    ld d, d                                       ; $45df: $52
    adc l                                         ; $45e0: $8d
    ld b, d                                       ; $45e1: $42
    adc l                                         ; $45e2: $8d
    nop                                           ; $45e3: $00
    ld [hl], l                                    ; $45e4: $75
    adc d                                         ; $45e5: $8a
    ld b, b                                       ; $45e6: $40
    adc a                                         ; $45e7: $8f
    db $f4                                        ; $45e8: $f4
    adc e                                         ; $45e9: $8b
    dec c                                         ; $45ea: $0d
    pop af                                        ; $45eb: $f1
    nop                                           ; $45ec: $00
    jp c, $bc01                                   ; $45ed: $da $01 $bc

    ld bc, $01ea                                  ; $45f0: $01 $ea $01
    cp [hl]                                       ; $45f3: $be
    ld bc, $a840                                  ; $45f4: $01 $40 $a8
    ld e, $03                                     ; $45f7: $1e $03
    ld [c], a                                     ; $45f9: $e2
    dec c                                         ; $45fa: $0d
    rst $38                                       ; $45fb: $ff
    ccf                                           ; $45fc: $3f
    ld [hl], a                                    ; $45fd: $77
    ccf                                           ; $45fe: $3f
    nop                                           ; $45ff: $00
    xor $3f                                       ; $4600: $ee $3f
    ld [hl], $ff                                  ; $4602: $36 $ff
    ld a, a                                       ; $4604: $7f
    cp a                                          ; $4605: $bf
    cp l                                          ; $4606: $bd
    ld b, a                                       ; $4607: $47
    nop                                           ; $4608: $00
    ld e, [hl]                                    ; $4609: $5e
    add a                                         ; $460a: $87
    ld a, l                                       ; $460b: $7d
    add a                                         ; $460c: $87
    rst $10                                       ; $460d: $d7
    add sp, $45                                   ; $460e: $e8 $45
    ld hl, sp+$01                                 ; $4610: $f8 $01
    sub $e8                                       ; $4612: $d6 $e8
    add l                                         ; $4614: $85
    ld hl, sp-$23                                 ; $4615: $f8 $dd
    add b                                         ; $4617: $80
    xor $42                                       ; $4618: $ee $42
    ld [bc], a                                    ; $461a: $02
    nop                                           ; $461b: $00
    rst $30                                       ; $461c: $f7
    add b                                         ; $461d: $80
    rst $38                                       ; $461e: $ff
    ld a, a                                       ; $461f: $7f
    ld e, [hl]                                    ; $4620: $5e
    ld a, a                                       ; $4621: $7f
    rst $28                                       ; $4622: $ef
    ld a, a                                       ; $4623: $7f
    add b                                         ; $4624: $80
    ld bc, $bb08                                  ; $4625: $01 $08 $bb
    ld a, a                                       ; $4628: $7f
    rst $18                                       ; $4629: $df
    rst $38                                       ; $462a: $ff
    cp l                                          ; $462b: $bd
    rst $38                                       ; $462c: $ff
    db $eb                                        ; $462d: $eb
    nop                                           ; $462e: $00
    add b                                         ; $462f: $80
    db $dd                                        ; $4630: $dd
    add b                                         ; $4631: $80
    rst $28                                       ; $4632: $ef
    rrca                                          ; $4633: $0f
    ld e, l                                       ; $4634: $5d
    rrca                                          ; $4635: $0f
    ld [$0f00], a                                 ; $4636: $ea $00 $0f
    call c, Call_000_080f                         ; $4639: $dc $0f $08
    rst $38                                       ; $463c: $ff
    ld c, $ff                                     ; $463d: $0e $ff
    ld b, a                                       ; $463f: $47
    nop                                           ; $4640: $00
    cp b                                          ; $4641: $b8
    dec h                                         ; $4642: $25
    jp c, $fe01                                   ; $4643: $da $01 $fe

    dec hl                                        ; $4646: $2b
    call nc, $004b                                ; $4647: $d4 $4b $00
    or h                                          ; $464a: $b4
    ld b, l                                       ; $464b: $45
    cp d                                          ; $464c: $ba
    add c                                         ; $464d: $81
    ld a, [hl]                                    ; $464e: $7e
    dec h                                         ; $464f: $25
    jp c, $02f7                                   ; $4650: $da $f7 $02

    rra                                           ; $4653: $1f
    ld e, e                                       ; $4654: $5b
    rra                                           ; $4655: $1f
    cp l                                          ; $4656: $bd
    rra                                           ; $4657: $1f
    cp e                                          ; $4658: $bb
    ld b, $00                                     ; $4659: $06 $00
    cp [hl]                                       ; $465b: $be
    nop                                           ; $465c: $00
    rra                                           ; $465d: $1f
    ld a, a                                       ; $465e: $7f
    rra                                           ; $465f: $1f
    db $db                                        ; $4660: $db
    rra                                           ; $4661: $1f
    cp a                                          ; $4662: $bf
    jp Jump_000_0077                              ; $4663: $c3 $77 $00


    jp $c3be                                      ; $4666: $c3 $be $c3


    ld b, e                                       ; $4669: $43
    rst $38                                       ; $466a: $ff
    ld d, a                                       ; $466b: $57
    db $eb                                        ; $466c: $eb
    rlc b                                         ; $466d: $cb $00
    db $f4                                        ; $466f: $f4

jr_0ca_4670:
    jp nc, $4bec                                  ; $4670: $d2 $ec $4b

    db $f4                                        ; $4673: $f4
    cp $fd                                        ; $4674: $fe $fd
    ld [hl], h                                    ; $4676: $74
    nop                                           ; $4677: $00
    rst $38                                       ; $4678: $ff
    jp hl                                         ; $4679: $e9


    cp $68                                        ; $467a: $fe $68
    rst $38                                       ; $467c: $ff
    db $fd                                        ; $467d: $fd
    ld hl, sp-$02                                 ; $467e: $f8 $fe
    ld [bc], a                                    ; $4680: $02
    jr c, jr_0ca_4670                             ; $4681: $38 $ed

    jr c, @-$1f                                   ; $4683: $38 $df

    jr c, @+$01                                   ; $4685: $38 $ff

    sub [hl]                                      ; $4687: $96
    ld bc, $006e                                  ; $4688: $01 $6e $00
    add a                                         ; $468b: $87
    ld d, a                                       ; $468c: $57
    add a                                         ; $468d: $87
    sub $07                                       ; $468e: $d6 $07
    db $ed                                        ; $4690: $ed
    rlca                                          ; $4691: $07
    xor $00                                       ; $4692: $ee $00
    rlca                                          ; $4694: $07
    ld e, l                                       ; $4695: $5d
    rlca                                          ; $4696: $07
    ret nc                                        ; $4697: $d0

    adc a                                         ; $4698: $8f
    ld a, [c]                                     ; $4699: $f2
    adc l                                         ; $469a: $8d
    xor $82                                       ; $469b: $ee $82
    ld h, h                                       ; $469d: $64
    nop                                           ; $469e: $00
    db $db                                        ; $469f: $db
    add b                                         ; $46a0: $80
    cp $80                                        ; $46a1: $fe $80
    xor l                                         ; $46a3: $ad
    add $02                                       ; $46a4: $c6 $02
    or h                                          ; $46a6: $b4
    add b                                         ; $46a7: $80
    ld a, [bc]                                    ; $46a8: $0a
    ld bc, $fff0                                  ; $46a9: $01 $f0 $ff
    jp nc, $a2fd                                  ; $46ac: $d2 $fd $a2

    db $fd                                        ; $46af: $fd
    jp nc, $fd00                                  ; $46b0: $d2 $00 $fd

    and h                                         ; $46b3: $a4
    ei                                            ; $46b4: $fb
    pop af                                        ; $46b5: $f1
    cp $5e                                        ; $46b6: $fe $5e
    add a                                         ; $46b8: $87

jr_0ca_46b9:
    ld e, b                                       ; $46b9: $58
    add b                                         ; $46ba: $80
    ld [bc], a                                    ; $46bb: $02
    nop                                           ; $46bc: $00
    ld a, [c]                                     ; $46bd: $f2
    dec c                                         ; $46be: $0d
    ld d, h                                       ; $46bf: $54
    adc e                                         ; $46c0: $8b
    call nc, $b00b                                ; $46c1: $d4 $0b $b0
    nop                                           ; $46c4: $00
    rrca                                          ; $46c5: $0f
    jp nc, $ee0d                                  ; $46c6: $d2 $0d $ee

    add b                                         ; $46c9: $80
    sbc [hl]                                      ; $46ca: $9e
    nop                                           ; $46cb: $00
    jp c, RST_00                                  ; $46cc: $da $00 $00

    xor a                                         ; $46cf: $af
    nop                                           ; $46d0: $00
    db $dd                                        ; $46d1: $dd
    nop                                           ; $46d2: $00
    cp h                                          ; $46d3: $bc
    nop                                           ; $46d4: $00
    xor $80                                       ; $46d5: $ee $80
    db $f4                                        ; $46d7: $f4
    inc bc                                        ; $46d8: $03
    db $db                                        ; $46d9: $db
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    call c, $fef1                                 ; $46dd: $dc $f1 $fe
    nop                                           ; $46e0: $00
    pop af                                        ; $46e1: $f1
    ld e, $e1                                     ; $46e2: $1e $e1
    ld a, [de]                                    ; $46e4: $1a
    pop hl                                        ; $46e5: $e1
    ld e, [hl]                                    ; $46e6: $5e
    and c                                         ; $46e7: $a1
    or [hl]                                       ; $46e8: $b6
    nop                                           ; $46e9: $00
    ld b, c                                       ; $46ea: $41
    ld a, [hl-]                                   ; $46eb: $3a
    rst $18                                       ; $46ec: $df
    ld e, h                                       ; $46ed: $5c
    cp a                                          ; $46ee: $bf
    ld a, [de]                                    ; $46ef: $1a
    rst $38                                       ; $46f0: $ff
    ld e, h                                       ; $46f1: $5c
    nop                                           ; $46f2: $00
    cp a                                          ; $46f3: $bf
    ld a, [hl-]                                   ; $46f4: $3a
    rst $18                                       ; $46f5: $df
    sub h                                         ; $46f6: $94
    ld a, a                                       ; $46f7: $7f
    ld e, a                                       ; $46f8: $5f
    cp [hl]                                       ; $46f9: $be
    cp e                                          ; $46fa: $bb
    ld b, b                                       ; $46fb: $40
    ld e, h                                       ; $46fc: $5c
    sub h                                         ; $46fd: $94
    ld [bc], a                                    ; $46fe: $02
    cp [hl]                                       ; $46ff: $be
    ld d, a                                       ; $4700: $57
    cp [hl]                                       ; $4701: $be
    cp b                                          ; $4702: $b8
    ld e, a                                       ; $4703: $5f
    ld e, c                                       ; $4704: $59
    nop                                           ; $4705: $00
    cp [hl]                                       ; $4706: $be
    dec c                                         ; $4707: $0d
    cp $78                                        ; $4708: $fe $78
    ccf                                           ; $470a: $3f
    or h                                          ; $470b: $b4
    ccf                                           ; $470c: $3f
    or a                                          ; $470d: $b7
    nop                                           ; $470e: $00
    rra                                           ; $470f: $1f
    cp c                                          ; $4710: $b9
    ld a, $3c                                     ; $4711: $3e $3c
    rst $38                                       ; $4713: $ff
    cp h                                          ; $4714: $bc
    ld a, a                                       ; $4715: $7f
    ld a, l                                       ; $4716: $7d
    nop                                           ; $4717: $00
    add d                                         ; $4718: $82
    jr z, @-$3b                                   ; $4719: $28 $c3

    ld [hl], h                                    ; $471b: $74
    add e                                         ; $471c: $83
    xor l                                         ; $471d: $ad
    ld b, d                                       ; $471e: $42
    jp nc, $ec00                                  ; $471f: $d2 $00 $ec

    ld a, [bc]                                    ; $4722: $0a
    db $f4                                        ; $4723: $f4
    sub d                                         ; $4724: $92
    ld l, h                                       ; $4725: $6c
    rlca                                          ; $4726: $07
    ld hl, sp+$12                                 ; $4727: $f8 $12
    nop                                           ; $4729: $00
    db $ec                                        ; $472a: $ec
    ld d, $e8                                     ; $472b: $16 $e8
    ld d, l                                       ; $472d: $55
    xor b                                         ; $472e: $a8
    ld b, $f8                                     ; $472f: $06 $f8
    xor $04                                       ; $4731: $ee $04
    jr c, jr_0ca_46b9                             ; $4733: $38 $84

    ld a, b                                       ; $4735: $78
    and [hl]                                      ; $4736: $a6
    ld e, b                                       ; $4737: $58
    ld [hl+], a                                   ; $4738: $22
    dec de                                        ; $4739: $1b
    add a                                         ; $473a: $87
    ld a, b                                       ; $473b: $78
    nop                                           ; $473c: $00
    sub h                                         ; $473d: $94
    ld l, b                                       ; $473e: $68
    or $07                                        ; $473f: $f6 $07
    rst $30                                       ; $4741: $f7
    rlca                                          ; $4742: $07
    sub $07                                       ; $4743: $d6 $07
    db $10                                        ; $4745: $10
    ld a, a                                       ; $4746: $7f
    rlca                                          ; $4747: $07
    add sp, $5e                                   ; $4748: $e8 $5e
    ld [bc], a                                    ; $474a: $02
    ld a, b                                       ; $474b: $78
    rlca                                          ; $474c: $07
    jp hl                                         ; $474d: $e9


    ld b, $00                                     ; $474e: $06 $00
    xor a                                         ; $4750: $af
    add b                                         ; $4751: $80
    rst $28                                       ; $4752: $ef
    nop                                           ; $4753: $00
    db $dd                                        ; $4754: $dd
    ldh a, [$fd]                                  ; $4755: $f0 $fd
    ldh a, [$08]                                  ; $4757: $f0 $08
    sbc $f0                                       ; $4759: $de $f0
    cp e                                          ; $475b: $bb
    ldh a, [$dc]                                  ; $475c: $f0 $dc
    dec bc                                        ; $475e: $0b
    jp nc, $e2fd                                  ; $475f: $d2 $fd $e2

    add c                                         ; $4762: $81
    xor d                                         ; $4763: $aa
    nop                                           ; $4764: $00
    push hl                                       ; $4765: $e5
    ld a, [$fdd2]                                 ; $4766: $fa $d2 $fd
    and b                                         ; $4769: $a0

jr_0ca_476a:
    rst $38                                       ; $476a: $ff
    ld d, $08                                     ; $476b: $16 $08
    ld [bc], a                                    ; $476d: $02
    push af                                       ; $476e: $f5
    ld a, [bc]                                    ; $476f: $0a
    or l                                          ; $4770: $b5
    ld a, [bc]                                    ; $4771: $0a
    db $eb                                        ; $4772: $eb
    inc d                                         ; $4773: $14
    inc e                                         ; $4774: $1c
    inc c                                         ; $4775: $0c
    ld l, c                                       ; $4776: $69
    nop                                           ; $4777: $00
    or $a1                                        ; $4778: $f6 $a1
    cp $a5                                        ; $477a: $fe $a5
    ei                                            ; $477c: $fb
    and b                                         ; $477d: $a0
    rra                                           ; $477e: $1f
    jp z, Jump_000_1500                           ; $477f: $ca $00 $15

    ld h, b                                       ; $4782: $60
    rra                                           ; $4783: $1f
    db $ec                                        ; $4784: $ec
    inc de                                        ; $4785: $13
    ld h, b                                       ; $4786: $60
    rra                                           ; $4787: $1f
    ld b, h                                       ; $4788: $44
    nop                                           ; $4789: $00
    dec de                                        ; $478a: $1b
    ret nz                                        ; $478b: $c0

    ccf                                           ; $478c: $3f
    ld d, c                                       ; $478d: $51
    xor $96                                       ; $478e: $ee $96
    ld h, c                                       ; $4790: $61
    inc d                                         ; $4791: $14
    nop                                           ; $4792: $00
    pop hl                                        ; $4793: $e1
    ld e, $e1                                     ; $4794: $1e $e1
    ld d, h                                       ; $4796: $54
    and e                                         ; $4797: $a3
    cp l                                          ; $4798: $bd
    ld b, d                                       ; $4799: $42
    or h                                          ; $479a: $b4
    nop                                           ; $479b: $00
    ld b, e                                       ; $479c: $43
    inc a                                         ; $479d: $3c
    jp $c02b                                      ; $479e: $c3 $2b $c0


    ld e, [hl]                                    ; $47a1: $5e
    cp h                                          ; $47a2: $bc
    ld d, e                                       ; $47a3: $53
    nop                                           ; $47a4: $00
    xor h                                         ; $47a5: $ac
    ld c, d                                       ; $47a6: $4a
    or h                                          ; $47a7: $b4
    ld [bc], a                                    ; $47a8: $02
    db $fc                                        ; $47a9: $fc
    ld a, [bc]                                    ; $47aa: $0a
    db $f4                                        ; $47ab: $f4
    rla                                           ; $47ac: $17
    nop                                           ; $47ad: $00
    add sp, -$7a                                  ; $47ae: $e8 $86
    ld a, b                                       ; $47b0: $78
    adc e                                         ; $47b1: $8b
    inc [hl]                                      ; $47b2: $34
    jp hl                                         ; $47b3: $e9


    ld a, $bc                                     ; $47b4: $3e $bc
    nop                                           ; $47b6: $00
    ccf                                           ; $47b7: $3f
    db $f4                                        ; $47b8: $f4
    ccf                                           ; $47b9: $3f
    xor b                                         ; $47ba: $a8
    ccf                                           ; $47bb: $3f
    cp b                                          ; $47bc: $b8
    ccf                                           ; $47bd: $3f
    xor a                                         ; $47be: $af
    inc b                                         ; $47bf: $04
    inc a                                         ; $47c0: $3c
    push af                                       ; $47c1: $f5
    inc a                                         ; $47c2: $3c
    ld h, [hl]                                    ; $47c3: $66
    jr c, jr_0ca_476a                             ; $47c4: $38 $a4

    ld [$c328], sp                                ; $47c6: $08 $28 $c3
    nop                                           ; $47c9: $00
    cp b                                          ; $47ca: $b8
    ld b, a                                       ; $47cb: $47
    ld sp, $d0c6                                  ; $47cc: $31 $c6 $d0
    rlca                                          ; $47cf: $07
    ld l, d                                       ; $47d0: $6a
    dec b                                         ; $47d1: $05
    nop                                           ; $47d2: $00
    pop af                                        ; $47d3: $f1
    ld b, $97                                     ; $47d4: $06 $97
    ld l, b                                       ; $47d6: $68
    db $fd                                        ; $47d7: $fd
    ld a, b                                       ; $47d8: $78
    ld d, a                                       ; $47d9: $57
    ld hl, sp+$00                                 ; $47da: $f8 $00
    ld a, [hl]                                    ; $47dc: $7e
    rst $38                                       ; $47dd: $ff
    ld l, a                                       ; $47de: $6f
    rst $38                                       ; $47df: $ff
    ld e, l                                       ; $47e0: $5d
    rst $38                                       ; $47e1: $ff
    ld l, [hl]                                    ; $47e2: $6e
    rst $38                                       ; $47e3: $ff
    nop                                           ; $47e4: $00
    ld a, [hl]                                    ; $47e5: $7e
    rst $38                                       ; $47e6: $ff
    and [hl]                                      ; $47e7: $a6
    ld e, b                                       ; $47e8: $58
    sub a                                         ; $47e9: $97
    ld l, b                                       ; $47ea: $68
    xor l                                         ; $47eb: $ad
    ld d, b                                       ; $47ec: $50
    nop                                           ; $47ed: $00
    sub a                                         ; $47ee: $97
    add sp, $15                                   ; $47ef: $e8 $15
    add sp, -$5b                                  ; $47f1: $e8 $a5
    ret c                                         ; $47f3: $d8

    add a                                         ; $47f4: $87
    ld hl, sp+$00                                 ; $47f5: $f8 $00

jr_0ca_47f7:
    sub [hl]                                      ; $47f7: $96
    rst $28                                       ; $47f8: $ef
    add b                                         ; $47f9: $80
    ld a, a                                       ; $47fa: $7f
    jr z, jr_0ca_4854                             ; $47fb: $28 $57

    add b                                         ; $47fd: $80
    ld a, a                                       ; $47fe: $7f
    nop                                           ; $47ff: $00
    or d                                          ; $4800: $b2
    ld c, l                                       ; $4801: $4d
    add h                                         ; $4802: $84
    ld a, e                                       ; $4803: $7b
    ld [bc], a                                    ; $4804: $02
    ld a, l                                       ; $4805: $7d
    add b                                         ; $4806: $80
    ld a, a                                       ; $4807: $7f
    inc h                                         ; $4808: $24
    add h                                         ; $4809: $84
    ei                                            ; $480a: $fb
    ld a, h                                       ; $480b: $7c
    inc b                                         ; $480c: $04
    ldh a, [$ab]                                  ; $480d: $f0 $ab
    add d                                         ; $480f: $82
    inc b                                         ; $4810: $04
    ldh a, [rIE]                                  ; $4811: $f0 $ff
    nop                                           ; $4813: $00
    ret nc                                        ; $4814: $d0

    rst $38                                       ; $4815: $ff
    or d                                          ; $4816: $b2
    db $fd                                        ; $4817: $fd
    or h                                          ; $4818: $b4
    ei                                            ; $4819: $fb
    ei                                            ; $481a: $fb
    ldh a, [rP1]                                  ; $481b: $f0 $00
    ld c, [hl]                                    ; $481d: $4e
    or b                                          ; $481e: $b0
    dec hl                                        ; $481f: $2b
    ret nc                                        ; $4820: $d0

    ld a, [bc]                                    ; $4821: $0a
    ldh a, [$2a]                                  ; $4822: $f0 $2a
    ret nc                                        ; $4824: $d0

    nop                                           ; $4825: $00
    ld e, [hl]                                    ; $4826: $5e
    and b                                         ; $4827: $a0
    dec de                                        ; $4828: $1b
    ldh [$2d], a                                  ; $4829: $e0 $2d
    ret nc                                        ; $482b: $d0

    xor e                                         ; $482c: $ab
    rst $30                                       ; $482d: $f7
    ld h, b                                       ; $482e: $60
    jp nc, Jump_000_02f6                          ; $482f: $d2 $f6 $02

    ld d, [hl]                                    ; $4832: $56
    ld a, [bc]                                    ; $4833: $0a
    ld a, [hl]                                    ; $4834: $7e
    rst $38                                       ; $4835: $ff
    rst $18                                       ; $4836: $df
    rst $38                                       ; $4837: $ff
    ld e, a                                       ; $4838: $5f
    nop                                           ; $4839: $00
    rst $38                                       ; $483a: $ff
    ld d, c                                       ; $483b: $51
    xor $c4                                       ; $483c: $ee $c4
    ei                                            ; $483e: $fb
    ld d, c                                       ; $483f: $51
    xor $c5                                       ; $4840: $ee $c5
    nop                                           ; $4842: $00
    ld a, [$ef50]                                 ; $4843: $fa $50 $ef
    ld [$e8c5], a                                 ; $4846: $ea $c5 $e8
    add a                                         ; $4849: $87
    add sp, $00                                   ; $484a: $e8 $00
    add a                                         ; $484c: $87
    dec hl                                        ; $484d: $2b
    ret nz                                        ; $484e: $c0

    xor [hl]                                      ; $484f: $ae
    ld b, b                                       ; $4850: $40
    ld [hl], $c0                                  ; $4851: $36 $c0
    cpl                                           ; $4853: $2f

jr_0ca_4854:
    inc b                                         ; $4854: $04
    ret nz                                        ; $4855: $c0

    sub [hl]                                      ; $4856: $96
    ld b, b                                       ; $4857: $40
    ld l, l                                       ; $4858: $6d
    add b                                         ; $4859: $80
    ld [bc], a                                    ; $485a: $02
    ld [$348b], sp                                ; $485b: $08 $8b $34
    nop                                           ; $485e: $00
    sub l                                         ; $485f: $95
    jr z, jr_0ca_47f7                             ; $4860: $28 $95

    ld l, b                                       ; $4862: $68
    rlca                                          ; $4863: $07
    ld a, b                                       ; $4864: $78
    db $ed                                        ; $4865: $ed
    nop                                           ; $4866: $00
    db $10                                        ; $4867: $10
    halt                                          ; $4868: $76
    nop                                           ; $4869: $00
    ld [hl], l                                    ; $486a: $75
    ld [bc], a                                    ; $486b: $02
    nop                                           ; $486c: $00
    ld d, [hl]                                    ; $486d: $56
    jr c, jr_0ca_48de                             ; $486e: $38 $6e

    ld a, b                                       ; $4870: $78
    ld bc, $78dd                                  ; $4871: $01 $dd $78
    ld a, a                                       ; $4874: $7f
    ld a, b                                       ; $4875: $78
    adc [hl]                                      ; $4876: $8e
    ld [hl], b                                    ; $4877: $70
    and l                                         ; $4878: $a5
    ld d, h                                       ; $4879: $54
    inc b                                         ; $487a: $04
    dec b                                         ; $487b: $05
    and l                                         ; $487c: $a5
    ld e, b                                       ; $487d: $58
    pop af                                        ; $487e: $f1
    ld b, $d2                                     ; $487f: $06 $d2
    jr z, jr_0ca_4884                             ; $4881: $28 $01

    ld e, l                                       ; $4883: $5d

jr_0ca_4884:
    cp $04                                        ; $4884: $fe $04
    nop                                           ; $4886: $00
    ld e, l                                       ; $4887: $5d
    rlca                                          ; $4888: $07
    ld e, a                                       ; $4889: $5f
    ld a, a                                       ; $488a: $7f
    ld e, a                                       ; $488b: $5f
    ld a, a                                       ; $488c: $7f
    ld a, [hl]                                    ; $488d: $7e
    rst $38                                       ; $488e: $ff
    nop                                           ; $488f: $00
    ld e, l                                       ; $4890: $5d
    add a                                         ; $4891: $87
    ld [hl], a                                    ; $4892: $77
    add a                                         ; $4893: $87
    sbc $87                                       ; $4894: $de $87
    push af                                       ; $4896: $f5
    add a                                         ; $4897: $87
    nop                                           ; $4898: $00
    ld e, [hl]                                    ; $4899: $5e
    add a                                         ; $489a: $87
    xor $87                                       ; $489b: $ee $87
    ld a, [$968f]                                 ; $489d: $fa $8f $96
    rst $28                                       ; $48a0: $ef
    nop                                           ; $48a1: $00
    and l                                         ; $48a2: $a5
    rst $18                                       ; $48a3: $df
    sub l                                         ; $48a4: $95
    rst $28                                       ; $48a5: $ef
    and e                                         ; $48a6: $a3
    rst $18                                       ; $48a7: $df
    adc l                                         ; $48a8: $8d
    rst $38                                       ; $48a9: $ff
    db $10                                        ; $48aa: $10
    ei                                            ; $48ab: $fb
    rst $38                                       ; $48ac: $ff
    cp a                                          ; $48ad: $bf
    ld [bc], a                                    ; $48ae: $02
    nop                                           ; $48af: $00
    call nz, $12bb                                ; $48b0: $c4 $bb $12
    db $ed                                        ; $48b3: $ed
    nop                                           ; $48b4: $00
    ld b, h                                       ; $48b5: $44
    cp e                                          ; $48b6: $bb
    inc d                                         ; $48b7: $14
    db $eb                                        ; $48b8: $eb
    ld b, d                                       ; $48b9: $42
    cp l                                          ; $48ba: $bd
    or h                                          ; $48bb: $b4
    dec bc                                        ; $48bc: $0b
    nop                                           ; $48bd: $00
    ret nc                                        ; $48be: $d0

    rrca                                          ; $48bf: $0f
    ret nc                                        ; $48c0: $d0

    rrca                                          ; $48c1: $0f
    or h                                          ; $48c2: $b4
    ei                                            ; $48c3: $fb
    ret nc                                        ; $48c4: $d0

    rrca                                          ; $48c5: $0f
    nop                                           ; $48c6: $00
    ld a, [c]                                     ; $48c7: $f2
    dec c                                         ; $48c8: $0d
    pop af                                        ; $48c9: $f1
    ld c, $d4                                     ; $48ca: $0e $d4
    dec bc                                        ; $48cc: $0b
    ld a, [c]                                     ; $48cd: $f2
    dec c                                         ; $48ce: $0d
    ld b, h                                       ; $48cf: $44
    or d                                          ; $48d0: $b2
    ld [bc], a                                    ; $48d1: $02
    nop                                           ; $48d2: $00
    dec l                                         ; $48d3: $2d
    ret nc                                        ; $48d4: $d0

    ld c, d                                       ; $48d5: $4a
    or b                                          ; $48d6: $b0
    nop                                           ; $48d7: $00
    ld c, $f0                                     ; $48d8: $0e $f0
    db $10                                        ; $48da: $10
    db $db                                        ; $48db: $db
    nop                                           ; $48dc: $00
    db $ed                                        ; $48dd: $ed

jr_0ca_48de:
    jp nz, $eb03                                  ; $48de: $c2 $03 $eb

    nop                                           ; $48e1: $00
    xor $ff                                       ; $48e2: $ee $ff
    nop                                           ; $48e4: $00
    ld hl, sp-$01                                 ; $48e5: $f8 $ff
    ld e, d                                       ; $48e7: $5a
    db $fd                                        ; $48e8: $fd
    ld e, d                                       ; $48e9: $5a
    db $fd                                        ; $48ea: $fd
    ld a, [$62fd]                                 ; $48eb: $fa $fd $62
    ret nc                                        ; $48ee: $d0

    jp nc, $f810                                  ; $48ef: $d2 $10 $f8

    ld a, [hl+]                                   ; $48f2: $2a
    rst $38                                       ; $48f3: $ff
    rrca                                          ; $48f4: $0f
    xor e                                         ; $48f5: $ab
    ld [bc], a                                    ; $48f6: $02
    nop                                           ; $48f7: $00
    db $dd                                        ; $48f8: $dd
    nop                                           ; $48f9: $00
    rrca                                          ; $48fa: $0f
    ld [hl], a                                    ; $48fb: $77
    add b                                         ; $48fc: $80
    ld l, [hl]                                    ; $48fd: $6e
    ld hl, sp+$7e                                 ; $48fe: $f8 $7e

jr_0ca_4900:
    ld hl, sp-$23                                 ; $4900: $f8 $dd
    ld h, b                                       ; $4902: $60
    ld hl, sp+$78                                 ; $4903: $f8 $78
    dec c                                         ; $4905: $0d
    ld a, d                                       ; $4906: $7a
    dec c                                         ; $4907: $0d
    sbc $00                                       ; $4908: $de $00
    push de                                       ; $490a: $d5
    nop                                           ; $490b: $00
    rst $28                                       ; $490c: $ef
    jr jr_0ca_490f                                ; $490d: $18 $00

jr_0ca_490f:
    pop hl                                        ; $490f: $e1
    ld c, $58                                     ; $4910: $0e $58
    ld a, [bc]                                    ; $4912: $0a
    ld e, d                                       ; $4913: $5a
    ld a, [bc]                                    ; $4914: $0a
    sub a                                         ; $4915: $97
    ld l, b                                       ; $4916: $68
    ld h, $00                                     ; $4917: $26 $00
    ld e, b                                       ; $4919: $58
    and h                                         ; $491a: $a4
    ld e, b                                       ; $491b: $58
    dec bc                                        ; $491c: $0b
    ldh a, [$5f]                                  ; $491d: $f0 $5f
    and b                                         ; $491f: $a0
    ld a, [hl+]                                   ; $4920: $2a
    nop                                           ; $4921: $00
    ret nc                                        ; $4922: $d0

    ld a, [hl+]                                   ; $4923: $2a
    ret nc                                        ; $4924: $d0

    dec c                                         ; $4925: $0d
    ldh a, [$ef]                                  ; $4926: $f0 $ef
    ld a, a                                       ; $4928: $7f
    db $fd                                        ; $4929: $fd
    ld a, [bc]                                    ; $492a: $0a
    ld a, a                                       ; $492b: $7f
    cp d                                          ; $492c: $ba
    rst $38                                       ; $492d: $ff
    xor d                                         ; $492e: $aa
    ld [$db02], a                                 ; $492f: $ea $02 $db
    halt                                          ; $4932: $76
    inc b                                         ; $4933: $04
    xor $08                                       ; $4934: $ee $08
    rst $38                                       ; $4936: $ff
    xor e                                         ; $4937: $ab
    rrca                                          ; $4938: $0f
    rst $18                                       ; $4939: $df
    db $ec                                        ; $493a: $ec
    ld [bc], a                                    ; $493b: $02
    jp c, $ff0f                                   ; $493c: $da $0f $ff

    add b                                         ; $493f: $80
    ld c, h                                       ; $4940: $4c
    nop                                           ; $4941: $00
    db $dd                                        ; $4942: $dd
    rrca                                          ; $4943: $0f
    ei                                            ; $4944: $fb
    rrca                                          ; $4945: $0f
    db $dd                                        ; $4946: $dd
    rst $38                                       ; $4947: $ff
    ldh a, [rSB]                                  ; $4948: $f0 $01
    rst $38                                       ; $494a: $ff
    or h                                          ; $494b: $b4
    ei                                            ; $494c: $fb
    or h                                          ; $494d: $b4
    ei                                            ; $494e: $fb
    push af                                       ; $494f: $f5
    ld a, [$1870]                                 ; $4950: $fa $70 $18
    adc h                                         ; $4953: $8c
    add h                                         ; $4954: $84
    ld a, [bc]                                    ; $4955: $0a
    call nc, $ab0b                                ; $4956: $d4 $0b $ab
    jr nz, jr_0ca_495b                            ; $4959: $20 $00

jr_0ca_495b:
    ld [hl], b                                    ; $495b: $70
    jr jr_0ca_4900                                ; $495c: $18 $a2

    dec c                                         ; $495e: $0d
    inc b                                         ; $495f: $04
    push af                                       ; $4960: $f5
    ld a, [bc]                                    ; $4961: $0a
    and b                                         ; $4962: $a0
    rrca                                          ; $4963: $0f
    db $f4                                        ; $4964: $f4
    cp h                                          ; $4965: $bc
    nop                                           ; $4966: $00
    ld a, [c]                                     ; $4967: $f2
    dec c                                         ; $4968: $0d
    nop                                           ; $4969: $00
    ld a, [c]                                     ; $496a: $f2
    dec c                                         ; $496b: $0d
    xor [hl]                                      ; $496c: $ae
    nop                                           ; $496d: $00
    cp l                                          ; $496e: $bd
    nop                                           ; $496f: $00
    xor d                                         ; $4970: $aa
    nop                                           ; $4971: $00
    ld b, b                                       ; $4972: $40
    rst $18                                       ; $4973: $df
    ld [hl], b                                    ; $4974: $70
    ld b, b                                       ; $4975: $40
    jr nz, jr_0ca_4984                            ; $4976: $20 $0c

    ld l, d                                       ; $4978: $6a
    rlca                                          ; $4979: $07
    ld b, b                                       ; $497a: $40
    nop                                           ; $497b: $00
    ld bc, $5000                                  ; $497c: $01 $00 $50
    nop                                           ; $497f: $00
    and h                                         ; $4980: $a4
    nop                                           ; $4981: $00
    ld c, c                                       ; $4982: $49
    nop                                           ; $4983: $00

jr_0ca_4984:
    inc b                                         ; $4984: $04
    jp nc, $cd00                                  ; $4985: $d2 $00 $cd

    nop                                           ; $4988: $00
    ld e, e                                       ; $4989: $5b
    rrca                                          ; $498a: $0f
    ld [$0200], sp                                ; $498b: $08 $00 $02
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    dec b                                         ; $4990: $05
    nop                                           ; $4991: $00
    dec hl                                        ; $4992: $2b
    nop                                           ; $4993: $00
    ld e, [hl]                                    ; $4994: $5e
    nop                                           ; $4995: $00
    xor a                                         ; $4996: $af
    jr nz, jr_0ca_4999                            ; $4997: $20 $00

jr_0ca_4999:
    ld a, a                                       ; $4999: $7f
    db $10                                        ; $499a: $10
    db $10                                        ; $499b: $10
    add b                                         ; $499c: $80
    nop                                           ; $499d: $00
    call nc, $6800                                ; $499e: $d4 $00 $68
    ld [bc], a                                    ; $49a1: $02
    nop                                           ; $49a2: $00
    ld a, [$dd00]                                 ; $49a3: $fa $00 $dd
    nop                                           ; $49a6: $00
    rst $30                                       ; $49a7: $f7
    ld e, $20                                     ; $49a8: $1e $20
    ld l, $00                                     ; $49aa: $2e $00
    nop                                           ; $49ac: $00
    ld d, l                                       ; $49ad: $55
    nop                                           ; $49ae: $00
    xor [hl]                                      ; $49af: $ae
    nop                                           ; $49b0: $00
    push af                                       ; $49b1: $f5
    nop                                           ; $49b2: $00
    sbc $80                                       ; $49b3: $de $80
    jr nc, jr_0ca_49c7                            ; $49b5: $30 $10

    stop                                          ; $49b7: $10 $00
    jr nz, jr_0ca_49bb                            ; $49b9: $20 $00

jr_0ca_49bb:
    ld d, c                                       ; $49bb: $51
    nop                                           ; $49bc: $00
    ld a, [hl+]                                   ; $49bd: $2a
    add b                                         ; $49be: $80
    ld e, $00                                     ; $49bf: $1e $00

jr_0ca_49c1:
    cp a                                          ; $49c1: $bf
    nop                                           ; $49c2: $00
    inc de                                        ; $49c3: $13
    ld bc, $0146                                  ; $49c4: $01 $46 $01

jr_0ca_49c7:
    inc de                                        ; $49c7: $13
    nop                                           ; $49c8: $00
    ld bc, $0320                                  ; $49c9: $01 $20 $03
    ld d, a                                       ; $49cc: $57
    ld bc, $03a8                                  ; $49cd: $01 $a8 $03
    ld [hl], a                                    ; $49d0: $77
    nop                                           ; $49d1: $00
    ld bc, $03fc                                  ; $49d2: $01 $fc $03
    ld d, [hl]                                    ; $49d5: $56
    xor a                                         ; $49d6: $af
    sbc h                                         ; $49d7: $9c
    rst $38                                       ; $49d8: $ff
    db $eb                                        ; $49d9: $eb

jr_0ca_49da:
    nop                                           ; $49da: $00
    ldh a, [$5c]                                  ; $49db: $f0 $5c
    ldh [$99], a                                  ; $49dd: $e0 $99
    ldh [$af], a                                  ; $49df: $e0 $af
    ret nc                                        ; $49e1: $d0

    ld b, l                                       ; $49e2: $45
    nop                                           ; $49e3: $00
    ei                                            ; $49e4: $fb
    ccf                                           ; $49e5: $3f
    cp $82                                        ; $49e6: $fe $82
    ld bc, $8143                                  ; $49e8: $01 $43 $81
    xor l                                         ; $49eb: $ad
    nop                                           ; $49ec: $00
    jp Jump_0ca_77ea                              ; $49ed: $c3 $ea $77


    db $fd                                        ; $49f0: $fd
    ld a, [hl]                                    ; $49f1: $7e
    adc h                                         ; $49f2: $8c
    di                                            ; $49f3: $f3
    ld [de], a                                    ; $49f4: $12
    ld bc, $89e1                                  ; $49f5: $01 $e1 $89
    ld [hl], b                                    ; $49f8: $70
    rst $38                                       ; $49f9: $ff
    rst $38                                       ; $49fa: $ff
    push de                                       ; $49fb: $d5
    rst $38                                       ; $49fc: $ff
    inc b                                         ; $49fd: $04
    ld [$aa10], sp                                ; $49fe: $08 $10 $aa
    rst $38                                       ; $4a01: $ff
    add b                                         ; $4a02: $80
    inc b                                         ; $4a03: $04
    nop                                           ; $4a04: $00
    ret nz                                        ; $4a05: $c0

    cp a                                          ; $4a06: $bf
    rst $38                                       ; $4a07: $ff
    rst $38                                       ; $4a08: $ff
    ld d, [hl]                                    ; $4a09: $56
    ld d, l                                       ; $4a0a: $55
    stop                                          ; $4a0b: $10 $00
    ld d, l                                       ; $4a0d: $55
    stop                                          ; $4a0e: $10 $00
    nop                                           ; $4a10: $00
    inc b                                         ; $4a11: $04
    db $10                                        ; $4a12: $10
    db $10                                        ; $4a13: $10
    jr z, jr_0ca_49c1                             ; $4a14: $28 $ab

    jr nz, @+$01                                  ; $4a16: $20 $ff

    ld bc, $0004                                  ; $4a18: $01 $04 $00
    inc bc                                        ; $4a1b: $03
    db $fd                                        ; $4a1c: $fd
    ld bc, $4300                                  ; $4a1d: $01 $00 $43
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    and c                                         ; $4a22: $a1
    nop                                           ; $4a23: $00
    ld [hl], l                                    ; $4a24: $75
    nop                                           ; $4a25: $00
    xor e                                         ; $4a26: $ab
    db $10                                        ; $4a27: $10
    ld d, l                                       ; $4a28: $55
    nop                                           ; $4a29: $00
    jr nz, jr_0ca_49da                            ; $4a2a: $20 $ae

    ld b, c                                       ; $4a2c: $41
    ld a, e                                       ; $4a2d: $7b
    add b                                         ; $4a2e: $80
    rst $38                                       ; $4a2f: $ff
    nop                                           ; $4a30: $00
    cp $40                                        ; $4a31: $fe $40
    nop                                           ; $4a33: $00
    dec hl                                        ; $4a34: $2b
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    rst $30                                       ; $4a37: $f7
    ld [$14eb], sp                                ; $4a38: $08 $eb $14
    rst $10                                       ; $4a3b: $d7
    jr @+$2a                                      ; $4a3c: $18 $28

    ld h, [hl]                                    ; $4a3e: $66

jr_0ca_4a3f:
    sbc c                                         ; $4a3f: $99
    inc c                                         ; $4a40: $0c
    ld [$1804], sp                                ; $4a41: $08 $04 $18
    cp $01                                        ; $4a44: $fe $01
    rst $18                                       ; $4a46: $df
    db $10                                        ; $4a47: $10
    jr nz, jr_0ca_4a3f                            ; $4a48: $20 $f5

    ld a, [bc]                                    ; $4a4a: $0a
    db $10                                        ; $4a4b: $10
    jr z, jr_0ca_4acd                             ; $4a4c: $28 $7f

    add b                                         ; $4a4e: $80
    cp a                                          ; $4a4f: $bf
    ld b, b                                       ; $4a50: $40
    inc b                                         ; $4a51: $04
    ld l, a                                       ; $4a52: $6f
    sub b                                         ; $4a53: $90
    ld e, [hl]                                    ; $4a54: $5e
    and c                                         ; $4a55: $a1
    ei                                            ; $4a56: $fb
    jr nc, jr_0ca_4a79                            ; $4a57: $30 $20

    cp $01                                        ; $4a59: $fe $01
    ld bc, $00ff                                  ; $4a5b: $01 $ff $00
    ld d, a                                       ; $4a5e: $57
    xor b                                         ; $4a5f: $a8
    ld a, [hl]                                    ; $4a60: $7e
    add c                                         ; $4a61: $81
    db $db                                        ; $4a62: $db
    jr nc, jr_0ca_4a95                            ; $4a63: $30 $30

    ld bc, $10ef                                  ; $4a65: $01 $ef $10
    db $fd                                        ; $4a68: $fd
    ld [bc], a                                    ; $4a69: $02
    ld d, a                                       ; $4a6a: $57
    xor b                                         ; $4a6b: $a8
    ld l, a                                       ; $4a6c: $6f
    or h                                          ; $4a6d: $b4
    nop                                           ; $4a6e: $00
    ld b, b                                       ; $4a6f: $40
    rst $38                                       ; $4a70: $ff
    inc b                                         ; $4a71: $04
    db $10                                        ; $4a72: $10
    or h                                          ; $4a73: $b4
    ld c, e                                       ; $4a74: $4b
    ld e, l                                       ; $4a75: $5d
    and e                                         ; $4a76: $a3
    adc b                                         ; $4a77: $88
    ld [hl], a                                    ; $4a78: $77

jr_0ca_4a79:
    nop                                           ; $4a79: $00
    ld [hl-], a                                   ; $4a7a: $32
    call z, $04c6                                 ; $4a7b: $cc $c6 $04
    ld e, a                                       ; $4a7e: $5f
    add h                                         ; $4a7f: $84
    cp l                                          ; $4a80: $bd
    adc $00                                       ; $4a81: $ce $00
    ld a, [hl]                                    ; $4a83: $7e
    rst $38                                       ; $4a84: $ff
    dec [hl]                                      ; $4a85: $35
    jp $8360                                      ; $4a86: $c3 $60 $83


    xor d                                         ; $4a89: $aa
    ld b, a                                       ; $4a8a: $47
    nop                                           ; $4a8b: $00
    dec [hl]                                      ; $4a8c: $35
    jr @+$1d                                      ; $4a8d: $18 $1b

    dec c                                         ; $4a8f: $0d
    ld c, [hl]                                    ; $4a90: $4e
    rrca                                          ; $4a91: $0f
    cp c                                          ; $4a92: $b9
    ld c, $00                                     ; $4a93: $0e $00

jr_0ca_4a95:
    ld d, d                                       ; $4a95: $52
    cp l                                          ; $4a96: $bd
    pop hl                                        ; $4a97: $e1
    cp $3c                                        ; $4a98: $fe $3c
    jp $0182                                      ; $4a9a: $c3 $82 $01


    nop                                           ; $4a9d: $00
    add b                                         ; $4a9e: $80
    rst $38                                       ; $4a9f: $ff
    push de                                       ; $4aa0: $d5
    xor d                                         ; $4aa1: $aa
    xor b                                         ; $4aa2: $a8
    ret nc                                        ; $4aa3: $d0

    pop bc                                        ; $4aa4: $c1
    or b                                          ; $4aa5: $b0
    nop                                           ; $4aa6: $00
    or h                                          ; $4aa7: $b4
    jp $e6f9                                      ; $4aa8: $c3 $f9 $e6


    ld [$e9f4], a                                 ; $4aab: $ea $f4 $e9
    or $00                                        ; $4aae: $f6 $00
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    ldh [rP1], a                                  ; $4ab2: $e0 $00
    ld a, [bc]                                    ; $4ab4: $0a
    nop                                           ; $4ab5: $00
    sbc c                                         ; $4ab6: $99
    ld h, a                                       ; $4ab7: $67
    nop                                           ; $4ab8: $00
    pop hl                                        ; $4ab9: $e1
    nop                                           ; $4aba: $00

jr_0ca_4abb:
    ld c, d                                       ; $4abb: $4a
    jr nc, jr_0ca_4abb                            ; $4abc: $30 $fd

    ld a, [hl]                                    ; $4abe: $7e
    xor a                                         ; $4abf: $af
    rst $38                                       ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    ld [hl], b                                    ; $4ac2: $70
    add b                                         ; $4ac3: $80
    dec b                                         ; $4ac4: $05
    nop                                           ; $4ac5: $00
    ldh [$1f], a                                  ; $4ac6: $e0 $1f
    ld d, l                                       ; $4ac8: $55
    rst $38                                       ; $4ac9: $ff
    nop                                           ; $4aca: $00
    cp e                                          ; $4acb: $bb
    ld a, a                                       ; $4acc: $7f

jr_0ca_4acd:
    dec c                                         ; $4acd: $0d
    inc bc                                        ; $4ace: $03
    ld d, b                                       ; $4acf: $50
    add b                                         ; $4ad0: $80
    push de                                       ; $4ad1: $d5
    add sp, $00                                   ; $4ad2: $e8 $00
    ld b, c                                       ; $4ad4: $41
    ccf                                           ; $4ad5: $3f
    xor e                                         ; $4ad6: $ab
    dec d                                         ; $4ad7: $15
    dec [hl]                                      ; $4ad8: $35
    bit 5, e                                      ; $4ad9: $cb $6b
    rst $10                                       ; $4adb: $d7
    ld b, b                                       ; $4adc: $40
    rst $08                                       ; $4add: $cf
    or $00                                        ; $4ade: $f6 $00
    ld a, a                                       ; $4ae0: $7f
    rra                                           ; $4ae1: $1f
    rlca                                          ; $4ae2: $07
    inc bc                                        ; $4ae3: $03
    or $81                                        ; $4ae4: $f6 $81
    nop                                           ; $4ae6: $00
    ld a, $c1                                     ; $4ae7: $3e $c1
    db $fd                                        ; $4ae9: $fd
    add d                                         ; $4aea: $82
    ccf                                           ; $4aeb: $3f
    jp nz, $82fd                                  ; $4aec: $c2 $fd $82

    nop                                           ; $4aef: $00
    dec hl                                        ; $4af0: $2b
    rst $10                                       ; $4af1: $d7
    cp $ff                                        ; $4af2: $fe $ff
    ld d, c                                       ; $4af4: $51
    xor $de                                       ; $4af5: $ee $de
    ld bc, $f700                                  ; $4af7: $01 $00 $f7

jr_0ca_4afa:
    ld [$31ce], sp                                ; $4afa: $08 $ce $31
    cp [hl]                                       ; $4afd: $be
    ld h, c                                       ; $4afe: $61
    ld a, [hl]                                    ; $4aff: $7e
    pop bc                                        ; $4b00: $c1
    nop                                           ; $4b01: $00
    cp $81                                        ; $4b02: $fe $81
    ld [$7e15], a                                 ; $4b04: $ea $15 $7e
    add c                                         ; $4b07: $81
    add e                                         ; $4b08: $83
    ld a, h                                       ; $4b09: $7c
    ld b, c                                       ; $4b0a: $41
    ld bc, $00e1                                  ; $4b0b: $01 $e1 $00
    jr nz, @+$01                                  ; $4b0e: $20 $ff

    ld b, b                                       ; $4b10: $40
    rst $38                                       ; $4b11: $ff
    and h                                         ; $4b12: $a4
    jr @+$1b                                      ; $4b13: $18 $19

    nop                                           ; $4b15: $00
    ld d, l                                       ; $4b16: $55
    ld [hl], c                                    ; $4b17: $71
    adc [hl]                                      ; $4b18: $8e
    jr nz, jr_0ca_4afa                            ; $4b19: $20 $df

    ld bc, $a0ff                                  ; $4b1b: $01 $ff $a0
    add b                                         ; $4b1e: $80
    jr z, jr_0ca_4b42                             ; $4b1f: $28 $21

    dec l                                         ; $4b21: $2d
    jp nc, $ed12                                  ; $4b22: $d2 $12 $ed

    inc b                                         ; $4b25: $04
    ei                                            ; $4b26: $fb
    nop                                           ; $4b27: $00
    add b                                         ; $4b28: $80
    db $10                                        ; $4b29: $10
    jr nc, jr_0ca_4b67                            ; $4b2a: $30 $3b

    call nz, $aa55                                ; $4b2c: $c4 $55 $aa
    ld [hl+], a                                   ; $4b2f: $22
    db $dd                                        ; $4b30: $dd
    nop                                           ; $4b31: $00
    ld [$82ff], sp                                ; $4b32: $08 $ff $82
    rst $38                                       ; $4b35: $ff
    ld d, h                                       ; $4b36: $54
    ld c, b                                       ; $4b37: $48
    ld de, $718e                                  ; $4b38: $11 $8e $71
    dec b                                         ; $4b3b: $05
    nop                                           ; $4b3c: $00
    ld a, [$fd02]                                 ; $4b3d: $fa $02 $fd
    jr nz, @+$01                                  ; $4b40: $20 $ff

jr_0ca_4b42:
    ld d, c                                       ; $4b42: $51
    rst $38                                       ; $4b43: $ff
    and d                                         ; $4b44: $a2
    add d                                         ; $4b45: $82
    ld e, b                                       ; $4b46: $58
    ld de, $eb15                                  ; $4b47: $11 $15 $eb
    ld [$01f7], sp                                ; $4b4a: $08 $f7 $01
    ld d, b                                       ; $4b4d: $50
    nop                                           ; $4b4e: $00
    ld b, l                                       ; $4b4f: $45
    ret nz                                        ; $4b50: $c0

    ld [hl], d                                    ; $4b51: $72
    ld bc, $096c                                  ; $4b52: $01 $6c $09
    ld d, [hl]                                    ; $4b55: $56
    xor [hl]                                      ; $4b56: $ae
    sbc d                                         ; $4b57: $9a
    db $fc                                        ; $4b58: $fc
    push af                                       ; $4b59: $f5
    cp $00                                        ; $4b5a: $fe $00
    ld a, [hl+]                                   ; $4b5c: $2a
    db $fd                                        ; $4b5d: $fd
    ld d, l                                       ; $4b5e: $55
    adc [hl]                                      ; $4b5f: $8e
    res 0, a                                      ; $4b60: $cb $87

jr_0ca_4b62:
    xor l                                         ; $4b62: $ad
    jp $d800                                      ; $4b63: $c3 $00 $d8


    rst $20                                       ; $4b66: $e7

jr_0ca_4b67:
    ld bc, $8101                                  ; $4b67: $01 $01 $81
    ld bc, $014b                                  ; $4b6a: $01 $4b $01
    nop                                           ; $4b6d: $00
    cp $03                                        ; $4b6e: $fe $03
    ld d, l                                       ; $4b70: $55
    xor [hl]                                      ; $4b71: $ae
    rst $38                                       ; $4b72: $ff
    ld sp, hl                                     ; $4b73: $f9
    ld d, e                                       ; $4b74: $53
    pop hl                                        ; $4b75: $e1
    nop                                           ; $4b76: $00
    xor a                                         ; $4b77: $af
    di                                            ; $4b78: $f3
    or $ff                                        ; $4b79: $f6 $ff
    ld a, [$feff]                                 ; $4b7b: $fa $ff $fe
    rst $38                                       ; $4b7e: $ff
    nop                                           ; $4b7f: $00
    push af                                       ; $4b80: $f5
    rst $38                                       ; $4b81: $ff
    ld [$dff5], a                                 ; $4b82: $ea $f5 $df
    ldh [$ea], a                                  ; $4b85: $e0 $ea
    ret nz                                        ; $4b87: $c0

    nop                                           ; $4b88: $00
    push de                                       ; $4b89: $d5
    add b                                         ; $4b8a: $80
    dec h                                         ; $4b8b: $25
    rst $18                                       ; $4b8c: $df
    ld d, h                                       ; $4b8d: $54
    xor e                                         ; $4b8e: $ab
    ld a, [hl+]                                   ; $4b8f: $2a
    push de                                       ; $4b90: $d5
    nop                                           ; $4b91: $00
    push af                                       ; $4b92: $f5
    ld a, [$5faf]                                 ; $4b93: $fa $af $5f
    push de                                       ; $4b96: $d5
    dec hl                                        ; $4b97: $2b
    cp [hl]                                       ; $4b98: $be
    ld bc, $5500                                  ; $4b99: $01 $00 $55
    nop                                           ; $4b9c: $00
    ld sp, hl                                     ; $4b9d: $f9
    cp $bf                                        ; $4b9e: $fe $bf
    rst $38                                       ; $4ba0: $ff
    dec bc                                        ; $4ba1: $0b
    rst $38                                       ; $4ba2: $ff
    nop                                           ; $4ba3: $00
    ld d, c                                       ; $4ba4: $51
    xor a                                         ; $4ba5: $af
    xor d                                         ; $4ba6: $aa
    push de                                       ; $4ba7: $d5
    ld a, c                                       ; $4ba8: $79
    cp $a7                                        ; $4ba9: $fe $a7
    ld e, a                                       ; $4bab: $5f
    nop                                           ; $4bac: $00
    ld d, a                                       ; $4bad: $57
    nop                                           ; $4bae: $00
    ld d, e                                       ; $4baf: $53
    add e                                         ; $4bb0: $83
    inc de                                        ; $4bb1: $13
    pop hl                                        ; $4bb2: $e1
    db $eb                                        ; $4bb3: $eb
    pop af                                        ; $4bb4: $f1
    nop                                           ; $4bb5: $00
    ld [hl], e                                    ; $4bb6: $73
    ld sp, hl                                     ; $4bb7: $f9
    and l                                         ; $4bb8: $a5
    ld [hl], e                                    ; $4bb9: $73
    ld c, e                                       ; $4bba: $4b
    or a                                          ; $4bbb: $b7
    rst $38                                       ; $4bbc: $ff
    rst $38                                       ; $4bbd: $ff
    ld a, [bc]                                    ; $4bbe: $0a
    ld d, h                                       ; $4bbf: $54
    xor e                                         ; $4bc0: $ab
    rst $18                                       ; $4bc1: $df
    jr nz, jr_0ca_4b62                            ; $4bc2: $20 $9e

    add hl, bc                                    ; $4bc4: $09
    add b                                         ; $4bc5: $80
    and h                                         ; $4bc6: $a4
    ld bc, $00fb                                  ; $4bc7: $01 $fb $00
    nop                                           ; $4bca: $00
    ld a, [hl]                                    ; $4bcb: $7e
    nop                                           ; $4bcc: $00
    rst $28                                       ; $4bcd: $ef
    nop                                           ; $4bce: $00
    ld e, [hl]                                    ; $4bcf: $5e
    and e                                         ; $4bd0: $a3
    xor $00                                       ; $4bd1: $ee $00
    inc de                                        ; $4bd3: $13
    cp h                                          ; $4bd4: $bc
    ld b, e                                       ; $4bd5: $43
    ld d, $00                                     ; $4bd6: $16 $00
    ld [hl], h                                    ; $4bd8: $74
    dec bc                                        ; $4bd9: $0b
    cp [hl]                                       ; $4bda: $be
    inc b                                         ; $4bdb: $04
    inc bc                                        ; $4bdc: $03
    or $03                                        ; $4bdd: $f6 $03
    cp $03                                        ; $4bdf: $fe $03
    xor a                                         ; $4be1: $af
    add hl, de                                    ; $4be2: $19
    add b                                         ; $4be3: $80
    nop                                           ; $4be4: $00
    add b                                         ; $4be5: $80
    or a                                          ; $4be6: $b7
    add hl, hl                                    ; $4be7: $29
    ld b, d                                       ; $4be8: $42
    cp [hl]                                       ; $4be9: $be
    dec bc                                        ; $4bea: $0b
    or $05                                        ; $4beb: $f6 $05
    ld a, [$8016]                                 ; $4bed: $fa $16 $80
    stop                                          ; $4bf0: $10 $00
    inc bc                                        ; $4bf2: $03
    cp $02                                        ; $4bf3: $fe $02
    rst $38                                       ; $4bf5: $ff
    ld [bc], a                                    ; $4bf6: $02
    rst $38                                       ; $4bf7: $ff
    and b                                         ; $4bf8: $a0
    and b                                         ; $4bf9: $a0
    ld a, h                                       ; $4bfa: $7c
    ld [bc], a                                    ; $4bfb: $02
    ld [$0282], a                                 ; $4bfc: $ea $82 $02
    ld [bc], a                                    ; $4bff: $02
    db $fd                                        ; $4c00: $fd
    inc b                                         ; $4c01: $04
    ei                                            ; $4c02: $fb
    add hl, bc                                    ; $4c03: $09
    nop                                           ; $4c04: $00
    or $44                                        ; $4c05: $f6 $44
    cp e                                          ; $4c07: $bb
    inc bc                                        ; $4c08: $03
    ld [bc], a                                    ; $4c09: $02
    ld [bc], a                                    ; $4c0a: $02
    ld [bc], a                                    ; $4c0b: $02
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    ld [bc], a                                    ; $4c0e: $02
    ld d, $00                                     ; $4c0f: $16 $00
    xor l                                         ; $4c11: $ad
    ld d, d                                       ; $4c12: $52
    ld d, [hl]                                    ; $4c13: $56
    xor d                                         ; $4c14: $aa
    ld b, $00                                     ; $4c15: $06 $00
    ld a, [$5ea3]                                 ; $4c17: $fa $a3 $5e
    ld e, [hl]                                    ; $4c1a: $5e
    nop                                           ; $4c1b: $00
    cpl                                           ; $4c1c: $2f
    nop                                           ; $4c1d: $00
    dec d                                         ; $4c1e: $15
    add d                                         ; $4c1f: $82
    and d                                         ; $4c20: $a2
    ld [bc], a                                    ; $4c21: $02
    ld [$4400], sp                                ; $4c22: $08 $00 $44
    nop                                           ; $4c25: $00
    ld d, a                                       ; $4c26: $57
    or [hl]                                       ; $4c27: $b6
    ld [bc], a                                    ; $4c28: $02
    rst $38                                       ; $4c29: $ff
    ld [$f702], sp                                ; $4c2a: $08 $02 $f7
    ld [bc], a                                    ; $4c2d: $02
    ld a, c                                       ; $4c2e: $79
    jr nz, jr_0ca_4c31                            ; $4c2f: $20 $00

jr_0ca_4c31:
    cp l                                          ; $4c31: $bd
    ld [bc], a                                    ; $4c32: $02
    ld e, a                                       ; $4c33: $5f
    nop                                           ; $4c34: $00
    ld [bc], a                                    ; $4c35: $02
    ld d, a                                       ; $4c36: $57
    ld [bc], a                                    ; $4c37: $02
    xor e                                         ; $4c38: $ab
    ld [bc], a                                    ; $4c39: $02
    ld e, a                                       ; $4c3a: $5f
    and d                                         ; $4c3b: $a2
    rst $28                                       ; $4c3c: $ef
    nop                                           ; $4c3d: $00
    ld [de], a                                    ; $4c3e: $12
    cp l                                          ; $4c3f: $bd
    ld b, d                                       ; $4c40: $42
    ld d, $00                                     ; $4c41: $16 $00
    ld [hl], l                                    ; $4c43: $75
    ld a, [bc]                                    ; $4c44: $0a
    cp a                                          ; $4c45: $bf
    ret nz                                        ; $4c46: $c0

    ld a, [de]                                    ; $4c47: $1a
    nop                                           ; $4c48: $00
    ld d, c                                       ; $4c49: $51
    nop                                           ; $4c4a: $00
    rst $38                                       ; $4c4b: $ff
    rst $30                                       ; $4c4c: $f7
    ld [bc], a                                    ; $4c4d: $02
    db $fd                                        ; $4c4e: $fd
    ld [bc], a                                    ; $4c4f: $02
    add b                                         ; $4c50: $80
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    or a                                          ; $4c53: $b7
    ld c, b                                       ; $4c54: $48
    ld e, a                                       ; $4c55: $5f
    and b                                         ; $4c56: $a0
    sub $29                                       ; $4c57: $d6 $29
    bit 1, b                                      ; $4c59: $cb $48
    inc [hl]                                      ; $4c5b: $34
    ld a, l                                       ; $4c5c: $7d
    ld [bc], a                                    ; $4c5d: $02
    nop                                           ; $4c5e: $00
    cp c                                          ; $4c5f: $b9
    jr nz, jr_0ca_4c62                            ; $4c60: $20 $00

jr_0ca_4c62:
    db $fd                                        ; $4c62: $fd
    ld [bc], a                                    ; $4c63: $02
    cp [hl]                                       ; $4c64: $be
    nop                                           ; $4c65: $00
    ld b, d                                       ; $4c66: $42
    db $eb                                        ; $4c67: $eb
    ld d, $f7                                     ; $4c68: $16 $f7
    ld a, [bc]                                    ; $4c6a: $0a
    ld b, b                                       ; $4c6b: $40
    add b                                         ; $4c6c: $80
    push hl                                       ; $4c6d: $e5
    ld d, c                                       ; $4c6e: $51
    db $10                                        ; $4c6f: $10
    ld [hl], b                                    ; $4c70: $70
    ld [$b0fd], sp                                ; $4c71: $08 $fd $b0
    nop                                           ; $4c74: $00
    or $00                                        ; $4c75: $f6 $00
    cp e                                          ; $4c77: $bb
    rra                                           ; $4c78: $1f
    inc bc                                        ; $4c79: $03
    db $10                                        ; $4c7a: $10
    ld de, $0144                                  ; $4c7b: $11 $44 $01
    ld [hl], b                                    ; $4c7e: $70
    nop                                           ; $4c7f: $00
    ld d, c                                       ; $4c80: $51
    ld [bc], a                                    ; $4c81: $02
    xor d                                         ; $4c82: $aa
    ld [bc], a                                    ; $4c83: $02
    ld d, d                                       ; $4c84: $52
    ld a, [$0054]                                 ; $4c85: $fa $54 $00
    nop                                           ; $4c88: $00
    ld a, [$ea02]                                 ; $4c89: $fa $02 $ea
    dec d                                         ; $4c8c: $15
    ld [hl], b                                    ; $4c8d: $70
    jr c, jr_0ca_4c90                             ; $4c8e: $38 $00

jr_0ca_4c90:
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    ld d, h                                       ; $4c92: $54
    nop                                           ; $4c93: $00
    add l                                         ; $4c94: $85
    ld a, d                                       ; $4c95: $7a
    ld d, $00                                     ; $4c96: $16 $00
    cp h                                          ; $4c98: $bc
    nop                                           ; $4c99: $00
    inc bc                                        ; $4c9a: $03
    ld e, [hl]                                    ; $4c9b: $5e
    inc bc                                        ; $4c9c: $03
    ld d, [hl]                                    ; $4c9d: $56
    inc bc                                        ; $4c9e: $03
    xor d                                         ; $4c9f: $aa
    inc bc                                        ; $4ca0: $03
    ld a, a                                       ; $4ca1: $7f
    db $10                                        ; $4ca2: $10
    ld a, a                                       ; $4ca3: $7f
    ld [bc], a                                    ; $4ca4: $02
    ld [bc], a                                    ; $4ca5: $02
    ldh a, [$08]                                  ; $4ca6: $f0 $08
    nop                                           ; $4ca8: $00
    rst $38                                       ; $4ca9: $ff
    inc b                                         ; $4caa: $04
    ei                                            ; $4cab: $fb
    nop                                           ; $4cac: $00
    add c                                         ; $4cad: $81
    ld a, [hl]                                    ; $4cae: $7e
    db $10                                        ; $4caf: $10
    rst $28                                       ; $4cb0: $ef
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    cpl                                           ; $4cb3: $2f
    nop                                           ; $4cb4: $00
    add d                                         ; $4cb5: $82
    add b                                         ; $4cb6: $80
    ld [$7f80], sp                                ; $4cb7: $08 $80 $7f
    ld b, d                                       ; $4cba: $42
    cp a                                          ; $4cbb: $bf
    ld a, [bc]                                    ; $4cbc: $0a
    add c                                         ; $4cbd: $81
    nop                                           ; $4cbe: $00
    ld a, a                                       ; $4cbf: $7f
    dec de                                        ; $4cc0: $1b
    add b                                         ; $4cc1: $80
    cp e                                          ; $4cc2: $bb
    ld b, h                                       ; $4cc3: $44
    add b                                         ; $4cc4: $80
    ld [$2aa7], sp                                ; $4cc5: $08 $a7 $2a
    cp [hl]                                       ; $4cc8: $be
    or b                                          ; $4cc9: $b0
    nop                                           ; $4cca: $00
    add b                                         ; $4ccb: $80
    ld [$0109], sp                                ; $4ccc: $08 $09 $01
    cp $02                                        ; $4ccf: $fe $02
    cp $0f                                        ; $4cd1: $fe $0f
    ld bc, $7ffe                                  ; $4cd3: $01 $fe $7f
    ld b, h                                       ; $4cd6: $44
    inc bc                                        ; $4cd7: $03
    ld b, b                                       ; $4cd8: $40
    xor [hl]                                      ; $4cd9: $ae
    ld [hl-], a                                   ; $4cda: $32
    ld de, $ff00                                  ; $4cdb: $11 $00 $ff
    db $10                                        ; $4cde: $10
    rst $28                                       ; $4cdf: $ef
    add hl, bc                                    ; $4ce0: $09
    or $01                                        ; $4ce1: $f6 $01
    ld l, [hl]                                    ; $4ce3: $6e
    inc bc                                        ; $4ce4: $03
    cp d                                          ; $4ce5: $ba
    inc bc                                        ; $4ce6: $03
    rst $28                                       ; $4ce7: $ef
    ld [bc], a                                    ; $4ce8: $02
    rst $28                                       ; $4ce9: $ef
    ld a, [c]                                     ; $4cea: $f2
    nop                                           ; $4ceb: $00
    inc bc                                        ; $4cec: $03
    and e                                         ; $4ced: $a3
    ld e, h                                       ; $4cee: $5c
    ld d, l                                       ; $4cef: $55
    xor d                                         ; $4cf0: $aa
    dec hl                                        ; $4cf1: $2b
    sub $58                                       ; $4cf2: $d6 $58
    nop                                           ; $4cf4: $00
    ld [hl-], a                                   ; $4cf5: $32
    ld hl, $bd02                                  ; $4cf6: $21 $02 $bd
    ld [bc], a                                    ; $4cf9: $02
    xor $01                                       ; $4cfa: $ee $01
    ld a, a                                       ; $4cfc: $7f
    nop                                           ; $4cfd: $00
    inc h                                         ; $4cfe: $24
    add hl, bc                                    ; $4cff: $09
    ld [bc], a                                    ; $4d00: $02
    nop                                           ; $4d01: $00
    rst $38                                       ; $4d02: $ff
    ld d, $ff                                     ; $4d03: $16 $ff
    ld d, $00                                     ; $4d05: $16 $00
    jp z, $a43d                                   ; $4d07: $ca $3d $a4

    jr jr_0ca_4d6b                                ; $4d0a: $18 $5f

    ld d, d                                       ; $4d0c: $52
    xor a                                         ; $4d0d: $af
    ld a, b                                       ; $4d0e: $78
    ld [$1952], sp                                ; $4d0f: $08 $52 $19
    ld d, d                                       ; $4d12: $52
    rst $38                                       ; $4d13: $ff
    inc l                                         ; $4d14: $2c
    nop                                           ; $4d15: $00
    ei                                            ; $4d16: $fb
    ld d, l                                       ; $4d17: $55
    rst $38                                       ; $4d18: $ff
    ld [de], a                                    ; $4d19: $12
    xor $0b                                       ; $4d1a: $ee $0b
    or $13                                        ; $4d1c: $f6 $13
    nop                                           ; $4d1e: $00
    xor $03                                       ; $4d1f: $ee $03
    cp $16                                        ; $4d21: $fe $16
    nop                                           ; $4d23: $00
    xor d                                         ; $4d24: $aa
    ld [hl], l                                    ; $4d25: $75
    dec [hl]                                      ; $4d26: $35
    ld [bc], a                                    ; $4d27: $02
    jp c, $ef5a                                   ; $4d28: $da $5a $ef

    sub l                                         ; $4d2b: $95
    nop                                           ; $4d2c: $00
    ld c, [hl]                                    ; $4d2d: $4e
    adc d                                         ; $4d2e: $8a
    ld bc, $80f7                                  ; $4d2f: $01 $f7 $80
    call nc, $bf03                                ; $4d32: $d4 $03 $bf
    ld b, b                                       ; $4d35: $40
    ld e, [hl]                                    ; $4d36: $5e
    and b                                         ; $4d37: $a0
    cpl                                           ; $4d38: $2f
    ret nc                                        ; $4d39: $d0

    rst $10                                       ; $4d3a: $d7
    adc d                                         ; $4d3b: $8a
    sub $00                                       ; $4d3c: $d6 $00
    or a                                          ; $4d3e: $b7
    ld [bc], a                                    ; $4d3f: $02

jr_0ca_4d40:
    rst $18                                       ; $4d40: $df
    ld d, d                                       ; $4d41: $52
    ld bc, $fab6                                  ; $4d42: $01 $b6 $fa
    ld a, [bc]                                    ; $4d45: $0a
    ld [bc], a                                    ; $4d46: $02
    ld b, $6f                                     ; $4d47: $06 $6f
    ld [bc], a                                    ; $4d49: $02
    cp e                                          ; $4d4a: $bb
    ld [bc], a                                    ; $4d4b: $02
    xor $02                                       ; $4d4c: $ee $02
    nop                                           ; $4d4e: $00
    ld [hl], b                                    ; $4d4f: $70
    jr z, @-$1d                                   ; $4d50: $28 $e1

    ld bc, $b41e                                  ; $4d52: $01 $1e $b4
    ld c, a                                       ; $4d55: $4f
    ld [$f515], a                                 ; $4d56: $ea $15 $f5
    ld a, [bc]                                    ; $4d59: $0a
    ld [hl], b                                    ; $4d5a: $70
    jr z, jr_0ca_4d5f                             ; $4d5b: $28 $02

    ld a, d                                       ; $4d5d: $7a
    add a                                         ; $4d5e: $87

jr_0ca_4d5f:
    cp e                                          ; $4d5f: $bb
    ld b, [hl]                                    ; $4d60: $46
    ld [hl-], a                                   ; $4d61: $32
    rst $08                                       ; $4d62: $cf
    ld [hl], b                                    ; $4d63: $70
    jr c, @+$01                                   ; $4d64: $38 $ff

    ld bc, $7b00                                  ; $4d66: $01 $00 $7b
    add b                                         ; $4d69: $80
    ld d, a                                       ; $4d6a: $57

jr_0ca_4d6b:
    xor b                                         ; $4d6b: $a8
    sub d                                         ; $4d6c: $92
    ld l, l                                       ; $4d6d: $6d
    ld [hl], b                                    ; $4d6e: $70
    jr z, @+$5a                                   ; $4d6f: $28 $58

    xor $80                                       ; $4d71: $ee $80
    ld bc, $b9ef                                  ; $4d73: $01 $ef $b9
    ld bc, $2870                                  ; $4d76: $01 $70 $28
    sub $03                                       ; $4d79: $d6 $03
    ei                                            ; $4d7b: $fb
    nop                                           ; $4d7c: $00
    ld [bc], a                                    ; $4d7d: $02
    or [hl]                                       ; $4d7e: $b6
    inc bc                                        ; $4d7f: $03
    sbc $03                                       ; $4d80: $de $03
    ld d, $00                                     ; $4d82: $16 $00
    or a                                          ; $4d84: $b7
    add b                                         ; $4d85: $80
    ld h, h                                       ; $4d86: $64
    ld bc, $02fe                                  ; $4d87: $01 $fe $02
    add b                                         ; $4d8a: $80
    ld a, a                                       ; $4d8b: $7f
    ld b, b                                       ; $4d8c: $40
    cp a                                          ; $4d8d: $bf
    ld d, c                                       ; $4d8e: $51
    ret nc                                        ; $4d8f: $d0

    pop hl                                        ; $4d90: $e1
    nop                                           ; $4d91: $00
    ld [de], a                                    ; $4d92: $12
    ld a, [bc]                                    ; $4d93: $0a
    rst $28                                       ; $4d94: $ef
    ld h, d                                       ; $4d95: $62
    ld bc, $6f92                                  ; $4d96: $01 $92 $6f
    ld b, [hl]                                    ; $4d99: $46
    cp e                                          ; $4d9a: $bb
    nop                                           ; $4d9b: $00
    inc de                                        ; $4d9c: $13
    xor $13                                       ; $4d9d: $ee $13
    xor $16                                       ; $4d9f: $ee $16
    nop                                           ; $4da1: $00
    ld e, a                                       ; $4da2: $5f
    nop                                           ; $4da3: $00
    inc e                                         ; $4da4: $1c
    xor c                                         ; $4da5: $a9
    ld [bc], a                                    ; $4da6: $02
    rst $10                                       ; $4da7: $d7
    dec a                                         ; $4da8: $3d
    ld bc, $09f8                                  ; $4da9: $01 $f8 $09
    ret nc                                        ; $4dac: $d0

    jr c, jr_0ca_4db7                             ; $4dad: $38 $08

    rst $30                                       ; $4daf: $f7
    add hl, bc                                    ; $4db0: $09
    inc b                                         ; $4db1: $04
    ei                                            ; $4db2: $fb
    ld [bc], a                                    ; $4db3: $02
    db $fd                                        ; $4db4: $fd
    ld a, [bc]                                    ; $4db5: $0a
    add hl, bc                                    ; $4db6: $09

jr_0ca_4db7:
    jr nz, @-$1f                                  ; $4db7: $20 $df

    ld [de], a                                    ; $4db9: $12
    add hl, bc                                    ; $4dba: $09
    jr nz, jr_0ca_4d40                            ; $4dbb: $20 $83

    ld a, [hl]                                    ; $4dbd: $7e
    jr z, @+$0b                                   ; $4dbe: $28 $09

    daa                                           ; $4dc0: $27
    jp c, $ee13                                   ; $4dc1: $da $13 $ee

    ld b, e                                       ; $4dc4: $43
    nop                                           ; $4dc5: $00
    cp [hl]                                       ; $4dc6: $be
    rlca                                          ; $4dc7: $07
    ld a, [$7e83]                                 ; $4dc8: $fa $83 $7e
    ld e, e                                       ; $4dcb: $5b
    nop                                           ; $4dcc: $00
    xor l                                         ; $4dcd: $ad
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    ld d, $00                                     ; $4dd0: $16 $00
    adc e                                         ; $4dd2: $8b
    nop                                           ; $4dd3: $00
    add l                                         ; $4dd4: $85
    nop                                           ; $4dd5: $00
    ld hl, $a880                                  ; $4dd6: $21 $80 $a8
    inc b                                         ; $4dd9: $04
    ret nc                                        ; $4dda: $d0

    nop                                           ; $4ddb: $00
    ld d, [hl]                                    ; $4ddc: $56
    xor e                                         ; $4ddd: $ab
    xor d                                         ; $4dde: $aa
    ld d, a                                       ; $4ddf: $57
    rst $10                                       ; $4de0: $d7
    db $10                                        ; $4de1: $10
    ld a, [hl+]                                   ; $4de2: $2a
    ld [$ca17], a                                 ; $4de3: $ea $17 $ca
    ld [$02bf], sp                                ; $4de6: $08 $bf $02
    ld d, [hl]                                    ; $4de9: $56
    ld [bc], a                                    ; $4dea: $02
    nop                                           ; $4deb: $00
    rla                                           ; $4dec: $17
    rst $38                                       ; $4ded: $ff
    xor d                                         ; $4dee: $aa
    rst $18                                       ; $4def: $df
    ld d, c                                       ; $4df0: $51
    rst $28                                       ; $4df1: $ef
    xor b                                         ; $4df2: $a8
    ld [hl], a                                    ; $4df3: $77
    nop                                           ; $4df4: $00
    ld b, c                                       ; $4df5: $41
    cp [hl]                                       ; $4df6: $be
    push af                                       ; $4df7: $f5
    ld a, [bc]                                    ; $4df8: $0a
    jp c, $ef25                                   ; $4df9: $da $25 $ef

    stop                                          ; $4dfc: $10 $00
    ld d, [hl]                                    ; $4dfe: $56
    ei                                            ; $4dff: $fb
    ld [$77ff], a                                 ; $4e00: $ea $ff $77
    rst $38                                       ; $4e03: $ff
    xor [hl]                                      ; $4e04: $ae
    rst $38                                       ; $4e05: $ff
    nop                                           ; $4e06: $00
    rla                                           ; $4e07: $17
    rst $38                                       ; $4e08: $ff
    daa                                           ; $4e09: $27
    rst $38                                       ; $4e0a: $ff
    sub d                                         ; $4e0b: $92
    ld a, a                                       ; $4e0c: $7f
    ld c, e                                       ; $4e0d: $4b
    cp a                                          ; $4e0e: $bf
    nop                                           ; $4e0f: $00
    sub a                                         ; $4e10: $97
    add sp, $4a                                   ; $4e11: $e8 $4a
    push af                                       ; $4e13: $f5
    dec h                                         ; $4e14: $25
    ld a, [$fd82]                                 ; $4e15: $fa $82 $fd
    nop                                           ; $4e18: $00
    ld c, b                                       ; $4e19: $48
    rst $38                                       ; $4e1a: $ff
    ld [hl], d                                    ; $4e1b: $72
    db $fd                                        ; $4e1c: $fd
    ld [$75ff], a                                 ; $4e1d: $ea $ff $75
    rst $38                                       ; $4e20: $ff
    ld b, b                                       ; $4e21: $40
    cp $96                                        ; $4e22: $fe $96
    ld [bc], a                                    ; $4e24: $02
    ld a, [hl]                                    ; $4e25: $7e
    add e                                         ; $4e26: $83
    cp [hl]                                       ; $4e27: $be
    ld b, e                                       ; $4e28: $43
    ld d, [hl]                                    ; $4e29: $56
    xor e                                         ; $4e2a: $ab
    ld [bc], a                                    ; $4e2b: $02
    ld d, [hl]                                    ; $4e2c: $56
    xor e                                         ; $4e2d: $ab
    ld a, [bc]                                    ; $4e2e: $0a
    rst $30                                       ; $4e2f: $f7
    ld b, [hl]                                    ; $4e30: $46
    cp e                                          ; $4e31: $bb
    ld d, b                                       ; $4e32: $50
    ld a, [bc]                                    ; $4e33: $0a
    ld a, a                                       ; $4e34: $7f
    nop                                           ; $4e35: $00
    add d                                         ; $4e36: $82
    cp a                                          ; $4e37: $bf
    ld b, d                                       ; $4e38: $42
    ld d, a                                       ; $4e39: $57
    xor d                                         ; $4e3a: $aa
    ld d, a                                       ; $4e3b: $57
    xor d                                         ; $4e3c: $aa
    dec bc                                        ; $4e3d: $0b
    dec bc                                        ; $4e3e: $0b
    or $47                                        ; $4e3f: $f6 $47
    cp d                                          ; $4e41: $ba
    rst $30                                       ; $4e42: $f7
    ret z                                         ; $4e43: $c8

    ld [bc], a                                    ; $4e44: $02
    db $fd                                        ; $4e45: $fd
    cp d                                          ; $4e46: $ba
    db $10                                        ; $4e47: $10
    adc a                                         ; $4e48: $8f
    nop                                           ; $4e49: $00
    and d                                         ; $4e4a: $a2
    ret nc                                        ; $4e4b: $d0

    ld [bc], a                                    ; $4e4c: $02
    ld a, a                                       ; $4e4d: $7f
    call nc, $ff00                                ; $4e4e: $d4 $00 $ff
    ld [bc], a                                    ; $4e51: $02
    db $db                                        ; $4e52: $db
    and d                                         ; $4e53: $a2
    ld bc, $08bf                                  ; $4e54: $01 $bf $08
    ld [bc], a                                    ; $4e57: $02
    ei                                            ; $4e58: $fb
    ld [bc], a                                    ; $4e59: $02
    ld a, a                                       ; $4e5a: $7f
    ld e, d                                       ; $4e5b: $5a
    ld [bc], a                                    ; $4e5c: $02
    cp a                                          ; $4e5d: $bf
    ld b, b                                       ; $4e5e: $40
    ld a, e                                       ; $4e5f: $7b
    nop                                           ; $4e60: $00
    add h                                         ; $4e61: $84
    cp a                                          ; $4e62: $bf
    ld b, b                                       ; $4e63: $40
    ld e, l                                       ; $4e64: $5d
    and d                                         ; $4e65: $a2
    ld a, a                                       ; $4e66: $7f
    add b                                         ; $4e67: $80
    scf                                           ; $4e68: $37
    ld [$5bc8], sp                                ; $4e69: $08 $c8 $5b
    and h                                         ; $4e6c: $a4
    ld d, $a0                                     ; $4e6d: $16 $a0
    inc b                                         ; $4e6f: $04
    xor l                                         ; $4e70: $ad
    ld b, d                                       ; $4e71: $42
    ld e, a                                       ; $4e72: $5f
    nop                                           ; $4e73: $00
    ld [hl+], a                                   ; $4e74: $22
    xor [hl]                                      ; $4e75: $ae
    ld [de], a                                    ; $4e76: $12
    ei                                            ; $4e77: $fb
    ld b, $bf                                     ; $4e78: $06 $bf
    ld b, d                                       ; $4e7a: $42
    rst $10                                       ; $4e7b: $d7
    jr z, @+$2c                                   ; $4e7c: $28 $2a

    add b                                         ; $4e7e: $80
    xor d                                         ; $4e7f: $aa
    nop                                           ; $4e80: $00
    ld b, d                                       ; $4e81: $42
    jp nz, $d004                                  ; $4e82: $c2 $04 $d0

    nop                                           ; $4e85: $00
    ld l, d                                       ; $4e86: $6a
    ld [$b500], sp                                ; $4e87: $08 $00 $b5
    nop                                           ; $4e8a: $00
    jp c, $00bc                                   ; $4e8b: $da $bc $00

    inc bc                                        ; $4e8e: $03
    nop                                           ; $4e8f: $00
    add b                                         ; $4e90: $80
    ld [bc], a                                    ; $4e91: $02
    ld [bc], a                                    ; $4e92: $02
    ld b, d                                       ; $4e93: $42
    ld [bc], a                                    ; $4e94: $02
    ld [hl+], a                                   ; $4e95: $22
    ld [bc], a                                    ; $4e96: $02
    ld [de], a                                    ; $4e97: $12
    jp c, $8202                                   ; $4e98: $da $02 $82

    xor d                                         ; $4e9b: $aa
    sbc d                                         ; $4e9c: $9a
    ld [bc], a                                    ; $4e9d: $02
    ld e, l                                       ; $4e9e: $5d
    halt                                          ; $4e9f: $76
    ld [bc], a                                    ; $4ea0: $02
    rra                                           ; $4ea1: $1f
    ld b, h                                       ; $4ea2: $44
    inc b                                         ; $4ea3: $04
    dec b                                         ; $4ea4: $05
    adc b                                         ; $4ea5: $88
    dec b                                         ; $4ea6: $05
    ld bc, $dc84                                  ; $4ea7: $01 $84 $dc
    nop                                           ; $4eaa: $00
    or $09                                        ; $4eab: $f6 $09
    cp b                                          ; $4ead: $b8
    rlca                                          ; $4eae: $07
    pop bc                                        ; $4eaf: $c1
    ld bc, $7603                                  ; $4eb0: $01 $03 $76
    jr nz, jr_0ca_4eb8                            ; $4eb3: $20 $03

    cp [hl]                                       ; $4eb5: $be
    ld h, d                                       ; $4eb6: $62
    ld [bc], a                                    ; $4eb7: $02

jr_0ca_4eb8:
    add b                                         ; $4eb8: $80
    nop                                           ; $4eb9: $00
    dec h                                         ; $4eba: $25
    rst $38                                       ; $4ebb: $ff
    ld [de], a                                    ; $4ebc: $12
    ret nz                                        ; $4ebd: $c0

    push hl                                       ; $4ebe: $e5
    inc a                                         ; $4ebf: $3c
    ld hl, sp+$01                                 ; $4ec0: $f8 $01
    ld d, d                                       ; $4ec2: $52
    db $fd                                        ; $4ec3: $fd
    and c                                         ; $4ec4: $a1
    cp $16                                        ; $4ec5: $fe $16
    rst $38                                       ; $4ec7: $ff
    ld bc, $ff0a                                  ; $4ec8: $01 $0a $ff
    rla                                           ; $4ecb: $17
    cp $0a                                        ; $4ecc: $fe $0a
    rst $38                                       ; $4ece: $ff
    rlca                                          ; $4ecf: $07
    ld [$0002], sp                                ; $4ed0: $08 $02 $00
    ld [bc], a                                    ; $4ed3: $02
    ld bc, $0281                                  ; $4ed4: $01 $81 $02
    ld b, e                                       ; $4ed7: $43
    ld [bc], a                                    ; $4ed8: $02
    inc hl                                        ; $4ed9: $23
    ld [bc], a                                    ; $4eda: $02
    inc b                                         ; $4edb: $04
    inc de                                        ; $4edc: $13
    ld [bc], a                                    ; $4edd: $02
    inc bc                                        ; $4ede: $03
    ld [bc], a                                    ; $4edf: $02
    add e                                         ; $4ee0: $83
    ld [$a202], a                                 ; $4ee1: $ea $02 $a2
    ld e, l                                       ; $4ee4: $5d
    nop                                           ; $4ee5: $00
    ld b, h                                       ; $4ee6: $44
    cp e                                          ; $4ee7: $bb
    ldh [$1f], a                                  ; $4ee8: $e0 $1f
    push af                                       ; $4eea: $f5
    ld a, [bc]                                    ; $4eeb: $0a
    ld a, [$a205]                                 ; $4eec: $fa $05 $a2
    add b                                         ; $4eef: $80
    ld bc, $7001                                  ; $4ef0: $01 $01 $70
    nop                                           ; $4ef3: $00
    db $fc                                        ; $4ef4: $fc
    ld b, b                                       ; $4ef5: $40
    cp a                                          ; $4ef6: $bf
    ld [de], a                                    ; $4ef7: $12
    ld a, [bc]                                    ; $4ef8: $0a
    adc d                                         ; $4ef9: $8a
    inc b                                         ; $4efa: $04
    ld [hl], a                                    ; $4efb: $77
    ld b, e                                       ; $4efc: $43
    cp [hl]                                       ; $4efd: $be
    xor e                                         ; $4efe: $ab
    ld d, [hl]                                    ; $4eff: $56
    ld d, b                                       ; $4f00: $50
    ld [$7f92], sp                                ; $4f01: $08 $92 $7f
    nop                                           ; $4f04: $00
    ld b, d                                       ; $4f05: $42
    cp l                                          ; $4f06: $bd
    and c                                         ; $4f07: $a1
    ld e, [hl]                                    ; $4f08: $5e
    call nc, Call_0ca_6e2b                        ; $4f09: $d4 $2b $6e
    sub c                                         ; $4f0c: $91
    ld [bc], a                                    ; $4f0d: $02
    rst $30                                       ; $4f0e: $f7
    ld [$0016], sp                                ; $4f0f: $08 $16 $00
    ld d, [hl]                                    ; $4f12: $56
    ld sp, hl                                     ; $4f13: $f9
    ld d, b                                       ; $4f14: $50
    ld [$004a], sp                                ; $4f15: $08 $4a $00
    cp a                                          ; $4f18: $bf
    rla                                           ; $4f19: $17
    cp $aa                                        ; $4f1a: $fe $aa
    ld e, a                                       ; $4f1c: $5f
    ld b, a                                       ; $4f1d: $47
    cp a                                          ; $4f1e: $bf
    ld d, $80                                     ; $4f1f: $16 $80
    ld e, [hl]                                    ; $4f21: $5e
    dec b                                         ; $4f22: $05
    xor h                                         ; $4f23: $ac
    ld b, e                                       ; $4f24: $43
    ld e, [hl]                                    ; $4f25: $5e
    inc hl                                        ; $4f26: $23
    xor a                                         ; $4f27: $af
    ld [de], a                                    ; $4f28: $12
    ld a, [$0700]                                 ; $4f29: $fa $00 $07
    cp [hl]                                       ; $4f2c: $be
    ld b, e                                       ; $4f2d: $43
    sub $2b                                       ; $4f2e: $d6 $2b
    add b                                         ; $4f30: $80
    nop                                           ; $4f31: $00
    ld a, d                                       ; $4f32: $7a
    nop                                           ; $4f33: $00
    add l                                         ; $4f34: $85
    cp l                                          ; $4f35: $bd
    ld b, d                                       ; $4f36: $42
    ld e, [hl]                                    ; $4f37: $5e
    and c                                         ; $4f38: $a1
    cpl                                           ; $4f39: $2f
    ret nc                                        ; $4f3a: $d0

    sub l                                         ; $4f3b: $95
    inc b                                         ; $4f3c: $04
    ld l, d                                       ; $4f3d: $6a
    ld c, d                                       ; $4f3e: $4a
    or l                                          ; $4f3f: $b5
    dec h                                         ; $4f40: $25
    jp c, $0820                                   ; $4f41: $da $20 $08

    ld a, h                                       ; $4f44: $7c
    add d                                         ; $4f45: $82
    nop                                           ; $4f46: $00
    cp [hl]                                       ; $4f47: $be
    ld b, d                                       ; $4f48: $42
    sbc $22                                       ; $4f49: $de $22
    xor $12                                       ; $4f4b: $ee $12
    cp $02                                        ; $4f4d: $fe $02
    nop                                           ; $4f4f: $00
    ld a, [hl]                                    ; $4f50: $7e
    add d                                         ; $4f51: $82
    cpl                                           ; $4f52: $2f
    ret nc                                        ; $4f53: $d0

    sub a                                         ; $4f54: $97
    add sp, -$55                                  ; $4f55: $e8 $ab
    ld d, h                                       ; $4f57: $54
    ld [$aa55], sp                                ; $4f58: $08 $55 $aa
    cp d                                          ; $4f5b: $ba
    ld b, l                                       ; $4f5c: $45
    ld a, [$800b]                                 ; $4f5d: $fa $0b $80
    nop                                           ; $4f60: $00
    ld a, [$0700]                                 ; $4f61: $fa $00 $07
    ld [hl], a                                    ; $4f64: $77
    adc d                                         ; $4f65: $8a
    cp e                                          ; $4f66: $bb
    ld b, [hl]                                    ; $4f67: $46
    rst $18                                       ; $4f68: $df
    ld [hl+], a                                   ; $4f69: $22
    rst $38                                       ; $4f6a: $ff
    adc b                                         ; $4f6b: $88
    adc d                                         ; $4f6c: $8a
    inc de                                        ; $4f6d: $13
    ld d, $00                                     ; $4f6e: $16 $00

jr_0ca_4f70:
    db $ed                                        ; $4f70: $ed
    xor [hl]                                      ; $4f71: $ae
    dec b                                         ; $4f72: $05
    cp a                                          ; $4f73: $bf
    ld b, b                                       ; $4f74: $40
    sbc $1c                                       ; $4f75: $de $1c
    jr nz, jr_0ca_4f70                            ; $4f77: $20 $f7

    ld [$0b0a], sp                                ; $4f79: $08 $0a $0b
    and [hl]                                      ; $4f7c: $a6
    ld [bc], a                                    ; $4f7d: $02
    ld e, b                                       ; $4f7e: $58
    inc bc                                        ; $4f7f: $03
    sub $02                                       ; $4f80: $d6 $02
    ld a, c                                       ; $4f82: $79
    ld [$013a], a                                 ; $4f83: $ea $3a $01
    ld a, [bc]                                    ; $4f86: $0a
    dec bc                                        ; $4f87: $0b
    ld hl, sp+$03                                 ; $4f88: $f8 $03
    ld [bc], a                                    ; $4f8a: $02
    jr nz, @+$42                                  ; $4f8b: $20 $40

jr_0ca_4f8d:
    nop                                           ; $4f8d: $00
    ld a, [$000b]                                 ; $4f8e: $fa $0b $00
    add b                                         ; $4f91: $80
    nop                                           ; $4f92: $00
    cp [hl]                                       ; $4f93: $be
    inc bc                                        ; $4f94: $03
    ld e, d                                       ; $4f95: $5a
    inc bc                                        ; $4f96: $03
    ld l, $03                                     ; $4f97: $2e $03
    jr nc, jr_0ca_4fb1                            ; $4f99: $30 $16

    inc bc                                        ; $4f9b: $03
    ld hl, sp+$03                                 ; $4f9c: $f8 $03
    inc b                                         ; $4f9e: $04
    nop                                           ; $4f9f: $00
    ld d, $00                                     ; $4fa0: $16 $00
    ld b, b                                       ; $4fa2: $40
    cp a                                          ; $4fa3: $bf
    add b                                         ; $4fa4: $80
    ld c, $05                                     ; $4fa5: $0e $05
    rst $18                                       ; $4fa7: $df
    db $10                                        ; $4fa8: $10
    rst $28                                       ; $4fa9: $ef
    ld c, b                                       ; $4faa: $48
    or a                                          ; $4fab: $b7
    and c                                         ; $4fac: $a1
    ld e, [hl]                                    ; $4fad: $5e
    inc c                                         ; $4fae: $0c
    ret nc                                        ; $4faf: $d0

    cpl                                           ; $4fb0: $2f

jr_0ca_4fb1:
    add b                                         ; $4fb1: $80
    nop                                           ; $4fb2: $00
    or e                                          ; $4fb3: $b3
    ld [bc], a                                    ; $4fb4: $02
    ld h, $04                                     ; $4fb5: $26 $04
    inc bc                                        ; $4fb7: $03
    cp $00                                        ; $4fb8: $fe $00
    inc hl                                        ; $4fba: $23
    sbc $03                                       ; $4fbb: $de $03
    cp $0b                                        ; $4fbd: $fe $0b
    or $16                                        ; $4fbf: $f6 $16
    nop                                           ; $4fc1: $00
    ld b, b                                       ; $4fc2: $40
    ld d, e                                       ; $4fc3: $53
    db $f4                                        ; $4fc4: $f4

jr_0ca_4fc5:
    inc bc                                        ; $4fc5: $03
    rst $10                                       ; $4fc6: $d7
    ld [bc], a                                    ; $4fc7: $02
    db $eb                                        ; $4fc8: $eb
    ld [bc], a                                    ; $4fc9: $02
    ld a, [hl]                                    ; $4fca: $7e
    inc bc                                        ; $4fcb: $03
    jr jr_0ca_4f8d                                ; $4fcc: $18 $bf

    ld [bc], a                                    ; $4fce: $02
    or $76                                        ; $4fcf: $f6 $76
    ld [bc], a                                    ; $4fd1: $02
    db $10                                        ; $4fd2: $10
    ld l, $bf                                     ; $4fd3: $2e $bf
    ld b, b                                       ; $4fd5: $40
    ld e, a                                       ; $4fd6: $5f
    nop                                           ; $4fd7: $00
    and b                                         ; $4fd8: $a0
    dec hl                                        ; $4fd9: $2b
    call nc, Call_000_0080                        ; $4fda: $d4 $80 $00
    ld b, e                                       ; $4fdd: $43
    cp [hl]                                       ; $4fde: $be
    and a                                         ; $4fdf: $a7
    dec b                                         ; $4fe0: $05
    ld e, d                                       ; $4fe1: $5a
    db $d3                                        ; $4fe2: $d3
    ld l, $eb                                     ; $4fe3: $2e $eb
    ld d, $5d                                     ; $4fe5: $16 $5d
    inc c                                         ; $4fe7: $0c
    cp $48                                        ; $4fe8: $fe $48
    inc b                                         ; $4fea: $04
    ld b, [hl]                                    ; $4feb: $46
    cp a                                          ; $4fec: $bf
    ld a, [$de03]                                 ; $4fed: $fa $03 $de
    ld bc, $9eef                                  ; $4ff0: $01 $ef $9e
    ld [bc], a                                    ; $4ff3: $02
    ld c, d                                       ; $4ff4: $4a
    inc c                                         ; $4ff5: $0c
    add b                                         ; $4ff6: $80
    dec b                                         ; $4ff7: $05
    nop                                           ; $4ff8: $00
    xor e                                         ; $4ff9: $ab
    ld d, a                                       ; $4ffa: $57
    sub $2b                                       ; $4ffb: $d6 $2b
    ld a, $0a                                     ; $4ffd: $3e $0a
    rst $18                                       ; $4fff: $df
    ld a, l                                       ; $5000: $7d
    inc b                                         ; $5001: $04
    add b                                         ; $5002: $80
    sub b                                         ; $5003: $90
    ld [$07fa], sp                                ; $5004: $08 $fa $07
    halt                                          ; $5007: $76
    adc e                                         ; $5008: $8b
    cp d                                          ; $5009: $ba
    ld b, a                                       ; $500a: $47
    sbc $11                                       ; $500b: $de $11
    inc hl                                        ; $500d: $23
    cp $03                                        ; $500e: $fe $03
    cp d                                          ; $5010: $ba
    inc c                                         ; $5011: $0c
    ld d, $00                                     ; $5012: $16 $00
    ld [de], a                                    ; $5014: $12
    pop bc                                        ; $5015: $c1
    ld [$ff68], sp                                ; $5016: $08 $68 $ff
    sub h                                         ; $5019: $94
    dec c                                         ; $501a: $0d
    cp b                                          ; $501b: $b8
    inc e                                         ; $501c: $1c
    xor [hl]                                      ; $501d: $ae
    adc b                                         ; $501e: $88
    inc b                                         ; $501f: $04
    ld a, [hl+]                                   ; $5020: $2a
    sub $16                                       ; $5021: $d6 $16
    rra                                           ; $5023: $1f
    ld [$7e83], a                                 ; $5024: $ea $83 $7e
    cp d                                          ; $5027: $ba
    inc c                                         ; $5028: $0c
    ld [hl], b                                    ; $5029: $70
    jr jr_0ca_504e                                ; $502a: $18 $22

    ld a, [bc]                                    ; $502c: $0a
    db $ec                                        ; $502d: $ec
    inc c                                         ; $502e: $0c
    call z, $330b                                 ; $502f: $cc $0b $33
    ld [$ea15], a                                 ; $5032: $ea $15 $ea
    inc c                                         ; $5035: $0c
    ld d, [hl]                                    ; $5036: $56
    ld a, [bc]                                    ; $5037: $0a
    cp $03                                        ; $5038: $fe $03
    call z, $3a0b                                 ; $503a: $cc $0b $3a
    jr z, jr_0ca_4fc5                             ; $503d: $28 $86

    and a                                         ; $503f: $a7
    ld e, $04                                     ; $5040: $1e $04
    rst $38                                       ; $5042: $ff
    ld [bc], a                                    ; $5043: $02
    db $fc                                        ; $5044: $fc
    ld a, [$f02b]                                 ; $5045: $fa $2b $f0
    inc c                                         ; $5048: $0c
    inc bc                                        ; $5049: $03
    dec l                                         ; $504a: $2d
    cp $da                                        ; $504b: $fe $da
    ld a, d                                       ; $504d: $7a

jr_0ca_504e:
    inc d                                         ; $504e: $14
    ld a, l                                       ; $504f: $7d
    ld a, h                                       ; $5050: $7c
    inc d                                         ; $5051: $14
    ld e, h                                       ; $5052: $5c
    dec bc                                        ; $5053: $0b
    and d                                         ; $5054: $a2
    ld a, d                                       ; $5055: $7a
    inc d                                         ; $5056: $14
    ld l, e                                       ; $5057: $6b
    sub $7c                                       ; $5058: $d6 $7c
    inc d                                         ; $505a: $14
    ld e, h                                       ; $505b: $5c
    dec bc                                        ; $505c: $0b
    ld de, $14ea                                  ; $505d: $11 $ea $14
    ld a, [hl+]                                   ; $5060: $2a
    db $ec                                        ; $5061: $ec
    inc d                                         ; $5062: $14
    call z, $590b                                 ; $5063: $cc $0b $59
    ld d, a                                       ; $5066: $57
    ld [$ae14], a                                 ; $5067: $ea $14 $ae
    db $ec                                        ; $506a: $ec
    inc d                                         ; $506b: $14
    call z, $eb0b                                 ; $506c: $cc $0b $eb
    inc d                                         ; $506f: $14
    ld [$c90c], a                                 ; $5070: $ea $0c $c9
    ld b, $0d                                     ; $5073: $06 $0d
    call z, Call_0ca_6e1b                         ; $5075: $cc $1b $6e
    sub b                                         ; $5078: $90
    ld [$af0c], a                                 ; $5079: $ea $0c $af
    ld d, b                                       ; $507c: $50
    db $ec                                        ; $507d: $ec
    inc c                                         ; $507e: $0c
    and [hl]                                      ; $507f: $a6
    call z, $fe0b                                 ; $5080: $cc $0b $fe
    ld [$d714], a                                 ; $5083: $ea $14 $d7
    ld a, [hl+]                                   ; $5086: $2a
    db $ec                                        ; $5087: $ec
    inc c                                         ; $5088: $0c
    call z, $a30b                                 ; $5089: $cc $0b $a3
    ld de, $5000                                  ; $508c: $11 $00 $50
    inc bc                                        ; $508f: $03
    ld [hl-], a                                   ; $5090: $32
    add hl, bc                                    ; $5091: $09
    ei                                            ; $5092: $fb
    ld [bc], a                                    ; $5093: $02
    ld e, [hl]                                    ; $5094: $5e
    ld l, b                                       ; $5095: $68
    inc b                                         ; $5096: $04
    nop                                           ; $5097: $00
    or $03                                        ; $5098: $f6 $03
    xor $11                                       ; $509a: $ee $11
    rst $30                                       ; $509c: $f7
    ld [$44bb], sp                                ; $509d: $08 $bb $44
    nop                                           ; $50a0: $00
    push de                                       ; $50a1: $d5
    ld a, [hl+]                                   ; $50a2: $2a
    xor b                                         ; $50a3: $a8
    ld d, a                                       ; $50a4: $57
    call nc, Call_0ca_6a2b                        ; $50a5: $d4 $2b $6a
    sub l                                         ; $50a8: $95
    nop                                           ; $50a9: $00
    or c                                          ; $50aa: $b1
    ld c, [hl]                                    ; $50ab: $4e
    xor e                                         ; $50ac: $ab
    ld d, h                                       ; $50ad: $54
    ld b, c                                       ; $50ae: $41
    cp [hl]                                       ; $50af: $be
    and e                                         ; $50b0: $a3
    ld e, [hl]                                    ; $50b1: $5e
    inc b                                         ; $50b2: $04
    ld d, d                                       ; $50b3: $52
    xor [hl]                                      ; $50b4: $ae
    xor e                                         ; $50b5: $ab
    ld d, [hl]                                    ; $50b6: $56
    ld d, a                                       ; $50b7: $57
    ld a, [hl]                                    ; $50b8: $7e
    inc b                                         ; $50b9: $04
    ld b, $fa                                     ; $50ba: $06 $fa
    ld d, h                                       ; $50bc: $54
    ld e, a                                       ; $50bd: $5f
    ld hl, sp+$07                                 ; $50be: $f8 $07
    rst $30                                       ; $50c0: $f7
    ld [hl], d                                    ; $50c1: $72
    rla                                           ; $50c2: $17
    db $dd                                        ; $50c3: $dd
    adc $05                                       ; $50c4: $ce $05
    add b                                         ; $50c6: $80
    nop                                           ; $50c7: $00
    ld e, e                                       ; $50c8: $5b
    sbc $9e                                       ; $50c9: $de $9e
    inc b                                         ; $50cb: $04
    ld a, [hl]                                    ; $50cc: $7e
    ldh [$03], a                                  ; $50cd: $e0 $03
    inc a                                         ; $50cf: $3c
    ld [$e67c], sp                                ; $50d0: $08 $7c $e6
    inc bc                                        ; $50d3: $03
    db $fd                                        ; $50d4: $fd
    inc b                                         ; $50d5: $04
    and b                                         ; $50d6: $a0
    ret nc                                        ; $50d7: $d0

    dec c                                         ; $50d8: $0d
    ld a, a                                       ; $50d9: $7f
    inc b                                         ; $50da: $04
    ld [$bf40], sp                                ; $50db: $08 $40 $bf
    add b                                         ; $50de: $80
    nop                                           ; $50df: $00
    rlca                                          ; $50e0: $07
    call nz, $099e                                ; $50e1: $c4 $9e $09
    and d                                         ; $50e4: $a2
    inc d                                         ; $50e5: $14
    ld c, $ff                                     ; $50e6: $0e $ff
    dec b                                         ; $50e8: $05
    and [hl]                                      ; $50e9: $a6
    inc b                                         ; $50ea: $04
    cp [hl]                                       ; $50eb: $be
    ld b, b                                       ; $50ec: $40
    nop                                           ; $50ed: $00
    ld d, a                                       ; $50ee: $57
    xor b                                         ; $50ef: $a8
    dec hl                                        ; $50f0: $2b
    call nc, $fa45                                ; $50f1: $d4 $45 $fa
    sub d                                         ; $50f4: $92
    ld l, l                                       ; $50f5: $6d
    dec c                                         ; $50f6: $0d
    ld c, l                                       ; $50f7: $4d
    or [hl]                                       ; $50f8: $b6
    ld d, $eb                                     ; $50f9: $16 $eb
    jr jr_0ca_5103                                ; $50fb: $18 $06

    call c, $7704                                 ; $50fd: $dc $04 $77
    xor d                                         ; $5100: $aa
    inc bc                                        ; $5101: $03
    add d                                         ; $5102: $82

jr_0ca_5103:
    jr nz, jr_0ca_510f                            ; $5103: $20 $0a

    xor l                                         ; $5105: $ad
    ld d, d                                       ; $5106: $52
    ld d, $00                                     ; $5107: $16 $00
    and a                                         ; $5109: $a7
    cp $10                                        ; $510a: $fe $10
    cp a                                          ; $510c: $bf
    adc d                                         ; $510d: $8a
    and d                                         ; $510e: $a2

jr_0ca_510f:
    inc b                                         ; $510f: $04
    ld a, e                                       ; $5110: $7b
    nop                                           ; $5111: $00
    cp [hl]                                       ; $5112: $be
    jr c, @+$08                                   ; $5113: $38 $06

    ld a, a                                       ; $5115: $7f
    sbc [hl]                                      ; $5116: $9e
    inc b                                         ; $5117: $04
    ei                                            ; $5118: $fb
    push de                                       ; $5119: $d5
    jr c, @+$06                                   ; $511a: $38 $04

    sub b                                         ; $511c: $90
    add hl, bc                                    ; $511d: $09
    db $ed                                        ; $511e: $ed
    ld hl, sp+$05                                 ; $511f: $f8 $05
    rst $18                                       ; $5121: $df
    sbc [hl]                                      ; $5122: $9e
    inc b                                         ; $5123: $04
    ld a, a                                       ; $5124: $7f
    or b                                          ; $5125: $b0
    inc b                                         ; $5126: $04
    and l                                         ; $5127: $a5
    ld l, b                                       ; $5128: $68
    inc c                                         ; $5129: $0c
    ld a, l                                       ; $512a: $7d
    ld [$da06], sp                                ; $512b: $08 $06 $da
    daa                                           ; $512e: $27
    sbc [hl]                                      ; $512f: $9e
    inc c                                         ; $5130: $0c
    ld l, d                                       ; $5131: $6a
    and d                                         ; $5132: $a2
    inc b                                         ; $5133: $04
    nop                                           ; $5134: $00
    ld a, d                                       ; $5135: $7a
    dec b                                         ; $5136: $05
    cp [hl]                                       ; $5137: $be
    ld bc, $0080                                  ; $5138: $01 $80 $00
    ld d, a                                       ; $513b: $57
    xor a                                         ; $513c: $af
    db $10                                        ; $513d: $10
    ld [hl-], a                                   ; $513e: $32
    rst $08                                       ; $513f: $cf
    dec bc                                        ; $5140: $0b
    cp b                                          ; $5141: $b8
    inc bc                                        ; $5142: $03
    ld d, $ff                                     ; $5143: $16 $ff
    ld c, [hl]                                    ; $5145: $4e
    cp a                                          ; $5146: $bf
    ld h, $25                                     ; $5147: $26 $25
    rst $18                                       ; $5149: $df
    ld a, [hl]                                    ; $514a: $7e
    inc bc                                        ; $514b: $03
    inc bc                                        ; $514c: $03
    xor $3a                                       ; $514d: $ee $3a
    inc de                                        ; $514f: $13
    ret nz                                        ; $5150: $c0

    add hl, bc                                    ; $5151: $09
    xor h                                         ; $5152: $ac
    nop                                           ; $5153: $00
    ld d, e                                       ; $5154: $53
    ld d, $00                                     ; $5155: $16 $00
    ld e, b                                       ; $5157: $58
    and a                                         ; $5158: $a7
    inc b                                         ; $5159: $04
    ei                                            ; $515a: $fb
    add d                                         ; $515b: $82
    nop                                           ; $515c: $00
    ld a, l                                       ; $515d: $7d
    ld b, b                                       ; $515e: $40
    cp a                                          ; $515f: $bf
    ld [$84f7], sp                                ; $5160: $08 $f7 $84
    ld a, e                                       ; $5163: $7b
    ld b, c                                       ; $5164: $41
    nop                                           ; $5165: $00
    cp [hl]                                       ; $5166: $be
    add b                                         ; $5167: $80
    nop                                           ; $5168: $00
    add e                                         ; $5169: $83
    ld a, [hl]                                    ; $516a: $7e
    ld c, e                                       ; $516b: $4b
    or [hl]                                       ; $516c: $b6
    rlca                                          ; $516d: $07
    cpl                                           ; $516e: $2f
    ld a, [$4002]                                 ; $516f: $fa $02 $40
    ld [de], a                                    ; $5172: $12
    ld de, $0486                                  ; $5173: $11 $86 $04
    sub [hl]                                      ; $5176: $96
    inc e                                         ; $5177: $1c
    ld [hl+], a                                   ; $5178: $22
    dec c                                         ; $5179: $0d
    add sp, $1b                                   ; $517a: $e8 $1b
    inc bc                                        ; $517c: $03
    ld e, [hl]                                    ; $517d: $5e
    ld bc, $03a8                                  ; $517e: $01 $a8 $03
    sub $03                                       ; $5181: $d6 $03
    ld d, b                                       ; $5183: $50
    ld a, [bc]                                    ; $5184: $0a
    jr nc, jr_0ca_5189                            ; $5185: $30 $02

    nop                                           ; $5187: $00
    inc bc                                        ; $5188: $03

jr_0ca_5189:
    jp c, Jump_0ca_4003                           ; $5189: $da $03 $40

    cp a                                          ; $518c: $bf
    db $10                                        ; $518d: $10
    rst $28                                       ; $518e: $ef
    add b                                         ; $518f: $80
    nop                                           ; $5190: $00
    ld a, a                                       ; $5191: $7f
    ld d, b                                       ; $5192: $50
    xor a                                         ; $5193: $af
    and h                                         ; $5194: $a4
    ld e, e                                       ; $5195: $5b
    ld d, d                                       ; $5196: $52
    xor l                                         ; $5197: $ad
    jp hl                                         ; $5198: $e9


    ld b, $16                                     ; $5199: $06 $16
    ld [hl], h                                    ; $519b: $74
    adc e                                         ; $519c: $8b
    ld a, [bc]                                    ; $519d: $0a
    db $fd                                        ; $519e: $fd
    call nz, $0201                                ; $519f: $c4 $01 $02
    ld b, b                                       ; $51a2: $40
    ld d, d                                       ; $51a3: $52
    jr z, @+$01                                   ; $51a4: $28 $ff

    jr z, @-$58                                   ; $51a6: $28 $a6

    rlca                                          ; $51a8: $07
    ld c, $60                                     ; $51a9: $0e $60
    inc b                                         ; $51ab: $04
    adc d                                         ; $51ac: $8a
    rst $38                                       ; $51ad: $ff
    ld b, c                                       ; $51ae: $41
    add d                                         ; $51af: $82
    cp b                                          ; $51b0: $b8
    rlca                                          ; $51b1: $07
    ld [hl+], a                                   ; $51b2: $22
    db $fd                                        ; $51b3: $fd
    ld de, $4afe                                  ; $51b4: $11 $fe $4a
    ld a, h                                       ; $51b7: $7c
    rlca                                          ; $51b8: $07
    ld d, d                                       ; $51b9: $52
    ld h, a                                       ; $51ba: $67
    rst $38                                       ; $51bb: $ff
    ld a, b                                       ; $51bc: $78
    inc e                                         ; $51bd: $1c
    halt                                          ; $51be: $76
    dec e                                         ; $51bf: $1d
    rlca                                          ; $51c0: $07
    ld hl, sp+$78                                 ; $51c1: $f8 $78
    inc l                                         ; $51c3: $2c
    ld d, $1d                                     ; $51c4: $16 $1d
    or d                                          ; $51c6: $b2
    add hl, de                                    ; $51c7: $19
    ld sp, hl                                     ; $51c8: $f9
    ld l, b                                       ; $51c9: $68
    inc c                                         ; $51ca: $0c
    ld b, $1d                                     ; $51cb: $06 $1d
    db $10                                        ; $51cd: $10
    dec bc                                        ; $51ce: $0b
    ld e, b                                       ; $51cf: $58
    inc e                                         ; $51d0: $1c
    and $1d                                       ; $51d1: $e6 $1d
    xor [hl]                                      ; $51d3: $ae
    ld bc, $2ce8                                  ; $51d4: $01 $e8 $2c
    sbc [hl]                                      ; $51d7: $9e
    and $1d                                       ; $51d8: $e6 $1d
    xor e                                         ; $51da: $ab
    ld d, [hl]                                    ; $51db: $56
    add sp, $2c                                   ; $51dc: $e8 $2c
    and $1d                                       ; $51de: $e6 $1d
    ld [hl], b                                    ; $51e0: $70
    ld [$1ce8], sp                                ; $51e1: $08 $e8 $1c
    xor d                                         ; $51e4: $aa
    ld bc, $3475                                  ; $51e5: $01 $75 $34
    db $db                                        ; $51e8: $db
    ld e, d                                       ; $51e9: $5a
    rst $28                                       ; $51ea: $ef
    xor d                                         ; $51eb: $aa
    rst $30                                       ; $51ec: $f7
    add sp, $2c                                   ; $51ed: $e8 $2c
    adc b                                         ; $51ef: $88
    xor h                                         ; $51f0: $ac
    ld a, [hl+]                                   ; $51f1: $2a
    add b                                         ; $51f2: $80
    rst $38                                       ; $51f3: $ff
    ld b, b                                       ; $51f4: $40
    or $07                                        ; $51f5: $f6 $07
    add b                                         ; $51f7: $80
    rst $38                                       ; $51f8: $ff
    ld c, d                                       ; $51f9: $4a
    ld e, [hl]                                    ; $51fa: $5e
    or l                                          ; $51fb: $b5
    ld e, d                                       ; $51fc: $5a
    rrca                                          ; $51fd: $0f
    ld b, d                                       ; $51fe: $42
    inc hl                                        ; $51ff: $23
    ld [bc], a                                    ; $5200: $02
    adc [hl]                                      ; $5201: $8e
    ld c, $ae                                     ; $5202: $0e $ae
    add hl, bc                                    ; $5204: $09
    ld h, [hl]                                    ; $5205: $66
    ld c, $04                                     ; $5206: $0e $04
    ld a, e                                       ; $5208: $7b
    ei                                            ; $5209: $fb
    ld l, b                                       ; $520a: $68
    dec l                                         ; $520b: $2d
    ld h, [hl]                                    ; $520c: $66
    ld e, $d0                                     ; $520d: $1e $d0
    ld a, [bc]                                    ; $520f: $0a
    ld l, b                                       ; $5210: $68
    dec e                                         ; $5211: $1d
    or $c6                                        ; $5212: $f6 $c6
    ld [bc], a                                    ; $5214: $02
    ld [$841c], a                                 ; $5215: $ea $1c $84
    or $09                                        ; $5218: $f6 $09
    add b                                         ; $521a: $80
    nop                                           ; $521b: $00
    xor $03                                       ; $521c: $ee $03
    xor d                                         ; $521e: $aa
    inc bc                                        ; $521f: $03
    inc bc                                        ; $5220: $03
    ld a, [$0302]                                 ; $5221: $fa $02 $03
    ld a, [hl]                                    ; $5224: $7e
    inc bc                                        ; $5225: $03
    or a                                          ; $5226: $b7
    ld [bc], a                                    ; $5227: $02
    ret c                                         ; $5228: $d8

    sub $05                                       ; $5229: $d6 $05
    ld a, d                                       ; $522b: $7a
    nop                                           ; $522c: $00
    add l                                         ; $522d: $85
    dec a                                         ; $522e: $3d
    jp nz, $21de                                  ; $522f: $c2 $de $21

    ld a, a                                       ; $5232: $7f
    add b                                         ; $5233: $80
    cpl                                           ; $5234: $2f
    db $10                                        ; $5235: $10
    ret nc                                        ; $5236: $d0

    rla                                           ; $5237: $17
    add sp, $60                                   ; $5238: $e8 $60
    dec bc                                        ; $523a: $0b
    ld [bc], a                                    ; $523b: $02
    rst $38                                       ; $523c: $ff
    ld [hl+], a                                   ; $523d: $22
    rst $18                                       ; $523e: $df

jr_0ca_523f:
    nop                                           ; $523f: $00
    sub d                                         ; $5240: $92
    ld l, a                                       ; $5241: $6f

jr_0ca_5242:
    ld b, d                                       ; $5242: $42
    cp a                                          ; $5243: $bf
    xor e                                         ; $5244: $ab
    ld d, [hl]                                    ; $5245: $56
    sub $2b                                       ; $5246: $d6 $2b
    jr nc, jr_0ca_5242                            ; $5248: $30 $f8

    rlca                                          ; $524a: $07
    ret z                                         ; $524b: $c8

    rrca                                          ; $524c: $0f
    xor h                                         ; $524d: $ac
    inc a                                         ; $524e: $3c
    adc b                                         ; $524f: $88
    ld [hl], a                                    ; $5250: $77
    add b                                         ; $5251: $80
    nop                                           ; $5252: $00
    ld d, [hl]                                    ; $5253: $56
    rla                                           ; $5254: $17
    xor d                                         ; $5255: $aa
    inc b                                         ; $5256: $04
    daa                                           ; $5257: $27
    jp nz, $0b04                                  ; $5258: $c2 $04 $0b

    ld d, $02                                     ; $525b: $16 $02
    cp [hl]                                       ; $525d: $be
    inc c                                         ; $525e: $0c
    ld c, b                                       ; $525f: $48
    ld de, $e4ff                                  ; $5260: $11 $ff $e4
    ei                                            ; $5263: $fb
    ld a, d                                       ; $5264: $7a
    dec e                                         ; $5265: $1d
    cp d                                          ; $5266: $ba
    rst $38                                       ; $5267: $ff
    sub l                                         ; $5268: $95
    sub $06                                       ; $5269: $d6 $06
    ld sp, $aa57                                  ; $526b: $31 $57 $aa
    ld l, d                                       ; $526e: $6a
    ld a, [bc]                                    ; $526f: $0a
    ld l, d                                       ; $5270: $6a
    dec c                                         ; $5271: $0d
    inc sp                                        ; $5272: $33
    sbc $48                                       ; $5273: $de $48
    sub $06                                       ; $5275: $d6 $06
    call nz, Call_000_025e                        ; $5277: $c4 $5e $02
    ld e, d                                       ; $527a: $5a
    dec h                                         ; $527b: $25
    or [hl]                                       ; $527c: $b6
    ld [bc], a                                    ; $527d: $02
    reti                                          ; $527e: $d9


    ld hl, sp+$07                                 ; $527f: $f8 $07
    add l                                         ; $5281: $85
    nop                                           ; $5282: $00
    ld d, b                                       ; $5283: $50
    jp nz, $25ea                                  ; $5284: $c2 $ea $25

    add sp, $20                                   ; $5287: $e8 $20
    inc d                                         ; $5289: $14
    rst $38                                       ; $528a: $ff
    ld [bc], a                                    ; $528b: $02
    sbc $03                                       ; $528c: $de $03
    adc b                                         ; $528e: $88

jr_0ca_528f:
    ld [$2b1d], a                                 ; $528f: $ea $1d $2b
    ld [bc], a                                    ; $5292: $02
    dec b                                         ; $5293: $05
    ld hl, sp+$07                                 ; $5294: $f8 $07
    ld b, c                                       ; $5296: $41
    cp [hl]                                       ; $5297: $be
    xor b                                         ; $5298: $a8
    ld b, a                                       ; $5299: $47
    ld d, a                                       ; $529a: $57
    ld [$fd1d], a                                 ; $529b: $ea $1d $fd
    ld [bc], a                                    ; $529e: $02
    halt                                          ; $529f: $76
    db $10                                        ; $52a0: $10
    ld [bc], a                                    ; $52a1: $02
    ld [hl], b                                    ; $52a2: $70
    jr jr_0ca_528f                                ; $52a3: $18 $ea

    dec c                                         ; $52a5: $0d
    ld [$5fa3], sp                                ; $52a6: $08 $a3 $5f
    call nc, Call_0ca_702b                        ; $52a9: $d4 $2b $70
    ld [$ffe0], sp                                ; $52ac: $08 $e0 $ff
    ld [hl], b                                    ; $52af: $70
    db $e4                                        ; $52b0: $e4
    adc h                                         ; $52b1: $8c
    ld bc, $2870                                  ; $52b2: $01 $70 $28
    cp h                                          ; $52b5: $bc
    add hl, sp                                    ; $52b6: $39
    ld [de], a                                    ; $52b7: $12
    rst $38                                       ; $52b8: $ff
    ld [hl], b                                    ; $52b9: $70
    ld [$f609], sp                                ; $52ba: $08 $09 $f6
    jr z, jr_0ca_523f                             ; $52bd: $28 $80

    ld a, a                                       ; $52bf: $7f
    ld l, d                                       ; $52c0: $6a
    ld e, $08                                     ; $52c1: $1e $08
    rst $20                                       ; $52c3: $e7
    ld [bc], a                                    ; $52c4: $02
    add b                                         ; $52c5: $80
    nop                                           ; $52c6: $00
    inc de                                        ; $52c7: $13
    inc de                                        ; $52c8: $13
    xor $82                                       ; $52c9: $ee $82
    ld a, [hl]                                    ; $52cb: $7e
    ld l, d                                       ; $52cc: $6a
    ld e, $4a                                     ; $52cd: $1e $4a
    or [hl]                                       ; $52cf: $b6
    xor $0c                                       ; $52d0: $ee $0c
    cp [hl]                                       ; $52d2: $be
    ld c, e                                       ; $52d3: $4b
    add a                                         ; $52d4: $87
    call nz, $020f                                ; $52d5: $c4 $0f $02
    db $fc                                        ; $52d8: $fc
    ld de, $fcee                                  ; $52d9: $11 $ee $fc
    dec bc                                        ; $52dc: $0b
    jp nz, $de2b                                  ; $52dd: $c2 $2b $de

    ld e, l                                       ; $52e0: $5d
    ld c, d                                       ; $52e1: $4a
    db $ed                                        ; $52e2: $ed
    sbc $65                                       ; $52e3: $de $65
    ld d, d                                       ; $52e5: $52
    ld [bc], a                                    ; $52e6: $02
    sbc $5d                                       ; $52e7: $de $5d
    nop                                           ; $52e9: $00
    sbc $65                                       ; $52ea: $de $65
    cp [hl]                                       ; $52ec: $be
    ld c, e                                       ; $52ed: $4b
    inc bc                                        ; $52ee: $03
    sbc $5d                                       ; $52ef: $de $5d
    ld b, b                                       ; $52f1: $40
    cp a                                          ; $52f2: $bf
    sbc $5d                                       ; $52f3: $de $5d
    inc bc                                        ; $52f5: $03
    ld b, b                                       ; $52f6: $40
    ld [bc], a                                    ; $52f7: $02
    ld e, [hl]                                    ; $52f8: $5e
    ld c, [hl]                                    ; $52f9: $4e
    inc h                                         ; $52fa: $24
    cpl                                           ; $52fb: $2f
    ret nc                                        ; $52fc: $d0

    ld e, [hl]                                    ; $52fd: $5e
    ld e, [hl]                                    ; $52fe: $5e
    ld a, [$fe07]                                 ; $52ff: $fa $07 $fe
    ld e, l                                       ; $5302: $5d
    ld d, e                                       ; $5303: $53
    ld [bc], a                                    ; $5304: $02
    and l                                         ; $5305: $a5
    cp $5d                                        ; $5306: $fe $5d
    rst $38                                       ; $5308: $ff
    cp $65                                        ; $5309: $fe $65
    ld b, e                                       ; $530b: $43
    cp [hl]                                       ; $530c: $be
    cp $5d                                        ; $530d: $fe $5d
    cp a                                          ; $530f: $bf
    cp $65                                        ; $5310: $fe $65
    nop                                           ; $5312: $00
    xor e                                         ; $5313: $ab
    ld d, a                                       ; $5314: $57
    add b                                         ; $5315: $80
    ld b, $57                                     ; $5316: $06 $57
    inc b                                         ; $5318: $04
    ld b, h                                       ; $5319: $44
    nop                                           ; $531a: $00
    ld bc, $4020                                  ; $531b: $01 $20 $40
    nop                                           ; $531e: $00
    ld [$000b], sp                                ; $531f: $08 $0b $00
    sub d                                         ; $5322: $92
    nop                                           ; $5323: $00
    ld [bc], a                                    ; $5324: $02
    ld hl, $8120                                  ; $5325: $21 $20 $81
    add b                                         ; $5328: $80
    ld bc, $0200                                  ; $5329: $01 $00 $02
    ld [$00f1], sp                                ; $532c: $08 $f1 $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    pop af                                        ; $5331: $f1
    rst $38                                       ; $5332: $ff
    nop                                           ; $5333: $00
    db $f4                                        ; $5334: $f4
    db $f4                                        ; $5335: $f4
    add sp, $00                                   ; $5336: $e8 $00
    add sp, -$0f                                  ; $5338: $e8 $f1
    pop af                                        ; $533a: $f1
    xor d                                         ; $533b: $aa
    xor d                                         ; $533c: $aa
    ld d, b                                       ; $533d: $50
    ld d, b                                       ; $533e: $50
    and h                                         ; $533f: $a4
    nop                                           ; $5340: $00
    and h                                         ; $5341: $a4
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    rst $38                                       ; $5344: $ff
    nop                                           ; $5345: $00
    ld a, a                                       ; $5346: $7f
    ld a, a                                       ; $5347: $7f
    rst $38                                       ; $5348: $ff
    add b                                         ; $5349: $80
    ld bc, $0048                                  ; $534a: $01 $48 $00
    xor a                                         ; $534d: $af
    cpl                                           ; $534e: $2f
    sbc $5e                                       ; $534f: $de $5e
    cp a                                          ; $5351: $bf
    ccf                                           ; $5352: $3f
    jr nc, @+$01                                  ; $5353: $30 $ff

    ld a, a                                       ; $5355: $7f
    ld [bc], a                                    ; $5356: $02
    ld [$001b], sp                                ; $5357: $08 $1b $00
    nop                                           ; $535a: $00
    db $fd                                        ; $535b: $fd
    db $fc                                        ; $535c: $fc
    ei                                            ; $535d: $fb
    nop                                           ; $535e: $00
    ld a, [$f4f5]                                 ; $535f: $fa $f5 $f4
    xor c                                         ; $5362: $a9
    xor b                                         ; $5363: $a8
    ld d, l                                       ; $5364: $55
    ld d, h                                       ; $5365: $54
    xor c                                         ; $5366: $a9
    nop                                           ; $5367: $00
    xor b                                         ; $5368: $a8
    ld b, c                                       ; $5369: $41
    ld b, b                                       ; $536a: $40
    ld de, $c010                                  ; $536b: $11 $10 $c0
    nop                                           ; $536e: $00
    ld b, b                                       ; $536f: $40
    ld d, d                                       ; $5370: $52
    add b                                         ; $5371: $80
    inc b                                         ; $5372: $04
    jr z, @-$3a                                   ; $5373: $28 $c4

    inc c                                         ; $5375: $0c

jr_0ca_5376:
    nop                                           ; $5376: $00
    ld e, a                                       ; $5377: $5f
    ld b, b                                       ; $5378: $40
    ld [bc], a                                    ; $5379: $02
    jr z, jr_0ca_53da                             ; $537a: $28 $5e

    nop                                           ; $537c: $00
    ld b, b                                       ; $537d: $40
    ld e, l                                       ; $537e: $5d
    ld b, b                                       ; $537f: $40
    ld c, b                                       ; $5380: $48
    ld b, b                                       ; $5381: $40
    rst $38                                       ; $5382: $ff
    nop                                           ; $5383: $00
    cp a                                          ; $5384: $bf
    add b                                         ; $5385: $80
    ld d, [hl]                                    ; $5386: $56
    nop                                           ; $5387: $00
    cp a                                          ; $5388: $bf
    nop                                           ; $5389: $00
    rra                                           ; $538a: $1f
    nop                                           ; $538b: $00
    xor a                                         ; $538c: $af
    nop                                           ; $538d: $00
    rst $30                                       ; $538e: $f7
    jr nc, jr_0ca_5391                            ; $538f: $30 $00

jr_0ca_5391:
    ld [c], a                                     ; $5391: $e2
    ld h, d                                       ; $5392: $62

jr_0ca_5393:
    nop                                           ; $5393: $00
    ld [bc], a                                    ; $5394: $02
    adc b                                         ; $5395: $88
    cp $01                                        ; $5396: $fe $01
    db $fd                                        ; $5398: $fd
    inc bc                                        ; $5399: $03
    ld b, b                                       ; $539a: $40
    cp $02                                        ; $539b: $fe $02
    db $10                                        ; $539d: $10
    rst $38                                       ; $539e: $ff
    rlca                                          ; $539f: $07
    db $fc                                        ; $53a0: $fc
    ld a, a                                       ; $53a1: $7f
    ldh a, [rIE]                                  ; $53a2: $f0 $ff

jr_0ca_53a4:
    ld b, c                                       ; $53a4: $41
    add b                                         ; $53a5: $80
    daa                                           ; $53a6: $27
    jr nc, jr_0ca_5393                            ; $53a7: $30 $ea

    ld a, [c]                                     ; $53a9: $f2
    ld a, [hl-]                                   ; $53aa: $3a
    ld a, [$0202]                                 ; $53ab: $fa $02 $02
    ld b, b                                       ; $53ae: $40
    and h                                         ; $53af: $a4
    ld [hl], b                                    ; $53b0: $70
    jr c, jr_0ca_53fb                             ; $53b1: $38 $48

    ld a, b                                       ; $53b3: $78
    nop                                           ; $53b4: $00
    ld d, d                                       ; $53b5: $52
    add b                                         ; $53b6: $80
    xor [hl]                                      ; $53b7: $ae
    jr c, jr_0ca_53a4                             ; $53b8: $38 $ea

    ld [$d500], a                                 ; $53ba: $ea $00 $d5
    push de                                       ; $53bd: $d5
    ld [$bfea], a                                 ; $53be: $ea $ea $bf
    cp a                                          ; $53c1: $bf
    ld a, a                                       ; $53c2: $7f
    ld a, a                                       ; $53c3: $7f
    ld b, $ef                                     ; $53c4: $06 $ef
    rst $28                                       ; $53c6: $ef
    ld e, a                                       ; $53c7: $5f
    ld e, a                                       ; $53c8: $5f
    rst $38                                       ; $53c9: $ff
    xor a                                         ; $53ca: $af
    db $10                                        ; $53cb: $10
    pop bc                                        ; $53cc: $c1
    nop                                           ; $53cd: $00
    inc b                                         ; $53ce: $04
    nop                                           ; $53cf: $00
    ld de, $a211                                  ; $53d0: $11 $11 $a2
    and d                                         ; $53d3: $a2
    ld b, c                                       ; $53d4: $41
    ld b, c                                       ; $53d5: $41
    xor d                                         ; $53d6: $aa
    xor d                                         ; $53d7: $aa
    nop                                           ; $53d8: $00
    rst $18                                       ; $53d9: $df

jr_0ca_53da:
    rst $18                                       ; $53da: $df
    rst $28                                       ; $53db: $ef
    rst $28                                       ; $53dc: $ef
    rst $38                                       ; $53dd: $ff
    rst $38                                       ; $53de: $ff
    add b                                         ; $53df: $80
    ld b, h                                       ; $53e0: $44
    nop                                           ; $53e1: $00
    add d                                         ; $53e2: $82
    ld [bc], a                                    ; $53e3: $02
    add h                                         ; $53e4: $84
    inc b                                         ; $53e5: $04
    adc c                                         ; $53e6: $89
    add hl, bc                                    ; $53e7: $09
    add d                                         ; $53e8: $82
    ld [bc], a                                    ; $53e9: $02
    nop                                           ; $53ea: $00
    add l                                         ; $53eb: $85
    dec b                                         ; $53ec: $05
    xor e                                         ; $53ed: $ab
    dec hl                                        ; $53ee: $2b
    push bc                                       ; $53ef: $c5
    ld b, l                                       ; $53f0: $45
    add c                                         ; $53f1: $81
    ld l, b                                       ; $53f2: $68
    jr jr_0ca_5376                                ; $53f3: $18 $81

    ret nc                                        ; $53f5: $d0

    ld bc, $1112                                  ; $53f6: $01 $12 $11
    db $10                                        ; $53f9: $10
    add hl, de                                    ; $53fa: $19

jr_0ca_53fb:
    dec h                                         ; $53fb: $25
    nop                                           ; $53fc: $00
    ld e, d                                       ; $53fd: $5a
    ld [bc], a                                    ; $53fe: $02
    nop                                           ; $53ff: $00

Call_0ca_5400:
    or [hl]                                       ; $5400: $b6
    nop                                           ; $5401: $00
    db $fd                                        ; $5402: $fd
    nop                                           ; $5403: $00
    cp e                                          ; $5404: $bb
    inc c                                         ; $5405: $0c
    ld bc, $00ae                                  ; $5406: $01 $ae $00
    ld b, c                                       ; $5409: $41
    ld a, a                                       ; $540a: $7f
    add b                                         ; $540b: $80
    ld sp, hl                                     ; $540c: $f9
    or $e8                                        ; $540d: $f6 $e8
    db $fd                                        ; $540f: $fd
    pop de                                        ; $5410: $d1
    inc b                                         ; $5411: $04
    ei                                            ; $5412: $fb
    xor d                                         ; $5413: $aa
    cp [hl]                                       ; $5414: $be
    ld d, b                                       ; $5415: $50
    ld [hl], b                                    ; $5416: $70
    jr nz, @+$1b                                  ; $5417: $20 $19

    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    inc c                                         ; $541b: $0c
    cp $fe                                        ; $541c: $fe $fe
    db $fd                                        ; $541e: $fd
    db $fd                                        ; $541f: $fd
    ld [hl], b                                    ; $5420: $70
    jr z, jr_0ca_5453                             ; $5421: $28 $30

    ld d, c                                       ; $5423: $51
    rra                                           ; $5424: $1f
    rra                                           ; $5425: $1f
    sub b                                         ; $5426: $90
    jr nc, jr_0ca_5482                            ; $5427: $30 $59

    ld a, b                                       ; $5429: $78
    ld a, b                                       ; $542a: $78
    ld b, b                                       ; $542b: $40
    ld bc, $c8b5                                  ; $542c: $01 $b5 $c8
    rst $38                                       ; $542f: $ff
    ld a, [$f500]                                 ; $5430: $fa $00 $f5
    ld hl, sp-$57                                 ; $5433: $f8 $a9
    and h                                         ; $5435: $a4
    ld d, l                                       ; $5436: $55
    ld c, h                                       ; $5437: $4c
    xor c                                         ; $5438: $a9
    sbc b                                         ; $5439: $98
    nop                                           ; $543a: $00
    ld d, c                                       ; $543b: $51
    ld h, d                                       ; $543c: $62
    ld h, c                                       ; $543d: $61
    sub h                                         ; $543e: $94
    ret nz                                        ; $543f: $c0

    nop                                           ; $5440: $00
    ld d, c                                       ; $5441: $51
    add b                                         ; $5442: $80
    ld bc, $00e8                                  ; $5443: $01 $e8 $00
    ld d, b                                       ; $5446: $50
    add b                                         ; $5447: $80
    ld sp, hl                                     ; $5448: $f9
    nop                                           ; $5449: $00
    ld l, [hl]                                    ; $544a: $6e
    push hl                                       ; $544b: $e5
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    ld a, e                                       ; $544e: $7b
    add h                                         ; $544f: $84
    ld e, l                                       ; $5450: $5d
    ld b, b                                       ; $5451: $40
    ld e, [hl]                                    ; $5452: $5e

jr_0ca_5453:
    ld d, b                                       ; $5453: $50
    ld c, a                                       ; $5454: $4f
    ld e, b                                       ; $5455: $58
    nop                                           ; $5456: $00
    ld e, a                                       ; $5457: $5f
    ld e, [hl]                                    ; $5458: $5e
    ld e, a                                       ; $5459: $5f
    ld b, b                                       ; $545a: $40
    ld b, b                                       ; $545b: $40
    ld b, b                                       ; $545c: $40
    ld a, a                                       ; $545d: $7f
    ld a, a                                       ; $545e: $7f
    ld e, a                                       ; $545f: $5f
    nop                                           ; $5460: $00
    inc h                                         ; $5461: $24
    ld bc, $2caf                                  ; $5462: $01 $af $2c
    ld bc, $0934                                  ; $5465: $01 $34 $09
    adc [hl]                                      ; $5468: $8e
    ld bc, $0005                                  ; $5469: $01 $05 $00
    jr nc, jr_0ca_54a7                            ; $546c: $30 $39

    sub $10                                       ; $546e: $d6 $10
    jr jr_0ca_5494                                ; $5470: $18 $22

    ld bc, $2c03                                  ; $5472: $01 $03 $2c
    ld bc, $2001                                  ; $5475: $01 $01 $20
    jr z, jr_0ca_54cb                             ; $5478: $28 $51

    add hl, bc                                    ; $547a: $09
    add b                                         ; $547b: $80
    ld c, $ff                                     ; $547c: $0e $ff
    ldh [rIE], a                                  ; $547e: $e0 $ff
    ld [hl], b                                    ; $5480: $70
    inc l                                         ; $5481: $2c

jr_0ca_5482:
    ld [$0035], sp                                ; $5482: $08 $35 $00
    inc l                                         ; $5485: $2c
    ld b, c                                       ; $5486: $41
    ld [bc], a                                    ; $5487: $02
    nop                                           ; $5488: $00
    cp $fe                                        ; $5489: $fe $fe
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    push hl                                       ; $548d: $e5
    nop                                           ; $548e: $00
    ld e, d                                       ; $548f: $5a
    add b                                         ; $5490: $80
    nop                                           ; $5491: $00
    or $00                                        ; $5492: $f6 $00

jr_0ca_5494:
    ld a, l                                       ; $5494: $7d
    add b                                         ; $5495: $80
    ei                                            ; $5496: $fb
    nop                                           ; $5497: $00
    ld a, a                                       ; $5498: $7f
    add b                                         ; $5499: $80
    ret nz                                        ; $549a: $c0

    ret nc                                        ; $549b: $d0

    ld [$4930], sp                                ; $549c: $08 $30 $49
    ld h, l                                       ; $549f: $65
    sub l                                         ; $54a0: $95
    sub d                                         ; $54a1: $92
    ld l, b                                       ; $54a2: $68
    db $eb                                        ; $54a3: $eb
    cp a                                          ; $54a4: $bf
    ld [bc], a                                    ; $54a5: $02
    ld a, a                                       ; $54a6: $7f

jr_0ca_54a7:
    ld e, a                                       ; $54a7: $5f
    xor a                                         ; $54a8: $af
    rst $08                                       ; $54a9: $cf
    rst $18                                       ; $54aa: $df
    ccf                                           ; $54ab: $3f
    jr nc, jr_0ca_54b7                            ; $54ac: $30 $09

    ld h, l                                       ; $54ae: $65
    ld [$fb9b], sp                                ; $54af: $08 $9b $fb
    db $fc                                        ; $54b2: $fc
    inc b                                         ; $54b3: $04
    jr nc, jr_0ca_54bf                            ; $54b4: $30 $09

    and [hl]                                      ; $54b6: $a6

jr_0ca_54b7:
    ld b, c                                       ; $54b7: $41
    ld l, d                                       ; $54b8: $6a
    ld [bc], a                                    ; $54b9: $02
    xor d                                         ; $54ba: $aa
    db $fd                                        ; $54bb: $fd
    rst $18                                       ; $54bc: $df
    di                                            ; $54bd: $f3
    db $eb                                        ; $54be: $eb

jr_0ca_54bf:
    db $e4                                        ; $54bf: $e4
    jr nc, @+$03                                  ; $54c0: $30 $01

    ld bc, $3080                                  ; $54c2: $01 $80 $30
    ld e, c                                       ; $54c5: $59
    push af                                       ; $54c6: $f5
    ld a, [bc]                                    ; $54c7: $0a
    rst $28                                       ; $54c8: $ef
    db $10                                        ; $54c9: $10
    ld d, [hl]                                    ; $54ca: $56

jr_0ca_54cb:
    xor c                                         ; $54cb: $a9
    xor l                                         ; $54cc: $ad
    nop                                           ; $54cd: $00
    ld d, d                                       ; $54ce: $52
    ld c, b                                       ; $54cf: $48
    or a                                          ; $54d0: $b7
    ld [bc], a                                    ; $54d1: $02
    rst $38                                       ; $54d2: $ff
    ld b, l                                       ; $54d3: $45
    rst $38                                       ; $54d4: $ff
    xor e                                         ; $54d5: $ab
    nop                                           ; $54d6: $00
    rst $38                                       ; $54d7: $ff
    ld d, l                                       ; $54d8: $55
    rst $38                                       ; $54d9: $ff
    ld d, l                                       ; $54da: $55
    xor d                                         ; $54db: $aa
    add d                                         ; $54dc: $82
    ld a, l                                       ; $54dd: $7d
    add hl, bc                                    ; $54de: $09
    nop                                           ; $54df: $00
    cp $11                                        ; $54e0: $fe $11
    cp $22                                        ; $54e2: $fe $22
    db $fd                                        ; $54e4: $fd
    ld d, h                                       ; $54e5: $54
    rst $38                                       ; $54e6: $ff
    ld [$1080], a                                 ; $54e7: $ea $80 $10
    nop                                           ; $54ea: $00
    ld a, a                                       ; $54eb: $7f
    add b                                         ; $54ec: $80
    sbc $21                                       ; $54ed: $de $21
    xor l                                         ; $54ef: $ad
    ld d, d                                       ; $54f0: $52
    ld c, $02                                     ; $54f1: $0e $02
    pop af                                        ; $54f3: $f1
    dec h                                         ; $54f4: $25
    ld a, [$ff50]                                 ; $54f5: $fa $50 $ff
    cp d                                          ; $54f8: $ba
    jr nz, jr_0ca_54fb                            ; $54f9: $20 $00

jr_0ca_54fb:
    rst $10                                       ; $54fb: $d7
    nop                                           ; $54fc: $00
    jr z, @-$15                                   ; $54fd: $28 $e9

    ld d, $d2                                     ; $54ff: $16 $d2
    dec l                                         ; $5501: $2d
    add b                                         ; $5502: $80
    ld a, a                                       ; $5503: $7f
    jr nz, jr_0ca_556a                            ; $5504: $20 $64

    rst $38                                       ; $5506: $ff
    jr nz, @+$1a                                  ; $5507: $20 $18

    ld b, b                                       ; $5509: $40
    ld e, b                                       ; $550a: $58
    scf                                           ; $550b: $37
    ret z                                         ; $550c: $c8

    jr nc, jr_0ca_5567                            ; $550d: $30 $58

    ld [hl], l                                    ; $550f: $75
    adc d                                         ; $5510: $8a
    add b                                         ; $5511: $80

jr_0ca_5512:
    ld h, b                                       ; $5512: $60
    ld e, b                                       ; $5513: $58
    db $e3                                        ; $5514: $e3
    db $fc                                        ; $5515: $fc
    nop                                           ; $5516: $00
    rst $38                                       ; $5517: $ff
    inc d                                         ; $5518: $14
    db $eb                                        ; $5519: $eb
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    rst $38                                       ; $551c: $ff
    push hl                                       ; $551d: $e5
    db $fc                                        ; $551e: $fc
    ld bc, $2886                                  ; $551f: $01 $86 $28
    ld [$0000], sp                                ; $5522: $08 $00 $00
    ld c, c                                       ; $5525: $49
    db $eb                                        ; $5526: $eb
    dec d                                         ; $5527: $15
    ld a, [hl]                                    ; $5528: $7e
    rst $38                                       ; $5529: $ff
    xor d                                         ; $552a: $aa
    add h                                         ; $552b: $84
    ld [hl], l                                    ; $552c: $75
    nop                                           ; $552d: $00
    ld [hl+], a                                   ; $552e: $22
    ld d, h                                       ; $552f: $54
    ld bc, $7fb2                                  ; $5530: $01 $b2 $7f
    ld [$4020], sp                                ; $5533: $08 $20 $40
    nop                                           ; $5536: $00
    ld de, $02ff                                  ; $5537: $11 $ff $02
    ccf                                           ; $553a: $3f
    ret nz                                        ; $553b: $c0

    and d                                         ; $553c: $a2
    ld c, b                                       ; $553d: $48
    ld d, l                                       ; $553e: $55
    nop                                           ; $553f: $00
    ld [bc], a                                    ; $5540: $02
    ld [hl], c                                    ; $5541: $71
    inc h                                         ; $5542: $24
    dec d                                         ; $5543: $15
    ret nz                                        ; $5544: $c0

    ld a, [de]                                    ; $5545: $1a
    ld b, a                                       ; $5546: $47
    adc d                                         ; $5547: $8a
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    ld a, [c]                                     ; $554a: $f2
    dec e                                         ; $554b: $1d
    pop bc                                        ; $554c: $c1
    ld a, [hl]                                    ; $554d: $7e
    db $eb                                        ; $554e: $eb
    rra                                           ; $554f: $1f
    ld d, l                                       ; $5550: $55
    nop                                           ; $5551: $00
    ld [$9145], sp                                ; $5552: $08 $45 $91
    ld d, b                                       ; $5555: $50
    inc b                                         ; $5556: $04
    pop af                                        ; $5557: $f1
    cp $81                                        ; $5558: $fe $81
    nop                                           ; $555a: $00
    inc d                                         ; $555b: $14
    nop                                           ; $555c: $00
    rst $38                                       ; $555d: $ff
    add hl, bc                                    ; $555e: $09
    or $84                                        ; $555f: $f6 $84
    ei                                            ; $5561: $fb
    push de                                       ; $5562: $d5
    nop                                           ; $5563: $00
    ld a, [hl]                                    ; $5564: $7e
    ld d, b                                       ; $5565: $50
    nop                                           ; $5566: $00

jr_0ca_5567:
    ld [de], a                                    ; $5567: $12
    jr z, jr_0ca_5512                             ; $5568: $28 $a8

jr_0ca_556a:
    nop                                           ; $556a: $00
    xor [hl]                                      ; $556b: $ae
    nop                                           ; $556c: $00
    ld a, a                                       ; $556d: $7f
    rlca                                          ; $556e: $07
    rst $38                                       ; $556f: $ff
    ld hl, $01ff                                  ; $5570: $21 $ff $01
    cp $14                                        ; $5573: $fe $14
    nop                                           ; $5575: $00
    ei                                            ; $5576: $fb
    cp a                                          ; $5577: $bf
    rlca                                          ; $5578: $07
    sub h                                         ; $5579: $94
    ld b, b                                       ; $557a: $40
    adc c                                         ; $557b: $89
    ld bc, $0032                                  ; $557c: $01 $32 $00
    ret nz                                        ; $557f: $c0

    db $e3                                        ; $5580: $e3
    db $fc                                        ; $5581: $fc
    ld d, l                                       ; $5582: $55
    xor d                                         ; $5583: $aa
    cp d                                          ; $5584: $ba
    ld d, l                                       ; $5585: $55
    xor d                                         ; $5586: $aa
    nop                                           ; $5587: $00
    ld d, c                                       ; $5588: $51
    pop hl                                        ; $5589: $e1
    cp $7c                                        ; $558a: $fe $7c
    rra                                           ; $558c: $1f
    ld de, $a440                                  ; $558d: $11 $40 $a4
    ld [bc], a                                    ; $5590: $02
    ld bc, $4415                                  ; $5591: $01 $15 $44
    halt                                          ; $5594: $76
    rst $38                                       ; $5595: $ff
    xor e                                         ; $5596: $ab
    stop                                          ; $5597: $10 $00
    ld d, [hl]                                    ; $5599: $56
    nop                                           ; $559a: $00
    xor e                                         ; $559b: $ab
    adc h                                         ; $559c: $8c
    rst $30                                       ; $559d: $f7
    xor [hl]                                      ; $559e: $ae
    ld a, a                                       ; $559f: $7f
    ld b, $01                                     ; $55a0: $06 $01
    ld c, b                                       ; $55a2: $48
    nop                                           ; $55a3: $00
    ld [de], a                                    ; $55a4: $12
    db $10                                        ; $55a5: $10
    jp nz, $ff70                                  ; $55a6: $c2 $70 $ff

    jp $497d                                      ; $55a9: $c3 $7d $49


    nop                                           ; $55ac: $00
    rst $30                                       ; $55ad: $f7
    inc bc                                        ; $55ae: $03
    cp $12                                        ; $55af: $fe $12
    db $ed                                        ; $55b1: $ed
    and b                                         ; $55b2: $a0
    rst $38                                       ; $55b3: $ff
    jr nz, jr_0ca_55b6                            ; $55b4: $20 $00

jr_0ca_55b6:
    ld d, h                                       ; $55b6: $54
    dec d                                         ; $55b7: $15
    nop                                           ; $55b8: $00
    ld h, b                                       ; $55b9: $60
    add b                                         ; $55ba: $80
    sbc l                                         ; $55bb: $9d
    ld a, a                                       ; $55bc: $7f
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    rst $38                                       ; $55bf: $ff
    ld d, b                                       ; $55c0: $50
    xor [hl]                                      ; $55c1: $ae
    ld b, l                                       ; $55c2: $45
    db $fc                                        ; $55c3: $fc
    ld [$01f8], sp                                ; $55c4: $08 $f8 $01
    nop                                           ; $55c7: $00
    inc c                                         ; $55c8: $0c
    ld b, d                                       ; $55c9: $42
    ld de, $00aa                                  ; $55ca: $11 $aa $00
    adc [hl]                                      ; $55cd: $8e
    ldh a, [rLCDC]                                ; $55ce: $f0 $40
    nop                                           ; $55d0: $00
    ld b, l                                       ; $55d1: $45
    xor d                                         ; $55d2: $aa
    nop                                           ; $55d3: $00
    ld d, a                                       ; $55d4: $57
    ld [bc], a                                    ; $55d5: $02
    and b                                         ; $55d6: $a0
    ld [$001f], sp                                ; $55d7: $08 $1f $00
    rlca                                          ; $55da: $07
    push de                                       ; $55db: $d5

jr_0ca_55dc:
    jr jr_0ca_55e8                                ; $55dc: $18 $0a

    dec [hl]                                      ; $55de: $35
    cp [hl]                                       ; $55df: $be
    call nc, Call_000_003f                        ; $55e0: $d4 $3f $00
    rlca                                          ; $55e3: $07
    adc b                                         ; $55e4: $88
    jr nz, jr_0ca_563c                            ; $55e5: $20 $55

    nop                                           ; $55e7: $00

jr_0ca_55e8:
    ld [bc], a                                    ; $55e8: $02
    inc d                                         ; $55e9: $14
    add d                                         ; $55ea: $82
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    dec h                                         ; $55ed: $25
    db $10                                        ; $55ee: $10
    jp z, $e200                                   ; $55ef: $ca $00 $e2

    db $fd                                        ; $55f2: $fd
    cp a                                          ; $55f3: $bf
    nop                                           ; $55f4: $00
    rra                                           ; $55f5: $1f
    xor e                                         ; $55f6: $ab

jr_0ca_55f7:
    inc d                                         ; $55f7: $14
    ld d, l                                       ; $55f8: $55
    add c                                         ; $55f9: $81
    cp d                                          ; $55fa: $ba
    ld d, $92                                     ; $55fb: $16 $92
    nop                                           ; $55fd: $00
    ld b, d                                       ; $55fe: $42
    nop                                           ; $55ff: $00
    inc d                                         ; $5600: $14
    ld c, e                                       ; $5601: $4b
    add b                                         ; $5602: $80
    jr nz, @+$43                                  ; $5603: $20 $41

    add h                                         ; $5605: $84
    nop                                           ; $5606: $00
    ldh a, [$ce]                                  ; $5607: $f0 $ce
    add c                                         ; $5609: $81
    dec b                                         ; $560a: $05
    ld d, b                                       ; $560b: $50
    ld [$4202], sp                                ; $560c: $08 $02 $42
    nop                                           ; $560f: $00
    add e                                         ; $5610: $83
    dec l                                         ; $5611: $2d
    ld b, [hl]                                    ; $5612: $46
    ld a, [de]                                    ; $5613: $1a
    dec c                                         ; $5614: $0d
    ld d, a                                       ; $5615: $57
    ld a, [de]                                    ; $5616: $1a
    dec hl                                        ; $5617: $2b
    nop                                           ; $5618: $00
    ld sp, $ffb0                                  ; $5619: $31 $b0 $ff
    ld a, d                                       ; $561c: $7a
    rlca                                          ; $561d: $07
    adc [hl]                                      ; $561e: $8e
    jr nz, jr_0ca_55dc                            ; $561f: $20 $bb

    nop                                           ; $5621: $00
    ld e, a                                       ; $5622: $5f
    ld d, l                                       ; $5623: $55
    xor d                                         ; $5624: $aa

jr_0ca_5625:
    xor $55                                       ; $5625: $ee $55
    ld [hl], l                                    ; $5627: $75
    ld [hl+], a                                   ; $5628: $22
    ld [$5100], a                                 ; $5629: $ea $00 $51
    xor d                                         ; $562c: $aa
    ld b, l                                       ; $562d: $45
    pop hl                                        ; $562e: $e1
    cp $df                                        ; $562f: $fe $df
    ccf                                           ; $5631: $3f
    adc l                                         ; $5632: $8d
    jr nz, jr_0ca_5625                            ; $5633: $20 $f0

    ld a, [hl]                                    ; $5635: $7e
    sub b                                         ; $5636: $90
    nop                                           ; $5637: $00
    ld e, l                                       ; $5638: $5d
    jr z, @-$53                                   ; $5639: $28 $ab

    ld b, l                                       ; $563b: $45

jr_0ca_563c:
    xor a                                         ; $563c: $af
    nop                                           ; $563d: $00
    dec d                                         ; $563e: $15
    ld e, l                                       ; $563f: $5d
    xor b                                         ; $5640: $a8
    ld a, [de]                                    ; $5641: $1a
    ldh a, [rLY]                                  ; $5642: $f0 $44
    ld [bc], a                                    ; $5644: $02
    jr nc, jr_0ca_5647                            ; $5645: $30 $00

jr_0ca_5647:
    ret nz                                        ; $5647: $c0

    ret c                                         ; $5648: $d8

    rst $38                                       ; $5649: $ff
    jp nc, $8a87                                  ; $564a: $d2 $87 $8a

    jr nz, jr_0ca_55f7                            ; $564d: $20 $a8

    nop                                           ; $564f: $00
    ld [bc], a                                    ; $5650: $02
    dec b                                         ; $5651: $05
    ld d, b                                       ; $5652: $50
    xor b                                         ; $5653: $a8
    ld [bc], a                                    ; $5654: $02
    ld d, [hl]                                    ; $5655: $56
    ld b, h                                       ; $5656: $44
    xor h                                         ; $5657: $ac
    nop                                           ; $5658: $00
    ld [$fef1], sp                                ; $5659: $08 $f1 $fe
    sub $29                                       ; $565c: $d6 $29
    ld l, a                                       ; $565e: $6f
    sub b                                         ; $565f: $90
    rst $30                                       ; $5660: $f7
    nop                                           ; $5661: $00
    ld a, [bc]                                    ; $5662: $0a
    ld l, e                                       ; $5663: $6b
    sub h                                         ; $5664: $94
    db $dd                                        ; $5665: $dd
    and d                                         ; $5666: $a2
    and d                                         ; $5667: $a2
    ld [$0014], sp                                ; $5668: $08 $14 $00
    ld b, b                                       ; $566b: $40
    adc b                                         ; $566c: $88
    ld bc, $7f9c                                  ; $566d: $01 $9c $7f
    xor $11                                       ; $5670: $ee $11
    ld e, e                                       ; $5672: $5b
    nop                                           ; $5673: $00
    and h                                         ; $5674: $a4
    db $ed                                        ; $5675: $ed
    ld [de], a                                    ; $5676: $12

jr_0ca_5677:
    rst $30                                       ; $5677: $f7
    ld [$1408], sp                                ; $5678: $08 $08 $14
    sub b                                         ; $567b: $90
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    jr nc, jr_0ca_56ca                            ; $567e: $30 $4a

    jr nc, @-$3d                                  ; $5680: $30 $c1

    ldh a, [rIE]                                  ; $5682: $f0 $ff
    cp e                                          ; $5684: $bb
    nop                                           ; $5685: $00
    ld d, a                                       ; $5686: $57
    rst $38                                       ; $5687: $ff
    jr z, jr_0ca_5677                             ; $5688: $28 $ed

    ld d, d                                       ; $568a: $52
    add a                                         ; $568b: $87
    inc b                                         ; $568c: $04
    ld e, $00                                     ; $568d: $1e $00
    xor c                                         ; $568f: $a9
    dec c                                         ; $5690: $0d
    ld d, d                                       ; $5691: $52
    ld l, l                                       ; $5692: $6d
    ld d, d                                       ; $5693: $52
    cp a                                          ; $5694: $bf
    pop bc                                        ; $5695: $c1
    db $e3                                        ; $5696: $e3
    nop                                           ; $5697: $00
    db $fc                                        ; $5698: $fc
    ei                                            ; $5699: $fb
    rra                                           ; $569a: $1f
    ld l, h                                       ; $569b: $6c
    or a                                          ; $569c: $b7
    sub $7f                                       ; $569d: $d6 $7f
    xor l                                         ; $569f: $ad
    nop                                           ; $56a0: $00
    ld d, e                                       ; $56a1: $53
    ld d, a                                       ; $56a2: $57
    xor b                                         ; $56a3: $a8
    rst $28                                       ; $56a4: $ef
    db $10                                        ; $56a5: $10
    cp [hl]                                       ; $56a6: $be
    ld b, c                                       ; $56a7: $41
    ei                                            ; $56a8: $fb
    nop                                           ; $56a9: $00
    inc b                                         ; $56aa: $04
    adc l                                         ; $56ab: $8d
    ld a, [c]                                     ; $56ac: $f2
    ld e, [hl]                                    ; $56ad: $5e
    rst $38                                       ; $56ae: $ff
    dec d                                         ; $56af: $15
    ret nz                                        ; $56b0: $c0

    ld a, b                                       ; $56b1: $78
    nop                                           ; $56b2: $00
    rst $38                                       ; $56b3: $ff
    jp c, $da27                                   ; $56b4: $da $27 $da

    dec h                                         ; $56b7: $25
    rst $30                                       ; $56b8: $f7
    ld a, [bc]                                    ; $56b9: $0a
    ld a, a                                       ; $56ba: $7f
    ld a, [bc]                                    ; $56bb: $0a
    sub b                                         ; $56bc: $90
    push af                                       ; $56bd: $f5
    ld a, [bc]                                    ; $56be: $0a
    ccf                                           ; $56bf: $3f
    jr nz, jr_0ca_56c3                            ; $56c0: $20 $01

    sbc [hl]                                      ; $56c2: $9e

jr_0ca_56c3:
    db $ec                                        ; $56c3: $ec
    nop                                           ; $56c4: $00
    ld de, $fe10                                  ; $56c5: $11 $10 $fe
    add b                                         ; $56c8: $80
    ld a, a                                       ; $56c9: $7f

jr_0ca_56ca:
    add [hl]                                      ; $56ca: $86
    add hl, bc                                    ; $56cb: $09
    ld a, [bc]                                    ; $56cc: $0a
    or $eb                                        ; $56cd: $f6 $eb
    dec d                                         ; $56cf: $15
    nop                                           ; $56d0: $00
    adc a                                         ; $56d1: $8f
    ld a, [c]                                     ; $56d2: $f2
    ld a, [hl]                                    ; $56d3: $7e
    rst $38                                       ; $56d4: $ff
    ld l, $e1                                     ; $56d5: $2e $e1
    ld e, l                                       ; $56d7: $5d
    ret z                                         ; $56d8: $c8

jr_0ca_56d9:
    add b                                         ; $56d9: $80
    add [hl]                                      ; $56da: $86
    add hl, bc                                    ; $56db: $09
    xor d                                         ; $56dc: $aa
    db $10                                        ; $56dd: $10
    rst $38                                       ; $56de: $ff
    ld [bc], a                                    ; $56df: $02
    and $19                                       ; $56e0: $e6 $19
    ccf                                           ; $56e2: $3f
    inc b                                         ; $56e3: $04
    ret nz                                        ; $56e4: $c0

    cp b                                          ; $56e5: $b8
    rst $38                                       ; $56e6: $ff
    ld e, d                                       ; $56e7: $5a
    rlca                                          ; $56e8: $07
    add [hl]                                      ; $56e9: $86
    add hl, bc                                    ; $56ea: $09
    xor d                                         ; $56eb: $aa
    ld d, b                                       ; $56ec: $50
    nop                                           ; $56ed: $00
    ld a, [c]                                     ; $56ee: $f2
    dec e                                         ; $56ef: $1d
    add sp, $37                                   ; $56f0: $e8 $37
    pop bc                                        ; $56f2: $c1
    ld a, [hl]                                    ; $56f3: $7e
    add h                                         ; $56f4: $84
    rst $38                                       ; $56f5: $ff
    jr z, jr_0ca_56d9                             ; $56f6: $28 $e1

    rst $38                                       ; $56f8: $ff
    add [hl]                                      ; $56f9: $86
    add hl, bc                                    ; $56fa: $09
    xor d                                         ; $56fb: $aa
    ld d, e                                       ; $56fc: $53
    inc b                                         ; $56fd: $04
    ld a, [hl+]                                   ; $56fe: $2a
    db $fd                                        ; $56ff: $fd
    add hl, bc                                    ; $5700: $09
    inc b                                         ; $5701: $04
    or $30                                        ; $5702: $f6 $30
    rst $28                                       ; $5704: $ef
    ld b, d                                       ; $5705: $42
    cp a                                          ; $5706: $bf
    add [hl]                                      ; $5707: $86
    add hl, bc                                    ; $5708: $09
    adc a                                         ; $5709: $8f
    add c                                         ; $570a: $81
    nop                                           ; $570b: $00
    rlca                                          ; $570c: $07
    rst $38                                       ; $570d: $ff
    add e                                         ; $570e: $83
    cp $21                                        ; $570f: $fe $21
    rst $38                                       ; $5711: $ff
    db $10                                        ; $5712: $10
    rst $28                                       ; $5713: $ef
    jr z, jr_0ca_575e                             ; $5714: $28 $48

    cp a                                          ; $5716: $bf
    add [hl]                                      ; $5717: $86
    add hl, bc                                    ; $5718: $09
    xor c                                         ; $5719: $a9
    ret c                                         ; $571a: $d8

    ld bc, $1f6e                                  ; $571b: $01 $6e $1f
    ld bc, $8600                                  ; $571e: $01 $00 $86
    nop                                           ; $5721: $00
    ld de, $0828                                  ; $5722: $11 $28 $08
    ld c, c                                       ; $5725: $49
    inc b                                         ; $5726: $04
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    ld c, c                                       ; $5729: $49
    call nz, Call_0ca_5400                        ; $572a: $c4 $00 $54
    ld bc, $f08a                                  ; $572d: $01 $8a $f0
    or d                                          ; $5730: $b2
    nop                                           ; $5731: $00
    ld a, a                                       ; $5732: $7f
    ld d, $01                                     ; $5733: $16 $01
    ld [$1020], sp                                ; $5735: $08 $20 $10
    ld b, h                                       ; $5738: $44
    ld b, b                                       ; $5739: $40
    ld [hl+], a                                   ; $573a: $22
    ld de, $d8a3                                  ; $573b: $11 $a3 $d8
    ld bc, $08a2                                  ; $573e: $01 $a2 $08
    dec d                                         ; $5741: $15
    ld h, b                                       ; $5742: $60
    nop                                           ; $5743: $00
    ld a, [de]                                    ; $5744: $1a
    nop                                           ; $5745: $00
    ld b, a                                       ; $5746: $47
    ret nz                                        ; $5747: $c0

    sub h                                         ; $5748: $94
    adc d                                         ; $5749: $8a
    nop                                           ; $574a: $00
    dec h                                         ; $574b: $25
    ld b, b                                       ; $574c: $40
    ld b, l                                       ; $574d: $45
    nop                                           ; $574e: $00
    sub c                                         ; $574f: $91
    adc d                                         ; $5750: $8a
    ld [hl+], a                                   ; $5751: $22
    ld d, b                                       ; $5752: $50
    inc b                                         ; $5753: $04
    add sp, $0a                                   ; $5754: $e8 $0a
    pop af                                        ; $5756: $f1
    nop                                           ; $5757: $00
    cp $6b                                        ; $5758: $fe $6b
    rra                                           ; $575a: $1f
    add c                                         ; $575b: $81
    inc d                                         ; $575c: $14
    db $10                                        ; $575d: $10

jr_0ca_575e:
    ld bc, $0050                                  ; $575e: $01 $50 $00
    nop                                           ; $5761: $00
    inc h                                         ; $5762: $24
    add c                                         ; $5763: $81
    ld [de], a                                    ; $5764: $12
    jr z, @+$53                                   ; $5765: $28 $51

    nop                                           ; $5767: $00
    xor b                                         ; $5768: $a8
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    add [hl]                                      ; $576b: $86
    ld hl, sp-$52                                 ; $576c: $f8 $ae
    ld a, a                                       ; $576e: $7f
    ld d, [hl]                                    ; $576f: $56
    ld bc, $00bf                                  ; $5770: $01 $bf $00
    rlca                                          ; $5773: $07
    nop                                           ; $5774: $00
    ld hl, $4094                                  ; $5775: $21 $94 $40
    jr nz, jr_0ca_577c                            ; $5778: $20 $02

    adc c                                         ; $577a: $89
    ld [bc], a                                    ; $577b: $02

jr_0ca_577c:
    ld bc, $2401                                  ; $577c: $01 $01 $24
    ld [hl-], a                                   ; $577f: $32
    ret nz                                        ; $5780: $c0

    xor b                                         ; $5781: $a8
    ld b, b                                       ; $5782: $40
    ld [bc], a                                    ; $5783: $02
    cp a                                          ; $5784: $bf
    add b                                         ; $5785: $80
    ld d, d                                       ; $5786: $52
    ld bc, $55ba                                  ; $5787: $01 $ba $55
    ld d, l                                       ; $578a: $55
    ld [hl+], a                                   ; $578b: $22
    xor d                                         ; $578c: $aa
    ld d, c                                       ; $578d: $51
    ld [hl], a                                    ; $578e: $77
    ld bc, $aaaa                                  ; $578f: $01 $aa $aa
    ld d, l                                       ; $5792: $55
    dec d                                         ; $5793: $15
    ld b, h                                       ; $5794: $44
    inc c                                         ; $5795: $0c
    ld hl, sp-$1e                                 ; $5796: $f8 $e2
    add hl, bc                                    ; $5798: $09
    nop                                           ; $5799: $00
    push de                                       ; $579a: $d5
    adc d                                         ; $579b: $8a
    xor d                                         ; $579c: $aa
    ld d, c                                       ; $579d: $51
    ld d, l                                       ; $579e: $55
    adc d                                         ; $579f: $8a
    cp e                                          ; $57a0: $bb
    dec d                                         ; $57a1: $15
    ld [$1248], sp                                ; $57a2: $08 $48 $12
    and h                                         ; $57a5: $a4
    ld [$09e2], sp                                ; $57a6: $08 $e2 $09
    ld h, l                                       ; $57a9: $65
    cp a                                          ; $57aa: $bf
    jp $7d0e                                      ; $57ab: $c3 $0e $7d


    and h                                         ; $57ae: $a4
    db $db                                        ; $57af: $db
    db $10                                        ; $57b0: $10
    ldh [rSB], a                                  ; $57b1: $e0 $01
    ld [hl], b                                    ; $57b3: $70
    nop                                           ; $57b4: $00
    ld [c], a                                     ; $57b5: $e2
    ld bc, $00c3                                  ; $57b6: $01 $c3 $00
    db $fc                                        ; $57b9: $fc
    sbc l                                         ; $57ba: $9d
    ld a, a                                       ; $57bb: $7f
    ld [$2af7], sp                                ; $57bc: $08 $f7 $2a
    rst $38                                       ; $57bf: $ff
    ld bc, $0c10                                  ; $57c0: $01 $10 $0c
    xor b                                         ; $57c3: $a8
    nop                                           ; $57c4: $00
    ld [c], a                                     ; $57c5: $e2
    add hl, bc                                    ; $57c6: $09
    ld b, l                                       ; $57c7: $45
    db $10                                        ; $57c8: $10
    adc [hl]                                      ; $57c9: $8e
    ldh a, [rP1]                                  ; $57ca: $f0 $00
    ld a, e                                       ; $57cc: $7b
    rst $38                                       ; $57cd: $ff
    or e                                          ; $57ce: $b3
    add l                                         ; $57cf: $85
    rra                                           ; $57d0: $1f
    rlca                                          ; $57d1: $07
    ld a, [hl+]                                   ; $57d2: $2a

jr_0ca_57d3:
    adc l                                         ; $57d3: $8d
    add b                                         ; $57d4: $80
    ld [c], a                                     ; $57d5: $e2
    add hl, bc                                    ; $57d6: $09
    ld d, l                                       ; $57d7: $55
    ld [$d4be], a                                 ; $57d8: $ea $be $d4

jr_0ca_57db:
    ld d, l                                       ; $57db: $55
    xor d                                         ; $57dc: $aa
    ld a, b                                       ; $57dd: $78
    ld c, h                                       ; $57de: $4c
    rst $38                                       ; $57df: $ff
    jr c, jr_0ca_580c                             ; $57e0: $38 $2a

    ld d, b                                       ; $57e2: $50
    adc b                                         ; $57e3: $88
    ld [$3819], a                                 ; $57e4: $ea $19 $38
    ld a, [hl+]                                   ; $57e7: $2a
    ld a, [hl+]                                   ; $57e8: $2a
    add b                                         ; $57e9: $80
    call z, Call_000_19ea                         ; $57ea: $cc $ea $19
    jr c, jr_0ca_5819                             ; $57ed: $38 $2a

    add hl, de                                    ; $57ef: $19
    rlca                                          ; $57f0: $07
    ld [$3819], a                                 ; $57f1: $ea $19 $38
    ld a, [hl+]                                   ; $57f4: $2a
    pop af                                        ; $57f5: $f1
    cp $cc                                        ; $57f6: $fe $cc
    ld [$3819], a                                 ; $57f8: $ea $19 $38
    ld a, [hl+]                                   ; $57fb: $2a
    jp nz, $ea04                                  ; $57fc: $c2 $04 $ea

    add hl, de                                    ; $57ff: $19
    jr c, jr_0ca_582c                             ; $5800: $38 $2a

    add hl, hl                                    ; $5802: $29
    add b                                         ; $5803: $80
    adc $ea                                       ; $5804: $ce $ea
    add hl, de                                    ; $5806: $19
    ld a, [hl-]                                   ; $5807: $3a
    ld a, [bc]                                    ; $5808: $0a
    ld d, l                                       ; $5809: $55
    nop                                           ; $580a: $00
    inc a                                         ; $580b: $3c

jr_0ca_580c:
    ld a, [de]                                    ; $580c: $1a
    db $ec                                        ; $580d: $ec
    add hl, bc                                    ; $580e: $09
    ld a, [hl-]                                   ; $580f: $3a
    ld a, [bc]                                    ; $5810: $0a
    ld d, [hl]                                    ; $5811: $56
    ld [hl], e                                    ; $5812: $73
    ld a, a                                       ; $5813: $7f
    inc a                                         ; $5814: $3c
    ld a, [de]                                    ; $5815: $1a
    db $ec                                        ; $5816: $ec
    add hl, bc                                    ; $5817: $09
    ld a, [hl-]                                   ; $5818: $3a

jr_0ca_5819:
    ld a, [bc]                                    ; $5819: $0a
    ld d, l                                       ; $581a: $55
    ld [$1a3c], a                                 ; $581b: $ea $3c $1a
    db $ec                                        ; $581e: $ec
    add hl, bc                                    ; $581f: $09
    sbc h                                         ; $5820: $9c
    ld a, [hl-]                                   ; $5821: $3a
    ld a, [bc]                                    ; $5822: $0a
    ld d, l                                       ; $5823: $55
    xor d                                         ; $5824: $aa
    inc a                                         ; $5825: $3c
    ld a, [de]                                    ; $5826: $1a
    db $ec                                        ; $5827: $ec
    add hl, bc                                    ; $5828: $09
    ld a, [hl-]                                   ; $5829: $3a
    ld a, [bc]                                    ; $582a: $0a
    rst $10                                       ; $582b: $d7

jr_0ca_582c:
    xor d                                         ; $582c: $aa
    and $3c                                       ; $582d: $e6 $3c
    ld a, [de]                                    ; $582f: $1a
    db $ec                                        ; $5830: $ec
    add hl, bc                                    ; $5831: $09
    ld a, [hl-]                                   ; $5832: $3a
    ld a, [bc]                                    ; $5833: $0a
    ld b, h                                       ; $5834: $44
    ld de, $1a3c                                  ; $5835: $11 $3c $1a
    db $ec                                        ; $5838: $ec
    add hl, bc                                    ; $5839: $09
    pop af                                        ; $583a: $f1
    db $10                                        ; $583b: $10
    cp $ef                                        ; $583c: $fe $ef
    rra                                           ; $583e: $1f
    ld a, $3a                                     ; $583f: $3e $3a
    rst $28                                       ; $5841: $ef
    ld de, $0188                                  ; $5842: $11 $88 $01
    jr nz, jr_0ca_57d3                            ; $5845: $20 $8c

    ldh a, [$3e]                                  ; $5847: $f0 $3e
    ld a, [hl-]                                   ; $5849: $3a
    db $dd                                        ; $584a: $dd
    ld h, d                                       ; $584b: $62
    jr nc, jr_0ca_5898                            ; $584c: $30 $4a

    db $10                                        ; $584e: $10
    ld b, b                                       ; $584f: $40
    inc b                                         ; $5850: $04
    ld a, $3a                                     ; $5851: $3e $3a
    rst $30                                       ; $5853: $f7
    adc b                                         ; $5854: $88
    dec c                                         ; $5855: $0d
    ld d, d                                       ; $5856: $52
    ld [hl], a                                    ; $5857: $77
    jr z, jr_0ca_57db                             ; $5858: $28 $81

    ld a, $3a                                     ; $585a: $3e $3a
    ret c                                         ; $585c: $d8

    cpl                                           ; $585d: $2f
    ld d, a                                       ; $585e: $57
    xor b                                         ; $585f: $a8
    cp a                                          ; $5860: $bf
    ld b, h                                       ; $5861: $44
    ld a, $3a                                     ; $5862: $3e $3a
    ld c, b                                       ; $5864: $48
    ld bc, $023c                                  ; $5865: $01 $3c $02
    ld a, l                                       ; $5868: $7d
    add d                                         ; $5869: $82
    ld a, $3a                                     ; $586a: $3e $3a
    ld hl, sp-$01                                 ; $586c: $f8 $ff
    inc d                                         ; $586e: $14
    nop                                           ; $586f: $00
    dec c                                         ; $5870: $0d
    nop                                           ; $5871: $00
    inc l                                         ; $5872: $2c
    ld bc, $6800                                  ; $5873: $01 $00 $68
    ld l, c                                       ; $5876: $69
    ld l, d                                       ; $5877: $6a
    ld l, e                                       ; $5878: $6b
    ld l, b                                       ; $5879: $68
    ld l, c                                       ; $587a: $69
    ld l, h                                       ; $587b: $6c
    ld a, d                                       ; $587c: $7a
    nop                                           ; $587d: $00
    ld a, d                                       ; $587e: $7a
    ld a, d                                       ; $587f: $7a
    ld [hl], h                                    ; $5880: $74
    add d                                         ; $5881: $82
    add c                                         ; $5882: $81
    ld a, a                                       ; $5883: $7f
    ld a, [hl]                                    ; $5884: $7e
    ld [hl], l                                    ; $5885: $75
    add b                                         ; $5886: $80
    db $10                                        ; $5887: $10
    ld [$7776], sp                                ; $5888: $08 $76 $77
    ld a, b                                       ; $588b: $78
    ld a, c                                       ; $588c: $79
    halt                                          ; $588d: $76
    ld [hl], a                                    ; $588e: $77
    ld l, a                                       ; $588f: $6f
    nop                                           ; $5890: $00
    ld a, h                                       ; $5891: $7c
    ld a, h                                       ; $5892: $7c
    ld a, h                                       ; $5893: $7c
    ld [hl], e                                    ; $5894: $73
    ld [hl], d                                    ; $5895: $72
    ld [hl], c                                    ; $5896: $71
    ld [hl], b                                    ; $5897: $70

jr_0ca_5898:
    ld l, a                                       ; $5898: $6f
    ld b, b                                       ; $5899: $40
    add e                                         ; $589a: $83
    db $10                                        ; $589b: $10
    ld [$858d], sp                                ; $589c: $08 $8d $85
    add [hl]                                      ; $589f: $86
    add a                                         ; $58a0: $87
    adc l                                         ; $58a1: $8d
    add l                                         ; $58a2: $85
    ld a, [bc]                                    ; $58a3: $0a
    adc h                                         ; $58a4: $8c
    adc c                                         ; $58a5: $89
    adc d                                         ; $58a6: $8a
    adc e                                         ; $58a7: $8b
    inc b                                         ; $58a8: $04
    db $10                                        ; $58a9: $10
    adc l                                         ; $58aa: $8d
    db $10                                        ; $58ab: $10
    ld [$008e], sp                                ; $58ac: $08 $8e $00
    adc a                                         ; $58af: $8f
    sub b                                         ; $58b0: $90
    sub c                                         ; $58b1: $91
    sub d                                         ; $58b2: $92
    sub e                                         ; $58b3: $93
    sub h                                         ; $58b4: $94
    sub l                                         ; $58b5: $95
    sub [hl]                                      ; $58b6: $96
    nop                                           ; $58b7: $00
    sub a                                         ; $58b8: $97
    sbc b                                         ; $58b9: $98
    sbc c                                         ; $58ba: $99
    sbc d                                         ; $58bb: $9a
    sbc e                                         ; $58bc: $9b
    sbc h                                         ; $58bd: $9c
    sbc l                                         ; $58be: $9d
    sbc [hl]                                      ; $58bf: $9e
    nop                                           ; $58c0: $00
    sbc a                                         ; $58c1: $9f
    and b                                         ; $58c2: $a0
    and c                                         ; $58c3: $a1
    and d                                         ; $58c4: $a2
    and e                                         ; $58c5: $a3
    and h                                         ; $58c6: $a4
    and l                                         ; $58c7: $a5
    and [hl]                                      ; $58c8: $a6
    nop                                           ; $58c9: $00
    and a                                         ; $58ca: $a7
    xor b                                         ; $58cb: $a8
    xor c                                         ; $58cc: $a9
    xor d                                         ; $58cd: $aa
    xor e                                         ; $58ce: $ab
    xor h                                         ; $58cf: $ac
    xor l                                         ; $58d0: $ad
    xor [hl]                                      ; $58d1: $ae
    nop                                           ; $58d2: $00
    xor a                                         ; $58d3: $af
    or b                                          ; $58d4: $b0
    or c                                          ; $58d5: $b1
    or d                                          ; $58d6: $b2
    or e                                          ; $58d7: $b3
    or h                                          ; $58d8: $b4
    or l                                          ; $58d9: $b5
    or [hl]                                       ; $58da: $b6
    nop                                           ; $58db: $00
    or a                                          ; $58dc: $b7
    cp b                                          ; $58dd: $b8
    cp c                                          ; $58de: $b9
    cp d                                          ; $58df: $ba
    cp e                                          ; $58e0: $bb
    cp h                                          ; $58e1: $bc
    cp l                                          ; $58e2: $bd
    cp [hl]                                       ; $58e3: $be
    nop                                           ; $58e4: $00
    cp a                                          ; $58e5: $bf
    ret nz                                        ; $58e6: $c0

    pop bc                                        ; $58e7: $c1
    jp nz, $c4c3                                  ; $58e8: $c2 $c3 $c4

    push bc                                       ; $58eb: $c5
    add $00                                       ; $58ec: $c6 $00
    rst $00                                       ; $58ee: $c7
    ret z                                         ; $58ef: $c8

    ret                                           ; $58f0: $c9


    jp z, $cccb                                   ; $58f1: $ca $cb $cc

    call Call_000_00ce                            ; $58f4: $cd $ce $00
    rst $08                                       ; $58f7: $cf
    ret nc                                        ; $58f8: $d0

    pop de                                        ; $58f9: $d1
    jp nc, $d4d3                                  ; $58fa: $d2 $d3 $d4

    push de                                       ; $58fd: $d5
    sub $00                                       ; $58fe: $d6 $00
    rst $10                                       ; $5900: $d7
    ret c                                         ; $5901: $d8

    reti                                          ; $5902: $d9


    jp c, $dcdb                                   ; $5903: $da $db $dc

    db $dd                                        ; $5906: $dd
    sbc $00                                       ; $5907: $de $00
    rst $18                                       ; $5909: $df
    ldh [$e1], a                                  ; $590a: $e0 $e1
    ld [c], a                                     ; $590c: $e2
    db $e3                                        ; $590d: $e3
    db $e4                                        ; $590e: $e4
    push hl                                       ; $590f: $e5
    and $00                                       ; $5910: $e6 $00
    rst $20                                       ; $5912: $e7
    add sp, -$17                                  ; $5913: $e8 $e9
    ld [$eceb], a                                 ; $5915: $ea $eb $ec
    db $ed                                        ; $5918: $ed
    xor $00                                       ; $5919: $ee $00
    rst $28                                       ; $591b: $ef
    ldh a, [$f1]                                  ; $591c: $f0 $f1
    ld a, [c]                                     ; $591e: $f2
    di                                            ; $591f: $f3
    db $f4                                        ; $5920: $f4
    push af                                       ; $5921: $f5
    or $00                                        ; $5922: $f6 $00
    rst $30                                       ; $5924: $f7
    ld hl, sp-$07                                 ; $5925: $f8 $f9
    ld a, [$4c4b]                                 ; $5927: $fa $4b $4c
    db $fd                                        ; $592a: $fd
    cp $00                                        ; $592b: $fe $00
    rst $38                                       ; $592d: $ff
    nop                                           ; $592e: $00
    ld bc, $0302                                  ; $592f: $01 $02 $03
    inc b                                         ; $5932: $04
    dec b                                         ; $5933: $05
    ld b, $00                                     ; $5934: $06 $00
    rlca                                          ; $5936: $07
    ld [$0a09], sp                                ; $5937: $08 $09 $0a
    dec bc                                        ; $593a: $0b
    inc c                                         ; $593b: $0c
    dec c                                         ; $593c: $0d
    ld c, $00                                     ; $593d: $0e $00
    rrca                                          ; $593f: $0f
    db $10                                        ; $5940: $10
    ld de, $1312                                  ; $5941: $11 $12 $13
    inc d                                         ; $5944: $14
    dec d                                         ; $5945: $15
    ld d, $00                                     ; $5946: $16 $00
    rla                                           ; $5948: $17
    jr jr_0ca_5964                                ; $5949: $18 $19

    ld a, [de]                                    ; $594b: $1a
    dec de                                        ; $594c: $1b
    inc e                                         ; $594d: $1c
    dec e                                         ; $594e: $1d
    ld e, $00                                     ; $594f: $1e $00
    rra                                           ; $5951: $1f
    jr nz, jr_0ca_5975                            ; $5952: $20 $21

    ld [hl+], a                                   ; $5954: $22
    inc hl                                        ; $5955: $23
    inc h                                         ; $5956: $24
    dec h                                         ; $5957: $25
    ld h, $00                                     ; $5958: $26 $00
    daa                                           ; $595a: $27
    jr z, jr_0ca_5986                             ; $595b: $28 $29

    ld a, [hl+]                                   ; $595d: $2a

jr_0ca_595e:
    dec hl                                        ; $595e: $2b
    inc l                                         ; $595f: $2c
    dec l                                         ; $5960: $2d
    ld l, $00                                     ; $5961: $2e $00
    cpl                                           ; $5963: $2f

jr_0ca_5964:
    jr nc, jr_0ca_5997                            ; $5964: $30 $31

    ld [hl-], a                                   ; $5966: $32
    inc sp                                        ; $5967: $33
    inc [hl]                                      ; $5968: $34
    dec [hl]                                      ; $5969: $35
    ld [hl], $00                                  ; $596a: $36 $00
    scf                                           ; $596c: $37
    jr c, jr_0ca_59a8                             ; $596d: $38 $39

    ld a, [hl-]                                   ; $596f: $3a
    dec sp                                        ; $5970: $3b
    inc a                                         ; $5971: $3c
    dec a                                         ; $5972: $3d
    ld a, $00                                     ; $5973: $3e $00

jr_0ca_5975:
    ccf                                           ; $5975: $3f
    ld b, b                                       ; $5976: $40
    ld b, c                                       ; $5977: $41
    ld b, d                                       ; $5978: $42
    ld b, e                                       ; $5979: $43
    ld b, h                                       ; $597a: $44
    ld b, l                                       ; $597b: $45
    ld b, [hl]                                    ; $597c: $46
    nop                                           ; $597d: $00
    ld b, a                                       ; $597e: $47
    ld c, b                                       ; $597f: $48
    ld c, c                                       ; $5980: $49
    ld c, d                                       ; $5981: $4a
    ld c, e                                       ; $5982: $4b
    ld c, h                                       ; $5983: $4c
    ld a, l                                       ; $5984: $7d
    add b                                         ; $5985: $80

jr_0ca_5986:
    nop                                           ; $5986: $00
    ld a, e                                       ; $5987: $7b
    ld l, l                                       ; $5988: $6d
    db $fc                                        ; $5989: $fc
    ei                                            ; $598a: $fb
    ld l, [hl]                                    ; $598b: $6e
    adc b                                         ; $598c: $88
    add h                                         ; $598d: $84
    inc b                                         ; $598e: $04
    add b                                         ; $598f: $80
    ld bc, $0010                                  ; $5990: $01 $10 $00
    nop                                           ; $5993: $00
    jr nz, jr_0ca_5996                            ; $5994: $20 $00

jr_0ca_5996:
    nop                                           ; $5996: $00

jr_0ca_5997:
    ld [$3608], sp                                ; $5997: $08 $08 $36
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    rrca                                          ; $599c: $0f
    jr jr_0ca_59b4                                ; $599d: $18 $15

    db $10                                        ; $599f: $10
    jr nz, jr_0ca_59b6                            ; $59a0: $20 $14

    ld [$0802], sp                                ; $59a2: $08 $02 $08
    inc c                                         ; $59a5: $0c
    xor d                                         ; $59a6: $aa
    inc h                                         ; $59a7: $24

jr_0ca_59a8:
    ld [$010c], sp                                ; $59a8: $08 $0c $01
    add b                                         ; $59ab: $80
    rrca                                          ; $59ac: $0f
    ld bc, $0e80                                  ; $59ad: $01 $80 $0e
    ld bc, $0d48                                  ; $59b0: $01 $48 $0d
    cp a                                          ; $59b3: $bf

jr_0ca_59b4:
    inc bc                                        ; $59b4: $03
    nop                                           ; $59b5: $00

jr_0ca_59b6:
    dec c                                         ; $59b6: $0d
    dec b                                         ; $59b7: $05
    nop                                           ; $59b8: $00
    ld de, $0138                                  ; $59b9: $11 $38 $01
    jr nz, jr_0ca_59d8                            ; $59bc: $20 $1a

jr_0ca_59be:
    ld [$5814], sp                                ; $59be: $08 $14 $58
    add hl, hl                                    ; $59c1: $29
    ld h, b                                       ; $59c2: $60
    rst $38                                       ; $59c3: $ff
    jr c, jr_0ca_59de                             ; $59c4: $38 $18

    ld b, b                                       ; $59c6: $40
    jr nz, jr_0ca_59e7                            ; $59c7: $20 $1e

    jr jr_0ca_5a05                                ; $59c9: $18 $3a

    jr nz, jr_0ca_5a24                            ; $59cb: $20 $57

jr_0ca_59cd:
    jr jr_0ca_5a19                                ; $59cd: $18 $4a

    ld b, b                                       ; $59cf: $40
    inc d                                         ; $59d0: $14
    jr nz, jr_0ca_5a1a                            ; $59d1: $20 $47

    jr nc, jr_0ca_59cd                            ; $59d3: $30 $f8

    ld [hl], e                                    ; $59d5: $73
    jr c, jr_0ca_59e9                             ; $59d6: $38 $11

jr_0ca_59d8:
    jr nc, jr_0ca_5a0c                            ; $59d8: $30 $32

    jr jr_0ca_595e                                ; $59da: $18 $82

    jr c, jr_0ca_59f3                             ; $59dc: $38 $15

jr_0ca_59de:
    jr @+$08                                      ; $59de: $18 $06

    dec c                                         ; $59e0: $0d
    ld b, $10                                     ; $59e1: $06 $10
    ld b, $0e                                     ; $59e3: $06 $0e
    ld c, $03                                     ; $59e5: $0e $03

jr_0ca_59e7:
    nop                                           ; $59e7: $00
    inc d                                         ; $59e8: $14

jr_0ca_59e9:
    nop                                           ; $59e9: $00
    dec c                                         ; $59ea: $0d
    nop                                           ; $59eb: $00
    ld b, a                                       ; $59ec: $47
    ld bc, $6800                                  ; $59ed: $01 $00 $68
    ld l, c                                       ; $59f0: $69
    ld l, d                                       ; $59f1: $6a
    ld l, e                                       ; $59f2: $6b

jr_0ca_59f3:
    ld l, h                                       ; $59f3: $6c
    ld l, l                                       ; $59f4: $6d
    ld l, [hl]                                    ; $59f5: $6e
    ld l, a                                       ; $59f6: $6f
    nop                                           ; $59f7: $00
    ld [hl], b                                    ; $59f8: $70
    ld [hl], c                                    ; $59f9: $71
    ld [hl], d                                    ; $59fa: $72
    ld [hl], e                                    ; $59fb: $73
    ld [hl], h                                    ; $59fc: $74
    ld [hl], l                                    ; $59fd: $75
    halt                                          ; $59fe: $76
    ld [hl], a                                    ; $59ff: $77
    nop                                           ; $5a00: $00
    ld a, b                                       ; $5a01: $78
    ld a, c                                       ; $5a02: $79
    ld a, d                                       ; $5a03: $7a
    ld a, e                                       ; $5a04: $7b

jr_0ca_5a05:
    ld a, h                                       ; $5a05: $7c
    ld a, l                                       ; $5a06: $7d
    ld a, [hl]                                    ; $5a07: $7e
    ld a, a                                       ; $5a08: $7f
    nop                                           ; $5a09: $00
    add b                                         ; $5a0a: $80
    add c                                         ; $5a0b: $81

jr_0ca_5a0c:
    add d                                         ; $5a0c: $82
    add e                                         ; $5a0d: $83
    add h                                         ; $5a0e: $84
    add l                                         ; $5a0f: $85
    add [hl]                                      ; $5a10: $86
    add a                                         ; $5a11: $87
    nop                                           ; $5a12: $00
    adc b                                         ; $5a13: $88
    adc c                                         ; $5a14: $89
    adc d                                         ; $5a15: $8a
    adc e                                         ; $5a16: $8b
    adc h                                         ; $5a17: $8c
    adc l                                         ; $5a18: $8d

jr_0ca_5a19:
    adc [hl]                                      ; $5a19: $8e

jr_0ca_5a1a:
    adc a                                         ; $5a1a: $8f
    nop                                           ; $5a1b: $00
    sub b                                         ; $5a1c: $90
    sub c                                         ; $5a1d: $91
    sub d                                         ; $5a1e: $92
    sub e                                         ; $5a1f: $93
    sub h                                         ; $5a20: $94
    sub l                                         ; $5a21: $95
    sub [hl]                                      ; $5a22: $96
    sub a                                         ; $5a23: $97

jr_0ca_5a24:
    jr nz, jr_0ca_59be                            ; $5a24: $20 $98

    sbc c                                         ; $5a26: $99
    ld [$9a28], sp                                ; $5a27: $08 $28 $9a
    sbc e                                         ; $5a2a: $9b
    sbc h                                         ; $5a2b: $9c
    sbc l                                         ; $5a2c: $9d
    sbc [hl]                                      ; $5a2d: $9e
    nop                                           ; $5a2e: $00
    sbc a                                         ; $5a2f: $9f
    and b                                         ; $5a30: $a0
    and c                                         ; $5a31: $a1
    and d                                         ; $5a32: $a2
    and e                                         ; $5a33: $a3
    and h                                         ; $5a34: $a4
    and l                                         ; $5a35: $a5
    and [hl]                                      ; $5a36: $a6
    nop                                           ; $5a37: $00
    and a                                         ; $5a38: $a7
    and e                                         ; $5a39: $a3
    and d                                         ; $5a3a: $a2
    and c                                         ; $5a3b: $a1
    and b                                         ; $5a3c: $a0
    sbc a                                         ; $5a3d: $9f
    sbc [hl]                                      ; $5a3e: $9e
    sbc l                                         ; $5a3f: $9d
    nop                                           ; $5a40: $00
    sbc h                                         ; $5a41: $9c
    xor b                                         ; $5a42: $a8
    xor c                                         ; $5a43: $a9
    xor d                                         ; $5a44: $aa
    xor e                                         ; $5a45: $ab
    xor h                                         ; $5a46: $ac
    xor l                                         ; $5a47: $ad
    xor [hl]                                      ; $5a48: $ae
    nop                                           ; $5a49: $00
    xor a                                         ; $5a4a: $af
    or b                                          ; $5a4b: $b0
    or c                                          ; $5a4c: $b1
    or d                                          ; $5a4d: $b2
    or e                                          ; $5a4e: $b3
    xor a                                         ; $5a4f: $af
    xor [hl]                                      ; $5a50: $ae
    xor l                                         ; $5a51: $ad
    nop                                           ; $5a52: $00
    xor h                                         ; $5a53: $ac
    xor e                                         ; $5a54: $ab
    xor d                                         ; $5a55: $aa
    xor c                                         ; $5a56: $a9
    xor b                                         ; $5a57: $a8
    or h                                          ; $5a58: $b4
    or l                                          ; $5a59: $b5
    or [hl]                                       ; $5a5a: $b6
    nop                                           ; $5a5b: $00
    or a                                          ; $5a5c: $b7
    cp b                                          ; $5a5d: $b8
    cp c                                          ; $5a5e: $b9
    cp d                                          ; $5a5f: $ba
    cp e                                          ; $5a60: $bb
    cp h                                          ; $5a61: $bc
    cp l                                          ; $5a62: $bd
    cp [hl]                                       ; $5a63: $be
    nop                                           ; $5a64: $00
    cp a                                          ; $5a65: $bf
    cp e                                          ; $5a66: $bb
    cp d                                          ; $5a67: $ba
    cp c                                          ; $5a68: $b9
    cp b                                          ; $5a69: $b8
    or a                                          ; $5a6a: $b7
    or [hl]                                       ; $5a6b: $b6
    or l                                          ; $5a6c: $b5
    nop                                           ; $5a6d: $00
    or h                                          ; $5a6e: $b4
    ret nz                                        ; $5a6f: $c0

    pop bc                                        ; $5a70: $c1
    jp nz, $c4c3                                  ; $5a71: $c2 $c3 $c4

    push bc                                       ; $5a74: $c5
    add $00                                       ; $5a75: $c6 $00
    rst $00                                       ; $5a77: $c7
    ret z                                         ; $5a78: $c8

    ret                                           ; $5a79: $c9


    jp z, $c7cb                                   ; $5a7a: $ca $cb $c7

    add $c5                                       ; $5a7d: $c6 $c5
    nop                                           ; $5a7f: $00
    call nz, $c2c3                                ; $5a80: $c4 $c3 $c2
    pop bc                                        ; $5a83: $c1
    ret nz                                        ; $5a84: $c0

    call z, $cecd                                 ; $5a85: $cc $cd $ce
    nop                                           ; $5a88: $00
    rst $08                                       ; $5a89: $cf
    ret nc                                        ; $5a8a: $d0

    pop de                                        ; $5a8b: $d1
    jp nc, $d4d3                                  ; $5a8c: $d2 $d3 $d4

    push de                                       ; $5a8f: $d5
    sub $00                                       ; $5a90: $d6 $00
    rst $10                                       ; $5a92: $d7
    db $d3                                        ; $5a93: $d3
    jp nc, $d0d1                                  ; $5a94: $d2 $d1 $d0

    rst $08                                       ; $5a97: $cf
    adc $cd                                       ; $5a98: $ce $cd
    nop                                           ; $5a9a: $00
    call z, $d9d8                                 ; $5a9b: $cc $d8 $d9
    jp c, $dcdb                                   ; $5a9e: $da $db $dc

    db $dd                                        ; $5aa1: $dd
    sbc $00                                       ; $5aa2: $de $00
    rst $18                                       ; $5aa4: $df
    ldh [$e1], a                                  ; $5aa5: $e0 $e1
    ld [c], a                                     ; $5aa7: $e2
    db $e3                                        ; $5aa8: $e3
    rst $18                                       ; $5aa9: $df
    sbc $dd                                       ; $5aaa: $de $dd
    nop                                           ; $5aac: $00
    call c, $dadb                                 ; $5aad: $dc $db $da
    reti                                          ; $5ab0: $d9


    ret c                                         ; $5ab1: $d8

    db $e4                                        ; $5ab2: $e4
    push hl                                       ; $5ab3: $e5
    and $00                                       ; $5ab4: $e6 $00
    rst $20                                       ; $5ab6: $e7
    add sp, -$17                                  ; $5ab7: $e8 $e9
    ld [$eceb], a                                 ; $5ab9: $ea $eb $ec
    db $ed                                        ; $5abc: $ed
    xor $00                                       ; $5abd: $ee $00
    rst $28                                       ; $5abf: $ef
    db $eb                                        ; $5ac0: $eb
    ld [$e8e9], a                                 ; $5ac1: $ea $e9 $e8
    rst $20                                       ; $5ac4: $e7
    and $e5                                       ; $5ac5: $e6 $e5
    nop                                           ; $5ac7: $00
    db $e4                                        ; $5ac8: $e4
    ldh a, [$f1]                                  ; $5ac9: $f0 $f1
    ld a, [c]                                     ; $5acb: $f2
    di                                            ; $5acc: $f3
    db $f4                                        ; $5acd: $f4
    push af                                       ; $5ace: $f5
    or $00                                        ; $5acf: $f6 $00
    rst $30                                       ; $5ad1: $f7
    ld hl, sp-$07                                 ; $5ad2: $f8 $f9
    ld a, [$f7fb]                                 ; $5ad4: $fa $fb $f7
    or $f5                                        ; $5ad7: $f6 $f5
    nop                                           ; $5ad9: $00
    db $f4                                        ; $5ada: $f4
    di                                            ; $5adb: $f3
    ld a, [c]                                     ; $5adc: $f2
    pop af                                        ; $5add: $f1
    ldh a, [$fc]                                  ; $5ade: $f0 $fc
    db $fd                                        ; $5ae0: $fd
    cp $00                                        ; $5ae1: $fe $00
    rst $38                                       ; $5ae3: $ff
    nop                                           ; $5ae4: $00
    ld bc, $0302                                  ; $5ae5: $01 $02 $03
    inc b                                         ; $5ae8: $04
    dec b                                         ; $5ae9: $05
    ld b, $00                                     ; $5aea: $06 $00
    rlca                                          ; $5aec: $07
    inc bc                                        ; $5aed: $03
    ld [bc], a                                    ; $5aee: $02
    ld bc, $ff00                                  ; $5aef: $01 $00 $ff
    cp $fd                                        ; $5af2: $fe $fd
    nop                                           ; $5af4: $00
    db $fc                                        ; $5af5: $fc
    ld [$0a09], sp                                ; $5af6: $08 $09 $0a
    dec bc                                        ; $5af9: $0b
    inc c                                         ; $5afa: $0c
    dec c                                         ; $5afb: $0d
    ld c, $00                                     ; $5afc: $0e $00
    rrca                                          ; $5afe: $0f
    db $10                                        ; $5aff: $10
    ld de, $1312                                  ; $5b00: $11 $12 $13
    rrca                                          ; $5b03: $0f
    ld c, $0d                                     ; $5b04: $0e $0d
    nop                                           ; $5b06: $00
    inc c                                         ; $5b07: $0c
    dec bc                                        ; $5b08: $0b
    ld a, [bc]                                    ; $5b09: $0a
    add hl, bc                                    ; $5b0a: $09
    ld [$0101], sp                                ; $5b0b: $08 $01 $01
    ld bc, $0272                                  ; $5b0e: $01 $72 $02
    ld bc, $0810                                  ; $5b11: $01 $10 $08
    jr c, @+$04                                   ; $5b14: $38 $02

    ld [$0a02], sp                                ; $5b16: $08 $02 $0a
    ld bc, $0908                                  ; $5b19: $01 $08 $09
    ld [hl], l                                    ; $5b1c: $75
    add hl, bc                                    ; $5b1d: $09
    rlca                                          ; $5b1e: $07
    db $10                                        ; $5b1f: $10
    ld [$0200], sp                                ; $5b20: $08 $00 $02
    sub b                                         ; $5b23: $90
    rrca                                          ; $5b24: $0f
    ld bc, $2f40                                  ; $5b25: $01 $40 $2f
    ld bc, $4820                                  ; $5b28: $01 $20 $48
    ld c, $01                                     ; $5b2b: $0e $01
    nop                                           ; $5b2d: $00
    dec bc                                        ; $5b2e: $0b
    dec bc                                        ; $5b2f: $0b
    inc bc                                        ; $5b30: $03
    ld [$0b0e], sp                                ; $5b31: $08 $0e $0b
    ld l, $1e                                     ; $5b34: $2e $1e
    dec hl                                        ; $5b36: $2b
    ld l, $2b                                     ; $5b37: $2e $2b
    ld bc, $1208                                  ; $5b39: $01 $08 $12
    ld [$0010], sp                                ; $5b3c: $08 $10 $00
    ld a, [de]                                    ; $5b3f: $1a
    ld [$430e], sp                                ; $5b40: $08 $0e $43
    ld l, $01                                     ; $5b43: $2e $01
    nop                                           ; $5b45: $00
    dec hl                                        ; $5b46: $2b
    dec hl                                        ; $5b47: $2b
    ld l, $2e                                     ; $5b48: $2e $2e
    ld [de], a                                    ; $5b4a: $12
    jr nz, jr_0ca_5b66                            ; $5b4b: $20 $19

    ld [$0b7d], sp                                ; $5b4d: $08 $7d $0b
    inc de                                        ; $5b50: $13
    ld [$0817], sp                                ; $5b51: $08 $17 $08
    ld h, $00                                     ; $5b54: $26 $00
    daa                                           ; $5b56: $27
    ld [$083b], sp                                ; $5b57: $08 $3b $08
    ld c, $24                                     ; $5b5a: $0e $24
    ld [$28ff], sp                                ; $5b5c: $08 $ff $28
    jr c, jr_0ca_5b79                             ; $5b5f: $38 $18

    jr jr_0ca_5b9c                                ; $5b61: $18 $39

    db $10                                        ; $5b63: $10
    inc a                                         ; $5b64: $3c
    nop                                           ; $5b65: $00

jr_0ca_5b66:
    ld c, b                                       ; $5b66: $48
    ld [$1829], sp                                ; $5b67: $08 $29 $18
    ld d, b                                       ; $5b6a: $50
    nop                                           ; $5b6b: $00
    inc de                                        ; $5b6c: $13
    jr @-$2f                                      ; $5b6d: $18 $cf

    ld h, h                                       ; $5b6f: $64
    db $10                                        ; $5b70: $10
    inc de                                        ; $5b71: $13
    jr jr_0ca_5b7f                                ; $5b72: $18 $0b

    dec bc                                        ; $5b74: $0b
    ld [hl], a                                    ; $5b75: $77
    ld [$0853], sp                                ; $5b76: $08 $53 $08

jr_0ca_5b79:
    ld c, d                                       ; $5b79: $4a
    db $10                                        ; $5b7a: $10
    adc l                                         ; $5b7b: $8d
    db $10                                        ; $5b7c: $10
    ld hl, sp+$14                                 ; $5b7d: $f8 $14

jr_0ca_5b7f:
    ld [$1879], sp                                ; $5b7f: $08 $79 $18
    inc de                                        ; $5b82: $13
    jr nz, jr_0ca_5b99                            ; $5b83: $20 $14

    jr jr_0ca_5beb                                ; $5b85: $18 $64

    db $10                                        ; $5b87: $10
    dec hl                                        ; $5b88: $2b
    ld l, $14                                     ; $5b89: $2e $14
    nop                                           ; $5b8b: $00
    dec c                                         ; $5b8c: $0d
    nop                                           ; $5b8d: $00
    cp l                                          ; $5b8e: $bd
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    ld l, b                                       ; $5b91: $68
    ld l, c                                       ; $5b92: $69
    ld l, d                                       ; $5b93: $6a
    ld l, e                                       ; $5b94: $6b
    ld l, h                                       ; $5b95: $6c
    ld l, d                                       ; $5b96: $6a
    ld l, l                                       ; $5b97: $6d
    ld l, [hl]                                    ; $5b98: $6e

jr_0ca_5b99:
    nop                                           ; $5b99: $00
    ld l, b                                       ; $5b9a: $68
    ld l, a                                       ; $5b9b: $6f

jr_0ca_5b9c:
    ld [hl], b                                    ; $5b9c: $70
    ld [hl], c                                    ; $5b9d: $71
    ld [hl], d                                    ; $5b9e: $72
    ld [hl], e                                    ; $5b9f: $73
    ld [hl], h                                    ; $5ba0: $74
    ld [hl], l                                    ; $5ba1: $75
    nop                                           ; $5ba2: $00
    halt                                          ; $5ba3: $76
    ld [hl], a                                    ; $5ba4: $77
    ld [hl], d                                    ; $5ba5: $72
    ld a, b                                       ; $5ba6: $78
    ld a, c                                       ; $5ba7: $79
    ld a, d                                       ; $5ba8: $7a
    ld a, e                                       ; $5ba9: $7b
    ld a, h                                       ; $5baa: $7c
    nop                                           ; $5bab: $00
    ld a, l                                       ; $5bac: $7d
    ld a, e                                       ; $5bad: $7b
    ld a, [hl]                                    ; $5bae: $7e
    ld a, a                                       ; $5baf: $7f
    ld a, c                                       ; $5bb0: $79
    add b                                         ; $5bb1: $80
    add c                                         ; $5bb2: $81
    add d                                         ; $5bb3: $82
    nop                                           ; $5bb4: $00
    add e                                         ; $5bb5: $83
    add h                                         ; $5bb6: $84
    add l                                         ; $5bb7: $85
    add [hl]                                      ; $5bb8: $86
    add a                                         ; $5bb9: $87
    adc b                                         ; $5bba: $88
    adc c                                         ; $5bbb: $89
    adc d                                         ; $5bbc: $8a

jr_0ca_5bbd:
    nop                                           ; $5bbd: $00
    adc e                                         ; $5bbe: $8b
    adc h                                         ; $5bbf: $8c
    ld a, e                                       ; $5bc0: $7b
    adc l                                         ; $5bc1: $8d
    adc [hl]                                      ; $5bc2: $8e
    ld a, e                                       ; $5bc3: $7b
    adc a                                         ; $5bc4: $8f
    ld l, [hl]                                    ; $5bc5: $6e
    nop                                           ; $5bc6: $00
    ld l, b                                       ; $5bc7: $68
    sub b                                         ; $5bc8: $90
    sub c                                         ; $5bc9: $91
    sub d                                         ; $5bca: $92
    sub e                                         ; $5bcb: $93
    sub h                                         ; $5bcc: $94
    sub l                                         ; $5bcd: $95
    sub [hl]                                      ; $5bce: $96
    nop                                           ; $5bcf: $00
    sub a                                         ; $5bd0: $97
    sbc b                                         ; $5bd1: $98

jr_0ca_5bd2:
    sub d                                         ; $5bd2: $92
    sub c                                         ; $5bd3: $91
    sbc c                                         ; $5bd4: $99
    sbc d                                         ; $5bd5: $9a
    sbc e                                         ; $5bd6: $9b
    sbc h                                         ; $5bd7: $9c
    ld bc, $9e9d                                  ; $5bd8: $01 $9d $9e
    sbc a                                         ; $5bdb: $9f
    and b                                         ; $5bdc: $a0
    and c                                         ; $5bdd: $a1
    and d                                         ; $5bde: $a2
    and e                                         ; $5bdf: $a3
    inc b                                         ; $5be0: $04
    jr nc, jr_0ca_5be6                            ; $5be1: $30 $03

    and h                                         ; $5be3: $a4
    and l                                         ; $5be4: $a5
    and [hl]                                      ; $5be5: $a6

jr_0ca_5be6:
    and a                                         ; $5be6: $a7
    and h                                         ; $5be7: $a4
    xor b                                         ; $5be8: $a8
    inc b                                         ; $5be9: $04
    nop                                           ; $5bea: $00

jr_0ca_5beb:
    ld [$8008], sp                                ; $5beb: $08 $08 $80

jr_0ca_5bee:
    inc c                                         ; $5bee: $0c
    ld [$aaa9], sp                                ; $5bef: $08 $a9 $aa
    and a                                         ; $5bf2: $a7
    xor e                                         ; $5bf3: $ab
    ld a, a                                       ; $5bf4: $7f

jr_0ca_5bf5:
    xor c                                         ; $5bf5: $a9
    xor d                                         ; $5bf6: $aa
    ld [bc], a                                    ; $5bf7: $02
    xor e                                         ; $5bf8: $ab
    ld a, a                                       ; $5bf9: $7f
    ld a, c                                       ; $5bfa: $79
    xor h                                         ; $5bfb: $ac
    xor e                                         ; $5bfc: $ab
    xor b                                         ; $5bfd: $a8
    inc b                                         ; $5bfe: $04

jr_0ca_5bff:
    nop                                           ; $5bff: $00
    xor l                                         ; $5c00: $ad
    jp nz, RST_08                                 ; $5c01: $c2 $08 $00

    inc c                                         ; $5c04: $0c
    nop                                           ; $5c05: $00
    xor [hl]                                      ; $5c06: $ae
    ld l, [hl]                                    ; $5c07: $6e
    ld l, b                                       ; $5c08: $68
    xor a                                         ; $5c09: $af
    inc b                                         ; $5c0a: $04
    jr nc, jr_0ca_5bbd                            ; $5c0b: $30 $b0

    xor b                                         ; $5c0d: $a8
    inc c                                         ; $5c0e: $0c
    db $10                                        ; $5c0f: $10
    or c                                          ; $5c10: $b1
    ld c, b                                       ; $5c11: $48
    ld [$4ca8], sp                                ; $5c12: $08 $a8 $4c
    ld b, b                                       ; $5c15: $40
    or d                                          ; $5c16: $b2
    and d                                         ; $5c17: $a2
    and e                                         ; $5c18: $a3
    ld b, h                                       ; $5c19: $44
    or e                                          ; $5c1a: $b3
    ld c, b                                       ; $5c1b: $48
    jr nc, jr_0ca_5bd2                            ; $5c1c: $30 $b4

    or l                                          ; $5c1e: $b5
    or [hl]                                       ; $5c1f: $b6
    ld e, h                                       ; $5c20: $5c
    nop                                           ; $5c21: $00
    or a                                          ; $5c22: $b7
    cp b                                          ; $5c23: $b8
    ld [c], a                                     ; $5c24: $e2
    ld h, b                                       ; $5c25: $60
    nop                                           ; $5c26: $00
    ld c, h                                       ; $5c27: $4c
    db $10                                        ; $5c28: $10
    ld d, b                                       ; $5c29: $50
    ld [$bab9], sp                                ; $5c2a: $08 $b9 $ba
    cp e                                          ; $5c2d: $bb
    inc c                                         ; $5c2e: $0c
    jr z, @-$42                                   ; $5c2f: $28 $bc

    jr nz, @-$41                                  ; $5c31: $20 $bd

    adc e                                         ; $5c33: $8b
    ld d, b                                       ; $5c34: $50
    jr jr_0ca_5bf5                                ; $5c35: $18 $be

    cp a                                          ; $5c37: $bf
    xor a                                         ; $5c38: $af
    xor [hl]                                      ; $5c39: $ae
    xor b                                         ; $5c3a: $a8
    adc a                                         ; $5c3b: $8f
    ld d, b                                       ; $5c3c: $50
    jr jr_0ca_5bff                                ; $5c3d: $18 $c0

    pop bc                                        ; $5c3f: $c1
    sbc c                                         ; $5c40: $99

jr_0ca_5c41:
    ld [hl], $00                                  ; $5c41: $36 $00
    sbc h                                         ; $5c43: $9c
    jr c, jr_0ca_5bee                             ; $5c44: $38 $a8

    nop                                           ; $5c46: $00
    ld d, b                                       ; $5c47: $50
    ld [$36e0], sp                                ; $5c48: $08 $e0 $36
    nop                                           ; $5c4b: $00
    and b                                         ; $5c4c: $a0
    jr nc, @+$39                                  ; $5c4d: $30 $37

    nop                                           ; $5c4f: $00
    and [hl]                                      ; $5c50: $a6
    and a                                         ; $5c51: $a7
    inc bc                                        ; $5c52: $03
    inc bc                                        ; $5c53: $03
    inc bc                                        ; $5c54: $03
    dec a                                         ; $5c55: $3d
    ld [bc], a                                    ; $5c56: $02
    ld [bc], a                                    ; $5c57: $02
    dec b                                         ; $5c58: $05
    nop                                           ; $5c59: $00
    ld b, $00                                     ; $5c5a: $06 $00
    ld [bc], a                                    ; $5c5c: $02
    jr nc, jr_0ca_5c6c                            ; $5c5d: $30 $0d

    db $10                                        ; $5c5f: $10
    ld [hl+], a                                   ; $5c60: $22
    ld a, [de]                                    ; $5c61: $1a
    nop                                           ; $5c62: $00
    ld b, b                                       ; $5c63: $40
    ld a, [bc]                                    ; $5c64: $0a
    ld bc, $0b38                                  ; $5c65: $01 $38 $0b
    dec bc                                        ; $5c68: $0b
    ld [bc], a                                    ; $5c69: $02
    ld a, [bc]                                    ; $5c6a: $0a
    ld a, [bc]                                    ; $5c6b: $0a

jr_0ca_5c6c:
    ld [hl+], a                                   ; $5c6c: $22
    ld b, [hl]                                    ; $5c6d: $46
    dec bc                                        ; $5c6e: $0b
    inc d                                         ; $5c6f: $14
    ld b, b                                       ; $5c70: $40
    ld a, [hl+]                                   ; $5c71: $2a
    ld a, [hl+]                                   ; $5c72: $2a
    dec bc                                        ; $5c73: $0b
    ld bc, $23f8                                  ; $5c74: $01 $f8 $23
    jr @+$05                                      ; $5c77: $18 $03

    rst $38                                       ; $5c79: $ff
    inc b                                         ; $5c7a: $04
    ld [$1005], sp                                ; $5c7b: $08 $05 $10
    dec c                                         ; $5c7e: $0d
    jr jr_0ca_5c8d                                ; $5c7f: $18 $0c

    ld [$4804], sp                                ; $5c81: $08 $04 $48
    inc d                                         ; $5c84: $14
    jr z, jr_0ca_5cd8                             ; $5c85: $28 $51

    ld hl, sp+$50                                 ; $5c87: $f8 $50
    jr nz, @-$06                                  ; $5c89: $20 $f8

    jr nc, jr_0ca_5ccd                            ; $5c8b: $30 $40

jr_0ca_5c8d:
    inc c                                         ; $5c8d: $0c
    ld l, b                                       ; $5c8e: $68
    ld [hl], c                                    ; $5c8f: $71
    jr z, jr_0ca_5ce2                             ; $5c90: $28 $50

    ld hl, sp-$41                                 ; $5c92: $f8 $bf
    jr nc, jr_0ca_5caa                            ; $5c94: $30 $14

    nop                                           ; $5c96: $00
    dec c                                         ; $5c97: $0d
    nop                                           ; $5c98: $00
    add hl, hl                                    ; $5c99: $29
    ld bc, $6808                                  ; $5c9a: $01 $08 $68
    ld l, c                                       ; $5c9d: $69
    ld l, d                                       ; $5c9e: $6a
    ld l, e                                       ; $5c9f: $6b
    inc b                                         ; $5ca0: $04
    jr z, jr_0ca_5d0f                             ; $5ca1: $28 $6c

    ld l, l                                       ; $5ca3: $6d
    ld l, [hl]                                    ; $5ca4: $6e
    nop                                           ; $5ca5: $00
    ld l, a                                       ; $5ca6: $6f
    ld [hl], b                                    ; $5ca7: $70
    ld [hl], c                                    ; $5ca8: $71
    ld [hl], d                                    ; $5ca9: $72

jr_0ca_5caa:
    ld [hl], e                                    ; $5caa: $73
    ld [hl], h                                    ; $5cab: $74
    ld [hl], l                                    ; $5cac: $75
    halt                                          ; $5cad: $76
    ld b, d                                       ; $5cae: $42
    ld [hl], a                                    ; $5caf: $77
    inc b                                         ; $5cb0: $04
    jr z, jr_0ca_5d2f                             ; $5cb1: $28 $7c

    ld a, c                                       ; $5cb3: $79
    ld a, d                                       ; $5cb4: $7a
    ld a, e                                       ; $5cb5: $7b
    inc b                                         ; $5cb6: $04
    ld [$107d], sp                                ; $5cb7: $08 $7d $10
    ld a, [hl]                                    ; $5cba: $7e
    ld a, a                                       ; $5cbb: $7f
    add b                                         ; $5cbc: $80
    inc b                                         ; $5cbd: $04
    jr z, jr_0ca_5c41                             ; $5cbe: $28 $81

    add d                                         ; $5cc0: $82
    add e                                         ; $5cc1: $83
    add h                                         ; $5cc2: $84
    nop                                           ; $5cc3: $00
    add l                                         ; $5cc4: $85
    add [hl]                                      ; $5cc5: $86
    add a                                         ; $5cc6: $87
    adc b                                         ; $5cc7: $88
    adc c                                         ; $5cc8: $89
    adc d                                         ; $5cc9: $8a
    adc e                                         ; $5cca: $8b
    adc h                                         ; $5ccb: $8c
    nop                                           ; $5ccc: $00

jr_0ca_5ccd:
    adc l                                         ; $5ccd: $8d
    adc [hl]                                      ; $5cce: $8e
    adc a                                         ; $5ccf: $8f
    sub b                                         ; $5cd0: $90
    sub c                                         ; $5cd1: $91
    sub d                                         ; $5cd2: $92
    sub e                                         ; $5cd3: $93
    sub h                                         ; $5cd4: $94
    nop                                           ; $5cd5: $00
    sub l                                         ; $5cd6: $95
    sub [hl]                                      ; $5cd7: $96

jr_0ca_5cd8:
    sub a                                         ; $5cd8: $97
    sbc b                                         ; $5cd9: $98
    ld [hl], b                                    ; $5cda: $70
    sbc c                                         ; $5cdb: $99
    sbc d                                         ; $5cdc: $9a
    sbc e                                         ; $5cdd: $9b
    nop                                           ; $5cde: $00
    sbc h                                         ; $5cdf: $9c
    sbc l                                         ; $5ce0: $9d
    sbc [hl]                                      ; $5ce1: $9e

jr_0ca_5ce2:
    sbc a                                         ; $5ce2: $9f
    and b                                         ; $5ce3: $a0
    and c                                         ; $5ce4: $a1
    and d                                         ; $5ce5: $a2
    and e                                         ; $5ce6: $a3
    nop                                           ; $5ce7: $00
    and h                                         ; $5ce8: $a4
    and l                                         ; $5ce9: $a5
    and [hl]                                      ; $5cea: $a6
    and a                                         ; $5ceb: $a7
    xor b                                         ; $5cec: $a8
    and d                                         ; $5ced: $a2
    and c                                         ; $5cee: $a1
    and b                                         ; $5cef: $a0
    nop                                           ; $5cf0: $00
    sbc a                                         ; $5cf1: $9f
    sbc [hl]                                      ; $5cf2: $9e
    sbc l                                         ; $5cf3: $9d
    sbc h                                         ; $5cf4: $9c
    or b                                          ; $5cf5: $b0
    or c                                          ; $5cf6: $b1
    or d                                          ; $5cf7: $b2
    or e                                          ; $5cf8: $b3
    nop                                           ; $5cf9: $00
    or h                                          ; $5cfa: $b4
    or l                                          ; $5cfb: $b5
    or [hl]                                       ; $5cfc: $b6
    or a                                          ; $5cfd: $b7
    cp b                                          ; $5cfe: $b8
    cp c                                          ; $5cff: $b9
    cp d                                          ; $5d00: $ba
    cp e                                          ; $5d01: $bb
    nop                                           ; $5d02: $00
    cp h                                          ; $5d03: $bc
    or [hl]                                       ; $5d04: $b6
    or l                                          ; $5d05: $b5
    or h                                          ; $5d06: $b4
    or e                                          ; $5d07: $b3
    or d                                          ; $5d08: $b2
    or c                                          ; $5d09: $b1
    or b                                          ; $5d0a: $b0
    nop                                           ; $5d0b: $00
    call nz, $c6c5                                ; $5d0c: $c4 $c5 $c6

jr_0ca_5d0f:
    rst $00                                       ; $5d0f: $c7
    ret z                                         ; $5d10: $c8

    ret                                           ; $5d11: $c9


    jp z, Jump_000_00cb                           ; $5d12: $ca $cb $00

    call z, $cecd                                 ; $5d15: $cc $cd $ce
    rst $08                                       ; $5d18: $cf
    ret nc                                        ; $5d19: $d0

    jp z, $c8c9                                   ; $5d1a: $ca $c9 $c8

    nop                                           ; $5d1d: $00
    rst $00                                       ; $5d1e: $c7
    add $c5                                       ; $5d1f: $c6 $c5
    call nz, $d9d8                                ; $5d21: $c4 $d8 $d9
    jp c, Jump_000_00db                           ; $5d24: $da $db $00

    call c, $dedd                                 ; $5d27: $dc $dd $de
    rst $18                                       ; $5d2a: $df
    ldh [$e1], a                                  ; $5d2b: $e0 $e1
    ld [c], a                                     ; $5d2d: $e2
    db $e3                                        ; $5d2e: $e3

jr_0ca_5d2f:
    nop                                           ; $5d2f: $00
    db $e4                                        ; $5d30: $e4
    push hl                                       ; $5d31: $e5
    and $e7                                       ; $5d32: $e6 $e7
    add sp, -$17                                  ; $5d34: $e8 $e9
    ld [$00eb], a                                 ; $5d36: $ea $eb $00
    db $ec                                        ; $5d39: $ec
    db $ed                                        ; $5d3a: $ed
    xor $ef                                       ; $5d3b: $ee $ef
    ldh a, [$f1]                                  ; $5d3d: $f0 $f1
    ld a, [c]                                     ; $5d3f: $f2
    di                                            ; $5d40: $f3
    nop                                           ; $5d41: $00
    db $f4                                        ; $5d42: $f4
    push af                                       ; $5d43: $f5
    or $f7                                        ; $5d44: $f6 $f7
    ld hl, sp-$07                                 ; $5d46: $f8 $f9
    ld a, [$00fb]                                 ; $5d48: $fa $fb $00
    db $fc                                        ; $5d4b: $fc
    db $fd                                        ; $5d4c: $fd
    cp $ff                                        ; $5d4d: $fe $ff
    nop                                           ; $5d4f: $00
    ld bc, $0302                                  ; $5d50: $01 $02 $03
    nop                                           ; $5d53: $00
    inc b                                         ; $5d54: $04
    dec b                                         ; $5d55: $05
    ld b, $07                                     ; $5d56: $06 $07
    ld [$0a09], sp                                ; $5d58: $08 $09 $0a
    dec bc                                        ; $5d5b: $0b
    nop                                           ; $5d5c: $00
    inc c                                         ; $5d5d: $0c
    dec c                                         ; $5d5e: $0d
    ld c, $0f                                     ; $5d5f: $0e $0f
    db $10                                        ; $5d61: $10
    ld de, $1312                                  ; $5d62: $11 $12 $13
    nop                                           ; $5d65: $00
    inc d                                         ; $5d66: $14

jr_0ca_5d67:
    dec d                                         ; $5d67: $15
    ld d, $17                                     ; $5d68: $16 $17
    jr jr_0ca_5d85                                ; $5d6a: $18 $19

    ld a, [de]                                    ; $5d6c: $1a
    dec de                                        ; $5d6d: $1b
    nop                                           ; $5d6e: $00
    inc e                                         ; $5d6f: $1c
    dec e                                         ; $5d70: $1d
    ld e, $1f                                     ; $5d71: $1e $1f
    jr nz, jr_0ca_5d96                            ; $5d73: $20 $21

    ld [hl+], a                                   ; $5d75: $22
    inc hl                                        ; $5d76: $23
    nop                                           ; $5d77: $00
    inc h                                         ; $5d78: $24
    dec h                                         ; $5d79: $25
    ld h, $27                                     ; $5d7a: $26 $27
    jr z, jr_0ca_5da7                             ; $5d7c: $28 $29

    ld a, [hl+]                                   ; $5d7e: $2a
    dec hl                                        ; $5d7f: $2b
    nop                                           ; $5d80: $00
    inc l                                         ; $5d81: $2c
    dec l                                         ; $5d82: $2d
    ld l, $2f                                     ; $5d83: $2e $2f

jr_0ca_5d85:
    jr nc, jr_0ca_5db8                            ; $5d85: $30 $31

    ld [hl-], a                                   ; $5d87: $32
    inc sp                                        ; $5d88: $33
    nop                                           ; $5d89: $00
    inc [hl]                                      ; $5d8a: $34
    dec [hl]                                      ; $5d8b: $35
    ld [hl], $37                                  ; $5d8c: $36 $37
    jr c, jr_0ca_5d67                             ; $5d8e: $38 $d7

    sub $d5                                       ; $5d90: $d6 $d5
    nop                                           ; $5d92: $00
    call nc, $d2d3                                ; $5d93: $d4 $d3 $d2

jr_0ca_5d96:
    pop de                                        ; $5d96: $d1
    jp $c1c2                                      ; $5d97: $c3 $c2 $c1


    ret nz                                        ; $5d9a: $c0

    nop                                           ; $5d9b: $00
    cp a                                          ; $5d9c: $bf
    cp [hl]                                       ; $5d9d: $be
    cp l                                          ; $5d9e: $bd
    xor a                                         ; $5d9f: $af
    xor [hl]                                      ; $5da0: $ae
    xor l                                         ; $5da1: $ad
    xor h                                         ; $5da2: $ac

jr_0ca_5da3:
    inc [hl]                                      ; $5da3: $34
    dec b                                         ; $5da4: $05
    xor e                                         ; $5da5: $ab
    xor d                                         ; $5da6: $aa

jr_0ca_5da7:
    xor c                                         ; $5da7: $a9
    ld a, b                                       ; $5da8: $78
    inc bc                                        ; $5da9: $03
    ld bc, $0240                                  ; $5daa: $01 $40 $02
    ld bc, $d020                                  ; $5dad: $01 $20 $d0
    inc d                                         ; $5db0: $14
    ld c, b                                       ; $5db1: $48
    jr nz, jr_0ca_5df4                            ; $5db2: $20 $40

    dec bc                                        ; $5db4: $0b
    inc b                                         ; $5db5: $04
    jr z, jr_0ca_5dc2                             ; $5db6: $28 $0a

jr_0ca_5db8:
    ld a, [bc]                                    ; $5db8: $0a
    inc c                                         ; $5db9: $0c
    inc c                                         ; $5dba: $0c
    or h                                          ; $5dbb: $b4
    inc b                                         ; $5dbc: $04
    ld [$010f], sp                                ; $5dbd: $08 $0f $01
    ld b, b                                       ; $5dc0: $40
    inc d                                         ; $5dc1: $14

jr_0ca_5dc2:
    ld [$1822], sp                                ; $5dc2: $08 $22 $18
    nop                                           ; $5dc5: $00
    ld c, $0d                                     ; $5dc6: $0e $0d
    ld h, e                                       ; $5dc8: $63
    ld c, $03                                     ; $5dc9: $0e $03
    ld [$0805], sp                                ; $5dcb: $08 $05 $08
    rrca                                          ; $5dce: $0f
    rrca                                          ; $5dcf: $0f
    cpl                                           ; $5dd0: $2f
    ld bc, $1218                                  ; $5dd1: $01 $18 $12
    db $10                                        ; $5dd4: $10
    jr nz, @+$0f                                  ; $5dd5: $20 $0d

    dec c                                         ; $5dd7: $0d
    inc bc                                        ; $5dd8: $03
    db $10                                        ; $5dd9: $10
    ld c, $2d                                     ; $5dda: $0e $2d
    ld l, $2e                                     ; $5ddc: $2e $2e
    dec l                                         ; $5dde: $2d
    rst $38                                       ; $5ddf: $ff
    inc b                                         ; $5de0: $04
    nop                                           ; $5de1: $00
    dec h                                         ; $5de2: $25
    jr @+$2d                                      ; $5de3: $18 $2b

    jr nz, @+$15                                  ; $5de5: $20 $13

    nop                                           ; $5de7: $00
    ld d, $08                                     ; $5de8: $16 $08
    ld h, $38                                     ; $5dea: $26 $38
    dec l                                         ; $5dec: $2d
    nop                                           ; $5ded: $00
    dec b                                         ; $5dee: $05
    db $10                                        ; $5def: $10
    rst $38                                       ; $5df0: $ff
    ld c, l                                       ; $5df1: $4d
    jr nz, jr_0ca_5e03                            ; $5df2: $20 $0f

jr_0ca_5df4:
    db $10                                        ; $5df4: $10
    dec bc                                        ; $5df5: $0b
    jr z, jr_0ca_5e3d                             ; $5df6: $28 $45

    ld [$2062], sp                                ; $5df8: $08 $62 $20
    add hl, bc                                    ; $5dfb: $09
    jr nz, jr_0ca_5e09                            ; $5dfc: $20 $0b

    db $10                                        ; $5dfe: $10

jr_0ca_5dff:
    ld a, b                                       ; $5dff: $78
    db $10                                        ; $5e00: $10
    rst $38                                       ; $5e01: $ff
    ld [bc], a                                    ; $5e02: $02

jr_0ca_5e03:
    jr nc, @+$43                                  ; $5e03: $30 $41

    jr jr_0ca_5e50                                ; $5e05: $18 $49

    jr nc, @+$52                                  ; $5e07: $30 $50

jr_0ca_5e09:
    ld [$189a], sp                                ; $5e09: $08 $9a $18
    ld c, e                                       ; $5e0c: $4b
    jr z, jr_0ca_5e55                             ; $5e0d: $28 $46

    jr nz, jr_0ca_5da3                            ; $5e0f: $20 $92

    ld [$0500], sp                                ; $5e11: $08 $00 $05
    inc d                                         ; $5e14: $14
    nop                                           ; $5e15: $00
    dec c                                         ; $5e16: $0d
    nop                                           ; $5e17: $00
    ld d, h                                       ; $5e18: $54
    ld bc, $6800                                  ; $5e19: $01 $00 $68
    ld l, c                                       ; $5e1c: $69
    ld l, d                                       ; $5e1d: $6a
    ld l, e                                       ; $5e1e: $6b
    ld l, h                                       ; $5e1f: $6c
    ld l, l                                       ; $5e20: $6d
    ld l, [hl]                                    ; $5e21: $6e
    ld l, a                                       ; $5e22: $6f
    nop                                           ; $5e23: $00
    ld [hl], b                                    ; $5e24: $70
    ld [hl], c                                    ; $5e25: $71
    ld [hl], d                                    ; $5e26: $72
    ld [hl], e                                    ; $5e27: $73
    ld [hl], d                                    ; $5e28: $72
    ld [hl], h                                    ; $5e29: $74
    ld [hl], l                                    ; $5e2a: $75
    halt                                          ; $5e2b: $76
    nop                                           ; $5e2c: $00
    ld [hl], a                                    ; $5e2d: $77
    ld a, b                                       ; $5e2e: $78
    ld a, c                                       ; $5e2f: $79
    ld a, d                                       ; $5e30: $7a
    ld a, e                                       ; $5e31: $7b
    ld a, h                                       ; $5e32: $7c
    ld [hl], b                                    ; $5e33: $70
    ld a, l                                       ; $5e34: $7d
    nop                                           ; $5e35: $00
    ld a, [hl]                                    ; $5e36: $7e
    ld a, a                                       ; $5e37: $7f
    add b                                         ; $5e38: $80
    add c                                         ; $5e39: $81
    add b                                         ; $5e3a: $80
    add d                                         ; $5e3b: $82
    add e                                         ; $5e3c: $83

jr_0ca_5e3d:
    add h                                         ; $5e3d: $84
    ld [$8685], sp                                ; $5e3e: $08 $85 $86
    ld a, h                                       ; $5e41: $7c
    ld a, e                                       ; $5e42: $7b
    ld [bc], a                                    ; $5e43: $02
    ld [$8887], sp                                ; $5e44: $08 $87 $88
    add b                                         ; $5e47: $80
    nop                                           ; $5e48: $00
    adc c                                         ; $5e49: $89
    adc d                                         ; $5e4a: $8a
    sub a                                         ; $5e4b: $97
    sbc b                                         ; $5e4c: $98
    sbc c                                         ; $5e4d: $99
    sbc d                                         ; $5e4e: $9a
    sbc e                                         ; $5e4f: $9b

jr_0ca_5e50:
    sbc h                                         ; $5e50: $9c
    inc b                                         ; $5e51: $04
    adc d                                         ; $5e52: $8a
    adc c                                         ; $5e53: $89
    sub c                                         ; $5e54: $91

jr_0ca_5e55:
    adc b                                         ; $5e55: $88
    add a                                         ; $5e56: $87
    ld [bc], a                                    ; $5e57: $02
    ld [$9392], sp                                ; $5e58: $08 $92 $93
    db $10                                        ; $5e5b: $10
    sub h                                         ; $5e5c: $94
    sub l                                         ; $5e5d: $95
    sub [hl]                                      ; $5e5e: $96
    inc d                                         ; $5e5f: $14
    jr jr_0ca_5dff                                ; $5e60: $18 $9d

    sbc [hl]                                      ; $5e62: $9e
    sbc b                                         ; $5e63: $98
    sub a                                         ; $5e64: $97
    nop                                           ; $5e65: $00
    sub [hl]                                      ; $5e66: $96
    sub l                                         ; $5e67: $95
    sub h                                         ; $5e68: $94
    sub e                                         ; $5e69: $93
    sub d                                         ; $5e6a: $92
    sbc a                                         ; $5e6b: $9f
    and b                                         ; $5e6c: $a0
    and c                                         ; $5e6d: $a1
    nop                                           ; $5e6e: $00
    and d                                         ; $5e6f: $a2
    and e                                         ; $5e70: $a3
    sub b                                         ; $5e71: $90
    adc a                                         ; $5e72: $8f
    adc [hl]                                      ; $5e73: $8e
    adc l                                         ; $5e74: $8d
    adc h                                         ; $5e75: $8c
    adc e                                         ; $5e76: $8b
    nop                                           ; $5e77: $00
    and h                                         ; $5e78: $a4
    and l                                         ; $5e79: $a5
    adc a                                         ; $5e7a: $8f
    sub b                                         ; $5e7b: $90
    and e                                         ; $5e7c: $a3
    and d                                         ; $5e7d: $a2
    and c                                         ; $5e7e: $a1
    and b                                         ; $5e7f: $a0
    nop                                           ; $5e80: $00
    sbc a                                         ; $5e81: $9f
    and [hl]                                      ; $5e82: $a6
    and a                                         ; $5e83: $a7
    xor b                                         ; $5e84: $a8
    xor c                                         ; $5e85: $a9
    xor d                                         ; $5e86: $aa
    xor e                                         ; $5e87: $ab
    xor h                                         ; $5e88: $ac
    nop                                           ; $5e89: $00
    xor l                                         ; $5e8a: $ad
    xor [hl]                                      ; $5e8b: $ae
    xor a                                         ; $5e8c: $af
    or b                                          ; $5e8d: $b0
    or c                                          ; $5e8e: $b1
    or d                                          ; $5e8f: $b2
    xor h                                         ; $5e90: $ac
    xor e                                         ; $5e91: $ab
    nop                                           ; $5e92: $00
    xor d                                         ; $5e93: $aa
    xor c                                         ; $5e94: $a9
    xor b                                         ; $5e95: $a8
    and a                                         ; $5e96: $a7
    and [hl]                                      ; $5e97: $a6
    or e                                          ; $5e98: $b3
    or h                                          ; $5e99: $b4
    or l                                          ; $5e9a: $b5
    nop                                           ; $5e9b: $00
    or [hl]                                       ; $5e9c: $b6
    or a                                          ; $5e9d: $b7
    cp b                                          ; $5e9e: $b8
    cp c                                          ; $5e9f: $b9
    cp d                                          ; $5ea0: $ba
    cp e                                          ; $5ea1: $bb
    cp h                                          ; $5ea2: $bc
    cp l                                          ; $5ea3: $bd
    nop                                           ; $5ea4: $00
    cp [hl]                                       ; $5ea5: $be
    cp a                                          ; $5ea6: $bf
    cp c                                          ; $5ea7: $b9
    cp b                                          ; $5ea8: $b8
    or a                                          ; $5ea9: $b7
    or [hl]                                       ; $5eaa: $b6
    or l                                          ; $5eab: $b5
    or h                                          ; $5eac: $b4
    nop                                           ; $5ead: $00
    or e                                          ; $5eae: $b3
    ret nz                                        ; $5eaf: $c0

    pop bc                                        ; $5eb0: $c1
    jp nz, $c4c3                                  ; $5eb1: $c2 $c3 $c4

    push bc                                       ; $5eb4: $c5
    add $00                                       ; $5eb5: $c6 $00
    rst $00                                       ; $5eb7: $c7
    ret z                                         ; $5eb8: $c8

    ret                                           ; $5eb9: $c9


    jp z, $cccb                                   ; $5eba: $ca $cb $cc

    add $c5                                       ; $5ebd: $c6 $c5
    nop                                           ; $5ebf: $00
    call nz, $c2c3                                ; $5ec0: $c4 $c3 $c2
    pop bc                                        ; $5ec3: $c1
    ret nz                                        ; $5ec4: $c0

    call $cfce                                    ; $5ec5: $cd $ce $cf
    nop                                           ; $5ec8: $00
    ret nc                                        ; $5ec9: $d0

    pop de                                        ; $5eca: $d1
    jp nc, $d4d3                                  ; $5ecb: $d2 $d3 $d4

    push de                                       ; $5ece: $d5
    sub $d7                                       ; $5ecf: $d6 $d7
    nop                                           ; $5ed1: $00
    ret c                                         ; $5ed2: $d8

    reti                                          ; $5ed3: $d9


    db $d3                                        ; $5ed4: $d3
    jp nc, $d0d1                                  ; $5ed5: $d2 $d1 $d0

    rst $08                                       ; $5ed8: $cf
    adc $00                                       ; $5ed9: $ce $00
    call $dbda                                    ; $5edb: $cd $da $db
    call c, $dedd                                 ; $5ede: $dc $dd $de
    rst $18                                       ; $5ee1: $df
    ldh [rP1], a                                  ; $5ee2: $e0 $00
    pop hl                                        ; $5ee4: $e1
    ld [c], a                                     ; $5ee5: $e2
    db $e3                                        ; $5ee6: $e3
    db $e4                                        ; $5ee7: $e4
    push hl                                       ; $5ee8: $e5
    and $e0                                       ; $5ee9: $e6 $e0
    rst $18                                       ; $5eeb: $df
    nop                                           ; $5eec: $00
    sbc $dd                                       ; $5eed: $de $dd
    call c, $dadb                                 ; $5eef: $dc $db $da
    rst $20                                       ; $5ef2: $e7
    add sp, -$17                                  ; $5ef3: $e8 $e9
    nop                                           ; $5ef5: $00
    ld [$eceb], a                                 ; $5ef6: $ea $eb $ec
    db $ed                                        ; $5ef9: $ed
    xor $ef                                       ; $5efa: $ee $ef
    ldh a, [$f1]                                  ; $5efc: $f0 $f1
    nop                                           ; $5efe: $00
    ld a, [c]                                     ; $5eff: $f2
    di                                            ; $5f00: $f3
    db $ed                                        ; $5f01: $ed
    db $ec                                        ; $5f02: $ec
    db $eb                                        ; $5f03: $eb
    ld [$e8e9], a                                 ; $5f04: $ea $e9 $e8
    nop                                           ; $5f07: $00
    rst $20                                       ; $5f08: $e7
    db $f4                                        ; $5f09: $f4
    push af                                       ; $5f0a: $f5
    or $f7                                        ; $5f0b: $f6 $f7
    ld hl, sp-$07                                 ; $5f0d: $f8 $f9
    ld a, [$fb00]                                 ; $5f0f: $fa $00 $fb
    db $fc                                        ; $5f12: $fc
    db $fd                                        ; $5f13: $fd
    cp $ff                                        ; $5f14: $fe $ff
    nop                                           ; $5f16: $00
    ld a, [$00f9]                                 ; $5f17: $fa $f9 $00
    ld hl, sp-$09                                 ; $5f1a: $f8 $f7
    or $f5                                        ; $5f1c: $f6 $f5
    db $f4                                        ; $5f1e: $f4
    ld bc, $0302                                  ; $5f1f: $01 $02 $03
    nop                                           ; $5f22: $00
    inc b                                         ; $5f23: $04
    dec b                                         ; $5f24: $05
    ld b, $07                                     ; $5f25: $06 $07
    ld [$0a09], sp                                ; $5f27: $08 $09 $0a
    dec bc                                        ; $5f2a: $0b
    nop                                           ; $5f2b: $00
    inc c                                         ; $5f2c: $0c
    dec c                                         ; $5f2d: $0d
    rlca                                          ; $5f2e: $07
    ld b, $05                                     ; $5f2f: $06 $05
    inc b                                         ; $5f31: $04
    inc bc                                        ; $5f32: $03
    ld [bc], a                                    ; $5f33: $02
    inc b                                         ; $5f34: $04
    ld bc, $0303                                  ; $5f35: $01 $03 $03
    ld [bc], a                                    ; $5f38: $02
    inc b                                         ; $5f39: $04
    ld bc, $0230                                  ; $5f3a: $01 $30 $02
    inc bc                                        ; $5f3d: $03
    sub l                                         ; $5f3e: $95
    ld bc, $0110                                  ; $5f3f: $01 $10 $01
    ld bc, $0813                                  ; $5f42: $01 $13 $08
    inc c                                         ; $5f45: $0c
    ld bc, $2120                                  ; $5f46: $01 $20 $21

jr_0ca_5f49:
    ld bc, $2810                                  ; $5f49: $01 $10 $28
    add hl, bc                                    ; $5f4c: $09
    add hl, bc                                    ; $5f4d: $09
    stop                                          ; $5f4e: $10 $00
    ld c, a                                       ; $5f50: $4f
    ld bc, $2c10                                  ; $5f51: $01 $10 $2c
    inc c                                         ; $5f54: $0c
    inc c                                         ; $5f55: $0c
    ld d, [hl]                                    ; $5f56: $56
    add hl, hl                                    ; $5f57: $29
    ld bc, $0f10                                  ; $5f58: $01 $10 $0f
    ld bc, $0b10                                  ; $5f5b: $01 $10 $0b
    ld bc, $0a00                                  ; $5f5e: $01 $00 $0a
    nop                                           ; $5f61: $00
    cpl                                           ; $5f62: $2f
    add b                                         ; $5f63: $80
    ld bc, $0e18                                  ; $5f64: $01 $18 $0e
    dec bc                                        ; $5f67: $0b
    dec bc                                        ; $5f68: $0b
    ld c, $0b                                     ; $5f69: $0e $0b
    ld l, e                                       ; $5f6b: $6b
    ld l, e                                       ; $5f6c: $6b
    nop                                           ; $5f6d: $00
    ld l, e                                       ; $5f6e: $6b
    ld l, [hl]                                    ; $5f6f: $6e
    ld l, e                                       ; $5f70: $6b
    ld l, e                                       ; $5f71: $6b
    ld c, $0b                                     ; $5f72: $0e $0b
    ld c, e                                       ; $5f74: $4b
    ld c, e                                       ; $5f75: $4b
    rlca                                          ; $5f76: $07
    ld l, $2b                                     ; $5f77: $2e $2b
    dec hl                                        ; $5f79: $2b
    ld l, $2b                                     ; $5f7a: $2e $2b
    inc de                                        ; $5f7c: $13
    ld [$0018], sp                                ; $5f7d: $08 $18 $00
    rlca                                          ; $5f80: $07
    db $10                                        ; $5f81: $10
    ld b, a                                       ; $5f82: $47
    ld c, $11                                     ; $5f83: $0e $11
    ld [$2e2b], sp                                ; $5f85: $08 $2b $2e
    ld l, $11                                     ; $5f88: $2e $11
    jr @+$12                                      ; $5f8a: $18 $10

    nop                                           ; $5f8c: $00
    ccf                                           ; $5f8d: $3f
    ld [$2b7f], sp                                ; $5f8e: $08 $7f $2b
    ld bc, $2518                                  ; $5f91: $01 $18 $25
    jr z, jr_0ca_5fc1                             ; $5f94: $28 $2b

    db $10                                        ; $5f96: $10
    inc h                                         ; $5f97: $24
    nop                                           ; $5f98: $00
    rla                                           ; $5f99: $17
    ld [$1050], sp                                ; $5f9a: $08 $50 $10
    ld d, l                                       ; $5f9d: $55
    ld [$01ff], sp                                ; $5f9e: $08 $ff $01
    ld [$0013], sp                                ; $5fa1: $08 $13 $00
    ld d, c                                       ; $5fa4: $51
    ld [$080d], sp                                ; $5fa5: $08 $0d $08
    inc b                                         ; $5fa8: $04
    jr nz, jr_0ca_5fd3                            ; $5fa9: $20 $28

    nop                                           ; $5fab: $00
    ld d, b                                       ; $5fac: $50
    db $10                                        ; $5fad: $10
    jr z, jr_0ca_5fc0                             ; $5fae: $28 $10

    rst $38                                       ; $5fb0: $ff
    ld de, $8010                                  ; $5fb1: $11 $10 $80
    ld [$0050], sp                                ; $5fb4: $08 $50 $00
    ld a, c                                       ; $5fb7: $79
    ld [$2010], sp                                ; $5fb8: $08 $10 $20
    ld d, e                                       ; $5fbb: $53
    db $10                                        ; $5fbc: $10
    ld d, b                                       ; $5fbd: $50
    jr z, jr_0ca_5f49                             ; $5fbe: $28 $89

jr_0ca_5fc0:
    db $10                                        ; $5fc0: $10

jr_0ca_5fc1:
    ret nz                                        ; $5fc1: $c0

    ld h, $10                                     ; $5fc2: $26 $10
    inc a                                         ; $5fc4: $3c
    jr z, jr_0ca_5ff2                             ; $5fc5: $28 $2b

    ld l, $14                                     ; $5fc7: $2e $14
    nop                                           ; $5fc9: $00
    dec c                                         ; $5fca: $0d
    nop                                           ; $5fcb: $00
    adc d                                         ; $5fcc: $8a
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    ld l, b                                       ; $5fcf: $68
    ld l, c                                       ; $5fd0: $69
    ld l, d                                       ; $5fd1: $6a
    ld l, e                                       ; $5fd2: $6b

jr_0ca_5fd3:
    ld l, h                                       ; $5fd3: $6c
    ld l, l                                       ; $5fd4: $6d
    ld l, [hl]                                    ; $5fd5: $6e
    ld l, a                                       ; $5fd6: $6f
    nop                                           ; $5fd7: $00
    ld l, d                                       ; $5fd8: $6a
    ld [hl], b                                    ; $5fd9: $70
    ld [hl], c                                    ; $5fda: $71
    ld l, b                                       ; $5fdb: $68
    ld l, c                                       ; $5fdc: $69
    ld [hl], d                                    ; $5fdd: $72
    ld [hl], e                                    ; $5fde: $73
    ld [hl], h                                    ; $5fdf: $74
    add b                                         ; $5fe0: $80
    stop                                          ; $5fe1: $10 $00
    ld [hl], b                                    ; $5fe3: $70
    ld [hl], l                                    ; $5fe4: $75
    halt                                          ; $5fe5: $76
    ld [hl], a                                    ; $5fe6: $77
    ld a, b                                       ; $5fe7: $78
    ld [hl], l                                    ; $5fe8: $75
    ld a, c                                       ; $5fe9: $79
    nop                                           ; $5fea: $00
    ld a, d                                       ; $5feb: $7a
    ld a, b                                       ; $5fec: $78
    ld [hl], a                                    ; $5fed: $77
    ld a, b                                       ; $5fee: $78
    ld a, e                                       ; $5fef: $7b
    ld [hl], l                                    ; $5ff0: $75
    halt                                          ; $5ff1: $76

jr_0ca_5ff2:
    ld a, h                                       ; $5ff2: $7c
    jr nz, jr_0ca_6072                            ; $5ff3: $20 $7d

    ld a, [hl]                                    ; $5ff5: $7e
    db $10                                        ; $5ff6: $10
    ld [$807f], sp                                ; $5ff7: $08 $7f $80
    add c                                         ; $5ffa: $81
    add d                                         ; $5ffb: $82
    add e                                         ; $5ffc: $83
    nop                                           ; $5ffd: $00
    add h                                         ; $5ffe: $84
    add l                                         ; $5fff: $85

jr_0ca_6000:
    add [hl]                                      ; $6000: $86
    add c                                         ; $6001: $81
    add d                                         ; $6002: $82
    add a                                         ; $6003: $87
    ld a, a                                       ; $6004: $7f
    add b                                         ; $6005: $80
    jr nz, @-$76                                  ; $6006: $20 $88

    adc c                                         ; $6008: $89
    dec b                                         ; $6009: $05
    nop                                           ; $600a: $00
    add c                                         ; $600b: $81
    add d                                         ; $600c: $82
    adc d                                         ; $600d: $8a
    adc e                                         ; $600e: $8b
    adc h                                         ; $600f: $8c
    nop                                           ; $6010: $00
    adc l                                         ; $6011: $8d
    adc [hl]                                      ; $6012: $8e
    adc a                                         ; $6013: $8f
    sub b                                         ; $6014: $90
    sub c                                         ; $6015: $91
    adc h                                         ; $6016: $8c
    adc l                                         ; $6017: $8d
    sub d                                         ; $6018: $92
    ld h, b                                       ; $6019: $60
    sub e                                         ; $601a: $93
    inc c                                         ; $601b: $0c
    ld [$0806], sp                                ; $601c: $08 $06 $08
    sub h                                         ; $601f: $94
    sub l                                         ; $6020: $95
    sub [hl]                                      ; $6021: $96
    sub a                                         ; $6022: $97
    sbc b                                         ; $6023: $98
    ld b, b                                       ; $6024: $40
    sbc c                                         ; $6025: $99
    ld b, $58                                     ; $6026: $06 $58
    sbc d                                         ; $6028: $9a
    sbc e                                         ; $6029: $9b
    sbc h                                         ; $602a: $9c
    sbc l                                         ; $602b: $9d
    sbc [hl]                                      ; $602c: $9e
    sbc a                                         ; $602d: $9f
    add c                                         ; $602e: $81
    ld b, $58                                     ; $602f: $06 $58
    and b                                         ; $6031: $a0
    and c                                         ; $6032: $a1
    and d                                         ; $6033: $a2
    and e                                         ; $6034: $a3
    and h                                         ; $6035: $a4
    and l                                         ; $6036: $a5
    ld b, $58                                     ; $6037: $06 $58
    ld [bc], a                                    ; $6039: $02
    and [hl]                                      ; $603a: $a6
    and a                                         ; $603b: $a7
    xor b                                         ; $603c: $a8
    xor c                                         ; $603d: $a9
    xor d                                         ; $603e: $aa
    xor e                                         ; $603f: $ab
    ld b, $58                                     ; $6040: $06 $58
    xor h                                         ; $6042: $ac
    inc b                                         ; $6043: $04
    xor l                                         ; $6044: $ad
    xor [hl]                                      ; $6045: $ae
    xor a                                         ; $6046: $af
    or b                                          ; $6047: $b0
    or c                                          ; $6048: $b1
    ld b, $58                                     ; $6049: $06 $58
    or d                                          ; $604b: $b2
    or e                                          ; $604c: $b3
    ld [$b5b4], sp                                ; $604d: $08 $b4 $b5
    or [hl]                                       ; $6050: $b6
    or a                                          ; $6051: $b7
    ld b, $58                                     ; $6052: $06 $58
    cp b                                          ; $6054: $b8
    cp c                                          ; $6055: $b9
    cp d                                          ; $6056: $ba
    dec e                                         ; $6057: $1d
    cp e                                          ; $6058: $bb
    cp h                                          ; $6059: $bc
    cp l                                          ; $605a: $bd
    ld b, $58                                     ; $605b: $06 $58
    sub h                                         ; $605d: $94
    jr z, jr_0ca_6000                             ; $605e: $28 $a0

    add sp, $05                                   ; $6060: $e8 $05
    ld bc, $bbf8                                  ; $6062: $01 $f8 $bb
    inc hl                                        ; $6065: $23
    jr jr_0ca_6075                                ; $6066: $18 $0d

    ld bc, $0b30                                  ; $6068: $01 $30 $0b
    db $10                                        ; $606b: $10
    db $10                                        ; $606c: $10
    ld [$010f], sp                                ; $606d: $08 $0f $01
    nop                                           ; $6070: $00
    rla                                           ; $6071: $17

jr_0ca_6072:
    ld [$08df], sp                                ; $6072: $08 $df $08

jr_0ca_6075:
    ld [$2804], sp                                ; $6075: $08 $04 $28
    ld c, $01                                     ; $6078: $0e $01
    nop                                           ; $607a: $00
    add hl, bc                                    ; $607b: $09
    jr nc, jr_0ca_6082                            ; $607c: $30 $04

    ld hl, sp+$26                                 ; $607e: $f8 $26
    ld hl, sp+$48                                 ; $6080: $f8 $48

jr_0ca_6082:
    ld hl, sp-$40                                 ; $6082: $f8 $c0
    ld l, d                                       ; $6084: $6a
    ld hl, sp-$74                                 ; $6085: $f8 $8c
    ldh [rNR14], a                                ; $6087: $e0 $14
    nop                                           ; $6089: $00
    dec c                                         ; $608a: $0d
    nop                                           ; $608b: $00
    ld e, b                                       ; $608c: $58
    ld bc, $6800                                  ; $608d: $01 $00 $68
    ld l, c                                       ; $6090: $69
    ld l, d                                       ; $6091: $6a
    ld l, e                                       ; $6092: $6b
    ld l, h                                       ; $6093: $6c
    ld l, l                                       ; $6094: $6d
    ld l, [hl]                                    ; $6095: $6e
    ld l, a                                       ; $6096: $6f
    nop                                           ; $6097: $00
    ld [hl], b                                    ; $6098: $70
    ld [hl], c                                    ; $6099: $71
    ld [hl], d                                    ; $609a: $72
    ld l, a                                       ; $609b: $6f
    ld [hl], e                                    ; $609c: $73
    ld [hl], h                                    ; $609d: $74
    ld [hl], l                                    ; $609e: $75
    ld l, h                                       ; $609f: $6c
    nop                                           ; $60a0: $00
    ld l, e                                       ; $60a1: $6b
    ld l, d                                       ; $60a2: $6a
    ld l, c                                       ; $60a3: $69
    halt                                          ; $60a4: $76
    ld [hl], a                                    ; $60a5: $77
    ld a, b                                       ; $60a6: $78
    ld a, c                                       ; $60a7: $79
    ld a, d                                       ; $60a8: $7a
    nop                                           ; $60a9: $00
    ld a, e                                       ; $60aa: $7b
    ld a, h                                       ; $60ab: $7c
    ld a, l                                       ; $60ac: $7d
    ld a, [hl]                                    ; $60ad: $7e
    ld a, a                                       ; $60ae: $7f
    add b                                         ; $60af: $80
    add c                                         ; $60b0: $81
    ld a, [hl]                                    ; $60b1: $7e
    nop                                           ; $60b2: $00
    ld [hl], e                                    ; $60b3: $73
    add d                                         ; $60b4: $82
    add e                                         ; $60b5: $83
    ld a, e                                       ; $60b6: $7b
    ld a, d                                       ; $60b7: $7a
    ld a, c                                       ; $60b8: $79
    ld a, b                                       ; $60b9: $78
    ld [hl], a                                    ; $60ba: $77
    nop                                           ; $60bb: $00
    add h                                         ; $60bc: $84
    add l                                         ; $60bd: $85
    add [hl]                                      ; $60be: $86
    add a                                         ; $60bf: $87
    adc b                                         ; $60c0: $88
    adc c                                         ; $60c1: $89
    adc d                                         ; $60c2: $8a
    adc e                                         ; $60c3: $8b
    nop                                           ; $60c4: $00
    adc h                                         ; $60c5: $8c
    adc l                                         ; $60c6: $8d
    adc [hl]                                      ; $60c7: $8e
    adc e                                         ; $60c8: $8b
    adc a                                         ; $60c9: $8f
    sub b                                         ; $60ca: $90
    sub c                                         ; $60cb: $91
    adc b                                         ; $60cc: $88
    nop                                           ; $60cd: $00
    add a                                         ; $60ce: $87
    add [hl]                                      ; $60cf: $86
    add l                                         ; $60d0: $85
    add h                                         ; $60d1: $84
    sub d                                         ; $60d2: $92
    sub e                                         ; $60d3: $93
    sub h                                         ; $60d4: $94
    sub l                                         ; $60d5: $95
    nop                                           ; $60d6: $00
    sub [hl]                                      ; $60d7: $96
    sub a                                         ; $60d8: $97
    sbc b                                         ; $60d9: $98
    sbc c                                         ; $60da: $99
    sbc d                                         ; $60db: $9a
    sbc e                                         ; $60dc: $9b
    sbc h                                         ; $60dd: $9c
    sbc l                                         ; $60de: $9d
    nop                                           ; $60df: $00
    sbc c                                         ; $60e0: $99
    sbc b                                         ; $60e1: $98
    sub a                                         ; $60e2: $97
    sub [hl]                                      ; $60e3: $96
    sub l                                         ; $60e4: $95
    sub h                                         ; $60e5: $94
    sub e                                         ; $60e6: $93
    sub d                                         ; $60e7: $92
    nop                                           ; $60e8: $00
    sbc [hl]                                      ; $60e9: $9e
    sbc a                                         ; $60ea: $9f
    and b                                         ; $60eb: $a0
    and c                                         ; $60ec: $a1
    and d                                         ; $60ed: $a2
    and e                                         ; $60ee: $a3
    and h                                         ; $60ef: $a4
    and l                                         ; $60f0: $a5
    nop                                           ; $60f1: $00
    and [hl]                                      ; $60f2: $a6
    and a                                         ; $60f3: $a7
    xor b                                         ; $60f4: $a8
    xor c                                         ; $60f5: $a9
    and l                                         ; $60f6: $a5
    and h                                         ; $60f7: $a4
    and e                                         ; $60f8: $a3
    and d                                         ; $60f9: $a2
    nop                                           ; $60fa: $00
    and c                                         ; $60fb: $a1
    and b                                         ; $60fc: $a0
    sbc a                                         ; $60fd: $9f
    sbc [hl]                                      ; $60fe: $9e
    xor d                                         ; $60ff: $aa
    xor e                                         ; $6100: $ab
    xor h                                         ; $6101: $ac
    xor l                                         ; $6102: $ad
    nop                                           ; $6103: $00
    xor [hl]                                      ; $6104: $ae
    xor a                                         ; $6105: $af
    or b                                          ; $6106: $b0
    or c                                          ; $6107: $b1
    or d                                          ; $6108: $b2
    or e                                          ; $6109: $b3
    or h                                          ; $610a: $b4
    or l                                          ; $610b: $b5
    nop                                           ; $610c: $00
    or c                                          ; $610d: $b1
    or b                                          ; $610e: $b0
    xor a                                         ; $610f: $af
    xor [hl]                                      ; $6110: $ae
    xor l                                         ; $6111: $ad
    xor h                                         ; $6112: $ac
    xor e                                         ; $6113: $ab
    xor d                                         ; $6114: $aa
    nop                                           ; $6115: $00
    or [hl]                                       ; $6116: $b6
    or a                                          ; $6117: $b7
    cp b                                          ; $6118: $b8
    cp c                                          ; $6119: $b9
    cp d                                          ; $611a: $ba
    cp e                                          ; $611b: $bb
    cp h                                          ; $611c: $bc
    cp l                                          ; $611d: $bd
    nop                                           ; $611e: $00
    cp [hl]                                       ; $611f: $be
    cp a                                          ; $6120: $bf
    ret nz                                        ; $6121: $c0

    pop bc                                        ; $6122: $c1
    cp l                                          ; $6123: $bd
    cp h                                          ; $6124: $bc
    cp e                                          ; $6125: $bb
    cp d                                          ; $6126: $ba
    nop                                           ; $6127: $00
    cp c                                          ; $6128: $b9
    cp b                                          ; $6129: $b8
    or a                                          ; $612a: $b7
    or [hl]                                       ; $612b: $b6
    jp nz, $c4c3                                  ; $612c: $c2 $c3 $c4

    push bc                                       ; $612f: $c5
    nop                                           ; $6130: $00
    add $c7                                       ; $6131: $c6 $c7
    ret z                                         ; $6133: $c8

    ret                                           ; $6134: $c9


    jp z, $cccb                                   ; $6135: $ca $cb $cc

    call $c900                                    ; $6138: $cd $00 $c9
    ret z                                         ; $613b: $c8

    rst $00                                       ; $613c: $c7
    add $c5                                       ; $613d: $c6 $c5
    call nz, $c2c3                                ; $613f: $c4 $c3 $c2
    nop                                           ; $6142: $00
    adc $cf                                       ; $6143: $ce $cf
    ret nc                                        ; $6145: $d0

    pop de                                        ; $6146: $d1
    jp nc, $d4d3                                  ; $6147: $d2 $d3 $d4

    push de                                       ; $614a: $d5
    nop                                           ; $614b: $00
    sub $d7                                       ; $614c: $d6 $d7
    ret c                                         ; $614e: $d8

    reti                                          ; $614f: $d9


    push de                                       ; $6150: $d5
    call nc, $d2d3                                ; $6151: $d4 $d3 $d2
    nop                                           ; $6154: $00
    pop de                                        ; $6155: $d1
    ret nc                                        ; $6156: $d0

    rst $08                                       ; $6157: $cf
    adc $da                                       ; $6158: $ce $da
    db $db                                        ; $615a: $db
    call c, Call_000_00dd                         ; $615b: $dc $dd $00
    sbc $df                                       ; $615e: $de $df
    ldh [$e1], a                                  ; $6160: $e0 $e1
    ld [c], a                                     ; $6162: $e2
    db $e3                                        ; $6163: $e3
    db $e4                                        ; $6164: $e4
    push hl                                       ; $6165: $e5
    nop                                           ; $6166: $00
    pop hl                                        ; $6167: $e1
    ldh [$df], a                                  ; $6168: $e0 $df
    sbc $dd                                       ; $616a: $de $dd
    call c, $dadb                                 ; $616c: $dc $db $da
    nop                                           ; $616f: $00
    and $e7                                       ; $6170: $e6 $e7
    add sp, -$17                                  ; $6172: $e8 $e9
    ld [$eceb], a                                 ; $6174: $ea $eb $ec
    db $ed                                        ; $6177: $ed
    nop                                           ; $6178: $00
    xor $ef                                       ; $6179: $ee $ef
    ldh a, [$f1]                                  ; $617b: $f0 $f1
    db $ed                                        ; $617d: $ed
    db $ec                                        ; $617e: $ec
    db $eb                                        ; $617f: $eb
    ld [$e900], a                                 ; $6180: $ea $00 $e9
    add sp, -$19                                  ; $6183: $e8 $e7
    and $f2                                       ; $6185: $e6 $f2
    di                                            ; $6187: $f3
    db $f4                                        ; $6188: $f4
    push af                                       ; $6189: $f5
    nop                                           ; $618a: $00
    or $f7                                        ; $618b: $f6 $f7
    ld hl, sp-$07                                 ; $618d: $f8 $f9
    ld a, [$fcfb]                                 ; $618f: $fa $fb $fc
    db $fd                                        ; $6192: $fd
    nop                                           ; $6193: $00
    ld sp, hl                                     ; $6194: $f9
    ld hl, sp-$09                                 ; $6195: $f8 $f7
    or $f5                                        ; $6197: $f6 $f5
    db $f4                                        ; $6199: $f4
    di                                            ; $619a: $f3
    ld a, [c]                                     ; $619b: $f2
    nop                                           ; $619c: $00
    cp $ff                                        ; $619d: $fe $ff
    nop                                           ; $619f: $00
    ld bc, $0302                                  ; $61a0: $01 $02 $03
    inc b                                         ; $61a3: $04
    dec b                                         ; $61a4: $05
    nop                                           ; $61a5: $00
    ld b, $07                                     ; $61a6: $06 $07
    ld [$0509], sp                                ; $61a8: $08 $09 $05
    inc b                                         ; $61ab: $04
    inc bc                                        ; $61ac: $03
    ld [bc], a                                    ; $61ad: $02
    dec b                                         ; $61ae: $05
    ld bc, $ff00                                  ; $61af: $01 $00 $ff
    cp $02                                        ; $61b2: $fe $02
    ld bc, $0118                                  ; $61b4: $01 $18 $01
    ld [$4600], sp                                ; $61b7: $08 $00 $46
    ld hl, $080c                                  ; $61ba: $21 $0c $08
    ld [hl+], a                                   ; $61bd: $22
    ld [hl+], a                                   ; $61be: $22
    ld [hl+], a                                   ; $61bf: $22
    inc de                                        ; $61c0: $13
    jr nz, jr_0ca_61d7                            ; $61c1: $20 $14

    nop                                           ; $61c3: $00
    ld a, [bc]                                    ; $61c4: $0a
    ld sp, $210a                                  ; $61c5: $31 $0a $21
    inc b                                         ; $61c8: $04
    nop                                           ; $61c9: $00
    inc de                                        ; $61ca: $13
    nop                                           ; $61cb: $00
    ld [hl+], a                                   ; $61cc: $22
    ld [hl+], a                                   ; $61cd: $22
    ld a, [bc]                                    ; $61ce: $0a
    ld bc, $5518                                  ; $61cf: $01 $18 $55
    add hl, bc                                    ; $61d2: $09
    ld [$2900], sp                                ; $61d3: $08 $00 $29
    inc c                                         ; $61d6: $0c

jr_0ca_61d7:
    nop                                           ; $61d7: $00
    ld a, [hl+]                                   ; $61d8: $2a
    ld bc, $0f08                                  ; $61d9: $01 $08 $0f
    ld bc, $4140                                  ; $61dc: $01 $40 $41
    cpl                                           ; $61df: $2f
    ld bc, $0d20                                  ; $61e0: $01 $20 $0d
    dec c                                         ; $61e3: $0d
    inc c                                         ; $61e4: $0c
    inc c                                         ; $61e5: $0c
    inc c                                         ; $61e6: $0c
    dec b                                         ; $61e7: $05
    nop                                           ; $61e8: $00
    sub b                                         ; $61e9: $90
    ld [bc], a                                    ; $61ea: $02
    nop                                           ; $61eb: $00
    dec c                                         ; $61ec: $0d
    inc l                                         ; $61ed: $2c
    ld bc, $2d00                                  ; $61ee: $01 $00 $2d
    dec l                                         ; $61f1: $2d
    inc l                                         ; $61f2: $2c
    inc l                                         ; $61f3: $2c
    ld [$0011], a                                 ; $61f4: $ea $11 $00
    db $10                                        ; $61f7: $10
    db $10                                        ; $61f8: $10
    ld [bc], a                                    ; $61f9: $02
    nop                                           ; $61fa: $00
    inc c                                         ; $61fb: $0c
    rrca                                          ; $61fc: $0f
    nop                                           ; $61fd: $00
    dec l                                         ; $61fe: $2d
    dec d                                         ; $61ff: $15
    nop                                           ; $6200: $00
    dec l                                         ; $6201: $2d
    call Call_000_0824                            ; $6202: $cd $24 $08
    jr z, jr_0ca_621f                             ; $6205: $28 $18

    inc c                                         ; $6207: $0c
    dec c                                         ; $6208: $0d
    ld de, $2800                                  ; $6209: $11 $00 $28
    ld [$392d], sp                                ; $620c: $08 $2d $39
    ld [$16fb], sp                                ; $620f: $08 $fb $16
    jr nz, @+$16                                  ; $6212: $20 $14

    jr jr_0ca_6241                                ; $6214: $18 $2b

    nop                                           ; $6216: $00
    daa                                           ; $6217: $27
    jr @+$15                                      ; $6218: $18 $13

    db $10                                        ; $621a: $10
    inc c                                         ; $621b: $0c
    scf                                           ; $621c: $37
    nop                                           ; $621d: $00

jr_0ca_621e:
    ld c, [hl]                                    ; $621e: $4e

jr_0ca_621f:
    nop                                           ; $621f: $00
    cpl                                           ; $6220: $2f
    inc l                                         ; $6221: $2c
    dec l                                         ; $6222: $2d
    inc de                                        ; $6223: $13
    ld b, b                                       ; $6224: $40
    dec c                                         ; $6225: $0d
    ld c, h                                       ; $6226: $4c
    ld [$0840], sp                                ; $6227: $08 $40 $08
    ld h, h                                       ; $622a: $64
    db $10                                        ; $622b: $10
    jr z, jr_0ca_6256                             ; $622c: $28 $28

    rst $38                                       ; $622e: $ff
    inc a                                         ; $622f: $3c
    jr jr_0ca_6296                                ; $6230: $18 $64

    nop                                           ; $6232: $00
    adc e                                         ; $6233: $8b
    jr z, jr_0ca_629a                             ; $6234: $28 $64

    db $10                                        ; $6236: $10
    ld h, a                                       ; $6237: $67
    db $10                                        ; $6238: $10
    ld [hl], $18                                  ; $6239: $36 $18
    and b                                         ; $623b: $a0
    jr nz, jr_0ca_627a                            ; $623c: $20 $3c

    jr nz, jr_0ca_6254                            ; $623e: $20 $14

    nop                                           ; $6240: $00

jr_0ca_6241:
    dec c                                         ; $6241: $0d
    nop                                           ; $6242: $00
    inc sp                                        ; $6243: $33
    ld bc, $6800                                  ; $6244: $01 $00 $68
    ld l, c                                       ; $6247: $69
    ld l, d                                       ; $6248: $6a
    ld l, e                                       ; $6249: $6b
    ld l, h                                       ; $624a: $6c
    ld l, l                                       ; $624b: $6d
    ld l, [hl]                                    ; $624c: $6e
    ld l, a                                       ; $624d: $6f
    nop                                           ; $624e: $00
    ld [hl], b                                    ; $624f: $70
    ld [hl], c                                    ; $6250: $71
    ld [hl], d                                    ; $6251: $72
    ld [hl], e                                    ; $6252: $73
    ld [hl], h                                    ; $6253: $74

jr_0ca_6254:
    ld [hl], l                                    ; $6254: $75
    halt                                          ; $6255: $76

jr_0ca_6256:
    ld [hl], a                                    ; $6256: $77
    nop                                           ; $6257: $00
    ld a, b                                       ; $6258: $78
    ld a, c                                       ; $6259: $79
    ld a, d                                       ; $625a: $7a
    ld a, e                                       ; $625b: $7b
    ld a, h                                       ; $625c: $7c
    ld a, l                                       ; $625d: $7d
    ld a, [hl]                                    ; $625e: $7e
    ld a, a                                       ; $625f: $7f
    nop                                           ; $6260: $00
    add b                                         ; $6261: $80
    add c                                         ; $6262: $81
    add d                                         ; $6263: $82
    add e                                         ; $6264: $83
    add h                                         ; $6265: $84
    add l                                         ; $6266: $85
    add [hl]                                      ; $6267: $86
    add a                                         ; $6268: $87
    nop                                           ; $6269: $00
    adc b                                         ; $626a: $88
    adc c                                         ; $626b: $89
    adc d                                         ; $626c: $8a
    adc e                                         ; $626d: $8b
    adc h                                         ; $626e: $8c
    add c                                         ; $626f: $81
    adc l                                         ; $6270: $8d
    adc [hl]                                      ; $6271: $8e
    nop                                           ; $6272: $00
    adc a                                         ; $6273: $8f
    sub b                                         ; $6274: $90
    sub c                                         ; $6275: $91
    sub d                                         ; $6276: $92
    sub e                                         ; $6277: $93
    sub h                                         ; $6278: $94
    sub l                                         ; $6279: $95

jr_0ca_627a:
    sub [hl]                                      ; $627a: $96
    ld [$9897], sp                                ; $627b: $08 $97 $98
    sbc c                                         ; $627e: $99
    sbc d                                         ; $627f: $9a
    inc c                                         ; $6280: $0c
    jr z, jr_0ca_621e                             ; $6281: $28 $9b

    sbc h                                         ; $6283: $9c
    sbc l                                         ; $6284: $9d
    nop                                           ; $6285: $00
    sbc [hl]                                      ; $6286: $9e
    sbc a                                         ; $6287: $9f
    and b                                         ; $6288: $a0
    and c                                         ; $6289: $a1
    and d                                         ; $628a: $a2
    and e                                         ; $628b: $a3
    and h                                         ; $628c: $a4
    and l                                         ; $628d: $a5
    ld b, b                                       ; $628e: $40
    and [hl]                                      ; $628f: $a6
    inc c                                         ; $6290: $0c
    jr z, @-$57                                   ; $6291: $28 $a7

    xor b                                         ; $6293: $a8
    xor c                                         ; $6294: $a9
    xor d                                         ; $6295: $aa

jr_0ca_6296:
    xor e                                         ; $6296: $ab
    xor h                                         ; $6297: $ac
    nop                                           ; $6298: $00
    xor l                                         ; $6299: $ad

jr_0ca_629a:
    xor c                                         ; $629a: $a9
    xor [hl]                                      ; $629b: $ae
    xor a                                         ; $629c: $af
    xor h                                         ; $629d: $ac
    or b                                          ; $629e: $b0
    or c                                          ; $629f: $b1
    xor l                                         ; $62a0: $ad
    nop                                           ; $62a1: $00
    xor h                                         ; $62a2: $ac
    xor e                                         ; $62a3: $ab
    xor d                                         ; $62a4: $aa
    xor c                                         ; $62a5: $a9
    xor b                                         ; $62a6: $a8
    and a                                         ; $62a7: $a7
    or d                                          ; $62a8: $b2
    or e                                          ; $62a9: $b3
    nop                                           ; $62aa: $00
    or h                                          ; $62ab: $b4
    or l                                          ; $62ac: $b5
    or [hl]                                       ; $62ad: $b6
    or a                                          ; $62ae: $b7
    cp b                                          ; $62af: $b8
    cp c                                          ; $62b0: $b9
    cp d                                          ; $62b1: $ba
    cp e                                          ; $62b2: $bb
    nop                                           ; $62b3: $00
    cp h                                          ; $62b4: $bc
    cp l                                          ; $62b5: $bd
    cp [hl]                                       ; $62b6: $be
    cp b                                          ; $62b7: $b8
    or a                                          ; $62b8: $b7
    or [hl]                                       ; $62b9: $b6
    or l                                          ; $62ba: $b5
    or h                                          ; $62bb: $b4
    nop                                           ; $62bc: $00
    or e                                          ; $62bd: $b3
    or d                                          ; $62be: $b2
    cp a                                          ; $62bf: $bf
    ret nz                                        ; $62c0: $c0

    pop bc                                        ; $62c1: $c1
    jp nz, $c4c3                                  ; $62c2: $c2 $c3 $c4

    nop                                           ; $62c5: $00
    push bc                                       ; $62c6: $c5
    add $c7                                       ; $62c7: $c6 $c7
    ret z                                         ; $62c9: $c8

    ret                                           ; $62ca: $c9


    jp z, $c5cb                                   ; $62cb: $ca $cb $c5

    nop                                           ; $62ce: $00
    call nz, $c2c3                                ; $62cf: $c4 $c3 $c2
    pop bc                                        ; $62d2: $c1
    ret nz                                        ; $62d3: $c0

    cp a                                          ; $62d4: $bf
    call z, Call_000_00cd                         ; $62d5: $cc $cd $00
    adc $cf                                       ; $62d8: $ce $cf
    ret nc                                        ; $62da: $d0

    pop de                                        ; $62db: $d1
    jp nc, $d4d3                                  ; $62dc: $d2 $d3 $d4

    push de                                       ; $62df: $d5
    nop                                           ; $62e0: $00
    sub $d7                                       ; $62e1: $d6 $d7
    ret c                                         ; $62e3: $d8

    jp nc, $d0d1                                  ; $62e4: $d2 $d1 $d0

    rst $08                                       ; $62e7: $cf
    adc $00                                       ; $62e8: $ce $00
    call $d9cc                                    ; $62ea: $cd $cc $d9
    jp c, $dcdb                                   ; $62ed: $da $db $dc

    db $dd                                        ; $62f0: $dd
    sbc $00                                       ; $62f1: $de $00
    rst $18                                       ; $62f3: $df
    ldh [$e1], a                                  ; $62f4: $e0 $e1
    ld [c], a                                     ; $62f6: $e2
    db $e3                                        ; $62f7: $e3
    db $e4                                        ; $62f8: $e4
    push hl                                       ; $62f9: $e5
    rst $18                                       ; $62fa: $df
    nop                                           ; $62fb: $00
    sbc $dd                                       ; $62fc: $de $dd
    call c, $dadb                                 ; $62fe: $dc $db $da
    reti                                          ; $6301: $d9


    and $e7                                       ; $6302: $e6 $e7
    nop                                           ; $6304: $00
    add sp, -$17                                  ; $6305: $e8 $e9
    ld [$eceb], a                                 ; $6307: $ea $eb $ec
    db $ed                                        ; $630a: $ed
    xor $ef                                       ; $630b: $ee $ef
    nop                                           ; $630d: $00
    ldh a, [$f1]                                  ; $630e: $f0 $f1
    ld a, [c]                                     ; $6310: $f2
    db $ec                                        ; $6311: $ec
    db $eb                                        ; $6312: $eb
    ld [$e8e9], a                                 ; $6313: $ea $e9 $e8
    nop                                           ; $6316: $00
    rst $20                                       ; $6317: $e7
    and $f3                                       ; $6318: $e6 $f3
    db $f4                                        ; $631a: $f4
    push af                                       ; $631b: $f5
    or $f7                                        ; $631c: $f6 $f7
    ld hl, sp+$00                                 ; $631e: $f8 $00
    ld sp, hl                                     ; $6320: $f9
    ld a, [$bbfb]                                 ; $6321: $fa $fb $bb
    db $fc                                        ; $6324: $fc
    db $fd                                        ; $6325: $fd
    cp $f9                                        ; $6326: $fe $f9
    nop                                           ; $6328: $00
    ld hl, sp-$09                                 ; $6329: $f8 $f7
    or $f5                                        ; $632b: $f6 $f5
    db $f4                                        ; $632d: $f4
    di                                            ; $632e: $f3
    rst $38                                       ; $632f: $ff
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ld bc, $0302                                  ; $6332: $01 $02 $03
    inc b                                         ; $6335: $04
    dec b                                         ; $6336: $05
    ld b, $07                                     ; $6337: $06 $07
    ret z                                         ; $6339: $c8

    nop                                           ; $633a: $00
    ld [$0a09], sp                                ; $633b: $08 $09 $0a
    dec b                                         ; $633e: $05
    inc b                                         ; $633f: $04
    inc bc                                        ; $6340: $03
    ld [bc], a                                    ; $6341: $02
    ld bc, $0000                                  ; $6342: $01 $00 $00
    rst $38                                       ; $6345: $ff
    dec bc                                        ; $6346: $0b
    inc c                                         ; $6347: $0c
    dec c                                         ; $6348: $0d
    ld c, $0f                                     ; $6349: $0e $0f
    stop                                          ; $634b: $10 $00
    ld de, $1312                                  ; $634d: $11 $12 $13
    push de                                       ; $6350: $d5
    inc d                                         ; $6351: $14
    dec d                                         ; $6352: $15
    ld d, $11                                     ; $6353: $16 $11
    nop                                           ; $6355: $00
    db $10                                        ; $6356: $10
    rrca                                          ; $6357: $0f
    ld c, $0d                                     ; $6358: $0e $0d
    inc c                                         ; $635a: $0c
    dec bc                                        ; $635b: $0b
    ld bc, $e307                                  ; $635c: $01 $07 $e3
    ld [bc], a                                    ; $635f: $02
    db $10                                        ; $6360: $10
    ld bc, $0818                                  ; $6361: $01 $18 $08
    ld b, b                                       ; $6364: $40
    add hl, bc                                    ; $6365: $09
    rrca                                          ; $6366: $0f
    add hl, bc                                    ; $6367: $09
    ld bc, $0818                                  ; $6368: $01 $18 $08
    ld c, b                                       ; $636b: $48
    call nc, Call_000_2814                        ; $636c: $d4 $14 $28
    dec de                                        ; $636f: $1b

jr_0ca_6370:
    jr nz, jr_0ca_637c                            ; $6370: $20 $0a

    ld bc, $0e88                                  ; $6372: $01 $88 $0e
    rlca                                          ; $6375: $07
    ld b, b                                       ; $6376: $40
    ld a, [hl+]                                   ; $6377: $2a
    ld l, $05                                     ; $6378: $2e $05
    ld l, $2e                                     ; $637a: $2e $2e

jr_0ca_637c:
    ld a, [hl+]                                   ; $637c: $2a
    ld a, [hl+]                                   ; $637d: $2a
    ld a, [hl+]                                   ; $637e: $2a
    inc de                                        ; $637f: $13
    db $10                                        ; $6380: $10
    ld c, $1a                                     ; $6381: $0e $1a
    ld [$1dd3], sp                                ; $6383: $08 $d3 $1d
    nop                                           ; $6386: $00
    stop                                          ; $6387: $10 $00
    ld a, [hl+]                                   ; $6389: $2a
    jr jr_0ca_638c                                ; $638a: $18 $00

jr_0ca_638c:
    ld a, [bc]                                    ; $638c: $0a
    ld c, $11                                     ; $638d: $0e $11
    db $10                                        ; $638f: $10
    jr nc, @+$1a                                  ; $6390: $30 $18

    ld a, a                                       ; $6392: $7f
    ld l, $29                                     ; $6393: $2e $29
    jr jr_0ca_63d2                                ; $6395: $18 $3b

    jr nz, @+$48                                  ; $6397: $20 $46

    jr @+$27                                      ; $6399: $18 $25

    nop                                           ; $639b: $00
    dec hl                                        ; $639c: $2b
    ld [$2037], sp                                ; $639d: $08 $37 $20
    dec l                                         ; $63a0: $2d
    jr @-$3f                                      ; $63a1: $18 $bf

    inc de                                        ; $63a3: $13
    jr @+$2c                                      ; $63a4: $18 $2a

    ld h, l                                       ; $63a6: $65

jr_0ca_63a7:
    db $10                                        ; $63a7: $10
    dec l                                         ; $63a8: $2d
    jr z, jr_0ca_640f                             ; $63a9: $28 $64

    nop                                           ; $63ab: $00
    inc d                                         ; $63ac: $14
    jr nz, jr_0ca_640f                            ; $63ad: $20 $60

    ld [$187e], sp                                ; $63af: $08 $7e $18
    ei                                            ; $63b2: $fb
    ld h, d                                       ; $63b3: $62
    ld [$0065], sp                                ; $63b4: $08 $65 $00
    ld c, $10                                     ; $63b7: $0e $10
    inc b                                         ; $63b9: $04
    jr z, jr_0ca_63e4                             ; $63ba: $28 $28

    db $10                                        ; $63bc: $10
    ld l, $8c                                     ; $63bd: $2e $8c
    ld [$1028], sp                                ; $63bf: $08 $28 $10
    ldh [rSC], a                                  ; $63c2: $e0 $02
    nop                                           ; $63c4: $00
    ld d, b                                       ; $63c5: $50
    jr @-$5d                                      ; $63c6: $18 $a1

    nop                                           ; $63c8: $00
    inc d                                         ; $63c9: $14
    nop                                           ; $63ca: $00
    dec c                                         ; $63cb: $0d
    nop                                           ; $63cc: $00
    ccf                                           ; $63cd: $3f
    ld bc, $6800                                  ; $63ce: $01 $00 $68
    ld l, c                                       ; $63d1: $69

jr_0ca_63d2:
    ld l, d                                       ; $63d2: $6a
    ld l, e                                       ; $63d3: $6b
    ld l, h                                       ; $63d4: $6c
    ld l, l                                       ; $63d5: $6d
    ld l, [hl]                                    ; $63d6: $6e
    ld l, a                                       ; $63d7: $6f
    ld [$7170], sp                                ; $63d8: $08 $70 $71
    ld [hl], d                                    ; $63db: $72
    ld [hl], e                                    ; $63dc: $73
    inc c                                         ; $63dd: $0c
    jr z, jr_0ca_6454                             ; $63de: $28 $74

    ld [hl], l                                    ; $63e0: $75
    halt                                          ; $63e1: $76
    nop                                           ; $63e2: $00
    ld [hl], a                                    ; $63e3: $77

jr_0ca_63e4:
    ld a, b                                       ; $63e4: $78
    ld a, c                                       ; $63e5: $79
    ld a, d                                       ; $63e6: $7a
    ld a, e                                       ; $63e7: $7b
    ld a, h                                       ; $63e8: $7c
    ld a, l                                       ; $63e9: $7d
    ld a, [hl]                                    ; $63ea: $7e
    ld b, b                                       ; $63eb: $40
    ld a, a                                       ; $63ec: $7f
    inc c                                         ; $63ed: $0c
    jr z, jr_0ca_6370                             ; $63ee: $28 $80

    add c                                         ; $63f0: $81
    add d                                         ; $63f1: $82
    add e                                         ; $63f2: $83
    add h                                         ; $63f3: $84
    add l                                         ; $63f4: $85
    ld [bc], a                                    ; $63f5: $02
    add [hl]                                      ; $63f6: $86
    add a                                         ; $63f7: $87
    adc b                                         ; $63f8: $88
    adc c                                         ; $63f9: $89
    adc d                                         ; $63fa: $8a
    adc e                                         ; $63fb: $8b
    inc c                                         ; $63fc: $0c
    jr z, @-$72                                   ; $63fd: $28 $8c

    nop                                           ; $63ff: $00
    adc l                                         ; $6400: $8d
    adc [hl]                                      ; $6401: $8e
    adc a                                         ; $6402: $8f
    sub b                                         ; $6403: $90
    sub c                                         ; $6404: $91
    sub d                                         ; $6405: $92
    sub e                                         ; $6406: $93
    sub h                                         ; $6407: $94
    db $10                                        ; $6408: $10
    sub l                                         ; $6409: $95
    sub [hl]                                      ; $640a: $96
    sub a                                         ; $640b: $97
    inc c                                         ; $640c: $0c
    jr z, jr_0ca_63a7                             ; $640d: $28 $98

jr_0ca_640f:
    sbc c                                         ; $640f: $99
    sbc d                                         ; $6410: $9a
    sbc e                                         ; $6411: $9b
    nop                                           ; $6412: $00
    sbc h                                         ; $6413: $9c
    sbc l                                         ; $6414: $9d
    sbc [hl]                                      ; $6415: $9e
    sbc d                                         ; $6416: $9a
    sbc a                                         ; $6417: $9f
    and b                                         ; $6418: $a0
    sbc l                                         ; $6419: $9d
    and c                                         ; $641a: $a1
    nop                                           ; $641b: $00
    and d                                         ; $641c: $a2
    sbc [hl]                                      ; $641d: $9e
    sbc l                                         ; $641e: $9d
    sbc h                                         ; $641f: $9c
    sbc e                                         ; $6420: $9b
    sbc d                                         ; $6421: $9a
    sbc c                                         ; $6422: $99
    sbc b                                         ; $6423: $98
    nop                                           ; $6424: $00
    and e                                         ; $6425: $a3
    and h                                         ; $6426: $a4
    and l                                         ; $6427: $a5
    and [hl]                                      ; $6428: $a6
    and a                                         ; $6429: $a7
    xor b                                         ; $642a: $a8
    xor c                                         ; $642b: $a9
    xor d                                         ; $642c: $aa
    nop                                           ; $642d: $00
    xor e                                         ; $642e: $ab
    xor h                                         ; $642f: $ac
    xor l                                         ; $6430: $ad
    xor [hl]                                      ; $6431: $ae
    xor a                                         ; $6432: $af
    xor c                                         ; $6433: $a9
    xor b                                         ; $6434: $a8
    and a                                         ; $6435: $a7
    nop                                           ; $6436: $00
    and [hl]                                      ; $6437: $a6
    and l                                         ; $6438: $a5
    and h                                         ; $6439: $a4
    and e                                         ; $643a: $a3
    or b                                          ; $643b: $b0
    or c                                          ; $643c: $b1
    or d                                          ; $643d: $b2
    or e                                          ; $643e: $b3
    nop                                           ; $643f: $00
    or h                                          ; $6440: $b4
    or l                                          ; $6441: $b5
    or [hl]                                       ; $6442: $b6
    or a                                          ; $6443: $b7
    cp b                                          ; $6444: $b8
    cp c                                          ; $6445: $b9
    cp d                                          ; $6446: $ba
    cp e                                          ; $6447: $bb
    nop                                           ; $6448: $00
    cp h                                          ; $6449: $bc
    or [hl]                                       ; $644a: $b6
    or l                                          ; $644b: $b5
    or h                                          ; $644c: $b4
    or e                                          ; $644d: $b3
    or d                                          ; $644e: $b2
    or c                                          ; $644f: $b1
    or b                                          ; $6450: $b0
    nop                                           ; $6451: $00
    cp l                                          ; $6452: $bd
    cp [hl]                                       ; $6453: $be

jr_0ca_6454:
    cp a                                          ; $6454: $bf
    ret nz                                        ; $6455: $c0

    pop bc                                        ; $6456: $c1
    jp nz, $c4c3                                  ; $6457: $c2 $c3 $c4

    nop                                           ; $645a: $00
    push bc                                       ; $645b: $c5
    add $c7                                       ; $645c: $c6 $c7
    ret z                                         ; $645e: $c8

    ret                                           ; $645f: $c9


    jp $c1c2                                      ; $6460: $c3 $c2 $c1


    nop                                           ; $6463: $00
    ret nz                                        ; $6464: $c0

    cp a                                          ; $6465: $bf
    cp [hl]                                       ; $6466: $be
    cp l                                          ; $6467: $bd
    jp z, $cccb                                   ; $6468: $ca $cb $cc

    call $ce00                                    ; $646b: $cd $00 $ce
    rst $08                                       ; $646e: $cf
    ret nc                                        ; $646f: $d0

    pop de                                        ; $6470: $d1
    jp nc, $d4d3                                  ; $6471: $d2 $d3 $d4

    push de                                       ; $6474: $d5
    nop                                           ; $6475: $00
    sub $d0                                       ; $6476: $d6 $d0
    rst $08                                       ; $6478: $cf
    adc $cd                                       ; $6479: $ce $cd
    call z, $cacb                                 ; $647b: $cc $cb $ca
    nop                                           ; $647e: $00
    rst $10                                       ; $647f: $d7
    ret c                                         ; $6480: $d8

    reti                                          ; $6481: $d9


    jp c, $dcdb                                   ; $6482: $da $db $dc

    db $dd                                        ; $6485: $dd
    sbc $00                                       ; $6486: $de $00
    rst $18                                       ; $6488: $df
    ldh [$e1], a                                  ; $6489: $e0 $e1
    ld [c], a                                     ; $648b: $e2
    db $e3                                        ; $648c: $e3
    db $dd                                        ; $648d: $dd
    call c, Call_000_00db                         ; $648e: $dc $db $00
    jp c, $d8d9                                   ; $6491: $da $d9 $d8

    rst $10                                       ; $6494: $d7
    db $e4                                        ; $6495: $e4
    push hl                                       ; $6496: $e5
    and $e7                                       ; $6497: $e6 $e7
    nop                                           ; $6499: $00
    add sp, -$17                                  ; $649a: $e8 $e9
    ld [$eceb], a                                 ; $649c: $ea $eb $ec
    xor h                                         ; $649f: $ac
    db $ed                                        ; $64a0: $ed
    xor $00                                       ; $64a1: $ee $00
    rst $28                                       ; $64a3: $ef
    ld [$e8e9], a                                 ; $64a4: $ea $e9 $e8
    rst $20                                       ; $64a7: $e7
    and $e5                                       ; $64a8: $e6 $e5
    db $e4                                        ; $64aa: $e4
    nop                                           ; $64ab: $00
    ldh a, [$f1]                                  ; $64ac: $f0 $f1
    ld a, [c]                                     ; $64ae: $f2
    di                                            ; $64af: $f3
    db $f4                                        ; $64b0: $f4
    push af                                       ; $64b1: $f5
    or $f7                                        ; $64b2: $f6 $f7
    nop                                           ; $64b4: $00
    ld hl, sp-$47                                 ; $64b5: $f8 $b9
    ld sp, hl                                     ; $64b7: $f9
    ld a, [$f6fb]                                 ; $64b8: $fa $fb $f6
    push af                                       ; $64bb: $f5
    db $f4                                        ; $64bc: $f4
    nop                                           ; $64bd: $00
    di                                            ; $64be: $f3
    ld a, [c]                                     ; $64bf: $f2
    pop af                                        ; $64c0: $f1
    ldh a, [$fc]                                  ; $64c1: $f0 $fc
    db $fd                                        ; $64c3: $fd
    cp $ff                                        ; $64c4: $fe $ff
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    ld bc, $0302                                  ; $64c8: $01 $02 $03
    inc b                                         ; $64cb: $04
    add $05                                       ; $64cc: $c6 $05
    ld b, $00                                     ; $64ce: $06 $00
    rlca                                          ; $64d0: $07
    ld [bc], a                                    ; $64d1: $02
    ld bc, $ff00                                  ; $64d2: $01 $00 $ff
    cp $fd                                        ; $64d5: $fe $fd
    db $fc                                        ; $64d7: $fc
    dec bc                                        ; $64d8: $0b
    ld bc, $0401                                  ; $64d9: $01 $01 $04
    ld bc, $1001                                  ; $64dc: $01 $01 $10
    inc b                                         ; $64df: $04
    ld [$0528], sp                                ; $64e0: $08 $28 $05
    jr nc, @-$79                                  ; $64e3: $30 $85

    inc d                                         ; $64e5: $14
    ld d, b                                       ; $64e6: $50
    add hl, bc                                    ; $64e7: $09
    add hl, bc                                    ; $64e8: $09
    inc c                                         ; $64e9: $0c
    add hl, bc                                    ; $64ea: $09
    ld bc, $0c10                                  ; $64eb: $01 $10 $0c
    ld [$a520], sp                                ; $64ee: $08 $20 $a5
    ld c, $00                                     ; $64f1: $0e $00
    ld a, [bc]                                    ; $64f3: $0a
    ld bc, $0fa8                                  ; $64f4: $01 $a8 $0f
    rrca                                          ; $64f7: $0f
    dec de                                        ; $64f8: $1b
    jr jr_0ca_6525                                ; $64f9: $18 $2a

    ld bc, $1100                                  ; $64fb: $01 $00 $11
    cpl                                           ; $64fe: $2f
    ld a, [hl+]                                   ; $64ff: $2a
    ld a, [hl+]                                   ; $6500: $2a
    ld [de], a                                    ; $6501: $12
    db $10                                        ; $6502: $10
    rrca                                          ; $6503: $0f
    ld c, $0e                                     ; $6504: $0e $0e
    ld a, [de]                                    ; $6506: $1a
    ld [$0a13], sp                                ; $6507: $08 $13 $0a
    ld a, [hl+]                                   ; $650a: $2a
    ld l, $13                                     ; $650b: $2e $13
    nop                                           ; $650d: $00
    ld l, $2a                                     ; $650e: $2e $2a
    ld [de], a                                    ; $6510: $12
    ld [$102b], sp                                ; $6511: $08 $2b $10
    sub e                                         ; $6514: $93
    dec de                                        ; $6515: $1b
    ld [$2e2e], sp                                ; $6516: $08 $2e $2e
    ld h, $00                                     ; $6519: $26 $00
    ld l, $2a                                     ; $651b: $2e $2a
    inc c                                         ; $651d: $0c
    db $10                                        ; $651e: $10
    dec d                                         ; $651f: $15
    jr jr_0ca_6550                                ; $6520: $18 $2e

    ld c, $0e                                     ; $6522: $0e $0e
    ld [de], a                                    ; $6524: $12

jr_0ca_6525:
    ld [$142e], sp                                ; $6525: $08 $2e $14
    ld [$103d], sp                                ; $6528: $08 $3d $10
    add hl, sp                                    ; $652b: $39
    nop                                           ; $652c: $00
    ld a, [bc]                                    ; $652d: $0a
    ld a, $0e                                     ; $652e: $3e $0e
    rrca                                          ; $6530: $0f
    ld d, b                                       ; $6531: $50
    ld [$0054], sp                                ; $6532: $08 $54 $00
    ld c, d                                       ; $6535: $4a
    db $10                                        ; $6536: $10
    inc hl                                        ; $6537: $23
    nop                                           ; $6538: $00
    daa                                           ; $6539: $27
    nop                                           ; $653a: $00
    ld a, [bc]                                    ; $653b: $0a
    ld l, $0a                                     ; $653c: $2e $0a
    cpl                                           ; $653e: $2f
    dec sp                                        ; $653f: $3b
    db $10                                        ; $6540: $10
    cpl                                           ; $6541: $2f
    rra                                           ; $6542: $1f
    ld [$0076], sp                                ; $6543: $08 $76 $00
    ld a, [hl-]                                   ; $6546: $3a
    ld [$270a], sp                                ; $6547: $08 $0a $27
    rrca                                          ; $654a: $0f
    cpl                                           ; $654b: $2f
    ld h, e                                       ; $654c: $63
    ld [$2e2f], sp                                ; $654d: $08 $2f $2e

jr_0ca_6550:
    ld [hl], h                                    ; $6550: $74
    nop                                           ; $6551: $00
    jr z, @+$0a                                   ; $6552: $28 $08

    ld a, d                                       ; $6554: $7a
    db $10                                        ; $6555: $10
    cp $3c                                        ; $6556: $fe $3c
    nop                                           ; $6558: $00
    ld [hl], a                                    ; $6559: $77
    ld [$0014], sp                                ; $655a: $08 $14 $00
    dec sp                                        ; $655d: $3b
    ld [$103f], sp                                ; $655e: $08 $3f $10
    and b                                         ; $6561: $a0
    jr @-$5d                                      ; $6562: $18 $a1

    nop                                           ; $6564: $00
    inc d                                         ; $6565: $14
    nop                                           ; $6566: $00
    dec c                                         ; $6567: $0d
    nop                                           ; $6568: $00
    add hl, hl                                    ; $6569: $29
    ld bc, $6800                                  ; $656a: $01 $00 $68
    ld l, c                                       ; $656d: $69
    ld l, d                                       ; $656e: $6a
    ld l, e                                       ; $656f: $6b
    ld l, h                                       ; $6570: $6c
    ld l, l                                       ; $6571: $6d
    ld l, [hl]                                    ; $6572: $6e
    ld l, a                                       ; $6573: $6f
    db $10                                        ; $6574: $10
    ld [hl], b                                    ; $6575: $70
    ld [hl], c                                    ; $6576: $71
    ld [hl], d                                    ; $6577: $72
    dec bc                                        ; $6578: $0b
    jr nc, jr_0ca_65ee                            ; $6579: $30 $73

    ld [hl], h                                    ; $657b: $74
    ld [hl], l                                    ; $657c: $75
    halt                                          ; $657d: $76
    ld bc, $7877                                  ; $657e: $01 $77 $78
    ld a, c                                       ; $6581: $79
    ld a, d                                       ; $6582: $7a
    ld a, e                                       ; $6583: $7b
    ld a, h                                       ; $6584: $7c
    ld a, l                                       ; $6585: $7d
    dec bc                                        ; $6586: $0b
    jr nc, jr_0ca_6589                            ; $6587: $30 $00

jr_0ca_6589:
    ld a, [hl]                                    ; $6589: $7e
    ld a, a                                       ; $658a: $7f
    add b                                         ; $658b: $80
    add c                                         ; $658c: $81
    add d                                         ; $658d: $82
    add e                                         ; $658e: $83
    add h                                         ; $658f: $84
    add l                                         ; $6590: $85
    db $10                                        ; $6591: $10
    add [hl]                                      ; $6592: $86
    add a                                         ; $6593: $87
    adc b                                         ; $6594: $88
    dec bc                                        ; $6595: $0b
    jr nc, @-$75                                  ; $6596: $30 $89

    adc d                                         ; $6598: $8a
    adc e                                         ; $6599: $8b
    adc h                                         ; $659a: $8c
    nop                                           ; $659b: $00
    adc l                                         ; $659c: $8d
    adc [hl]                                      ; $659d: $8e
    adc a                                         ; $659e: $8f
    sub b                                         ; $659f: $90
    sub c                                         ; $65a0: $91
    sub d                                         ; $65a1: $92
    sub e                                         ; $65a2: $93
    sub h                                         ; $65a3: $94
    add b                                         ; $65a4: $80
    inc c                                         ; $65a5: $0c
    jr z, @-$69                                   ; $65a6: $28 $95

    sub [hl]                                      ; $65a8: $96
    sub a                                         ; $65a9: $97
    sbc b                                         ; $65aa: $98
    sbc c                                         ; $65ab: $99
    sbc d                                         ; $65ac: $9a
    sbc e                                         ; $65ad: $9b
    nop                                           ; $65ae: $00
    sub a                                         ; $65af: $97
    sbc h                                         ; $65b0: $9c
    sbc l                                         ; $65b1: $9d
    sbc d                                         ; $65b2: $9a
    sbc [hl]                                      ; $65b3: $9e
    sbc a                                         ; $65b4: $9f
    sbc e                                         ; $65b5: $9b
    sbc d                                         ; $65b6: $9a
    nop                                           ; $65b7: $00
    sbc c                                         ; $65b8: $99
    sbc b                                         ; $65b9: $98
    sub a                                         ; $65ba: $97
    sub [hl]                                      ; $65bb: $96
    sub l                                         ; $65bc: $95
    and b                                         ; $65bd: $a0
    and c                                         ; $65be: $a1
    and d                                         ; $65bf: $a2
    nop                                           ; $65c0: $00
    and e                                         ; $65c1: $a3
    and h                                         ; $65c2: $a4
    and l                                         ; $65c3: $a5
    and [hl]                                      ; $65c4: $a6
    and a                                         ; $65c5: $a7
    xor b                                         ; $65c6: $a8
    xor c                                         ; $65c7: $a9
    xor d                                         ; $65c8: $aa
    nop                                           ; $65c9: $00
    xor e                                         ; $65ca: $ab
    xor h                                         ; $65cb: $ac
    and [hl]                                      ; $65cc: $a6
    and l                                         ; $65cd: $a5
    and h                                         ; $65ce: $a4
    and e                                         ; $65cf: $a3
    and d                                         ; $65d0: $a2
    and c                                         ; $65d1: $a1
    nop                                           ; $65d2: $00
    and b                                         ; $65d3: $a0
    xor l                                         ; $65d4: $ad
    xor [hl]                                      ; $65d5: $ae
    xor a                                         ; $65d6: $af
    or b                                          ; $65d7: $b0
    or c                                          ; $65d8: $b1
    or d                                          ; $65d9: $b2
    or e                                          ; $65da: $b3
    nop                                           ; $65db: $00
    or h                                          ; $65dc: $b4
    or l                                          ; $65dd: $b5
    or [hl]                                       ; $65de: $b6
    or a                                          ; $65df: $b7
    cp b                                          ; $65e0: $b8
    cp c                                          ; $65e1: $b9
    or e                                          ; $65e2: $b3
    or d                                          ; $65e3: $b2
    nop                                           ; $65e4: $00
    or c                                          ; $65e5: $b1
    or b                                          ; $65e6: $b0
    xor a                                         ; $65e7: $af
    xor [hl]                                      ; $65e8: $ae
    xor l                                         ; $65e9: $ad
    cp d                                          ; $65ea: $ba
    cp e                                          ; $65eb: $bb
    cp h                                          ; $65ec: $bc
    nop                                           ; $65ed: $00

jr_0ca_65ee:
    cp l                                          ; $65ee: $bd
    cp [hl]                                       ; $65ef: $be
    cp a                                          ; $65f0: $bf
    ret nz                                        ; $65f1: $c0

    pop bc                                        ; $65f2: $c1
    jp nz, $c4c3                                  ; $65f3: $c2 $c3 $c4

    nop                                           ; $65f6: $00
    push bc                                       ; $65f7: $c5
    add $c0                                       ; $65f8: $c6 $c0
    cp a                                          ; $65fa: $bf
    cp [hl]                                       ; $65fb: $be
    cp l                                          ; $65fc: $bd
    cp h                                          ; $65fd: $bc
    cp e                                          ; $65fe: $bb
    nop                                           ; $65ff: $00
    cp d                                          ; $6600: $ba
    rst $00                                       ; $6601: $c7
    ret z                                         ; $6602: $c8

    ret                                           ; $6603: $c9


    jp z, $cccb                                   ; $6604: $ca $cb $cc

    call $ce00                                    ; $6607: $cd $00 $ce
    rst $08                                       ; $660a: $cf
    ret nc                                        ; $660b: $d0

    pop de                                        ; $660c: $d1
    jp nc, $cdd3                                  ; $660d: $d2 $d3 $cd

    call z, $cb00                                 ; $6610: $cc $00 $cb
    jp z, $c8c9                                   ; $6613: $ca $c9 $c8

    rst $00                                       ; $6616: $c7
    call nc, $d6d5                                ; $6617: $d4 $d5 $d6
    nop                                           ; $661a: $00
    rst $10                                       ; $661b: $d7
    ret c                                         ; $661c: $d8

    reti                                          ; $661d: $d9


    jp c, $dcdb                                   ; $661e: $da $db $dc

    db $dd                                        ; $6621: $dd
    sbc $00                                       ; $6622: $de $00
    rst $18                                       ; $6624: $df
    ldh [$da], a                                  ; $6625: $e0 $da
    reti                                          ; $6627: $d9


    ret c                                         ; $6628: $d8

    rst $10                                       ; $6629: $d7
    sub $d5                                       ; $662a: $d6 $d5
    nop                                           ; $662c: $00
    call nc, $e2e1                                ; $662d: $d4 $e1 $e2
    db $e3                                        ; $6630: $e3
    db $e4                                        ; $6631: $e4
    push hl                                       ; $6632: $e5
    and $e7                                       ; $6633: $e6 $e7
    nop                                           ; $6635: $00
    add sp, -$17                                  ; $6636: $e8 $e9
    xor c                                         ; $6638: $a9
    ld [$eceb], a                                 ; $6639: $ea $eb $ec
    rst $20                                       ; $663c: $e7
    and $00                                       ; $663d: $e6 $00
    push hl                                       ; $663f: $e5
    db $e4                                        ; $6640: $e4
    db $e3                                        ; $6641: $e3
    ld [c], a                                     ; $6642: $e2
    pop hl                                        ; $6643: $e1
    db $ed                                        ; $6644: $ed
    xor $ef                                       ; $6645: $ee $ef
    nop                                           ; $6647: $00
    ldh a, [$f1]                                  ; $6648: $f0 $f1
    ld a, [c]                                     ; $664a: $f2
    di                                            ; $664b: $f3
    db $f4                                        ; $664c: $f4
    push af                                       ; $664d: $f5
    or [hl]                                       ; $664e: $b6
    or $00                                        ; $664f: $f6 $00
    rst $30                                       ; $6651: $f7
    ld hl, sp-$0d                                 ; $6652: $f8 $f3
    ld a, [c]                                     ; $6654: $f2
    pop af                                        ; $6655: $f1
    ldh a, [$ef]                                  ; $6656: $f0 $ef
    xor $00                                       ; $6658: $ee $00
    db $ed                                        ; $665a: $ed
    ld sp, hl                                     ; $665b: $f9
    ld a, [$fcfb]                                 ; $665c: $fa $fb $fc
    db $fd                                        ; $665f: $fd
    cp $ff                                        ; $6660: $fe $ff
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    ld bc, $02c3                                  ; $6664: $01 $c3 $02
    inc bc                                        ; $6667: $03
    inc b                                         ; $6668: $04
    rst $38                                       ; $6669: $ff
    cp $02                                        ; $666a: $fe $02
    db $fd                                        ; $666c: $fd
    db $fc                                        ; $666d: $fc

jr_0ca_666e:
    ei                                            ; $666e: $fb
    ld a, [$01f9]                                 ; $666f: $fa $f9 $01
    ld bc, $0708                                  ; $6672: $01 $08 $07
    rrca                                          ; $6675: $0f
    rlca                                          ; $6676: $07
    rlca                                          ; $6677: $07
    ld bc, $0a07                                  ; $6678: $01 $07 $0a
    db $10                                        ; $667b: $10
    inc c                                         ; $667c: $0c
    ld [$3809], sp                                ; $667d: $08 $09 $38
    inc d                                         ; $6680: $14
    ld d, b                                       ; $6681: $50
    ld c, l                                       ; $6682: $4d
    add hl, bc                                    ; $6683: $09
    ld bc, $0f00                                  ; $6684: $01 $00 $0f
    rrca                                          ; $6687: $0f
    ld b, $00                                     ; $6688: $06 $00
    dec bc                                        ; $668a: $0b
    jr nc, jr_0ca_6697                            ; $668b: $30 $0a

    ld bc, $01d0                                  ; $668d: $01 $d0 $01
    dec c                                         ; $6690: $0d
    ld a, [bc]                                    ; $6691: $0a
    ld a, [bc]                                    ; $6692: $0a
    ld a, [hl+]                                   ; $6693: $2a
    ld a, [hl+]                                   ; $6694: $2a
    dec l                                         ; $6695: $2d
    ld a, [hl+]                                   ; $6696: $2a

jr_0ca_6697:
    ld bc, $d700                                  ; $6697: $01 $00 $d7
    rrca                                          ; $669a: $0f
    jr z, jr_0ca_66a1                             ; $669b: $28 $04

    db $10                                        ; $669d: $10
    dec l                                         ; $669e: $2d
    inc de                                        ; $669f: $13
    db $10                                        ; $66a0: $10

jr_0ca_66a1:
    ld a, [hl+]                                   ; $66a1: $2a
    rra                                           ; $66a2: $1f
    ld [$0813], sp                                ; $66a3: $08 $13 $08
    jr jr_0ca_66b8                                ; $66a6: $18 $10

    sub l                                         ; $66a8: $95
    ld [de], a                                    ; $66a9: $12

jr_0ca_66aa:
    db $10                                        ; $66aa: $10
    ld a, [hl+]                                   ; $66ab: $2a
    ld a, [hl+]                                   ; $66ac: $2a
    inc de                                        ; $66ad: $13
    db $10                                        ; $66ae: $10
    dec c                                         ; $66af: $0d
    ld d, $18                                     ; $66b0: $16 $18
    dec c                                         ; $66b2: $0d
    daa                                           ; $66b3: $27
    jr jr_0ca_666e                                ; $66b4: $18 $b8

    inc d                                         ; $66b6: $14
    nop                                           ; $66b7: $00

jr_0ca_66b8:
    dec c                                         ; $66b8: $0d
    ld bc, $6a00                                  ; $66b9: $01 $00 $6a
    jr nz, jr_0ca_670d                            ; $66bc: $20 $4f

    ld [$2a2d], sp                                ; $66be: $08 $2d $2a
    dec l                                         ; $66c1: $2d
    rst $20                                       ; $66c2: $e7
    dec sp                                        ; $66c3: $3b
    jr z, jr_0ca_6716                             ; $66c4: $28 $50

    jr jr_0ca_672a                                ; $66c6: $18 $62

    nop                                           ; $66c8: $00
    dec l                                         ; $66c9: $2d
    dec l                                         ; $66ca: $2d
    inc d                                         ; $66cb: $14
    nop                                           ; $66cc: $00
    jr c, jr_0ca_66ef                             ; $66cd: $38 $20

    ld b, e                                       ; $66cf: $43
    ld [$75ff], sp                                ; $66d0: $08 $ff $75
    ld [$0828], sp                                ; $66d3: $08 $28 $08
    ld a, [hl-]                                   ; $66d6: $3a
    ld [$282a], sp                                ; $66d7: $08 $2a $28
    ld h, $08                                     ; $66da: $26 $08
    ld a, b                                       ; $66dc: $78
    db $10                                        ; $66dd: $10
    ld h, e                                       ; $66de: $63
    jr jr_0ca_6760                                ; $66df: $18 $7f

    db $10                                        ; $66e1: $10
    add b                                         ; $66e2: $80
    ld a, b                                       ; $66e3: $78
    jr nz, @+$16                                  ; $66e4: $20 $14

    nop                                           ; $66e6: $00
    dec c                                         ; $66e7: $0d
    nop                                           ; $66e8: $00
    dec e                                         ; $66e9: $1d
    ld bc, $6800                                  ; $66ea: $01 $00 $68
    ld l, c                                       ; $66ed: $69
    ld l, d                                       ; $66ee: $6a

jr_0ca_66ef:
    ld l, e                                       ; $66ef: $6b
    ld l, h                                       ; $66f0: $6c
    ld l, l                                       ; $66f1: $6d
    ld l, [hl]                                    ; $66f2: $6e
    ld l, a                                       ; $66f3: $6f
    db $10                                        ; $66f4: $10
    ld [hl], b                                    ; $66f5: $70
    ld [hl], c                                    ; $66f6: $71
    ld [hl], d                                    ; $66f7: $72
    dec bc                                        ; $66f8: $0b
    jr nc, jr_0ca_676e                            ; $66f9: $30 $73

    ld [hl], h                                    ; $66fb: $74
    ld [hl], l                                    ; $66fc: $75
    halt                                          ; $66fd: $76
    ld bc, $7877                                  ; $66fe: $01 $77 $78
    ld a, c                                       ; $6701: $79
    ld a, d                                       ; $6702: $7a
    ld a, e                                       ; $6703: $7b
    ld a, h                                       ; $6704: $7c
    ld a, l                                       ; $6705: $7d
    dec bc                                        ; $6706: $0b
    jr nc, jr_0ca_6709                            ; $6707: $30 $00

jr_0ca_6709:
    ld a, [hl]                                    ; $6709: $7e
    ld a, a                                       ; $670a: $7f
    add b                                         ; $670b: $80
    add c                                         ; $670c: $81

jr_0ca_670d:
    add d                                         ; $670d: $82
    add e                                         ; $670e: $83
    add h                                         ; $670f: $84
    add l                                         ; $6710: $85
    db $10                                        ; $6711: $10
    add [hl]                                      ; $6712: $86
    add a                                         ; $6713: $87
    adc b                                         ; $6714: $88
    dec bc                                        ; $6715: $0b

jr_0ca_6716:
    jr nc, jr_0ca_66a1                            ; $6716: $30 $89

    adc d                                         ; $6718: $8a
    adc e                                         ; $6719: $8b
    adc h                                         ; $671a: $8c
    jr nz, jr_0ca_66aa                            ; $671b: $20 $8d

    adc [hl]                                      ; $671d: $8e
    ld b, $58                                     ; $671e: $06 $58
    adc a                                         ; $6720: $8f
    sub b                                         ; $6721: $90
    sub c                                         ; $6722: $91
    sub d                                         ; $6723: $92
    sub e                                         ; $6724: $93
    nop                                           ; $6725: $00
    sub h                                         ; $6726: $94
    sub l                                         ; $6727: $95
    sub c                                         ; $6728: $91
    sub [hl]                                      ; $6729: $96

jr_0ca_672a:
    sub a                                         ; $672a: $97
    sub h                                         ; $672b: $94
    sbc b                                         ; $672c: $98
    sbc c                                         ; $672d: $99
    nop                                           ; $672e: $00
    sub l                                         ; $672f: $95
    sub h                                         ; $6730: $94
    sub e                                         ; $6731: $93
    sub d                                         ; $6732: $92
    sub c                                         ; $6733: $91
    sub b                                         ; $6734: $90
    adc a                                         ; $6735: $8f
    sbc d                                         ; $6736: $9a
    nop                                           ; $6737: $00
    sbc e                                         ; $6738: $9b
    sbc h                                         ; $6739: $9c
    sbc l                                         ; $673a: $9d
    sbc [hl]                                      ; $673b: $9e
    sbc a                                         ; $673c: $9f
    and b                                         ; $673d: $a0
    and c                                         ; $673e: $a1
    and d                                         ; $673f: $a2
    nop                                           ; $6740: $00
    and e                                         ; $6741: $a3
    and h                                         ; $6742: $a4
    and l                                         ; $6743: $a5
    and [hl]                                      ; $6744: $a6
    and b                                         ; $6745: $a0
    sbc a                                         ; $6746: $9f
    sbc [hl]                                      ; $6747: $9e
    sbc l                                         ; $6748: $9d
    nop                                           ; $6749: $00
    sbc h                                         ; $674a: $9c
    sbc e                                         ; $674b: $9b
    sbc d                                         ; $674c: $9a
    and a                                         ; $674d: $a7
    xor b                                         ; $674e: $a8
    xor c                                         ; $674f: $a9
    xor d                                         ; $6750: $aa
    xor e                                         ; $6751: $ab
    nop                                           ; $6752: $00
    xor h                                         ; $6753: $ac
    xor l                                         ; $6754: $ad
    xor [hl]                                      ; $6755: $ae
    xor a                                         ; $6756: $af
    or b                                          ; $6757: $b0
    or c                                          ; $6758: $b1
    or d                                          ; $6759: $b2
    or e                                          ; $675a: $b3
    nop                                           ; $675b: $00
    xor l                                         ; $675c: $ad
    xor h                                         ; $675d: $ac
    xor e                                         ; $675e: $ab
    xor d                                         ; $675f: $aa

jr_0ca_6760:
    xor c                                         ; $6760: $a9
    xor b                                         ; $6761: $a8
    and a                                         ; $6762: $a7
    or h                                          ; $6763: $b4
    nop                                           ; $6764: $00
    or l                                          ; $6765: $b5
    or [hl]                                       ; $6766: $b6
    or a                                          ; $6767: $b7
    cp b                                          ; $6768: $b8
    cp c                                          ; $6769: $b9
    cp d                                          ; $676a: $ba
    cp e                                          ; $676b: $bb
    cp h                                          ; $676c: $bc
    nop                                           ; $676d: $00

jr_0ca_676e:
    cp l                                          ; $676e: $bd
    cp [hl]                                       ; $676f: $be
    cp a                                          ; $6770: $bf
    ret nz                                        ; $6771: $c0

    cp d                                          ; $6772: $ba
    cp c                                          ; $6773: $b9
    cp b                                          ; $6774: $b8
    or a                                          ; $6775: $b7
    nop                                           ; $6776: $00
    or [hl]                                       ; $6777: $b6
    or l                                          ; $6778: $b5
    or h                                          ; $6779: $b4
    pop bc                                        ; $677a: $c1
    jp nz, $c4c3                                  ; $677b: $c2 $c3 $c4

    push bc                                       ; $677e: $c5
    nop                                           ; $677f: $00
    add $c7                                       ; $6780: $c6 $c7
    ret z                                         ; $6782: $c8

    ret                                           ; $6783: $c9


    jp z, $cccb                                   ; $6784: $ca $cb $cc

    call $c700                                    ; $6787: $cd $00 $c7
    add $c5                                       ; $678a: $c6 $c5
    call nz, $c2c3                                ; $678c: $c4 $c3 $c2
    pop bc                                        ; $678f: $c1
    adc $00                                       ; $6790: $ce $00
    rst $08                                       ; $6792: $cf
    ret nc                                        ; $6793: $d0

    pop de                                        ; $6794: $d1
    jp nc, $d4d3                                  ; $6795: $d2 $d3 $d4

    push de                                       ; $6798: $d5
    sub $00                                       ; $6799: $d6 $00
    rst $10                                       ; $679b: $d7
    ret c                                         ; $679c: $d8

    reti                                          ; $679d: $d9


    jp c, $d3d4                                   ; $679e: $da $d4 $d3

    jp nc, $00d1                                  ; $67a1: $d2 $d1 $00

    ret nc                                        ; $67a4: $d0

    rst $08                                       ; $67a5: $cf
    adc $db                                       ; $67a6: $ce $db
    call c, $dedd                                 ; $67a8: $dc $dd $de
    rst $18                                       ; $67ab: $df
    nop                                           ; $67ac: $00
    ldh [$e1], a                                  ; $67ad: $e0 $e1
    ld [c], a                                     ; $67af: $e2
    db $e3                                        ; $67b0: $e3
    and e                                         ; $67b1: $a3
    db $e4                                        ; $67b2: $e4
    push hl                                       ; $67b3: $e5
    and $00                                       ; $67b4: $e6 $00
    pop hl                                        ; $67b6: $e1
    ldh [$df], a                                  ; $67b7: $e0 $df
    sbc $dd                                       ; $67b9: $de $dd
    call c, $e7db                                 ; $67bb: $dc $db $e7
    nop                                           ; $67be: $00
    add sp, -$17                                  ; $67bf: $e8 $e9
    ld [$eceb], a                                 ; $67c1: $ea $eb $ec
    db $ed                                        ; $67c4: $ed
    xor $ef                                       ; $67c5: $ee $ef
    nop                                           ; $67c7: $00
    or b                                          ; $67c8: $b0
    ldh a, [$f1]                                  ; $67c9: $f0 $f1
    ld a, [c]                                     ; $67cb: $f2
    db $ed                                        ; $67cc: $ed
    db $ec                                        ; $67cd: $ec
    db $eb                                        ; $67ce: $eb
    ld [$e900], a                                 ; $67cf: $ea $00 $e9
    add sp, -$19                                  ; $67d2: $e8 $e7
    di                                            ; $67d4: $f3
    db $f4                                        ; $67d5: $f4
    push af                                       ; $67d6: $f5
    or $f7                                        ; $67d7: $f6 $f7
    nop                                           ; $67d9: $00
    ld hl, sp-$07                                 ; $67da: $f8 $f9
    ld a, [$bdfb]                                 ; $67dc: $fa $fb $bd
    db $fc                                        ; $67df: $fc
    db $fd                                        ; $67e0: $fd
    cp $00                                        ; $67e1: $fe $00
    ld sp, hl                                     ; $67e3: $f9
    ld hl, sp-$09                                 ; $67e4: $f8 $f7
    or $f5                                        ; $67e6: $f6 $f5
    db $f4                                        ; $67e8: $f4
    di                                            ; $67e9: $f3
    ld b, $1e                                     ; $67ea: $06 $1e
    ld bc, $0101                                  ; $67ec: $01 $01 $01
    inc b                                         ; $67ef: $04
    ld [$2003], sp                                ; $67f0: $08 $03 $20
    rrca                                          ; $67f3: $0f
    db $10                                        ; $67f4: $10
    inc d                                         ; $67f5: $14
    sbc b                                         ; $67f6: $98
    add hl, bc                                    ; $67f7: $09

jr_0ca_67f8:
    xor b                                         ; $67f8: $a8
    ld bc, $0128                                  ; $67f9: $01 $28 $01
    dec bc                                        ; $67fc: $0b
    jr z, jr_0ca_6809                             ; $67fd: $28 $0a

    ld bc, $0cd8                                  ; $67ff: $01 $d8 $0c
    inc c                                         ; $6802: $0c
    inc l                                         ; $6803: $2c
    inc bc                                        ; $6804: $03
    ld a, [hl+]                                   ; $6805: $2a
    inc l                                         ; $6806: $2c
    inc l                                         ; $6807: $2c
    ld a, [hl+]                                   ; $6808: $2a

jr_0ca_6809:
    ld a, [hl+]                                   ; $6809: $2a
    ld a, [hl+]                                   ; $680a: $2a
    inc c                                         ; $680b: $0c
    db $10                                        ; $680c: $10
    ld [bc], a                                    ; $680d: $02
    jr nz, jr_0ca_6887                            ; $680e: $20 $77

    ld a, [bc]                                    ; $6810: $0a
    stop                                          ; $6811: $10 $00
    rla                                           ; $6813: $17
    ld [$100c], sp                                ; $6814: $08 $0c $10

jr_0ca_6817:
    ld a, [bc]                                    ; $6817: $0a
    inc bc                                        ; $6818: $03
    nop                                           ; $6819: $00
    ld b, l                                       ; $681a: $45
    ld [$0825], sp                                ; $681b: $08 $25 $08
    rst $38                                       ; $681e: $ff
    jr z, jr_0ca_6821                             ; $681f: $28 $00

jr_0ca_6821:
    ld e, $00                                     ; $6821: $1e $00
    ld de, $1718                                  ; $6823: $11 $18 $17
    ld [$0026], sp                                ; $6826: $08 $26 $00
    inc bc                                        ; $6829: $03
    ld [$103b], sp                                ; $682a: $08 $3b $10
    inc de                                        ; $682d: $13
    db $10                                        ; $682e: $10
    ei                                            ; $682f: $fb
    cpl                                           ; $6830: $2f
    nop                                           ; $6831: $00
    ld a, [hl-]                                   ; $6832: $3a
    db $10                                        ; $6833: $10
    ld d, b                                       ; $6834: $50
    db $10                                        ; $6835: $10
    ld h, $20                                     ; $6836: $26 $20
    ld sp, $2c00                                  ; $6838: $31 $00 $2c
    ld bc, $4a18                                  ; $683b: $01 $18 $4a
    jr nz, @+$01                                  ; $683e: $20 $ff

    ld [hl], l                                    ; $6840: $75
    nop                                           ; $6841: $00
    ld a, c                                       ; $6842: $79
    nop                                           ; $6843: $00
    ld h, h                                       ; $6844: $64
    ld [$083c], sp                                ; $6845: $08 $3c $08
    ld a, [hl-]                                   ; $6848: $3a
    jr jr_0ca_68a1                                ; $6849: $18 $56

    nop                                           ; $684b: $00
    ld a, a                                       ; $684c: $7f
    nop                                           ; $684d: $00
    inc de                                        ; $684e: $13
    ld [$8df8], sp                                ; $684f: $08 $f8 $8d
    nop                                           ; $6852: $00
    ld h, h                                       ; $6853: $64
    jr nz, jr_0ca_68c0                            ; $6854: $20 $6a

    jr jr_0ca_67f8                                ; $6856: $18 $a0

    nop                                           ; $6858: $00
    ld h, a                                       ; $6859: $67
    ld [$0014], sp                                ; $685a: $08 $14 $00
    dec c                                         ; $685d: $0d
    nop                                           ; $685e: $00
    inc e                                         ; $685f: $1c
    ld bc, $6800                                  ; $6860: $01 $00 $68
    ld l, c                                       ; $6863: $69
    ld l, d                                       ; $6864: $6a
    ld l, e                                       ; $6865: $6b
    ld l, h                                       ; $6866: $6c
    ld l, l                                       ; $6867: $6d
    ld l, [hl]                                    ; $6868: $6e
    ld l, a                                       ; $6869: $6f
    db $10                                        ; $686a: $10
    ld [hl], b                                    ; $686b: $70
    ld [hl], c                                    ; $686c: $71
    ld [hl], d                                    ; $686d: $72
    dec bc                                        ; $686e: $0b
    jr nc, jr_0ca_68e4                            ; $686f: $30 $73

    ld [hl], h                                    ; $6871: $74
    ld [hl], l                                    ; $6872: $75
    halt                                          ; $6873: $76
    ld bc, $7877                                  ; $6874: $01 $77 $78
    ld a, c                                       ; $6877: $79
    ld a, d                                       ; $6878: $7a
    ld a, e                                       ; $6879: $7b
    ld a, h                                       ; $687a: $7c
    ld a, l                                       ; $687b: $7d
    dec bc                                        ; $687c: $0b
    jr nc, jr_0ca_687f                            ; $687d: $30 $00

jr_0ca_687f:
    ld a, [hl]                                    ; $687f: $7e
    ld a, a                                       ; $6880: $7f
    add b                                         ; $6881: $80
    add c                                         ; $6882: $81
    add d                                         ; $6883: $82
    add e                                         ; $6884: $83
    add h                                         ; $6885: $84
    add l                                         ; $6886: $85

jr_0ca_6887:
    db $10                                        ; $6887: $10
    add [hl]                                      ; $6888: $86
    add a                                         ; $6889: $87
    adc b                                         ; $688a: $88
    dec bc                                        ; $688b: $0b
    jr nc, jr_0ca_6817                            ; $688c: $30 $89

    adc d                                         ; $688e: $8a
    adc e                                         ; $688f: $8b
    adc h                                         ; $6890: $8c
    jr nz, @-$71                                  ; $6891: $20 $8d

    adc [hl]                                      ; $6893: $8e
    ld b, $58                                     ; $6894: $06 $58
    adc a                                         ; $6896: $8f
    sub b                                         ; $6897: $90
    sub c                                         ; $6898: $91
    sub d                                         ; $6899: $92
    sub e                                         ; $689a: $93
    nop                                           ; $689b: $00
    sub h                                         ; $689c: $94
    sub l                                         ; $689d: $95
    sub c                                         ; $689e: $91
    sub [hl]                                      ; $689f: $96
    sub a                                         ; $68a0: $97

jr_0ca_68a1:
    sub h                                         ; $68a1: $94
    sbc b                                         ; $68a2: $98
    sbc c                                         ; $68a3: $99
    nop                                           ; $68a4: $00
    sub l                                         ; $68a5: $95
    sub h                                         ; $68a6: $94
    sub e                                         ; $68a7: $93
    sub d                                         ; $68a8: $92
    sub c                                         ; $68a9: $91
    sub b                                         ; $68aa: $90
    adc a                                         ; $68ab: $8f
    sbc d                                         ; $68ac: $9a
    nop                                           ; $68ad: $00
    sbc e                                         ; $68ae: $9b
    sbc h                                         ; $68af: $9c
    sbc l                                         ; $68b0: $9d
    sbc [hl]                                      ; $68b1: $9e
    sbc a                                         ; $68b2: $9f
    and b                                         ; $68b3: $a0
    and c                                         ; $68b4: $a1
    and d                                         ; $68b5: $a2
    nop                                           ; $68b6: $00
    and e                                         ; $68b7: $a3
    and h                                         ; $68b8: $a4
    and l                                         ; $68b9: $a5
    and [hl]                                      ; $68ba: $a6
    and b                                         ; $68bb: $a0
    sbc a                                         ; $68bc: $9f
    sbc [hl]                                      ; $68bd: $9e
    sbc l                                         ; $68be: $9d
    nop                                           ; $68bf: $00

jr_0ca_68c0:
    sbc h                                         ; $68c0: $9c
    sbc e                                         ; $68c1: $9b
    sbc d                                         ; $68c2: $9a
    and a                                         ; $68c3: $a7
    xor b                                         ; $68c4: $a8
    xor c                                         ; $68c5: $a9
    xor d                                         ; $68c6: $aa
    xor e                                         ; $68c7: $ab
    nop                                           ; $68c8: $00
    xor h                                         ; $68c9: $ac
    xor l                                         ; $68ca: $ad
    xor [hl]                                      ; $68cb: $ae
    xor a                                         ; $68cc: $af
    or b                                          ; $68cd: $b0
    or c                                          ; $68ce: $b1
    or d                                          ; $68cf: $b2
    or e                                          ; $68d0: $b3
    nop                                           ; $68d1: $00
    xor l                                         ; $68d2: $ad
    xor h                                         ; $68d3: $ac
    xor e                                         ; $68d4: $ab
    xor d                                         ; $68d5: $aa
    xor c                                         ; $68d6: $a9
    xor b                                         ; $68d7: $a8
    and a                                         ; $68d8: $a7
    or h                                          ; $68d9: $b4
    nop                                           ; $68da: $00
    or l                                          ; $68db: $b5
    or [hl]                                       ; $68dc: $b6
    or a                                          ; $68dd: $b7
    cp b                                          ; $68de: $b8
    cp c                                          ; $68df: $b9
    cp d                                          ; $68e0: $ba
    cp e                                          ; $68e1: $bb
    cp h                                          ; $68e2: $bc
    nop                                           ; $68e3: $00

jr_0ca_68e4:
    cp l                                          ; $68e4: $bd
    cp [hl]                                       ; $68e5: $be
    cp a                                          ; $68e6: $bf
    ret nz                                        ; $68e7: $c0

    cp d                                          ; $68e8: $ba
    cp c                                          ; $68e9: $b9
    cp b                                          ; $68ea: $b8
    or a                                          ; $68eb: $b7
    nop                                           ; $68ec: $00
    or [hl]                                       ; $68ed: $b6
    or l                                          ; $68ee: $b5
    or h                                          ; $68ef: $b4
    pop bc                                        ; $68f0: $c1
    jp nz, $c4c3                                  ; $68f1: $c2 $c3 $c4

    push bc                                       ; $68f4: $c5
    nop                                           ; $68f5: $00
    add $c7                                       ; $68f6: $c6 $c7
    ret z                                         ; $68f8: $c8

    ret                                           ; $68f9: $c9


    jp z, $cccb                                   ; $68fa: $ca $cb $cc

    call $c700                                    ; $68fd: $cd $00 $c7
    add $c5                                       ; $6900: $c6 $c5
    call nz, $c2c3                                ; $6902: $c4 $c3 $c2
    pop bc                                        ; $6905: $c1
    adc $00                                       ; $6906: $ce $00
    rst $08                                       ; $6908: $cf
    ret nc                                        ; $6909: $d0

    pop de                                        ; $690a: $d1
    jp nc, $d4d3                                  ; $690b: $d2 $d3 $d4

    push de                                       ; $690e: $d5
    sub $00                                       ; $690f: $d6 $00
    rst $10                                       ; $6911: $d7
    ret c                                         ; $6912: $d8

    reti                                          ; $6913: $d9


    jp c, $d3d4                                   ; $6914: $da $d4 $d3

    jp nc, $00d1                                  ; $6917: $d2 $d1 $00

    ret nc                                        ; $691a: $d0

    rst $08                                       ; $691b: $cf
    adc $db                                       ; $691c: $ce $db
    call c, $dedd                                 ; $691e: $dc $dd $de
    rst $18                                       ; $6921: $df
    nop                                           ; $6922: $00
    ldh [$e1], a                                  ; $6923: $e0 $e1
    ld [c], a                                     ; $6925: $e2
    db $e3                                        ; $6926: $e3
    and e                                         ; $6927: $a3
    db $e4                                        ; $6928: $e4
    push hl                                       ; $6929: $e5
    and $00                                       ; $692a: $e6 $00
    pop hl                                        ; $692c: $e1
    ldh [$df], a                                  ; $692d: $e0 $df
    sbc $dd                                       ; $692f: $de $dd
    call c, $e7db                                 ; $6931: $dc $db $e7
    nop                                           ; $6934: $00
    add sp, -$17                                  ; $6935: $e8 $e9
    ld [$eceb], a                                 ; $6937: $ea $eb $ec
    db $ed                                        ; $693a: $ed
    xor $ef                                       ; $693b: $ee $ef
    nop                                           ; $693d: $00
    or b                                          ; $693e: $b0
    ldh a, [$f1]                                  ; $693f: $f0 $f1
    ld a, [c]                                     ; $6941: $f2
    db $ed                                        ; $6942: $ed
    db $ec                                        ; $6943: $ec
    db $eb                                        ; $6944: $eb
    ld [$e900], a                                 ; $6945: $ea $00 $e9
    add sp, -$19                                  ; $6948: $e8 $e7
    di                                            ; $694a: $f3
    db $f4                                        ; $694b: $f4
    push af                                       ; $694c: $f5
    or $f7                                        ; $694d: $f6 $f7
    nop                                           ; $694f: $00
    ld hl, sp-$07                                 ; $6950: $f8 $f9
    ld a, [$bdfb]                                 ; $6952: $fa $fb $bd
    db $fc                                        ; $6955: $fc
    db $fd                                        ; $6956: $fd
    cp $00                                        ; $6957: $fe $00
    ld sp, hl                                     ; $6959: $f9
    ld hl, sp-$09                                 ; $695a: $f8 $f7
    or $f5                                        ; $695c: $f6 $f5
    db $f4                                        ; $695e: $f4
    di                                            ; $695f: $f3
    inc b                                         ; $6960: $04
    ld e, $01                                     ; $6961: $1e $01
    ld bc, $0401                                  ; $6963: $01 $01 $04
    ld [$2003], sp                                ; $6966: $08 $03 $20
    rrca                                          ; $6969: $0f
    db $10                                        ; $696a: $10
    inc d                                         ; $696b: $14
    sbc b                                         ; $696c: $98
    add hl, bc                                    ; $696d: $09
    xor c                                         ; $696e: $a9
    ld bc, $0128                                  ; $696f: $01 $28 $01
    dec bc                                        ; $6972: $0b
    jr z, jr_0ca_697f                             ; $6973: $28 $0a

    ld bc, $0d98                                  ; $6975: $01 $98 $0d
    dec c                                         ; $6978: $0d
    ld b, $20                                     ; $6979: $06 $20
    rra                                           ; $697b: $1f
    dec c                                         ; $697c: $0d
    dec l                                         ; $697d: $2d
    ld a, [hl+]                                   ; $697e: $2a

jr_0ca_697f:
    ld bc, $1310                                  ; $697f: $01 $10 $13
    jr z, @+$32                                   ; $6982: $28 $30

    db $10                                        ; $6984: $10
    inc de                                        ; $6985: $13
    jr jr_0ca_699c                                ; $6986: $18 $14

    ld [$03c7], sp                                ; $6988: $08 $c7 $03
    db $10                                        ; $698b: $10
    jr nc, jr_0ca_699e                            ; $698c: $30 $10

    ld a, [hl+]                                   ; $698e: $2a
    dec l                                         ; $698f: $2d
    dec l                                         ; $6990: $2d
    dec hl                                        ; $6991: $2b
    ld [$103c], sp                                ; $6992: $08 $3c $10
    dec a                                         ; $6995: $3d
    ld [$3c93], sp                                ; $6996: $08 $93 $3c
    ld [$2a2a], sp                                ; $6999: $08 $2a $2a

jr_0ca_699c:
    ld a, $00                                     ; $699c: $3e $00

jr_0ca_699e:
    dec l                                         ; $699e: $2d
    ld a, [hl+]                                   ; $699f: $2a
    ld h, $10                                     ; $69a0: $26 $10
    ld d, $18                                     ; $69a2: $16 $18
    di                                            ; $69a4: $f3
    ld d, b                                       ; $69a5: $50
    nop                                           ; $69a6: $00
    ld d, c                                       ; $69a7: $51
    jr jr_0ca_69cd                                ; $69a8: $18 $23

    jr nz, jr_0ca_6a17                            ; $69aa: $20 $6b

    ld [$0a0a], sp                                ; $69ac: $08 $0a $0a
    ld a, [hl-]                                   ; $69af: $3a
    nop                                           ; $69b0: $00
    dec a                                         ; $69b1: $3d
    ld [$79ff], sp                                ; $69b2: $08 $ff $79
    jr nc, jr_0ca_6a35                            ; $69b5: $30 $7e

    ld [$0814], sp                                ; $69b7: $08 $14 $08
    ccf                                           ; $69ba: $3f
    nop                                           ; $69bb: $00
    ld [hl+], a                                   ; $69bc: $22
    jr nz, jr_0ca_6a00                            ; $69bd: $20 $41

    ld [$203c], sp                                ; $69bf: $08 $3c $20
    inc d                                         ; $69c2: $14
    ld [$99f0], sp                                ; $69c3: $08 $f0 $99
    ld [$18a7], sp                                ; $69c6: $08 $a7 $18
    ld d, b                                       ; $69c9: $50
    nop                                           ; $69ca: $00
    dec a                                         ; $69cb: $3d
    db $10                                        ; $69cc: $10

jr_0ca_69cd:
    inc d                                         ; $69cd: $14
    nop                                           ; $69ce: $00
    dec c                                         ; $69cf: $0d
    nop                                           ; $69d0: $00
    ld l, $01                                     ; $69d1: $2e $01
    nop                                           ; $69d3: $00
    ld l, b                                       ; $69d4: $68
    ld l, c                                       ; $69d5: $69
    ld l, d                                       ; $69d6: $6a
    ld l, e                                       ; $69d7: $6b
    ld l, h                                       ; $69d8: $6c
    ld l, l                                       ; $69d9: $6d
    ld l, [hl]                                    ; $69da: $6e
    ld l, a                                       ; $69db: $6f
    nop                                           ; $69dc: $00
    ld [hl], b                                    ; $69dd: $70
    ld [hl], b                                    ; $69de: $70
    ld [hl], c                                    ; $69df: $71
    ld l, b                                       ; $69e0: $68
    ld [hl], b                                    ; $69e1: $70
    ld [hl], d                                    ; $69e2: $72
    ld [hl], e                                    ; $69e3: $73
    ld [hl], b                                    ; $69e4: $70
    add b                                         ; $69e5: $80
    dec bc                                        ; $69e6: $0b
    ld [$7574], sp                                ; $69e7: $08 $74 $75
    halt                                          ; $69ea: $76
    ld [hl], a                                    ; $69eb: $77
    ld a, b                                       ; $69ec: $78
    ld a, c                                       ; $69ed: $79
    ld a, d                                       ; $69ee: $7a
    nop                                           ; $69ef: $00
    ld a, e                                       ; $69f0: $7b
    ld a, h                                       ; $69f1: $7c
    ld [hl], l                                    ; $69f2: $75
    ld a, l                                       ; $69f3: $7d
    ld [hl], h                                    ; $69f4: $74
    ld a, h                                       ; $69f5: $7c
    ld [hl], l                                    ; $69f6: $75
    ld a, h                                       ; $69f7: $7c
    ld b, b                                       ; $69f8: $40
    ld a, h                                       ; $69f9: $7c
    dec bc                                        ; $69fa: $0b
    ld [$7f7e], sp                                ; $69fb: $08 $7e $7f
    add b                                         ; $69fe: $80
    add c                                         ; $69ff: $81

jr_0ca_6a00:
    add d                                         ; $6a00: $82
    add e                                         ; $6a01: $83
    nop                                           ; $6a02: $00
    add h                                         ; $6a03: $84
    add l                                         ; $6a04: $85
    add [hl]                                      ; $6a05: $86
    ld a, a                                       ; $6a06: $7f
    add a                                         ; $6a07: $87
    ld a, [hl]                                    ; $6a08: $7e
    add [hl]                                      ; $6a09: $86
    ld a, a                                       ; $6a0a: $7f
    jr nz, @-$78                                  ; $6a0b: $20 $86

    add [hl]                                      ; $6a0d: $86
    dec bc                                        ; $6a0e: $0b
    ld [$8988], sp                                ; $6a0f: $08 $88 $89
    adc d                                         ; $6a12: $8a
    adc e                                         ; $6a13: $8b
    adc h                                         ; $6a14: $8c
    ld b, b                                       ; $6a15: $40
    adc l                                         ; $6a16: $8d

jr_0ca_6a17:
    ld b, $58                                     ; $6a17: $06 $58
    adc [hl]                                      ; $6a19: $8e
    adc a                                         ; $6a1a: $8f
    sub b                                         ; $6a1b: $90
    sub c                                         ; $6a1c: $91
    sub d                                         ; $6a1d: $92
    sub e                                         ; $6a1e: $93
    nop                                           ; $6a1f: $00
    sub h                                         ; $6a20: $94
    sub b                                         ; $6a21: $90
    sub l                                         ; $6a22: $95
    sub [hl]                                      ; $6a23: $96
    sub e                                         ; $6a24: $93
    sub a                                         ; $6a25: $97
    sbc b                                         ; $6a26: $98
    sub h                                         ; $6a27: $94
    nop                                           ; $6a28: $00
    sub e                                         ; $6a29: $93
    sub d                                         ; $6a2a: $92

Call_0ca_6a2b:
    sub c                                         ; $6a2b: $91
    sub b                                         ; $6a2c: $90
    adc a                                         ; $6a2d: $8f
    adc [hl]                                      ; $6a2e: $8e
    sbc c                                         ; $6a2f: $99
    sbc d                                         ; $6a30: $9a
    nop                                           ; $6a31: $00
    sbc e                                         ; $6a32: $9b
    sbc h                                         ; $6a33: $9c
    sbc l                                         ; $6a34: $9d

jr_0ca_6a35:
    sbc [hl]                                      ; $6a35: $9e
    sbc a                                         ; $6a36: $9f
    and b                                         ; $6a37: $a0
    and c                                         ; $6a38: $a1
    and d                                         ; $6a39: $a2
    nop                                           ; $6a3a: $00
    and e                                         ; $6a3b: $a3
    and h                                         ; $6a3c: $a4
    and l                                         ; $6a3d: $a5
    sbc a                                         ; $6a3e: $9f
    sbc [hl]                                      ; $6a3f: $9e
    sbc l                                         ; $6a40: $9d
    sbc h                                         ; $6a41: $9c
    sbc e                                         ; $6a42: $9b
    nop                                           ; $6a43: $00
    sbc d                                         ; $6a44: $9a
    sbc c                                         ; $6a45: $99
    and [hl]                                      ; $6a46: $a6
    and a                                         ; $6a47: $a7
    xor b                                         ; $6a48: $a8
    xor c                                         ; $6a49: $a9
    xor d                                         ; $6a4a: $aa
    xor e                                         ; $6a4b: $ab
    nop                                           ; $6a4c: $00
    xor h                                         ; $6a4d: $ac
    xor l                                         ; $6a4e: $ad
    xor [hl]                                      ; $6a4f: $ae
    xor a                                         ; $6a50: $af
    or b                                          ; $6a51: $b0
    or c                                          ; $6a52: $b1
    or d                                          ; $6a53: $b2
    xor h                                         ; $6a54: $ac
    nop                                           ; $6a55: $00
    xor e                                         ; $6a56: $ab
    xor d                                         ; $6a57: $aa
    xor c                                         ; $6a58: $a9
    xor b                                         ; $6a59: $a8
    and a                                         ; $6a5a: $a7
    and [hl]                                      ; $6a5b: $a6
    or e                                          ; $6a5c: $b3
    or h                                          ; $6a5d: $b4
    nop                                           ; $6a5e: $00
    or l                                          ; $6a5f: $b5
    or [hl]                                       ; $6a60: $b6
    or a                                          ; $6a61: $b7
    cp b                                          ; $6a62: $b8
    cp c                                          ; $6a63: $b9
    cp d                                          ; $6a64: $ba
    cp e                                          ; $6a65: $bb
    cp h                                          ; $6a66: $bc
    nop                                           ; $6a67: $00
    cp l                                          ; $6a68: $bd
    cp [hl]                                       ; $6a69: $be
    cp a                                          ; $6a6a: $bf
    cp c                                          ; $6a6b: $b9
    cp b                                          ; $6a6c: $b8
    or a                                          ; $6a6d: $b7
    or [hl]                                       ; $6a6e: $b6
    or l                                          ; $6a6f: $b5
    nop                                           ; $6a70: $00
    or h                                          ; $6a71: $b4
    or e                                          ; $6a72: $b3
    ret nz                                        ; $6a73: $c0

    pop bc                                        ; $6a74: $c1
    jp nz, $c4c3                                  ; $6a75: $c2 $c3 $c4

    push bc                                       ; $6a78: $c5
    nop                                           ; $6a79: $00
    add $c7                                       ; $6a7a: $c6 $c7
    ret z                                         ; $6a7c: $c8

    ret                                           ; $6a7d: $c9


    jp z, $cccb                                   ; $6a7e: $ca $cb $cc

    add $00                                       ; $6a81: $c6 $00
    push bc                                       ; $6a83: $c5
    call nz, $c2c3                                ; $6a84: $c4 $c3 $c2
    pop bc                                        ; $6a87: $c1
    ret nz                                        ; $6a88: $c0

    call Call_000_00ce                            ; $6a89: $cd $ce $00
    rst $08                                       ; $6a8c: $cf
    ret nc                                        ; $6a8d: $d0

    pop de                                        ; $6a8e: $d1
    jp nc, $d4d3                                  ; $6a8f: $d2 $d3 $d4

    push de                                       ; $6a92: $d5
    sub $00                                       ; $6a93: $d6 $00
    rst $10                                       ; $6a95: $d7
    ret c                                         ; $6a96: $d8

    reti                                          ; $6a97: $d9


    db $d3                                        ; $6a98: $d3
    jp nc, $d0d1                                  ; $6a99: $d2 $d1 $d0

    rst $08                                       ; $6a9c: $cf
    nop                                           ; $6a9d: $00
    adc $cd                                       ; $6a9e: $ce $cd
    jp c, $dcdb                                   ; $6aa0: $da $db $dc

    db $dd                                        ; $6aa3: $dd
    sbc $df                                       ; $6aa4: $de $df
    nop                                           ; $6aa6: $00
    ldh [$e1], a                                  ; $6aa7: $e0 $e1
    ld [c], a                                     ; $6aa9: $e2
    and d                                         ; $6aaa: $a2
    db $e3                                        ; $6aab: $e3
    db $e4                                        ; $6aac: $e4
    push hl                                       ; $6aad: $e5
    ldh [rP1], a                                  ; $6aae: $e0 $00
    rst $18                                       ; $6ab0: $df
    sbc $dd                                       ; $6ab1: $de $dd
    call c, $dadb                                 ; $6ab3: $dc $db $da
    and $e7                                       ; $6ab6: $e6 $e7
    nop                                           ; $6ab8: $00
    add sp, -$17                                  ; $6ab9: $e8 $e9
    ld [$eceb], a                                 ; $6abb: $ea $eb $ec
    db $ed                                        ; $6abe: $ed
    xor $af                                       ; $6abf: $ee $af
    nop                                           ; $6ac1: $00
    rst $28                                       ; $6ac2: $ef
    ldh a, [$f1]                                  ; $6ac3: $f0 $f1
    db $ec                                        ; $6ac5: $ec
    db $eb                                        ; $6ac6: $eb
    ld [$e8e9], a                                 ; $6ac7: $ea $e9 $e8
    nop                                           ; $6aca: $00
    rst $20                                       ; $6acb: $e7
    and $f2                                       ; $6acc: $e6 $f2
    di                                            ; $6ace: $f3
    db $f4                                        ; $6acf: $f4
    push af                                       ; $6ad0: $f5
    or $f7                                        ; $6ad1: $f6 $f7
    nop                                           ; $6ad3: $00
    ld hl, sp-$07                                 ; $6ad4: $f8 $f9
    ld a, [$fbbc]                                 ; $6ad6: $fa $bc $fb
    db $fc                                        ; $6ad9: $fc
    db $fd                                        ; $6ada: $fd
    ld hl, sp+$01                                 ; $6adb: $f8 $01
    rst $30                                       ; $6add: $f7
    or $f5                                        ; $6ade: $f6 $f5
    db $f4                                        ; $6ae0: $f4
    di                                            ; $6ae1: $f3
    ld a, [c]                                     ; $6ae2: $f2
    ld bc, $1001                                  ; $6ae3: $01 $01 $10
    ld a, d                                       ; $6ae6: $7a
    ld b, $04                                     ; $6ae7: $06 $04
    jr nz, jr_0ca_6aee                            ; $6ae9: $20 $03

    ld c, b                                       ; $6aeb: $48
    inc d                                         ; $6aec: $14
    db $10                                        ; $6aed: $10

jr_0ca_6aee:
    dec d                                         ; $6aee: $15
    ld b, b                                       ; $6aef: $40
    add hl, bc                                    ; $6af0: $09
    ld bc, $0e00                                  ; $6af1: $01 $00 $0e
    ld a, [de]                                    ; $6af4: $1a
    ld c, $09                                     ; $6af5: $0e $09
    ld bc, $1002                                  ; $6af7: $01 $02 $10
    ld bc, $0a10                                  ; $6afa: $01 $10 $0a
    ld bc, $0dd8                                  ; $6afd: $01 $d8 $0d
    ld [hl], $0a                                  ; $6b00: $36 $0a
    ld a, [hl+]                                   ; $6b02: $2a
    ld bc, $0b18                                  ; $6b03: $01 $18 $0b
    ld [$110d], sp                                ; $6b06: $08 $0d $11
    db $10                                        ; $6b09: $10
    ld b, $00                                     ; $6b0a: $06 $00
    ld a, [hl+]                                   ; $6b0c: $2a
    ld e, $2a                                     ; $6b0d: $1e $2a
    dec l                                         ; $6b0f: $2d
    dec l                                         ; $6b10: $2d
    jr jr_0ca_6b13                                ; $6b11: $18 $00

jr_0ca_6b13:
    stop                                          ; $6b13: $10 $00
    inc bc                                        ; $6b15: $03
    ld [$1019], sp                                ; $6b16: $08 $19 $10
    dec c                                         ; $6b19: $0d
    ld a, a                                       ; $6b1a: $7f
    ld a, [hl+]                                   ; $6b1b: $2a
    ld [de], a                                    ; $6b1c: $12
    ld [$1828], sp                                ; $6b1d: $08 $28 $18
    dec hl                                        ; $6b20: $2b
    ld [$101c], sp                                ; $6b21: $08 $1c $10
    inc a                                         ; $6b24: $3c
    jr nz, jr_0ca_6b34                            ; $6b25: $20 $0d

    ld [$103d], sp                                ; $6b27: $08 $3d $10
    call c, Call_000_183c                         ; $6b2a: $dc $3c $18
    ld d, d                                       ; $6b2d: $52
    nop                                           ; $6b2e: $00
    dec l                                         ; $6b2f: $2d
    ld d, b                                       ; $6b30: $50
    nop                                           ; $6b31: $00
    ld a, [hl-]                                   ; $6b32: $3a
    db $10                                        ; $6b33: $10

jr_0ca_6b34:
    add hl, hl                                    ; $6b34: $29
    db $10                                        ; $6b35: $10
    ld a, [bc]                                    ; $6b36: $0a
    dec l                                         ; $6b37: $2d
    rst $38                                       ; $6b38: $ff
    ld c, a                                       ; $6b39: $4f
    nop                                           ; $6b3a: $00
    ld d, c                                       ; $6b3b: $51
    nop                                           ; $6b3c: $00
    ld c, h                                       ; $6b3d: $4c
    ld [$0002], sp                                ; $6b3e: $08 $02 $00
    ld l, b                                       ; $6b41: $68
    jr jr_0ca_6ba7                                ; $6b42: $18 $63

    nop                                           ; $6b44: $00
    ld h, h                                       ; $6b45: $64
    ld [$283a], sp                                ; $6b46: $08 $3a $28
    db $fc                                        ; $6b49: $fc
    add b                                         ; $6b4a: $80
    db $10                                        ; $6b4b: $10
    inc d                                         ; $6b4c: $14
    jr nz, jr_0ca_6b9f                            ; $6b4d: $20 $50

    db $10                                        ; $6b4f: $10
    ld a, b                                       ; $6b50: $78
    jr @-$5e                                      ; $6b51: $18 $a0

    nop                                           ; $6b53: $00
    ld a, b                                       ; $6b54: $78
    jr jr_0ca_6b6b                                ; $6b55: $18 $14

    nop                                           ; $6b57: $00
    dec c                                         ; $6b58: $0d
    nop                                           ; $6b59: $00
    rlca                                          ; $6b5a: $07
    ld bc, $2b00                                  ; $6b5b: $01 $00 $2b
    set 4, b                                      ; $6b5e: $cb $e0
    db $dd                                        ; $6b60: $dd
    ld b, $d3                                     ; $6b61: $06 $d3
    dec h                                         ; $6b63: $25
    ei                                            ; $6b64: $fb
    nop                                           ; $6b65: $00
    ld [hl], b                                    ; $6b66: $70
    ld [hl], c                                    ; $6b67: $71
    ld [hl], d                                    ; $6b68: $72
    ld [hl], e                                    ; $6b69: $73
    ld [hl], h                                    ; $6b6a: $74

jr_0ca_6b6b:
    ld [hl], l                                    ; $6b6b: $75
    halt                                          ; $6b6c: $76
    ld [hl], a                                    ; $6b6d: $77
    nop                                           ; $6b6e: $00
    ld a, b                                       ; $6b6f: $78
    db $d3                                        ; $6b70: $d3
    dec h                                         ; $6b71: $25
    ld a, c                                       ; $6b72: $79
    ld a, d                                       ; $6b73: $7a
    ld a, e                                       ; $6b74: $7b
    ld a, h                                       ; $6b75: $7c
    ld a, l                                       ; $6b76: $7d
    nop                                           ; $6b77: $00
    ld a, [hl]                                    ; $6b78: $7e
    ld a, a                                       ; $6b79: $7f
    add b                                         ; $6b7a: $80
    add c                                         ; $6b7b: $81
    add d                                         ; $6b7c: $82
    add e                                         ; $6b7d: $83
    add h                                         ; $6b7e: $84
    add l                                         ; $6b7f: $85
    nop                                           ; $6b80: $00
    add [hl]                                      ; $6b81: $86
    add a                                         ; $6b82: $87
    adc b                                         ; $6b83: $88
    adc c                                         ; $6b84: $89
    adc d                                         ; $6b85: $8a
    adc e                                         ; $6b86: $8b
    adc h                                         ; $6b87: $8c
    adc l                                         ; $6b88: $8d
    nop                                           ; $6b89: $00
    adc [hl]                                      ; $6b8a: $8e
    adc a                                         ; $6b8b: $8f
    sub b                                         ; $6b8c: $90
    sub c                                         ; $6b8d: $91
    sub d                                         ; $6b8e: $92
    sub e                                         ; $6b8f: $93
    adc [hl]                                      ; $6b90: $8e
    sub h                                         ; $6b91: $94
    add b                                         ; $6b92: $80
    ld b, $08                                     ; $6b93: $06 $08
    sub l                                         ; $6b95: $95
    sub [hl]                                      ; $6b96: $96
    sub a                                         ; $6b97: $97
    sbc b                                         ; $6b98: $98
    sbc c                                         ; $6b99: $99
    sbc d                                         ; $6b9a: $9a
    sbc e                                         ; $6b9b: $9b
    nop                                           ; $6b9c: $00
    sbc h                                         ; $6b9d: $9c
    sbc l                                         ; $6b9e: $9d

jr_0ca_6b9f:
    sbc [hl]                                      ; $6b9f: $9e
    sbc a                                         ; $6ba0: $9f
    and b                                         ; $6ba1: $a0
    and c                                         ; $6ba2: $a1
    and d                                         ; $6ba3: $a2
    and e                                         ; $6ba4: $a3
    nop                                           ; $6ba5: $00
    and h                                         ; $6ba6: $a4

jr_0ca_6ba7:
    and l                                         ; $6ba7: $a5
    and [hl]                                      ; $6ba8: $a6
    and a                                         ; $6ba9: $a7
    xor b                                         ; $6baa: $a8
    xor c                                         ; $6bab: $a9
    xor d                                         ; $6bac: $aa
    xor e                                         ; $6bad: $ab
    nop                                           ; $6bae: $00
    xor h                                         ; $6baf: $ac
    xor l                                         ; $6bb0: $ad
    xor [hl]                                      ; $6bb1: $ae
    xor a                                         ; $6bb2: $af
    or b                                          ; $6bb3: $b0
    or c                                          ; $6bb4: $b1
    or d                                          ; $6bb5: $b2
    or e                                          ; $6bb6: $b3
    nop                                           ; $6bb7: $00
    or h                                          ; $6bb8: $b4
    or l                                          ; $6bb9: $b5
    or [hl]                                       ; $6bba: $b6
    or a                                          ; $6bbb: $b7
    cp b                                          ; $6bbc: $b8
    cp c                                          ; $6bbd: $b9
    cp d                                          ; $6bbe: $ba
    cp e                                          ; $6bbf: $bb
    nop                                           ; $6bc0: $00
    cp h                                          ; $6bc1: $bc
    cp l                                          ; $6bc2: $bd
    cp [hl]                                       ; $6bc3: $be
    cp a                                          ; $6bc4: $bf
    ret nz                                        ; $6bc5: $c0

    pop bc                                        ; $6bc6: $c1
    jp nz, $00c3                                  ; $6bc7: $c2 $c3 $00

    call nz, $c6c5                                ; $6bca: $c4 $c5 $c6
    rst $00                                       ; $6bcd: $c7
    ret z                                         ; $6bce: $c8

    ret                                           ; $6bcf: $c9


    jp z, $0069                                   ; $6bd0: $ca $69 $00

    call z, $cecd                                 ; $6bd3: $cc $cd $ce
    rst $08                                       ; $6bd6: $cf
    ret nc                                        ; $6bd7: $d0

    pop de                                        ; $6bd8: $d1
    jp nc, $006d                                  ; $6bd9: $d2 $6d $00

    call nc, $d6d5                                ; $6bdc: $d4 $d5 $d6
    rst $10                                       ; $6bdf: $d7
    ret c                                         ; $6be0: $d8

    reti                                          ; $6be1: $d9


    jp c, Jump_000_00db                           ; $6be2: $da $db $00

    call c, $de6b                                 ; $6be5: $dc $6b $de
    rst $18                                       ; $6be8: $df
    ld l, d                                       ; $6be9: $6a
    pop hl                                        ; $6bea: $e1
    ld [c], a                                     ; $6beb: $e2
    db $e3                                        ; $6bec: $e3

jr_0ca_6bed:
    nop                                           ; $6bed: $00
    db $e4                                        ; $6bee: $e4
    push hl                                       ; $6bef: $e5
    and $e7                                       ; $6bf0: $e6 $e7
    add sp, -$17                                  ; $6bf2: $e8 $e9
    ld [$00eb], a                                 ; $6bf4: $ea $eb $00
    db $ec                                        ; $6bf7: $ec
    db $ed                                        ; $6bf8: $ed
    xor $ef                                       ; $6bf9: $ee $ef
    ldh a, [$f1]                                  ; $6bfb: $f0 $f1
    ld a, [c]                                     ; $6bfd: $f2
    di                                            ; $6bfe: $f3
    nop                                           ; $6bff: $00
    db $f4                                        ; $6c00: $f4
    push af                                       ; $6c01: $f5
    or $f7                                        ; $6c02: $f6 $f7
    ld hl, sp-$07                                 ; $6c04: $f8 $f9
    ld a, [$006f]                                 ; $6c06: $fa $6f $00
    db $fc                                        ; $6c09: $fc
    db $fd                                        ; $6c0a: $fd
    cp $ff                                        ; $6c0b: $fe $ff
    nop                                           ; $6c0d: $00
    ld bc, $0302                                  ; $6c0e: $01 $02 $03
    nop                                           ; $6c11: $00
    inc b                                         ; $6c12: $04
    dec b                                         ; $6c13: $05
    ld l, h                                       ; $6c14: $6c
    rlca                                          ; $6c15: $07
    ld [$0a09], sp                                ; $6c16: $08 $09 $0a
    dec bc                                        ; $6c19: $0b
    nop                                           ; $6c1a: $00
    inc c                                         ; $6c1b: $0c
    dec c                                         ; $6c1c: $0d
    ld c, $0f                                     ; $6c1d: $0e $0f
    db $10                                        ; $6c1f: $10
    ld de, $1312                                  ; $6c20: $11 $12 $13
    db $10                                        ; $6c23: $10
    inc d                                         ; $6c24: $14
    dec d                                         ; $6c25: $15
    ld d, $5a                                     ; $6c26: $16 $5a
    jr jr_0ca_6c41                                ; $6c28: $18 $17

    call nz, $1918                                ; $6c2a: $c4 $18 $19
    nop                                           ; $6c2d: $00
    ld a, [de]                                    ; $6c2e: $1a
    dec de                                        ; $6c2f: $1b
    inc e                                         ; $6c30: $1c
    dec e                                         ; $6c31: $1d
    ld e, $1f                                     ; $6c32: $1e $1f
    jr nz, jr_0ca_6bed                            ; $6c34: $20 $b7

    add e                                         ; $6c36: $83
    ld e, d                                       ; $6c37: $5a
    jr c, jr_0ca_6c5b                             ; $6c38: $38 $21

    ld [hl+], a                                   ; $6c3a: $22
    inc hl                                        ; $6c3b: $23
    push bc                                       ; $6c3c: $c5
    inc h                                         ; $6c3d: $24
    ld [hl], c                                    ; $6c3e: $71
    db $10                                        ; $6c3f: $10
    ld e, d                                       ; $6c40: $5a

jr_0ca_6c41:
    jr c, jr_0ca_6c5b                             ; $6c41: $38 $18

    ld l, [hl]                                    ; $6c43: $6e
    ld h, $27                                     ; $6c44: $26 $27
    ld [hl], c                                    ; $6c46: $71
    jr nz, @+$5c                                  ; $6c47: $20 $5a

    jr c, jr_0ca_6c73                             ; $6c49: $38 $28

    add hl, hl                                    ; $6c4b: $29
    ld a, [hl+]                                   ; $6c4c: $2a
    xor a                                         ; $6c4d: $af
    ld [hl], c                                    ; $6c4e: $71
    jr nz, @+$0b                                  ; $6c4f: $20 $09

    ld bc, $0120                                  ; $6c51: $01 $20 $01
    ld bc, $0b28                                  ; $6c54: $01 $28 $0b
    jr nc, jr_0ca_6c73                            ; $6c57: $30 $1a

    jr z, jr_0ca_6c63                             ; $6c59: $28 $08

jr_0ca_6c5b:
    cp b                                          ; $6c5b: $b8
    ld b, b                                       ; $6c5c: $40
    ld c, $01                                     ; $6c5d: $0e $01
    add b                                         ; $6c5f: $80
    ld a, [bc]                                    ; $6c60: $0a
    ld a, [bc]                                    ; $6c61: $0a
    ld a, [bc]                                    ; $6c62: $0a

jr_0ca_6c63:
    inc c                                         ; $6c63: $0c
    inc c                                         ; $6c64: $0c
    inc c                                         ; $6c65: $0c
    ld a, $0a                                     ; $6c66: $3e $0a
    inc c                                         ; $6c68: $0c
    ld [$0b00], sp                                ; $6c69: $08 $00 $0b
    ld [$1002], sp                                ; $6c6c: $08 $02 $10
    ld [de], a                                    ; $6c6f: $12
    nop                                           ; $6c70: $00
    rla                                           ; $6c71: $17
    nop                                           ; $6c72: $00

jr_0ca_6c73:
    ld [bc], a                                    ; $6c73: $02
    ret c                                         ; $6c74: $d8

    inc d                                         ; $6c75: $14
    ld [$0018], sp                                ; $6c76: $08 $18 $00
    ld [bc], a                                    ; $6c79: $02
    dec de                                        ; $6c7a: $1b
    jr @+$14                                      ; $6c7b: $18 $12

    ld [$0c0a], sp                                ; $6c7d: $08 $0a $0c
    inc b                                         ; $6c80: $04
    db $fd                                        ; $6c81: $fd
    dec hl                                        ; $6c82: $2b
    jr nz, @+$09                                  ; $6c83: $20 $07

    jr z, jr_0ca_6c88                             ; $6c85: $28 $01

    db $10                                        ; $6c87: $10

jr_0ca_6c88:
    ld e, $20                                     ; $6c88: $1e $20
    ld b, h                                       ; $6c8a: $44
    jr @+$3e                                      ; $6c8b: $18 $3c

    ld [$5004], sp                                ; $6c8d: $08 $04 $50
    db $10                                        ; $6c90: $10
    db $fc                                        ; $6c91: $fc
    ld d, h                                       ; $6c92: $54
    jr nz, jr_0ca_6ced                            ; $6c93: $20 $58

    jr @+$09                                      ; $6c95: $18 $07

    ld c, b                                       ; $6c97: $48
    ld h, e                                       ; $6c98: $63
    db $10                                        ; $6c99: $10
    ld d, b                                       ; $6c9a: $50
    db $10                                        ; $6c9b: $10
    ld bc, $0c48                                  ; $6c9c: $01 $48 $0c
    inc b                                         ; $6c9f: $04
    adc $83                                       ; $6ca0: $ce $83
    jr nc, jr_0ca_6d18                            ; $6ca2: $30 $74

    jr jr_0ca_6cb2                                ; $6ca4: $18 $0c

    inc c                                         ; $6ca6: $0c
    rlca                                          ; $6ca7: $07
    jr z, jr_0ca_6cf4                             ; $6ca8: $28 $4a

    jr nc, @-$57                                  ; $6caa: $30 $a7

    jr jr_0ca_6cc2                                ; $6cac: $18 $14

    nop                                           ; $6cae: $00
    dec c                                         ; $6caf: $0d
    nop                                           ; $6cb0: $00
    ei                                            ; $6cb1: $fb

jr_0ca_6cb2:
    nop                                           ; $6cb2: $00
    ld [bc], a                                    ; $6cb3: $02
    ld l, b                                       ; $6cb4: $68
    ld l, c                                       ; $6cb5: $69
    ld l, d                                       ; $6cb6: $6a
    ld l, e                                       ; $6cb7: $6b
    ld l, h                                       ; $6cb8: $6c
    ld l, l                                       ; $6cb9: $6d
    ld b, $08                                     ; $6cba: $06 $08
    ld l, [hl]                                    ; $6cbc: $6e
    add c                                         ; $6cbd: $81
    ld b, $30                                     ; $6cbe: $06 $30
    ld l, a                                       ; $6cc0: $6f
    ld [hl], b                                    ; $6cc1: $70

jr_0ca_6cc2:
    ld [hl], c                                    ; $6cc2: $71
    ld [hl], d                                    ; $6cc3: $72
    ld [hl], e                                    ; $6cc4: $73
    ld [hl], h                                    ; $6cc5: $74
    ld b, $00                                     ; $6cc6: $06 $00
    jr nz, @+$77                                  ; $6cc8: $20 $75

    halt                                          ; $6cca: $76
    ld b, $30                                     ; $6ccb: $06 $30
    ld l, b                                       ; $6ccd: $68
    ld l, c                                       ; $6cce: $69
    ld [hl], a                                    ; $6ccf: $77
    ld a, b                                       ; $6cd0: $78
    ld a, c                                       ; $6cd1: $79
    ld d, b                                       ; $6cd2: $50
    ld a, c                                       ; $6cd3: $79
    ld b, $00                                     ; $6cd4: $06 $00
    ld a, c                                       ; $6cd6: $79
    ld b, $38                                     ; $6cd7: $06 $38
    ld a, d                                       ; $6cd9: $7a
    ld a, e                                       ; $6cda: $7b
    ld a, h                                       ; $6cdb: $7c
    ld a, l                                       ; $6cdc: $7d
    nop                                           ; $6cdd: $00
    ld a, [hl]                                    ; $6cde: $7e
    ld a, a                                       ; $6cdf: $7f
    ld a, d                                       ; $6ce0: $7a
    ld a, e                                       ; $6ce1: $7b
    add b                                         ; $6ce2: $80
    add c                                         ; $6ce3: $81
    add d                                         ; $6ce4: $82
    add e                                         ; $6ce5: $83
    add b                                         ; $6ce6: $80
    inc c                                         ; $6ce7: $0c
    jr z, @-$7b                                   ; $6ce8: $28 $83

    add h                                         ; $6cea: $84
    add l                                         ; $6ceb: $85
    add [hl]                                      ; $6cec: $86

jr_0ca_6ced:
    add a                                         ; $6ced: $87
    adc b                                         ; $6cee: $88
    adc c                                         ; $6cef: $89
    nop                                           ; $6cf0: $00
    adc d                                         ; $6cf1: $8a
    adc e                                         ; $6cf2: $8b
    adc h                                         ; $6cf3: $8c

jr_0ca_6cf4:
    adc l                                         ; $6cf4: $8d
    adc [hl]                                      ; $6cf5: $8e
    adc a                                         ; $6cf6: $8f
    sub b                                         ; $6cf7: $90
    sub c                                         ; $6cf8: $91
    nop                                           ; $6cf9: $00
    sub d                                         ; $6cfa: $92
    sub e                                         ; $6cfb: $93
    sub h                                         ; $6cfc: $94
    sub l                                         ; $6cfd: $95
    ld a, l                                       ; $6cfe: $7d
    sub [hl]                                      ; $6cff: $96
    sub a                                         ; $6d00: $97
    sbc b                                         ; $6d01: $98
    nop                                           ; $6d02: $00
    sbc c                                         ; $6d03: $99
    sbc d                                         ; $6d04: $9a
    sbc e                                         ; $6d05: $9b
    sbc h                                         ; $6d06: $9c
    sbc l                                         ; $6d07: $9d
    sbc [hl]                                      ; $6d08: $9e
    sbc a                                         ; $6d09: $9f
    and b                                         ; $6d0a: $a0
    nop                                           ; $6d0b: $00
    and c                                         ; $6d0c: $a1
    and d                                         ; $6d0d: $a2
    and e                                         ; $6d0e: $a3
    and h                                         ; $6d0f: $a4
    and l                                         ; $6d10: $a5
    and [hl]                                      ; $6d11: $a6
    and a                                         ; $6d12: $a7
    xor b                                         ; $6d13: $a8
    nop                                           ; $6d14: $00
    sub [hl]                                      ; $6d15: $96
    xor c                                         ; $6d16: $a9
    xor d                                         ; $6d17: $aa

jr_0ca_6d18:
    xor e                                         ; $6d18: $ab
    xor h                                         ; $6d19: $ac
    xor l                                         ; $6d1a: $ad
    xor [hl]                                      ; $6d1b: $ae
    xor a                                         ; $6d1c: $af
    nop                                           ; $6d1d: $00
    or b                                          ; $6d1e: $b0
    or c                                          ; $6d1f: $b1
    or d                                          ; $6d20: $b2
    or e                                          ; $6d21: $b3
    or h                                          ; $6d22: $b4
    or l                                          ; $6d23: $b5
    or [hl]                                       ; $6d24: $b6
    or a                                          ; $6d25: $b7
    nop                                           ; $6d26: $00
    cp b                                          ; $6d27: $b8
    cp c                                          ; $6d28: $b9
    cp d                                          ; $6d29: $ba
    cp e                                          ; $6d2a: $bb
    cp h                                          ; $6d2b: $bc
    cp l                                          ; $6d2c: $bd
    cp [hl]                                       ; $6d2d: $be
    cp a                                          ; $6d2e: $bf
    nop                                           ; $6d2f: $00
    ret nz                                        ; $6d30: $c0

    pop bc                                        ; $6d31: $c1
    jp nz, $c4c3                                  ; $6d32: $c2 $c3 $c4

    push bc                                       ; $6d35: $c5
    add $c7                                       ; $6d36: $c6 $c7
    nop                                           ; $6d38: $00
    ret z                                         ; $6d39: $c8

    ret                                           ; $6d3a: $c9


    jp z, $cccb                                   ; $6d3b: $ca $cb $cc

    call $cfce                                    ; $6d3e: $cd $ce $cf
    nop                                           ; $6d41: $00
    ret nc                                        ; $6d42: $d0

    pop de                                        ; $6d43: $d1
    jp nc, $d4d3                                  ; $6d44: $d2 $d3 $d4

    push de                                       ; $6d47: $d5
    sub $d7                                       ; $6d48: $d6 $d7
    nop                                           ; $6d4a: $00
    ret c                                         ; $6d4b: $d8

    reti                                          ; $6d4c: $d9


    jp c, $dcdb                                   ; $6d4d: $da $db $dc

    db $dd                                        ; $6d50: $dd
    sbc $df                                       ; $6d51: $de $df
    nop                                           ; $6d53: $00
    ldh [$e1], a                                  ; $6d54: $e0 $e1
    ld [c], a                                     ; $6d56: $e2
    db $e3                                        ; $6d57: $e3
    db $e4                                        ; $6d58: $e4
    push hl                                       ; $6d59: $e5
    and $e7                                       ; $6d5a: $e6 $e7
    nop                                           ; $6d5c: $00
    add sp, -$17                                  ; $6d5d: $e8 $e9
    ld [$eceb], a                                 ; $6d5f: $ea $eb $ec
    db $ed                                        ; $6d62: $ed
    xor $ef                                       ; $6d63: $ee $ef
    nop                                           ; $6d65: $00
    ldh a, [$f1]                                  ; $6d66: $f0 $f1
    ld a, [c]                                     ; $6d68: $f2
    di                                            ; $6d69: $f3
    db $f4                                        ; $6d6a: $f4
    push af                                       ; $6d6b: $f5
    or $f7                                        ; $6d6c: $f6 $f7
    nop                                           ; $6d6e: $00
    ld hl, sp-$07                                 ; $6d6f: $f8 $f9
    ld a, [$fcfb]                                 ; $6d71: $fa $fb $fc
    db $fd                                        ; $6d74: $fd
    cp $ff                                        ; $6d75: $fe $ff
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    ld bc, $0302                                  ; $6d79: $01 $02 $03
    inc b                                         ; $6d7c: $04
    dec b                                         ; $6d7d: $05
    ld b, $07                                     ; $6d7e: $06 $07
    nop                                           ; $6d80: $00
    ld [$0a09], sp                                ; $6d81: $08 $09 $0a
    dec bc                                        ; $6d84: $0b
    inc c                                         ; $6d85: $0c
    dec c                                         ; $6d86: $0d
    ld c, $0f                                     ; $6d87: $0e $0f
    nop                                           ; $6d89: $00
    db $10                                        ; $6d8a: $10
    ld de, $1312                                  ; $6d8b: $11 $12 $13
    inc d                                         ; $6d8e: $14
    dec d                                         ; $6d8f: $15
    ld d, $17                                     ; $6d90: $16 $17
    nop                                           ; $6d92: $00
    jr jr_0ca_6dae                                ; $6d93: $18 $19

    ld a, [de]                                    ; $6d95: $1a
    dec de                                        ; $6d96: $1b
    inc e                                         ; $6d97: $1c
    dec e                                         ; $6d98: $1d
    ld e, $1f                                     ; $6d99: $1e $1f
    nop                                           ; $6d9b: $00
    jr nz, @+$23                                  ; $6d9c: $20 $21

    ld [hl+], a                                   ; $6d9e: $22
    inc hl                                        ; $6d9f: $23
    inc h                                         ; $6da0: $24
    dec h                                         ; $6da1: $25
    ld h, $27                                     ; $6da2: $26 $27
    nop                                           ; $6da4: $00
    jr z, jr_0ca_6dd0                             ; $6da5: $28 $29

    ld a, [hl+]                                   ; $6da7: $2a
    dec hl                                        ; $6da8: $2b
    inc l                                         ; $6da9: $2c
    dec l                                         ; $6daa: $2d
    ld l, $2f                                     ; $6dab: $2e $2f
    nop                                           ; $6dad: $00

jr_0ca_6dae:
    jr nc, @+$33                                  ; $6dae: $30 $31

    ld [hl-], a                                   ; $6db0: $32
    inc sp                                        ; $6db1: $33
    inc [hl]                                      ; $6db2: $34
    ld bc, $0701                                  ; $6db3: $01 $01 $07
    db $f4                                        ; $6db6: $f4
    ld bc, $0600                                  ; $6db7: $01 $00 $06
    ld e, b                                       ; $6dba: $58
    inc d                                         ; $6dbb: $14
    ld hl, sp+$28                                 ; $6dbc: $f8 $28
    jr z, jr_0ca_6dc3                             ; $6dbe: $28 $03

    ld bc, $0100                                  ; $6dc0: $01 $00 $01

jr_0ca_6dc3:
    ld bc, $0b65                                  ; $6dc3: $01 $65 $0b
    ld bc, $0c00                                  ; $6dc6: $01 $00 $0c
    jr z, jr_0ca_6df8                             ; $6dc9: $28 $2d

    dec c                                         ; $6dcb: $0d
    ld bc, $0570                                  ; $6dcc: $01 $70 $05
    inc de                                        ; $6dcf: $13

jr_0ca_6dd0:
    ld a, b                                       ; $6dd0: $78
    dec de                                        ; $6dd1: $1b
    dec c                                         ; $6dd2: $0d
    dec c                                         ; $6dd3: $0d
    inc c                                         ; $6dd4: $0c
    ld bc, $23f8                                  ; $6dd5: $01 $f8 $23
    db $10                                        ; $6dd8: $10
    ld a, [bc]                                    ; $6dd9: $0a
    ld bc, $23f8                                  ; $6dda: $01 $f8 $23
    db $10                                        ; $6ddd: $10
    ld h, b                                       ; $6dde: $60
    add hl, bc                                    ; $6ddf: $09
    ld bc, $23f8                                  ; $6de0: $01 $f8 $23
    or b                                          ; $6de3: $b0
    inc d                                         ; $6de4: $14
    nop                                           ; $6de5: $00
    dec c                                         ; $6de6: $0d
    nop                                           ; $6de7: $00
    ld a, e                                       ; $6de8: $7b
    ld bc, $6800                                  ; $6de9: $01 $00 $68
    ld l, c                                       ; $6dec: $69
    ld l, d                                       ; $6ded: $6a
    ld l, b                                       ; $6dee: $68
    ld l, e                                       ; $6def: $6b
    ld l, h                                       ; $6df0: $6c
    ld l, b                                       ; $6df1: $68
    ld l, l                                       ; $6df2: $6d
    ld [$6f6e], sp                                ; $6df3: $08 $6e $6f
    ld l, [hl]                                    ; $6df6: $6e
    ld l, l                                       ; $6df7: $6d

jr_0ca_6df8:
    inc c                                         ; $6df8: $0c
    jr nz, jr_0ca_6e64                            ; $6df9: $20 $69

    ld [hl], b                                    ; $6dfb: $70
    ld [hl], c                                    ; $6dfc: $71
    nop                                           ; $6dfd: $00
    ld [hl], d                                    ; $6dfe: $72
    ld [hl], e                                    ; $6dff: $73
    ld [hl], h                                    ; $6e00: $74
    ld [hl], l                                    ; $6e01: $75
    halt                                          ; $6e02: $76
    ld [hl], a                                    ; $6e03: $77
    ld a, b                                       ; $6e04: $78
    ld a, c                                       ; $6e05: $79
    db $10                                        ; $6e06: $10
    ld a, d                                       ; $6e07: $7a
    ld [hl], a                                    ; $6e08: $77
    ld a, e                                       ; $6e09: $7b
    dec bc                                        ; $6e0a: $0b
    ld [$737c], sp                                ; $6e0b: $08 $7c $73
    ld [hl], d                                    ; $6e0e: $72
    ld a, l                                       ; $6e0f: $7d
    nop                                           ; $6e10: $00
    ld a, [hl]                                    ; $6e11: $7e
    ld a, a                                       ; $6e12: $7f
    add b                                         ; $6e13: $80
    add c                                         ; $6e14: $81
    add d                                         ; $6e15: $82
    add e                                         ; $6e16: $83
    add h                                         ; $6e17: $84
    add l                                         ; $6e18: $85
    nop                                           ; $6e19: $00
    add [hl]                                      ; $6e1a: $86

Call_0ca_6e1b:
    add a                                         ; $6e1b: $87
    add h                                         ; $6e1c: $84
    adc b                                         ; $6e1d: $88
    adc c                                         ; $6e1e: $89
    add d                                         ; $6e1f: $82
    add c                                         ; $6e20: $81
    add b                                         ; $6e21: $80
    nop                                           ; $6e22: $00
    ld a, a                                       ; $6e23: $7f
    ld a, [hl]                                    ; $6e24: $7e
    ld a, l                                       ; $6e25: $7d
    adc d                                         ; $6e26: $8a
    adc e                                         ; $6e27: $8b
    adc h                                         ; $6e28: $8c
    adc l                                         ; $6e29: $8d
    adc [hl]                                      ; $6e2a: $8e

Call_0ca_6e2b:
    nop                                           ; $6e2b: $00
    adc a                                         ; $6e2c: $8f
    sub b                                         ; $6e2d: $90
    sub c                                         ; $6e2e: $91
    sub d                                         ; $6e2f: $92
    sub e                                         ; $6e30: $93
    sub h                                         ; $6e31: $94
    sub c                                         ; $6e32: $91
    sub l                                         ; $6e33: $95
    nop                                           ; $6e34: $00
    sub [hl]                                      ; $6e35: $96
    adc a                                         ; $6e36: $8f
    adc [hl]                                      ; $6e37: $8e
    adc l                                         ; $6e38: $8d
    adc h                                         ; $6e39: $8c
    adc e                                         ; $6e3a: $8b
    adc d                                         ; $6e3b: $8a
    sub a                                         ; $6e3c: $97
    nop                                           ; $6e3d: $00
    sbc b                                         ; $6e3e: $98
    sbc c                                         ; $6e3f: $99
    sbc d                                         ; $6e40: $9a
    sbc e                                         ; $6e41: $9b
    sbc h                                         ; $6e42: $9c
    sbc l                                         ; $6e43: $9d
    sbc [hl]                                      ; $6e44: $9e
    sbc a                                         ; $6e45: $9f
    nop                                           ; $6e46: $00
    and b                                         ; $6e47: $a0
    sbc a                                         ; $6e48: $9f
    sbc [hl]                                      ; $6e49: $9e
    and c                                         ; $6e4a: $a1
    and d                                         ; $6e4b: $a2
    sbc h                                         ; $6e4c: $9c
    sbc e                                         ; $6e4d: $9b
    sbc d                                         ; $6e4e: $9a
    nop                                           ; $6e4f: $00
    sbc c                                         ; $6e50: $99
    sbc b                                         ; $6e51: $98
    sub a                                         ; $6e52: $97
    and e                                         ; $6e53: $a3
    and h                                         ; $6e54: $a4
    and l                                         ; $6e55: $a5
    and [hl]                                      ; $6e56: $a6
    and a                                         ; $6e57: $a7
    nop                                           ; $6e58: $00
    xor b                                         ; $6e59: $a8
    xor c                                         ; $6e5a: $a9
    xor d                                         ; $6e5b: $aa
    xor e                                         ; $6e5c: $ab
    xor h                                         ; $6e5d: $ac
    xor l                                         ; $6e5e: $ad
    xor [hl]                                      ; $6e5f: $ae
    xor a                                         ; $6e60: $af
    nop                                           ; $6e61: $00
    xor c                                         ; $6e62: $a9
    xor b                                         ; $6e63: $a8

jr_0ca_6e64:
    and a                                         ; $6e64: $a7
    and [hl]                                      ; $6e65: $a6
    and l                                         ; $6e66: $a5
    and h                                         ; $6e67: $a4
    and e                                         ; $6e68: $a3
    or b                                          ; $6e69: $b0
    nop                                           ; $6e6a: $00
    or c                                          ; $6e6b: $b1
    or d                                          ; $6e6c: $b2
    or e                                          ; $6e6d: $b3
    or h                                          ; $6e6e: $b4
    or l                                          ; $6e6f: $b5
    or [hl]                                       ; $6e70: $b6
    or a                                          ; $6e71: $b7
    cp b                                          ; $6e72: $b8
    nop                                           ; $6e73: $00
    cp c                                          ; $6e74: $b9
    cp d                                          ; $6e75: $ba
    cp e                                          ; $6e76: $bb
    cp h                                          ; $6e77: $bc
    or [hl]                                       ; $6e78: $b6
    or l                                          ; $6e79: $b5
    or h                                          ; $6e7a: $b4
    or e                                          ; $6e7b: $b3
    nop                                           ; $6e7c: $00
    or d                                          ; $6e7d: $b2
    or c                                          ; $6e7e: $b1
    or b                                          ; $6e7f: $b0
    cp l                                          ; $6e80: $bd
    cp [hl]                                       ; $6e81: $be
    cp a                                          ; $6e82: $bf
    ret nz                                        ; $6e83: $c0

    pop bc                                        ; $6e84: $c1
    nop                                           ; $6e85: $00
    jp nz, $c4c3                                  ; $6e86: $c2 $c3 $c4

    push bc                                       ; $6e89: $c5
    add $c7                                       ; $6e8a: $c6 $c7
    ret z                                         ; $6e8c: $c8

    ret                                           ; $6e8d: $c9


    nop                                           ; $6e8e: $00
    jp $c1c2                                      ; $6e8f: $c3 $c2 $c1


    ret nz                                        ; $6e92: $c0

    cp a                                          ; $6e93: $bf
    cp [hl]                                       ; $6e94: $be
    cp l                                          ; $6e95: $bd
    jp z, $cb00                                   ; $6e96: $ca $00 $cb

    call z, $cecd                                 ; $6e99: $cc $cd $ce
    rst $08                                       ; $6e9c: $cf
    ret nc                                        ; $6e9d: $d0

    pop de                                        ; $6e9e: $d1
    jp nc, $d300                                  ; $6e9f: $d2 $00 $d3

    call nc, $d6d5                                ; $6ea2: $d4 $d5 $d6
    ret nc                                        ; $6ea5: $d0

    rst $08                                       ; $6ea6: $cf
    adc $cd                                       ; $6ea7: $ce $cd
    nop                                           ; $6ea9: $00
    call z, $cacb                                 ; $6eaa: $cc $cb $ca
    rst $10                                       ; $6ead: $d7
    ret c                                         ; $6eae: $d8

    reti                                          ; $6eaf: $d9


    jp c, Jump_000_00db                           ; $6eb0: $da $db $00

    call c, $dedd                                 ; $6eb3: $dc $dd $de
    rst $18                                       ; $6eb6: $df
    ldh [$e1], a                                  ; $6eb7: $e0 $e1
    ld [c], a                                     ; $6eb9: $e2
    db $e3                                        ; $6eba: $e3
    nop                                           ; $6ebb: $00
    db $e4                                        ; $6ebc: $e4
    call c, $dadb                                 ; $6ebd: $dc $db $da
    reti                                          ; $6ec0: $d9


    ret c                                         ; $6ec1: $d8

    rst $10                                       ; $6ec2: $d7
    push hl                                       ; $6ec3: $e5
    nop                                           ; $6ec4: $00
    and $e7                                       ; $6ec5: $e6 $e7
    add sp, -$17                                  ; $6ec7: $e8 $e9
    ld [$eceb], a                                 ; $6ec9: $ea $eb $ec
    db $ed                                        ; $6ecc: $ed
    nop                                           ; $6ecd: $00
    xor $ef                                       ; $6ece: $ee $ef
    ldh a, [$f1]                                  ; $6ed0: $f0 $f1
    db $eb                                        ; $6ed2: $eb
    ld [$e8e9], a                                 ; $6ed3: $ea $e9 $e8
    nop                                           ; $6ed6: $00
    rst $20                                       ; $6ed7: $e7
    and $e5                                       ; $6ed8: $e6 $e5
    ld a, [c]                                     ; $6eda: $f2
    di                                            ; $6edb: $f3
    db $f4                                        ; $6edc: $f4
    push af                                       ; $6edd: $f5
    or $00                                        ; $6ede: $f6 $00
    rst $30                                       ; $6ee0: $f7
    ld hl, sp-$07                                 ; $6ee1: $f8 $f9
    ld a, [$fcfb]                                 ; $6ee3: $fa $fb $fc
    db $fd                                        ; $6ee6: $fd
    cp $00                                        ; $6ee7: $fe $00
    rst $38                                       ; $6ee9: $ff
    rst $30                                       ; $6eea: $f7
    or $f5                                        ; $6eeb: $f6 $f5
    db $f4                                        ; $6eed: $f4
    di                                            ; $6eee: $f3
    ld a, [c]                                     ; $6eef: $f2
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    ld bc, $0302                                  ; $6ef2: $01 $02 $03
    inc b                                         ; $6ef5: $04
    dec b                                         ; $6ef6: $05
    ld b, $07                                     ; $6ef7: $06 $07
    ld [$0900], sp                                ; $6ef9: $08 $00 $09
    ld a, [bc]                                    ; $6efc: $0a
    dec bc                                        ; $6efd: $0b
    inc c                                         ; $6efe: $0c
    dec c                                         ; $6eff: $0d
    dec b                                         ; $6f00: $05
    inc b                                         ; $6f01: $04
    inc bc                                        ; $6f02: $03
    ld [bc], a                                    ; $6f03: $02
    ld [bc], a                                    ; $6f04: $02
    ld bc, $0400                                  ; $6f05: $01 $00 $04
    inc bc                                        ; $6f08: $03
    inc bc                                        ; $6f09: $03
    inc bc                                        ; $6f0a: $03
    ld [$0b01], sp                                ; $6f0b: $08 $01 $0b
    ld [bc], a                                    ; $6f0e: $02
    ld [bc], a                                    ; $6f0f: $02
    ld [hl+], a                                   ; $6f10: $22
    ld hl, $200c                                  ; $6f11: $21 $0c $20
    inc bc                                        ; $6f14: $03
    ld bc, $1420                                  ; $6f15: $01 $20 $14
    nop                                           ; $6f18: $00
    jr nz, @+$04                                  ; $6f19: $20 $02

    ld hl, $180d                                  ; $6f1b: $21 $0d $18
    inc hl                                        ; $6f1e: $23
    inc hl                                        ; $6f1f: $23
    rlca                                          ; $6f20: $07
    rlca                                          ; $6f21: $07
    rlca                                          ; $6f22: $07
    ld b, b                                       ; $6f23: $40
    rrca                                          ; $6f24: $0f
    ld bc, $0900                                  ; $6f25: $01 $00 $09
    ld a, [bc]                                    ; $6f28: $0a
    ld a, [bc]                                    ; $6f29: $0a
    ld a, [bc]                                    ; $6f2a: $0a
    add hl, hl                                    ; $6f2b: $29
    rrca                                          ; $6f2c: $0f
    nop                                           ; $6f2d: $00
    rrca                                          ; $6f2e: $0f
    cpl                                           ; $6f2f: $2f
    cpl                                           ; $6f30: $2f
    cpl                                           ; $6f31: $2f
    daa                                           ; $6f32: $27
    daa                                           ; $6f33: $27
    daa                                           ; $6f34: $27
    ld a, [bc]                                    ; $6f35: $0a
    ld [bc], a                                    ; $6f36: $02
    dec c                                         ; $6f37: $0d
    ld c, $0a                                     ; $6f38: $0e $0a
    ld c, $0d                                     ; $6f3a: $0e $0d

jr_0ca_6f3c:
    ld a, [bc]                                    ; $6f3c: $0a
    inc d                                         ; $6f3d: $14
    db $10                                        ; $6f3e: $10
    dec c                                         ; $6f3f: $0d
    nop                                           ; $6f40: $00
    ld c, $2e                                     ; $6f41: $0e $2e
    dec l                                         ; $6f43: $2d
    dec l                                         ; $6f44: $2d
    ld a, [hl+]                                   ; $6f45: $2a
    ld l, $2e                                     ; $6f46: $2e $2e
    ld c, $00                                     ; $6f48: $0e $00
    ld a, [bc]                                    ; $6f4a: $0a
    dec c                                         ; $6f4b: $0d
    dec c                                         ; $6f4c: $0d
    dec c                                         ; $6f4d: $0d
    ld a, [bc]                                    ; $6f4e: $0a
    dec c                                         ; $6f4f: $0d
    add hl, bc                                    ; $6f50: $09
    add hl, bc                                    ; $6f51: $09
    nop                                           ; $6f52: $00
    add hl, bc                                    ; $6f53: $09
    add hl, hl                                    ; $6f54: $29
    add hl, hl                                    ; $6f55: $29
    ld c, $0d                                     ; $6f56: $0e $0d
    dec l                                         ; $6f58: $2d
    ld a, [hl+]                                   ; $6f59: $2a
    dec l                                         ; $6f5a: $2d
    or $17                                        ; $6f5b: $f6 $17
    nop                                           ; $6f5d: $00
    inc de                                        ; $6f5e: $13
    nop                                           ; $6f5f: $00
    inc bc                                        ; $6f60: $03
    jr @+$04                                      ; $6f61: $18 $02

    ld [$252a], sp                                ; $6f63: $08 $2a $25
    nop                                           ; $6f66: $00
    jr z, jr_0ca_6f71                             ; $6f67: $28 $08

    dec c                                         ; $6f69: $0d
    db $e4                                        ; $6f6a: $e4
    ld [bc], a                                    ; $6f6b: $02
    nop                                           ; $6f6c: $00
    dec a                                         ; $6f6d: $3d
    nop                                           ; $6f6e: $00
    dec de                                        ; $6f6f: $1b
    db $10                                        ; $6f70: $10

jr_0ca_6f71:
    dec l                                         ; $6f71: $2d
    ld l, $16                                     ; $6f72: $2e $16
    nop                                           ; $6f74: $00
    dec l                                         ; $6f75: $2d
    dec l                                         ; $6f76: $2d
    ld [hl], b                                    ; $6f77: $70
    ld c, $3b                                     ; $6f78: $0e $3b
    db $10                                        ; $6f7a: $10
    ld d, d                                       ; $6f7b: $52
    nop                                           ; $6f7c: $00
    ld e, c                                       ; $6f7d: $59
    nop                                           ; $6f7e: $00
    ld c, $2a                                     ; $6f7f: $0e $2a
    ld a, [hl+]                                   ; $6f81: $2a
    dec l                                         ; $6f82: $2d
    cp [hl]                                       ; $6f83: $be
    ld bc, $2a00                                  ; $6f84: $01 $00 $2a
    ld h, c                                       ; $6f87: $61
    ld [$0865], sp                                ; $6f88: $08 $65 $08
    dec l                                         ; $6f8b: $2d
    ld [$1028], sp                                ; $6f8c: $08 $28 $10
    ld d, c                                       ; $6f8f: $51
    nop                                           ; $6f90: $00
    ld a, [bc]                                    ; $6f91: $0a
    db $db                                        ; $6f92: $db
    ld [hl+], a                                   ; $6f93: $22
    jr jr_0ca_6fb1                                ; $6f94: $18 $1b

    db $10                                        ; $6f96: $10
    ld a, [bc]                                    ; $6f97: $0a
    ld h, h                                       ; $6f98: $64
    nop                                           ; $6f99: $00
    ld a, d                                       ; $6f9a: $7a
    nop                                           ; $6f9b: $00
    ld l, $34                                     ; $6f9c: $2e $34
    ld [$2866], sp                                ; $6f9e: $08 $66 $28
    inc hl                                        ; $6fa1: $23
    ld a, [bc]                                    ; $6fa2: $0a
    ld l, $76                                     ; $6fa3: $2e $76
    nop                                           ; $6fa5: $00
    ld l, $2a                                     ; $6fa6: $2e $2a
    dec l                                         ; $6fa8: $2d
    inc [hl]                                      ; $6fa9: $34
    db $10                                        ; $6faa: $10
    ld l, b                                       ; $6fab: $68
    jr jr_0ca_6f3c                                ; $6fac: $18 $8e

    dec a                                         ; $6fae: $3d
    jr jr_0ca_6fde                                ; $6faf: $18 $2d

jr_0ca_6fb1:
    ld l, $2e                                     ; $6fb1: $2e $2e
    sbc a                                         ; $6fb3: $9f
    db $10                                        ; $6fb4: $10
    ld h, l                                       ; $6fb5: $65
    ld [$088e], sp                                ; $6fb6: $08 $8e $08
    ld c, $80                                     ; $6fb9: $0e $80
    and b                                         ; $6fbb: $a0
    ld [$2d2e], sp                                ; $6fbc: $08 $2e $2d
    inc d                                         ; $6fbf: $14
    nop                                           ; $6fc0: $00
    dec c                                         ; $6fc1: $0d
    nop                                           ; $6fc2: $00
    add hl, de                                    ; $6fc3: $19
    ld bc, $6800                                  ; $6fc4: $01 $00 $68
    ld l, c                                       ; $6fc7: $69
    ld l, d                                       ; $6fc8: $6a
    ld l, e                                       ; $6fc9: $6b
    ld l, h                                       ; $6fca: $6c
    ld l, l                                       ; $6fcb: $6d
    ld l, b                                       ; $6fcc: $68
    ld l, [hl]                                    ; $6fcd: $6e
    ld de, $706f                                  ; $6fce: $11 $6f $70
    ld l, l                                       ; $6fd1: $6d
    rlca                                          ; $6fd2: $07
    nop                                           ; $6fd3: $00
    ld [hl], c                                    ; $6fd4: $71
    ld [hl], d                                    ; $6fd5: $72
    ld [hl], c                                    ; $6fd6: $71
    ld [$0000], sp                                ; $6fd7: $08 $00 $00
    ld [hl], e                                    ; $6fda: $73
    ld [hl], h                                    ; $6fdb: $74
    ld [hl], l                                    ; $6fdc: $75
    halt                                          ; $6fdd: $76

jr_0ca_6fde:
    ld [hl], a                                    ; $6fde: $77
    halt                                          ; $6fdf: $76
    ld [hl], e                                    ; $6fe0: $73
    ld a, b                                       ; $6fe1: $78
    jr nz, jr_0ca_705d                            ; $6fe2: $20 $79

    ld a, d                                       ; $6fe4: $7a
    rlca                                          ; $6fe5: $07
    ld [$7c7b], sp                                ; $6fe6: $08 $7b $7c
    ld a, l                                       ; $6fe9: $7d
    ld a, [hl]                                    ; $6fea: $7e
    halt                                          ; $6feb: $76
    ld de, $7f77                                  ; $6fec: $11 $77 $7f
    add b                                         ; $6fef: $80
    ld [bc], a                                    ; $6ff0: $02
    db $10                                        ; $6ff1: $10
    add c                                         ; $6ff2: $81
    add d                                         ; $6ff3: $82
    add b                                         ; $6ff4: $80
    add hl, bc                                    ; $6ff5: $09
    ld [$8300], sp                                ; $6ff6: $08 $00 $83
    add c                                         ; $6ff9: $81
    add d                                         ; $6ffa: $82
    add h                                         ; $6ffb: $84
    add b                                         ; $6ffc: $80
    ld a, a                                       ; $6ffd: $7f
    add l                                         ; $6ffe: $85
    add [hl]                                      ; $6fff: $86
    nop                                           ; $7000: $00
    add a                                         ; $7001: $87
    adc b                                         ; $7002: $88
    adc c                                         ; $7003: $89
    adc d                                         ; $7004: $8a
    adc e                                         ; $7005: $8b
    adc h                                         ; $7006: $8c
    adc l                                         ; $7007: $8d
    adc [hl]                                      ; $7008: $8e
    nop                                           ; $7009: $00
    adc a                                         ; $700a: $8f
    sub b                                         ; $700b: $90
    adc h                                         ; $700c: $8c
    adc e                                         ; $700d: $8b
    adc d                                         ; $700e: $8a
    adc c                                         ; $700f: $89
    adc b                                         ; $7010: $88
    add a                                         ; $7011: $87
    nop                                           ; $7012: $00
    add [hl]                                      ; $7013: $86
    add l                                         ; $7014: $85
    sub c                                         ; $7015: $91
    sub d                                         ; $7016: $92
    sub e                                         ; $7017: $93
    sub h                                         ; $7018: $94
    sub l                                         ; $7019: $95
    sub [hl]                                      ; $701a: $96
    nop                                           ; $701b: $00
    sub a                                         ; $701c: $97
    sbc b                                         ; $701d: $98
    sbc c                                         ; $701e: $99
    sbc d                                         ; $701f: $9a
    sbc e                                         ; $7020: $9b
    sbc h                                         ; $7021: $9c
    sbc b                                         ; $7022: $98
    sub a                                         ; $7023: $97
    nop                                           ; $7024: $00
    sub [hl]                                      ; $7025: $96
    sub l                                         ; $7026: $95
    sub h                                         ; $7027: $94
    sub e                                         ; $7028: $93
    sub d                                         ; $7029: $92
    sub c                                         ; $702a: $91

Call_0ca_702b:
    sbc l                                         ; $702b: $9d
    sbc [hl]                                      ; $702c: $9e
    nop                                           ; $702d: $00
    sbc a                                         ; $702e: $9f
    and b                                         ; $702f: $a0
    and c                                         ; $7030: $a1
    and d                                         ; $7031: $a2
    and e                                         ; $7032: $a3
    and h                                         ; $7033: $a4
    and l                                         ; $7034: $a5
    and [hl]                                      ; $7035: $a6
    nop                                           ; $7036: $00
    and a                                         ; $7037: $a7
    xor b                                         ; $7038: $a8
    and h                                         ; $7039: $a4
    and e                                         ; $703a: $a3
    and d                                         ; $703b: $a2
    and c                                         ; $703c: $a1
    and b                                         ; $703d: $a0
    sbc a                                         ; $703e: $9f
    nop                                           ; $703f: $00
    sbc [hl]                                      ; $7040: $9e
    sbc l                                         ; $7041: $9d
    xor c                                         ; $7042: $a9
    xor d                                         ; $7043: $aa
    xor e                                         ; $7044: $ab
    xor h                                         ; $7045: $ac
    xor l                                         ; $7046: $ad
    xor [hl]                                      ; $7047: $ae
    nop                                           ; $7048: $00
    xor a                                         ; $7049: $af
    or b                                          ; $704a: $b0
    or c                                          ; $704b: $b1
    or d                                          ; $704c: $b2
    or e                                          ; $704d: $b3
    or h                                          ; $704e: $b4
    or b                                          ; $704f: $b0
    xor a                                         ; $7050: $af
    nop                                           ; $7051: $00
    xor [hl]                                      ; $7052: $ae
    xor l                                         ; $7053: $ad
    xor h                                         ; $7054: $ac
    xor e                                         ; $7055: $ab
    xor d                                         ; $7056: $aa
    xor c                                         ; $7057: $a9
    or l                                          ; $7058: $b5
    or [hl]                                       ; $7059: $b6
    nop                                           ; $705a: $00
    or a                                          ; $705b: $b7
    cp b                                          ; $705c: $b8

jr_0ca_705d:
    cp c                                          ; $705d: $b9
    cp d                                          ; $705e: $ba
    cp e                                          ; $705f: $bb
    cp h                                          ; $7060: $bc
    cp l                                          ; $7061: $bd
    cp [hl]                                       ; $7062: $be
    nop                                           ; $7063: $00
    cp a                                          ; $7064: $bf
    ret nz                                        ; $7065: $c0

    cp h                                          ; $7066: $bc
    cp e                                          ; $7067: $bb
    cp d                                          ; $7068: $ba
    cp c                                          ; $7069: $b9
    cp b                                          ; $706a: $b8
    or a                                          ; $706b: $b7
    nop                                           ; $706c: $00
    or [hl]                                       ; $706d: $b6
    or l                                          ; $706e: $b5
    pop bc                                        ; $706f: $c1
    jp nz, $c4c3                                  ; $7070: $c2 $c3 $c4

    push bc                                       ; $7073: $c5
    add $00                                       ; $7074: $c6 $00
    rst $00                                       ; $7076: $c7
    ret z                                         ; $7077: $c8

    ret                                           ; $7078: $c9


    jp z, $cccb                                   ; $7079: $ca $cb $cc

    ret z                                         ; $707c: $c8

    rst $00                                       ; $707d: $c7
    nop                                           ; $707e: $00
    add $c5                                       ; $707f: $c6 $c5
    call nz, $c2c3                                ; $7081: $c4 $c3 $c2
    pop bc                                        ; $7084: $c1
    call Call_000_00ce                            ; $7085: $cd $ce $00
    rst $08                                       ; $7088: $cf
    ret nc                                        ; $7089: $d0

    pop de                                        ; $708a: $d1
    jp nc, $d4d3                                  ; $708b: $d2 $d3 $d4

    push de                                       ; $708e: $d5
    sub $00                                       ; $708f: $d6 $00
    rst $10                                       ; $7091: $d7
    ret c                                         ; $7092: $d8

    call nc, $d2d3                                ; $7093: $d4 $d3 $d2
    pop de                                        ; $7096: $d1
    ret nc                                        ; $7097: $d0

    rst $08                                       ; $7098: $cf
    nop                                           ; $7099: $00
    adc $cd                                       ; $709a: $ce $cd
    reti                                          ; $709c: $d9


    jp c, $dcdb                                   ; $709d: $da $db $dc

    db $dd                                        ; $70a0: $dd
    sbc $00                                       ; $70a1: $de $00
    rst $18                                       ; $70a3: $df
    ldh [$e1], a                                  ; $70a4: $e0 $e1
    ld [c], a                                     ; $70a6: $e2
    db $e3                                        ; $70a7: $e3
    db $e4                                        ; $70a8: $e4
    ldh [$df], a                                  ; $70a9: $e0 $df
    nop                                           ; $70ab: $00
    sbc $dd                                       ; $70ac: $de $dd
    call c, $dadb                                 ; $70ae: $dc $db $da
    reti                                          ; $70b1: $d9


    push hl                                       ; $70b2: $e5
    and $00                                       ; $70b3: $e6 $00
    rst $20                                       ; $70b5: $e7
    add sp, -$17                                  ; $70b6: $e8 $e9
    ld [$eceb], a                                 ; $70b8: $ea $eb $ec
    db $ed                                        ; $70bb: $ed
    xor $00                                       ; $70bc: $ee $00
    rst $28                                       ; $70be: $ef
    ldh a, [$ec]                                  ; $70bf: $f0 $ec
    db $eb                                        ; $70c1: $eb
    ld [$e8e9], a                                 ; $70c2: $ea $e9 $e8
    rst $20                                       ; $70c5: $e7
    nop                                           ; $70c6: $00
    and $e5                                       ; $70c7: $e6 $e5
    pop af                                        ; $70c9: $f1
    ld a, [c]                                     ; $70ca: $f2
    di                                            ; $70cb: $f3
    db $f4                                        ; $70cc: $f4
    push af                                       ; $70cd: $f5
    or $00                                        ; $70ce: $f6 $00
    rst $30                                       ; $70d0: $f7
    ld hl, sp-$07                                 ; $70d1: $f8 $f9
    ld a, [$fcfb]                                 ; $70d3: $fa $fb $fc
    ld hl, sp-$09                                 ; $70d6: $f8 $f7
    nop                                           ; $70d8: $00
    or $f5                                        ; $70d9: $f6 $f5
    db $f4                                        ; $70db: $f4
    di                                            ; $70dc: $f3
    ld a, [c]                                     ; $70dd: $f2
    pop af                                        ; $70de: $f1
    ld bc, $2403                                  ; $70df: $01 $03 $24
    inc bc                                        ; $70e2: $03
    ld bc, $0001                                  ; $70e3: $01 $01 $00
    ld [bc], a                                    ; $70e6: $02
    ld [bc], a                                    ; $70e7: $02
    ld b, $08                                     ; $70e8: $06 $08
    ld bc, $3d03                                  ; $70ea: $01 $03 $3d
    nop                                           ; $70ed: $00
    ld h, e                                       ; $70ee: $63
    ld [$0d10], sp                                ; $70ef: $08 $10 $0d
    db $10                                        ; $70f2: $10
    inc d                                         ; $70f3: $14
    jr z, jr_0ca_7118                             ; $70f4: $28 $22

    jr @+$0b                                      ; $70f6: $18 $09

    ld [bc], a                                    ; $70f8: $02
    jr @-$39                                      ; $70f9: $18 $c5

    ld bc, $0700                                  ; $70fb: $01 $00 $07
    jr nz, @+$0b                                  ; $70fe: $20 $09

    ld bc, $010f                                  ; $7100: $01 $0f $01
    ld b, b                                       ; $7103: $40
    cpl                                           ; $7104: $2f
    ld bc, $5f20                                  ; $7105: $01 $20 $5f
    ld c, $01                                     ; $7108: $0e $01
    ld b, b                                       ; $710a: $40
    ld l, $01                                     ; $710b: $2e $01
    jr nz, jr_0ca_7123                            ; $710d: $20 $14

    ld hl, sp+$28                                 ; $710f: $f8 $28
    ld hl, sp+$50                                 ; $7111: $f8 $50
    ld hl, sp+$78                                 ; $7113: $f8 $78
    ld hl, sp-$80                                 ; $7115: $f8 $80
    adc h                                         ; $7117: $8c

jr_0ca_7118:
    xor b                                         ; $7118: $a8
    inc d                                         ; $7119: $14
    nop                                           ; $711a: $00
    dec c                                         ; $711b: $0d
    nop                                           ; $711c: $00
    call c, RST_00                                ; $711d: $dc $00 $00
    ld l, b                                       ; $7120: $68
    ld l, c                                       ; $7121: $69
    ld l, d                                       ; $7122: $6a

jr_0ca_7123:
    ld l, e                                       ; $7123: $6b
    ld l, h                                       ; $7124: $6c
    ld l, l                                       ; $7125: $6d
    ld l, h                                       ; $7126: $6c
    ld l, e                                       ; $7127: $6b
    nop                                           ; $7128: $00
    ld l, h                                       ; $7129: $6c
    ld l, [hl]                                    ; $712a: $6e
    add l                                         ; $712b: $85
    add h                                         ; $712c: $84
    add e                                         ; $712d: $83
    ld [hl], c                                    ; $712e: $71
    ld [hl], b                                    ; $712f: $70
    add d                                         ; $7130: $82
    nop                                           ; $7131: $00
    ld [hl], l                                    ; $7132: $75
    halt                                          ; $7133: $76
    ld [hl], a                                    ; $7134: $77
    ld a, b                                       ; $7135: $78
    ld a, c                                       ; $7136: $79
    ld a, d                                       ; $7137: $7a
    ld a, e                                       ; $7138: $7b
    ld a, h                                       ; $7139: $7c
    nop                                           ; $713a: $00
    ld a, l                                       ; $713b: $7d
    ld a, [hl]                                    ; $713c: $7e
    ld a, a                                       ; $713d: $7f
    ld a, h                                       ; $713e: $7c
    ld a, l                                       ; $713f: $7d
    add b                                         ; $7140: $80
    add c                                         ; $7141: $81
    ld [hl], h                                    ; $7142: $74
    nop                                           ; $7143: $00
    ld l, a                                       ; $7144: $6f
    ld [hl], e                                    ; $7145: $73
    ld [hl], d                                    ; $7146: $72
    add c                                         ; $7147: $81
    add [hl]                                      ; $7148: $86
    ld a, [hl]                                    ; $7149: $7e
    add a                                         ; $714a: $87
    adc b                                         ; $714b: $88
    nop                                           ; $714c: $00
    adc c                                         ; $714d: $89
    adc d                                         ; $714e: $8a
    adc e                                         ; $714f: $8b
    adc h                                         ; $7150: $8c
    adc l                                         ; $7151: $8d
    adc [hl]                                      ; $7152: $8e
    adc a                                         ; $7153: $8f
    adc h                                         ; $7154: $8c
    nop                                           ; $7155: $00
    adc l                                         ; $7156: $8d
    sub b                                         ; $7157: $90
    sub c                                         ; $7158: $91
    sub d                                         ; $7159: $92
    sub e                                         ; $715a: $93
    sub h                                         ; $715b: $94
    sub c                                         ; $715c: $91
    sub d                                         ; $715d: $92
    ld b, b                                       ; $715e: $40
    sub l                                         ; $715f: $95
    inc c                                         ; $7160: $0c
    nop                                           ; $7161: $00
    sub [hl]                                      ; $7162: $96
    sub a                                         ; $7163: $97
    sbc b                                         ; $7164: $98
    sbc c                                         ; $7165: $99
    sbc d                                         ; $7166: $9a
    sbc e                                         ; $7167: $9b
    nop                                           ; $7168: $00
    sbc h                                         ; $7169: $9c
    sbc l                                         ; $716a: $9d
    sbc [hl]                                      ; $716b: $9e
    sbc a                                         ; $716c: $9f
    and b                                         ; $716d: $a0
    and c                                         ; $716e: $a1
    and d                                         ; $716f: $a2
    and e                                         ; $7170: $a3
    nop                                           ; $7171: $00
    and h                                         ; $7172: $a4
    and l                                         ; $7173: $a5
    and [hl]                                      ; $7174: $a6

jr_0ca_7175:
    and a                                         ; $7175: $a7
    xor b                                         ; $7176: $a8
    xor c                                         ; $7177: $a9
    xor d                                         ; $7178: $aa
    xor e                                         ; $7179: $ab
    nop                                           ; $717a: $00
    xor h                                         ; $717b: $ac
    xor l                                         ; $717c: $ad
    xor [hl]                                      ; $717d: $ae
    xor a                                         ; $717e: $af
    or b                                          ; $717f: $b0
    or c                                          ; $7180: $b1
    or d                                          ; $7181: $b2
    or e                                          ; $7182: $b3
    nop                                           ; $7183: $00
    or h                                          ; $7184: $b4
    or l                                          ; $7185: $b5
    or [hl]                                       ; $7186: $b6
    or a                                          ; $7187: $b7
    cp b                                          ; $7188: $b8
    cp c                                          ; $7189: $b9
    cp d                                          ; $718a: $ba
    cp e                                          ; $718b: $bb
    nop                                           ; $718c: $00
    cp h                                          ; $718d: $bc
    cp l                                          ; $718e: $bd
    cp [hl]                                       ; $718f: $be
    cp a                                          ; $7190: $bf
    ret nz                                        ; $7191: $c0

    pop bc                                        ; $7192: $c1
    jp nz, $00c3                                  ; $7193: $c2 $c3 $00

    call nz, $c6c5                                ; $7196: $c4 $c5 $c6
    rst $00                                       ; $7199: $c7
    ret z                                         ; $719a: $c8

    ret                                           ; $719b: $c9


    jp z, Jump_000_00cb                           ; $719c: $ca $cb $00

    call z, $cecd                                 ; $719f: $cc $cd $ce
    rst $08                                       ; $71a2: $cf
    ret nc                                        ; $71a3: $d0

    pop de                                        ; $71a4: $d1
    jp nc, Jump_000_00d3                          ; $71a5: $d2 $d3 $00

    call nc, $d6d5                                ; $71a8: $d4 $d5 $d6
    rst $10                                       ; $71ab: $d7
    ret c                                         ; $71ac: $d8

    reti                                          ; $71ad: $d9


    jp c, Jump_000_00db                           ; $71ae: $da $db $00

    call c, $dedd                                 ; $71b1: $dc $dd $de
    rst $18                                       ; $71b4: $df
    ldh [$e1], a                                  ; $71b5: $e0 $e1
    ld [c], a                                     ; $71b7: $e2
    db $e3                                        ; $71b8: $e3
    ld l, $e4                                     ; $71b9: $2e $e4
    push hl                                       ; $71bb: $e5
    ld d, b                                       ; $71bc: $50
    jr nc, jr_0ca_7175                            ; $71bd: $30 $b6

    ld d, b                                       ; $71bf: $50
    ld hl, sp+$50                                 ; $71c0: $f8 $50
    ld hl, sp+$50                                 ; $71c2: $f8 $50
    db $10                                        ; $71c4: $10
    or [hl]                                       ; $71c5: $b6
    adc b                                         ; $71c6: $88
    ld d, b                                       ; $71c7: $50
    ld hl, sp-$44                                 ; $71c8: $f8 $bc
    cp l                                          ; $71ca: $bd
    ld bc, $3001                                  ; $71cb: $01 $01 $30
    ld [$0808], sp                                ; $71ce: $08 $08 $08
    ld a, [de]                                    ; $71d1: $1a
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    ld [$3810], sp                                ; $71d4: $08 $10 $38
    ld a, [de]                                    ; $71d7: $1a
    nop                                           ; $71d8: $00
    add hl, bc                                    ; $71d9: $09
    ld [de], a                                    ; $71da: $12
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    dec b                                         ; $71dd: $05
    nop                                           ; $71de: $00
    jr z, jr_0ca_71ea                             ; $71df: $28 $09

    ld bc, $0109                                  ; $71e1: $01 $09 $01
    sub b                                         ; $71e4: $90
    rrca                                          ; $71e5: $0f
    ld bc, $0080                                  ; $71e6: $01 $80 $00

jr_0ca_71e9:
    dec c                                         ; $71e9: $0d

jr_0ca_71ea:
    ld c, $0a                                     ; $71ea: $0e $0a
    ld c, $0d                                     ; $71ec: $0e $0d
    ld a, [bc]                                    ; $71ee: $0a
    ld c, $0e                                     ; $71ef: $0e $0e
    rrca                                          ; $71f1: $0f
    dec c                                         ; $71f2: $0d
    ld c, $0e                                     ; $71f3: $0e $0e
    ld a, [bc]                                    ; $71f5: $0a
    inc b                                         ; $71f6: $04
    ld [$0009], sp                                ; $71f7: $08 $09 $00
    ld de, $0e00                                  ; $71fa: $11 $00 $0e
    nop                                           ; $71fd: $00
    rst $28                                       ; $71fe: $ef
    dec d                                         ; $71ff: $15
    ld [$001c], sp                                ; $7200: $08 $1c $00
    dec e                                         ; $7203: $1d
    nop                                           ; $7204: $00
    dec c                                         ; $7205: $0d
    ld bc, $0c00                                  ; $7206: $01 $00 $0c
    ld [$0815], sp                                ; $7209: $08 $15 $08
    dec de                                        ; $720c: $1b
    ld [$33ff], sp                                ; $720d: $08 $ff $33
    nop                                           ; $7210: $00
    dec b                                         ; $7211: $05
    ld [$0026], sp                                ; $7212: $08 $26 $00
    ld [$3c08], sp                                ; $7215: $08 $08 $3c
    db $10                                        ; $7218: $10
    ld de, $0e08                                  ; $7219: $11 $08 $0e
    ld [$0821], sp                                ; $721c: $08 $21 $08
    rst $38                                       ; $721f: $ff
    ld c, a                                       ; $7220: $4f
    ld [$0833], sp                                ; $7221: $08 $33 $08
    inc [hl]                                      ; $7224: $34
    db $10                                        ; $7225: $10
    ld a, [bc]                                    ; $7226: $0a
    ld [$1015], sp                                ; $7227: $08 $15 $10
    dec bc                                        ; $722a: $0b
    jr z, jr_0ca_7292                             ; $722b: $28 $65

    nop                                           ; $722d: $00
    ld l, b                                       ; $722e: $68
    db $10                                        ; $722f: $10
    rst $38                                       ; $7230: $ff
    ld [hl], e                                    ; $7231: $73
    db $10                                        ; $7232: $10
    ld h, a                                       ; $7233: $67
    jr jr_0ca_72a4                                ; $7234: $18 $6e

    nop                                           ; $7236: $00
    ld d, $08                                     ; $7237: $16 $08
    ld e, e                                       ; $7239: $5b
    jr nz, @+$38                                  ; $723a: $20 $36

    jr jr_0ca_729c                                ; $723c: $18 $5e

    ld [$0091], sp                                ; $723e: $08 $91 $00
    ldh a, [$66]                                  ; $7241: $f0 $66
    db $10                                        ; $7243: $10
    ld a, b                                       ; $7244: $78
    db $10                                        ; $7245: $10
    ld e, d                                       ; $7246: $5a
    jr jr_0ca_71e9                                ; $7247: $18 $a0

    jr jr_0ca_725f                                ; $7249: $18 $14

    nop                                           ; $724b: $00
    dec c                                         ; $724c: $0d
    nop                                           ; $724d: $00
    ccf                                           ; $724e: $3f
    ld bc, $6800                                  ; $724f: $01 $00 $68
    ld l, c                                       ; $7252: $69
    ld l, d                                       ; $7253: $6a
    ld l, e                                       ; $7254: $6b
    ld l, h                                       ; $7255: $6c
    ld l, l                                       ; $7256: $6d
    ld l, [hl]                                    ; $7257: $6e
    ld l, d                                       ; $7258: $6a
    ld [$706f], sp                                ; $7259: $08 $6f $70
    ld [hl], c                                    ; $725c: $71
    ld l, a                                       ; $725d: $6f
    ld a, [bc]                                    ; $725e: $0a

jr_0ca_725f:
    jr jr_0ca_72d3                                ; $725f: $18 $72

    ld [hl], e                                    ; $7261: $73
    ld [hl], h                                    ; $7262: $74
    nop                                           ; $7263: $00
    ld [hl], l                                    ; $7264: $75
    halt                                          ; $7265: $76
    ld [hl], a                                    ; $7266: $77
    ld a, b                                       ; $7267: $78
    ld a, b                                       ; $7268: $78
    ld [hl], a                                    ; $7269: $77
    halt                                          ; $726a: $76
    ld l, a                                       ; $726b: $6f
    db $10                                        ; $726c: $10
    ld a, c                                       ; $726d: $79
    ld a, d                                       ; $726e: $7a
    ld l, a                                       ; $726f: $6f
    ld a, [bc]                                    ; $7270: $0a
    jr jr_0ca_72ee                                ; $7271: $18 $7b

    ld a, h                                       ; $7273: $7c
    ld a, l                                       ; $7274: $7d
    ld a, [hl]                                    ; $7275: $7e
    nop                                           ; $7276: $00
    ld a, a                                       ; $7277: $7f
    add b                                         ; $7278: $80
    add c                                         ; $7279: $81
    add d                                         ; $727a: $82

Call_0ca_727b:
    add e                                         ; $727b: $83
    add h                                         ; $727c: $84
    add l                                         ; $727d: $85
    ld a, l                                       ; $727e: $7d
    jr nz, jr_0ca_72ff                            ; $727f: $20 $7e

    add l                                         ; $7281: $85
    ld a, [bc]                                    ; $7282: $0a
    jr jr_0ca_7302                                ; $7283: $18 $7d

    ld a, [hl]                                    ; $7285: $7e
    add [hl]                                      ; $7286: $86
    add a                                         ; $7287: $87
    adc b                                         ; $7288: $88
    nop                                           ; $7289: $00
    adc c                                         ; $728a: $89
    adc d                                         ; $728b: $8a
    adc e                                         ; $728c: $8b
    adc h                                         ; $728d: $8c
    adc l                                         ; $728e: $8d
    adc [hl]                                      ; $728f: $8e
    add [hl]                                      ; $7290: $86
    add a                                         ; $7291: $87

jr_0ca_7292:
    nop                                           ; $7292: $00
    adc a                                         ; $7293: $8f
    sub b                                         ; $7294: $90
    sub c                                         ; $7295: $91
    sub d                                         ; $7296: $92
    sub e                                         ; $7297: $93
    sub h                                         ; $7298: $94
    sub l                                         ; $7299: $95
    add [hl]                                      ; $729a: $86
    nop                                           ; $729b: $00

jr_0ca_729c:
    add a                                         ; $729c: $87
    sub [hl]                                      ; $729d: $96
    sub a                                         ; $729e: $97
    sbc b                                         ; $729f: $98
    sbc c                                         ; $72a0: $99
    sbc d                                         ; $72a1: $9a
    sbc e                                         ; $72a2: $9b
    sbc h                                         ; $72a3: $9c

jr_0ca_72a4:
    nop                                           ; $72a4: $00
    sbc l                                         ; $72a5: $9d
    sbc [hl]                                      ; $72a6: $9e
    sbc a                                         ; $72a7: $9f
    and b                                         ; $72a8: $a0
    and c                                         ; $72a9: $a1
    and d                                         ; $72aa: $a2
    and e                                         ; $72ab: $a3
    and h                                         ; $72ac: $a4
    nop                                           ; $72ad: $00
    and l                                         ; $72ae: $a5
    and [hl]                                      ; $72af: $a6
    and a                                         ; $72b0: $a7
    sub a                                         ; $72b1: $97
    sub [hl]                                      ; $72b2: $96
    xor d                                         ; $72b3: $aa
    xor e                                         ; $72b4: $ab
    xor h                                         ; $72b5: $ac
    nop                                           ; $72b6: $00
    xor l                                         ; $72b7: $ad
    xor [hl]                                      ; $72b8: $ae
    xor a                                         ; $72b9: $af
    or b                                          ; $72ba: $b0
    or c                                          ; $72bb: $b1
    or d                                          ; $72bc: $b2
    or e                                          ; $72bd: $b3
    or h                                          ; $72be: $b4
    nop                                           ; $72bf: $00
    or l                                          ; $72c0: $b5
    or [hl]                                       ; $72c1: $b6
    or a                                          ; $72c2: $b7
    cp b                                          ; $72c3: $b8
    cp c                                          ; $72c4: $b9
    cp d                                          ; $72c5: $ba
    cp e                                          ; $72c6: $bb
    xor e                                         ; $72c7: $ab
    nop                                           ; $72c8: $00
    xor d                                         ; $72c9: $aa
    cp [hl]                                       ; $72ca: $be
    cp a                                          ; $72cb: $bf
    ret nz                                        ; $72cc: $c0

    pop bc                                        ; $72cd: $c1
    jp nz, $c4c3                                  ; $72ce: $c2 $c3 $c4

    nop                                           ; $72d1: $00
    push bc                                       ; $72d2: $c5

jr_0ca_72d3:
    add $c7                                       ; $72d3: $c6 $c7
    ret z                                         ; $72d5: $c8

    ret                                           ; $72d6: $c9


    jp z, $cccb                                   ; $72d7: $ca $cb $cc

    nop                                           ; $72da: $00
    call $cfce                                    ; $72db: $cd $ce $cf
    cp a                                          ; $72de: $bf
    cp [hl]                                       ; $72df: $be
    jp nc, $d4d3                                  ; $72e0: $d2 $d3 $d4

    nop                                           ; $72e3: $00
    push de                                       ; $72e4: $d5
    sub $d7                                       ; $72e5: $d6 $d7
    ret c                                         ; $72e7: $d8

    reti                                          ; $72e8: $d9


    jp c, $dcdb                                   ; $72e9: $da $db $dc

    nop                                           ; $72ec: $00
    db $dd                                        ; $72ed: $dd

jr_0ca_72ee:
    sbc $df                                       ; $72ee: $de $df
    ldh [$e1], a                                  ; $72f0: $e0 $e1
    ld [c], a                                     ; $72f2: $e2
    db $e3                                        ; $72f3: $e3
    db $d3                                        ; $72f4: $d3
    nop                                           ; $72f5: $00
    jp nc, $e7e6                                  ; $72f6: $d2 $e6 $e7

    add sp, -$17                                  ; $72f9: $e8 $e9
    ld [$eceb], a                                 ; $72fb: $ea $eb $ec
    nop                                           ; $72fe: $00

jr_0ca_72ff:
    db $ed                                        ; $72ff: $ed
    xor $ef                                       ; $7300: $ee $ef

jr_0ca_7302:
    ldh a, [$f1]                                  ; $7302: $f0 $f1
    ld a, [c]                                     ; $7304: $f2
    di                                            ; $7305: $f3
    db $f4                                        ; $7306: $f4
    nop                                           ; $7307: $00
    push af                                       ; $7308: $f5
    or $f7                                        ; $7309: $f6 $f7
    rst $20                                       ; $730b: $e7
    and $fa                                       ; $730c: $e6 $fa
    ei                                            ; $730e: $fb
    db $fc                                        ; $730f: $fc
    nop                                           ; $7310: $00
    db $fd                                        ; $7311: $fd
    cp $ff                                        ; $7312: $fe $ff
    nop                                           ; $7314: $00
    ld bc, $0302                                  ; $7315: $01 $02 $03
    inc b                                         ; $7318: $04
    nop                                           ; $7319: $00
    dec b                                         ; $731a: $05
    ld b, $07                                     ; $731b: $06 $07
    ld [$0a09], sp                                ; $731d: $08 $09 $0a
    dec bc                                        ; $7320: $0b
    ei                                            ; $7321: $fb
    nop                                           ; $7322: $00
    ld a, [$0f0e]                                 ; $7323: $fa $0e $0f
    db $10                                        ; $7326: $10
    ld de, $1312                                  ; $7327: $11 $12 $13
    inc d                                         ; $732a: $14
    nop                                           ; $732b: $00
    dec d                                         ; $732c: $15
    ld d, $c7                                     ; $732d: $16 $c7
    rla                                           ; $732f: $17
    jr jr_0ca_734b                                ; $7330: $18 $19

    ld a, [de]                                    ; $7332: $1a
    dec de                                        ; $7333: $1b
    nop                                           ; $7334: $00
    inc e                                         ; $7335: $1c
    dec e                                         ; $7336: $1d
    ld e, $0f                                     ; $7337: $1e $0f
    ld c, $21                                     ; $7339: $0e $21
    ld [hl+], a                                   ; $733b: $22
    inc hl                                        ; $733c: $23
    nop                                           ; $733d: $00
    inc h                                         ; $733e: $24
    dec h                                         ; $733f: $25
    ld h, $27                                     ; $7340: $26 $27
    jr z, @+$2b                                   ; $7342: $28 $29

    db $db                                        ; $7344: $db
    call c, Call_000_2a00                         ; $7345: $dc $00 $2a
    dec hl                                        ; $7348: $2b
    inc l                                         ; $7349: $2c
    dec l                                         ; $734a: $2d

jr_0ca_734b:
    ld l, $2f                                     ; $734b: $2e $2f
    jr nc, @+$24                                  ; $734d: $30 $22

    nop                                           ; $734f: $00
    ld hl, $3132                                  ; $7350: $21 $32 $31
    jr nz, @+$21                                  ; $7353: $20 $1f

    dec c                                         ; $7355: $0d
    inc c                                         ; $7356: $0c
    ld sp, hl                                     ; $7357: $f9
    nop                                           ; $7358: $00
    ld hl, sp-$1b                                 ; $7359: $f8 $e5
    rst $28                                       ; $735b: $ef
    ldh a, [$e4]                                  ; $735c: $f0 $e4
    pop de                                        ; $735e: $d1
    ret nc                                        ; $735f: $d0

    cp l                                          ; $7360: $bd
    nop                                           ; $7361: $00
    cp h                                          ; $7362: $bc
    xor c                                         ; $7363: $a9
    xor b                                         ; $7364: $a8
    ld sp, $0232                                  ; $7365: $31 $32 $02
    ld [bc], a                                    ; $7368: $02
    ld [bc], a                                    ; $7369: $02
    ld e, c                                       ; $736a: $59
    ld bc, $0001                                  ; $736b: $01 $01 $00
    ld [hl+], a                                   ; $736e: $22
    ld [$0a00], sp                                ; $736f: $08 $00 $0a
    ld e, b                                       ; $7372: $58
    ld hl, $0a21                                  ; $7373: $21 $21 $0a
    ld d, b                                       ; $7376: $50
    ld [$0303], sp                                ; $7377: $08 $03 $03
    ld [bc], a                                    ; $737a: $02

jr_0ca_737b:
    ld a, [bc]                                    ; $737b: $0a
    ld bc, $0310                                  ; $737c: $01 $10 $03
    inc bc                                        ; $737f: $03
    ld a, [bc]                                    ; $7380: $0a
    add e                                         ; $7381: $83
    ld a, [bc]                                    ; $7382: $0a
    jr jr_0ca_7388                                ; $7383: $18 $03

    inc bc                                        ; $7385: $03
    dec bc                                        ; $7386: $0b
    dec bc                                        ; $7387: $0b

jr_0ca_7388:
    rrca                                          ; $7388: $0f
    ld bc, $0918                                  ; $7389: $01 $18 $09
    ld e, b                                       ; $738c: $58
    inc e                                         ; $738d: $1c
    ld c, $0d                                     ; $738e: $0e $0d
    ld c, $03                                     ; $7390: $0e $03
    nop                                           ; $7392: $00
    add hl, bc                                    ; $7393: $09
    ld [$080a], sp                                ; $7394: $08 $0a $08
    ld c, $2f                                     ; $7397: $0e $2f
    ld l, b                                       ; $7399: $68
    cpl                                           ; $739a: $2f
    ld [$1510], sp                                ; $739b: $08 $10 $15
    ld [$080d], sp                                ; $739e: $08 $0d $08
    jr nz, @+$10                                  ; $73a1: $20 $0e

    ld l, $2e                                     ; $73a3: $2e $2e
    cp a                                          ; $73a5: $bf
    ld a, [de]                                    ; $73a6: $1a
    ld [$180d], sp                                ; $73a7: $08 $0d $18
    jr z, jr_0ca_73b7                             ; $73aa: $28 $0b

    db $10                                        ; $73ac: $10
    inc d                                         ; $73ad: $14
    nop                                           ; $73ae: $00
    ld de, $1a28                                  ; $73af: $11 $28 $1a
    db $10                                        ; $73b2: $10
    ld e, $00                                     ; $73b3: $1e $00
    add hl, sp                                    ; $73b5: $39
    dec c                                         ; $73b6: $0d

jr_0ca_73b7:
    dec l                                         ; $73b7: $2d
    jr z, jr_0ca_73ba                             ; $73b8: $28 $00

jr_0ca_73ba:
    inc h                                         ; $73ba: $24
    jr nc, jr_0ca_73ee                            ; $73bb: $30 $31

    jr nz, jr_0ca_73ed                            ; $73bd: $20 $2e

    dec l                                         ; $73bf: $2d
    dec de                                        ; $73c0: $1b
    db $10                                        ; $73c1: $10
    rst $18                                       ; $73c2: $df
    ld c, l                                       ; $73c3: $4d
    db $10                                        ; $73c4: $10
    dec sp                                        ; $73c5: $3b
    jr nz, jr_0ca_73d6                            ; $73c6: $20 $0e

    jr z, @+$12                                   ; $73c8: $28 $10

    ld c, a                                       ; $73ca: $4f
    jr nz, jr_0ca_73d4                            ; $73cb: $20 $07

    jr z, jr_0ca_741f                             ; $73cd: $28 $50

    ld c, b                                       ; $73cf: $48
    ld l, e                                       ; $73d0: $6b
    jr nz, jr_0ca_744b                            ; $73d1: $20 $78

    dec c                                         ; $73d3: $0d

jr_0ca_73d4:
    inc a                                         ; $73d4: $3c
    nop                                           ; $73d5: $00

jr_0ca_73d6:
    halt                                          ; $73d6: $76
    jr jr_0ca_741c                                ; $73d7: $18 $43

    jr jr_0ca_737b                                ; $73d9: $18 $a0

    db $10                                        ; $73db: $10
    dec l                                         ; $73dc: $2d
    ld l, $14                                     ; $73dd: $2e $14
    nop                                           ; $73df: $00
    dec c                                         ; $73e0: $0d
    nop                                           ; $73e1: $00
    inc [hl]                                      ; $73e2: $34
    ld bc, $6800                                  ; $73e3: $01 $00 $68
    ld l, c                                       ; $73e6: $69
    ld l, d                                       ; $73e7: $6a
    ld l, e                                       ; $73e8: $6b
    ld l, h                                       ; $73e9: $6c
    ld l, l                                       ; $73ea: $6d
    ld l, [hl]                                    ; $73eb: $6e
    ld l, a                                       ; $73ec: $6f

jr_0ca_73ed:
    add hl, bc                                    ; $73ed: $09

jr_0ca_73ee:
    ld [hl], b                                    ; $73ee: $70
    ld [hl], c                                    ; $73ef: $71
    ld [hl], d                                    ; $73f0: $72
    ld [hl], e                                    ; $73f1: $73
    inc c                                         ; $73f2: $0c
    nop                                           ; $73f3: $00
    ld [hl], h                                    ; $73f4: $74
    ld [hl], l                                    ; $73f5: $75
    inc c                                         ; $73f6: $0c
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    halt                                          ; $73f9: $76
    ld [hl], a                                    ; $73fa: $77
    ld a, b                                       ; $73fb: $78
    halt                                          ; $73fc: $76
    ld a, c                                       ; $73fd: $79
    ld a, d                                       ; $73fe: $7a
    ld a, e                                       ; $73ff: $7b
    ld a, b                                       ; $7400: $78
    nop                                           ; $7401: $00
    ld a, h                                       ; $7402: $7c
    ld a, l                                       ; $7403: $7d
    ld a, c                                       ; $7404: $79
    ld a, d                                       ; $7405: $7a
    ld [hl], a                                    ; $7406: $77
    ld a, [hl]                                    ; $7407: $7e
    ld a, a                                       ; $7408: $7f
    ld a, b                                       ; $7409: $78
    nop                                           ; $740a: $00
    ld a, c                                       ; $740b: $79
    ld a, d                                       ; $740c: $7a
    halt                                          ; $740d: $76
    ld [hl], a                                    ; $740e: $77
    add b                                         ; $740f: $80
    add b                                         ; $7410: $80
    add b                                         ; $7411: $80
    add c                                         ; $7412: $81
    ret nz                                        ; $7413: $c0

    inc b                                         ; $7414: $04
    nop                                           ; $7415: $00
    dec b                                         ; $7416: $05
    ld d, b                                       ; $7417: $50
    add d                                         ; $7418: $82
    add e                                         ; $7419: $83
    add h                                         ; $741a: $84
    add l                                         ; $741b: $85

jr_0ca_741c:
    add [hl]                                      ; $741c: $86
    add a                                         ; $741d: $87
    nop                                           ; $741e: $00

jr_0ca_741f:
    adc b                                         ; $741f: $88
    adc c                                         ; $7420: $89
    adc d                                         ; $7421: $8a
    adc e                                         ; $7422: $8b
    adc h                                         ; $7423: $8c
    adc l                                         ; $7424: $8d
    adc [hl]                                      ; $7425: $8e
    adc b                                         ; $7426: $88
    nop                                           ; $7427: $00
    add a                                         ; $7428: $87
    add [hl]                                      ; $7429: $86
    add l                                         ; $742a: $85
    add h                                         ; $742b: $84
    add e                                         ; $742c: $83
    add d                                         ; $742d: $82
    adc a                                         ; $742e: $8f
    sub b                                         ; $742f: $90
    nop                                           ; $7430: $00
    sub c                                         ; $7431: $91
    sub d                                         ; $7432: $92
    sub e                                         ; $7433: $93
    sub h                                         ; $7434: $94
    sub l                                         ; $7435: $95
    sub [hl]                                      ; $7436: $96
    sub a                                         ; $7437: $97
    sbc b                                         ; $7438: $98
    nop                                           ; $7439: $00
    sbc c                                         ; $743a: $99
    sbc d                                         ; $743b: $9a
    sbc e                                         ; $743c: $9b
    sub l                                         ; $743d: $95
    sub h                                         ; $743e: $94
    sub e                                         ; $743f: $93
    sub d                                         ; $7440: $92
    sub c                                         ; $7441: $91
    nop                                           ; $7442: $00
    sub b                                         ; $7443: $90
    adc a                                         ; $7444: $8f
    sbc h                                         ; $7445: $9c
    sbc l                                         ; $7446: $9d
    sbc [hl]                                      ; $7447: $9e
    sbc a                                         ; $7448: $9f
    and b                                         ; $7449: $a0
    and c                                         ; $744a: $a1

jr_0ca_744b:
    nop                                           ; $744b: $00
    and d                                         ; $744c: $a2
    and e                                         ; $744d: $a3
    and h                                         ; $744e: $a4
    and l                                         ; $744f: $a5
    and [hl]                                      ; $7450: $a6
    and a                                         ; $7451: $a7
    xor b                                         ; $7452: $a8
    and d                                         ; $7453: $a2
    nop                                           ; $7454: $00
    and c                                         ; $7455: $a1
    and b                                         ; $7456: $a0
    sbc a                                         ; $7457: $9f
    sbc [hl]                                      ; $7458: $9e
    sbc l                                         ; $7459: $9d
    sbc h                                         ; $745a: $9c
    xor c                                         ; $745b: $a9
    xor d                                         ; $745c: $aa
    nop                                           ; $745d: $00
    xor e                                         ; $745e: $ab
    xor h                                         ; $745f: $ac
    xor l                                         ; $7460: $ad
    xor [hl]                                      ; $7461: $ae
    xor a                                         ; $7462: $af
    or b                                          ; $7463: $b0
    or c                                          ; $7464: $b1
    or d                                          ; $7465: $b2
    nop                                           ; $7466: $00
    or e                                          ; $7467: $b3
    or h                                          ; $7468: $b4
    or l                                          ; $7469: $b5
    xor a                                         ; $746a: $af
    xor [hl]                                      ; $746b: $ae
    xor l                                         ; $746c: $ad
    xor h                                         ; $746d: $ac
    xor e                                         ; $746e: $ab
    nop                                           ; $746f: $00
    xor d                                         ; $7470: $aa
    xor c                                         ; $7471: $a9
    or [hl]                                       ; $7472: $b6
    or a                                          ; $7473: $b7
    cp b                                          ; $7474: $b8
    cp c                                          ; $7475: $b9
    cp d                                          ; $7476: $ba
    cp e                                          ; $7477: $bb
    nop                                           ; $7478: $00
    cp h                                          ; $7479: $bc
    cp l                                          ; $747a: $bd
    cp [hl]                                       ; $747b: $be
    cp a                                          ; $747c: $bf
    ret nz                                        ; $747d: $c0

    pop bc                                        ; $747e: $c1
    jp nz, $00bc                                  ; $747f: $c2 $bc $00

    cp e                                          ; $7482: $bb
    cp d                                          ; $7483: $ba
    cp c                                          ; $7484: $b9
    cp b                                          ; $7485: $b8
    or a                                          ; $7486: $b7
    or [hl]                                       ; $7487: $b6
    jp Jump_000_00c4                              ; $7488: $c3 $c4 $00


    push bc                                       ; $748b: $c5
    add $c7                                       ; $748c: $c6 $c7
    ret z                                         ; $748e: $c8

    ret                                           ; $748f: $c9


    jp z, $cccb                                   ; $7490: $ca $cb $cc

    nop                                           ; $7493: $00
    call $cfce                                    ; $7494: $cd $ce $cf
    ret                                           ; $7497: $c9


    ret z                                         ; $7498: $c8

    rst $00                                       ; $7499: $c7
    add $c5                                       ; $749a: $c6 $c5
    nop                                           ; $749c: $00
    call nz, $d0c3                                ; $749d: $c4 $c3 $d0
    pop de                                        ; $74a0: $d1
    jp nc, $d4d3                                  ; $74a1: $d2 $d3 $d4

    push de                                       ; $74a4: $d5
    nop                                           ; $74a5: $00
    sub $d7                                       ; $74a6: $d6 $d7
    ret c                                         ; $74a8: $d8

    reti                                          ; $74a9: $d9


    jp c, $dcdb                                   ; $74aa: $da $db $dc

    sub $00                                       ; $74ad: $d6 $00
    push de                                       ; $74af: $d5
    call nc, $d2d3                                ; $74b0: $d4 $d3 $d2
    pop de                                        ; $74b3: $d1
    ret nc                                        ; $74b4: $d0

    db $dd                                        ; $74b5: $dd
    sbc $00                                       ; $74b6: $de $00
    rst $18                                       ; $74b8: $df
    ldh [$e1], a                                  ; $74b9: $e0 $e1
    ld [c], a                                     ; $74bb: $e2
    db $e3                                        ; $74bc: $e3
    db $e4                                        ; $74bd: $e4
    push hl                                       ; $74be: $e5
    and $00                                       ; $74bf: $e6 $00
    rst $20                                       ; $74c1: $e7
    add sp, -$17                                  ; $74c2: $e8 $e9
    db $e3                                        ; $74c4: $e3
    ld [c], a                                     ; $74c5: $e2
    pop hl                                        ; $74c6: $e1
    ldh [$df], a                                  ; $74c7: $e0 $df
    nop                                           ; $74c9: $00
    sbc $dd                                       ; $74ca: $de $dd
    ld [$eceb], a                                 ; $74cc: $ea $eb $ec
    db $ed                                        ; $74cf: $ed
    xor $ef                                       ; $74d0: $ee $ef
    nop                                           ; $74d2: $00
    ldh a, [$f1]                                  ; $74d3: $f0 $f1
    ld a, [c]                                     ; $74d5: $f2
    di                                            ; $74d6: $f3
    db $f4                                        ; $74d7: $f4
    push af                                       ; $74d8: $f5
    or $f0                                        ; $74d9: $f6 $f0
    nop                                           ; $74db: $00
    rst $28                                       ; $74dc: $ef
    xor $ed                                       ; $74dd: $ee $ed
    db $ec                                        ; $74df: $ec
    db $eb                                        ; $74e0: $eb
    ld [$f8f7], a                                 ; $74e1: $ea $f7 $f8
    nop                                           ; $74e4: $00
    ld sp, hl                                     ; $74e5: $f9
    ld a, [$fcfb]                                 ; $74e6: $fa $fb $fc
    db $fd                                        ; $74e9: $fd
    cp $f9                                        ; $74ea: $fe $f9
    ld a, [$ff00]                                 ; $74ec: $fa $00 $ff
    nop                                           ; $74ef: $00
    ret nz                                        ; $74f0: $c0

    db $fd                                        ; $74f1: $fd
    db $fc                                        ; $74f2: $fc
    ei                                            ; $74f3: $fb
    ld a, [$10f9]                                 ; $74f4: $fa $f9 $10
    ld hl, sp-$09                                 ; $74f7: $f8 $f7
    ld [bc], a                                    ; $74f9: $02
    ld bc, $0380                                  ; $74fa: $01 $80 $03
    inc bc                                        ; $74fd: $03
    ld [bc], a                                    ; $74fe: $02
    inc hl                                        ; $74ff: $23
    cp l                                          ; $7500: $bd
    ld b, $00                                     ; $7501: $06 $00
    ld h, d                                       ; $7503: $62
    ld [$0c00], sp                                ; $7504: $08 $00 $0c
    nop                                           ; $7507: $00
    dec b                                         ; $7508: $05
    nop                                           ; $7509: $00
    ld [de], a                                    ; $750a: $12
    nop                                           ; $750b: $00
    inc c                                         ; $750c: $0c
    ld bc, $5580                                  ; $750d: $01 $80 $55
    add hl, bc                                    ; $7510: $09
    ld bc, $2948                                  ; $7511: $01 $48 $29
    ld bc, $0e18                                  ; $7514: $01 $18 $0e
    ld bc, $0f00                                  ; $7517: $01 $00 $0f
    inc bc                                        ; $751a: $03
    db $10                                        ; $751b: $10
    and e                                         ; $751c: $a3
    rlca                                          ; $751d: $07
    nop                                           ; $751e: $00
    ld l, $01                                     ; $751f: $2e $01
    nop                                           ; $7521: $00
    cpl                                           ; $7522: $2f
    ld l, $2e                                     ; $7523: $2e $2e
    rrca                                          ; $7525: $0f
    jr @+$05                                      ; $7526: $18 $03

jr_0ca_7528:
    jr nz, jr_0ca_7528                            ; $7528: $20 $fe

    ld de, $1300                                  ; $752a: $11 $00 $13
    nop                                           ; $752d: $00
    inc d                                         ; $752e: $14
    nop                                           ; $752f: $00
    inc h                                         ; $7530: $24
    jr nz, jr_0ca_7561                            ; $7531: $20 $2e

    ld [$0828], sp                                ; $7533: $08 $28 $08
    add hl, hl                                    ; $7536: $29
    nop                                           ; $7537: $00
    rrca                                          ; $7538: $0f
    sbc a                                         ; $7539: $9f
    ld [de], a                                    ; $753a: $12
    jr c, jr_0ca_754b                             ; $753b: $38 $0e

    rrca                                          ; $753d: $0f
    ld a, [hl-]                                   ; $753e: $3a
    ld [$003c], sp                                ; $753f: $08 $3c $00
    ld c, c                                       ; $7542: $49
    db $10                                        ; $7543: $10
    ccf                                           ; $7544: $3f
    jr jr_0ca_7597                                ; $7545: $18 $50

    db $10                                        ; $7547: $10
    sbc a                                         ; $7548: $9f
    ld c, a                                       ; $7549: $4f
    nop                                           ; $754a: $00

jr_0ca_754b:
    cpl                                           ; $754b: $2f
    rrca                                          ; $754c: $0f
    ld d, b                                       ; $754d: $50
    jr nz, jr_0ca_7558                            ; $754e: $20 $08

    db $10                                        ; $7550: $10
    ld c, l                                       ; $7551: $4d
    ld [$0065], sp                                ; $7552: $08 $65 $00
    ld c, a                                       ; $7555: $4f
    jr nc, @+$01                                  ; $7556: $30 $ff

jr_0ca_7558:
    ld a, b                                       ; $7558: $78
    jr jr_0ca_7571                                ; $7559: $18 $16

    db $10                                        ; $755b: $10
    adc b                                         ; $755c: $88
    ld [$108c], sp                                ; $755d: $08 $8c $10
    adc [hl]                                      ; $7560: $8e

jr_0ca_7561:
    ld [$188b], sp                                ; $7561: $08 $8b $18
    adc h                                         ; $7564: $8c
    db $10                                        ; $7565: $10
    ld b, b                                       ; $7566: $40
    jr @-$3e                                      ; $7567: $18 $c0

    ld b, [hl]                                    ; $7569: $46
    nop                                           ; $756a: $00
    adc d                                         ; $756b: $8a
    db $10                                        ; $756c: $10
    cpl                                           ; $756d: $2f
    ld l, $14                                     ; $756e: $2e $14
    nop                                           ; $7570: $00

jr_0ca_7571:
    dec c                                         ; $7571: $0d
    nop                                           ; $7572: $00
    ld a, [hl-]                                   ; $7573: $3a
    ld bc, $6808                                  ; $7574: $01 $08 $68
    ld l, c                                       ; $7577: $69
    ld l, d                                       ; $7578: $6a
    ld l, e                                       ; $7579: $6b
    inc b                                         ; $757a: $04
    ld [$6d6c], sp                                ; $757b: $08 $6c $6d
    ld l, [hl]                                    ; $757e: $6e
    call nz, $1004                                ; $757f: $c4 $04 $10
    db $10                                        ; $7582: $10
    ld [$706f], sp                                ; $7583: $08 $6f $70
    ld [hl], c                                    ; $7586: $71
    inc b                                         ; $7587: $04
    db $10                                        ; $7588: $10
    ld [hl], d                                    ; $7589: $72
    ld [hl], e                                    ; $758a: $73
    ld h, c                                       ; $758b: $61
    ld [hl], h                                    ; $758c: $74
    inc b                                         ; $758d: $04
    db $10                                        ; $758e: $10
    db $10                                        ; $758f: $10
    ld [$7675], sp                                ; $7590: $08 $75 $76
    halt                                          ; $7593: $76
    ld [hl], a                                    ; $7594: $77
    inc b                                         ; $7595: $04
    db $10                                        ; $7596: $10

jr_0ca_7597:
    jr nc, @+$7a                                  ; $7597: $30 $78

    ld a, b                                       ; $7599: $78
    inc b                                         ; $759a: $04
    jr jr_0ca_75ad                                ; $759b: $18 $10

    nop                                           ; $759d: $00
    ld a, c                                       ; $759e: $79
    ld a, d                                       ; $759f: $7a
    ld a, e                                       ; $75a0: $7b
    ld a, h                                       ; $75a1: $7c
    nop                                           ; $75a2: $00
    ld a, l                                       ; $75a3: $7d
    ld a, [hl]                                    ; $75a4: $7e
    ld a, a                                       ; $75a5: $7f
    add b                                         ; $75a6: $80
    add c                                         ; $75a7: $81
    add d                                         ; $75a8: $82
    add e                                         ; $75a9: $83
    add h                                         ; $75aa: $84
    nop                                           ; $75ab: $00
    add l                                         ; $75ac: $85

jr_0ca_75ad:
    add [hl]                                      ; $75ad: $86
    add a                                         ; $75ae: $87
    adc b                                         ; $75af: $88
    adc c                                         ; $75b0: $89
    adc d                                         ; $75b1: $8a
    adc e                                         ; $75b2: $8b
    adc h                                         ; $75b3: $8c
    nop                                           ; $75b4: $00
    adc l                                         ; $75b5: $8d
    adc [hl]                                      ; $75b6: $8e
    adc a                                         ; $75b7: $8f
    sub b                                         ; $75b8: $90
    sub c                                         ; $75b9: $91
    sub d                                         ; $75ba: $92
    sub e                                         ; $75bb: $93
    sub h                                         ; $75bc: $94
    nop                                           ; $75bd: $00
    sub l                                         ; $75be: $95
    sub [hl]                                      ; $75bf: $96
    sub a                                         ; $75c0: $97
    sbc b                                         ; $75c1: $98
    sbc c                                         ; $75c2: $99
    sub e                                         ; $75c3: $93
    sub d                                         ; $75c4: $92
    sub c                                         ; $75c5: $91
    nop                                           ; $75c6: $00
    sub b                                         ; $75c7: $90
    adc a                                         ; $75c8: $8f
    adc [hl]                                      ; $75c9: $8e
    adc l                                         ; $75ca: $8d
    sbc d                                         ; $75cb: $9a
    sbc e                                         ; $75cc: $9b
    sbc h                                         ; $75cd: $9c
    sbc l                                         ; $75ce: $9d
    nop                                           ; $75cf: $00
    sbc [hl]                                      ; $75d0: $9e
    sbc a                                         ; $75d1: $9f
    and b                                         ; $75d2: $a0
    and c                                         ; $75d3: $a1
    and d                                         ; $75d4: $a2
    and e                                         ; $75d5: $a3
    and h                                         ; $75d6: $a4
    and l                                         ; $75d7: $a5
    nop                                           ; $75d8: $00
    and [hl]                                      ; $75d9: $a6
    and b                                         ; $75da: $a0
    sbc a                                         ; $75db: $9f
    sbc [hl]                                      ; $75dc: $9e
    sbc l                                         ; $75dd: $9d
    sbc h                                         ; $75de: $9c
    sbc e                                         ; $75df: $9b
    sbc d                                         ; $75e0: $9a
    nop                                           ; $75e1: $00
    and a                                         ; $75e2: $a7
    xor b                                         ; $75e3: $a8
    xor c                                         ; $75e4: $a9
    xor d                                         ; $75e5: $aa
    xor e                                         ; $75e6: $ab
    xor h                                         ; $75e7: $ac
    xor l                                         ; $75e8: $ad
    xor [hl]                                      ; $75e9: $ae
    nop                                           ; $75ea: $00
    xor a                                         ; $75eb: $af
    or b                                          ; $75ec: $b0
    or c                                          ; $75ed: $b1
    or d                                          ; $75ee: $b2
    or e                                          ; $75ef: $b3
    xor l                                         ; $75f0: $ad
    xor h                                         ; $75f1: $ac
    xor e                                         ; $75f2: $ab
    nop                                           ; $75f3: $00
    xor d                                         ; $75f4: $aa
    xor c                                         ; $75f5: $a9
    xor b                                         ; $75f6: $a8
    and a                                         ; $75f7: $a7
    or h                                          ; $75f8: $b4
    or l                                          ; $75f9: $b5
    or [hl]                                       ; $75fa: $b6
    or a                                          ; $75fb: $b7
    nop                                           ; $75fc: $00
    cp b                                          ; $75fd: $b8
    cp c                                          ; $75fe: $b9
    cp d                                          ; $75ff: $ba
    cp e                                          ; $7600: $bb
    cp h                                          ; $7601: $bc
    cp l                                          ; $7602: $bd
    cp [hl]                                       ; $7603: $be
    cp a                                          ; $7604: $bf
    nop                                           ; $7605: $00
    ret nz                                        ; $7606: $c0

    cp d                                          ; $7607: $ba
    cp c                                          ; $7608: $b9
    cp b                                          ; $7609: $b8
    or a                                          ; $760a: $b7
    or [hl]                                       ; $760b: $b6
    or l                                          ; $760c: $b5
    or h                                          ; $760d: $b4
    nop                                           ; $760e: $00
    pop bc                                        ; $760f: $c1
    jp nz, $c4c3                                  ; $7610: $c2 $c3 $c4

    push bc                                       ; $7613: $c5
    add $c7                                       ; $7614: $c6 $c7
    ret z                                         ; $7616: $c8

    nop                                           ; $7617: $00
    ret                                           ; $7618: $c9


    jp z, $cccb                                   ; $7619: $ca $cb $cc

    call $c6c7                                    ; $761c: $cd $c7 $c6
    push bc                                       ; $761f: $c5
    nop                                           ; $7620: $00
    call nz, $c2c3                                ; $7621: $c4 $c3 $c2
    pop bc                                        ; $7624: $c1
    adc $cf                                       ; $7625: $ce $cf
    ret nc                                        ; $7627: $d0

    pop de                                        ; $7628: $d1
    nop                                           ; $7629: $00
    jp nc, $d4d3                                  ; $762a: $d2 $d3 $d4

    push de                                       ; $762d: $d5
    sub $d7                                       ; $762e: $d6 $d7
    ret c                                         ; $7630: $d8

    reti                                          ; $7631: $d9


    nop                                           ; $7632: $00
    jp c, $d3d4                                   ; $7633: $da $d4 $d3

    jp nc, $d0d1                                  ; $7636: $d2 $d1 $d0

    rst $08                                       ; $7639: $cf
    adc $00                                       ; $763a: $ce $00
    db $db                                        ; $763c: $db
    call c, $dedd                                 ; $763d: $dc $dd $de
    rst $18                                       ; $7640: $df
    ldh [$e1], a                                  ; $7641: $e0 $e1
    ld [c], a                                     ; $7643: $e2
    nop                                           ; $7644: $00
    db $e3                                        ; $7645: $e3
    db $e4                                        ; $7646: $e4
    push hl                                       ; $7647: $e5
    and $e7                                       ; $7648: $e6 $e7
    pop hl                                        ; $764a: $e1
    ldh [$df], a                                  ; $764b: $e0 $df
    nop                                           ; $764d: $00
    sbc $dd                                       ; $764e: $de $dd
    call c, $e8db                                 ; $7650: $dc $db $e8
    jp hl                                         ; $7653: $e9


    ld [$00eb], a                                 ; $7654: $ea $eb $00
    db $ec                                        ; $7657: $ec
    db $ed                                        ; $7658: $ed
    xor $ef                                       ; $7659: $ee $ef
    ldh a, [$bd]                                  ; $765b: $f0 $bd
    cp [hl]                                       ; $765d: $be
    pop af                                        ; $765e: $f1
    nop                                           ; $765f: $00
    ld a, [c]                                     ; $7660: $f2
    xor $ed                                       ; $7661: $ee $ed
    db $ec                                        ; $7663: $ec
    db $eb                                        ; $7664: $eb
    ld [$e8e9], a                                 ; $7665: $ea $e9 $e8
    nop                                           ; $7668: $00
    di                                            ; $7669: $f3
    db $f4                                        ; $766a: $f4
    push af                                       ; $766b: $f5
    or $f7                                        ; $766c: $f6 $f7
    ld hl, sp-$07                                 ; $766e: $f8 $f9
    ld a, [$fb00]                                 ; $7670: $fa $00 $fb
    jp z, $fccb                                   ; $7673: $ca $cb $fc

    db $fd                                        ; $7676: $fd
    ld sp, hl                                     ; $7677: $f9
    ld hl, sp-$09                                 ; $7678: $f8 $f7
    inc b                                         ; $767a: $04
    or $f5                                        ; $767b: $f6 $f5
    db $f4                                        ; $767d: $f4
    di                                            ; $767e: $f3
    ld bc, $2001                                  ; $767f: $01 $01 $20
    inc b                                         ; $7682: $04
    inc b                                         ; $7683: $04
    ld [hl], c                                    ; $7684: $71
    inc b                                         ; $7685: $04
    inc b                                         ; $7686: $04
    db $10                                        ; $7687: $10
    ld bc, $1448                                  ; $7688: $01 $48 $14
    ld c, b                                       ; $768b: $48
    inc bc                                        ; $768c: $03
    inc bc                                        ; $768d: $03
    inc bc                                        ; $768e: $03
    inc b                                         ; $768f: $04
    db $10                                        ; $7690: $10
    add sp, $28                                   ; $7691: $e8 $28
    jr z, jr_0ca_76a5                             ; $7693: $28 $10

    jr nz, jr_0ca_769a                            ; $7695: $20 $03

    ld [$010b], sp                                ; $7697: $08 $0b $01

jr_0ca_769a:
    ld c, b                                       ; $769a: $48
    ld c, $0b                                     ; $769b: $0e $0b
    rrca                                          ; $769d: $0f
    jp nz, Jump_000_0810                          ; $769e: $c2 $10 $08

    dec b                                         ; $76a1: $05
    nop                                           ; $76a2: $00
    rrca                                          ; $76a3: $0f
    dec bc                                        ; $76a4: $0b

jr_0ca_76a5:
    rrca                                          ; $76a5: $0f
    dec hl                                        ; $76a6: $2b
    ld bc, $2e00                                  ; $76a7: $01 $00 $2e
    jr @+$2d                                      ; $76aa: $18 $2b

    cpl                                           ; $76ac: $2f
    ld c, $12                                     ; $76ad: $0e $12
    db $10                                        ; $76af: $10
    inc de                                        ; $76b0: $13
    db $10                                        ; $76b1: $10
    dec bc                                        ; $76b2: $0b
    ld c, $2f                                     ; $76b3: $0e $2f
    ld hl, $2e2f                                  ; $76b5: $21 $2f $2e
    inc de                                        ; $76b8: $13
    nop                                           ; $76b9: $00
    dec hl                                        ; $76ba: $2b
    dec bc                                        ; $76bb: $0b
    ld c, $0f                                     ; $76bc: $0e $0f
    ld bc, $f500                                  ; $76be: $01 $00 $f5
    cpl                                           ; $76c1: $2f
    nop                                           ; $76c2: $00
    inc bc                                        ; $76c3: $03
    ld [$0014], sp                                ; $76c4: $08 $14 $00
    inc de                                        ; $76c7: $13
    nop                                           ; $76c8: $00
    cpl                                           ; $76c9: $2f
    rrca                                          ; $76ca: $0f
    nop                                           ; $76cb: $00
    ld c, $40                                     ; $76cc: $0e $40
    nop                                           ; $76ce: $00
    ld c, a                                       ; $76cf: $4f
    rrca                                          ; $76d0: $0f
    jr nc, jr_0ca_76d3                            ; $76d1: $30 $00

jr_0ca_76d3:
    rrca                                          ; $76d3: $0f
    dec bc                                        ; $76d4: $0b
    add hl, sp                                    ; $76d5: $39
    ld [$0040], sp                                ; $76d6: $08 $40 $00
    dec c                                         ; $76d9: $0d
    ld [$1024], sp                                ; $76da: $08 $24 $10
    rst $00                                       ; $76dd: $c7
    inc l                                         ; $76de: $2c
    ld [$0811], sp                                ; $76df: $08 $11 $08
    cpl                                           ; $76e2: $2f
    cpl                                           ; $76e3: $2f
    dec hl                                        ; $76e4: $2b
    ld h, h                                       ; $76e5: $64
    ld [$084b], sp                                ; $76e6: $08 $4b $08
    dec d                                         ; $76e9: $15
    db $10                                        ; $76ea: $10
    di                                            ; $76eb: $f3
    inc de                                        ; $76ec: $13
    ld [$0016], sp                                ; $76ed: $08 $16 $00
    ld [hl], h                                    ; $76f0: $74
    jr z, jr_0ca_775b                             ; $76f1: $28 $68

    nop                                           ; $76f3: $00
    rrca                                          ; $76f4: $0f
    dec bc                                        ; $76f5: $0b
    ld c, [hl]                                    ; $76f6: $4e
    db $10                                        ; $76f7: $10
    inc a                                         ; $76f8: $3c
    nop                                           ; $76f9: $00
    rst $38                                       ; $76fa: $ff
    dec [hl]                                      ; $76fb: $35
    ld [$1013], sp                                ; $76fc: $08 $13 $10
    sub c                                         ; $76ff: $91
    nop                                           ; $7700: $00
    add hl, sp                                    ; $7701: $39
    ld [$008d], sp                                ; $7702: $08 $8d $00
    and c                                         ; $7705: $a1
    nop                                           ; $7706: $00
    inc de                                        ; $7707: $13
    nop                                           ; $7708: $00
    ld a, c                                       ; $7709: $79
    db $10                                        ; $770a: $10
    ret nz                                        ; $770b: $c0

    ld h, h                                       ; $770c: $64
    ld [$1028], sp                                ; $770d: $08 $28 $10
    inc d                                         ; $7710: $14
    nop                                           ; $7711: $00
    dec c                                         ; $7712: $0d
    nop                                           ; $7713: $00
    or d                                          ; $7714: $b2
    nop                                           ; $7715: $00
    dec b                                         ; $7716: $05
    ld l, b                                       ; $7717: $68
    ld l, c                                       ; $7718: $69
    ld l, d                                       ; $7719: $6a
    ld l, e                                       ; $771a: $6b
    ld l, h                                       ; $771b: $6c
    ld bc, $6d20                                  ; $771c: $01 $20 $6d
    dec c                                         ; $771f: $0d
    jr nz, jr_0ca_772c                            ; $7720: $20 $0a

    ld l, [hl]                                    ; $7722: $6e
    ld l, a                                       ; $7723: $6f
    ld [hl], b                                    ; $7724: $70
    ld [hl], c                                    ; $7725: $71
    inc d                                         ; $7726: $14
    jr z, jr_0ca_779b                             ; $7727: $28 $72

    dec c                                         ; $7729: $0d
    jr nz, jr_0ca_779f                            ; $772a: $20 $73

jr_0ca_772c:
    inc d                                         ; $772c: $14
    ld [hl], h                                    ; $772d: $74
    ld [hl], l                                    ; $772e: $75
    halt                                          ; $772f: $76
    jr z, jr_0ca_775a                             ; $7730: $28 $28

    ld [hl], a                                    ; $7732: $77
    dec c                                         ; $7733: $0d
    jr nz, jr_0ca_77ae                            ; $7734: $20 $78

    ld a, c                                       ; $7736: $79
    nop                                           ; $7737: $00
    ld a, d                                       ; $7738: $7a
    ld a, e                                       ; $7739: $7b
    ld a, h                                       ; $773a: $7c
    ld a, l                                       ; $773b: $7d
    ld a, [hl]                                    ; $773c: $7e
    ld a, a                                       ; $773d: $7f
    add b                                         ; $773e: $80
    add c                                         ; $773f: $81
    nop                                           ; $7740: $00
    ld a, [hl]                                    ; $7741: $7e
    add d                                         ; $7742: $82
    add e                                         ; $7743: $83
    add h                                         ; $7744: $84
    ld a, c                                       ; $7745: $79
    add l                                         ; $7746: $85
    add [hl]                                      ; $7747: $86
    add a                                         ; $7748: $87
    nop                                           ; $7749: $00
    adc b                                         ; $774a: $88
    adc c                                         ; $774b: $89
    adc d                                         ; $774c: $8a
    adc e                                         ; $774d: $8b
    adc h                                         ; $774e: $8c
    adc l                                         ; $774f: $8d
    adc [hl]                                      ; $7750: $8e
    adc a                                         ; $7751: $8f
    nop                                           ; $7752: $00
    sub b                                         ; $7753: $90
    sub c                                         ; $7754: $91
    sub c                                         ; $7755: $91
    sub d                                         ; $7756: $92
    sub e                                         ; $7757: $93
    sub h                                         ; $7758: $94
    sub l                                         ; $7759: $95

jr_0ca_775a:
    sub [hl]                                      ; $775a: $96

jr_0ca_775b:
    nop                                           ; $775b: $00
    sub a                                         ; $775c: $97
    sbc b                                         ; $775d: $98
    sub e                                         ; $775e: $93
    sub h                                         ; $775f: $94
    sbc c                                         ; $7760: $99
    sbc d                                         ; $7761: $9a
    sbc e                                         ; $7762: $9b
    adc a                                         ; $7763: $8f
    nop                                           ; $7764: $00
    sbc h                                         ; $7765: $9c
    adc e                                         ; $7766: $8b
    sbc l                                         ; $7767: $9d
    adc l                                         ; $7768: $8d
    sub c                                         ; $7769: $91
    sub c                                         ; $776a: $91
    sbc [hl]                                      ; $776b: $9e
    sbc a                                         ; $776c: $9f
    add b                                         ; $776d: $80
    ld d, $08                                     ; $776e: $16 $08
    and b                                         ; $7770: $a0
    sbc d                                         ; $7771: $9a
    and c                                         ; $7772: $a1
    sub d                                         ; $7773: $92
    sub e                                         ; $7774: $93
    sub c                                         ; $7775: $91
    sub c                                         ; $7776: $91
    ld bc, $8e8d                                  ; $7777: $01 $8d $8e
    and d                                         ; $777a: $a2
    sbc h                                         ; $777b: $9c
    and e                                         ; $777c: $a3
    adc d                                         ; $777d: $8a
    sub c                                         ; $777e: $91
    ld bc, $4008                                  ; $777f: $01 $08 $40
    and h                                         ; $7782: $a4
    ld b, $10                                     ; $7783: $06 $10
    sub c                                         ; $7785: $91
    sub c                                         ; $7786: $91
    adc d                                         ; $7787: $8a
    and e                                         ; $7788: $a3
    adc h                                         ; $7789: $8c
    and l                                         ; $778a: $a5
    inc c                                         ; $778b: $0c
    adc [hl]                                      ; $778c: $8e
    and d                                         ; $778d: $a2
    sbc e                                         ; $778e: $9b
    adc a                                         ; $778f: $8f
    ld d, $18                                     ; $7790: $16 $18
    dec de                                        ; $7792: $1b
    db $10                                        ; $7793: $10
    sbc d                                         ; $7794: $9a
    sub c                                         ; $7795: $91
    pop de                                        ; $7796: $d1
    inc a                                         ; $7797: $3c
    nop                                           ; $7798: $00
    ld d, $00                                     ; $7799: $16 $00

jr_0ca_779b:
    adc l                                         ; $779b: $8d
    ld d, $08                                     ; $779c: $16 $08
    adc d                                         ; $779e: $8a

jr_0ca_779f:
    sub c                                         ; $779f: $91
    sbc l                                         ; $77a0: $9d
    jr nc, jr_0ca_77a3                            ; $77a1: $30 $00

jr_0ca_77a3:
    inc e                                         ; $77a3: $1c
    sub e                                         ; $77a4: $93
    sub c                                         ; $77a5: $91
    sbc l                                         ; $77a6: $9d
    inc a                                         ; $77a7: $3c
    nop                                           ; $77a8: $00
    ld l, b                                       ; $77a9: $68
    nop                                           ; $77aa: $00
    ld d, $10                                     ; $77ab: $16 $10
    sub c                                         ; $77ad: $91

jr_0ca_77ae:
    adc a                                         ; $77ae: $8f
    rla                                           ; $77af: $17
    sub c                                         ; $77b0: $91
    and e                                         ; $77b1: $a3
    sub c                                         ; $77b2: $91
    ld e, h                                       ; $77b3: $5c
    nop                                           ; $77b4: $00
    sub c                                         ; $77b5: $91
    inc a                                         ; $77b6: $3c
    nop                                           ; $77b7: $00
    ld l, b                                       ; $77b8: $68
    ld [$082c], sp                                ; $77b9: $08 $2c $08
    ld [hl], d                                    ; $77bc: $72
    sbc l                                         ; $77bd: $9d
    ld l, $08                                     ; $77be: $2e $08
    ld d, $10                                     ; $77c0: $16 $10
    adc [hl]                                      ; $77c2: $8e
    ld [$a29d], sp                                ; $77c3: $08 $9d $a2
    ld b, d                                       ; $77c6: $42
    ld [$098a], sp                                ; $77c7: $08 $8a $09
    and e                                         ; $77ca: $a3
    sbc h                                         ; $77cb: $9c
    adc l                                         ; $77cc: $8d
    adc h                                         ; $77cd: $8c
    ld d, $10                                     ; $77ce: $16 $10
    sbc e                                         ; $77d0: $9b
    and d                                         ; $77d1: $a2
    inc e                                         ; $77d2: $1c
    nop                                           ; $77d3: $00
    ld c, d                                       ; $77d4: $4a
    and e                                         ; $77d5: $a3
    ld d, $18                                     ; $77d6: $16 $18
    adc [hl]                                      ; $77d8: $8e
    and d                                         ; $77d9: $a2
    ld d, d                                       ; $77da: $52
    ld [$0102], sp                                ; $77db: $08 $02 $01
    add b                                         ; $77de: $80
    inc b                                         ; $77df: $04
    and d                                         ; $77e0: $a2
    ld bc, $0580                                  ; $77e1: $01 $80 $05
    ld bc, $0680                                  ; $77e4: $01 $80 $06
    inc bc                                        ; $77e7: $03
    ld b, $01                                     ; $77e8: $06 $01

Jump_0ca_77ea:
    db $10                                        ; $77ea: $10
    ld c, $02                                     ; $77eb: $0e $02
    ld c, $26                                     ; $77ed: $0e $26
    ld c, $0e                                     ; $77ef: $0e $0e
    ld c, $03                                     ; $77f1: $0e $03
    inc b                                         ; $77f3: $04
    nop                                           ; $77f4: $00
    ld c, $2f                                     ; $77f5: $0e $2f
    ld c, $09                                     ; $77f7: $0e $09
    ld bc, $0f10                                  ; $77f9: $01 $10 $0f
    rlca                                          ; $77fc: $07
    jr jr_0ca_7805                                ; $77fd: $18 $06

    ld hl, sp+$28                                 ; $77ff: $f8 $28
    ld hl, sp+$4a                                 ; $7801: $f8 $4a
    ld hl, sp-$40                                 ; $7803: $f8 $c0

jr_0ca_7805:
    ld l, h                                       ; $7805: $6c
    ld hl, sp-$72                                 ; $7806: $f8 $8e
    ldh [rNR14], a                                ; $7808: $e0 $14
    nop                                           ; $780a: $00
    dec c                                         ; $780b: $0d
    nop                                           ; $780c: $00
    ldh [rP1], a                                  ; $780d: $e0 $00
    nop                                           ; $780f: $00
    ld l, b                                       ; $7810: $68
    ld l, c                                       ; $7811: $69
    ld l, d                                       ; $7812: $6a
    ld l, e                                       ; $7813: $6b
    ld l, h                                       ; $7814: $6c
    ld l, l                                       ; $7815: $6d
    ld l, [hl]                                    ; $7816: $6e
    ld l, b                                       ; $7817: $68
    nop                                           ; $7818: $00
    ld l, a                                       ; $7819: $6f
    ld l, [hl]                                    ; $781a: $6e
    ld l, b                                       ; $781b: $68
    ld l, b                                       ; $781c: $68
    ld [hl], b                                    ; $781d: $70
    add a                                         ; $781e: $87
    add [hl]                                      ; $781f: $86
    add l                                         ; $7820: $85
    nop                                           ; $7821: $00
    add h                                         ; $7822: $84
    add e                                         ; $7823: $83
    add d                                         ; $7824: $82
    add c                                         ; $7825: $81
    ld a, b                                       ; $7826: $78
    ld a, c                                       ; $7827: $79
    ld a, d                                       ; $7828: $7a
    ld a, e                                       ; $7829: $7b
    nop                                           ; $782a: $00
    ld a, h                                       ; $782b: $7c
    ld a, l                                       ; $782c: $7d
    ld a, [hl]                                    ; $782d: $7e
    ld a, b                                       ; $782e: $78
    ld a, a                                       ; $782f: $7f
    ld a, [hl]                                    ; $7830: $7e
    ld a, b                                       ; $7831: $78
    ld a, b                                       ; $7832: $78
    nop                                           ; $7833: $00
    add b                                         ; $7834: $80
    ld [hl], a                                    ; $7835: $77
    halt                                          ; $7836: $76
    ld [hl], l                                    ; $7837: $75
    ld [hl], h                                    ; $7838: $74
    ld [hl], e                                    ; $7839: $73
    ld [hl], d                                    ; $783a: $72
    ld [hl], c                                    ; $783b: $71
    nop                                           ; $783c: $00
    adc b                                         ; $783d: $88
    adc c                                         ; $783e: $89
    adc d                                         ; $783f: $8a
    adc e                                         ; $7840: $8b
    adc c                                         ; $7841: $89
    adc h                                         ; $7842: $8c
    adc l                                         ; $7843: $8d
    adc b                                         ; $7844: $88
    nop                                           ; $7845: $00
    adc [hl]                                      ; $7846: $8e
    adc l                                         ; $7847: $8d
    adc b                                         ; $7848: $88
    adc b                                         ; $7849: $88
    adc [hl]                                      ; $784a: $8e
    adc a                                         ; $784b: $8f
    sub b                                         ; $784c: $90
    sub c                                         ; $784d: $91
    ld b, b                                       ; $784e: $40
    sub d                                         ; $784f: $92
    inc bc                                        ; $7850: $03
    nop                                           ; $7851: $00
    sub e                                         ; $7852: $93
    sub h                                         ; $7853: $94
    sub l                                         ; $7854: $95
    sub [hl]                                      ; $7855: $96
    sub a                                         ; $7856: $97
    sbc b                                         ; $7857: $98
    inc h                                         ; $7858: $24
    sbc c                                         ; $7859: $99
    sbc d                                         ; $785a: $9a
    ld [$a118], sp                                ; $785b: $08 $18 $a1
    and d                                         ; $785e: $a2
    db $10                                        ; $785f: $10
    ld [$a8a7], sp                                ; $7860: $08 $a7 $a8
    ld [bc], a                                    ; $7863: $02
    xor c                                         ; $7864: $a9
    xor d                                         ; $7865: $aa
    xor e                                         ; $7866: $ab
    xor h                                         ; $7867: $ac
    xor l                                         ; $7868: $ad

jr_0ca_7869:
    xor [hl]                                      ; $7869: $ae
    ld [$b518], sp                                ; $786a: $08 $18 $b5
    ld b, b                                       ; $786d: $40
    or [hl]                                       ; $786e: $b6
    db $10                                        ; $786f: $10
    ld [$bcbb], sp                                ; $7870: $08 $bb $bc
    cp l                                          ; $7873: $bd
    cp [hl]                                       ; $7874: $be
    cp a                                          ; $7875: $bf
    ret nz                                        ; $7876: $c0

    inc h                                         ; $7877: $24
    pop bc                                        ; $7878: $c1
    jp nz, $1808                                  ; $7879: $c2 $08 $18

    ret                                           ; $787c: $c9


    jp z, Jump_000_0810                           ; $787d: $ca $10 $08

    rst $08                                       ; $7880: $cf
    ret nc                                        ; $7881: $d0

    ld [bc], a                                    ; $7882: $02
    pop de                                        ; $7883: $d1
    jp nc, $d4d3                                  ; $7884: $d2 $d3 $d4

    push de                                       ; $7887: $d5
    sub $08                                       ; $7888: $d6 $08
    jr jr_0ca_7869                                ; $788a: $18 $dd

    ld b, b                                       ; $788c: $40
    sbc $10                                       ; $788d: $de $10
    ld [$e4e3], sp                                ; $788f: $08 $e3 $e4
    push hl                                       ; $7892: $e5

jr_0ca_7893:
    and $e7                                       ; $7893: $e6 $e7
    add sp, $24                                   ; $7895: $e8 $24
    jp hl                                         ; $7897: $e9


    ld [$1808], a                                 ; $7898: $ea $08 $18
    pop af                                        ; $789b: $f1
    ld a, [c]                                     ; $789c: $f2
    db $10                                        ; $789d: $10
    ld [$f5f6], sp                                ; $789e: $08 $f6 $f5
    ld [bc], a                                    ; $78a1: $02
    db $f4                                        ; $78a2: $f4
    di                                            ; $78a3: $f3
    ldh a, [$ef]                                  ; $78a4: $f0 $ef
    xor $ed                                       ; $78a6: $ee $ed
    ld [$ec18], sp                                ; $78a8: $08 $18 $ec
    ld b, b                                       ; $78ab: $40
    db $eb                                        ; $78ac: $eb
    db $10                                        ; $78ad: $10
    ld [$e1e2], sp                                ; $78ae: $08 $e2 $e1
    ldh [$df], a                                  ; $78b1: $e0 $df
    call c, Call_000_24db                         ; $78b3: $dc $db $24
    jp c, $08d9                                   ; $78b6: $da $d9 $08

    jr jr_0ca_7893                                ; $78b9: $18 $d8

    rst $10                                       ; $78bb: $d7
    db $10                                        ; $78bc: $10
    ld [$cdce], sp                                ; $78bd: $08 $ce $cd
    ld [bc], a                                    ; $78c0: $02
    call z, $c8cb                                 ; $78c1: $cc $cb $c8
    rst $00                                       ; $78c4: $c7

jr_0ca_78c5:
    add $c5                                       ; $78c5: $c6 $c5
    ld [$c418], sp                                ; $78c7: $08 $18 $c4
    ld b, b                                       ; $78ca: $40
    jp Jump_000_0810                              ; $78cb: $c3 $10 $08


    cp d                                          ; $78ce: $ba
    cp c                                          ; $78cf: $b9
    cp b                                          ; $78d0: $b8
    or a                                          ; $78d1: $b7
    or h                                          ; $78d2: $b4
    or e                                          ; $78d3: $b3
    inc h                                         ; $78d4: $24
    or d                                          ; $78d5: $b2
    or c                                          ; $78d6: $b1
    ld [$b018], sp                                ; $78d7: $08 $18 $b0
    xor a                                         ; $78da: $af
    db $10                                        ; $78db: $10
    ld [$a5a6], sp                                ; $78dc: $08 $a6 $a5
    ld [bc], a                                    ; $78df: $02
    and h                                         ; $78e0: $a4
    and e                                         ; $78e1: $a3
    and b                                         ; $78e2: $a0
    sbc a                                         ; $78e3: $9f
    sbc [hl]                                      ; $78e4: $9e
    sbc l                                         ; $78e5: $9d
    ld [$9c18], sp                                ; $78e6: $08 $18 $9c
    ld c, d                                       ; $78e9: $4a
    sbc e                                         ; $78ea: $9b
    db $10                                        ; $78eb: $10
    ld [$0305], sp                                ; $78ec: $08 $05 $03

jr_0ca_78ef:
    ld bc, $0500                                  ; $78ef: $01 $00 $05
    ld bc, $0820                                  ; $78f2: $01 $20 $08
    jp z, Jump_000_1801                           ; $78f5: $ca $01 $18

    inc d                                         ; $78f8: $14
    ld c, b                                       ; $78f9: $48
    dec c                                         ; $78fa: $0d
    nop                                           ; $78fb: $00
    ld bc, $0d18                                  ; $78fc: $01 $18 $0d
    ld bc, $0f80                                  ; $78ff: $01 $80 $0f
    add [hl]                                      ; $7902: $86
    ld bc, $0980                                  ; $7903: $01 $80 $09
    add hl, bc                                    ; $7906: $09
    ld c, $09                                     ; $7907: $0e $09
    inc b                                         ; $7909: $04
    jr jr_0ca_7916                                ; $790a: $18 $0a

    db $10                                        ; $790c: $10
    ld c, $ff                                     ; $790d: $0e $ff
    ld c, $28                                     ; $790f: $0e $28
    ld [de], a                                    ; $7911: $12
    db $10                                        ; $7912: $10
    ld c, $18                                     ; $7913: $0e $18
    dec bc                                        ; $7915: $0b

jr_0ca_7916:
    jr @+$1d                                      ; $7916: $18 $1b

    db $10                                        ; $7918: $10
    ld b, $00                                     ; $7919: $06 $00
    ld [$1220], sp                                ; $791b: $08 $20 $12
    jr c, @+$01                                   ; $791e: $38 $ff

    dec d                                         ; $7920: $15
    jr jr_0ca_795d                                ; $7921: $18 $3a

    ld [$203d], sp                                ; $7923: $08 $3d $20
    dec h                                         ; $7926: $25
    ld [$2822], sp                                ; $7927: $08 $22 $28
    ld e, b                                       ; $792a: $58
    jr z, jr_0ca_7942                             ; $792b: $28 $15

    jr c, jr_0ca_799f                             ; $792d: $38 $70

    jr z, @+$01                                   ; $792f: $28 $ff

    ld c, [hl]                                    ; $7931: $4e
    jr nz, jr_0ca_798b                            ; $7932: $20 $57

    jr jr_0ca_7992                                ; $7934: $18 $5c

    jr z, jr_0ca_78c5                             ; $7936: $28 $8d

    ld d, b                                       ; $7938: $50
    ld d, d                                       ; $7939: $52
    jr jr_0ca_795b                                ; $793a: $18 $1f

    jr nz, jr_0ca_7995                            ; $793c: $20 $57

    jr nz, jr_0ca_78ef                            ; $793e: $20 $af

    db $10                                        ; $7940: $10
    inc d                                         ; $7941: $14

jr_0ca_7942:
    nop                                           ; $7942: $00
    dec c                                         ; $7943: $0d
    nop                                           ; $7944: $00
    ld [hl-], a                                   ; $7945: $32
    ld bc, $6801                                  ; $7946: $01 $01 $68
    ld l, c                                       ; $7949: $69
    ld l, d                                       ; $794a: $6a
    ld l, e                                       ; $794b: $6b
    ld l, h                                       ; $794c: $6c
    ld l, l                                       ; $794d: $6d
    ld l, [hl]                                    ; $794e: $6e
    ld b, $08                                     ; $794f: $06 $08
    ld b, b                                       ; $7951: $40
    ld l, a                                       ; $7952: $6f
    ld [$7028], sp                                ; $7953: $08 $28 $70
    ld [hl], c                                    ; $7956: $71
    ld [hl], d                                    ; $7957: $72
    ld [hl], e                                    ; $7958: $73
    ld [hl], h                                    ; $7959: $74
    ld [hl], l                                    ; $795a: $75

jr_0ca_795b:
    ld d, b                                       ; $795b: $50
    halt                                          ; $795c: $76

jr_0ca_795d:
    ld b, $08                                     ; $795d: $06 $08
    ld [hl], a                                    ; $795f: $77
    ld [$7828], sp                                ; $7960: $08 $28 $78
    ld a, c                                       ; $7963: $79
    ld a, d                                       ; $7964: $7a
    ld a, e                                       ; $7965: $7b
    inc d                                         ; $7966: $14
    ld a, h                                       ; $7967: $7c
    ld a, l                                       ; $7968: $7d
    ld a, [hl]                                    ; $7969: $7e
    ld b, $08                                     ; $796a: $06 $08
    ld a, a                                       ; $796c: $7f
    ld [$8028], sp                                ; $796d: $08 $28 $80
    add c                                         ; $7970: $81
    nop                                           ; $7971: $00
    add d                                         ; $7972: $82
    add e                                         ; $7973: $83
    add h                                         ; $7974: $84
    add l                                         ; $7975: $85
    add [hl]                                      ; $7976: $86
    add a                                         ; $7977: $87
    adc b                                         ; $7978: $88
    adc c                                         ; $7979: $89
    nop                                           ; $797a: $00
    adc c                                         ; $797b: $89
    adc b                                         ; $797c: $88
    add a                                         ; $797d: $87
    add [hl]                                      ; $797e: $86
    add l                                         ; $797f: $85
    add h                                         ; $7980: $84
    add e                                         ; $7981: $83
    add d                                         ; $7982: $82
    nop                                           ; $7983: $00
    add c                                         ; $7984: $81
    add b                                         ; $7985: $80
    adc d                                         ; $7986: $8a
    adc e                                         ; $7987: $8b
    adc h                                         ; $7988: $8c
    adc l                                         ; $7989: $8d
    adc [hl]                                      ; $798a: $8e

jr_0ca_798b:
    adc a                                         ; $798b: $8f
    nop                                           ; $798c: $00
    sub b                                         ; $798d: $90
    sub c                                         ; $798e: $91
    sub d                                         ; $798f: $92
    sub e                                         ; $7990: $93
    sub e                                         ; $7991: $93

jr_0ca_7992:
    sub d                                         ; $7992: $92
    sub c                                         ; $7993: $91
    sub b                                         ; $7994: $90

jr_0ca_7995:
    nop                                           ; $7995: $00
    adc a                                         ; $7996: $8f
    adc [hl]                                      ; $7997: $8e
    adc l                                         ; $7998: $8d
    adc h                                         ; $7999: $8c
    adc e                                         ; $799a: $8b
    adc d                                         ; $799b: $8a
    sub h                                         ; $799c: $94
    sub l                                         ; $799d: $95
    nop                                           ; $799e: $00

jr_0ca_799f:
    sub [hl]                                      ; $799f: $96
    sub a                                         ; $79a0: $97
    sbc b                                         ; $79a1: $98
    sbc c                                         ; $79a2: $99
    sbc d                                         ; $79a3: $9a
    sbc e                                         ; $79a4: $9b
    sbc h                                         ; $79a5: $9c
    sbc l                                         ; $79a6: $9d
    nop                                           ; $79a7: $00
    sbc l                                         ; $79a8: $9d
    sbc h                                         ; $79a9: $9c
    sbc e                                         ; $79aa: $9b
    sbc d                                         ; $79ab: $9a
    sbc c                                         ; $79ac: $99
    sbc b                                         ; $79ad: $98
    sub a                                         ; $79ae: $97
    sub [hl]                                      ; $79af: $96
    nop                                           ; $79b0: $00
    sub l                                         ; $79b1: $95
    sub h                                         ; $79b2: $94
    sbc [hl]                                      ; $79b3: $9e
    sbc a                                         ; $79b4: $9f
    and b                                         ; $79b5: $a0
    and c                                         ; $79b6: $a1
    and d                                         ; $79b7: $a2
    and e                                         ; $79b8: $a3
    nop                                           ; $79b9: $00
    and h                                         ; $79ba: $a4
    and l                                         ; $79bb: $a5
    and [hl]                                      ; $79bc: $a6
    and a                                         ; $79bd: $a7
    and a                                         ; $79be: $a7
    and [hl]                                      ; $79bf: $a6
    and l                                         ; $79c0: $a5
    and h                                         ; $79c1: $a4
    nop                                           ; $79c2: $00
    and e                                         ; $79c3: $a3
    and d                                         ; $79c4: $a2
    and c                                         ; $79c5: $a1
    and b                                         ; $79c6: $a0
    sbc a                                         ; $79c7: $9f
    sbc [hl]                                      ; $79c8: $9e
    xor b                                         ; $79c9: $a8
    xor c                                         ; $79ca: $a9
    nop                                           ; $79cb: $00
    xor d                                         ; $79cc: $aa
    xor e                                         ; $79cd: $ab
    xor h                                         ; $79ce: $ac
    xor l                                         ; $79cf: $ad
    xor [hl]                                      ; $79d0: $ae
    xor a                                         ; $79d1: $af
    or b                                          ; $79d2: $b0
    or c                                          ; $79d3: $b1
    nop                                           ; $79d4: $00
    or c                                          ; $79d5: $b1
    or b                                          ; $79d6: $b0
    xor a                                         ; $79d7: $af
    xor [hl]                                      ; $79d8: $ae
    xor l                                         ; $79d9: $ad
    xor h                                         ; $79da: $ac
    xor e                                         ; $79db: $ab
    xor d                                         ; $79dc: $aa
    nop                                           ; $79dd: $00
    xor c                                         ; $79de: $a9
    xor b                                         ; $79df: $a8
    or d                                          ; $79e0: $b2
    or e                                          ; $79e1: $b3
    or h                                          ; $79e2: $b4
    or l                                          ; $79e3: $b5
    or [hl]                                       ; $79e4: $b6
    or a                                          ; $79e5: $b7
    nop                                           ; $79e6: $00
    cp b                                          ; $79e7: $b8
    cp c                                          ; $79e8: $b9
    cp d                                          ; $79e9: $ba
    cp e                                          ; $79ea: $bb
    cp e                                          ; $79eb: $bb
    cp d                                          ; $79ec: $ba
    cp c                                          ; $79ed: $b9
    cp b                                          ; $79ee: $b8
    nop                                           ; $79ef: $00
    or a                                          ; $79f0: $b7
    or [hl]                                       ; $79f1: $b6
    or l                                          ; $79f2: $b5
    or h                                          ; $79f3: $b4
    or e                                          ; $79f4: $b3
    or d                                          ; $79f5: $b2
    cp h                                          ; $79f6: $bc
    cp l                                          ; $79f7: $bd
    nop                                           ; $79f8: $00
    cp [hl]                                       ; $79f9: $be
    cp a                                          ; $79fa: $bf
    ret nz                                        ; $79fb: $c0

    pop bc                                        ; $79fc: $c1
    jp nz, $c4c3                                  ; $79fd: $c2 $c3 $c4

    push bc                                       ; $7a00: $c5
    nop                                           ; $7a01: $00
    push bc                                       ; $7a02: $c5
    call nz, $c2c3                                ; $7a03: $c4 $c3 $c2
    pop bc                                        ; $7a06: $c1
    ret nz                                        ; $7a07: $c0

    cp a                                          ; $7a08: $bf
    cp [hl]                                       ; $7a09: $be
    nop                                           ; $7a0a: $00
    cp l                                          ; $7a0b: $bd
    cp h                                          ; $7a0c: $bc
    add $c7                                       ; $7a0d: $c6 $c7
    ret z                                         ; $7a0f: $c8

    ret                                           ; $7a10: $c9


    jp z, Jump_000_00cb                           ; $7a11: $ca $cb $00

    call z, $cecd                                 ; $7a14: $cc $cd $ce
    rst $08                                       ; $7a17: $cf
    rst $08                                       ; $7a18: $cf
    adc $cd                                       ; $7a19: $ce $cd
    call z, $cb00                                 ; $7a1b: $cc $00 $cb
    jp z, $c8c9                                   ; $7a1e: $ca $c9 $c8

    rst $00                                       ; $7a21: $c7
    add $d0                                       ; $7a22: $c6 $d0
    pop de                                        ; $7a24: $d1
    nop                                           ; $7a25: $00
    jp nc, $d4d3                                  ; $7a26: $d2 $d3 $d4

    push de                                       ; $7a29: $d5
    sub $d7                                       ; $7a2a: $d6 $d7
    ret c                                         ; $7a2c: $d8

    reti                                          ; $7a2d: $d9


    nop                                           ; $7a2e: $00
    reti                                          ; $7a2f: $d9


    ret c                                         ; $7a30: $d8

    rst $10                                       ; $7a31: $d7
    sub $d5                                       ; $7a32: $d6 $d5
    call nc, $d2d3                                ; $7a34: $d4 $d3 $d2
    nop                                           ; $7a37: $00
    pop de                                        ; $7a38: $d1
    ret nc                                        ; $7a39: $d0

    jp c, $dcdb                                   ; $7a3a: $da $db $dc

    db $dd                                        ; $7a3d: $dd
    sbc $df                                       ; $7a3e: $de $df
    nop                                           ; $7a40: $00
    ldh [$e1], a                                  ; $7a41: $e0 $e1
    ld [c], a                                     ; $7a43: $e2
    db $e3                                        ; $7a44: $e3
    db $e3                                        ; $7a45: $e3
    ld [c], a                                     ; $7a46: $e2
    pop hl                                        ; $7a47: $e1
    ldh [rP1], a                                  ; $7a48: $e0 $00
    rst $18                                       ; $7a4a: $df
    sbc $dd                                       ; $7a4b: $de $dd
    call c, $dadb                                 ; $7a4d: $dc $db $da
    inc b                                         ; $7a50: $04
    inc b                                         ; $7a51: $04
    jr nz, @+$05                                  ; $7a52: $20 $03

    inc b                                         ; $7a54: $04
    inc b                                         ; $7a55: $04
    ld [$0402], sp                                ; $7a56: $08 $02 $04
    inc bc                                        ; $7a59: $03
    inc bc                                        ; $7a5a: $03
    inc bc                                        ; $7a5b: $03
    dec de                                        ; $7a5c: $1b
    ld [bc], a                                    ; $7a5d: $02
    ld [bc], a                                    ; $7a5e: $02
    inc bc                                        ; $7a5f: $03
    ld c, $00                                     ; $7a60: $0e $00
    inc bc                                        ; $7a62: $03
    jr @+$06                                      ; $7a63: $18 $04

    ld c, $00                                     ; $7a65: $0e $00
    inc d                                         ; $7a67: $14
    jr z, jr_0ca_7ad4                             ; $7a68: $28 $6a

    inc bc                                        ; $7a6a: $03
    inc d                                         ; $7a6b: $14
    add b                                         ; $7a6c: $80
    add hl, sp                                    ; $7a6d: $39
    nop                                           ; $7a6e: $00
    rrca                                          ; $7a6f: $0f
    ld bc, $2f30                                  ; $7a70: $01 $30 $2f
    ld bc, $0e30                                  ; $7a73: $01 $30 $0e
    jr jr_0ca_7a85                                ; $7a76: $18 $0d

    ld c, $0e                                     ; $7a78: $0e $0e
    inc b                                         ; $7a7a: $04
    nop                                           ; $7a7b: $00
    ld [bc], a                                    ; $7a7c: $02
    nop                                           ; $7a7d: $00
    ld l, $2d                                     ; $7a7e: $2e $2d
    ld l, $f2                                     ; $7a80: $2e $f2
    ld bc, $0608                                  ; $7a82: $01 $08 $06

jr_0ca_7a85:
    nop                                           ; $7a85: $00
    ld [de], a                                    ; $7a86: $12
    nop                                           ; $7a87: $00
    inc de                                        ; $7a88: $13
    db $10                                        ; $7a89: $10
    ld c, $0e                                     ; $7a8a: $0e $0e
    inc de                                        ; $7a8c: $13
    nop                                           ; $7a8d: $00
    dec l                                         ; $7a8e: $2d
    cp d                                          ; $7a8f: $ba
    jr jr_0ca_7aa2                                ; $7a90: $18 $10

    dec l                                         ; $7a92: $2d
    daa                                           ; $7a93: $27
    nop                                           ; $7a94: $00
    ld a, [hl+]                                   ; $7a95: $2a
    ld [$002f], sp                                ; $7a96: $08 $2f $00
    dec l                                         ; $7a99: $2d
    jr z, jr_0ca_7acc                             ; $7a9a: $28 $30

    dec c                                         ; $7a9c: $0d
    rst $30                                       ; $7a9d: $f7
    inc a                                         ; $7a9e: $3c
    jr z, jr_0ca_7ab5                             ; $7a9f: $28 $14

    db $10                                        ; $7aa1: $10

jr_0ca_7aa2:
    add hl, hl                                    ; $7aa2: $29
    nop                                           ; $7aa3: $00
    dec de                                        ; $7aa4: $1b
    nop                                           ; $7aa5: $00
    ld c, $15                                     ; $7aa6: $0e $15
    nop                                           ; $7aa8: $00
    add hl, hl                                    ; $7aa9: $29
    jr jr_0ca_7af7                                ; $7aaa: $18 $4b

    db $10                                        ; $7aac: $10
    rst $38                                       ; $7aad: $ff
    ld d, l                                       ; $7aae: $55
    db $10                                        ; $7aaf: $10
    inc a                                         ; $7ab0: $3c
    db $10                                        ; $7ab1: $10
    jr jr_0ca_7ac4                                ; $7ab2: $18 $10

    ld [de], a                                    ; $7ab4: $12

jr_0ca_7ab5:
    jr z, jr_0ca_7adf                             ; $7ab5: $28 $28

    nop                                           ; $7ab7: $00
    ld [hl], l                                    ; $7ab8: $75
    jr jr_0ca_7b35                                ; $7ab9: $18 $7a

    nop                                           ; $7abb: $00
    ld h, c                                       ; $7abc: $61
    jr @+$01                                      ; $7abd: $18 $ff

    ld l, b                                       ; $7abf: $68
    ld [$3064], sp                                ; $7ac0: $08 $64 $30
    inc a                                         ; $7ac3: $3c

jr_0ca_7ac4:
    ld [$207b], sp                                ; $7ac4: $08 $7b $20
    ld [hl], a                                    ; $7ac7: $77
    db $10                                        ; $7ac8: $10
    adc l                                         ; $7ac9: $8d
    db $10                                        ; $7aca: $10
    and b                                         ; $7acb: $a0

jr_0ca_7acc:
    ld [$0862], sp                                ; $7acc: $08 $62 $08
    nop                                           ; $7acf: $00
    ld l, $2e                                     ; $7ad0: $2e $2e
    inc d                                         ; $7ad2: $14
    nop                                           ; $7ad3: $00

jr_0ca_7ad4:
    dec c                                         ; $7ad4: $0d
    nop                                           ; $7ad5: $00
    ldh a, [rP1]                                  ; $7ad6: $f0 $00
    inc b                                         ; $7ad8: $04
    ld l, b                                       ; $7ad9: $68
    ld l, c                                       ; $7ada: $69
    ld l, d                                       ; $7adb: $6a
    ld l, e                                       ; $7adc: $6b
    ld l, h                                       ; $7add: $6c
    dec b                                         ; $7ade: $05

jr_0ca_7adf:
    ld h, b                                       ; $7adf: $60
    ld l, l                                       ; $7ae0: $6d
    ld l, [hl]                                    ; $7ae1: $6e
    inc d                                         ; $7ae2: $14
    ld l, a                                       ; $7ae3: $6f
    ld [hl], b                                    ; $7ae4: $70
    ld [hl], c                                    ; $7ae5: $71
    dec b                                         ; $7ae6: $05
    ld h, b                                       ; $7ae7: $60
    ld [hl], d                                    ; $7ae8: $72
    ld bc, $7380                                  ; $7ae9: $01 $80 $73
    ld [hl], h                                    ; $7aec: $74
    nop                                           ; $7aed: $00
    ld [hl], l                                    ; $7aee: $75
    halt                                          ; $7aef: $76
    ld [hl], a                                    ; $7af0: $77
    ld a, b                                       ; $7af1: $78
    ld a, c                                       ; $7af2: $79
    ld a, d                                       ; $7af3: $7a
    ld a, e                                       ; $7af4: $7b
    ld a, h                                       ; $7af5: $7c
    nop                                           ; $7af6: $00

jr_0ca_7af7:
    ld a, l                                       ; $7af7: $7d
    ld a, e                                       ; $7af8: $7b
    ld a, d                                       ; $7af9: $7a
    ld a, c                                       ; $7afa: $79
    ld a, b                                       ; $7afb: $78
    ld [hl], a                                    ; $7afc: $77
    halt                                          ; $7afd: $76
    ld [hl], l                                    ; $7afe: $75
    nop                                           ; $7aff: $00
    ld [hl], h                                    ; $7b00: $74
    ld [hl], e                                    ; $7b01: $73
    ld a, [hl]                                    ; $7b02: $7e
    ld a, a                                       ; $7b03: $7f
    add b                                         ; $7b04: $80
    add c                                         ; $7b05: $81
    add d                                         ; $7b06: $82
    add e                                         ; $7b07: $83
    nop                                           ; $7b08: $00
    add h                                         ; $7b09: $84
    add l                                         ; $7b0a: $85
    add [hl]                                      ; $7b0b: $86
    add a                                         ; $7b0c: $87
    adc b                                         ; $7b0d: $88
    add [hl]                                      ; $7b0e: $86
    add l                                         ; $7b0f: $85
    add h                                         ; $7b10: $84
    nop                                           ; $7b11: $00
    add e                                         ; $7b12: $83
    add d                                         ; $7b13: $82
    add c                                         ; $7b14: $81
    add b                                         ; $7b15: $80
    ld a, a                                       ; $7b16: $7f
    ld a, [hl]                                    ; $7b17: $7e
    adc c                                         ; $7b18: $89
    adc d                                         ; $7b19: $8a
    nop                                           ; $7b1a: $00
    adc e                                         ; $7b1b: $8b
    adc h                                         ; $7b1c: $8c
    adc l                                         ; $7b1d: $8d
    adc [hl]                                      ; $7b1e: $8e
    adc a                                         ; $7b1f: $8f
    sub b                                         ; $7b20: $90
    sub c                                         ; $7b21: $91
    sub d                                         ; $7b22: $92
    nop                                           ; $7b23: $00
    sub e                                         ; $7b24: $93
    sub c                                         ; $7b25: $91
    sub b                                         ; $7b26: $90
    adc a                                         ; $7b27: $8f
    adc [hl]                                      ; $7b28: $8e
    adc l                                         ; $7b29: $8d
    adc h                                         ; $7b2a: $8c
    adc e                                         ; $7b2b: $8b
    nop                                           ; $7b2c: $00
    adc d                                         ; $7b2d: $8a
    adc c                                         ; $7b2e: $89
    sub h                                         ; $7b2f: $94
    sub l                                         ; $7b30: $95
    sub [hl]                                      ; $7b31: $96
    sub a                                         ; $7b32: $97
    sbc b                                         ; $7b33: $98
    sbc c                                         ; $7b34: $99

jr_0ca_7b35:
    nop                                           ; $7b35: $00
    sbc d                                         ; $7b36: $9a
    sbc e                                         ; $7b37: $9b
    sbc h                                         ; $7b38: $9c
    sbc l                                         ; $7b39: $9d
    sbc [hl]                                      ; $7b3a: $9e
    sbc h                                         ; $7b3b: $9c
    sbc e                                         ; $7b3c: $9b
    sbc d                                         ; $7b3d: $9a
    nop                                           ; $7b3e: $00
    sbc c                                         ; $7b3f: $99
    sbc b                                         ; $7b40: $98
    sub a                                         ; $7b41: $97
    sub [hl]                                      ; $7b42: $96
    sub l                                         ; $7b43: $95
    sub h                                         ; $7b44: $94
    sbc a                                         ; $7b45: $9f
    and b                                         ; $7b46: $a0
    nop                                           ; $7b47: $00
    and c                                         ; $7b48: $a1
    and d                                         ; $7b49: $a2
    and e                                         ; $7b4a: $a3
    and h                                         ; $7b4b: $a4
    and l                                         ; $7b4c: $a5
    and [hl]                                      ; $7b4d: $a6
    and a                                         ; $7b4e: $a7
    xor b                                         ; $7b4f: $a8
    nop                                           ; $7b50: $00
    xor c                                         ; $7b51: $a9
    and a                                         ; $7b52: $a7
    and [hl]                                      ; $7b53: $a6
    and l                                         ; $7b54: $a5
    and h                                         ; $7b55: $a4
    and e                                         ; $7b56: $a3
    and d                                         ; $7b57: $a2
    and c                                         ; $7b58: $a1
    nop                                           ; $7b59: $00
    and b                                         ; $7b5a: $a0
    sbc a                                         ; $7b5b: $9f
    xor d                                         ; $7b5c: $aa
    xor e                                         ; $7b5d: $ab
    xor h                                         ; $7b5e: $ac
    xor l                                         ; $7b5f: $ad
    xor [hl]                                      ; $7b60: $ae
    xor a                                         ; $7b61: $af
    nop                                           ; $7b62: $00
    or b                                          ; $7b63: $b0
    or c                                          ; $7b64: $b1
    or d                                          ; $7b65: $b2
    or e                                          ; $7b66: $b3
    or h                                          ; $7b67: $b4
    or d                                          ; $7b68: $b2
    or c                                          ; $7b69: $b1
    or b                                          ; $7b6a: $b0
    nop                                           ; $7b6b: $00
    xor a                                         ; $7b6c: $af
    xor [hl]                                      ; $7b6d: $ae
    xor l                                         ; $7b6e: $ad
    xor h                                         ; $7b6f: $ac
    xor e                                         ; $7b70: $ab
    xor d                                         ; $7b71: $aa
    or l                                          ; $7b72: $b5
    or [hl]                                       ; $7b73: $b6
    nop                                           ; $7b74: $00
    or a                                          ; $7b75: $b7
    cp b                                          ; $7b76: $b8
    cp c                                          ; $7b77: $b9
    cp d                                          ; $7b78: $ba
    cp e                                          ; $7b79: $bb
    cp h                                          ; $7b7a: $bc
    cp l                                          ; $7b7b: $bd
    cp [hl]                                       ; $7b7c: $be
    nop                                           ; $7b7d: $00
    cp a                                          ; $7b7e: $bf
    cp l                                          ; $7b7f: $bd
    cp h                                          ; $7b80: $bc
    cp e                                          ; $7b81: $bb
    cp d                                          ; $7b82: $ba
    cp c                                          ; $7b83: $b9
    cp b                                          ; $7b84: $b8
    or a                                          ; $7b85: $b7
    nop                                           ; $7b86: $00
    or [hl]                                       ; $7b87: $b6
    or l                                          ; $7b88: $b5
    ret nz                                        ; $7b89: $c0

    pop bc                                        ; $7b8a: $c1
    jp nz, $c4c3                                  ; $7b8b: $c2 $c3 $c4

    push bc                                       ; $7b8e: $c5
    nop                                           ; $7b8f: $00
    add $c7                                       ; $7b90: $c6 $c7
    ret z                                         ; $7b92: $c8

    ret                                           ; $7b93: $c9


    jp z, $c7c8                                   ; $7b94: $ca $c8 $c7

    add $00                                       ; $7b97: $c6 $00
    push bc                                       ; $7b99: $c5
    call nz, $c2c3                                ; $7b9a: $c4 $c3 $c2
    pop bc                                        ; $7b9d: $c1
    ret nz                                        ; $7b9e: $c0

    set 1, h                                      ; $7b9f: $cb $cc
    nop                                           ; $7ba1: $00
    call $cfce                                    ; $7ba2: $cd $ce $cf
    ret nc                                        ; $7ba5: $d0

    pop de                                        ; $7ba6: $d1
    jp nc, $d4d3                                  ; $7ba7: $d2 $d3 $d4

    nop                                           ; $7baa: $00
    push de                                       ; $7bab: $d5
    db $d3                                        ; $7bac: $d3
    jp nc, $d0d1                                  ; $7bad: $d2 $d1 $d0

    rst $08                                       ; $7bb0: $cf
    adc $cd                                       ; $7bb1: $ce $cd
    nop                                           ; $7bb3: $00
    call z, $d6cb                                 ; $7bb4: $cc $cb $d6
    rst $10                                       ; $7bb7: $d7
    ret c                                         ; $7bb8: $d8

    reti                                          ; $7bb9: $d9


    jp c, Jump_000_00db                           ; $7bba: $da $db $00

    call c, $dedd                                 ; $7bbd: $dc $dd $de
    rst $18                                       ; $7bc0: $df
    ldh [$de], a                                  ; $7bc1: $e0 $de
    db $dd                                        ; $7bc3: $dd
    call c, $db01                                 ; $7bc4: $dc $01 $db
    jp c, $d8d9                                   ; $7bc7: $da $d9 $d8

    rst $10                                       ; $7bca: $d7
    sub $04                                       ; $7bcb: $d6 $04
    ld bc, $aaf8                                  ; $7bcd: $01 $f8 $aa
    inc hl                                        ; $7bd0: $23
    db $10                                        ; $7bd1: $10
    ld bc, $8001                                  ; $7bd2: $01 $01 $80
    rlca                                          ; $7bd5: $07
    ld bc, $2738                                  ; $7bd6: $01 $38 $27
    ld bc, $0128                                  ; $7bd9: $01 $28 $01
    add hl, hl                                    ; $7bdc: $29
    ld bc, $0109                                  ; $7bdd: $01 $09 $01
    jr z, @+$2b                                   ; $7be0: $28 $29

    ld bc, $2118                                  ; $7be2: $01 $18 $21
    ld hl, $3012                                  ; $7be5: $21 $12 $30
    sbc a                                         ; $7be8: $9f
    inc d                                         ; $7be9: $14
    jr nc, jr_0ca_7c15                            ; $7bea: $30 $29

    add hl, hl                                    ; $7bec: $29
    inc d                                         ; $7bed: $14
    ld hl, sp+$28                                 ; $7bee: $f8 $28
    ld hl, sp+$50                                 ; $7bf0: $f8 $50
    ld hl, sp+$78                                 ; $7bf2: $f8 $78
    ld hl, sp-$5b                                 ; $7bf4: $f8 $a5
    ld [$0014], sp                                ; $7bf6: $08 $14 $00
    dec c                                         ; $7bf9: $0d
    nop                                           ; $7bfa: $00
    ld d, $01                                     ; $7bfb: $16 $01
    ld b, b                                       ; $7bfd: $40
    ld l, b                                       ; $7bfe: $68
    ld bc, $6928                                  ; $7bff: $01 $28 $69
    ld l, d                                       ; $7c02: $6a
    ld l, e                                       ; $7c03: $6b
    ld l, h                                       ; $7c04: $6c
    ld l, l                                       ; $7c05: $6d
    ld l, [hl]                                    ; $7c06: $6e
    jr z, jr_0ca_7c78                             ; $7c07: $28 $6f

    ld [hl], b                                    ; $7c09: $70
    ld de, $7100                                  ; $7c0a: $11 $00 $71
    ld bc, $7228                                  ; $7c0d: $01 $28 $72
    ld [hl], e                                    ; $7c10: $73
    ld [hl], h                                    ; $7c11: $74
    dec b                                         ; $7c12: $05
    ld [hl], l                                    ; $7c13: $75
    halt                                          ; $7c14: $76

jr_0ca_7c15:
    ld [hl], a                                    ; $7c15: $77
    ld a, b                                       ; $7c16: $78
    ld a, c                                       ; $7c17: $79
    ld de, $7a00                                  ; $7c18: $11 $00 $7a
    ld bc, $5028                                  ; $7c1b: $01 $28 $50
    ld a, e                                       ; $7c1e: $7b
    ld bc, $7c18                                  ; $7c1f: $01 $18 $7c
    ld de, $7d00                                  ; $7c22: $11 $00 $7d
    ld a, [hl]                                    ; $7c25: $7e
    ld a, a                                       ; $7c26: $7f
    add b                                         ; $7c27: $80
    nop                                           ; $7c28: $00
    add c                                         ; $7c29: $81
    add d                                         ; $7c2a: $82
    add e                                         ; $7c2b: $83
    add h                                         ; $7c2c: $84
    add l                                         ; $7c2d: $85
    add [hl]                                      ; $7c2e: $86
    add [hl]                                      ; $7c2f: $86
    add l                                         ; $7c30: $85
    nop                                           ; $7c31: $00
    add h                                         ; $7c32: $84
    add e                                         ; $7c33: $83
    add d                                         ; $7c34: $82
    add c                                         ; $7c35: $81
    add b                                         ; $7c36: $80
    ld a, a                                       ; $7c37: $7f
    ld a, [hl]                                    ; $7c38: $7e
    ld a, l                                       ; $7c39: $7d
    nop                                           ; $7c3a: $00
    add a                                         ; $7c3b: $87
    adc b                                         ; $7c3c: $88
    adc c                                         ; $7c3d: $89
    adc d                                         ; $7c3e: $8a
    adc e                                         ; $7c3f: $8b
    adc h                                         ; $7c40: $8c
    adc l                                         ; $7c41: $8d
    adc [hl]                                      ; $7c42: $8e
    nop                                           ; $7c43: $00
    adc a                                         ; $7c44: $8f
    sub b                                         ; $7c45: $90
    sub c                                         ; $7c46: $91
    adc a                                         ; $7c47: $8f
    adc [hl]                                      ; $7c48: $8e
    adc l                                         ; $7c49: $8d
    adc h                                         ; $7c4a: $8c
    adc e                                         ; $7c4b: $8b
    nop                                           ; $7c4c: $00
    adc d                                         ; $7c4d: $8a
    adc c                                         ; $7c4e: $89
    adc b                                         ; $7c4f: $88
    add a                                         ; $7c50: $87
    sub d                                         ; $7c51: $92
    sub e                                         ; $7c52: $93
    sub h                                         ; $7c53: $94
    sub l                                         ; $7c54: $95
    nop                                           ; $7c55: $00
    sub [hl]                                      ; $7c56: $96
    sub a                                         ; $7c57: $97
    sbc b                                         ; $7c58: $98
    sbc c                                         ; $7c59: $99
    sub e                                         ; $7c5a: $93
    sbc d                                         ; $7c5b: $9a
    sbc e                                         ; $7c5c: $9b
    sub e                                         ; $7c5d: $93
    nop                                           ; $7c5e: $00
    sbc c                                         ; $7c5f: $99
    sbc b                                         ; $7c60: $98
    sub a                                         ; $7c61: $97
    sub [hl]                                      ; $7c62: $96
    sub l                                         ; $7c63: $95
    sub h                                         ; $7c64: $94
    sub e                                         ; $7c65: $93
    sub d                                         ; $7c66: $92
    nop                                           ; $7c67: $00
    sbc h                                         ; $7c68: $9c
    sbc l                                         ; $7c69: $9d
    sbc [hl]                                      ; $7c6a: $9e
    sbc a                                         ; $7c6b: $9f
    ld a, [hl]                                    ; $7c6c: $7e
    and b                                         ; $7c6d: $a0
    add e                                         ; $7c6e: $83
    and c                                         ; $7c6f: $a1
    nop                                           ; $7c70: $00
    add l                                         ; $7c71: $85
    and d                                         ; $7c72: $a2
    and d                                         ; $7c73: $a2
    add l                                         ; $7c74: $85
    and c                                         ; $7c75: $a1
    add e                                         ; $7c76: $83
    and b                                         ; $7c77: $a0

jr_0ca_7c78:
    ld a, [hl]                                    ; $7c78: $7e
    nop                                           ; $7c79: $00
    sbc a                                         ; $7c7a: $9f
    sbc [hl]                                      ; $7c7b: $9e
    sbc l                                         ; $7c7c: $9d
    sbc h                                         ; $7c7d: $9c
    and e                                         ; $7c7e: $a3
    and h                                         ; $7c7f: $a4
    and l                                         ; $7c80: $a5
    and [hl]                                      ; $7c81: $a6
    nop                                           ; $7c82: $00
    and a                                         ; $7c83: $a7
    xor b                                         ; $7c84: $a8
    xor c                                         ; $7c85: $a9
    xor d                                         ; $7c86: $aa
    xor e                                         ; $7c87: $ab
    xor h                                         ; $7c88: $ac
    xor l                                         ; $7c89: $ad
    xor e                                         ; $7c8a: $ab
    nop                                           ; $7c8b: $00
    xor d                                         ; $7c8c: $aa
    xor c                                         ; $7c8d: $a9
    xor b                                         ; $7c8e: $a8
    and a                                         ; $7c8f: $a7
    and [hl]                                      ; $7c90: $a6
    and l                                         ; $7c91: $a5
    and h                                         ; $7c92: $a4
    and e                                         ; $7c93: $a3
    nop                                           ; $7c94: $00
    add e                                         ; $7c95: $83
    ld a, l                                       ; $7c96: $7d
    ld a, [hl]                                    ; $7c97: $7e
    xor [hl]                                      ; $7c98: $ae
    add e                                         ; $7c99: $83
    xor a                                         ; $7c9a: $af
    ld a, [hl]                                    ; $7c9b: $7e
    or b                                          ; $7c9c: $b0
    nop                                           ; $7c9d: $00
    or c                                          ; $7c9e: $b1
    add l                                         ; $7c9f: $85
    add l                                         ; $7ca0: $85
    or c                                          ; $7ca1: $b1
    or b                                          ; $7ca2: $b0
    ld a, [hl]                                    ; $7ca3: $7e
    xor a                                         ; $7ca4: $af
    add e                                         ; $7ca5: $83
    nop                                           ; $7ca6: $00
    xor [hl]                                      ; $7ca7: $ae
    ld a, [hl]                                    ; $7ca8: $7e
    ld a, l                                       ; $7ca9: $7d
    add e                                         ; $7caa: $83
    adc l                                         ; $7cab: $8d
    or d                                          ; $7cac: $b2
    or e                                          ; $7cad: $b3
    or h                                          ; $7cae: $b4
    nop                                           ; $7caf: $00
    adc l                                         ; $7cb0: $8d
    or l                                          ; $7cb1: $b5
    or [hl]                                       ; $7cb2: $b6
    or a                                          ; $7cb3: $b7
    cp b                                          ; $7cb4: $b8
    cp c                                          ; $7cb5: $b9
    cp d                                          ; $7cb6: $ba
    cp b                                          ; $7cb7: $b8
    nop                                           ; $7cb8: $00
    or a                                          ; $7cb9: $b7
    or [hl]                                       ; $7cba: $b6
    or l                                          ; $7cbb: $b5
    adc l                                         ; $7cbc: $8d
    or h                                          ; $7cbd: $b4
    or e                                          ; $7cbe: $b3
    or d                                          ; $7cbf: $b2
    adc l                                         ; $7cc0: $8d
    nop                                           ; $7cc1: $00
    cp e                                          ; $7cc2: $bb
    cp h                                          ; $7cc3: $bc
    cp l                                          ; $7cc4: $bd
    cp [hl]                                       ; $7cc5: $be
    cp a                                          ; $7cc6: $bf
    ret nz                                        ; $7cc7: $c0

    pop bc                                        ; $7cc8: $c1
    jp nz, $c300                                  ; $7cc9: $c2 $00 $c3

    call nz, $c3c4                                ; $7ccc: $c4 $c4 $c3
    jp nz, $c0c1                                  ; $7ccf: $c2 $c1 $c0

    cp a                                          ; $7cd2: $bf
    nop                                           ; $7cd3: $00
    cp [hl]                                       ; $7cd4: $be
    cp l                                          ; $7cd5: $bd
    cp h                                          ; $7cd6: $bc
    cp e                                          ; $7cd7: $bb
    add e                                         ; $7cd8: $83
    sbc h                                         ; $7cd9: $9c
    ld a, [hl]                                    ; $7cda: $7e
    push bc                                       ; $7cdb: $c5
    nop                                           ; $7cdc: $00
    add $c7                                       ; $7cdd: $c6 $c7
    add l                                         ; $7cdf: $85
    and d                                         ; $7ce0: $a2
    ret z                                         ; $7ce1: $c8

    add l                                         ; $7ce2: $85
    add l                                         ; $7ce3: $85
    ret z                                         ; $7ce4: $c8

    nop                                           ; $7ce5: $00
    and d                                         ; $7ce6: $a2
    add l                                         ; $7ce7: $85
    rst $00                                       ; $7ce8: $c7
    add $c5                                       ; $7ce9: $c6 $c5
    ld a, [hl]                                    ; $7ceb: $7e
    sbc h                                         ; $7cec: $9c
    add e                                         ; $7ced: $83
    nop                                           ; $7cee: $00
    ret                                           ; $7cef: $c9


    jp z, $accb                                   ; $7cf0: $ca $cb $ac

    call z, $cecd                                 ; $7cf3: $cc $cd $ce
    xor h                                         ; $7cf6: $ac
    nop                                           ; $7cf7: $00
    call z, $d0cf                                 ; $7cf8: $cc $cf $d0
    call z, $ceac                                 ; $7cfb: $cc $ac $ce
    call Call_000_05cc                            ; $7cfe: $cd $cc $05
    xor h                                         ; $7d01: $ac
    set 1, d                                      ; $7d02: $cb $ca
    ret                                           ; $7d04: $c9


    ld bc, $2801                                  ; $7d05: $01 $01 $28
    ld [bc], a                                    ; $7d08: $02
    ld bc, $e118                                  ; $7d09: $01 $18 $e1
    db $10                                        ; $7d0c: $10
    jr nc, jr_0ca_7d23                            ; $7d0d: $30 $14

    xor b                                         ; $7d0f: $a8
    ld hl, $0740                                  ; $7d10: $21 $40 $07
    rlca                                          ; $7d13: $07
    rlca                                          ; $7d14: $07
    rrca                                          ; $7d15: $0f
    ld bc, $1018                                  ; $7d16: $01 $18 $10
    cpl                                           ; $7d19: $2f
    cpl                                           ; $7d1a: $2f
    cpl                                           ; $7d1b: $2f
    inc b                                         ; $7d1c: $04
    ld [$2727], sp                                ; $7d1d: $08 $27 $27
    daa                                           ; $7d20: $27
    ld c, $bd                                     ; $7d21: $0e $bd

jr_0ca_7d23:
    ld bc, $2e38                                  ; $7d23: $01 $38 $2e
    ld bc, $1428                                  ; $7d26: $01 $28 $14
    ld h, b                                       ; $7d29: $60
    dec b                                         ; $7d2a: $05
    jr @+$2b                                      ; $7d2b: $18 $29

    nop                                           ; $7d2d: $00
    ld b, $27                                     ; $7d2e: $06 $27
    jr z, jr_0ca_7d4d                             ; $7d30: $28 $1b

    ld c, $2e                                     ; $7d32: $0e $2e
    ld h, $28                                     ; $7d34: $26 $28
    add b                                         ; $7d36: $80
    inc a                                         ; $7d37: $3c
    jr jr_0ca_7d40                                ; $7d38: $18 $06

    ld h, $08                                     ; $7d3a: $26 $08
    ld a, [hl+]                                   ; $7d3c: $2a
    nop                                           ; $7d3d: $00
    ld d, a                                       ; $7d3e: $57
    ld l, [hl]                                    ; $7d3f: $6e

jr_0ca_7d40:
    ld d, b                                       ; $7d40: $50
    nop                                           ; $7d41: $00
    ld h, $2a                                     ; $7d42: $26 $2a
    ld [$6326], sp                                ; $7d44: $08 $26 $63
    ld b, b                                       ; $7d47: $40
    ld h, h                                       ; $7d48: $64

jr_0ca_7d49:
    adc b                                         ; $7d49: $88
    ld [hl], a                                    ; $7d4a: $77
    jr nc, jr_0ca_7d49                            ; $7d4b: $30 $fc

jr_0ca_7d4d:
    ld a, b                                       ; $7d4d: $78
    nop                                           ; $7d4e: $00
    ld h, d                                       ; $7d4f: $62
    jr jr_0ca_7d8e                                ; $7d50: $18 $3c

    db $10                                        ; $7d52: $10
    adc [hl]                                      ; $7d53: $8e
    ld [$0040], sp                                ; $7d54: $08 $40 $00
    and b                                         ; $7d57: $a0
    adc b                                         ; $7d58: $88
    inc d                                         ; $7d59: $14
    nop                                           ; $7d5a: $00
    dec c                                         ; $7d5b: $0d
    nop                                           ; $7d5c: $00
    ld c, [hl]                                    ; $7d5d: $4e
    ld bc, $6800                                  ; $7d5e: $01 $00 $68
    ld l, c                                       ; $7d61: $69
    ld l, d                                       ; $7d62: $6a
    ld l, b                                       ; $7d63: $68
    ld l, c                                       ; $7d64: $69
    ld l, e                                       ; $7d65: $6b
    ld l, h                                       ; $7d66: $6c
    ld l, l                                       ; $7d67: $6d
    nop                                           ; $7d68: $00
    ld l, [hl]                                    ; $7d69: $6e
    ld l, a                                       ; $7d6a: $6f
    ld l, c                                       ; $7d6b: $69
    ld l, b                                       ; $7d6c: $68
    ld l, c                                       ; $7d6d: $69
    ld l, c                                       ; $7d6e: $69
    ld l, c                                       ; $7d6f: $69
    ld [hl], b                                    ; $7d70: $70
    nop                                           ; $7d71: $00
    ld [hl], c                                    ; $7d72: $71
    ld [hl], d                                    ; $7d73: $72
    ld [hl], e                                    ; $7d74: $73
    ld [hl], h                                    ; $7d75: $74
    ld l, d                                       ; $7d76: $6a
    ld l, b                                       ; $7d77: $68
    ld l, d                                       ; $7d78: $6a
    ld l, d                                       ; $7d79: $6a
    nop                                           ; $7d7a: $00
    ld l, b                                       ; $7d7b: $68
    ld [hl], l                                    ; $7d7c: $75
    halt                                          ; $7d7d: $76
    ld [hl], a                                    ; $7d7e: $77
    ld a, b                                       ; $7d7f: $78
    ld a, c                                       ; $7d80: $79
    ld l, b                                       ; $7d81: $68
    ld l, d                                       ; $7d82: $6a
    nop                                           ; $7d83: $00
    ld l, b                                       ; $7d84: $68
    ld l, b                                       ; $7d85: $68
    ld l, d                                       ; $7d86: $6a
    ld a, d                                       ; $7d87: $7a
    ld a, e                                       ; $7d88: $7b
    ld a, h                                       ; $7d89: $7c
    ld a, l                                       ; $7d8a: $7d
    ld a, [hl]                                    ; $7d8b: $7e
    nop                                           ; $7d8c: $00
    ld a, a                                       ; $7d8d: $7f

jr_0ca_7d8e:
    add b                                         ; $7d8e: $80
    add c                                         ; $7d8f: $81
    add d                                         ; $7d90: $82
    ld a, a                                       ; $7d91: $7f
    add e                                         ; $7d92: $83
    add h                                         ; $7d93: $84
    add l                                         ; $7d94: $85
    nop                                           ; $7d95: $00
    add h                                         ; $7d96: $84
    add e                                         ; $7d97: $83
    add b                                         ; $7d98: $80
    add b                                         ; $7d99: $80
    add e                                         ; $7d9a: $83
    add b                                         ; $7d9b: $80
    add c                                         ; $7d9c: $81
    add [hl]                                      ; $7d9d: $86
    nop                                           ; $7d9e: $00
    add a                                         ; $7d9f: $87
    adc b                                         ; $7da0: $88
    adc c                                         ; $7da1: $89
    adc d                                         ; $7da2: $8a
    adc e                                         ; $7da3: $8b
    adc h                                         ; $7da4: $8c
    adc l                                         ; $7da5: $8d
    adc [hl]                                      ; $7da6: $8e
    nop                                           ; $7da7: $00
    adc a                                         ; $7da8: $8f
    sub b                                         ; $7da9: $90
    sub c                                         ; $7daa: $91
    sub d                                         ; $7dab: $92
    sub e                                         ; $7dac: $93
    sub h                                         ; $7dad: $94
    sub l                                         ; $7dae: $95
    sub [hl]                                      ; $7daf: $96
    nop                                           ; $7db0: $00
    sub a                                         ; $7db1: $97
    sbc b                                         ; $7db2: $98
    sub b                                         ; $7db3: $90
    sbc c                                         ; $7db4: $99
    sbc d                                         ; $7db5: $9a
    sbc e                                         ; $7db6: $9b
    sbc h                                         ; $7db7: $9c
    sbc d                                         ; $7db8: $9a
    nop                                           ; $7db9: $00
    sbc l                                         ; $7dba: $9d
    sbc [hl]                                      ; $7dbb: $9e
    sbc a                                         ; $7dbc: $9f
    and b                                         ; $7dbd: $a0
    and c                                         ; $7dbe: $a1
    and d                                         ; $7dbf: $a2
    and e                                         ; $7dc0: $a3
    and h                                         ; $7dc1: $a4
    nop                                           ; $7dc2: $00
    and l                                         ; $7dc3: $a5
    and [hl]                                      ; $7dc4: $a6
    and a                                         ; $7dc5: $a7
    xor b                                         ; $7dc6: $a8
    xor c                                         ; $7dc7: $a9
    xor d                                         ; $7dc8: $aa
    and d                                         ; $7dc9: $a2
    and c                                         ; $7dca: $a1
    nop                                           ; $7dcb: $00
    and b                                         ; $7dcc: $a0
    sbc a                                         ; $7dcd: $9f
    sbc [hl]                                      ; $7dce: $9e
    sbc l                                         ; $7dcf: $9d
    xor e                                         ; $7dd0: $ab
    xor h                                         ; $7dd1: $ac
    xor l                                         ; $7dd2: $ad
    xor [hl]                                      ; $7dd3: $ae
    nop                                           ; $7dd4: $00
    xor a                                         ; $7dd5: $af
    or b                                          ; $7dd6: $b0
    or c                                          ; $7dd7: $b1
    or d                                          ; $7dd8: $b2
    or e                                          ; $7dd9: $b3
    or h                                          ; $7dda: $b4
    or l                                          ; $7ddb: $b5
    or [hl]                                       ; $7ddc: $b6
    nop                                           ; $7ddd: $00
    or a                                          ; $7dde: $b7
    cp b                                          ; $7ddf: $b8
    or b                                          ; $7de0: $b0
    xor a                                         ; $7de1: $af
    xor [hl]                                      ; $7de2: $ae
    xor l                                         ; $7de3: $ad
    xor h                                         ; $7de4: $ac
    xor e                                         ; $7de5: $ab
    nop                                           ; $7de6: $00
    cp c                                          ; $7de7: $b9
    cp d                                          ; $7de8: $ba
    cp e                                          ; $7de9: $bb
    cp h                                          ; $7dea: $bc
    cp l                                          ; $7deb: $bd
    cp [hl]                                       ; $7dec: $be
    cp a                                          ; $7ded: $bf
    ret nz                                        ; $7dee: $c0

    nop                                           ; $7def: $00
    pop bc                                        ; $7df0: $c1
    jp nz, $c4c3                                  ; $7df1: $c2 $c3 $c4

    push bc                                       ; $7df4: $c5
    add $be                                       ; $7df5: $c6 $be
    cp l                                          ; $7df7: $bd
    nop                                           ; $7df8: $00
    cp h                                          ; $7df9: $bc
    cp e                                          ; $7dfa: $bb
    cp d                                          ; $7dfb: $ba
    cp c                                          ; $7dfc: $b9
    rst $00                                       ; $7dfd: $c7
    ret z                                         ; $7dfe: $c8

    ret                                           ; $7dff: $c9


    jp z, $cb00                                   ; $7e00: $ca $00 $cb

    call z, $cecd                                 ; $7e03: $cc $cd $ce
    rst $08                                       ; $7e06: $cf
    ret nc                                        ; $7e07: $d0

    pop de                                        ; $7e08: $d1
    jp nc, $d300                                  ; $7e09: $d2 $00 $d3

    call nc, $cbcc                                ; $7e0c: $d4 $cc $cb
    jp z, $c8c9                                   ; $7e0f: $ca $c9 $c8

    rst $00                                       ; $7e12: $c7
    nop                                           ; $7e13: $00
    push de                                       ; $7e14: $d5
    sub $d7                                       ; $7e15: $d6 $d7
    ret c                                         ; $7e17: $d8

    reti                                          ; $7e18: $d9


    jp c, $dcdb                                   ; $7e19: $da $db $dc

    nop                                           ; $7e1c: $00
    db $dd                                        ; $7e1d: $dd
    sbc $df                                       ; $7e1e: $de $df
    ldh [$e1], a                                  ; $7e20: $e0 $e1
    ld [c], a                                     ; $7e22: $e2
    jp c, Jump_000_00d9                           ; $7e23: $da $d9 $00

    ret c                                         ; $7e26: $d8

    rst $10                                       ; $7e27: $d7
    sub $d5                                       ; $7e28: $d6 $d5
    db $e3                                        ; $7e2a: $e3
    db $e4                                        ; $7e2b: $e4
    push hl                                       ; $7e2c: $e5
    and $00                                       ; $7e2d: $e6 $00
    rst $20                                       ; $7e2f: $e7
    add sp, -$17                                  ; $7e30: $e8 $e9
    ld [$eceb], a                                 ; $7e32: $ea $eb $ec
    db $ed                                        ; $7e35: $ed
    xor $00                                       ; $7e36: $ee $00
    rst $28                                       ; $7e38: $ef
    ldh a, [$e8]                                  ; $7e39: $f0 $e8
    rst $20                                       ; $7e3b: $e7
    and $e5                                       ; $7e3c: $e6 $e5
    db $e4                                        ; $7e3e: $e4
    db $e3                                        ; $7e3f: $e3
    nop                                           ; $7e40: $00
    pop af                                        ; $7e41: $f1
    ld a, [c]                                     ; $7e42: $f2
    di                                            ; $7e43: $f3
    db $f4                                        ; $7e44: $f4
    push af                                       ; $7e45: $f5
    or $f7                                        ; $7e46: $f6 $f7
    ld hl, sp+$00                                 ; $7e48: $f8 $00
    ld sp, hl                                     ; $7e4a: $f9
    ld a, [$fcfb]                                 ; $7e4b: $fa $fb $fc
    db $fd                                        ; $7e4e: $fd
    cp $f6                                        ; $7e4f: $fe $f6
    push af                                       ; $7e51: $f5
    nop                                           ; $7e52: $00
    db $f4                                        ; $7e53: $f4
    di                                            ; $7e54: $f3
    ld a, [c]                                     ; $7e55: $f2
    pop af                                        ; $7e56: $f1
    rst $38                                       ; $7e57: $ff
    nop                                           ; $7e58: $00
    ld bc, $0002                                  ; $7e59: $01 $02 $00
    inc bc                                        ; $7e5c: $03
    inc b                                         ; $7e5d: $04
    dec b                                         ; $7e5e: $05
    ld b, $07                                     ; $7e5f: $06 $07
    ld [$0a09], sp                                ; $7e61: $08 $09 $0a
    nop                                           ; $7e64: $00
    dec bc                                        ; $7e65: $0b
    inc c                                         ; $7e66: $0c
    inc b                                         ; $7e67: $04
    inc bc                                        ; $7e68: $03
    ld [bc], a                                    ; $7e69: $02
    ld bc, $ff00                                  ; $7e6a: $01 $00 $ff
    nop                                           ; $7e6d: $00
    dec c                                         ; $7e6e: $0d
    ld c, $0f                                     ; $7e6f: $0e $0f
    db $10                                        ; $7e71: $10
    ld de, $1312                                  ; $7e72: $11 $12 $13
    inc d                                         ; $7e75: $14
    nop                                           ; $7e76: $00
    dec d                                         ; $7e77: $15
    ld d, $17                                     ; $7e78: $16 $17
    jr jr_0ca_7e95                                ; $7e7a: $18 $19

    ld a, [de]                                    ; $7e7c: $1a
    ld [de], a                                    ; $7e7d: $12
    ld de, $1004                                  ; $7e7e: $11 $04 $10
    rrca                                          ; $7e81: $0f
    ld c, $0d                                     ; $7e82: $0e $0d
    inc bc                                        ; $7e84: $03
    ld bc, $0210                                  ; $7e85: $01 $10 $02
    ld [bc], a                                    ; $7e88: $02
    ld e, b                                       ; $7e89: $58
    ld [bc], a                                    ; $7e8a: $02
    add hl, bc                                    ; $7e8b: $09
    jr @+$03                                      ; $7e8c: $18 $01

    ld bc, $1408                                  ; $7e8e: $01 $08 $14
    sub b                                         ; $7e91: $90
    dec bc                                        ; $7e92: $0b
    dec bc                                        ; $7e93: $0b
    dec bc                                        ; $7e94: $0b

jr_0ca_7e95:
    sub c                                         ; $7e95: $91
    inc b                                         ; $7e96: $04
    ld [$2b2b], sp                                ; $7e97: $08 $2b $2b
    inc b                                         ; $7e9a: $04
    nop                                           ; $7e9b: $00
    dec bc                                        ; $7e9c: $0b
    dec bc                                        ; $7e9d: $0b
    add hl, bc                                    ; $7e9e: $09
    ld bc, $5108                                  ; $7e9f: $01 $08 $51
    rrca                                          ; $7ea2: $0f
    ld bc, $2f50                                  ; $7ea3: $01 $50 $2f
    inc d                                         ; $7ea6: $14
    db $10                                        ; $7ea7: $10
    dec c                                         ; $7ea8: $0d
    dec c                                         ; $7ea9: $0d
    ld c, $03                                     ; $7eaa: $0e $03
    nop                                           ; $7eac: $00
    jr nc, @+$10                                  ; $7ead: $30 $0e

    ld c, $07                                     ; $7eaf: $0e $07
    nop                                           ; $7eb1: $00
    inc b                                         ; $7eb2: $04
    nop                                           ; $7eb3: $00
    dec l                                         ; $7eb4: $2d
    dec l                                         ; $7eb5: $2d
    dec l                                         ; $7eb6: $2d
    ld l, $3a                                     ; $7eb7: $2e $3a
    ld l, $2e                                     ; $7eb9: $2e $2e
    db $10                                        ; $7ebb: $10
    ld [$0012], sp                                ; $7ebc: $08 $12 $00
    rla                                           ; $7ebf: $17
    jr nz, jr_0ca_7ef0                            ; $7ec0: $20 $2e

    inc de                                        ; $7ec2: $13
    nop                                           ; $7ec3: $00
    dec l                                         ; $7ec4: $2d
    ld a, e                                       ; $7ec5: $7b
    ld l, $22                                     ; $7ec6: $2e $22
    ld [$2817], sp                                ; $7ec8: $08 $17 $28
    jr z, jr_0ca_7ecd                             ; $7ecb: $28 $00

jr_0ca_7ecd:
    dec d                                         ; $7ecd: $15
    ld [$392e], sp                                ; $7ece: $08 $2e $39
    ld [$1803], sp                                ; $7ed1: $08 $03 $18
    rst $38                                       ; $7ed4: $ff
    ld sp, $3908                                  ; $7ed5: $31 $08 $39
    nop                                           ; $7ed8: $00
    inc a                                         ; $7ed9: $3c
    db $10                                        ; $7eda: $10
    jr z, jr_0ca_7f05                             ; $7edb: $28 $28

    ld e, b                                       ; $7edd: $58
    ld [$183c], sp                                ; $7ede: $08 $3c $18
    daa                                           ; $7ee1: $27
    jr nz, jr_0ca_7eff                            ; $7ee2: $20 $1b

    jr nz, @-$3f                                  ; $7ee4: $20 $bf

    ld h, h                                       ; $7ee6: $64
    db $10                                        ; $7ee7: $10
    dec l                                         ; $7ee8: $2d
    halt                                          ; $7ee9: $76
    nop                                           ; $7eea: $00
    dec hl                                        ; $7eeb: $2b
    jr jr_0ca_7f33                                ; $7eec: $18 $45

    db $10                                        ; $7eee: $10
    ld h, h                                       ; $7eef: $64

jr_0ca_7ef0:
    nop                                           ; $7ef0: $00
    ld a, c                                       ; $7ef1: $79

jr_0ca_7ef2:
    nop                                           ; $7ef2: $00
    ld [hl+], a                                   ; $7ef3: $22
    jr jr_0ca_7ef2                                ; $7ef4: $18 $fc

    sub c                                         ; $7ef6: $91
    jr nz, jr_0ca_7f49                            ; $7ef7: $20 $50

    db $10                                        ; $7ef9: $10
    inc a                                         ; $7efa: $3c
    ld [$303b], sp                                ; $7efb: $08 $3b $30
    ld d, b                                       ; $7efe: $50

jr_0ca_7eff:
    db $10                                        ; $7eff: $10
    and c                                         ; $7f00: $a1
    ld [$0014], sp                                ; $7f01: $08 $14 $00
    dec c                                         ; $7f04: $0d

jr_0ca_7f05:
    nop                                           ; $7f05: $00
    and c                                         ; $7f06: $a1
    nop                                           ; $7f07: $00
    nop                                           ; $7f08: $00
    ld l, b                                       ; $7f09: $68
    ld l, c                                       ; $7f0a: $69
    ld l, d                                       ; $7f0b: $6a
    ld l, e                                       ; $7f0c: $6b
    ld l, h                                       ; $7f0d: $6c
    ld l, b                                       ; $7f0e: $68
    ld l, l                                       ; $7f0f: $6d
    ld l, b                                       ; $7f10: $68
    ld [$6f6e], sp                                ; $7f11: $08 $6e $6f
    ld [hl], b                                    ; $7f14: $70
    ld [hl], c                                    ; $7f15: $71
    rlca                                          ; $7f16: $07
    nop                                           ; $7f17: $00
    ld [hl], d                                    ; $7f18: $72
    ld [hl], e                                    ; $7f19: $73

jr_0ca_7f1a:
    ld [hl], h                                    ; $7f1a: $74
    nop                                           ; $7f1b: $00
    ld [hl], l                                    ; $7f1c: $75
    ld l, b                                       ; $7f1d: $68
    halt                                          ; $7f1e: $76
    ld [hl], a                                    ; $7f1f: $77
    ld a, b                                       ; $7f20: $78
    ld a, c                                       ; $7f21: $79
    ld a, d                                       ; $7f22: $7a
    halt                                          ; $7f23: $76
    ld [bc], a                                    ; $7f24: $02
    ld a, e                                       ; $7f25: $7b
    halt                                          ; $7f26: $76
    ld a, h                                       ; $7f27: $7c
    ld a, l                                       ; $7f28: $7d
    ld a, [hl]                                    ; $7f29: $7e
    ld a, a                                       ; $7f2a: $7f
    rlca                                          ; $7f2b: $07
    nop                                           ; $7f2c: $00
    add b                                         ; $7f2d: $80
    nop                                           ; $7f2e: $00
    add c                                         ; $7f2f: $81
    add d                                         ; $7f30: $82
    add e                                         ; $7f31: $83
    halt                                          ; $7f32: $76

jr_0ca_7f33:
    add h                                         ; $7f33: $84
    add l                                         ; $7f34: $85
    add l                                         ; $7f35: $85
    add [hl]                                      ; $7f36: $86
    nop                                           ; $7f37: $00
    add l                                         ; $7f38: $85
    add h                                         ; $7f39: $84
    add a                                         ; $7f3a: $87
    add h                                         ; $7f3b: $84
    add [hl]                                      ; $7f3c: $86
    adc b                                         ; $7f3d: $88
    adc c                                         ; $7f3e: $89
    adc d                                         ; $7f3f: $8a
    add b                                         ; $7f40: $80
    rlca                                          ; $7f41: $07
    nop                                           ; $7f42: $00
    adc e                                         ; $7f43: $8b
    add l                                         ; $7f44: $85
    add [hl]                                      ; $7f45: $86
    adc h                                         ; $7f46: $8c
    add h                                         ; $7f47: $84
    sub h                                         ; $7f48: $94

jr_0ca_7f49:
    sub l                                         ; $7f49: $95
    ld [$9796], sp                                ; $7f4a: $08 $96 $97
    sub d                                         ; $7f4d: $92
    sub e                                         ; $7f4e: $93
    ld b, $58                                     ; $7f4f: $06 $58
    xor b                                         ; $7f51: $a8
    xor c                                         ; $7f52: $a9
    xor d                                         ; $7f53: $aa
    db $10                                        ; $7f54: $10
    xor e                                         ; $7f55: $ab
    and [hl]                                      ; $7f56: $a6
    and a                                         ; $7f57: $a7
    ld b, $58                                     ; $7f58: $06 $58
    cp h                                          ; $7f5a: $bc
    cp l                                          ; $7f5b: $bd
    cp [hl]                                       ; $7f5c: $be
    cp a                                          ; $7f5d: $bf
    jr nz, jr_0ca_7f1a                            ; $7f5e: $20 $ba

    cp e                                          ; $7f60: $bb
    ld b, $58                                     ; $7f61: $06 $58
    add $c5                                       ; $7f63: $c6 $c5
    call nz, $c8c3                                ; $7f65: $c4 $c3 $c8
    ld b, b                                       ; $7f68: $40
    rst $00                                       ; $7f69: $c7
    ld b, $58                                     ; $7f6a: $06 $58
    ret nz                                        ; $7f6c: $c0

    cp c                                          ; $7f6d: $b9
    cp b                                          ; $7f6e: $b8
    or a                                          ; $7f6f: $b7
    jp nz, $81c1                                  ; $7f70: $c2 $c1 $81

    ld b, $58                                     ; $7f73: $06 $58
    or h                                          ; $7f75: $b4
    or e                                          ; $7f76: $b3
    or d                                          ; $7f77: $b2
    or c                                          ; $7f78: $b1
    or [hl]                                       ; $7f79: $b6
    or l                                          ; $7f7a: $b5
    ld b, $58                                     ; $7f7b: $06 $58
    ld [bc], a                                    ; $7f7d: $02
    xor [hl]                                      ; $7f7e: $ae
    xor l                                         ; $7f7f: $ad
    xor h                                         ; $7f80: $ac
    and l                                         ; $7f81: $a5
    or b                                          ; $7f82: $b0
    xor a                                         ; $7f83: $af
    ld b, $58                                     ; $7f84: $06 $58
    and d                                         ; $7f86: $a2
    inc b                                         ; $7f87: $04
    and c                                         ; $7f88: $a1
    and b                                         ; $7f89: $a0
    sbc a                                         ; $7f8a: $9f
    and h                                         ; $7f8b: $a4
    and e                                         ; $7f8c: $a3
    ld b, $58                                     ; $7f8d: $06 $58
    sbc h                                         ; $7f8f: $9c
    sbc e                                         ; $7f90: $9b
    ld [$999a], sp                                ; $7f91: $08 $9a $99
    sbc [hl]                                      ; $7f94: $9e
    sbc l                                         ; $7f95: $9d
    ld b, $58                                     ; $7f96: $06 $58
    sub b                                         ; $7f98: $90
    adc a                                         ; $7f99: $8f
    adc [hl]                                      ; $7f9a: $8e
    dec d                                         ; $7f9b: $15
    adc l                                         ; $7f9c: $8d
    sbc b                                         ; $7f9d: $98
    sub c                                         ; $7f9e: $91
    ld b, $58                                     ; $7f9f: $06 $58
    dec b                                         ; $7fa1: $05
    ld bc, $0df8                                  ; $7fa2: $01 $f8 $0d
    ld bc, $d000                                  ; $7fa5: $01 $00 $d0
    dec b                                         ; $7fa8: $05
    db $10                                        ; $7fa9: $10
    inc b                                         ; $7faa: $04
    ld l, b                                       ; $7fab: $68
    rrca                                          ; $7fac: $0f
    ld bc, $0b80                                  ; $7fad: $01 $80 $0b
    dec bc                                        ; $7fb0: $0b
    ld c, $0e                                     ; $7fb1: $0e $0e
    rst $38                                       ; $7fb3: $ff
    inc bc                                        ; $7fb4: $03
    db $10                                        ; $7fb5: $10
    ld [$0900], sp                                ; $7fb6: $08 $00 $09
    jr @+$12                                      ; $7fb9: $18 $10

    nop                                           ; $7fbb: $00
    inc c                                         ; $7fbc: $0c
    ld c, b                                       ; $7fbd: $48
    add hl, de                                    ; $7fbe: $19
    db $10                                        ; $7fbf: $10
    inc hl                                        ; $7fc0: $23
    db $10                                        ; $7fc1: $10
    rla                                           ; $7fc2: $17
    db $10                                        ; $7fc3: $10
    rst $38                                       ; $7fc4: $ff
    ld e, $10                                     ; $7fc5: $1e $10
    ld l, $28                                     ; $7fc7: $2e $28
    dec a                                         ; $7fc9: $3d
    jr @+$12                                      ; $7fca: $18 $10

    jr z, jr_0ca_7fd7                             ; $7fcc: $28 $09

    jr z, @+$4c                                   ; $7fce: $28 $4a

    jr c, jr_0ca_7ffc                             ; $7fd0: $38 $2a

    db $10                                        ; $7fd2: $10
    dec l                                         ; $7fd3: $2d

jr_0ca_7fd4:
    jr nc, jr_0ca_7fd4                            ; $7fd4: $30 $fe

    ld e, l                                       ; $7fd6: $5d

jr_0ca_7fd7:
    jr @+$2f                                      ; $7fd7: $18 $2d

    ld [hl], b                                    ; $7fd9: $70
    ld h, d                                       ; $7fda: $62
    jr nz, @+$6e                                  ; $7fdb: $20 $6c

    ld d, b                                       ; $7fdd: $50
    ld h, [hl]                                    ; $7fde: $66
    jr c, @+$43                                   ; $7fdf: $38 $41

    ld d, b                                       ; $7fe1: $50
    add [hl]                                      ; $7fe2: $86
    db $10                                        ; $7fe3: $10
    ld c, $00                                     ; $7fe4: $0e $00
    db $0e                                        ; $7fe6: $0e

    db $ff, $7f, $bf, $07, $af, $3c, $03, $00

    rst $38                                       ; $7fef: $ff
    ld a, a                                       ; $7ff0: $7f
    cp [hl]                                       ; $7ff1: $be
    ld [hl], a                                    ; $7ff2: $77
    db $eb                                        ; $7ff3: $eb
    dec a                                         ; $7ff4: $3d
    ld b, c                                       ; $7ff5: $41
    inc c                                         ; $7ff6: $0c
    rst $38                                       ; $7ff7: $ff
    ld a, a                                       ; $7ff8: $7f
    ld e, a                                       ; $7ff9: $5f
    nop                                           ; $7ffa: $00
    ld l, l                                       ; $7ffb: $6d

jr_0ca_7ffc:
    inc b                                         ; $7ffc: $04
    inc bc                                        ; $7ffd: $03
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
