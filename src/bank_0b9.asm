; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b9", ROMX[$4000], BANK[$b9]

    db $b9

    nop                                           ; $4001: $00
    jr nz, jr_0b9_4004                            ; $4002: $20 $00

jr_0b9_4004:
    jr nz, jr_0b9_4006                            ; $4004: $20 $00

jr_0b9_4006:
    jr nz, jr_0b9_4070                            ; $4006: $20 $68

    inc b                                         ; $4008: $04
    nop                                           ; $4009: $00
    jr nz, jr_0b9_400c                            ; $400a: $20 $00

jr_0b9_400c:
    jr nz, jr_0b9_400e                            ; $400c: $20 $00

jr_0b9_400e:
    jr nz, jr_0b9_4078                            ; $400e: $20 $68

    inc b                                         ; $4010: $04
    nop                                           ; $4011: $00
    jr nz, jr_0b9_4014                            ; $4012: $20 $00

jr_0b9_4014:
    jr nz, jr_0b9_4016                            ; $4014: $20 $00

jr_0b9_4016:
    jr nz, jr_0b9_4080                            ; $4016: $20 $68

    inc b                                         ; $4018: $04
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    nop                                           ; $401d: $00

jr_0b9_401e:
    jr nz, jr_0b9_400e                            ; $401e: $20 $ee

    ld d, e                                       ; $4020: $53
    nop                                           ; $4021: $00
    jr nz, @+$01                                  ; $4022: $20 $ff

    ld a, a                                       ; $4024: $7f
    nop                                           ; $4025: $00

jr_0b9_4026:
    jr nz, jr_0b9_4016                            ; $4026: $20 $ee

    ld d, e                                       ; $4028: $53
    nop                                           ; $4029: $00
    jr nz, @+$01                                  ; $402a: $20 $ff

    ld a, a                                       ; $402c: $7f
    nop                                           ; $402d: $00
    jr nz, jr_0b9_401e                            ; $402e: $20 $ee

    ld d, e                                       ; $4030: $53
    nop                                           ; $4031: $00
    jr nz, @+$01                                  ; $4032: $20 $ff

    ld a, a                                       ; $4034: $7f
    nop                                           ; $4035: $00
    jr nz, jr_0b9_4026                            ; $4036: $20 $ee

    ld d, e                                       ; $4038: $53
    nop                                           ; $4039: $00
    jr nz, jr_0b9_403c                            ; $403a: $20 $00

jr_0b9_403c:
    jr nz, jr_0b9_403e                            ; $403c: $20 $00

jr_0b9_403e:
    jr nz, jr_0b9_40a8                            ; $403e: $20 $68

    inc b                                         ; $4040: $04
    nop                                           ; $4041: $00
    jr nz, jr_0b9_4044                            ; $4042: $20 $00

jr_0b9_4044:
    jr nz, jr_0b9_4046                            ; $4044: $20 $00

jr_0b9_4046:
    jr nz, jr_0b9_40b0                            ; $4046: $20 $68

    inc b                                         ; $4048: $04
    nop                                           ; $4049: $00
    jr nz, jr_0b9_404c                            ; $404a: $20 $00

jr_0b9_404c:
    jr nz, jr_0b9_404e                            ; $404c: $20 $00

jr_0b9_404e:
    jr nz, jr_0b9_40b8                            ; $404e: $20 $68

    inc b                                         ; $4050: $04
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    inc d                                         ; $4055: $14
    ld [bc], a                                    ; $4056: $02
    nop                                           ; $4057: $00
    jr nz, jr_0b9_405a                            ; $4058: $20 $00

jr_0b9_405a:
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    jr nz, jr_0b9_4072                            ; $405c: $20 $14

    ld [bc], a                                    ; $405e: $02
    nop                                           ; $405f: $00
    jr nz, jr_0b9_4062                            ; $4060: $20 $00

jr_0b9_4062:
    jr nz, jr_0b9_4064                            ; $4062: $20 $00

jr_0b9_4064:
    jr nz, jr_0b9_407a                            ; $4064: $20 $14

    ld [bc], a                                    ; $4066: $02
    nop                                           ; $4067: $00
    jr nz, jr_0b9_406a                            ; $4068: $20 $00

jr_0b9_406a:
    jr nz, jr_0b9_406c                            ; $406a: $20 $00

jr_0b9_406c:
    jr nz, jr_0b9_4082                            ; $406c: $20 $14

    ld [bc], a                                    ; $406e: $02
    nop                                           ; $406f: $00

jr_0b9_4070:
    jr nz, jr_0b9_4072                            ; $4070: $20 $00

jr_0b9_4072:
    jr nz, jr_0b9_4074                            ; $4072: $20 $00

jr_0b9_4074:
    jr nz, jr_0b9_4076                            ; $4074: $20 $00

jr_0b9_4076:
    jr nz, @+$6a                                  ; $4076: $20 $68

jr_0b9_4078:
    inc b                                         ; $4078: $04
    nop                                           ; $4079: $00

jr_0b9_407a:
    jr nz, jr_0b9_407c                            ; $407a: $20 $00

jr_0b9_407c:
    jr nz, jr_0b9_407e                            ; $407c: $20 $00

jr_0b9_407e:
    jr nz, jr_0b9_40e8                            ; $407e: $20 $68

jr_0b9_4080:
    inc b                                         ; $4080: $04
    nop                                           ; $4081: $00

jr_0b9_4082:
    nop                                           ; $4082: $00
    rst $38                                       ; $4083: $ff
    ld a, a                                       ; $4084: $7f
    nop                                           ; $4085: $00
    jr nz, jr_0b9_40f0                            ; $4086: $20 $68

    inc b                                         ; $4088: $04
    ld b, b                                       ; $4089: $40
    nop                                           ; $408a: $00
    ld a, d                                       ; $408b: $7a
    ld l, $19                                     ; $408c: $2e $19
    ld bc, $7fff                                  ; $408e: $01 $ff $7f
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    rst $38                                       ; $4093: $ff

jr_0b9_4094:
    ld a, a                                       ; $4094: $7f
    nop                                           ; $4095: $00
    inc e                                         ; $4096: $1c
    nop                                           ; $4097: $00
    jr nz, jr_0b9_409a                            ; $4098: $20 $00

jr_0b9_409a:
    jr nz, @+$01                                  ; $409a: $20 $ff

jr_0b9_409c:
    ld a, a                                       ; $409c: $7f
    nop                                           ; $409d: $00
    inc e                                         ; $409e: $1c
    nop                                           ; $409f: $00
    jr nz, jr_0b9_40a2                            ; $40a0: $20 $00

jr_0b9_40a2:
    jr nz, @+$01                                  ; $40a2: $20 $ff

    ld a, a                                       ; $40a4: $7f
    nop                                           ; $40a5: $00
    inc e                                         ; $40a6: $1c
    nop                                           ; $40a7: $00

jr_0b9_40a8:
    jr nz, jr_0b9_40aa                            ; $40a8: $20 $00

jr_0b9_40aa:
    jr nz, @+$01                                  ; $40aa: $20 $ff

    ld a, a                                       ; $40ac: $7f
    nop                                           ; $40ad: $00
    jr nz, jr_0b9_4118                            ; $40ae: $20 $68

jr_0b9_40b0:
    inc b                                         ; $40b0: $04
    nop                                           ; $40b1: $00
    jr nz, @+$01                                  ; $40b2: $20 $ff

jr_0b9_40b4:
    ld a, a                                       ; $40b4: $7f
    nop                                           ; $40b5: $00
    jr nz, jr_0b9_4120                            ; $40b6: $20 $68

jr_0b9_40b8:
    inc b                                         ; $40b8: $04
    nop                                           ; $40b9: $00
    inc b                                         ; $40ba: $04
    dec hl                                        ; $40bb: $2b
    ld b, e                                       ; $40bc: $43
    sbc [hl]                                      ; $40bd: $9e
    ld [hl+], a                                   ; $40be: $22
    nop                                           ; $40bf: $00
    ld a, [bc]                                    ; $40c0: $0a
    jr nz, jr_0b9_40c3                            ; $40c1: $20 $00

jr_0b9_40c3:
    add a                                         ; $40c3: $87
    ld e, $cd                                     ; $40c4: $1e $cd
    ld d, e                                       ; $40c6: $53
    ld a, a                                       ; $40c7: $7f
    ccf                                           ; $40c8: $3f
    ld b, c                                       ; $40c9: $41
    inc c                                         ; $40ca: $0c
    ret nz                                        ; $40cb: $c0

    ld [hl+], a                                   ; $40cc: $22
    ld d, e                                       ; $40cd: $53
    dec b                                         ; $40ce: $05
    xor $53                                       ; $40cf: $ee $53
    nop                                           ; $40d1: $00
    jr nz, jr_0b9_4094                            ; $40d2: $20 $c0

    ld [hl+], a                                   ; $40d4: $22
    ld d, e                                       ; $40d5: $53
    dec b                                         ; $40d6: $05
    xor $53                                       ; $40d7: $ee $53
    nop                                           ; $40d9: $00
    jr nz, jr_0b9_409c                            ; $40da: $20 $c0

    ld [hl+], a                                   ; $40dc: $22
    ld d, e                                       ; $40dd: $53
    dec b                                         ; $40de: $05
    xor $53                                       ; $40df: $ee $53
    nop                                           ; $40e1: $00
    jr nz, jr_0b9_410f                            ; $40e2: $20 $2b

    ld b, e                                       ; $40e4: $43
    sbc [hl]                                      ; $40e5: $9e
    ld [hl+], a                                   ; $40e6: $22
    nop                                           ; $40e7: $00

jr_0b9_40e8:
    ld a, [bc]                                    ; $40e8: $0a
    nop                                           ; $40e9: $00
    jr nz, jr_0b9_4117                            ; $40ea: $20 $2b

    ld b, e                                       ; $40ec: $43
    sbc [hl]                                      ; $40ed: $9e
    ld [hl+], a                                   ; $40ee: $22
    nop                                           ; $40ef: $00

jr_0b9_40f0:
    ld a, [bc]                                    ; $40f0: $0a
    nop                                           ; $40f1: $00
    inc b                                         ; $40f2: $04
    db $ed                                        ; $40f3: $ed
    ld c, a                                       ; $40f4: $4f
    ld a, [$a001]                                 ; $40f5: $fa $01 $a0
    add hl, bc                                    ; $40f8: $09
    nop                                           ; $40f9: $00
    inc b                                         ; $40fa: $04
    and b                                         ; $40fb: $a0
    ld d, [hl]                                    ; $40fc: $56
    ld [c], a                                     ; $40fd: $e2
    ld a, a                                       ; $40fe: $7f
    add b                                         ; $40ff: $80
    dec b                                         ; $4100: $05
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ldh a, [$63]                                  ; $4103: $f0 $63
    ld h, b                                       ; $4105: $60
    dec c                                         ; $4106: $0d
    ld e, d                                       ; $4107: $5a
    ld e, $00                                     ; $4108: $1e $00
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    jr nz, jr_0b9_416e                            ; $410c: $20 $60

    dec c                                         ; $410e: $0d

jr_0b9_410f:
    ld e, d                                       ; $410f: $5a
    ld e, $00                                     ; $4110: $1e $00
    jr nz, jr_0b9_4114                            ; $4112: $20 $00

jr_0b9_4114:
    jr nz, jr_0b9_4176                            ; $4114: $20 $60

    dec c                                         ; $4116: $0d

jr_0b9_4117:
    ld e, d                                       ; $4117: $5a

jr_0b9_4118:
    ld e, $00                                     ; $4118: $1e $00
    jr nz, @-$11                                  ; $411a: $20 $ed

    ld c, a                                       ; $411c: $4f
    ld a, [$a001]                                 ; $411d: $fa $01 $a0

jr_0b9_4120:
    add hl, bc                                    ; $4120: $09
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    jr nz, jr_0b9_4120                            ; $4124: $20 $fa

    ld bc, $09a0                                  ; $4126: $01 $a0 $09
    add b                                         ; $4129: $80

jr_0b9_412a:
    nop                                           ; $412a: $00
    ldh [$7f], a                                  ; $412b: $e0 $7f
    ld a, a                                       ; $412d: $7f
    ld [bc], a                                    ; $412e: $02
    inc c                                         ; $412f: $0c
    ld b, a                                       ; $4130: $47
    ld h, b                                       ; $4131: $60

jr_0b9_4132:
    jr jr_0b9_40b4                                ; $4132: $18 $80

jr_0b9_4134:
    ld l, a                                       ; $4134: $6f
    db $fd                                        ; $4135: $fd
    ld a, a                                       ; $4136: $7f

jr_0b9_4137:
    db $ed                                        ; $4137: $ed
    ld a, a                                       ; $4138: $7f
    ld h, b                                       ; $4139: $60
    db $10                                        ; $413a: $10
    db $e4                                        ; $413b: $e4
    ld b, [hl]                                    ; $413c: $46
    sbc c                                         ; $413d: $99
    ld [hl], e                                    ; $413e: $73
    ld [c], a                                     ; $413f: $e2
    ld a, e                                       ; $4140: $7b
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    ld c, h                                       ; $4143: $4c
    ld b, e                                       ; $4144: $43
    nop                                           ; $4145: $00
    jr nz, jr_0b9_412a                            ; $4146: $20 $e2

    ld a, e                                       ; $4148: $7b
    nop                                           ; $4149: $00
    jr nz, jr_0b9_4198                            ; $414a: $20 $4c

    ld b, e                                       ; $414c: $43
    nop                                           ; $414d: $00
    jr nz, jr_0b9_4132                            ; $414e: $20 $e2

    ld a, e                                       ; $4150: $7b
    nop                                           ; $4151: $00
    jr nz, jr_0b9_4134                            ; $4152: $20 $e0

    ld a, a                                       ; $4154: $7f
    ld a, a                                       ; $4155: $7f
    ld [bc], a                                    ; $4156: $02
    inc c                                         ; $4157: $0c
    ld b, a                                       ; $4158: $47
    nop                                           ; $4159: $00
    ld [$2aa5], sp                                ; $415a: $08 $a5 $2a
    inc b                                         ; $415d: $04
    dec c                                         ; $415e: $0d
    ret nc                                        ; $415f: $d0

    ld e, e                                       ; $4160: $5b
    pop bc                                        ; $4161: $c1
    inc b                                         ; $4162: $04
    xor e                                         ; $4163: $ab
    ld h, a                                       ; $4164: $67
    ld sp, hl                                     ; $4165: $f9
    ld a, a                                       ; $4166: $7f
    call nz, $0022                                ; $4167: $c4 $22 $00
    inc b                                         ; $416a: $04
    xor c                                         ; $416b: $a9
    ld h, [hl]                                    ; $416c: $66
    and e                                         ; $416d: $a3

jr_0b9_416e:
    ld b, c                                       ; $416e: $41
    ei                                            ; $416f: $fb
    ld a, a                                       ; $4170: $7f
    jr nz, jr_0b9_4173                            ; $4171: $20 $00

jr_0b9_4173:
    call nz, $fa4e                                ; $4173: $c4 $4e $fa

jr_0b9_4176:
    ld a, a                                       ; $4176: $7f
    and d                                         ; $4177: $a2
    ld a, e                                       ; $4178: $7b
    nop                                           ; $4179: $00
    inc c                                         ; $417a: $0c
    ldh a, [$5f]                                  ; $417b: $f0 $5f
    add c                                         ; $417d: $81
    dec d                                         ; $417e: $15
    db $ed                                        ; $417f: $ed
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    jr nz, @-$0e                                  ; $4182: $20 $f0

    ld e, a                                       ; $4184: $5f
    add c                                         ; $4185: $81
    dec d                                         ; $4186: $15
    db $ed                                        ; $4187: $ed
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    jr nz, jr_0b9_4137                            ; $418a: $20 $ab

    ld h, a                                       ; $418c: $67
    ld sp, hl                                     ; $418d: $f9
    ld a, a                                       ; $418e: $7f
    call nz, Call_000_2022                        ; $418f: $c4 $22 $20
    nop                                           ; $4192: $00
    ld a, $13                                     ; $4193: $3e $13
    add hl, hl                                    ; $4195: $29
    add hl, de                                    ; $4196: $19
    or b                                          ; $4197: $b0

jr_0b9_4198:
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    db $ed                                        ; $419b: $ed
    ld e, a                                       ; $419c: $5f
    ld [hl+], a                                   ; $419d: $22
    ld [hl+], a                                   ; $419e: $22
    cp $7f                                        ; $419f: $fe $7f
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    ld b, d                                       ; $41a3: $42
    ld [hl], e                                    ; $41a4: $73
    sub $04                                       ; $41a5: $d6 $04
    sbc a                                         ; $41a7: $9f
    ld l, e                                       ; $41a8: $6b
    ld bc, $ca00                                  ; $41a9: $01 $00 $ca
    ld a, a                                       ; $41ac: $7f
    jr nz, @+$3b                                  ; $41ad: $20 $39

    db $fc                                        ; $41af: $fc
    ld a, a                                       ; $41b0: $7f
    jr nz, jr_0b9_41b3                            ; $41b1: $20 $00

jr_0b9_41b3:
    ld e, a                                       ; $41b3: $5f
    rla                                           ; $41b4: $17
    jr nc, jr_0b9_41d0                            ; $41b5: $30 $19

    rst $38                                       ; $41b7: $ff
    ld [hl], a                                    ; $41b8: $77
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    jr nz, jr_0b9_41ee                            ; $41bc: $20 $30

    add hl, de                                    ; $41be: $19
    rst $38                                       ; $41bf: $ff
    ld [hl], a                                    ; $41c0: $77
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    rst $38                                       ; $41c3: $ff
    ld a, a                                       ; $41c4: $7f
    nop                                           ; $41c5: $00

jr_0b9_41c6:
    jr nz, jr_0b9_41c6                            ; $41c6: $20 $fe

    ld a, a                                       ; $41c8: $7f
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    sbc l                                         ; $41cb: $9d
    ld c, e                                       ; $41cc: $4b
    ld [hl+], a                                   ; $41cd: $22
    dec b                                         ; $41ce: $05
    rst $38                                       ; $41cf: $ff

jr_0b9_41d0:
    ld a, a                                       ; $41d0: $7f
    ld hl, $ee00                                  ; $41d1: $21 $00 $ee
    ld a, a                                       ; $41d4: $7f
    rst $38                                       ; $41d5: $ff
    inc bc                                        ; $41d6: $03
    ld a, [$0100]                                 ; $41d7: $fa $00 $01
    nop                                           ; $41da: $00
    ret nz                                        ; $41db: $c0

    ld a, a                                       ; $41dc: $7f
    ld e, a                                       ; $41dd: $5f
    ld d, e                                       ; $41de: $53
    db $f4                                        ; $41df: $f4
    ld [$0001], sp                                ; $41e0: $08 $01 $00
    ld b, b                                       ; $41e3: $40
    ld [hl], a                                    ; $41e4: $77
    ld a, [de]                                    ; $41e5: $1a
    ld [bc], a                                    ; $41e6: $02
    ldh [$30], a                                  ; $41e7: $e0 $30
    ld hl, $ab00                                  ; $41e9: $21 $00 $ab
    ld b, a                                       ; $41ec: $47
    and d                                         ; $41ed: $a2

jr_0b9_41ee:
    ld de, $77f9                                  ; $41ee: $11 $f9 $77

jr_0b9_41f1:
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    rst $38                                       ; $41f3: $ff
    ld a, a                                       ; $41f4: $7f
    nop                                           ; $41f5: $00
    jr nz, jr_0b9_41f1                            ; $41f6: $20 $f9

    ld [hl], a                                    ; $41f8: $77
    nop                                           ; $41f9: $00

jr_0b9_41fa:
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    ld a, a                                       ; $41fc: $7f
    nop                                           ; $41fd: $00
    jr nz, jr_0b9_41fa                            ; $41fe: $20 $fa

    nop                                           ; $4200: $00
    add b                                         ; $4201: $80
    nop                                           ; $4202: $00
    ld [c], a                                     ; $4203: $e2
    ld a, [de]                                    ; $4204: $1a
    ld l, d                                       ; $4205: $6a
    ccf                                           ; $4206: $3f
    or $77                                        ; $4207: $f6 $77
    jr nz, jr_0b9_420f                            ; $4209: $20 $04

    ld a, $1e                                     ; $420b: $3e $1e
    ldh [$7f], a                                  ; $420d: $e0 $7f

jr_0b9_420f:
    ld l, [hl]                                    ; $420f: $6e

Call_0b9_4210:
    ld bc, $0822                                  ; $4210: $01 $22 $08
    ld [hl], c                                    ; $4213: $71
    ld c, [hl]                                    ; $4214: $4e
    add d                                         ; $4215: $82
    ld c, l                                       ; $4216: $4d
    sbc a                                         ; $4217: $9f
    ld e, e                                       ; $4218: $5b
    jr nz, jr_0b9_421b                            ; $4219: $20 $00

jr_0b9_421b:
    nop                                           ; $421b: $00
    ld l, e                                       ; $421c: $6b
    ld e, a                                       ; $421d: $5f
    ld h, $e0                                     ; $421e: $26 $e0
    inc [hl]                                      ; $4220: $34
    jr nz, jr_0b9_4223                            ; $4221: $20 $00

jr_0b9_4223:
    ld l, b                                       ; $4223: $68
    inc sp                                        ; $4224: $33
    pop af                                        ; $4225: $f1
    ld e, a                                       ; $4226: $5f
    ld h, b                                       ; $4227: $60
    ld c, $00                                     ; $4228: $0e $00
    nop                                           ; $422a: $00
    rst $38                                       ; $422b: $ff
    ld a, a                                       ; $422c: $7f
    db $10                                        ; $422d: $10
    inc a                                         ; $422e: $3c
    nop                                           ; $422f: $00
    jr nz, jr_0b9_4232                            ; $4230: $20 $00

jr_0b9_4232:
    inc b                                         ; $4232: $04
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    ld a, [hl+]                                   ; $4235: $2a
    ld [hl], $10                                  ; $4236: $36 $10
    inc a                                         ; $4238: $3c
    ld b, b                                       ; $4239: $40
    nop                                           ; $423a: $00
    adc $53                                       ; $423b: $ce $53
    and e                                         ; $423d: $a3
    add hl, bc                                    ; $423e: $09
    pop hl                                        ; $423f: $e1
    ld e, $00                                     ; $4240: $1e $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    ld b, d                                       ; $4244: $42
    sbc b                                         ; $4245: $98
    dec e                                         ; $4246: $1d
    ldh [$7f], a                                  ; $4247: $e0 $7f
    nop                                           ; $4249: $00
    nop                                           ; $424a: $00
    ld a, e                                       ; $424b: $7b
    add hl, bc                                    ; $424c: $09
    sbc a                                         ; $424d: $9f
    ld d, a                                       ; $424e: $57
    ld [$0014], a                                 ; $424f: $ea $14 $00
    nop                                           ; $4252: $00
    rla                                           ; $4253: $17
    ld bc, $30c0                                  ; $4254: $01 $c0 $30
    ccf                                           ; $4257: $3f
    inc bc                                        ; $4258: $03
    jr nz, jr_0b9_425b                            ; $4259: $20 $00

jr_0b9_425b:
    inc h                                         ; $425b: $24
    daa                                           ; $425c: $27
    ld h, [hl]                                    ; $425d: $66
    ld l, a                                       ; $425e: $6f
    add b                                         ; $425f: $80
    dec d                                         ; $4260: $15
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    rst $38                                       ; $4263: $ff
    ld a, a                                       ; $4264: $7f
    db $10                                        ; $4265: $10
    inc a                                         ; $4266: $3c
    nop                                           ; $4267: $00
    jr nz, jr_0b9_428a                            ; $4268: $20 $20

    nop                                           ; $426a: $00
    jp z, $ff4b                                   ; $426b: $ca $4b $ff

    ld a, a                                       ; $426e: $7f
    db $10                                        ; $426f: $10
    inc a                                         ; $4270: $3c
    ld h, b                                       ; $4271: $60
    inc b                                         ; $4272: $04
    dec a                                         ; $4273: $3d
    ld [de], a                                    ; $4274: $12
    jp nz, $ce26                                  ; $4275: $c2 $26 $ce

    nop                                           ; $4278: $00
    jr nz, jr_0b9_427b                            ; $4279: $20 $00

jr_0b9_427b:
    and b                                         ; $427b: $a0
    ld [hl], e                                    ; $427c: $73
    cp h                                          ; $427d: $bc
    dec d                                         ; $427e: $15
    jp z, Jump_000_0077                           ; $427f: $ca $77 $00

    nop                                           ; $4282: $00
    jr nc, jr_0b9_42db                            ; $4283: $30 $56

    db $fc                                        ; $4285: $fc
    ld a, a                                       ; $4286: $7f
    ld e, e                                       ; $4287: $5b
    dec b                                         ; $4288: $05
    nop                                           ; $4289: $00

jr_0b9_428a:
    nop                                           ; $428a: $00
    ei                                            ; $428b: $fb
    ld a, a                                       ; $428c: $7f
    add b                                         ; $428d: $80
    dec [hl]                                      ; $428e: $35
    nop                                           ; $428f: $00
    ld h, d                                       ; $4290: $62
    ld h, l                                       ; $4291: $65
    nop                                           ; $4292: $00
    ldh [$62], a                                  ; $4293: $e0 $62
    sbc a                                         ; $4295: $9f
    ld b, $be                                     ; $4296: $06 $be
    ld l, e                                       ; $4298: $6b
    ld b, b                                       ; $4299: $40
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    ld a, a                                       ; $429c: $7f
    db $10                                        ; $429d: $10
    inc a                                         ; $429e: $3c
    nop                                           ; $429f: $00
    jr nz, @+$42                                  ; $42a0: $20 $40

    nop                                           ; $42a2: $00
    sbc e                                         ; $42a3: $9b
    ld bc, $7fff                                  ; $42a4: $01 $ff $7f
    nop                                           ; $42a7: $00
    jr nz, jr_0b9_42ab                            ; $42a8: $20 $01

    nop                                           ; $42aa: $00

jr_0b9_42ab:
    rra                                           ; $42ab: $1f
    scf                                           ; $42ac: $37
    ld h, b                                       ; $42ad: $60
    ld c, $e0                                     ; $42ae: $0e $e0
    nop                                           ; $42b0: $00
    ld bc, $6000                                  ; $42b1: $01 $00 $60
    ld e, l                                       ; $42b4: $5d
    db $fd                                        ; $42b5: $fd
    ld a, a                                       ; $42b6: $7f
    and d                                         ; $42b7: $a2
    ld a, e                                       ; $42b8: $7b
    ld hl, $5904                                  ; $42b9: $21 $04 $59
    dec d                                         ; $42bc: $15
    sbc [hl]                                      ; $42bd: $9e
    ld e, a                                       ; $42be: $5f
    dec sp                                        ; $42bf: $3b
    ld [hl], $01                                  ; $42c0: $36 $01
    nop                                           ; $42c2: $00
    ld b, c                                       ; $42c3: $41
    ld [hl], a                                    ; $42c4: $77
    sbc a                                         ; $42c5: $9f
    ld e, a                                       ; $42c6: $5f
    add b                                         ; $42c7: $80
    dec [hl]                                      ; $42c8: $35
    ld b, b                                       ; $42c9: $40
    nop                                           ; $42ca: $00
    push de                                       ; $42cb: $d5
    ld b, [hl]                                    ; $42cc: $46
    nop                                           ; $42cd: $00
    ld a, [bc]                                    ; $42ce: $0a
    rst $38                                       ; $42cf: $ff
    ccf                                           ; $42d0: $3f
    ld [hl+], a                                   ; $42d1: $22
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff
    ld bc, $7fff                                  ; $42d4: $01 $ff $7f
    nop                                           ; $42d7: $00
    jr nz, jr_0b9_42da                            ; $42d8: $20 $00

jr_0b9_42da:
    inc b                                         ; $42da: $04

jr_0b9_42db:
    jp c, $bd01                                   ; $42db: $da $01 $bd

    ccf                                           ; $42de: $3f
    ret nz                                        ; $42df: $c0

    nop                                           ; $42e0: $00
    ldh [rP1], a                                  ; $42e1: $e0 $00
    and e                                         ; $42e3: $a3
    ld a, [de]                                    ; $42e4: $1a
    ld b, l                                       ; $42e5: $45
    dec hl                                        ; $42e6: $2b
    ret nz                                        ; $42e7: $c0

    dec c                                         ; $42e8: $0d
    jr nz, @+$06                                  ; $42e9: $20 $04

    ld h, e                                       ; $42eb: $63
    dec de                                        ; $42ec: $1b
    ld hl, $807f                                  ; $42ed: $21 $7f $80
    jr nc, @+$08                                  ; $42f0: $30 $06

    nop                                           ; $42f2: $00
    call c, $1446                                 ; $42f3: $dc $46 $14
    ld de, $5f9f                                  ; $42f6: $11 $9f $5f
    ld h, e                                       ; $42f9: $63
    inc c                                         ; $42fa: $0c
    ld a, $32                                     ; $42fb: $3e $32
    ld b, b                                       ; $42fd: $40
    ld a, a                                       ; $42fe: $7f
    cp l                                          ; $42ff: $bd
    ld l, e                                       ; $4300: $6b
    jr nz, jr_0b9_4304                            ; $4301: $20 $01

    add c                                         ; $4303: $81

jr_0b9_4304:
    ld d, $44                                     ; $4304: $16 $44
    inc hl                                        ; $4306: $23
    push hl                                       ; $4307: $e5
    dec hl                                        ; $4308: $2b
    jr nz, jr_0b9_430b                            ; $4309: $20 $00

jr_0b9_430b:
    cp h                                          ; $430b: $bc
    ld c, $00                                     ; $430c: $0e $00
    jr nz, jr_0b9_435e                            ; $430e: $20 $4e

    nop                                           ; $4310: $00
    ld h, b                                       ; $4311: $60
    nop                                           ; $4312: $00
    jr nz, jr_0b9_4327                            ; $4313: $20 $12

    ld [de], a                                    ; $4315: $12
    ld a, [bc]                                    ; $4316: $0a
    ld b, l                                       ; $4317: $45
    dec hl                                        ; $4318: $2b
    dec b                                         ; $4319: $05
    daa                                           ; $431a: $27
    adc b                                         ; $431b: $88
    scf                                           ; $431c: $37
    call $aa4f                                    ; $431d: $cd $4f $aa
    ld b, e                                       ; $4320: $43
    ld b, b                                       ; $4321: $40
    nop                                           ; $4322: $00
    jr nz, jr_0b9_43a0                            ; $4323: $20 $7b

    ld h, c                                       ; $4325: $61
    ld [de], a                                    ; $4326: $12

jr_0b9_4327:
    di                                            ; $4327: $f3
    ld a, a                                       ; $4328: $7f
    inc b                                         ; $4329: $04
    nop                                           ; $432a: $00
    cp a                                          ; $432b: $bf
    ld b, d                                       ; $432c: $42
    inc d                                         ; $432d: $14
    ld de, $5b7f                                  ; $432e: $11 $7f $5b
    ld b, c                                       ; $4331: $41
    ld [$1762], sp                                ; $4332: $08 $62 $17
    ld e, [hl]                                    ; $4335: $5e
    ld d, a                                       ; $4336: $57
    pop bc                                        ; $4337: $c1
    ld l, [hl]                                    ; $4338: $6e
    db $e3                                        ; $4339: $e3
    ld e, $ed                                     ; $433a: $1e $ed
    ld c, e                                       ; $433c: $4b
    adc c                                         ; $433d: $89
    dec sp                                        ; $433e: $3b
    ld h, [hl]                                    ; $433f: $66
    dec hl                                        ; $4340: $2b
    jr nz, jr_0b9_4343                            ; $4341: $20 $00

jr_0b9_4343:
    ld b, c                                       ; $4343: $41
    dec b                                         ; $4344: $05
    db $eb                                        ; $4345: $eb
    ld a, [hl+]                                   ; $4346: $2a
    nop                                           ; $4347: $00
    jr nz, jr_0b9_434a                            ; $4348: $20 $00

jr_0b9_434a:
    inc d                                         ; $434a: $14
    dec b                                         ; $434b: $05
    ld [hl+], a                                   ; $434c: $22
    xor l                                         ; $434d: $ad
    ld c, a                                       ; $434e: $4f
    daa                                           ; $434f: $27
    inc sp                                        ; $4350: $33
    ld b, d                                       ; $4351: $42
    ld a, [de]                                    ; $4352: $1a
    ld c, e                                       ; $4353: $4b
    ld b, e                                       ; $4354: $43
    adc $53                                       ; $4355: $ce $53
    rst $00                                       ; $4357: $c7
    ld l, $00                                     ; $4358: $2e $00
    nop                                           ; $435a: $00
    ldh [$66], a                                  ; $435b: $e0 $66
    ld b, b                                       ; $435d: $40

jr_0b9_435e:
    jr jr_0b9_43a0                                ; $435e: $18 $40

    ld a, e                                       ; $4360: $7b
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    cp c                                          ; $4363: $b9
    ld hl, $535f                                  ; $4364: $21 $5f $53
    adc a                                         ; $4367: $8f
    nop                                           ; $4368: $00
    ld hl, $a000                                  ; $4369: $21 $00 $a0
    ld h, [hl]                                    ; $436c: $66
    add hl, de                                    ; $436d: $19
    ld [bc], a                                    ; $436e: $02
    ld [$ac2b], sp                                ; $436f: $08 $2b $ac
    ld b, a                                       ; $4372: $47
    rst $08                                       ; $4373: $cf
    ld d, a                                       ; $4374: $57
    pop af                                        ; $4375: $f1
    ld e, a                                       ; $4376: $5f
    xor $4f                                       ; $4377: $ee $4f
    ld h, b                                       ; $4379: $60
    inc b                                         ; $437a: $04
    ld h, [hl]                                    ; $437b: $66
    ld a, [hl+]                                   ; $437c: $2a
    nop                                           ; $437d: $00
    jr nz, jr_0b9_43cc                            ; $437e: $20 $4c

jr_0b9_4380:
    ld b, a                                       ; $4380: $47
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    srl [hl]                                      ; $4383: $cb $3e
    db $fc                                        ; $4385: $fc
    ld a, e                                       ; $4386: $7b
    nop                                           ; $4387: $00
    jr nz, jr_0b9_43ea                            ; $4388: $20 $60

    add hl, bc                                    ; $438a: $09
    ret                                           ; $438b: $c9


    ld [hl], $ae                                  ; $438c: $36 $ae
    ld d, e                                       ; $438e: $53
    inc h                                         ; $438f: $24
    ld [hl+], a                                   ; $4390: $22
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    ld b, e                                       ; $4393: $43
    ld l, c                                       ; $4394: $69
    adc c                                         ; $4395: $89
    nop                                           ; $4396: $00
    ret nz                                        ; $4397: $c0

    db $10                                        ; $4398: $10
    ld [bc], a                                    ; $4399: $02
    nop                                           ; $439a: $00
    ld e, $2a                                     ; $439b: $1e $2a
    rra                                           ; $439d: $1f
    ld c, e                                       ; $439e: $4b
    ld c, a                                       ; $439f: $4f

jr_0b9_43a0:
    nop                                           ; $43a0: $00
    inc hl                                        ; $43a1: $23

jr_0b9_43a2:
    nop                                           ; $43a2: $00
    and d                                         ; $43a3: $a2
    ld a, [de]                                    ; $43a4: $1a
    ld e, a                                       ; $43a5: $5f
    rrca                                          ; $43a6: $0f
    adc l                                         ; $43a7: $8d
    add hl, bc                                    ; $43a8: $09
    ld c, c                                       ; $43a9: $49
    dec sp                                        ; $43aa: $3b
    xor $53                                       ; $43ab: $ee $53

jr_0b9_43ad:
    push af                                       ; $43ad: $f5
    ld [hl], a                                    ; $43ae: $77
    pop af                                        ; $43af: $f1
    ld e, a                                       ; $43b0: $5f
    nop                                           ; $43b1: $00
    inc e                                         ; $43b2: $1c
    ld l, a                                       ; $43b3: $6f
    ld e, e                                       ; $43b4: $5b
    add hl, hl                                    ; $43b5: $29
    ld [hl-], a                                   ; $43b6: $32
    rst $38                                       ; $43b7: $ff
    ld a, a                                       ; $43b8: $7f
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    rst $38                                       ; $43bb: $ff
    ld a, a                                       ; $43bc: $7f
    nop                                           ; $43bd: $00
    jr nz, jr_0b9_4380                            ; $43be: $20 $c0

    db $10                                        ; $43c0: $10
    ret nz                                        ; $43c1: $c0

    nop                                           ; $43c2: $00
    dec h                                         ; $43c3: $25
    ld h, $81                                     ; $43c4: $26 $81
    dec c                                         ; $43c6: $0d
    xor c                                         ; $43c7: $a9
    ld a, [hl-]                                   ; $43c8: $3a
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    di                                            ; $43cb: $f3

jr_0b9_43cc:
    dec b                                         ; $43cc: $05
    ld [c], a                                     ; $43cd: $e2
    ld c, h                                       ; $43ce: $4c
    xor d                                         ; $43cf: $aa
    nop                                           ; $43d0: $00
    ld b, $00                                     ; $43d1: $06 $00
    ld a, a                                       ; $43d3: $7f
    ld a, [hl-]                                   ; $43d4: $3a
    cp [hl]                                       ; $43d5: $be
    dec d                                         ; $43d6: $15
    ld a, a                                       ; $43d7: $7f
    ld e, e                                       ; $43d8: $5b
    nop                                           ; $43d9: $00
    inc b                                         ; $43da: $04
    scf                                           ; $43db: $37
    ld a, [bc]                                    ; $43dc: $0a
    and b                                         ; $43dd: $a0
    dec b                                         ; $43de: $05
    ld c, b                                       ; $43df: $48
    nop                                           ; $43e0: $00
    ret nz                                        ; $43e1: $c0

    inc b                                         ; $43e2: $04
    adc [hl]                                      ; $43e3: $8e
    ld c, a                                       ; $43e4: $4f
    add l                                         ; $43e5: $85
    ld h, $f5                                     ; $43e6: $26 $f5
    ld [hl], e                                    ; $43e8: $73
    nop                                           ; $43e9: $00

jr_0b9_43ea:
    nop                                           ; $43ea: $00
    rst $38                                       ; $43eb: $ff
    ld a, a                                       ; $43ec: $7f
    nop                                           ; $43ed: $00
    jr nz, jr_0b9_43f1                            ; $43ee: $20 $01

    inc b                                         ; $43f0: $04

jr_0b9_43f1:
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    rst $38                                       ; $43f3: $ff

jr_0b9_43f4:
    ld a, a                                       ; $43f4: $7f
    nop                                           ; $43f5: $00
    jr nz, jr_0b9_43a2                            ; $43f6: $20 $aa

    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    rrca                                          ; $43fb: $0f
    inc a                                         ; $43fc: $3c
    ld e, a                                       ; $43fd: $5f
    ld bc, $04e0                                  ; $43fe: $01 $e0 $04
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    ld e, $0f                                     ; $4403: $1e $0f
    and [hl]                                      ; $4405: $a6
    ld a, l                                       ; $4406: $7d
    ld b, b                                       ; $4407: $40
    inc [hl]                                      ; $4408: $34
    ld bc, $b104                                  ; $4409: $01 $04 $b1
    nop                                           ; $440c: $00
    ld b, b                                       ; $440d: $40
    jr c, jr_0b9_43ad                             ; $440e: $38 $9d

    dec d                                         ; $4410: $15
    nop                                           ; $4411: $00
    inc b                                         ; $4412: $04
    rst $10                                       ; $4413: $d7
    dec b                                         ; $4414: $05
    ld e, l                                       ; $4415: $5d
    dec hl                                        ; $4416: $2b
    nop                                           ; $4417: $00
    inc a                                         ; $4418: $3c
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    ret                                           ; $441b: $c9


    ld [hl], $10                                  ; $441c: $36 $10
    inc a                                         ; $441e: $3c
    ld h, b                                       ; $441f: $60
    add hl, bc                                    ; $4420: $09
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff
    ld a, a                                       ; $4424: $7f
    nop                                           ; $4425: $00
    jr nz, @+$62                                  ; $4426: $20 $60

    add hl, bc                                    ; $4428: $09
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    rst $38                                       ; $442b: $ff
    ld a, a                                       ; $442c: $7f
    nop                                           ; $442d: $00
    jr nz, @+$42                                  ; $442e: $20 $40

    inc [hl]                                      ; $4430: $34
    ld b, b                                       ; $4431: $40
    nop                                           ; $4432: $00
    db $10                                        ; $4433: $10
    inc a                                         ; $4434: $3c
    dec a                                         ; $4435: $3d
    inc sp                                        ; $4436: $33
    inc sp                                        ; $4437: $33
    dec c                                         ; $4438: $0d
    ld bc, $4500                                  ; $4439: $01 $00 $45
    ld h, c                                       ; $443c: $61
    dec sp                                        ; $443d: $3b
    dec bc                                        ; $443e: $0b
    adc h                                         ; $443f: $8c
    ld a, [hl]                                    ; $4440: $7e
    add sp, $08                                   ; $4441: $e8 $08
    adc h                                         ; $4443: $8c
    halt                                          ; $4444: $76
    ei                                            ; $4445: $fb
    ld bc, $3d03                                  ; $4446: $01 $03 $3d
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    ld a, $0b                                     ; $444b: $3e $0b
    sbc $53                                       ; $444d: $de $53
    xor d                                         ; $444f: $aa
    nop                                           ; $4450: $00
    ld b, b                                       ; $4451: $40
    nop                                           ; $4452: $00
    db $10                                        ; $4453: $10
    inc a                                         ; $4454: $3c
    rst $38                                       ; $4455: $ff
    ld e, e                                       ; $4456: $5b
    ld [hl], a                                    ; $4457: $77
    dec b                                         ; $4458: $05
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    rst $38                                       ; $445b: $ff
    ld a, a                                       ; $445c: $7f
    nop                                           ; $445d: $00
    jr nz, jr_0b9_44d7                            ; $445e: $20 $77

    dec b                                         ; $4460: $05
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    ld a, a                                       ; $4464: $7f
    nop                                           ; $4465: $00
    jr nz, jr_0b9_43f4                            ; $4466: $20 $8c

    ld a, [hl]                                    ; $4468: $7e
    ld bc, $1000                                  ; $4469: $01 $00 $10
    inc a                                         ; $446c: $3c
    or $00                                        ; $446d: $f6 $00
    ld a, [$0122]                                 ; $446f: $fa $22 $01
    inc b                                         ; $4472: $04
    ld c, $7f                                     ; $4473: $0e $7f
    ld e, h                                       ; $4475: $5c
    rrca                                          ; $4476: $0f

jr_0b9_4477:
    ld b, h                                       ; $4477: $44
    ld d, l                                       ; $4478: $55
    ld hl, $2910                                  ; $4479: $21 $10 $29
    ld l, [hl]                                    ; $447c: $6e
    ld h, c                                       ; $447d: $61
    ld b, h                                       ; $447e: $44
    or e                                          ; $447f: $b3
    ld a, a                                       ; $4480: $7f
    ld bc, $d104                                  ; $4481: $01 $04 $d1
    add hl, bc                                    ; $4484: $09
    rst $18                                       ; $4485: $df
    inc de                                        ; $4486: $13
    rlc b                                         ; $4487: $cb $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    ld e, c                                       ; $448b: $59
    ld e, $cd                                     ; $448c: $1e $cd
    inc d                                         ; $448e: $14
    rst $38                                       ; $448f: $ff
    ld a, a                                       ; $4490: $7f
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    rst $38                                       ; $4493: $ff
    ld a, a                                       ; $4494: $7f
    nop                                           ; $4495: $00
    jr nz, @+$01                                  ; $4496: $20 $ff

    ld a, a                                       ; $4498: $7f
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    rst $38                                       ; $449b: $ff
    ld a, a                                       ; $449c: $7f
    nop                                           ; $449d: $00
    jr nz, jr_0b9_44e4                            ; $449e: $20 $44

    ld d, l                                       ; $44a0: $55
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    rst $38                                       ; $44a3: $ff
    dec de                                        ; $44a4: $1b
    ld d, b                                       ; $44a5: $50
    ld bc, $7fff                                  ; $44a6: $01 $ff $7f
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    ld de, $a11a                                  ; $44ab: $11 $1a $a1
    ld d, h                                       ; $44ae: $54
    ld a, l                                       ; $44af: $7d
    rrca                                          ; $44b0: $0f
    nop                                           ; $44b1: $00
    db $10                                        ; $44b2: $10
    ld a, [hl+]                                   ; $44b3: $2a
    ld l, [hl]                                    ; $44b4: $6e
    sbc [hl]                                      ; $44b5: $9e
    daa                                           ; $44b6: $27
    adc h                                         ; $44b7: $8c
    nop                                           ; $44b8: $00
    ld [bc], a                                    ; $44b9: $02

jr_0b9_44ba:
    nop                                           ; $44ba: $00
    call $787a                                    ; $44bb: $cd $7a $78
    ld b, $00                                     ; $44be: $06 $00
    jr nc, jr_0b9_44c2                            ; $44c0: $30 $00

jr_0b9_44c2:
    nop                                           ; $44c2: $00
    ld e, l                                       ; $44c3: $5d
    inc de                                        ; $44c4: $13
    rst $38                                       ; $44c5: $ff
    ld a, a                                       ; $44c6: $7f
    dec c                                         ; $44c7: $0d
    ld bc, $0000                                  ; $44c8: $01 $00 $00
    nop                                           ; $44cb: $00
    jr nz, @+$01                                  ; $44cc: $20 $ff

    ld a, a                                       ; $44ce: $7f
    dec c                                         ; $44cf: $0d
    ld bc, $0000                                  ; $44d0: $01 $00 $00
    nop                                           ; $44d3: $00
    jr nz, jr_0b9_4477                            ; $44d4: $20 $a1

    ld d, h                                       ; $44d6: $54

jr_0b9_44d7:
    ld a, l                                       ; $44d7: $7d
    rrca                                          ; $44d8: $0f
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    ld a, [hl]                                    ; $44db: $7e
    ld e, e                                       ; $44dc: $5b
    ld d, d                                       ; $44dd: $52
    ld bc, $58e1                                  ; $44de: $01 $e1 $58
    ld bc, $1500                                  ; $44e1: $01 $00 $15

jr_0b9_44e4:
    ld [bc], a                                    ; $44e4: $02
    xor h                                         ; $44e5: $ac
    nop                                           ; $44e6: $00
    rst $38                                       ; $44e7: $ff
    rrca                                          ; $44e8: $0f
    ld b, c                                       ; $44e9: $41
    inc h                                         ; $44ea: $24
    add hl, hl                                    ; $44eb: $29
    ld [hl], d                                    ; $44ec: $72
    ld [hl], a                                    ; $44ed: $77
    ld [bc], a                                    ; $44ee: $02
    cp b                                          ; $44ef: $b8
    ld l, a                                       ; $44f0: $6f
    ld [bc], a                                    ; $44f1: $02
    nop                                           ; $44f2: $00
    sbc d                                         ; $44f3: $9a
    ld b, $24                                     ; $44f4: $06 $24
    ld l, c                                       ; $44f6: $69
    nop                                           ; $44f7: $00
    jr nc, @+$42                                  ; $44f8: $30 $40

    db $10                                        ; $44fa: $10
    ld e, h                                       ; $44fb: $5c
    inc de                                        ; $44fc: $13
    rst $38                                       ; $44fd: $ff
    ld a, a                                       ; $44fe: $7f
    rrca                                          ; $44ff: $0f
    ld bc, $0000                                  ; $4500: $01 $00 $00
    nop                                           ; $4503: $00
    jr nz, @+$01                                  ; $4504: $20 $ff

    ld a, a                                       ; $4506: $7f
    rrca                                          ; $4507: $0f
    ld bc, $0000                                  ; $4508: $01 $00 $00
    nop                                           ; $450b: $00
    jr nz, jr_0b9_44ba                            ; $450c: $20 $ac

    nop                                           ; $450e: $00
    rst $38                                       ; $450f: $ff
    rrca                                          ; $4510: $0f
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    rst $38                                       ; $4513: $ff
    ld a, a                                       ; $4514: $7f
    ld h, l                                       ; $4515: $65
    ld c, l                                       ; $4516: $4d
    jr nc, jr_0b9_451a                            ; $4517: $30 $01

    inc h                                         ; $4519: $24

jr_0b9_451a:
    nop                                           ; $451a: $00
    inc a                                         ; $451b: $3c
    rrca                                          ; $451c: $0f
    ld [hl], b                                    ; $451d: $70
    ld bc, $38e2                                  ; $451e: $01 $e2 $38
    nop                                           ; $4521: $00
    inc d                                         ; $4522: $14
    dec h                                         ; $4523: $25
    ld [hl], c                                    ; $4524: $71
    db $dd                                        ; $4525: $dd
    ld b, e                                       ; $4526: $43
    adc h                                         ; $4527: $8c
    ld a, d                                       ; $4528: $7a
    nop                                           ; $4529: $00
    ld [$7e6a], sp                                ; $452a: $08 $6a $7e
    cp e                                          ; $452d: $bb
    ld b, $ca                                     ; $452e: $06 $ca
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    ld a, a                                       ; $4534: $7f
    ld b, h                                       ; $4535: $44
    ld b, l                                       ; $4536: $45
    ld [hl], c                                    ; $4537: $71
    ld bc, $2000                                  ; $4538: $01 $00 $20
    rst $38                                       ; $453b: $ff
    ld a, a                                       ; $453c: $7f
    ld b, h                                       ; $453d: $44
    ld b, l                                       ; $453e: $45
    ld [hl], c                                    ; $453f: $71
    ld bc, $2000                                  ; $4540: $01 $00 $20
    inc a                                         ; $4543: $3c
    rrca                                          ; $4544: $0f
    ld [hl], b                                    ; $4545: $70
    ld bc, $38e2                                  ; $4546: $01 $e2 $38
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    and $6d                                       ; $454b: $e6 $6d
    sub l                                         ; $454d: $95
    dec b                                         ; $454e: $05
    rst $38                                       ; $454f: $ff
    ld a, a                                       ; $4550: $7f
    ld b, l                                       ; $4551: $45
    nop                                           ; $4552: $00
    dec a                                         ; $4553: $3d
    dec bc                                        ; $4554: $0b
    inc bc                                        ; $4555: $03
    ld e, l                                       ; $4556: $5d
    sub b                                         ; $4557: $90
    ld bc, $0485                                  ; $4558: $01 $85 $04
    jp hl                                         ; $455b: $e9


    ld h, c                                       ; $455c: $61
    ccf                                           ; $455d: $3f
    ld [bc], a                                    ; $455e: $02
    cp b                                          ; $455f: $b8
    ld h, a                                       ; $4560: $67
    ld bc, $1500                                  ; $4561: $01 $00 $15
    ld a, [bc]                                    ; $4564: $0a
    rlc b                                         ; $4565: $cb $00
    sbc a                                         ; $4567: $9f
    rrca                                          ; $4568: $0f
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    ld c, e                                       ; $456b: $4b
    ld l, d                                       ; $456c: $6a
    sub h                                         ; $456d: $94
    ld bc, $7ffd                                  ; $456e: $01 $fd $7f
    nop                                           ; $4571: $00
    jr nz, @+$4d                                  ; $4572: $20 $4b

    ld l, d                                       ; $4574: $6a
    sub h                                         ; $4575: $94
    ld bc, $7ffd                                  ; $4576: $01 $fd $7f
    nop                                           ; $4579: $00
    jr nz, jr_0b9_45b9                            ; $457a: $20 $3d

    dec bc                                        ; $457c: $0b
    inc bc                                        ; $457d: $03
    ld e, l                                       ; $457e: $5d
    sub b                                         ; $457f: $90
    ld bc, $0400                                  ; $4580: $01 $00 $04
    ret                                           ; $4583: $c9


    ld c, l                                       ; $4584: $4d
    rst $38                                       ; $4585: $ff

jr_0b9_4586:
    ld a, a                                       ; $4586: $7f
    dec de                                        ; $4587: $1b

jr_0b9_4588:
    ld b, $45                                     ; $4588: $06 $45
    nop                                           ; $458a: $00
    db $db                                        ; $458b: $db
    ld a, [bc]                                    ; $458c: $0a
    push af                                       ; $458d: $f5
    ld a, a                                       ; $458e: $7f

jr_0b9_458f:
    and d                                         ; $458f: $a2
    ld h, b                                       ; $4590: $60
    nop                                           ; $4591: $00
    ld [$5104], sp                                ; $4592: $08 $04 $51
    ld l, h                                       ; $4595: $6c
    ld a, d                                       ; $4596: $7a
    or b                                          ; $4597: $b0
    ld bc, $5cc0                                  ; $4598: $01 $c0 $5c
    ld c, e                                       ; $459b: $4b
    ld a, d                                       ; $459c: $7a
    cp d                                          ; $459d: $ba
    ld c, $24                                     ; $459e: $0e $24
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    call c, $547f                                 ; $45a3: $dc $7f $54
    ld bc, $2000                                  ; $45a6: $01 $00 $20
    nop                                           ; $45a9: $00
    jr nz, jr_0b9_4588                            ; $45aa: $20 $dc

    ld a, a                                       ; $45ac: $7f
    ld d, h                                       ; $45ad: $54
    ld bc, $2000                                  ; $45ae: $01 $00 $20
    nop                                           ; $45b1: $00
    jr nz, jr_0b9_458f                            ; $45b2: $20 $db

    ld a, [bc]                                    ; $45b4: $0a
    push af                                       ; $45b5: $f5
    ld a, a                                       ; $45b6: $7f
    and d                                         ; $45b7: $a2
    ld h, b                                       ; $45b8: $60

jr_0b9_45b9:
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    ld a, a                                       ; $45bc: $7f
    nop                                           ; $45bd: $00
    jr nz, jr_0b9_4586                            ; $45be: $20 $c6

jr_0b9_45c0:
    inc h                                         ; $45c0: $24
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    db $d3                                        ; $45c3: $d3
    dec b                                         ; $45c4: $05
    dec a                                         ; $45c5: $3d
    rla                                           ; $45c6: $17
    ld l, b                                       ; $45c7: $68
    inc b                                         ; $45c8: $04
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    ld d, h                                       ; $45cd: $54
    ld bc, $2000                                  ; $45ce: $01 $00 $20
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    ld a, a                                       ; $45d4: $7f
    ld d, h                                       ; $45d5: $54
    ld bc, $2000                                  ; $45d6: $01 $00 $20
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld a, a                                       ; $45dc: $7f
    nop                                           ; $45dd: $00
    jr nz, jr_0b9_45e0                            ; $45de: $20 $00

jr_0b9_45e0:
    jr nz, jr_0b9_45e2                            ; $45e0: $20 $00

jr_0b9_45e2:
    jr nz, @+$01                                  ; $45e2: $20 $ff

    ld a, a                                       ; $45e4: $7f
    nop                                           ; $45e5: $00
    jr nz, jr_0b9_45e8                            ; $45e6: $20 $00

jr_0b9_45e8:
    jr nz, jr_0b9_45ea                            ; $45e8: $20 $00

jr_0b9_45ea:
    jr nz, @-$2b                                  ; $45ea: $20 $d3

    dec b                                         ; $45ec: $05
    dec a                                         ; $45ed: $3d
    rla                                           ; $45ee: $17
    ld l, b                                       ; $45ef: $68

jr_0b9_45f0:
    inc b                                         ; $45f0: $04
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld a, a                                       ; $45f4: $7f
    nop                                           ; $45f5: $00
    jr nz, @+$6a                                  ; $45f6: $20 $68

    inc b                                         ; $45f8: $04
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    nop                                           ; $45fd: $00
    jr nz, @+$6a                                  ; $45fe: $20 $68

    inc b                                         ; $4600: $04
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    jr nz, jr_0b9_4606                            ; $4604: $20 $00

jr_0b9_4606:
    jr nz, jr_0b9_4608                            ; $4606: $20 $00

jr_0b9_4608:
    jr nz, jr_0b9_460a                            ; $4608: $20 $00

jr_0b9_460a:
    nop                                           ; $460a: $00
    nop                                           ; $460b: $00
    jr nz, jr_0b9_460e                            ; $460c: $20 $00

jr_0b9_460e:
    jr nz, jr_0b9_4610                            ; $460e: $20 $00

jr_0b9_4610:
    jr nz, jr_0b9_4612                            ; $4610: $20 $00

jr_0b9_4612:
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    jr nz, jr_0b9_4616                            ; $4614: $20 $00

jr_0b9_4616:
    jr nz, jr_0b9_4618                            ; $4616: $20 $00

jr_0b9_4618:
    jr nz, jr_0b9_461a                            ; $4618: $20 $00

jr_0b9_461a:
    jr nz, jr_0b9_461c                            ; $461a: $20 $00

jr_0b9_461c:
    jr nz, jr_0b9_461e                            ; $461c: $20 $00

jr_0b9_461e:
    jr nz, jr_0b9_4620                            ; $461e: $20 $00

jr_0b9_4620:
    jr nz, jr_0b9_4622                            ; $4620: $20 $00

jr_0b9_4622:
    jr nz, jr_0b9_4624                            ; $4622: $20 $00

jr_0b9_4624:
    jr nz, jr_0b9_463e                            ; $4624: $20 $18

    ld [hl], a                                    ; $4626: $77
    ld c, b                                       ; $4627: $48

jr_0b9_4628:
    ld b, l                                       ; $4628: $45
    nop                                           ; $4629: $00
    jr nz, jr_0b9_462c                            ; $462a: $20 $00

jr_0b9_462c:
    jr nz, jr_0b9_4646                            ; $462c: $20 $18

    ld [hl], a                                    ; $462e: $77
    ld c, b                                       ; $462f: $48
    ld b, l                                       ; $4630: $45
    nop                                           ; $4631: $00
    jr nz, jr_0b9_45c0                            ; $4632: $20 $8c

    inc c                                         ; $4634: $0c
    sub [hl]                                      ; $4635: $96
    ld hl, $0002                                  ; $4636: $21 $02 $00
    nop                                           ; $4639: $00
    jr nz, jr_0b9_466d                            ; $463a: $20 $31

    dec d                                         ; $463c: $15
    db $db                                        ; $463d: $db

jr_0b9_463e:
    dec h                                         ; $463e: $25
    ld [bc], a                                    ; $463f: $02
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00

Call_0b9_4642:
    jr nz, jr_0b9_4675                            ; $4642: $20 $31

    dec d                                         ; $4644: $15
    db $db                                        ; $4645: $db

jr_0b9_4646:
    dec h                                         ; $4646: $25
    ld [bc], a                                    ; $4647: $02
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    jr nz, jr_0b9_467d                            ; $464a: $20 $31

    dec d                                         ; $464c: $15
    db $db                                        ; $464d: $db
    dec h                                         ; $464e: $25
    ld [bc], a                                    ; $464f: $02
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    jr nz, jr_0b9_4685                            ; $4652: $20 $31

    dec d                                         ; $4654: $15
    db $db                                        ; $4655: $db
    dec h                                         ; $4656: $25
    ld [bc], a                                    ; $4657: $02
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    jr nz, jr_0b9_45e8                            ; $465a: $20 $8c

    inc c                                         ; $465c: $0c
    sub [hl]                                      ; $465d: $96
    ld hl, $0002                                  ; $465e: $21 $02 $00
    nop                                           ; $4661: $00
    jr nz, jr_0b9_45f0                            ; $4662: $20 $8c

    inc c                                         ; $4664: $0c
    sub [hl]                                      ; $4665: $96
    ld hl, $0002                                  ; $4666: $21 $02 $00
    ld [bc], a                                    ; $4669: $02
    nop                                           ; $466a: $00
    sub h                                         ; $466b: $94
    dec h                                         ; $466c: $25

jr_0b9_466d:
    ld [$6b08], sp                                ; $466d: $08 $08 $6b
    ld [$0422], sp                                ; $4670: $08 $22 $04
    ld d, h                                       ; $4673: $54
    dec h                                         ; $4674: $25

jr_0b9_4675:
    db $fd                                        ; $4675: $fd
    halt                                          ; $4676: $76
    ld a, $26                                     ; $4677: $3e $26
    nop                                           ; $4679: $00
    jr nz, jr_0b9_4682                            ; $467a: $20 $06

    dec a                                         ; $467c: $3d

jr_0b9_467d:
    ld [bc], a                                    ; $467d: $02
    nop                                           ; $467e: $00
    ld a, $26                                     ; $467f: $3e $26
    nop                                           ; $4681: $00

jr_0b9_4682:
    jr nz, jr_0b9_468a                            ; $4682: $20 $06

    dec a                                         ; $4684: $3d

jr_0b9_4685:
    ld [bc], a                                    ; $4685: $02
    nop                                           ; $4686: $00
    ld a, $26                                     ; $4687: $3e $26
    nop                                           ; $4689: $00

jr_0b9_468a:
    jr nz, jr_0b9_4692                            ; $468a: $20 $06

    dec a                                         ; $468c: $3d
    ld [bc], a                                    ; $468d: $02
    nop                                           ; $468e: $00
    ld a, $26                                     ; $468f: $3e $26
    nop                                           ; $4691: $00

jr_0b9_4692:
    jr nz, jr_0b9_4628                            ; $4692: $20 $94

    dec h                                         ; $4694: $25
    ld [$6b08], sp                                ; $4695: $08 $08 $6b
    ld [$2000], sp                                ; $4698: $08 $00 $20
    ld [bc], a                                    ; $469b: $02
    nop                                           ; $469c: $00
    ld [$6b08], sp                                ; $469d: $08 $08 $6b
    ld [$0000], sp                                ; $46a0: $08 $00 $00
    ld l, l                                       ; $46a3: $6d
    inc b                                         ; $46a4: $04
    ld b, $04                                     ; $46a5: $06 $04
    rrca                                          ; $46a7: $0f
    add hl, de                                    ; $46a8: $19

jr_0b9_46a9:
    nop                                           ; $46a9: $00
    ld [$15bd], sp                                ; $46aa: $08 $bd $15
    cp e                                          ; $46ad: $bb
    ld [hl], b                                    ; $46ae: $70
    ld e, l                                       ; $46af: $5d
    ld [hl], a                                    ; $46b0: $77

jr_0b9_46b1:
    ld hl, $ed04                                  ; $46b1: $21 $04 $ed
    ld d, c                                       ; $46b4: $51
    rst $38                                       ; $46b5: $ff
    ld a, a                                       ; $46b6: $7f
    nop                                           ; $46b7: $00
    jr nz, jr_0b9_46ba                            ; $46b8: $20 $00

jr_0b9_46ba:
    jr nz, jr_0b9_46a9                            ; $46ba: $20 $ed

    ld d, c                                       ; $46bc: $51
    rst $38                                       ; $46bd: $ff
    ld a, a                                       ; $46be: $7f
    nop                                           ; $46bf: $00
    jr nz, jr_0b9_46c2                            ; $46c0: $20 $00

jr_0b9_46c2:
    jr nz, jr_0b9_46b1                            ; $46c2: $20 $ed

    ld d, c                                       ; $46c4: $51
    rst $38                                       ; $46c5: $ff
    ld a, a                                       ; $46c6: $7f
    nop                                           ; $46c7: $00
    jr nz, jr_0b9_46ca                            ; $46c8: $20 $00

jr_0b9_46ca:
    jr nz, jr_0b9_4739                            ; $46ca: $20 $6d

    inc b                                         ; $46cc: $04
    ld b, $04                                     ; $46cd: $06 $04
    rrca                                          ; $46cf: $0f
    add hl, de                                    ; $46d0: $19
    nop                                           ; $46d1: $00
    jr nz, @+$04                                  ; $46d2: $20 $02

    nop                                           ; $46d4: $00
    ld b, $04                                     ; $46d5: $06 $04
    rrca                                          ; $46d7: $0f
    add hl, de                                    ; $46d8: $19
    ld b, d                                       ; $46d9: $42
    nop                                           ; $46da: $00
    rst $08                                       ; $46db: $cf
    dec h                                         ; $46dc: $25
    ld l, [hl]                                    ; $46dd: $6e
    ld e, e                                       ; $46de: $5b
    ld a, a                                       ; $46df: $7f
    ld b, e                                       ; $46e0: $43
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    sub h                                         ; $46e3: $94
    inc e                                         ; $46e4: $1c
    ld l, c                                       ; $46e5: $69
    inc h                                         ; $46e6: $24
    dec a                                         ; $46e7: $3d
    ld b, $00                                     ; $46e8: $06 $00
    nop                                           ; $46ea: $00
    jr nc, jr_0b9_4743                            ; $46eb: $30 $56

    jr c, jr_0b9_475a                             ; $46ed: $38 $6b

    nop                                           ; $46ef: $00
    jr nz, jr_0b9_46f2                            ; $46f0: $20 $00

jr_0b9_46f2:
    jr nz, jr_0b9_4724                            ; $46f2: $20 $30

    ld d, [hl]                                    ; $46f4: $56
    jr c, jr_0b9_4762                             ; $46f5: $38 $6b

    nop                                           ; $46f7: $00
    jr nz, jr_0b9_46fa                            ; $46f8: $20 $00

jr_0b9_46fa:
    jr nz, jr_0b9_472c                            ; $46fa: $20 $30

    ld d, [hl]                                    ; $46fc: $56
    jr c, @+$6d                                   ; $46fd: $38 $6b

    nop                                           ; $46ff: $00
    jr nz, jr_0b9_4702                            ; $4700: $20 $00

jr_0b9_4702:
    jr nz, @-$2f                                  ; $4702: $20 $cf

    dec h                                         ; $4704: $25
    ld l, [hl]                                    ; $4705: $6e
    ld e, e                                       ; $4706: $5b
    ld a, a                                       ; $4707: $7f
    ld b, e                                       ; $4708: $43
    nop                                           ; $4709: $00
    jr jr_0b9_478b                                ; $470a: $18 $7f

    dec c                                         ; $470c: $0d
    rl h                                          ; $470d: $cb $14
    ccf                                           ; $470f: $3f
    ld [hl], e                                    ; $4710: $73
    ld [hl+], a                                   ; $4711: $22
    inc b                                         ; $4712: $04
    inc bc                                        ; $4713: $03
    ld e, [hl]                                    ; $4714: $5e
    xor a                                         ; $4715: $af
    dec c                                         ; $4716: $0d
    db $ec                                        ; $4717: $ec
    ld a, a                                       ; $4718: $7f
    inc b                                         ; $4719: $04
    nop                                           ; $471a: $00
    cp c                                          ; $471b: $b9
    ld hl, $08ce                                  ; $471c: $21 $ce $08
    ld a, $2e                                     ; $471f: $3e $2e
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00

jr_0b9_4723:
    ret c                                         ; $4723: $d8

jr_0b9_4724:
    add hl, hl                                    ; $4724: $29
    ld a, e                                       ; $4725: $7b
    ld [hl], a                                    ; $4726: $77
    ld e, [hl]                                    ; $4727: $5e
    ld [hl-], a                                   ; $4728: $32
    nop                                           ; $4729: $00
    jr nz, jr_0b9_4723                            ; $472a: $20 $f7

jr_0b9_472c:
    ld l, d                                       ; $472c: $6a
    sbc $7f                                       ; $472d: $de $7f
    ld e, [hl]                                    ; $472f: $5e
    ld [hl-], a                                   ; $4730: $32
    nop                                           ; $4731: $00
    jr nz, @-$07                                  ; $4732: $20 $f7

    ld l, d                                       ; $4734: $6a
    sbc $7f                                       ; $4735: $de $7f
    ld e, [hl]                                    ; $4737: $5e
    ld [hl-], a                                   ; $4738: $32

jr_0b9_4739:
    nop                                           ; $4739: $00
    jr nz, jr_0b9_473f                            ; $473a: $20 $03

    ld e, [hl]                                    ; $473c: $5e
    xor a                                         ; $473d: $af
    dec c                                         ; $473e: $0d

jr_0b9_473f:
    db $ec                                        ; $473f: $ec
    ld a, a                                       ; $4740: $7f
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00

jr_0b9_4743:
    xor l                                         ; $4743: $ad
    ld [$2000], sp                                ; $4744: $08 $00 $20
    ld [hl], b                                    ; $4747: $70
    inc b                                         ; $4748: $04
    inc bc                                        ; $4749: $03
    nop                                           ; $474a: $00
    dec [hl]                                      ; $474b: $35
    ld de, $08ad                                  ; $474c: $11 $ad $08
    rst $38                                       ; $474f: $ff
    dec h                                         ; $4750: $25
    ld b, h                                       ; $4751: $44
    ld [$1954], sp                                ; $4752: $08 $54 $19
    sbc d                                         ; $4755: $9a
    ld [hl], a                                    ; $4756: $77
    ld e, a                                       ; $4757: $5f
    ld [hl-], a                                   ; $4758: $32
    ld [bc], a                                    ; $4759: $02

jr_0b9_475a:
    nop                                           ; $475a: $00
    ld d, h                                       ; $475b: $54
    add hl, de                                    ; $475c: $19
    inc e                                         ; $475d: $1c
    ld l, $8e                                     ; $475e: $2e $8e
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00

jr_0b9_4762:
    nop                                           ; $4762: $00
    cp c                                          ; $4763: $b9
    ld hl, $779c                                  ; $4764: $21 $9c $77
    xor [hl]                                      ; $4767: $ae
    ld [$2000], sp                                ; $4768: $08 $00 $20
    cp c                                          ; $476b: $b9
    ld hl, $779c                                  ; $476c: $21 $9c $77
    xor [hl]                                      ; $476f: $ae
    ld [$2000], sp                                ; $4770: $08 $00 $20
    dec [hl]                                      ; $4773: $35
    ld de, $08ad                                  ; $4774: $11 $ad $08
    rst $38                                       ; $4777: $ff
    dec h                                         ; $4778: $25
    ld [bc], a                                    ; $4779: $02
    nop                                           ; $477a: $00
    rst $38                                       ; $477b: $ff
    ld a, a                                       ; $477c: $7f
    rst $28                                       ; $477d: $ef
    stop                                          ; $477e: $10 $00
    jr nz, jr_0b9_47a4                            ; $4780: $20 $22

    inc b                                         ; $4782: $04
    sbc $7b                                       ; $4783: $de $7b
    ld [$ac21], sp                                ; $4785: $08 $21 $ac
    add hl, sp                                    ; $4788: $39
    inc bc                                        ; $4789: $03
    nop                                           ; $478a: $00

jr_0b9_478b:
    rst $18                                       ; $478b: $df
    ld a, $58                                     ; $478c: $3e $58
    dec d                                         ; $478e: $15
    ld a, d                                       ; $478f: $7a
    ld l, a                                       ; $4790: $6f
    inc b                                         ; $4791: $04
    nop                                           ; $4792: $00
    ld d, l                                       ; $4793: $55
    add hl, de                                    ; $4794: $19
    db $fd                                        ; $4795: $fd
    dec h                                         ; $4796: $25
    adc [hl]                                      ; $4797: $8e
    nop                                           ; $4798: $00
    ld bc, $7600                                  ; $4799: $01 $00 $76
    add hl, de                                    ; $479c: $19
    ld c, b                                       ; $479d: $48
    ld [$2e7f], sp                                ; $479e: $08 $7f $2e
    nop                                           ; $47a1: $00
    jr nz, @+$78                                  ; $47a2: $20 $76

jr_0b9_47a4:
    add hl, de                                    ; $47a4: $19
    ld c, b                                       ; $47a5: $48
    ld [$2e7f], sp                                ; $47a6: $08 $7f $2e
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    jr nz, @+$0a                                  ; $47ac: $20 $08

    ld hl, $39ac                                  ; $47ae: $21 $ac $39
    ld bc, $1800                                  ; $47b1: $01 $00 $18
    ld h, e                                       ; $47b4: $63
    add $18                                       ; $47b5: $c6 $18
    ld c, a                                       ; $47b7: $4f
    dec e                                         ; $47b8: $1d
    ld [bc], a                                    ; $47b9: $02
    nop                                           ; $47ba: $00
    inc [hl]                                      ; $47bb: $34
    ld b, d                                       ; $47bc: $42
    cp $4a                                        ; $47bd: $fe $4a
    ld c, b                                       ; $47bf: $48
    dec l                                         ; $47c0: $2d
    ld hl, $6f04                                  ; $47c1: $21 $04 $6f
    dec h                                         ; $47c4: $25
    ld d, a                                       ; $47c5: $57
    ld l, a                                       ; $47c6: $6f
    add $18                                       ; $47c7: $c6 $18
    inc b                                         ; $47c9: $04

jr_0b9_47ca:
    nop                                           ; $47ca: $00
    push hl                                       ; $47cb: $e5
    jr nz, jr_0b9_4839                            ; $47cc: $20 $6b

    nop                                           ; $47ce: $00
    pop af                                        ; $47cf: $f1
    inc c                                         ; $47d0: $0c
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    ld e, d                                       ; $47d3: $5a
    ld [hl], e                                    ; $47d4: $73
    inc b                                         ; $47d5: $04
    nop                                           ; $47d6: $00
    dec b                                         ; $47d7: $05
    ld [$2000], sp                                ; $47d8: $08 $00 $20
    db $ed                                        ; $47db: $ed
    ld d, c                                       ; $47dc: $51
    or h                                          ; $47dd: $b4
    ld h, d                                       ; $47de: $62
    rst $30                                       ; $47df: $f7
    ld l, d                                       ; $47e0: $6a
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    adc c                                         ; $47e3: $89
    ld [$2000], sp                                ; $47e4: $08 $00 $20
    xor d                                         ; $47e7: $aa
    ld [$0403], sp                                ; $47e8: $08 $03 $04
    ld c, $42                                     ; $47eb: $0e $42
    db $eb                                        ; $47ed: $eb
    db $10                                        ; $47ee: $10
    sbc a                                         ; $47ef: $9f
    ld d, a                                       ; $47f0: $57
    ld [hl+], a                                   ; $47f1: $22
    inc b                                         ; $47f2: $04
    or h                                          ; $47f3: $b4
    dec h                                         ; $47f4: $25
    ccf                                           ; $47f5: $3f
    ld c, e                                       ; $47f6: $4b
    ret z                                         ; $47f7: $c8

    inc d                                         ; $47f8: $14
    ld bc, $7400                                  ; $47f9: $01 $00 $74
    ld c, d                                       ; $47fc: $4a
    ld b, [hl]                                    ; $47fd: $46
    dec [hl]                                      ; $47fe: $35
    rst $38                                       ; $47ff: $ff
    ld a, a                                       ; $4800: $7f
    jr nz, jr_0b9_480b                            ; $4801: $20 $08

    adc d                                         ; $4803: $8a
    ld sp, $0805                                  ; $4804: $31 $05 $08
    db $10                                        ; $4807: $10
    ld b, d                                       ; $4808: $42
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00

jr_0b9_480b:
    ld e, d                                       ; $480b: $5a
    ld [hl], e                                    ; $480c: $73
    ld h, h                                       ; $480d: $64
    dec e                                         ; $480e: $1d
    dec b                                         ; $480f: $05
    ld [$2000], sp                                ; $4810: $08 $00 $20
    ld c, c                                       ; $4813: $49
    ld c, c                                       ; $4814: $49
    ld [hl], d                                    ; $4815: $72
    ld e, [hl]                                    ; $4816: $5e
    dec b                                         ; $4817: $05
    dec a                                         ; $4818: $3d
    ld bc, $9400                                  ; $4819: $01 $00 $94
    ld l, [hl]                                    ; $481c: $6e
    nop                                           ; $481d: $00
    jr nz, jr_0b9_47ca                            ; $481e: $20 $aa

    ld [$0000], sp                                ; $4820: $08 $00 $00
    sbc c                                         ; $4823: $99
    ld b, d                                       ; $4824: $42
    dec l                                         ; $4825: $2d
    add hl, de                                    ; $4826: $19
    dec b                                         ; $4827: $05
    ld [$0844], sp                                ; $4828: $08 $44 $08
    di                                            ; $482b: $f3
    ld sp, $639d                                  ; $482c: $31 $9d $63
    ld c, e                                       ; $482f: $4b
    dec h                                         ; $4830: $25
    ld h, e                                       ; $4831: $63
    ld [$367a], sp                                ; $4832: $08 $7a $36
    ld e, a                                       ; $4835: $5f
    ld c, a                                       ; $4836: $4f
    cp a                                          ; $4837: $bf
    ld h, a                                       ; $4838: $67

jr_0b9_4839:
    ld hl, $5308                                  ; $4839: $21 $08 $53
    add hl, de                                    ; $483c: $19
    inc b                                         ; $483d: $04
    nop                                           ; $483e: $00
    dec b                                         ; $483f: $05
    ld [$0002], sp                                ; $4840: $08 $02 $00
    add $25                                       ; $4843: $c6 $25
    inc bc                                        ; $4845: $03
    dec d                                         ; $4846: $15
    xor c                                         ; $4847: $a9
    ld [hl], $00                                  ; $4848: $36 $00
    nop                                           ; $484a: $00
    adc b                                         ; $484b: $88
    ld b, c                                       ; $484c: $41
    ld sp, $0062                                  ; $484d: $31 $62 $00
    jr nz, jr_0b9_4852                            ; $4850: $20 $00

jr_0b9_4852:
    ld [$7739], sp                                ; $4852: $08 $39 $77
    ld h, $08                                     ; $4855: $26 $08
    rst $38                                       ; $4857: $ff
    ld a, a                                       ; $4858: $7f
    inc b                                         ; $4859: $04
    inc b                                         ; $485a: $04
    xor $41                                       ; $485b: $ee $41
    db $dd                                        ; $485d: $dd
    ld [hl], a                                    ; $485e: $77
    dec c                                         ; $485f: $0d
    dec d                                         ; $4860: $15
    ld b, c                                       ; $4861: $41
    ld [$3ebe], sp                                ; $4862: $08 $be $3e
    dec bc                                        ; $4865: $0b
    add hl, de                                    ; $4866: $19
    ld a, e                                       ; $4867: $7b
    ld l, a                                       ; $4868: $6f
    ld bc, $5004                                  ; $4869: $01 $04 $50
    ld d, d                                       ; $486c: $52
    cp [hl]                                       ; $486d: $be
    ld h, $0b                                     ; $486e: $26 $0b
    add hl, de                                    ; $4870: $19
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    ld c, c                                       ; $4873: $49
    ld l, $1a                                     ; $4874: $2e $1a
    ld d, e                                       ; $4876: $53
    push bc                                       ; $4877: $c5
    db $10                                        ; $4878: $10
    add $25                                       ; $4879: $c6 $25
    adc c                                         ; $487b: $89
    ld [hl-], a                                   ; $487c: $32
    adc c                                         ; $487d: $89
    ld [hl], $c5                                  ; $487e: $36 $c5
    stop                                          ; $4880: $10 $00
    inc e                                         ; $4882: $1c
    adc c                                         ; $4883: $89
    ld [hl-], a                                   ; $4884: $32
    ld e, d                                       ; $4885: $5a
    ld a, e                                       ; $4886: $7b
    adc $5d                                       ; $4887: $ce $5d
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    sub h                                         ; $488b: $94
    ld l, [hl]                                    ; $488c: $6e
    cp l                                          ; $488d: $bd
    ld a, e                                       ; $488e: $7b
    ld b, $08                                     ; $488f: $06 $08
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    ld c, d                                       ; $4893: $4a
    add hl, hl                                    ; $4894: $29
    cpl                                           ; $4895: $2f
    ld b, d                                       ; $4896: $42
    dec b                                         ; $4897: $05
    inc b                                         ; $4898: $04
    jr nz, jr_0b9_489f                            ; $4899: $20 $04

    rst $28                                       ; $489b: $ef
    dec a                                         ; $489c: $3d
    add hl, sp                                    ; $489d: $39
    ld h, e                                       ; $489e: $63

jr_0b9_489f:
    jr z, @+$27                                   ; $489f: $28 $25

    push bc                                       ; $48a1: $c5
    inc e                                         ; $48a2: $1c
    ld sp, $6d4a                                  ; $48a3: $31 $4a $6d
    dec d                                         ; $48a6: $15
    ld e, b                                       ; $48a7: $58
    ld [hl], e                                    ; $48a8: $73
    and h                                         ; $48a9: $a4
    ld [$023c], sp                                ; $48aa: $08 $3c $02
    ld l, b                                       ; $48ad: $68
    ld [hl-], a                                   ; $48ae: $32
    ld c, [hl]                                    ; $48af: $4e
    ld bc, $08a4                                  ; $48b0: $01 $a4 $08
    ld a, [hl]                                    ; $48b3: $7e
    ld [bc], a                                    ; $48b4: $02
    adc b                                         ; $48b5: $88
    ld [hl-], a                                   ; $48b6: $32
    adc c                                         ; $48b7: $89
    ld [hl-], a                                   ; $48b8: $32
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    ld l, b                                       ; $48bb: $68
    ld [hl-], a                                   ; $48bc: $32
    sub h                                         ; $48bd: $94
    ld l, [hl]                                    ; $48be: $6e
    nop                                           ; $48bf: $00
    jr nz, jr_0b9_48c3                            ; $48c0: $20 $01

    inc b                                         ; $48c2: $04

jr_0b9_48c3:
    ld l, b                                       ; $48c3: $68
    ld [hl-], a                                   ; $48c4: $32
    jr @+$79                                      ; $48c5: $18 $77

    db $10                                        ; $48c7: $10
    ld h, [hl]                                    ; $48c8: $66
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    dec b                                         ; $48cb: $05
    inc b                                         ; $48cc: $04
    add $18                                       ; $48cd: $c6 $18
    add a                                         ; $48cf: $87
    ld [$0400], sp                                ; $48d0: $08 $00 $04
    dec [hl]                                      ; $48d3: $35
    ld a, [hl-]                                   ; $48d4: $3a
    add hl, sp                                    ; $48d5: $39
    ld l, e                                       ; $48d6: $6b
    ld [$a525], sp                                ; $48d7: $08 $25 $a5
    inc d                                         ; $48da: $14
    rst $30                                       ; $48db: $f7
    ld e, [hl]                                    ; $48dc: $5e
    adc $39                                       ; $48dd: $ce $39
    sbc $7b                                       ; $48df: $de $7b
    ld hl, $6804                                  ; $48e1: $21 $04 $68
    ld [hl-], a                                   ; $48e4: $32
    sub d                                         ; $48e5: $92
    ld bc, $029e                                  ; $48e6: $01 $9e $02
    and l                                         ; $48e9: $a5
    inc b                                         ; $48ea: $04
    ld a, [hl-]                                   ; $48eb: $3a
    ld [bc], a                                    ; $48ec: $02
    ld l, b                                       ; $48ed: $68
    ld [hl-], a                                   ; $48ee: $32
    ld a, a                                       ; $48ef: $7f
    inc bc                                        ; $48f0: $03
    nop                                           ; $48f1: $00
    inc e                                         ; $48f2: $1c
    push hl                                       ; $48f3: $e5
    inc a                                         ; $48f4: $3c
    ld l, b                                       ; $48f5: $68
    ld l, $ce                                     ; $48f6: $2e $ce
    ld e, c                                       ; $48f8: $59
    nop                                           ; $48f9: $00
    db $10                                        ; $48fa: $10
    ld l, c                                       ; $48fb: $69
    ld c, c                                       ; $48fc: $49
    rst $30                                       ; $48fd: $f7
    ld [hl], d                                    ; $48fe: $72
    ld l, b                                       ; $48ff: $68

jr_0b9_4900:
    ld l, $20                                     ; $4900: $2e $20
    inc b                                         ; $4902: $04
    add l                                         ; $4903: $85
    ld e, l                                       ; $4904: $5d
    ld l, b                                       ; $4905: $68
    ld l, $48                                     ; $4906: $2e $48
    ld sp, $0843                                  ; $4908: $31 $43 $08
    ld [$b36a], sp                                ; $490b: $08 $6a $b3
    add hl, hl                                    ; $490e: $29
    ld e, a                                       ; $490f: $5f
    ld c, e                                       ; $4910: $4b
    rst $20                                       ; $4911: $e7
    inc e                                         ; $4912: $1c
    rst $30                                       ; $4913: $f7
    ld e, [hl]                                    ; $4914: $5e
    db $10                                        ; $4915: $10
    ld b, d                                       ; $4916: $42
    rst $38                                       ; $4917: $ff
    ld a, a                                       ; $4918: $7f
    nop                                           ; $4919: $00
    inc b                                         ; $491a: $04
    cp $11                                        ; $491b: $fe $11
    add hl, bc                                    ; $491d: $09
    dec h                                         ; $491e: $25
    rst $38                                       ; $491f: $ff
    ld a, a                                       ; $4920: $7f
    rlca                                          ; $4921: $07
    add hl, bc                                    ; $4922: $09
    rst $30                                       ; $4923: $f7
    ld bc, $2e67                                  ; $4924: $01 $67 $2e
    ccf                                           ; $4927: $3f
    inc bc                                        ; $4928: $03
    nop                                           ; $4929: $00
    inc e                                         ; $492a: $1c
    rst $00                                       ; $492b: $c7
    dec [hl]                                      ; $492c: $35
    rra                                           ; $492d: $1f
    inc bc                                        ; $492e: $03
    cpl                                           ; $492f: $2f
    ld d, [hl]                                    ; $4930: $56
    nop                                           ; $4931: $00
    inc d                                         ; $4932: $14
    ld b, a                                       ; $4933: $47
    ld l, $48                                     ; $4934: $2e $48
    ld b, l                                       ; $4936: $45
    ld d, c                                       ; $4937: $51
    ld e, d                                       ; $4938: $5a
    ld b, c                                       ; $4939: $41
    inc b                                         ; $493a: $04
    ld e, a                                       ; $493b: $5f
    ld bc, $0d48                                  ; $493c: $01 $48 $0d
    rst $38                                       ; $493f: $ff
    ld b, e                                       ; $4940: $43
    ld bc, $b700                                  ; $4941: $01 $00 $b7
    ld [hl-], a                                   ; $4944: $32
    xor e                                         ; $4945: $ab
    halt                                          ; $4946: $76
    and e                                         ; $4947: $a3
    jr nz, jr_0b9_496a                            ; $4948: $20 $20

    inc b                                         ; $494a: $04
    xor l                                         ; $494b: $ad
    dec [hl]                                      ; $494c: $35
    or [hl]                                       ; $494d: $b6
    ld d, [hl]                                    ; $494e: $56
    ld [$0021], sp                                ; $494f: $08 $21 $00
    inc b                                         ; $4952: $04
    ld b, a                                       ; $4953: $47
    ld l, $c4                                     ; $4954: $2e $c4
    inc l                                         ; $4956: $2c
    ldh a, [$62]                                  ; $4957: $f0 $62
    daa                                           ; $4959: $27
    ld de, $014f                                  ; $495a: $11 $4f $01
    ld a, e                                       ; $495d: $7b
    ld [bc], a                                    ; $495e: $02
    ld b, a                                       ; $495f: $47
    ld a, [hl+]                                   ; $4960: $2a
    nop                                           ; $4961: $00
    jr nz, jr_0b9_4900                            ; $4962: $20 $9c

    ld [bc], a                                    ; $4964: $02
    ld [hl], d                                    ; $4965: $72
    ld h, d                                       ; $4966: $62
    ret                                           ; $4967: $c9


    inc d                                         ; $4968: $14
    nop                                           ; $4969: $00

jr_0b9_496a:
    inc d                                         ; $496a: $14
    ld b, a                                       ; $496b: $47
    ld a, [hl+]                                   ; $496c: $2a
    ld c, b                                       ; $496d: $48
    ld b, l                                       ; $496e: $45
    ld d, c                                       ; $496f: $51
    ld e, d                                       ; $4970: $5a
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    adc d                                         ; $4973: $8a
    dec b                                         ; $4974: $05
    ld a, [c]                                     ; $4975: $f2
    ld [$0026], sp                                ; $4976: $08 $26 $00
    ld b, c                                       ; $4979: $41
    inc c                                         ; $497a: $0c
    inc c                                         ; $497b: $0c
    ld d, d                                       ; $497c: $52
    sbc [hl]                                      ; $497d: $9e
    ld d, d                                       ; $497e: $52
    ld a, [hl+]                                   ; $497f: $2a
    nop                                           ; $4980: $00
    ld bc, $8e04                                  ; $4981: $01 $04 $8e
    dec l                                         ; $4984: $2d
    sub h                                         ; $4985: $94
    ld d, d                                       ; $4986: $52

jr_0b9_4987:
    add $18                                       ; $4987: $c6 $18
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    rst $20                                       ; $498b: $e7
    add hl, sp                                    ; $498c: $39
    db $eb                                        ; $498d: $eb
    ld l, e                                       ; $498e: $6b
    ld a, [bc]                                    ; $498f: $0a
    ld e, d                                       ; $4990: $5a
    and l                                         ; $4991: $a5
    ld [$0238], sp                                ; $4992: $08 $38 $02
    ld h, $26                                     ; $4995: $26 $26
    ccf                                           ; $4997: $3f
    inc bc                                        ; $4998: $03
    nop                                           ; $4999: $00
    inc e                                         ; $499a: $1c
    ld b, a                                       ; $499b: $47
    ld a, [hl+]                                   ; $499c: $2a
    cp $02                                        ; $499d: $fe $02
    ld d, b                                       ; $499f: $50
    ld bc, $0420                                  ; $49a0: $01 $20 $04
    add a                                         ; $49a3: $87
    add hl, sp                                    ; $49a4: $39
    ld [hl], d                                    ; $49a5: $72
    ld e, [hl]                                    ; $49a6: $5e
    nop                                           ; $49a7: $00
    jr nz, jr_0b9_49aa                            ; $49a8: $20 $00

jr_0b9_49aa:
    nop                                           ; $49aa: $00
    ret nc                                        ; $49ab: $d0

    ld [$2174], sp                                ; $49ac: $08 $74 $21
    ld b, [hl]                                    ; $49af: $46
    nop                                           ; $49b0: $00
    ld hl, $e908                                  ; $49b1: $21 $08 $e9
    ld d, c                                       ; $49b4: $51
    halt                                          ; $49b5: $76
    ld [hl], c                                    ; $49b6: $71
    ld l, a                                       ; $49b7: $6f
    nop                                           ; $49b8: $00
    ld b, c                                       ; $49b9: $41
    inc c                                         ; $49ba: $0c
    ld e, d                                       ; $49bb: $5a
    ld l, e                                       ; $49bc: $6b
    ld c, d                                       ; $49bd: $4a
    add hl, hl                                    ; $49be: $29
    inc [hl]                                      ; $49bf: $34
    ld de, $0400                                  ; $49c0: $11 $00 $04
    ld a, e                                       ; $49c3: $7b
    ld l, a                                       ; $49c4: $6f
    ld c, c                                       ; $49c5: $49
    dec l                                         ; $49c6: $2d
    or b                                          ; $49c7: $b0
    inc b                                         ; $49c8: $04
    ld b, h                                       ; $49c9: $44
    dec d                                         ; $49ca: $15
    or h                                          ; $49cb: $b4
    ld bc, $039f                                  ; $49cc: $01 $9f $03
    ld h, $2a                                     ; $49cf: $26 $2a
    nop                                           ; $49d1: $00
    inc e                                         ; $49d2: $1c
    db $dd                                        ; $49d3: $dd
    ld [bc], a                                    ; $49d4: $02
    sbc h                                         ; $49d5: $9c
    ld [hl], a                                    ; $49d6: $77
    ld h, $2a                                     ; $49d7: $26 $2a
    nop                                           ; $49d9: $00
    jr jr_0b9_4987                                ; $49da: $18 $ab

    ld c, l                                       ; $49dc: $4d
    xor a                                         ; $49dd: $af
    ld [$66d6], sp                                ; $49de: $08 $d6 $66
    ld [de], a                                    ; $49e1: $12
    dec d                                         ; $49e2: $15
    ld [hl], l                                    ; $49e3: $75
    dec e                                         ; $49e4: $1d
    or a                                          ; $49e5: $b7
    dec h                                         ; $49e6: $25
    sub l                                         ; $49e7: $95
    dec h                                         ; $49e8: $25
    ld [hl+], a                                   ; $49e9: $22
    ld [$7ddf], sp                                ; $49ea: $08 $df $7d
    and h                                         ; $49ed: $a4
    ld d, c                                       ; $49ee: $51
    xor a                                         ; $49ef: $af
    ld [$0821], sp                                ; $49f0: $08 $21 $08
    ld d, h                                       ; $49f3: $54
    dec d                                         ; $49f4: $15
    db $fd                                        ; $49f5: $fd
    add hl, hl                                    ; $49f6: $29
    dec h                                         ; $49f7: $25
    dec l                                         ; $49f8: $2d
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    ld c, [hl]                                    ; $49fb: $4e
    dec h                                         ; $49fc: $25
    ld a, d                                       ; $49fd: $7a
    ld [hl-], a                                   ; $49fe: $32
    ld l, h                                       ; $49ff: $6c
    nop                                           ; $4a00: $00
    ld hl, $2604                                  ; $4a01: $21 $04 $26

Jump_0b9_4a04:
    ld h, $7a                                     ; $4a04: $26 $7a
    ld [bc], a                                    ; $4a06: $02
    ld b, e                                       ; $4a07: $43
    dec d                                         ; $4a08: $15
    nop                                           ; $4a09: $00
    inc e                                         ; $4a0a: $1c
    cp l                                          ; $4a0b: $bd
    ld [bc], a                                    ; $4a0c: $02
    jr c, jr_0b9_4a7a                             ; $4a0d: $38 $6b

jr_0b9_4a0f:
    dec bc                                        ; $4a0f: $0b
    add hl, bc                                    ; $4a10: $09
    nop                                           ; $4a11: $00
    jr @-$74                                      ; $4a12: $18 $8a

    ld c, c                                       ; $4a14: $49
    ld a, d                                       ; $4a15: $7a
    ld [hl], e                                    ; $4a16: $73
    ld [hl], d                                    ; $4a17: $72
    ld e, d                                       ; $4a18: $5a
    inc hl                                        ; $4a19: $23
    nop                                           ; $4a1a: $00
    sbc b                                         ; $4a1b: $98
    ld hl, $25dc                                  ; $4a1c: $21 $dc $25
    ld e, $2a                                     ; $4a1f: $1e $2a
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    dec [hl]                                      ; $4a23: $35
    jr c, @+$54                                   ; $4a24: $38 $52

    add hl, de                                    ; $4a26: $19
    ld b, a                                       ; $4a27: $47
    db $10                                        ; $4a28: $10
    push bc                                       ; $4a29: $c5
    inc d                                         ; $4a2a: $14
    db $db                                        ; $4a2b: $db
    dec h                                         ; $4a2c: $25
    inc a                                         ; $4a2d: $3c
    ld c, a                                       ; $4a2e: $4f
    ld c, d                                       ; $4a2f: $4a
    nop                                           ; $4a30: $00
    ld b, l                                       ; $4a31: $45
    nop                                           ; $4a32: $00
    ld e, $11                                     ; $4a33: $1e $11
    adc e                                         ; $4a35: $8b
    add hl, de                                    ; $4a36: $19
    ld e, h                                       ; $4a37: $5c
    ld b, a                                       ; $4a38: $47
    ld b, d                                       ; $4a39: $42
    inc b                                         ; $4a3a: $04
    db $fd                                        ; $4a3b: $fd
    dec h                                         ; $4a3c: $25
    ret z                                         ; $4a3d: $c8

    dec e                                         ; $4a3e: $1d
    ld e, h                                       ; $4a3f: $5c
    ld e, e                                       ; $4a40: $5b
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    ld e, h                                       ; $4a43: $5c
    ld [bc], a                                    ; $4a44: $02
    nop                                           ; $4a45: $00
    inc e                                         ; $4a46: $1c
    adc b                                         ; $4a47: $88
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    inc e                                         ; $4a4a: $1c
    xor h                                         ; $4a4b: $ac
    ld c, l                                       ; $4a4c: $4d
    or h                                          ; $4a4d: $b4
    ld h, d                                       ; $4a4e: $62
    sbc e                                         ; $4a4f: $9b
    ld [hl], a                                    ; $4a50: $77
    ld [bc], a                                    ; $4a51: $02
    nop                                           ; $4a52: $00
    ld sp, $5e3e                                  ; $4a53: $31 $3e $5e
    ld d, a                                       ; $4a56: $57
    db $fc                                        ; $4a57: $fc
    add hl, hl                                    ; $4a58: $29
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    ld [hl], d                                    ; $4a5b: $72
    ld hl, $469e                                  ; $4a5c: $21 $9e $46
    xor l                                         ; $4a5f: $ad
    inc c                                         ; $4a60: $0c
    ld [hl+], a                                   ; $4a61: $22
    nop                                           ; $4a62: $00
    ld e, b                                       ; $4a63: $58
    ld [hl+], a                                   ; $4a64: $22
    ld e, l                                       ; $4a65: $5d
    ld c, e                                       ; $4a66: $4b
    xor e                                         ; $4a67: $ab
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    dec d                                         ; $4a6b: $15
    ld a, [hl+]                                   ; $4a6c: $2a
    db $ed                                        ; $4a6d: $ed
    inc b                                         ; $4a6e: $04
    rst $38                                       ; $4a6f: $ff
    ld c, a                                       ; $4a70: $4f
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    sub $21                                       ; $4a73: $d6 $21
    rst $18                                       ; $4a75: $df
    ld l, e                                       ; $4a76: $6b
    ld [$000d], sp                                ; $4a77: $08 $0d $00

jr_0b9_4a7a:
    jr nz, jr_0b9_4a0f                            ; $4a7a: $20 $93

    ld e, [hl]                                    ; $4a7c: $5e
    db $dd                                        ; $4a7d: $dd
    ld a, e                                       ; $4a7e: $7b
    jr jr_0b9_4aec                                ; $4a7f: $18 $6b

    nop                                           ; $4a81: $00
    jr nz, jr_0b9_4a0f                            ; $4a82: $20 $8b

    ld c, c                                       ; $4a84: $49
    push de                                       ; $4a85: $d5
    ld h, [hl]                                    ; $4a86: $66
    cpl                                           ; $4a87: $2f
    ld d, [hl]                                    ; $4a88: $56
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    cp h                                          ; $4a8b: $bc
    ld h, $7e                                     ; $4a8c: $26 $7e
    ld e, e                                       ; $4a8e: $5b
    adc d                                         ; $4a8f: $8a
    add hl, hl                                    ; $4a90: $29
    ld [hl+], a                                   ; $4a91: $22
    nop                                           ; $4a92: $00
    ld a, h                                       ; $4a93: $7c
    ld e, a                                       ; $4a94: $5f
    adc h                                         ; $4a95: $8c
    dec l                                         ; $4a96: $2d
    ld sp, $0008                                  ; $4a97: $31 $08 $00
    nop                                           ; $4a9a: $00
    db $fc                                        ; $4a9b: $fc
    ld a, [hl-]                                   ; $4a9c: $3a
    ld l, a                                       ; $4a9d: $6f
    ld de, $6f7a                                  ; $4a9e: $11 $7a $6f
    ld b, h                                       ; $4aa1: $44
    inc b                                         ; $4aa2: $04
    pop de                                        ; $4aa3: $d1
    add hl, hl                                    ; $4aa4: $29
    ld e, l                                       ; $4aa5: $5d
    ld b, a                                       ; $4aa6: $47
    cp h                                          ; $4aa7: $bc
    ld b, b                                       ; $4aa8: $40
    ld [bc], a                                    ; $4aa9: $02
    nop                                           ; $4aaa: $00
    ld e, c                                       ; $4aab: $59
    ld h, $9e                                     ; $4aac: $26 $9e
    ld h, e                                       ; $4aae: $63
    ld c, $01                                     ; $4aaf: $0e $01
    nop                                           ; $4ab1: $00
    jr nz, @+$53                                  ; $4ab2: $20 $51

    ld e, d                                       ; $4ab4: $5a
    rst $30                                       ; $4ab5: $f7
    ld l, d                                       ; $4ab6: $6a
    sbc h                                         ; $4ab7: $9c
    ld [hl], a                                    ; $4ab8: $77
    nop                                           ; $4ab9: $00
    jr nz, jr_0b9_4b04                            ; $4aba: $20 $48

    ld b, c                                       ; $4abc: $41
    cpl                                           ; $4abd: $2f
    ld d, [hl]                                    ; $4abe: $56
    adc e                                         ; $4abf: $8b
    ld c, c                                       ; $4ac0: $49
    inc hl                                        ; $4ac1: $23
    nop                                           ; $4ac2: $00
    or h                                          ; $4ac3: $b4
    ld h, d                                       ; $4ac4: $62
    cp l                                          ; $4ac5: $bd
    ld [hl+], a                                   ; $4ac6: $22
    cpl                                           ; $4ac7: $2f
    dec b                                         ; $4ac8: $05
    ld [hl+], a                                   ; $4ac9: $22
    nop                                           ; $4aca: $00
    ld d, [hl]                                    ; $4acb: $56
    ld l, $7e                                     ; $4acc: $2e $7e
    ld d, a                                       ; $4ace: $57
    add hl, bc                                    ; $4acf: $09
    dec e                                         ; $4ad0: $1d
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    ld d, $6b                                     ; $4ad3: $16 $6b
    add e                                         ; $4ad5: $83
    jr jr_0b9_4b1e                                ; $4ad6: $18 $46

    dec [hl]                                      ; $4ad8: $35

jr_0b9_4ad9:
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    call Call_0b9_7741                            ; $4adb: $cd $41 $77
    ld a, a                                       ; $4ade: $7f
    call nz, Call_000_2324                        ; $4adf: $c4 $24 $23
    nop                                           ; $4ae2: $00
    dec d                                         ; $4ae3: $15
    ld [hl+], a                                   ; $4ae4: $22
    ld e, h                                       ; $4ae5: $5c
    ld e, a                                       ; $4ae6: $5f
    rst $38                                       ; $4ae7: $ff
    ld a, [hl+]                                   ; $4ae8: $2a
    nop                                           ; $4ae9: $00
    jr nz, jr_0b9_4ad9                            ; $4aea: $20 $ed

jr_0b9_4aec:
    ld d, c                                       ; $4aec: $51
    ld [hl], d                                    ; $4aed: $72
    ld e, [hl]                                    ; $4aee: $5e
    cpl                                           ; $4aef: $2f
    ld d, [hl]                                    ; $4af0: $56
    nop                                           ; $4af1: $00
    jr nz, @+$08                                  ; $4af2: $20 $06

    ld b, c                                       ; $4af4: $41
    ld h, $41                                     ; $4af5: $26 $41
    add hl, bc                                    ; $4af7: $09
    dec e                                         ; $4af8: $1d
    ld bc, $5b00                                  ; $4af9: $01 $00 $5b
    ld d, $2d                                     ; $4afc: $16 $2d
    dec d                                         ; $4afe: $15
    sub a                                         ; $4aff: $97
    ld b, d                                       ; $4b00: $42
    ld b, e                                       ; $4b01: $43
    nop                                           ; $4b02: $00
    sub d                                         ; $4b03: $92

jr_0b9_4b04:
    ld de, $050e                                  ; $4b04: $11 $0e $05
    sbc l                                         ; $4b07: $9d
    ld a, [de]                                    ; $4b08: $1a

jr_0b9_4b09:
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    ld h, a                                       ; $4b0b: $67
    dec a                                         ; $4b0c: $3d
    ld [$2c55], a                                 ; $4b0d: $ea $55 $2c
    ld h, d                                       ; $4b10: $62
    nop                                           ; $4b11: $00
    inc b                                         ; $4b12: $04
    ret                                           ; $4b13: $c9


Call_0b9_4b14:
    ld d, c                                       ; $4b14: $51
    add e                                         ; $4b15: $83
    inc e                                         ; $4b16: $1c
    dec bc                                        ; $4b17: $0b
    ld h, [hl]                                    ; $4b18: $66
    ld b, c                                       ; $4b19: $41

jr_0b9_4b1a:
    inc b                                         ; $4b1a: $04
    db $ed                                        ; $4b1b: $ed
    ld d, c                                       ; $4b1c: $51
    ld [hl], e                                    ; $4b1d: $73

jr_0b9_4b1e:
    ld bc, $1e9d                                  ; $4b1e: $01 $9d $1e
    nop                                           ; $4b21: $00
    jr nz, jr_0b9_4b09                            ; $4b22: $20 $e5

    inc a                                         ; $4b24: $3c
    ld c, b                                       ; $4b25: $48
    ld b, l                                       ; $4b26: $45
    sbc l                                         ; $4b27: $9d
    ld e, $00                                     ; $4b28: $1e $00
    jr nz, jr_0b9_4b1a                            ; $4b2a: $20 $ee

    ld e, l                                       ; $4b2c: $5d
    ld c, $05                                     ; $4b2d: $0e $05
    sbc l                                         ; $4b2f: $9d
    ld a, [de]                                    ; $4b30: $1a
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    ld e, $3b                                     ; $4b33: $1e $3b
    daa                                           ; $4b35: $27
    ld b, l                                       ; $4b36: $45
    sub c                                         ; $4b37: $91
    dec c                                         ; $4b38: $0d
    ld b, d                                       ; $4b39: $42
    ld [$09d8], sp                                ; $4b3a: $08 $d8 $09
    dec a                                         ; $4b3d: $3d
    ld b, a                                       ; $4b3e: $47
    cpl                                           ; $4b3f: $2f
    add hl, bc                                    ; $4b40: $09

jr_0b9_4b41:
    ld b, e                                       ; $4b41: $43
    ld [$59ea], sp                                ; $4b42: $08 $ea $59
    call c, $df55                                 ; $4b45: $dc $55 $df
    ld a, a                                       ; $4b48: $7f
    and d                                         ; $4b49: $a2
    inc c                                         ; $4b4a: $0c
    ret                                           ; $4b4b: $c9


    ld d, l                                       ; $4b4c: $55
    ldh [$03], a                                  ; $4b4d: $e0 $03
    push af                                       ; $4b4f: $f5
    ld d, a                                       ; $4b50: $57
    ld b, b                                       ; $4b51: $40
    inc b                                         ; $4b52: $04
    ld c, b                                       ; $4b53: $48
    ld b, l                                       ; $4b54: $45
    sbc $3e                                       ; $4b55: $de $3e
    ld de, $0011                                  ; $4b57: $11 $11 $00
    jr nz, jr_0b9_4b41                            ; $4b5a: $20 $e5

    inc a                                         ; $4b5c: $3c
    sbc $3e                                       ; $4b5d: $de $3e
    ld de, $0011                                  ; $4b5f: $11 $11 $00
    jr nz, @-$26                                  ; $4b62: $20 $d8

    add hl, bc                                    ; $4b64: $09
    dec a                                         ; $4b65: $3d
    ld b, a                                       ; $4b66: $47
    cpl                                           ; $4b67: $2f
    add hl, bc                                    ; $4b68: $09
    ld bc, $3100                                  ; $4b69: $01 $00 $31
    ld h, [hl]                                    ; $4b6c: $66
    sbc l                                         ; $4b6d: $9d
    ld a, [hl-]                                   ; $4b6e: $3a
    db $ec                                        ; $4b6f: $ec
    inc d                                         ; $4b70: $14
    ld h, d                                       ; $4b71: $62
    inc c                                         ; $4b72: $0c
    jr c, jr_0b9_4b97                             ; $4b73: $38 $22

    ld d, c                                       ; $4b75: $51
    add hl, bc                                    ; $4b76: $09
    ld a, a                                       ; $4b77: $7f
    ld b, a                                       ; $4b78: $47
    nop                                           ; $4b79: $00

jr_0b9_4b7a:
    inc b                                         ; $4b7a: $04
    jp hl                                         ; $4b7b: $e9


    ld e, c                                       ; $4b7c: $59
    ld b, [hl]                                    ; $4b7d: $46
    ld de, $3e73                                  ; $4b7e: $11 $73 $3e
    ld hl, $a908                                  ; $4b81: $21 $08 $a9
    ld c, l                                       ; $4b84: $4d
    rst $30                                       ; $4b85: $f7
    ld a, a                                       ; $4b86: $7f

Jump_0b9_4b87:
    ld l, h                                       ; $4b87: $6c
    ld h, [hl]                                    ; $4b88: $66
    nop                                           ; $4b89: $00
    ld [$6210], sp                                ; $4b8a: $08 $10 $62
    sbc a                                         ; $4b8d: $9f
    ld e, a                                       ; $4b8e: $5f
    jp z, RST_18                                  ; $4b8f: $ca $18 $00

    jr nz, @+$12                                  ; $4b92: $20 $10

    ld h, d                                       ; $4b94: $62
    sbc a                                         ; $4b95: $9f
    ld e, a                                       ; $4b96: $5f

jr_0b9_4b97:
    jp z, RST_18                                  ; $4b97: $ca $18 $00

    jr nz, jr_0b9_4bd4                            ; $4b9a: $20 $38

    ld [hl+], a                                   ; $4b9c: $22
    ld d, c                                       ; $4b9d: $51
    add hl, bc                                    ; $4b9e: $09
    ld a, a                                       ; $4b9f: $7f
    ld b, a                                       ; $4ba0: $47
    nop                                           ; $4ba1: $00

jr_0b9_4ba2:
    ld [$4afd], sp                                ; $4ba2: $08 $fd $4a
    jr jr_0b9_4c1e                                ; $4ba5: $18 $77

jr_0b9_4ba7:
    jr nc, jr_0b9_4bc2                            ; $4ba7: $30 $19

    ld bc, $1b00                                  ; $4ba9: $01 $00 $1b
    ld b, $a3                                     ; $4bac: $06 $a3
    jr jr_0b9_4b7a                                ; $4bae: $18 $ca

    inc b                                         ; $4bb0: $04
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    ld l, b                                       ; $4bb3: $68
    dec a                                         ; $4bb4: $3d
    dec bc                                        ; $4bb5: $0b
    ld e, [hl]                                    ; $4bb6: $5e
    ld h, h                                       ; $4bb7: $64
    ld [$0020], sp                                ; $4bb8: $08 $20 $00
    jr z, jr_0b9_4bee                             ; $4bbb: $28 $31

    push bc                                       ; $4bbd: $c5
    inc e                                         ; $4bbe: $1c
    ret                                           ; $4bbf: $c9


    ld c, l                                       ; $4bc0: $4d
    nop                                           ; $4bc1: $00

jr_0b9_4bc2:
    inc c                                         ; $4bc2: $0c

jr_0b9_4bc3:
    rst $30                                       ; $4bc3: $f7
    ld [hl], d                                    ; $4bc4: $72
    sbc [hl]                                      ; $4bc5: $9e
    ld h, e                                       ; $4bc6: $63
    xor d                                         ; $4bc7: $aa
    inc b                                         ; $4bc8: $04
    nop                                           ; $4bc9: $00
    jr nz, jr_0b9_4bc3                            ; $4bca: $20 $f7

    ld [hl], d                                    ; $4bcc: $72
    sbc [hl]                                      ; $4bcd: $9e
    ld h, e                                       ; $4bce: $63
    xor d                                         ; $4bcf: $aa
    inc b                                         ; $4bd0: $04
    nop                                           ; $4bd1: $00
    jr nz, jr_0b9_4bef                            ; $4bd2: $20 $1b

jr_0b9_4bd4:
    ld b, $a3                                     ; $4bd4: $06 $a3
    jr jr_0b9_4ba2                                ; $4bd6: $18 $ca

    inc b                                         ; $4bd8: $04
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    dec a                                         ; $4bdb: $3d
    ld d, e                                       ; $4bdc: $53
    sbc h                                         ; $4bdd: $9c
    ld [hl], a                                    ; $4bde: $77
    ld b, d                                       ; $4bdf: $42
    jr jr_0b9_4be2                                ; $4be0: $18 $00

jr_0b9_4be2:
    nop                                           ; $4be2: $00
    ld h, e                                       ; $4be3: $63
    ld [$18a3], sp                                ; $4be4: $08 $a3 $18
    ld b, $29                                     ; $4be7: $06 $29
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rrca                                          ; $4beb: $0f
    ld h, d                                       ; $4bec: $62
    sbc h                                         ; $4bed: $9c

jr_0b9_4bee:
    ld a, e                                       ; $4bee: $7b

jr_0b9_4bef:
    or l                                          ; $4bef: $b5
    ld l, [hl]                                    ; $4bf0: $6e
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    push hl                                       ; $4bf3: $e5
    inc a                                         ; $4bf4: $3c
    rrca                                          ; $4bf5: $0f
    ld e, d                                       ; $4bf6: $5a
    ld c, c                                       ; $4bf7: $49
    ld c, c                                       ; $4bf8: $49
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00

jr_0b9_4bfb:
    rst $30                                       ; $4bfb: $f7
    ld [hl], d                                    ; $4bfc: $72
    sbc $7b                                       ; $4bfd: $de $7b
    nop                                           ; $4bff: $00
    jr nz, jr_0b9_4c02                            ; $4c00: $20 $00

jr_0b9_4c02:
    jr nz, jr_0b9_4bfb                            ; $4c02: $20 $f7

    ld [hl], d                                    ; $4c04: $72
    sbc $7b                                       ; $4c05: $de $7b
    nop                                           ; $4c07: $00
    jr nz, jr_0b9_4c0a                            ; $4c08: $20 $00

jr_0b9_4c0a:
    jr nz, jr_0b9_4c6f                            ; $4c0a: $20 $63

    ld [$18a3], sp                                ; $4c0c: $08 $a3 $18
    ld b, $29                                     ; $4c0f: $06 $29
    nop                                           ; $4c11: $00
    jr nz, jr_0b9_4ba7                            ; $4c12: $20 $93

    ld h, d                                       ; $4c14: $62
    sbc h                                         ; $4c15: $9c
    ld [hl], a                                    ; $4c16: $77
    ld l, c                                       ; $4c17: $69
    ld b, l                                       ; $4c18: $45
    push hl                                       ; $4c19: $e5
    inc a                                         ; $4c1a: $3c
    ld sp, $f766                                  ; $4c1b: $31 $66 $f7

jr_0b9_4c1e:
    ld [hl], d                                    ; $4c1e: $72
    ld c, c                                       ; $4c1f: $49
    ld c, l                                       ; $4c20: $4d
    daa                                           ; $4c21: $27
    ld b, l                                       ; $4c22: $45
    sub l                                         ; $4c23: $95
    ld [hl], d                                    ; $4c24: $72
    sbc h                                         ; $4c25: $9c
    ld a, e                                       ; $4c26: $7b
    adc $5d                                       ; $4c27: $ce $5d
    ld l, d                                       ; $4c29: $6a
    ld c, l                                       ; $4c2a: $4d
    sub h                                         ; $4c2b: $94
    ld l, [hl]                                    ; $4c2c: $6e
    jr nc, jr_0b9_4c8d                            ; $4c2d: $30 $5e

    ld e, d                                       ; $4c2f: $5a
    ld [hl], e                                    ; $4c30: $73
    nop                                           ; $4c31: $00
    jr nz, @+$75                                  ; $4c32: $20 $73

    ld e, [hl]                                    ; $4c34: $5e
    cp h                                          ; $4c35: $bc
    ld a, e                                       ; $4c36: $7b
    push hl                                       ; $4c37: $e5

jr_0b9_4c38:
    inc a                                         ; $4c38: $3c
    nop                                           ; $4c39: $00
    jr nz, @+$75                                  ; $4c3a: $20 $73

    ld e, [hl]                                    ; $4c3c: $5e
    cp h                                          ; $4c3d: $bc
    ld a, e                                       ; $4c3e: $7b
    push hl                                       ; $4c3f: $e5

jr_0b9_4c40:
    inc a                                         ; $4c40: $3c
    nop                                           ; $4c41: $00
    jr nz, jr_0b9_4c44                            ; $4c42: $20 $00

jr_0b9_4c44:
    jr nz, jr_0b9_4c46                            ; $4c44: $20 $00

jr_0b9_4c46:
    jr nz, @+$4c                                  ; $4c46: $20 $4a

jr_0b9_4c48:
    ld h, $00                                     ; $4c48: $26 $00
    jr nz, jr_0b9_4c4c                            ; $4c4a: $20 $00

jr_0b9_4c4c:
    jr nz, jr_0b9_4c4e                            ; $4c4c: $20 $00

jr_0b9_4c4e:
    jr nz, jr_0b9_4c9a                            ; $4c4e: $20 $4a

    ld h, $00                                     ; $4c50: $26 $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    jr jr_0b9_4c56                                ; $4c54: $18 $00

jr_0b9_4c56:
    jr nz, jr_0b9_4c58                            ; $4c56: $20 $00

jr_0b9_4c58:
    inc e                                         ; $4c58: $1c
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    dec l                                         ; $4c5b: $2d
    dec [hl]                                      ; $4c5c: $35
    jp nc, $214d                                  ; $4c5d: $d2 $4d $21

    jr jr_0b9_4c62                                ; $4c60: $18 $00

jr_0b9_4c62:
    nop                                           ; $4c62: $00

jr_0b9_4c63:
    nop                                           ; $4c63: $00
    jr nz, jr_0b9_4c38                            ; $4c64: $20 $d2

    ld c, l                                       ; $4c66: $4d
    ld hl, $0018                                  ; $4c67: $21 $18 $00
    jr nz, jr_0b9_4c6c                            ; $4c6a: $20 $00

jr_0b9_4c6c:
    jr nz, jr_0b9_4c40                            ; $4c6c: $20 $d2

    ld c, l                                       ; $4c6e: $4d

jr_0b9_4c6f:
    ld hl, $0018                                  ; $4c6f: $21 $18 $00
    jr nz, jr_0b9_4c74                            ; $4c72: $20 $00

jr_0b9_4c74:
    jr nz, jr_0b9_4c48                            ; $4c74: $20 $d2

    ld c, l                                       ; $4c76: $4d
    ld hl, $0018                                  ; $4c77: $21 $18 $00
    jr nz, jr_0b9_4c7c                            ; $4c7a: $20 $00

jr_0b9_4c7c:
    jr jr_0b9_4c7e                                ; $4c7c: $18 $00

jr_0b9_4c7e:
    jr nz, jr_0b9_4c80                            ; $4c7e: $20 $00

jr_0b9_4c80:
    inc e                                         ; $4c80: $1c
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    jr nz, jr_0b9_4c86                            ; $4c84: $20 $00

jr_0b9_4c86:
    jr nz, jr_0b9_4c88                            ; $4c86: $20 $00

jr_0b9_4c88:
    inc e                                         ; $4c88: $1c
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    xor a                                         ; $4c8b: $af
    ld b, c                                       ; $4c8c: $41

jr_0b9_4c8d:
    rst $38                                       ; $4c8d: $ff
    ld a, a                                       ; $4c8e: $7f
    and [hl]                                      ; $4c8f: $a6
    inc e                                         ; $4c90: $1c
    ld bc, $0c04                                  ; $4c91: $01 $04 $0c
    ld sp, $4dd2                                  ; $4c94: $31 $d2 $4d
    and a                                         ; $4c97: $a7
    inc e                                         ; $4c98: $1c
    nop                                           ; $4c99: $00

jr_0b9_4c9a:
    nop                                           ; $4c9a: $00
    ld [hl], a                                    ; $4c9b: $77
    ld h, [hl]                                    ; $4c9c: $66
    nop                                           ; $4c9d: $00
    jr nz, @-$57                                  ; $4c9e: $20 $a7

    inc e                                         ; $4ca0: $1c
    nop                                           ; $4ca1: $00
    jr nz, @+$79                                  ; $4ca2: $20 $77

    ld h, [hl]                                    ; $4ca4: $66
    nop                                           ; $4ca5: $00
    jr nz, @-$57                                  ; $4ca6: $20 $a7

    inc e                                         ; $4ca8: $1c
    nop                                           ; $4ca9: $00
    jr nz, @+$79                                  ; $4caa: $20 $77

    ld h, [hl]                                    ; $4cac: $66
    nop                                           ; $4cad: $00
    jr nz, @-$57                                  ; $4cae: $20 $a7

    inc e                                         ; $4cb0: $1c
    nop                                           ; $4cb1: $00
    jr nz, jr_0b9_4c63                            ; $4cb2: $20 $af

    ld b, c                                       ; $4cb4: $41
    rst $38                                       ; $4cb5: $ff
    ld a, a                                       ; $4cb6: $7f
    and [hl]                                      ; $4cb7: $a6

jr_0b9_4cb8:
    inc e                                         ; $4cb8: $1c
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00

jr_0b9_4cbb:
    ld [hl], h                                    ; $4cbb: $74
    ld d, d                                       ; $4cbc: $52
    sbc $7b                                       ; $4cbd: $de $7b
    nop                                           ; $4cbf: $00
    jr nz, jr_0b9_4cc2                            ; $4cc0: $20 $00

jr_0b9_4cc2:
    nop                                           ; $4cc2: $00

jr_0b9_4cc3:
    rst $18                                       ; $4cc3: $df
    ld a, a                                       ; $4cc4: $7f
    ret z                                         ; $4cc5: $c8

    jr nz, jr_0b9_4cb8                            ; $4cc6: $20 $f0

    ld b, l                                       ; $4cc8: $45
    nop                                           ; $4cc9: $00
    inc b                                         ; $4cca: $04

jr_0b9_4ccb:
    sub a                                         ; $4ccb: $97
    ld e, [hl]                                    ; $4ccc: $5e
    dec l                                         ; $4ccd: $2d
    add hl, sp                                    ; $4cce: $39
    cp [hl]                                       ; $4ccf: $be
    ld a, e                                       ; $4cd0: $7b

jr_0b9_4cd1:
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    rst $18                                       ; $4cd3: $df
    ld a, a                                       ; $4cd4: $7f
    xor [hl]                                      ; $4cd5: $ae
    add hl, sp                                    ; $4cd6: $39
    nop                                           ; $4cd7: $00
    jr nz, jr_0b9_4cda                            ; $4cd8: $20 $00

jr_0b9_4cda:
    jr nz, jr_0b9_4cbb                            ; $4cda: $20 $df

    ld a, a                                       ; $4cdc: $7f
    xor [hl]                                      ; $4cdd: $ae
    add hl, sp                                    ; $4cde: $39
    nop                                           ; $4cdf: $00

jr_0b9_4ce0:
    jr nz, jr_0b9_4ce2                            ; $4ce0: $20 $00

jr_0b9_4ce2:
    jr nz, jr_0b9_4cc3                            ; $4ce2: $20 $df

    ld a, a                                       ; $4ce4: $7f
    xor [hl]                                      ; $4ce5: $ae
    add hl, sp                                    ; $4ce6: $39
    nop                                           ; $4ce7: $00
    jr nz, jr_0b9_4cea                            ; $4ce8: $20 $00

jr_0b9_4cea:
    jr nz, jr_0b9_4ccb                            ; $4cea: $20 $df

    ld a, a                                       ; $4cec: $7f
    ret z                                         ; $4ced: $c8

    jr nz, jr_0b9_4ce0                            ; $4cee: $20 $f0

    ld b, l                                       ; $4cf0: $45
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    dec [hl]                                      ; $4cf3: $35
    ld e, d                                       ; $4cf4: $5a
    nop                                           ; $4cf5: $00
    jr nz, jr_0b9_4cd1                            ; $4cf6: $20 $d9

    ld l, d                                       ; $4cf8: $6a
    ld hl, $8f04                                  ; $4cf9: $21 $04 $8f
    ld b, l                                       ; $4cfc: $45
    ld a, [hl]                                    ; $4cfd: $7e
    ld a, e                                       ; $4cfe: $7b
    add [hl]                                      ; $4cff: $86
    jr jr_0b9_4d46                                ; $4d00: $18 $44

    ld [$7fdf], sp                                ; $4d02: $08 $df $7f
    ld l, [hl]                                    ; $4d05: $6e
    ld b, c                                       ; $4d06: $41
    cp b                                          ; $4d07: $b8
    ld hl, $0000                                  ; $4d08: $21 $00 $00
    inc de                                        ; $4d0b: $13
    ld c, [hl]                                    ; $4d0c: $4e
    sbc [hl]                                      ; $4d0d: $9e
    ld a, e                                       ; $4d0e: $7b
    nop                                           ; $4d0f: $00
    jr nz, jr_0b9_4d12                            ; $4d10: $20 $00

jr_0b9_4d12:
    jr nz, jr_0b9_4d27                            ; $4d12: $20 $13

    ld c, [hl]                                    ; $4d14: $4e

jr_0b9_4d15:
    sbc [hl]                                      ; $4d15: $9e
    ld a, e                                       ; $4d16: $7b
    nop                                           ; $4d17: $00
    jr nz, jr_0b9_4d1a                            ; $4d18: $20 $00

jr_0b9_4d1a:
    jr nz, jr_0b9_4d2f                            ; $4d1a: $20 $13

    ld c, [hl]                                    ; $4d1c: $4e
    sbc [hl]                                      ; $4d1d: $9e
    ld a, e                                       ; $4d1e: $7b
    nop                                           ; $4d1f: $00
    jr nz, jr_0b9_4d22                            ; $4d20: $20 $00

jr_0b9_4d22:
    jr nz, @-$6f                                  ; $4d22: $20 $8f

    ld b, l                                       ; $4d24: $45
    ld a, [hl]                                    ; $4d25: $7e
    ld a, e                                       ; $4d26: $7b

jr_0b9_4d27:
    add [hl]                                      ; $4d27: $86
    jr jr_0b9_4d2a                                ; $4d28: $18 $00

jr_0b9_4d2a:
    nop                                           ; $4d2a: $00
    ld a, [hl+]                                   ; $4d2b: $2a
    dec l                                         ; $4d2c: $2d
    ld d, [hl]                                    ; $4d2d: $56
    ld e, [hl]                                    ; $4d2e: $5e

jr_0b9_4d2f:
    ld bc, $0020                                  ; $4d2f: $01 $20 $00
    inc b                                         ; $4d32: $04
    ld d, c                                       ; $4d33: $51
    dec e                                         ; $4d34: $1d
    xor d                                         ; $4d35: $aa
    inc d                                         ; $4d36: $14
    jp c, $6929                                   ; $4d37: $da $29 $69

    inc d                                         ; $4d3a: $14
    cp c                                          ; $4d3b: $b9
    dec h                                         ; $4d3c: $25
    sbc $7b                                       ; $4d3d: $de $7b
    ld a, e                                       ; $4d3f: $7b
    ld a, $00                                     ; $4d40: $3e $00
    ld [$55f4], sp                                ; $4d42: $08 $f4 $55
    ld c, l                                       ; $4d45: $4d

jr_0b9_4d46:
    add hl, sp                                    ; $4d46: $39
    rst $38                                       ; $4d47: $ff
    ld a, a                                       ; $4d48: $7f
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    jr nz, jr_0b9_4d9b                            ; $4d4c: $20 $4d

    add hl, sp                                    ; $4d4e: $39
    rst $38                                       ; $4d4f: $ff
    ld a, a                                       ; $4d50: $7f
    nop                                           ; $4d51: $00
    jr nz, jr_0b9_4d54                            ; $4d52: $20 $00

jr_0b9_4d54:
    jr nz, jr_0b9_4da3                            ; $4d54: $20 $4d

    add hl, sp                                    ; $4d56: $39
    rst $38                                       ; $4d57: $ff
    ld a, a                                       ; $4d58: $7f
    nop                                           ; $4d59: $00
    jr nz, @+$53                                  ; $4d5a: $20 $51

    dec e                                         ; $4d5c: $1d
    xor d                                         ; $4d5d: $aa
    inc d                                         ; $4d5e: $14
    jp c, Jump_000_0029                           ; $4d5f: $da $29 $00

    nop                                           ; $4d62: $00
    jp nc, $0049                                  ; $4d63: $d2 $49 $00

    jr nz, jr_0b9_4dcc                            ; $4d66: $20 $64

    inc d                                         ; $4d68: $14
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    ld e, e                                       ; $4d6b: $5b
    ld a, [hl-]                                   ; $4d6c: $3a
    ld b, [hl]                                    ; $4d6d: $46

jr_0b9_4d6e:
    jr z, jr_0b9_4d6e                             ; $4d6e: $28 $fe

    ld c, [hl]                                    ; $4d70: $4e
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    scf                                           ; $4d73: $37
    ld b, [hl]                                    ; $4d74: $46
    xor c                                         ; $4d75: $a9
    jr nz, jr_0b9_4d15                            ; $4d76: $20 $9d

    ld a, e                                       ; $4d78: $7b
    ld bc, $d304                                  ; $4d79: $01 $04 $d3
    ld c, l                                       ; $4d7c: $4d
    ld [$ff2c], a                                 ; $4d7d: $ea $2c $ff
    ld a, a                                       ; $4d80: $7f
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    rst $38                                       ; $4d83: $ff
    ld a, a                                       ; $4d84: $7f
    nop                                           ; $4d85: $00
    jr nz, @+$01                                  ; $4d86: $20 $ff

    ld a, a                                       ; $4d88: $7f
    nop                                           ; $4d89: $00
    jr nz, @+$01                                  ; $4d8a: $20 $ff

    ld a, a                                       ; $4d8c: $7f
    nop                                           ; $4d8d: $00
    jr nz, @+$01                                  ; $4d8e: $20 $ff

    ld a, a                                       ; $4d90: $7f
    nop                                           ; $4d91: $00
    inc c                                         ; $4d92: $0c
    jr jr_0b9_4da3                                ; $4d93: $18 $0e

jr_0b9_4d95:
    rra                                           ; $4d95: $1f
    rla                                           ; $4d96: $17
    nop                                           ; $4d97: $00
    jr nz, jr_0b9_4d9a                            ; $4d98: $20 $00

jr_0b9_4d9a:
    nop                                           ; $4d9a: $00

jr_0b9_4d9b:
    pop de                                        ; $4d9b: $d1
    ld c, c                                       ; $4d9c: $49
    nop                                           ; $4d9d: $00
    inc e                                         ; $4d9e: $1c
    ld b, d                                       ; $4d9f: $42
    ld [$0421], sp                                ; $4da0: $08 $21 $04

jr_0b9_4da3:
    cp $4e                                        ; $4da3: $fe $4e
    xor b                                         ; $4da5: $a8
    inc [hl]                                      ; $4da6: $34
    rst $38                                       ; $4da7: $ff
    ld a, a                                       ; $4da8: $7f
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    ld e, e                                       ; $4dab: $5b
    ld a, $2f                                     ; $4dac: $3e $2f
    dec l                                         ; $4dae: $2d
    ld e, a                                       ; $4daf: $5f
    ld e, a                                       ; $4db0: $5f
    ld hl, $d104                                  ; $4db1: $21 $04 $d1
    ld a, a                                       ; $4db4: $7f
    add [hl]                                      ; $4db5: $86
    jr @-$15                                      ; $4db6: $18 $e9

    jr z, jr_0b9_4dba                             ; $4db8: $28 $00

jr_0b9_4dba:
    nop                                           ; $4dba: $00
    pop de                                        ; $4dbb: $d1
    ld a, a                                       ; $4dbc: $7f
    rst $38                                       ; $4dbd: $ff
    ld a, a                                       ; $4dbe: $7f
    nop                                           ; $4dbf: $00
    jr nz, jr_0b9_4dc2                            ; $4dc0: $20 $00

jr_0b9_4dc2:
    jr nz, jr_0b9_4d95                            ; $4dc2: $20 $d1

    ld a, a                                       ; $4dc4: $7f
    rst $38                                       ; $4dc5: $ff
    ld a, a                                       ; $4dc6: $7f
    nop                                           ; $4dc7: $00
    jr nz, jr_0b9_4dca                            ; $4dc8: $20 $00

jr_0b9_4dca:
    inc c                                         ; $4dca: $0c
    db $dd                                        ; $4dcb: $dd

jr_0b9_4dcc:
    ld [$163f], sp                                ; $4dcc: $08 $3f $16
    nop                                           ; $4dcf: $00
    jr nz, jr_0b9_4dd2                            ; $4dd0: $20 $00

jr_0b9_4dd2:
    inc b                                         ; $4dd2: $04
    di                                            ; $4dd3: $f3
    ld d, c                                       ; $4dd4: $51
    rst $38                                       ; $4dd5: $ff
    ld a, a                                       ; $4dd6: $7f
    ld a, [hl+]                                   ; $4dd7: $2a
    add hl, hl                                    ; $4dd8: $29
    ld bc, $5b08                                  ; $4dd9: $01 $08 $5b
    ld a, [hl-]                                   ; $4ddc: $3a
    xor c                                         ; $4ddd: $a9
    db $10                                        ; $4dde: $10
    ccf                                           ; $4ddf: $3f
    ld e, e                                       ; $4de0: $5b
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    cp c                                          ; $4de3: $b9
    dec h                                         ; $4de4: $25
    sbc l                                         ; $4de5: $9d
    ld b, [hl]                                    ; $4de6: $46
    ld a, $5f                                     ; $4de7: $3e $5f
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    ld a, [bc]                                    ; $4deb: $0a
    dec l                                         ; $4dec: $2d
    ei                                            ; $4ded: $fb
    ld l, [hl]                                    ; $4dee: $6e
    ld [hl+], a                                   ; $4def: $22
    ld [$0000], sp                                ; $4df0: $08 $00 $00
    or b                                          ; $4df3: $b0
    ld a, e                                       ; $4df4: $7b
    rst $38                                       ; $4df5: $ff
    ld a, a                                       ; $4df6: $7f
    or c                                          ; $4df7: $b1
    ld a, e                                       ; $4df8: $7b
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    jr nz, @+$01                                  ; $4dfc: $20 $ff

    ld a, a                                       ; $4dfe: $7f
    or c                                          ; $4dff: $b1
    ld a, e                                       ; $4e00: $7b
    nop                                           ; $4e01: $00
    ld [$29fe], sp                                ; $4e02: $08 $fe $29
    rst $38                                       ; $4e05: $ff
    ld a, a                                       ; $4e06: $7f
    nop                                           ; $4e07: $00
    jr nz, jr_0b9_4e4d                            ; $4e08: $20 $43

    inc b                                         ; $4e0a: $04
    cp c                                          ; $4e0b: $b9
    ld l, d                                       ; $4e0c: $6a
    ld c, d                                       ; $4e0d: $4a
    dec [hl]                                      ; $4e0e: $35
    rst $38                                       ; $4e0f: $ff
    ld a, a                                       ; $4e10: $7f
    ld bc, $9304                                  ; $4e11: $01 $04 $93
    dec h                                         ; $4e14: $25
    jp z, $be1c                                   ; $4e15: $ca $1c $be

    ld c, d                                       ; $4e18: $4a
    ld h, [hl]                                    ; $4e19: $66
    ld [$469c], sp                                ; $4e1a: $08 $9c $46
    ld c, a                                       ; $4e1d: $4f
    ld hl, $52fe                                  ; $4e1e: $21 $fe $52
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    jp hl                                         ; $4e23: $e9


    jr z, @-$6d                                   ; $4e24: $28 $91

    ld c, c                                       ; $4e26: $49
    ld h, h                                       ; $4e27: $64
    stop                                          ; $4e28: $10 $00
    nop                                           ; $4e2a: $00
    jr nc, jr_0b9_4e98                            ; $4e2b: $30 $6b

    rst $38                                       ; $4e2d: $ff
    ld a, a                                       ; $4e2e: $7f
    ld l, [hl]                                    ; $4e2f: $6e
    dec a                                         ; $4e30: $3d
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    ld a, a                                       ; $4e34: $7f
    nop                                           ; $4e35: $00
    jr nz, jr_0b9_4ea6                            ; $4e36: $20 $6e

    dec a                                         ; $4e38: $3d
    nop                                           ; $4e39: $00
    ld [$0131], sp                                ; $4e3a: $08 $31 $01
    ld h, [hl]                                    ; $4e3d: $66
    nop                                           ; $4e3e: $00
    ccf                                           ; $4e3f: $3f
    add hl, de                                    ; $4e40: $19
    ld b, [hl]                                    ; $4e41: $46
    nop                                           ; $4e42: $00
    or [hl]                                       ; $4e43: $b6
    db $10                                        ; $4e44: $10
    ld sp, $fc04                                  ; $4e45: $31 $04 $fc
    inc d                                         ; $4e48: $14
    nop                                           ; $4e49: $00
    inc b                                         ; $4e4a: $04
    rrca                                          ; $4e4b: $0f
    add hl, de                                    ; $4e4c: $19

jr_0b9_4e4d:
    ld h, [hl]                                    ; $4e4d: $66
    nop                                           ; $4e4e: $00
    rst $30                                       ; $4e4f: $f7
    dec l                                         ; $4e50: $2d
    ld h, [hl]                                    ; $4e51: $66
    nop                                           ; $4e52: $00
    ld e, e                                       ; $4e53: $5b
    ld a, $51                                     ; $4e54: $3e $51
    ld hl, $571f                                  ; $4e56: $21 $1f $57
    ld hl, $0c04                                  ; $4e59: $21 $04 $0c
    dec [hl]                                      ; $4e5c: $35
    ld d, d                                       ; $4e5d: $52
    ld h, $b2                                     ; $4e5e: $26 $b2
    ld c, l                                       ; $4e60: $4d
    nop                                           ; $4e61: $00
    inc b                                         ; $4e62: $04
    ld l, l                                       ; $4e63: $6d
    ld l, a                                       ; $4e64: $6f
    cp [hl]                                       ; $4e65: $be
    ld a, a                                       ; $4e66: $7f
    ld [hl], $5a                                  ; $4e67: $36 $5a
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    ld l, l                                       ; $4e6b: $6d
    ld l, a                                       ; $4e6c: $6f
    nop                                           ; $4e6d: $00
    jr nz, @+$01                                  ; $4e6e: $20 $ff

    ld a, a                                       ; $4e70: $7f
    nop                                           ; $4e71: $00
    inc b                                         ; $4e72: $04
    ld c, l                                       ; $4e73: $4d
    ld l, a                                       ; $4e74: $6f
    cp d                                          ; $4e75: $ba
    dec h                                         ; $4e76: $25
    ld c, $05                                     ; $4e77: $0e $05
    nop                                           ; $4e79: $00
    inc b                                         ; $4e7a: $04
    db $ed                                        ; $4e7b: $ed
    db $10                                        ; $4e7c: $10
    ld a, a                                       ; $4e7d: $7f
    dec c                                         ; $4e7e: $0d
    ld h, a                                       ; $4e7f: $67
    nop                                           ; $4e80: $00
    jr nz, jr_0b9_4e8b                            ; $4e81: $20 $08

    sub h                                         ; $4e83: $94
    inc c                                         ; $4e84: $0c
    ld a, $15                                     ; $4e85: $3e $15
    daa                                           ; $4e87: $27
    nop                                           ; $4e88: $00
    ld b, h                                       ; $4e89: $44
    nop                                           ; $4e8a: $00

jr_0b9_4e8b:
    dec [hl]                                      ; $4e8b: $35
    inc b                                         ; $4e8c: $04
    ld a, [hl-]                                   ; $4e8d: $3a
    dec d                                         ; $4e8e: $15
    sub $2d                                       ; $4e8f: $d6 $2d
    ld h, e                                       ; $4e91: $63
    inc b                                         ; $4e92: $04
    db $10                                        ; $4e93: $10
    ld e, $3a                                     ; $4e94: $1e $3a
    ld h, a                                       ; $4e96: $67
    ld e, d                                       ; $4e97: $5a

jr_0b9_4e98:
    ld [hl], $22                                  ; $4e98: $36 $22
    inc b                                         ; $4e9a: $04
    inc [hl]                                      ; $4e9b: $34
    ld d, d                                       ; $4e9c: $52
    cp [hl]                                       ; $4e9d: $be
    ld a, e                                       ; $4e9e: $7b
    ld l, $39                                     ; $4e9f: $2e $39
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    inc l                                         ; $4ea3: $2c
    ld l, e                                       ; $4ea4: $6b
    rst $38                                       ; $4ea5: $ff

jr_0b9_4ea6:
    ld a, a                                       ; $4ea6: $7f
    nop                                           ; $4ea7: $00
    jr nz, jr_0b9_4eac                            ; $4ea8: $20 $02

    nop                                           ; $4eaa: $00
    dec hl                                        ; $4eab: $2b

jr_0b9_4eac:
    ld l, e                                       ; $4eac: $6b
    or d                                          ; $4ead: $b2
    inc c                                         ; $4eae: $0c
    ccf                                           ; $4eaf: $3f
    add hl, de                                    ; $4eb0: $19
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    dec hl                                        ; $4eb3: $2b
    ld l, e                                       ; $4eb4: $6b
    or l                                          ; $4eb5: $b5
    ld e, $06                                     ; $4eb6: $1e $06
    ld hl, $0000                                  ; $4eb8: $21 $00 $00
    xor h                                         ; $4ebb: $ac
    ld hl, $4698                                  ; $4ebc: $21 $98 $46
    inc h                                         ; $4ebf: $24
    ld hl, $0c63                                  ; $4ec0: $21 $63 $0c
    rst $30                                       ; $4ec3: $f7
    ld [$008d], sp                                ; $4ec4: $08 $8d $00
    sbc d                                         ; $4ec7: $9a
    ld c, d                                       ; $4ec8: $4a
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    ld c, $0e                                     ; $4ecb: $0e $0e
    db $dd                                        ; $4ecd: $dd
    inc d                                         ; $4ece: $14
    ld h, [hl]                                    ; $4ecf: $66
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    ld c, l                                       ; $4ed3: $4d
    add hl, sp                                    ; $4ed4: $39
    ret c                                         ; $4ed5: $d8

    ld h, d                                       ; $4ed6: $62
    rst $18                                       ; $4ed7: $df
    ld a, a                                       ; $4ed8: $7f
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00

jr_0b9_4edb:
    dec bc                                        ; $4edb: $0b
    ld h, a                                       ; $4edc: $67
    rst $38                                       ; $4edd: $ff
    ld a, a                                       ; $4ede: $7f
    nop                                           ; $4edf: $00
    jr nz, jr_0b9_4ee2                            ; $4ee0: $20 $00

jr_0b9_4ee2:
    inc b                                         ; $4ee2: $04
    ld a, [bc]                                    ; $4ee3: $0a
    ld h, a                                       ; $4ee4: $67
    ld a, a                                       ; $4ee5: $7f
    ld a, [de]                                    ; $4ee6: $1a
    ret nc                                        ; $4ee7: $d0

    ld [$0462], sp                                ; $4ee8: $08 $62 $04
    sub c                                         ; $4eeb: $91
    ld [hl+], a                                   ; $4eec: $22
    cp $7b                                        ; $4eed: $fe $7b
    rst $18                                       ; $4eef: $df
    dec hl                                        ; $4ef0: $2b
    and h                                         ; $4ef1: $a4
    inc b                                         ; $4ef2: $04
    dec d                                         ; $4ef3: $15
    ld h, $fd                                     ; $4ef4: $26 $fd
    ld l, e                                       ; $4ef6: $6b
    sbc h                                         ; $4ef7: $9c
    dec de                                        ; $4ef8: $1b
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    ld c, [hl]                                    ; $4efb: $4e
    dec h                                         ; $4efc: $25
    dec sp                                        ; $4efd: $3b
    ld a, [hl-]                                   ; $4efe: $3a
    inc de                                        ; $4eff: $13
    ld bc, $0420                                  ; $4f00: $01 $20 $04
    dec sp                                        ; $4f03: $3b
    dec e                                         ; $4f04: $1d
    adc a                                         ; $4f05: $8f
    inc b                                         ; $4f06: $04
    ld a, a                                       ; $4f07: $7f
    ld d, a                                       ; $4f08: $57
    ld hl, $d304                                  ; $4f09: $21 $04 $d3
    add hl, sp                                    ; $4f0c: $39
    inc l                                         ; $4f0d: $2c
    add hl, hl                                    ; $4f0e: $29
    rst $38                                       ; $4f0f: $ff
    ld a, e                                       ; $4f10: $7b
    nop                                           ; $4f11: $00
    inc e                                         ; $4f12: $1c
    xor h                                         ; $4f13: $ac
    ld e, d                                       ; $4f14: $5a
    rst $38                                       ; $4f15: $ff
    ld a, a                                       ; $4f16: $7f
    dec bc                                        ; $4f17: $0b
    ld sp, $0400                                  ; $4f18: $31 $00 $04
    ret z                                         ; $4f1b: $c8

    ld e, [hl]                                    ; $4f1c: $5e
    rst $38                                       ; $4f1d: $ff
    ld a, a                                       ; $4f1e: $7f
    ld c, h                                       ; $4f1f: $4c
    add hl, bc                                    ; $4f20: $09
    ld b, d                                       ; $4f21: $42
    inc b                                         ; $4f22: $04
    jp c, $ab6b                                   ; $4f23: $da $6b $ab

    add hl, hl                                    ; $4f26: $29
    cp [hl]                                       ; $4f27: $be
    daa                                           ; $4f28: $27
    ld b, d                                       ; $4f29: $42
    ld [$36d3], sp                                ; $4f2a: $08 $d3 $36
    db $fd                                        ; $4f2d: $fd
    ld a, e                                       ; $4f2e: $7b
    ldh a, [$09]                                  ; $4f2f: $f0 $09
    ld h, e                                       ; $4f31: $63
    inc b                                         ; $4f32: $04
    inc a                                         ; $4f33: $3c
    ld [hl], $fd                                  ; $4f34: $36 $fd
    ld d, d                                       ; $4f36: $52
    xor $14                                       ; $4f37: $ee $14
    nop                                           ; $4f39: $00

jr_0b9_4f3a:
    nop                                           ; $4f3a: $00
    db $eb                                        ; $4f3b: $eb
    db $10                                        ; $4f3c: $10
    ld d, c                                       ; $4f3d: $51
    ld h, $57                                     ; $4f3e: $26 $57
    dec d                                         ; $4f40: $15
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    dec d                                         ; $4f43: $15
    ld a, $1c                                     ; $4f44: $3e $1c
    ld e, e                                       ; $4f46: $5b
    ld [$0020], a                                 ; $4f47: $ea $20 $00
    nop                                           ; $4f4a: $00
    rst $38                                       ; $4f4b: $ff
    ld a, a                                       ; $4f4c: $7f
    nop                                           ; $4f4d: $00
    jr nz, jr_0b9_4f3a                            ; $4f4e: $20 $ea

    jr z, @+$22                                   ; $4f50: $28 $20

    inc b                                         ; $4f52: $04
    ret z                                         ; $4f53: $c8

    ld e, [hl]                                    ; $4f54: $5e
    rst $38                                       ; $4f55: $ff
    ld a, a                                       ; $4f56: $7f
    nop                                           ; $4f57: $00
    jr nz, jr_0b9_4edb                            ; $4f58: $20 $81

    nop                                           ; $4f5a: $00
    xor l                                         ; $4f5b: $ad
    ld [hl-], a                                   ; $4f5c: $32
    ld a, [$8667]                                 ; $4f5d: $fa $67 $86
    dec d                                         ; $4f60: $15
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    call nc, Call_0b9_4642                        ; $4f63: $d4 $42 $46
    dec d                                         ; $4f66: $15
    cp e                                          ; $4f67: $bb
    ld l, a                                       ; $4f68: $6f
    ld b, d                                       ; $4f69: $42
    nop                                           ; $4f6a: $00
    sub e                                         ; $4f6b: $93
    ld c, $ff                                     ; $4f6c: $0e $ff
    ld e, a                                       ; $4f6e: $5f
    or a                                          ; $4f6f: $b7
    dec l                                         ; $4f70: $2d
    ld hl, $dd00                                  ; $4f71: $21 $00 $dd
    ld b, d                                       ; $4f74: $42
    adc [hl]                                      ; $4f75: $8e
    ld hl, $7bff                                  ; $4f76: $21 $ff $7b
    nop                                           ; $4f79: $00
    nop                                           ; $4f7a: $00
    or d                                          ; $4f7b: $b2
    dec l                                         ; $4f7c: $2d
    cp e                                          ; $4f7d: $bb
    ld c, [hl]                                    ; $4f7e: $4e

jr_0b9_4f7f:
    ccf                                           ; $4f7f: $3f
    ld e, a                                       ; $4f80: $5f
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    rst $38                                       ; $4f83: $ff
    ld a, a                                       ; $4f84: $7f
    nop                                           ; $4f85: $00
    jr nz, @+$41                                  ; $4f86: $20 $3f

    ld e, a                                       ; $4f88: $5f
    jr nz, jr_0b9_4f8b                            ; $4f89: $20 $00

jr_0b9_4f8b:
    rst $38                                       ; $4f8b: $ff
    ld a, a                                       ; $4f8c: $7f
    nop                                           ; $4f8d: $00
    jr nz, jr_0b9_4ff4                            ; $4f8e: $20 $64

    dec c                                         ; $4f90: $0d
    jr nz, jr_0b9_4f93                            ; $4f91: $20 $00

jr_0b9_4f93:
    ld h, l                                       ; $4f93: $65
    ld de, $08c2                                  ; $4f94: $11 $c2 $08
    add sp, $1d                                   ; $4f97: $e8 $1d
    jr nz, jr_0b9_4f9b                            ; $4f99: $20 $00

jr_0b9_4f9b:
    add hl, sp                                    ; $4f9b: $39
    rla                                           ; $4f9c: $17
    rst $38                                       ; $4f9d: $ff
    scf                                           ; $4f9e: $37
    db $e3                                        ; $4f9f: $e3
    ld [$0000], sp                                ; $4fa0: $08 $00 $00
    ld l, h                                       ; $4fa3: $6c
    ld l, $a2                                     ; $4fa4: $2e $a2
    inc b                                         ; $4fa6: $04
    jr c, @+$25                                   ; $4fa7: $38 $23

    ld bc, $3500                                  ; $4fa9: $01 $00 $35
    ld e, $7b                                     ; $4fac: $1e $7b
    ld l, a                                       ; $4fae: $6f
    rst $38                                       ; $4faf: $ff
    dec hl                                        ; $4fb0: $2b
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    ld [hl], b                                    ; $4fb3: $70
    dec h                                         ; $4fb4: $25
    cp h                                          ; $4fb5: $bc
    ld c, d                                       ; $4fb6: $4a
    reti                                          ; $4fb7: $d9


    inc b                                         ; $4fb8: $04
    ld bc, $1100                                  ; $4fb9: $01 $00 $11
    add hl, bc                                    ; $4fbc: $09
    nop                                           ; $4fbd: $00
    jr nz, jr_0b9_4fd7                            ; $4fbe: $20 $17

    inc hl                                        ; $4fc0: $23
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    rst $38                                       ; $4fc3: $ff
    ld a, a                                       ; $4fc4: $7f
    nop                                           ; $4fc5: $00
    jr nz, @-$1c                                  ; $4fc6: $20 $e2

    inc b                                         ; $4fc8: $04
    pop bc                                        ; $4fc9: $c1
    inc b                                         ; $4fca: $04
    ld [hl], $57                                  ; $4fcb: $36 $57
    ret                                           ; $4fcd: $c9


    ld hl, $0d24                                  ; $4fce: $21 $24 $0d
    jr nz, jr_0b9_4fd3                            ; $4fd1: $20 $00

jr_0b9_4fd3:
    or l                                          ; $4fd3: $b5
    ld e, $49                                     ; $4fd4: $1e $49
    dec c                                         ; $4fd6: $0d

jr_0b9_4fd7:
    ld d, [hl]                                    ; $4fd7: $56
    ld d, a                                       ; $4fd8: $57
    ld h, d                                       ; $4fd9: $62
    ld [$3a8f], sp                                ; $4fda: $08 $8f $3a
    sbc b                                         ; $4fdd: $98
    ld h, e                                       ; $4fde: $63
    sbc e                                         ; $4fdf: $9b
    rla                                           ; $4fe0: $17
    ld [bc], a                                    ; $4fe1: $02
    nop                                           ; $4fe2: $00
    reti                                          ; $4fe3: $d9


    dec l                                         ; $4fe4: $2d
    sbc $27                                       ; $4fe5: $de $27
    xor l                                         ; $4fe7: $ad
    add hl, bc                                    ; $4fe8: $09
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    push de                                       ; $4feb: $d5
    dec h                                         ; $4fec: $25
    sub a                                         ; $4fed: $97
    ld e, e                                       ; $4fee: $5b
    add l                                         ; $4fef: $85
    add hl, de                                    ; $4ff0: $19
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    add h                                         ; $4ff3: $84

jr_0b9_4ff4:
    inc b                                         ; $4ff4: $04
    nop                                           ; $4ff5: $00
    jr nz, jr_0b9_5042                            ; $4ff6: $20 $4a

    dec c                                         ; $4ff8: $0d
    nop                                           ; $4ff9: $00
    nop                                           ; $4ffa: $00
    nop                                           ; $4ffb: $00
    jr nz, jr_0b9_4f7f                            ; $4ffc: $20 $81

    nop                                           ; $4ffe: $00
    jp nz, $2004                                  ; $4fff: $c2 $04 $20

    nop                                           ; $5002: $00
    ld b, l                                       ; $5003: $45
    ld de, $2a4b                                  ; $5004: $11 $4b $2a
    and c                                         ; $5007: $a1
    inc b                                         ; $5008: $04
    nop                                           ; $5009: $00
    nop                                           ; $500a: $00
    dec hl                                        ; $500b: $2b
    ld a, [hl+]                                   ; $500c: $2a
    sub [hl]                                      ; $500d: $96
    ld d, a                                       ; $500e: $57
    inc bc                                        ; $500f: $03
    add hl, bc                                    ; $5010: $09
    push bc                                       ; $5011: $c5
    ld [$3630], sp                                ; $5012: $08 $30 $36
    sbc $2f                                       ; $5015: $de $2f
    ld a, c                                       ; $5017: $79
    ld h, a                                       ; $5018: $67
    inc hl                                        ; $5019: $23
    nop                                           ; $501a: $00
    rla                                           ; $501b: $17
    inc hl                                        ; $501c: $23
    ld c, [hl]                                    ; $501d: $4e
    add hl, de                                    ; $501e: $19
    cp $56                                        ; $501f: $fe $56
    ld b, b                                       ; $5021: $40
    nop                                           ; $5022: $00
    xor [hl]                                      ; $5023: $ae
    ld [hl-], a                                   ; $5024: $32
    inc h                                         ; $5025: $24
    dec c                                         ; $5026: $0d
    sbc a                                         ; $5027: $9f
    ld b, [hl]                                    ; $5028: $46
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    jr nz, @-$51                                  ; $502c: $20 $ad

    dec [hl]                                      ; $502e: $35
    ld h, e                                       ; $502f: $63
    inc c                                         ; $5030: $0c
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    jr nz, @+$63                                  ; $5034: $20 $61

    inc b                                         ; $5036: $04
    and c                                         ; $5037: $a1
    nop                                           ; $5038: $00
    jr nz, jr_0b9_503b                            ; $5039: $20 $00

jr_0b9_503b:
    ld l, $3a                                     ; $503b: $2e $3a
    dec b                                         ; $503d: $05
    ld de, $4732                                  ; $503e: $11 $32 $47
    nop                                           ; $5041: $00

jr_0b9_5042:
    nop                                           ; $5042: $00
    dec bc                                        ; $5043: $0b
    ld a, [hl+]                                   ; $5044: $2a
    ld a, [c]                                     ; $5045: $f2
    ld b, [hl]                                    ; $5046: $46
    inc b                                         ; $5047: $04
    dec c                                         ; $5048: $0d
    ld b, d                                       ; $5049: $42
    inc b                                         ; $504a: $04
    ld d, d                                       ; $504b: $52
    ld c, $ff                                     ; $504c: $0e $ff
    ld a, a                                       ; $504e: $7f
    cp l                                          ; $504f: $bd
    dec de                                        ; $5050: $1b
    ld [bc], a                                    ; $5051: $02
    nop                                           ; $5052: $00
    cp a                                          ; $5053: $bf
    ld c, [hl]                                    ; $5054: $4e
    ld c, [hl]                                    ; $5055: $4e
    add hl, de                                    ; $5056: $19
    ld e, a                                       ; $5057: $5f
    ld e, a                                       ; $5058: $5f
    ld b, b                                       ; $5059: $40
    nop                                           ; $505a: $00
    rst $00                                       ; $505b: $c7
    add hl, de                                    ; $505c: $19
    db $e3                                        ; $505d: $e3
    ld [$2aab], sp                                ; $505e: $08 $ab $2a
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rst $38                                       ; $5063: $ff
    ld a, a                                       ; $5064: $7f
    nop                                           ; $5065: $00
    jr nz, @-$53                                  ; $5066: $20 $ab

    ld a, [hl+]                                   ; $5068: $2a
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    jr nz, jr_0b9_50ce                            ; $506c: $20 $60

    nop                                           ; $506e: $00
    and b                                         ; $506f: $a0
    nop                                           ; $5070: $00
    jr nz, jr_0b9_5073                            ; $5071: $20 $00

jr_0b9_5073:
    inc h                                         ; $5073: $24
    dec c                                         ; $5074: $0d
    ret z                                         ; $5075: $c8

    add hl, de                                    ; $5076: $19
    and d                                         ; $5077: $a2
    inc b                                         ; $5078: $04
    jr nz, jr_0b9_507b                            ; $5079: $20 $00

jr_0b9_507b:
    xor a                                         ; $507b: $af
    ld [hl], $c2                                  ; $507c: $36 $c2
    inc b                                         ; $507e: $04
    ld b, h                                       ; $507f: $44
    ld de, $0021                                  ; $5080: $11 $21 $00
    add [hl]                                      ; $5083: $86
    dec d                                         ; $5084: $15
    db $e3                                        ; $5085: $e3
    ld [$11ce], sp                                ; $5086: $08 $ce $11
    ld hl, $f800                                  ; $5089: $21 $00 $f8
    dec [hl]                                      ; $508c: $35
    cpl                                           ; $508d: $2f
    dec e                                         ; $508e: $1d
    ccf                                           ; $508f: $3f
    ld e, a                                       ; $5090: $5f
    jr nz, jr_0b9_5093                            ; $5091: $20 $00

jr_0b9_5093:
    xor b                                         ; $5093: $a8
    dec e                                         ; $5094: $1d

jr_0b9_5095:
    adc h                                         ; $5095: $8c
    ld l, $02                                     ; $5096: $2e $02
    dec b                                         ; $5098: $05
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    rst $38                                       ; $509b: $ff
    ld a, a                                       ; $509c: $7f
    nop                                           ; $509d: $00
    jr nz, jr_0b9_50a2                            ; $509e: $20 $02

    dec b                                         ; $50a0: $05
    nop                                           ; $50a1: $00

jr_0b9_50a2:
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    db $10                                        ; $50a4: $10
    and b                                         ; $50a5: $a0
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    jr nz, jr_0b9_50aa                            ; $50a8: $20 $00

jr_0b9_50aa:
    nop                                           ; $50aa: $00
    inc bc                                        ; $50ab: $03
    add hl, bc                                    ; $50ac: $09
    ld h, [hl]                                    ; $50ad: $66
    dec d                                         ; $50ae: $15
    and c                                         ; $50af: $a1
    inc b                                         ; $50b0: $04
    and c                                         ; $50b1: $a1
    inc b                                         ; $50b2: $04
    inc l                                         ; $50b3: $2c
    ld [hl-], a                                   ; $50b4: $32
    xor b                                         ; $50b5: $a8
    ld hl, $4b33                                  ; $50b6: $21 $33 $4b
    ld [bc], a                                    ; $50b9: $02
    nop                                           ; $50ba: $00
    cpl                                           ; $50bb: $2f
    dec e                                         ; $50bc: $1d
    ld [hl], a                                    ; $50bd: $77
    ld c, a                                       ; $50be: $4f
    ld c, h                                       ; $50bf: $4c
    ld [hl-], a                                   ; $50c0: $32
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    ld a, $5b                                     ; $50c3: $3e $5b
    ld d, h                                       ; $50c5: $54
    dec h                                         ; $50c6: $25
    inc b                                         ; $50c7: $04
    dec d                                         ; $50c8: $15
    ld b, b                                       ; $50c9: $40
    nop                                           ; $50ca: $00
    call $ff2e                                    ; $50cb: $cd $2e $ff

jr_0b9_50ce:
    ld a, a                                       ; $50ce: $7f
    inc b                                         ; $50cf: $04
    dec c                                         ; $50d0: $0d
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    ld a, a                                       ; $50d4: $7f
    nop                                           ; $50d5: $00
    jr nz, jr_0b9_50dc                            ; $50d6: $20 $04

    dec c                                         ; $50d8: $0d
    jr nz, jr_0b9_50db                            ; $50d9: $20 $00

jr_0b9_50db:
    nop                                           ; $50db: $00

jr_0b9_50dc:
    db $10                                        ; $50dc: $10
    and b                                         ; $50dd: $a0
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    jr nz, jr_0b9_50e2                            ; $50e0: $20 $00

jr_0b9_50e2:
    nop                                           ; $50e2: $00
    ret nc                                        ; $50e3: $d0

    ld a, $03                                     ; $50e4: $3e $03
    add hl, bc                                    ; $50e6: $09
    and c                                         ; $50e7: $a1
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    adc l                                         ; $50eb: $8d
    ld [hl-], a                                   ; $50ec: $32
    or [hl]                                       ; $50ed: $b6
    ld d, a                                       ; $50ee: $57
    inc bc                                        ; $50ef: $03
    add hl, bc                                    ; $50f0: $09
    ld hl, $3f00                                  ; $50f1: $21 $00 $3f
    ld e, e                                       ; $50f4: $5b

jr_0b9_50f5:
    ld h, l                                       ; $50f5: $65
    ld de, $1d2f                                  ; $50f6: $11 $2f $1d
    ld h, c                                       ; $50f9: $61
    inc b                                         ; $50fa: $04
    ld a, [c]                                     ; $50fb: $f2
    ld b, [hl]                                    ; $50fc: $46
    ld e, $5b                                     ; $50fd: $1e $5b
    ld [hl], a                                    ; $50ff: $77
    dec h                                         ; $5100: $25
    add b                                         ; $5101: $80
    nop                                           ; $5102: $00
    sub [hl]                                      ; $5103: $96
    ld d, a                                       ; $5104: $57
    add a                                         ; $5105: $87
    add hl, de                                    ; $5106: $19
    rst $38                                       ; $5107: $ff
    ld a, a                                       ; $5108: $7f
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    jr nz, jr_0b9_5095                            ; $510c: $20 $87

    add hl, de                                    ; $510e: $19

jr_0b9_510f:
    rst $38                                       ; $510f: $ff

jr_0b9_5110:
    ld a, a                                       ; $5110: $7f
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    inc e                                         ; $5114: $1c
    and b                                         ; $5115: $a0
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    jr nz, jr_0b9_515a                            ; $5118: $20 $40

    nop                                           ; $511a: $00
    inc bc                                        ; $511b: $03
    dec c                                         ; $511c: $0d
    pop bc                                        ; $511d: $c1
    nop                                           ; $511e: $00
    ld b, l                                       ; $511f: $45
    ld de, $0020                                  ; $5120: $11 $20 $00
    ld d, e                                       ; $5123: $53
    ld c, e                                       ; $5124: $4b
    and a                                         ; $5125: $a7
    add hl, de                                    ; $5126: $19
    jp nz, Jump_000_0004                          ; $5127: $c2 $04 $00

    nop                                           ; $512a: $00
    or $39                                        ; $512b: $f6 $39
    ld e, [hl]                                    ; $512d: $5e
    ld h, e                                       ; $512e: $63
    inc hl                                        ; $512f: $23
    add hl, bc                                    ; $5130: $09
    ld b, b                                       ; $5131: $40
    nop                                           ; $5132: $00
    ld l, l                                       ; $5133: $6d
    ld [hl-], a                                   ; $5134: $32
    ld e, h                                       ; $5135: $5c
    ld a, $7c                                     ; $5136: $3e $7c
    ld e, a                                       ; $5138: $5f
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    pop af                                        ; $513b: $f1
    ld b, d                                       ; $513c: $42
    rst $38                                       ; $513d: $ff
    ld a, a                                       ; $513e: $7f
    inc hl                                        ; $513f: $23
    add hl, bc                                    ; $5140: $09
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    jr nz, @+$01                                  ; $5144: $20 $ff

    ld a, a                                       ; $5146: $7f
    inc hl                                        ; $5147: $23
    add hl, bc                                    ; $5148: $09
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00

jr_0b9_514c:
    jr nz, jr_0b9_50f5                            ; $514c: $20 $a7

    add hl, de                                    ; $514e: $19
    jp nz, Jump_000_0004                          ; $514f: $c2 $04 $00

    nop                                           ; $5152: $00
    rst $38                                       ; $5153: $ff
    ld a, a                                       ; $5154: $7f
    and c                                         ; $5155: $a1
    inc b                                         ; $5156: $04
    inc h                                         ; $5157: $24
    dec c                                         ; $5158: $0d
    add d                                         ; $5159: $82

jr_0b9_515a:
    inc b                                         ; $515a: $04
    adc h                                         ; $515b: $8c
    ld l, $a6                                     ; $515c: $2e $a6
    dec d                                         ; $515e: $15
    inc [hl]                                      ; $515f: $34
    ld c, a                                       ; $5160: $4f
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    dec sp                                        ; $5163: $3b
    ld a, [hl-]                                   ; $5164: $3a
    ccf                                           ; $5165: $3f
    ld e, a                                       ; $5166: $5f
    and $19                                       ; $5167: $e6 $19
    ld b, b                                       ; $5169: $40
    nop                                           ; $516a: $00
    ld [hl], l                                    ; $516b: $75
    ld d, e                                       ; $516c: $53
    ei                                            ; $516d: $fb
    dec l                                         ; $516e: $2d
    add l                                         ; $516f: $85
    ld de, $0061                                  ; $5170: $11 $61 $00
    sub e                                         ; $5173: $93
    ld b, a                                       ; $5174: $47
    xor d                                         ; $5175: $aa
    add hl, hl                                    ; $5176: $29
    db $fd                                        ; $5177: $fd
    ld [hl], a                                    ; $5178: $77
    nop                                           ; $5179: $00
    jr nz, jr_0b9_510f                            ; $517a: $20 $93

    ld b, a                                       ; $517c: $47
    xor d                                         ; $517d: $aa
    add hl, hl                                    ; $517e: $29
    db $fd                                        ; $517f: $fd
    ld [hl], a                                    ; $5180: $77
    nop                                           ; $5181: $00
    jr nz, jr_0b9_5110                            ; $5182: $20 $8c

    ld l, $a6                                     ; $5184: $2e $a6
    dec d                                         ; $5186: $15
    inc [hl]                                      ; $5187: $34
    ld c, a                                       ; $5188: $4f
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    rst $38                                       ; $518b: $ff
    ld a, a                                       ; $518c: $7f
    and d                                         ; $518d: $a2
    inc b                                         ; $518e: $04
    inc bc                                        ; $518f: $03
    add hl, bc                                    ; $5190: $09
    ld h, b                                       ; $5191: $60
    nop                                           ; $5192: $00
    add hl, hl                                    ; $5193: $29
    ld e, $24                                     ; $5194: $1e $24
    dec c                                         ; $5196: $0d
    adc $36                                       ; $5197: $ce $36
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    sub a                                         ; $519b: $97
    ld hl, $1e46                                  ; $519c: $21 $46 $1e
    sbc h                                         ; $519f: $9c
    ld c, d                                       ; $51a0: $4a
    ld b, b                                       ; $51a1: $40
    nop                                           ; $51a2: $00
    adc [hl]                                      ; $51a3: $8e
    ld [hl], $c6                                  ; $51a4: $36 $c6
    dec d                                         ; $51a6: $15
    ld [hl], a                                    ; $51a7: $77
    ld e, e                                       ; $51a8: $5b
    nop                                           ; $51a9: $00
    inc b                                         ; $51aa: $04
    sbc b                                         ; $51ab: $98
    ld e, a                                       ; $51ac: $5f
    ld [c], a                                     ; $51ad: $e2
    inc b                                         ; $51ae: $04
    rst $38                                       ; $51af: $ff
    ld a, a                                       ; $51b0: $7f
    nop                                           ; $51b1: $00

jr_0b9_51b2:
    jr nz, jr_0b9_514c                            ; $51b2: $20 $98

    ld e, a                                       ; $51b4: $5f
    ld [c], a                                     ; $51b5: $e2
    inc b                                         ; $51b6: $04
    rst $38                                       ; $51b7: $ff
    ld a, a                                       ; $51b8: $7f
    nop                                           ; $51b9: $00
    jr nz, jr_0b9_51e5                            ; $51ba: $20 $29

    ld e, $24                                     ; $51bc: $1e $24
    dec c                                         ; $51be: $0d
    adc $36                                       ; $51bf: $ce $36
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    ld a, a                                       ; $51c4: $7f
    jp nz, Jump_000_0004                          ; $51c5: $c2 $04 $00

    jr nz, jr_0b9_520a                            ; $51c8: $20 $40

    nop                                           ; $51ca: $00
    inc b                                         ; $51cb: $04
    dec c                                         ; $51cc: $0d
    and d                                         ; $51cd: $a2
    inc b                                         ; $51ce: $04
    ld h, l                                       ; $51cf: $65
    ld de, $0000                                  ; $51d0: $11 $00 $00
    ld l, d                                       ; $51d3: $6a
    ld h, $f4                                     ; $51d4: $26 $f4
    inc d                                         ; $51d6: $14
    ld h, b                                       ; $51d7: $60
    nop                                           ; $51d8: $00
    ld h, b                                       ; $51d9: $60
    nop                                           ; $51da: $00
    ldh a, [$3e]                                  ; $51db: $f0 $3e
    ld [bc], a                                    ; $51dd: $02
    add hl, bc                                    ; $51de: $09
    sub a                                         ; $51df: $97
    ld e, a                                       ; $51e0: $5f
    jr nz, jr_0b9_51e7                            ; $51e1: $20 $04

    ld [de], a                                    ; $51e3: $12
    ld b, e                                       ; $51e4: $43

jr_0b9_51e5:
    rst $38                                       ; $51e5: $ff
    ld a, a                                       ; $51e6: $7f

jr_0b9_51e7:
    ld a, [hl+]                                   ; $51e7: $2a
    add hl, hl                                    ; $51e8: $29
    nop                                           ; $51e9: $00
    jr nz, jr_0b9_51fe                            ; $51ea: $20 $12

    ld b, e                                       ; $51ec: $43
    rst $38                                       ; $51ed: $ff
    ld a, a                                       ; $51ee: $7f
    ld a, [hl+]                                   ; $51ef: $2a
    add hl, hl                                    ; $51f0: $29
    nop                                           ; $51f1: $00
    jr nz, jr_0b9_51f8                            ; $51f2: $20 $04

    dec c                                         ; $51f4: $0d
    and d                                         ; $51f5: $a2
    inc b                                         ; $51f6: $04
    ld h, l                                       ; $51f7: $65

jr_0b9_51f8:
    ld de, $0020                                  ; $51f8: $11 $20 $00
    rst $38                                       ; $51fb: $ff
    ld a, a                                       ; $51fc: $7f
    rst $00                                       ; $51fd: $c7

jr_0b9_51fe:
    add hl, de                                    ; $51fe: $19
    nop                                           ; $51ff: $00
    jr nz, jr_0b9_5202                            ; $5200: $20 $00

jr_0b9_5202:
    nop                                           ; $5202: $00
    add [hl]                                      ; $5203: $86
    dec d                                         ; $5204: $15
    jp nz, Jump_0b9_4a04                          ; $5205: $c2 $04 $4a

    ld h, $00                                     ; $5208: $26 $00

jr_0b9_520a:
    nop                                           ; $520a: $00
    rst $38                                       ; $520b: $ff
    ld a, a                                       ; $520c: $7f
    rst $38                                       ; $520d: $ff
    ld a, a                                       ; $520e: $7f
    ld a, [hl+]                                   ; $520f: $2a
    add hl, hl                                    ; $5210: $29
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ld a, a                                       ; $5214: $7f
    rst $38                                       ; $5215: $ff
    ld a, a                                       ; $5216: $7f
    ld a, [hl+]                                   ; $5217: $2a
    add hl, hl                                    ; $5218: $29
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    rst $38                                       ; $521b: $ff
    ld a, a                                       ; $521c: $7f
    nop                                           ; $521d: $00
    jr nz, jr_0b9_524a                            ; $521e: $20 $2a

    add hl, hl                                    ; $5220: $29
    nop                                           ; $5221: $00
    jr nz, @+$01                                  ; $5222: $20 $ff

    ld a, a                                       ; $5224: $7f
    nop                                           ; $5225: $00
    jr nz, jr_0b9_5252                            ; $5226: $20 $2a

    add hl, hl                                    ; $5228: $29

Jump_0b9_5229:
    nop                                           ; $5229: $00
    jr nz, jr_0b9_51b2                            ; $522a: $20 $86

    dec d                                         ; $522c: $15
    jp nz, Jump_0b9_4a04                          ; $522d: $c2 $04 $4a

    ld h, $00                                     ; $5230: $26 $00
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    ld a, a                                       ; $5234: $7f
    nop                                           ; $5235: $00
    jr nz, @+$4c                                  ; $5236: $20 $4a

    ld h, $00                                     ; $5238: $26 $00
    nop                                           ; $523a: $00
    rst $38                                       ; $523b: $ff
    ld a, a                                       ; $523c: $7f
    nop                                           ; $523d: $00
    jr nz, @+$4c                                  ; $523e: $20 $4a

    ld h, $00                                     ; $5240: $26 $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    jr nz, jr_0b9_5246                            ; $5244: $20 $00

jr_0b9_5246:
    jr nz, @+$2c                                  ; $5246: $20 $2a

    add hl, hl                                    ; $5248: $29
    nop                                           ; $5249: $00

jr_0b9_524a:
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    jr nz, jr_0b9_524e                            ; $524c: $20 $00

jr_0b9_524e:
    jr nz, @+$2c                                  ; $524e: $20 $2a

    add hl, hl                                    ; $5250: $29
    nop                                           ; $5251: $00

jr_0b9_5252:
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    jr nz, jr_0b9_5256                            ; $5254: $20 $00

jr_0b9_5256:
    jr nz, @+$2c                                  ; $5256: $20 $2a

    add hl, hl                                    ; $5258: $29
    nop                                           ; $5259: $00
    jr nz, jr_0b9_525c                            ; $525a: $20 $00

jr_0b9_525c:
    jr nz, jr_0b9_525e                            ; $525c: $20 $00

jr_0b9_525e:
    jr nz, @+$2c                                  ; $525e: $20 $2a

    add hl, hl                                    ; $5260: $29

    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $20, $ff, $7f, $00, $20, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $00, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $00, $ff, $03, $ff, $7f, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $20, $ff, $7f, $00, $20, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $20, $ff, $7f, $00, $20, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $df, $03, $ff, $7f, $00, $20, $00, $20, $00, $00, $df, $03, $ff, $7f, $00, $20
    db $00, $20, $df, $03, $ff, $7f, $00, $20, $00, $20, $df, $03, $ff, $7f, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $20, $ff, $7f, $00, $20, $00, $20
    db $00, $00, $bf, $03, $ff, $7f, $00, $20, $be, $03, $de, $03, $bf, $03, $7d, $03
    db $00, $00, $be, $03, $ff, $7f, $00, $20, $00, $00, $00, $20, $ff, $7f, $00, $20
    db $00, $20, $00, $20, $ff, $7f, $00, $20, $00, $20, $bf, $03, $ff, $7f, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $00, $be, $03, $ff, $7f, $00, $20
    db $9e, $03, $be, $03, $ff, $7f, $00, $20, $00, $00, $9e, $03, $ff, $7f, $be, $03
    db $00, $00, $ff, $7f, $00, $20, $be, $03, $00, $20, $ff, $7f, $00, $20, $be, $03
    db $00, $20, $be, $03, $ff, $7f, $00, $20, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $00, $00, $9e, $03, $00, $20, $00, $20, $7d, $03, $9e, $03, $00, $20, $be, $03
    db $7d, $03, $9e, $03, $00, $20, $be, $03, $00, $00, $7d, $03, $ff, $7f, $00, $20
    db $00, $20, $7d, $03, $ff, $7f, $00, $20, $00, $20, $9e, $03, $00, $20, $00, $20
    db $00, $00, $7d, $03, $ff, $7f, $00, $20, $7d, $03, $7d, $03, $ff, $7f, $00, $20
    db $ae, $01, $7d, $03, $96, $02, $12, $02, $5d, $03, $7d, $03, $96, $02, $12, $02
    db $00, $00, $5d, $03, $ff, $7f, $7d, $03, $00, $00, $00, $20, $ff, $7f, $7d, $03
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $00, $5d, $03, $ff, $7f, $00, $20
    db $00, $00, $75, $02, $5d, $03, $e8, $00, $00, $00, $73, $4e, $de, $6b, $c6, $08
    db $22, $00, $d9, $02, $6d, $01, $3c, $03, $00, $00, $3c, $03, $ff, $7f, $5d, $03
    db $00, $00, $ff, $7f, $00, $20, $5d, $03, $00, $00, $ff, $7f, $00, $20, $e8, $00
    db $00, $00, $3c, $03, $00, $20, $e8, $00, $00, $00, $1b, $03, $7b, $6f, $c7, $04
    db $1c, $03, $7d, $33, $df, $63, $3c, $0b, $00, $00, $11, $1a, $3c, $0b, $6b, $29
    db $1c, $03, $3c, $03, $3c, $0b, $6b, $29, $00, $00, $1c, $03, $ff, $7f, $00, $20
    db $00, $00, $1c, $03, $ff, $7f, $00, $20, $1c, $03, $1c, $03, $ff, $7f, $00, $20
    db $21, $00, $f1, $1d, $bd, $73, $1c, $0b, $fb, $02, $1c, $03, $ff, $7f, $00, $20
    db $00, $00, $b8, $2a, $09, $19, $fb, $02, $fb, $02, $3c, $1b, $1c, $03, $fb, $02
    db $00, $00, $fb, $02, $ff, $7f, $00, $20, $00, $00, $db, $02, $ff, $7f, $fb, $02
    db $db, $02, $fb, $02, $fb, $06, $fb, $02, $01, $00, $da, $02, $7d, $43, $de, $7b
    db $db, $02, $db, $06, $fb, $02, $fb, $06, $00, $00, $8f, $01, $db, $02, $0a, $05
    db $db, $02, $7b, $6f, $be, $5b, $db, $06, $00, $00, $db, $02, $ff, $7f, $00, $20
    db $00, $00, $bb, $02, $ff, $7f, $00, $20, $ba, $06, $db, $02, $bb, $06, $db, $06
    db $21, $04, $ef, $3d, $be, $67, $99, $02, $ba, $06, $bb, $06, $ff, $7f, $00, $20
    db $00, $00, $f2, $01, $4d, $01, $ba, $06, $ba, $06, $39, $67, $ff, $7f, $fb, $16
    db $00, $00, $ba, $06, $ff, $7f, $00, $20, $00, $00, $9a, $06, $ff, $7f, $00, $20
    db $9a, $06, $ba, $06, $ff, $7f, $00, $20, $01, $00, $99, $02, $3b, $47, $29, $25
    db $9a, $06, $ba, $06, $ff, $7f, $00, $20, $00, $00, $f7, $5e, $9a, $06, $e8, $0c
    db $9a, $06, $be, $63, $ff, $7f, $e8, $0c, $00, $00, $9a, $06, $ff, $7f, $00, $20
    db $00, $00, $7a, $06, $ff, $7f, $00, $20, $79, $06, $9a, $06, $7a, $06, $00, $20
    db $6b, $2d, $7d, $53, $79, $06, $ba, $16, $21, $00, $58, $06, $0b, $01, $86, $00
    db $00, $00, $97, $2a, $bd, $77, $6d, $15, $79, $06, $db, $22, $7a, $06, $6d, $15
    db $00, $00, $79, $06, $ff, $7f, $00, $20, $00, $00, $59, $06, $ff, $7f, $00, $20
    db $59, $06, $79, $06, $ff, $7f, $00, $20, $59, $06, $79, $06, $ff, $7f, $00, $20
    db $43, $00, $cf, $31, $19, $53, $38, $0a, $ef, $3d, $f9, $42, $59, $12, $9d, $6b
    db $39, $06, $59, $06, $59, $12, $9d, $6b, $00, $00, $39, $06, $ff, $7f, $00, $20
    db $00, $00, $38, $06, $ff, $7f, $00, $20, $38, $06, $39, $06, $59, $06, $00, $20
    db $38, $06, $39, $06, $59, $06, $00, $20, $00, $00, $f3, $11, $2a, $1d, $38, $06
    db $18, $06, $38, $06, $2a, $1d, $38, $06, $18, $06, $38, $06, $2a, $1d, $38, $06
    db $00, $00, $18, $06, $ff, $7f, $00, $20, $00, $00, $18, $06, $ff, $7f, $00, $20
    db $18, $06, $38, $06, $ff, $7f, $00, $20, $18, $06, $38, $06, $ff, $7f, $00, $20
    db $85, $04, $d8, $46, $f7, $05, $ff, $7f, $f8, $05, $18, $06, $f7, $05, $ff, $7f
    db $f8, $05, $18, $06, $f7, $05, $ff, $7f, $00, $00, $ff, $7f, $18, $06, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $f7, $05, $f8, $05, $18, $06, $00, $20
    db $f7, $05, $f8, $05, $18, $06, $00, $20, $ca, $00, $1c, $4f, $d6, $09, $ff, $7b
    db $d7, $05, $f7, $05, $d6, $09, $ff, $7b, $d7, $05, $f7, $05, $d6, $09, $ff, $7b
    db $00, $00, $ff, $7f, $00, $20, $ff, $7b, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $00, $00, $b6, $05, $d7, $05, $b7, $05, $b6, $05, $d7, $05, $b7, $05, $b7, $05
    db $00, $00, $96, $05, $cb, $00, $db, $46, $96, $05, $b6, $05, $b7, $05, $96, $09
    db $00, $00, $96, $05, $b6, $05, $b7, $05, $00, $00, $ff, $7f, $00, $20, $b7, $05
    db $00, $00, $ff, $7f, $00, $20, $b7, $05, $00, $00, $76, $09, $96, $09, $b7, $05
    db $76, $09, $96, $05, $96, $09, $b7, $05, $00, $00, $ff, $7f, $55, $09, $76, $09
    db $55, $09, $76, $09, $55, $09, $76, $09, $00, $00, $ff, $7f, $55, $09, $76, $09
    db $00, $00, $ff, $7f, $00, $20, $76, $09, $00, $00, $ff, $7f, $00, $20, $b7, $05
    db $00, $00, $ff, $7f, $55, $09, $75, $09, $55, $09, $75, $09, $55, $09, $75, $09
    db $00, $00, $ff, $7f, $34, $09, $55, $09, $34, $09, $55, $09, $34, $09, $55, $09
    db $00, $00, $ff, $7f, $34, $09, $55, $09, $00, $00, $00, $20, $34, $09, $55, $09
    db $00, $00, $00, $20, $55, $09, $75, $09, $00, $00, $ff, $7f, $14, $09, $34, $09
    db $14, $09, $34, $09, $14, $09, $34, $09, $f3, $08, $14, $09, $f4, $08, $55, $09
    db $f3, $08, $14, $09, $f4, $08, $55, $09, $00, $00, $ff, $7f, $f3, $08, $14, $09
    db $00, $00, $00, $20, $f3, $08, $14, $09, $00, $00, $00, $20, $14, $09, $34, $09
    db $00, $00, $ff, $7f, $d3, $08, $f3, $08, $d3, $08, $f3, $08, $f4, $08, $f3, $08
    db $b3, $08, $d3, $08, $f3, $08, $14, $09, $b3, $08, $d3, $08, $f3, $08, $14, $09
    db $00, $00, $ff, $7f, $b3, $08, $d3, $08, $00, $20, $ff, $7f, $b3, $08, $d3, $08
    db $00, $20, $f3, $08, $f4, $08, $f3, $08, $00, $00, $ff, $7f, $92, $08, $b3, $08
    db $92, $08, $b3, $08, $b2, $08, $b3, $08, $92, $08, $b2, $08, $00, $20, $00, $20
    db $92, $08, $b2, $08, $00, $20, $00, $20, $00, $00, $ff, $7f, $92, $08, $00, $20
    db $00, $20, $ff, $7f, $92, $08, $00, $20, $00, $20, $b3, $08, $b2, $08, $b3, $08
    db $00, $00, $ff, $7f, $72, $08, $00, $20, $72, $08, $92, $08, $72, $0c, $00, $20
    db $51, $08, $72, $08, $72, $0c, $51, $0c, $51, $08, $72, $08, $51, $0c, $72, $0c
    db $00, $00, $ff, $7f, $51, $08, $00, $20, $00, $20, $ff, $7f, $51, $08, $00, $20
    db $00, $20, $92, $08, $72, $0c, $00, $20, $00, $00, $ff, $7f, $51, $0c, $00, $20
    db $00, $00, $51, $0c, $51, $0c, $00, $20, $00, $00, $ff, $7f, $51, $08, $00, $20
    db $00, $00, $ff, $7f, $51, $08, $00, $20, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $00, $20, $ff, $7f, $00, $20, $00, $20, $00, $20, $51, $0c, $51, $0c, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $00, $20, $00, $00, $ff, $7f, $00, $20, $00, $20
    db $00, $00, $00, $20, $00, $20, $00, $20, $00, $00, $00, $20, $00, $20, $00, $20
    db $00, $00, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20, $00, $20
    db $10, $03, $46, $02, $35, $ff, $00, $01, $08, $06, $00, $e7, $0a, $08, $ff, $0a
    db $08, $80, $10, $18, $df, $ff, $ff, $f8, $03, $f4, $07, $80, $20, $30, $d9, $03
    db $8c, $70, $70, $e8, $fd, $80, $2e, $18, $fe, $00, $f0, $f7, $c0, $9c, $07, $00
    db $e3, $1f, $9f, $ff, $00, $f8, $02, $e1, $06, $cc, $0f, $67, $3f, $bf, $3c, $28
    db $05, $18, $42, $73, $bd, $56, $10, $52, $10, $56, $08, $37, $ff, $6a, $00, $04
    db $08, $81, $16, $18, $ff, $7a, $fc, $fe, $fc, $10, $6f, $00, $00, $f9, $0f, $f0
    db $16, $e0, $23, $23, $83, $00, $46, $06, $c7, $df, $e0, $3f, $98, $3c, $00, $b4
    db $ac, $d5, $5d, $54, $5e, $25, $74, $00, $0b, $a8, $78, $b0, $f0, $c0, $3f, $ff
    db $00, $3f, $3f, $7f, $80, $00, $ff, $fe, $00, $00, $ff, $03, $e0, $11, $c1, $03
    db $0a, $3f, $80, $b0, $10, $ff, $43, $00, $98, $7f, $20, $c0, $08, $56, $8a, $68
    db $d7, $52, $28, $f4, $ff, $7f, $06, $00, $1f, $00, $8f, $c0, $64, $10, $6c, $00
    db $f3, $a0, $70, $00, $86, $74, $00, $fc, $00, $f8, $00, $f6, $00, $07, $0d, $07
    db $0c, $03, $1e, $05, $17, $00, $0d, $e5, $0f, $31, $38, $8f, $fc, $5b, $00, $78
    db $01, $80, $83, $fe, $7e, $fc, $0c, $00, $f0, $2f, $20, $fe, $00, $00, $fe, $fc
    db $00, $00, $fd, $01, $fc, $01, $f8, $01, $f9, $80, $04, $00, $43, $b2, $4c, $eb
    db $a8, $0d, $a1, $00, $d9, $2f, $81, $6a, $26, $5a, $46, $f1, $00, $e5, $06, $6e
    db $1c, $d7, $36, $8f, $c7, $00, $e1, $db, $19, $b3, $1a, $75, $2c, $bd, $00, $78
    db $87, $80, $43, $e0, $13, $f0, $e9, $00, $f8, $11, $b8, $11, $b8, $83, $ba, $03
    db $70, $2a, $d4, $08, $36, $11, $e0, $18, $ef, $e5, $0f, $c5, $00, $1f, $99, $3f
    db $30, $a0, $1f, $93, $0f, $00, $2c, $54, $7f, $2d, $52, $1f, $80, $5f, $01, $c0
    db $9f, $c0, $3f, $80, $3f, $3f, $04, $18, $00, $f9, $01, $fa, $03, $fa, $02, $fc
    db $f8, $20, $00, $fc, $7a, $08, $00, $00, $cc, $49, $22, $00, $03, $60, $0c, $6e
    db $71, $6f, $33, $4f, $00, $33, $3f, $53, $0f, $33, $1c, $f0, $31, $00, $ed, $80
    db $85, $33, $09, $70, $1c, $24, $00, $70, $3a, $82, $00, $c6, $61, $68, $83, $00
    db $90, $27, $a0, $1f, $00, $4f, $40, $67, $01, $c0, $8f, $80, $1f, $c0, $ff, $9c
    db $46, $09, $c0, $77, $01, $50, $21, $09, $76, $7f, $43, $75, $49, $00, $3f, $9a
    db $3f, $ac, $d5, $1f, $ef, $0f, $00, $f3, $07, $07, $07, $3c, $6c, $3f, $a5, $00
    db $99, $66, $1d, $82, $3c, $03, $79, $06, $00, $f0, $0b, $cf, $30, $ff, $40, $00
    db $23, $00, $80, $48, $86, $f8, $e7, $e6, $74, $c7, $00, $36, $c1, $87, $0f, $c7
    db $0f, $c3, $07, $00, $c1, $13, $1b, $41, $1d, $0c, $0e, $13, $00, $0f, $97, $01
    db $ff, $05, $fc, $3c, $83, $00, $48, $9d, $d2, $6b, $64, $ba, $c3, $fe, $04, $63
    db $e0, $3f, $00, $7f, $ae, $00, $bf, $80, $43, $7f, $0a, $22, $44, $ff, $3f, $c0
    db $c4, $29, $1e, $0a, $0c, $f9, $03, $fc, $fd, $34, $01, $ea, $31, $72, $81, $00
    db $67, $98, $08, $77, $7e, $62, $3f, $b9, $00, $df, $1f, $ee, $0f, $f6, $07, $76
    db $01, $00, $60, $f3, $69, $bd, $52, $3e, $19, $ff, $00, $a6, $19, $86, $39, $da
    db $00, $0f, $33, $00, $8f, $37, $d0, $5f, $d7, $f7, $18, $70, $00, $b7, $bc, $c4
    db $0f, $30, $f0, $71, $90, $00, $2e, $ce, $cc, $26, $01, $dc, $34, $0d, $02, $c2
    db $fb, $e7, $77, $0f, $09, $7f, $0a, $7f, $80, $1e, $01, $9f, $80, $4f, $c0, $37
    db $f0, $37, $5c, $f0, $30, $12, $84, $56, $29, $52, $4a, $a8, $1a, $fb, $03, $b0
    db $ac, $09, $fe, $3b, $09, $b8, $12, $18, $00, $d9, $20, $00, $f1, $00, $7d, $82
    db $0d, $72, $7f, $7e, $00, $67, $7e, $38, $47, $0c, $d2, $03, $8c, $00, $d8, $27
    db $c3, $2c, $ef, $20, $ef, $31, $00, $ef, $2f, $ef, $38, $f0, $96, $8f, $ff, $00
    db $0f, $7c, $88, $ff, $76, $88, $70, $07, $00, $48, $3f, $09, $7f, $17, $10, $07
    db $30, $00, $43, $58, $03, $40, $83, $e8, $a3, $e8, $0c, $ab, $e8, $05, $4c, $dc
    db $48, $fe, $0a

    db $10                                        ; $5b44: $10
    inc bc                                        ; $5b45: $03
    ld l, a                                       ; $5b46: $6f
    ld [bc], a                                    ; $5b47: $02
    nop                                           ; $5b48: $00
    rst $38                                       ; $5b49: $ff
    nop                                           ; $5b4a: $00
    rst $38                                       ; $5b4b: $ff
    nop                                           ; $5b4c: $00
    rst $10                                       ; $5b4d: $d7
    nop                                           ; $5b4e: $00
    inc bc                                        ; $5b4f: $03
    db $fc                                        ; $5b50: $fc
    ld [hl], b                                    ; $5b51: $70
    nop                                           ; $5b52: $00
    ld [$0400], sp                                ; $5b53: $08 $00 $04

jr_0b9_5b56:
    ld [$0810], sp                                ; $5b56: $08 $10 $08
    rst $30                                       ; $5b59: $f7
    nop                                           ; $5b5a: $00
    jr nz, @-$1f                                  ; $5b5b: $20 $df

    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    cp $ff                                        ; $5b60: $fe $ff
    ld hl, sp+$66                                 ; $5b62: $f8 $66
    pop hl                                        ; $5b64: $e1
    rrca                                          ; $5b65: $0f
    add b                                         ; $5b66: $80
    ld d, $00                                     ; $5b67: $16 $00
    rst $38                                       ; $5b69: $ff
    adc b                                         ; $5b6a: $88
    ld [hl], b                                    ; $5b6b: $70
    add $07                                       ; $5b6c: $c6 $07
    adc b                                         ; $5b6e: $88
    ld a, $02                                     ; $5b6f: $3e $02
    ld de, $187a                                  ; $5b71: $11 $7a $18
    ld [hl], l                                    ; $5b74: $75
    nop                                           ; $5b75: $00
    dec [hl]                                      ; $5b76: $35
    dec h                                         ; $5b77: $25
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    add h                                         ; $5b7b: $84

jr_0b9_5b7c:
    ld a, e                                       ; $5b7c: $7b
    ccf                                           ; $5b7d: $3f
    nop                                           ; $5b7e: $00
    ld e, a                                       ; $5b7f: $5f
    sbc b                                         ; $5b80: $98
    sbc b                                         ; $5b81: $98
    ld b, b                                       ; $5b82: $40
    ld [$4007], sp                                ; $5b83: $08 $07 $40
    ccf                                           ; $5b86: $3f
    ld h, b                                       ; $5b87: $60
    db $10                                        ; $5b88: $10
    ld [$affe], sp                                ; $5b89: $08 $fe $af
    add b                                         ; $5b8c: $80
    ld bc, $0060                                  ; $5b8d: $01 $60 $00
    ldh [$1f], a                                  ; $5b90: $e0 $1f
    jr @-$7e                                      ; $5b92: $18 $80

    ld a, a                                       ; $5b94: $7f
    ld e, $08                                     ; $5b95: $1e $08
    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    nop                                           ; $5b99: $00
    rst $08                                       ; $5b9a: $cf
    scf                                           ; $5b9b: $37
    rlca                                          ; $5b9c: $07
    rrca                                          ; $5b9d: $0f
    rst $38                                       ; $5b9e: $ff
    rra                                           ; $5b9f: $1f
    ld [$0800], sp                                ; $5ba0: $08 $00 $08
    jr z, jr_0b9_5b7c                             ; $5ba3: $28 $d7

    ld d, d                                       ; $5ba5: $52
    jr @+$4c                                      ; $5ba6: $18 $4a

    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    inc bc                                        ; $5baa: $03
    xor a                                         ; $5bab: $af
    nop                                           ; $5bac: $00
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    nop                                           ; $5baf: $00
    db $eb                                        ; $5bb0: $eb
    inc b                                         ; $5bb1: $04
    nop                                           ; $5bb2: $00
    ld l, b                                       ; $5bb3: $68
    jr z, jr_0b9_5bbe                             ; $5bb4: $28 $08

    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    ld c, [hl]                                    ; $5bb8: $4e
    or c                                          ; $5bb9: $b1
    ld [hl], h                                    ; $5bba: $74
    ld [$1fe7], sp                                ; $5bbb: $08 $e7 $1f

jr_0b9_5bbe:
    cp $00                                        ; $5bbe: $fe $00
    ld [bc], a                                    ; $5bc0: $02
    db $fc                                        ; $5bc1: $fc
    ld bc, $01f0                                  ; $5bc2: $01 $f0 $01
    db $ec                                        ; $5bc5: $ec
    dec c                                         ; $5bc6: $0d
    ld [c], a                                     ; $5bc7: $e2
    nop                                           ; $5bc8: $00
    ld c, $c9                                     ; $5bc9: $0e $c9
    rrca                                          ; $5bcb: $0f
    cpl                                           ; $5bcc: $2f
    add e                                         ; $5bcd: $83
    ld c, [hl]                                    ; $5bce: $4e
    ld a, c                                       ; $5bcf: $79
    rlca                                          ; $5bd0: $07
    nop                                           ; $5bd1: $00
    ld l, l                                       ; $5bd2: $6d
    cp e                                          ; $5bd3: $bb
    jr c, jr_0b9_5b56                             ; $5bd4: $38 $80

    db $fc                                        ; $5bd6: $fc
    add e                                         ; $5bd7: $83
    ret nz                                        ; $5bd8: $c0

    ld a, a                                       ; $5bd9: $7f
    nop                                           ; $5bda: $00
    ldh [$bf], a                                  ; $5bdb: $e0 $bf
    add b                                         ; $5bdd: $80
    ccf                                           ; $5bde: $3f
    cp a                                          ; $5bdf: $bf
    sbc a                                         ; $5be0: $9f
    ret nz                                        ; $5be1: $c0

    ccf                                           ; $5be2: $3f
    db $10                                        ; $5be3: $10
    add b                                         ; $5be4: $80
    nop                                           ; $5be5: $00
    ld a, a                                       ; $5be6: $7f
    and [hl]                                      ; $5be7: $a6
    ld [$0800], sp                                ; $5be8: $08 $00 $08
    nop                                           ; $5beb: $00
    rst $38                                       ; $5bec: $ff
    ld d, b                                       ; $5bed: $50
    ldh a, [$a6]                                  ; $5bee: $f0 $a6

jr_0b9_5bf0:
    ld [$467b], sp                                ; $5bf0: $08 $7b $46
    jr nz, @+$26                                  ; $5bf3: $20 $24

    nop                                           ; $5bf5: $00
    rst $38                                       ; $5bf6: $ff
    ei                                            ; $5bf7: $fb
    ld e, e                                       ; $5bf8: $5b
    ld hl, sp-$4a                                 ; $5bf9: $f8 $b6
    nop                                           ; $5bfb: $00
    db $fd                                        ; $5bfc: $fd
    ld d, [hl]                                    ; $5bfd: $56
    ld c, b                                       ; $5bfe: $48
    ld l, b                                       ; $5bff: $68
    nop                                           ; $5c00: $00
    ld a, a                                       ; $5c01: $7f
    ld l, h                                       ; $5c02: $6c
    ld [$0070], sp                                ; $5c03: $08 $70 $00
    ld l, c                                       ; $5c06: $69
    ld d, b                                       ; $5c07: $50
    ld [$d910], sp                                ; $5c08: $08 $10 $d9
    nop                                           ; $5c0b: $00
    cp $cc                                        ; $5c0c: $fe $cc
    nop                                           ; $5c0e: $00
    db $fc                                        ; $5c0f: $fc
    ld bc, $0802                                  ; $5c10: $01 $02 $08
    nop                                           ; $5c13: $00
    ld sp, hl                                     ; $5c14: $f9
    ld bc, $8037                                  ; $5c15: $01 $37 $80
    jr nc, jr_0b9_5c63                            ; $5c18: $30 $49

    ld a, h                                       ; $5c1a: $7c
    or d                                          ; $5c1b: $b2
    nop                                           ; $5c1c: $00
    ld a, h                                       ; $5c1d: $7c
    cp d                                          ; $5c1e: $ba
    db $fc                                        ; $5c1f: $fc
    ld a, d                                       ; $5c20: $7a
    db $fc                                        ; $5c21: $fc
    ld h, d                                       ; $5c22: $62
    ld hl, sp+$66                                 ; $5c23: $f8 $66
    jr nz, jr_0b9_5c9f                            ; $5c25: $20 $78

    db $f4                                        ; $5c27: $f4
    ld e, [hl]                                    ; $5c28: $5e
    ld [$007f], sp                                ; $5c29: $08 $7f $00
    cp $fe                                        ; $5c2c: $fe $fe
    db $fc                                        ; $5c2e: $fc
    nop                                           ; $5c2f: $00
    ld bc, $017d                                  ; $5c30: $01 $7d $01
    cp b                                          ; $5c33: $b8
    add d                                         ; $5c34: $82
    ld e, e                                       ; $5c35: $5b
    jp Jump_000_00c1                              ; $5c36: $c3 $c1 $00


    dec bc                                        ; $5c39: $0b
    adc l                                         ; $5c3a: $8d
    rra                                           ; $5c3b: $1f
    ld b, c                                       ; $5c3c: $41
    ld a, $51                                     ; $5c3d: $3e $51
    ld l, d                                       ; $5c3f: $6a
    inc d                                         ; $5c40: $14
    nop                                           ; $5c41: $00
    ld b, e                                       ; $5c42: $43
    dec h                                         ; $5c43: $25
    call $57fe                                    ; $5c44: $cd $fe $57
    xor a                                         ; $5c47: $af
    add c                                         ; $5c48: $81
    jr nc, jr_0b9_5c4b                            ; $5c49: $30 $00

jr_0b9_5c4b:
    ld a, b                                       ; $5c4b: $78
    rst $10                                       ; $5c4c: $d7
    dec bc                                        ; $5c4d: $0b
    cp a                                          ; $5c4e: $bf
    jr z, jr_0b9_5cba                             ; $5c4f: $28 $69

    ld c, a                                       ; $5c51: $4f
    inc e                                         ; $5c52: $1c
    nop                                           ; $5c53: $00
    rst $10                                       ; $5c54: $d7
    cp c                                          ; $5c55: $b9
    adc c                                         ; $5c56: $89
    ld h, $e0                                     ; $5c57: $26 $e0
    jp nz, $7f59                                  ; $5c59: $c2 $59 $7f

    nop                                           ; $5c5c: $00
    ld a, a                                       ; $5c5d: $7f
    ccf                                           ; $5c5e: $3f
    add b                                         ; $5c5f: $80
    sbc a                                         ; $5c60: $9f
    ret nz                                        ; $5c61: $c0

    adc a                                         ; $5c62: $8f

jr_0b9_5c63:
    add b                                         ; $5c63: $80
    and a                                         ; $5c64: $a7
    ld bc, $13e0                                  ; $5c65: $01 $e0 $13
    ldh a, [rNR13]                                ; $5c68: $f0 $13
    jr nc, @+$13                                  ; $5c6a: $30 $11

    cp b                                          ; $5c6c: $b8

jr_0b9_5c6d:
    ld l, h                                       ; $5c6d: $6c
    jr nz, jr_0b9_5bf0                            ; $5c6e: $20 $80

    inc b                                         ; $5c70: $04
    jr nc, jr_0b9_5c6d                            ; $5c71: $30 $fa

    inc bc                                        ; $5c73: $03
    ld a, [c]                                     ; $5c74: $f2
    inc bc                                        ; $5c75: $03
    ld [$da0b], a                                 ; $5c76: $ea $0b $da
    nop                                           ; $5c79: $00
    dec de                                        ; $5c7a: $1b
    jp c, Jump_000_3b1b                           ; $5c7b: $da $1b $3b

    cp b                                          ; $5c7e: $b8
    dec sp                                        ; $5c7f: $3b
    cp b                                          ; $5c80: $b8
    inc sp                                        ; $5c81: $33
    db $10                                        ; $5c82: $10
    inc [hl]                                      ; $5c83: $34
    ld hl, sp+$74                                 ; $5c84: $f8 $74
    ld [bc], a                                    ; $5c86: $02
    nop                                           ; $5c87: $00
    db $e4                                        ; $5c88: $e4
    ld sp, hl                                     ; $5c89: $f9
    dec b                                         ; $5c8a: $05
    pop af                                        ; $5c8b: $f1
    nop                                           ; $5c8c: $00
    dec c                                         ; $5c8d: $0d
    ld hl, sp+$09                                 ; $5c8e: $f8 $09
    ld a, [c]                                     ; $5c90: $f2
    inc bc                                        ; $5c91: $03
    db $e3                                        ; $5c92: $e3
    inc de                                        ; $5c93: $13
    dec de                                        ; $5c94: $1b
    nop                                           ; $5c95: $00
    jp $c119                                      ; $5c96: $c3 $19 $c1


    add hl, de                                    ; $5c99: $19
    pop bc                                        ; $5c9a: $c1
    sbc b                                         ; $5c9b: $98
    pop bc                                        ; $5c9c: $c1
    sbc b                                         ; $5c9d: $98
    nop                                           ; $5c9e: $00

jr_0b9_5c9f:
    add c                                         ; $5c9f: $81
    ld a, d                                       ; $5ca0: $7a
    ld [c], a                                     ; $5ca1: $e2
    ld e, h                                       ; $5ca2: $5c
    ret nz                                        ; $5ca3: $c0

    ld e, h                                       ; $5ca4: $5c
    ret nz                                        ; $5ca5: $c0

    ld c, h                                       ; $5ca6: $4c
    nop                                           ; $5ca7: $00
    ld l, d                                       ; $5ca8: $6a
    inc e                                         ; $5ca9: $1c
    ld e, d                                       ; $5caa: $5a
    inc d                                         ; $5cab: $14
    push hl                                       ; $5cac: $e5
    add l                                         ; $5cad: $85
    ld c, c                                       ; $5cae: $49
    inc bc                                        ; $5caf: $03
    nop                                           ; $5cb0: $00
    ld [hl+], a                                   ; $5cb1: $22
    ld [hl], b                                    ; $5cb2: $70
    inc e                                         ; $5cb3: $1c
    rra                                           ; $5cb4: $1f
    ld [hl], c                                    ; $5cb5: $71
    db $10                                        ; $5cb6: $10
    ld a, a                                       ; $5cb7: $7f
    or e                                          ; $5cb8: $b3
    nop                                           ; $5cb9: $00

jr_0b9_5cba:
    ld a, [de]                                    ; $5cba: $1a
    ld [hl], l                                    ; $5cbb: $75
    inc l                                         ; $5cbc: $2c
    cp l                                          ; $5cbd: $bd
    ld a, b                                       ; $5cbe: $78
    inc e                                         ; $5cbf: $1c
    ldh a, [$35]                                  ; $5cc0: $f0 $35
    nop                                           ; $5cc2: $00
    jp hl                                         ; $5cc3: $e9


    dec b                                         ; $5cc4: $05
    add b                                         ; $5cc5: $80
    ld a, [hl-]                                   ; $5cc6: $3a
    ld bc, $3864                                  ; $5cc7: $01 $64 $38
    ld de, $b800                                  ; $5cca: $11 $00 $b8
    ld bc, $2938                                  ; $5ccd: $01 $38 $29
    jr z, jr_0b9_5cdb                             ; $5cd0: $28 $09

    ld c, b                                       ; $5cd2: $48
    add e                                         ; $5cd3: $83
    ld bc, $2790                                  ; $5cd4: $01 $90 $27
    and b                                         ; $5cd7: $a0
    rrca                                          ; $5cd8: $0f
    nop                                           ; $5cd9: $00
    xor a                                         ; $5cda: $af

jr_0b9_5cdb:
    ldh [rOBP0], a                                ; $5cdb: $e0 $48
    ld bc, $bd60                                  ; $5cdd: $01 $60 $bd
    and [hl]                                      ; $5ce0: $a6
    add hl, de                                    ; $5ce1: $19
    ld l, h                                       ; $5ce2: $6c
    nop                                           ; $5ce3: $00
    rst $38                                       ; $5ce4: $ff
    rst $18                                       ; $5ce5: $df
    jr nz, @+$73                                  ; $5ce6: $20 $71

    halt                                          ; $5ce8: $76
    nop                                           ; $5ce9: $00
    ld [hl], b                                    ; $5cea: $70
    inc hl                                        ; $5ceb: $23
    ld [hl], b                                    ; $5cec: $70
    ld hl, $a1d1                                  ; $5ced: $21 $d1 $a1
    call z, $00f0                                 ; $5cf0: $cc $f0 $00
    ccf                                           ; $5cf3: $3f
    sbc a                                         ; $5cf4: $9f
    rra                                           ; $5cf5: $1f
    rst $08                                       ; $5cf6: $cf
    ldh [$ef], a                                  ; $5cf7: $e0 $ef
    jp nz, Jump_000_0027                          ; $5cf9: $c2 $27 $00

    rrca                                          ; $5cfc: $0f
    ret                                           ; $5cfd: $c9


    ld e, $92                                     ; $5cfe: $1e $92
    ld h, $1a                                     ; $5d00: $26 $1a
    call Call_000_0035                            ; $5d02: $cd $35 $00
    ldh a, [rNR10]                                ; $5d05: $f0 $10
    ldh [$61], a                                  ; $5d07: $e0 $61
    rlca                                          ; $5d09: $07
    call nz, $c0ce                                ; $5d0a: $c4 $ce $c0
    nop                                           ; $5d0d: $00
    ld l, $60                                     ; $5d0e: $2e $60
    cpl                                           ; $5d10: $2f
    ld h, b                                       ; $5d11: $60
    and a                                         ; $5d12: $a7
    ldh [$37], a                                  ; $5d13: $e0 $37
    ldh a, [rP1]                                  ; $5d15: $f0 $00
    rlca                                          ; $5d17: $07
    ret nz                                        ; $5d18: $c0

    add a                                         ; $5d19: $87
    add b                                         ; $5d1a: $80
    inc bc                                        ; $5d1b: $03
    ldh [rVBK], a                                 ; $5d1c: $e0 $4f
    inc sp                                        ; $5d1e: $33
    nop                                           ; $5d1f: $00
    ccf                                           ; $5d20: $3f
    ld d, e                                       ; $5d21: $53
    rrca                                          ; $5d22: $0f
    inc sp                                        ; $5d23: $33
    rrca                                          ; $5d24: $0f
    add e                                         ; $5d25: $83
    rra                                           ; $5d26: $1f
    sbc b                                         ; $5d27: $98
    nop                                           ; $5d28: $00
    rrca                                          ; $5d29: $0f
    ret z                                         ; $5d2a: $c8

    rla                                           ; $5d2b: $17
    sub h                                         ; $5d2c: $94
    ld e, e                                       ; $5d2d: $5b
    ld d, d                                       ; $5d2e: $52
    ld d, h                                       ; $5d2f: $54
    jr jr_0b9_5d32                                ; $5d30: $18 $00

jr_0b9_5d32:
    ld a, [hl-]                                   ; $5d32: $3a
    add d                                         ; $5d33: $82
    ld b, h                                       ; $5d34: $44
    add d                                         ; $5d35: $82
    rrca                                          ; $5d36: $0f
    pop af                                        ; $5d37: $f1
    call z, Call_000_0070                         ; $5d38: $cc $70 $00
    di                                            ; $5d3b: $f3
    inc l                                         ; $5d3c: $2c
    ret                                           ; $5d3d: $c9


    ld a, h                                       ; $5d3e: $7c
    pop bc                                        ; $5d3f: $c1
    ld a, b                                       ; $5d40: $78
    ld b, b                                       ; $5d41: $40

jr_0b9_5d42:
    add a                                         ; $5d42: $87
    nop                                           ; $5d43: $00
    jr nz, jr_0b9_5db5                            ; $5d44: $20 $6f

    rra                                           ; $5d46: $1f
    ret nz                                        ; $5d47: $c0

    ccf                                           ; $5d48: $3f
    nop                                           ; $5d49: $00
    add b                                         ; $5d4a: $80
    ld b, b                                       ; $5d4b: $40
    inc bc                                        ; $5d4c: $03
    add b                                         ; $5d4d: $80
    ret nz                                        ; $5d4e: $c0

    add b                                         ; $5d4f: $80
    ld b, b                                       ; $5d50: $40
    nop                                           ; $5d51: $00
    add b                                         ; $5d52: $80
    ld l, h                                       ; $5d53: $6c
    jr z, @+$76                                   ; $5d54: $28 $74

    jr z, jr_0b9_5d58                             ; $5d56: $28 $00

jr_0b9_5d58:
    ldh [rP1], a                                  ; $5d58: $e0 $00
    ld a, [c]                                     ; $5d5a: $f2
    rrca                                          ; $5d5b: $0f
    ld sp, hl                                     ; $5d5c: $f9
    dec b                                         ; $5d5d: $05
    ld a, [$0006]                                 ; $5d5e: $fa $06 $00
    db $fc                                        ; $5d61: $fc
    ld [bc], a                                    ; $5d62: $02

jr_0b9_5d63:
    jr nz, jr_0b9_5d63                            ; $5d63: $20 $fe

    ld b, h                                       ; $5d65: $44
    cp d                                          ; $5d66: $ba
    cp $00                                        ; $5d67: $fe $00
    nop                                           ; $5d69: $00
    rrca                                          ; $5d6a: $0f
    add hl, bc                                    ; $5d6b: $09
    inc e                                         ; $5d6c: $1c
    ld h, [hl]                                    ; $5d6d: $66
    ld a, b                                       ; $5d6e: $78
    dec [hl]                                      ; $5d6f: $35
    ld [hl], e                                    ; $5d70: $73
    ld [de], a                                    ; $5d71: $12
    nop                                           ; $5d72: $00
    ld [bc], a                                    ; $5d73: $02
    ld bc, $0703                                  ; $5d74: $01 $03 $07
    ld b, $09                                     ; $5d77: $06 $09
    inc e                                         ; $5d79: $1c
    ld l, [hl]                                    ; $5d7a: $6e
    nop                                           ; $5d7b: $00
    ld h, b                                       ; $5d7c: $60
    ld h, b                                       ; $5d7d: $60
    or b                                          ; $5d7e: $b0
    ld d, b                                       ; $5d7f: $50
    jr nz, jr_0b9_5d42                            ; $5d80: $20 $c0

    ret nz                                        ; $5d82: $c0

    and e                                         ; $5d83: $a3
    nop                                           ; $5d84: $00
    add b                                         ; $5d85: $80
    ld b, a                                       ; $5d86: $47
    add a                                         ; $5d87: $87
    ld [bc], a                                    ; $5d88: $02
    add hl, bc                                    ; $5d89: $09
    rrca                                          ; $5d8a: $0f
    rrca                                          ; $5d8b: $0f
    ld d, $00                                     ; $5d8c: $16 $00
    ld h, b                                       ; $5d8e: $60
    xor l                                         ; $5d8f: $ad
    ld [hl], b                                    ; $5d90: $70
    or [hl]                                       ; $5d91: $b6
    jr c, @+$55                                   ; $5d92: $38 $53

    inc e                                         ; $5d94: $1c
    add hl, hl                                    ; $5d95: $29
    nop                                           ; $5d96: $00
    ld c, $14                                     ; $5d97: $0e $14
    rlca                                          ; $5d99: $07
    xor e                                         ; $5d9a: $ab
    rla                                           ; $5d9b: $17
    inc [hl]                                      ; $5d9c: $34
    dec hl                                        ; $5d9d: $2b
    ld a, [hl-]                                   ; $5d9e: $3a
    nop                                           ; $5d9f: $00
    ld h, d                                       ; $5da0: $62
    cp h                                          ; $5da1: $bc
    jr jr_0b9_5e08                                ; $5da2: $18 $64

    add b                                         ; $5da4: $80
    add b                                         ; $5da5: $80
    sub d                                         ; $5da6: $92
    ldh a, [rP1]                                  ; $5da7: $f0 $00
    ld h, b                                       ; $5da9: $60
    sub l                                         ; $5daa: $95
    inc b                                         ; $5dab: $04
    dec l                                         ; $5dac: $2d
    call z, $8484                                 ; $5dad: $cc $84 $84
    ret z                                         ; $5db0: $c8

    inc b                                         ; $5db1: $04
    dec hl                                        ; $5db2: $2b
    ld a, a                                       ; $5db3: $7f
    ld a, a                                       ; $5db4: $7f

jr_0b9_5db5:
    add b                                         ; $5db5: $80
    nop                                           ; $5db6: $00
    or e                                          ; $5db7: $b3
    ld bc, $3f3f                                  ; $5db8: $01 $3f $3f
    nop                                           ; $5dbb: $00
    rra                                           ; $5dbc: $1f
    add b                                         ; $5dbd: $80
    add b                                         ; $5dbe: $80
    rrca                                          ; $5dbf: $0f
    add b                                         ; $5dc0: $80
    adc a                                         ; $5dc1: $8f
    add hl, bc                                    ; $5dc2: $09
    rst $38                                       ; $5dc3: $ff
    daa                                           ; $5dc4: $27
    rst $38                                       ; $5dc5: $ff
    ld a, [hl+]                                   ; $5dc6: $2a
    ret nz                                        ; $5dc7: $c0

    ld hl, $b30c                                  ; $5dc8: $21 $0c $b3
    inc [hl]                                      ; $5dcb: $34
    ld [bc], a                                    ; $5dcc: $02
    call nc, Call_000_0411                        ; $5dcd: $d4 $11 $04
    jr nc, jr_0b9_5dd2                            ; $5dd0: $30 $00

jr_0b9_5dd2:
    rst $38                                       ; $5dd2: $ff
    nop                                           ; $5dd3: $00
    inc e                                         ; $5dd4: $1c
    ld l, a                                       ; $5dd5: $6f
    rra                                           ; $5dd6: $1f
    adc a                                         ; $5dd7: $8f
    rrca                                          ; $5dd8: $0f
    jp $ec00                                      ; $5dd9: $c3 $00 $ec


    rrca                                          ; $5ddc: $0f
    db $eb                                        ; $5ddd: $eb
    dec bc                                        ; $5dde: $0b
    pop af                                        ; $5ddf: $f1
    rlca                                          ; $5de0: $07
    ld hl, sp+$03                                 ; $5de1: $f8 $03
    nop                                           ; $5de3: $00
    ei                                            ; $5de4: $fb
    inc bc                                        ; $5de5: $03
    ld a, $cf                                     ; $5de6: $3e $cf
    ld a, [$3ac4]                                 ; $5de8: $fa $c4 $3a
    inc h                                         ; $5deb: $24
    nop                                           ; $5dec: $00
    or e                                          ; $5ded: $b3
    xor l                                         ; $5dee: $ad
    inc sp                                        ; $5def: $33
    dec l                                         ; $5df0: $2d
    inc hl                                        ; $5df1: $23
    dec a                                         ; $5df2: $3d
    scf                                           ; $5df3: $37
    add hl, hl                                    ; $5df4: $29
    nop                                           ; $5df5: $00
    rra                                           ; $5df6: $1f
    rst $28                                       ; $5df7: $ef
    inc c                                         ; $5df8: $0c
    add hl, bc                                    ; $5df9: $09
    ld b, $05                                     ; $5dfa: $06 $05
    sub $d8                                       ; $5dfc: $d6 $d8
    nop                                           ; $5dfe: $00
    ld a, [$01fc]                                 ; $5dff: $fa $fc $01
    ld bc, $1801                                  ; $5e02: $01 $01 $18
    jr jr_0b9_5e43                                ; $5e05: $18 $3c

    nop                                           ; $5e07: $00

jr_0b9_5e08:
    inc e                                         ; $5e08: $1c
    ld a, [$8010]                                 ; $5e09: $fa $10 $80
    ld sp, $2110                                  ; $5e0c: $31 $10 $21
    ld de, $0100                                  ; $5e0f: $11 $00 $01
    ld bc, $b0a9                                  ; $5e12: $01 $a9 $b0
    push de                                       ; $5e15: $d5
    ld e, h                                       ; $5e16: $5c
    xor e                                         ; $5e17: $ab
    ld b, b                                       ; $5e18: $40
    nop                                           ; $5e19: $00
    ld d, e                                       ; $5e1a: $53
    ld hl, $27a0                                  ; $5e1b: $21 $a0 $27
    or b                                          ; $5e1e: $b0
    scf                                           ; $5e1f: $37
    cp b                                          ; $5e20: $b8
    adc e                                         ; $5e21: $8b
    ld c, $38                                     ; $5e22: $0e $38
    ld hl, $253c                                  ; $5e24: $21 $3c $25
    ld [bc], a                                    ; $5e27: $02
    jr @-$3e                                      ; $5e28: $18 $c0

    add hl, hl                                    ; $5e2a: $29
    ld d, h                                       ; $5e2b: $54
    add hl, hl                                    ; $5e2c: $29
    db $10                                        ; $5e2d: $10
    inc bc                                        ; $5e2e: $03
    ld e, [hl]                                    ; $5e2f: $5e
    ld [bc], a                                    ; $5e30: $02
    ld a, [hl-]                                   ; $5e31: $3a
    rst $38                                       ; $5e32: $ff
    nop                                           ; $5e33: $00
    ld bc, $0c38                                  ; $5e34: $01 $38 $0c
    ld [$1810], sp                                ; $5e37: $08 $10 $18
    rst $00                                       ; $5e3a: $c7
    inc c                                         ; $5e3b: $0c
    jr nc, @+$01                                  ; $5e3c: $30 $ff

    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    cp $00                                        ; $5e40: $fe $00
    db $fc                                        ; $5e42: $fc

jr_0b9_5e43:
    rlca                                          ; $5e43: $07
    ld a, [c]                                     ; $5e44: $f2
    rlca                                          ; $5e45: $07
    db $e4                                        ; $5e46: $e4
    nop                                           ; $5e47: $00
    inc c                                         ; $5e48: $0c
    ret nz                                        ; $5e49: $c0

    ld [$1fca], sp                                ; $5e4a: $08 $ca $1f
    push bc                                       ; $5e4d: $c5
    rra                                           ; $5e4e: $1f
    jp Jump_000_1300                              ; $5e4f: $c3 $00 $13


    nop                                           ; $5e52: $00
    inc a                                         ; $5e53: $3c
    adc d                                         ; $5e54: $8a
    pop af                                        ; $5e55: $f1
    rst $08                                       ; $5e56: $cf
    jr c, jr_0b9_5e79                             ; $5e57: $38 $20

    nop                                           ; $5e59: $00
    ld c, a                                       ; $5e5a: $4f
    sub e                                         ; $5e5b: $93
    res 4, e                                      ; $5e5c: $cb $a3
    ld d, $d4                                     ; $5e5e: $16 $d4
    jr z, jr_0b9_5ee1                             ; $5e60: $28 $7f

    nop                                           ; $5e62: $00
    rst $38                                       ; $5e63: $ff
    rrca                                          ; $5e64: $0f
    ret nz                                        ; $5e65: $c0

    ld b, a                                       ; $5e66: $47
    ret nz                                        ; $5e67: $c0

    dec bc                                        ; $5e68: $0b
    ld hl, sp-$30                                 ; $5e69: $f8 $d0
    nop                                           ; $5e6b: $00
    add c                                         ; $5e6c: $81
    cp h                                          ; $5e6d: $bc
    ld [$1ce6], sp                                ; $5e6e: $08 $e6 $1c
    ret nz                                        ; $5e71: $c0

    ld b, [hl]                                    ; $5e72: $46
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    rst $38                                       ; $5e75: $ff
    ld d, $cd                                     ; $5e76: $16 $cd
    add c                                         ; $5e78: $81

jr_0b9_5e79:
    inc h                                         ; $5e79: $24
    add $6e                                       ; $5e7a: $c6 $6e
    ld c, d                                       ; $5e7c: $4a
    nop                                           ; $5e7d: $00
    or e                                          ; $5e7e: $b3
    ld d, h                                       ; $5e7f: $54
    sbc l                                         ; $5e80: $9d
    sub a                                         ; $5e81: $97
    cp $0f                                        ; $5e82: $fe $0f
    ld a, h                                       ; $5e84: $7c
    nop                                           ; $5e85: $00
    ccf                                           ; $5e86: $3f
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    ld e, b                                       ; $5e89: $58
    ld [$1006], sp                                ; $5e8a: $08 $06 $10
    ld a, [bc]                                    ; $5e8d: $0a
    db $10                                        ; $5e8e: $10
    ld h, d                                       ; $5e8f: $62
    jr nz, jr_0b9_5e9c                            ; $5e90: $20 $0a

    ld e, b                                       ; $5e92: $58
    ld a, h                                       ; $5e93: $7c
    jr c, jr_0b9_5e96                             ; $5e94: $38 $00

jr_0b9_5e96:
    call c, $821c                                 ; $5e96: $dc $1c $82
    rla                                           ; $5e99: $17
    xor b                                         ; $5e9a: $a8
    ccf                                           ; $5e9b: $3f

jr_0b9_5e9c:
    sbc b                                         ; $5e9c: $98
    jr jr_0b9_5e9f                                ; $5e9d: $18 $00

jr_0b9_5e9f:
    sub b                                         ; $5e9f: $90
    ld [hl-], a                                   ; $5ea0: $32
    ld b, $c2                                     ; $5ea1: $06 $c2
    rlca                                          ; $5ea3: $07
    pop bc                                        ; $5ea4: $c1
    rlca                                          ; $5ea5: $07
    pop hl                                        ; $5ea6: $e1
    nop                                           ; $5ea7: $00
    pop de                                        ; $5ea8: $d1
    add c                                         ; $5ea9: $81
    adc $81                                       ; $5eaa: $ce $81
    ld c, $d7                                     ; $5eac: $0e $d7
    ld a, $a3                                     ; $5eae: $3e $a3
    nop                                           ; $5eb0: $00
    ld h, $1d                                     ; $5eb1: $26 $1d
    adc b                                         ; $5eb3: $88
    sub b                                         ; $5eb4: $90
    rst $20                                       ; $5eb5: $e7
    inc h                                         ; $5eb6: $24
    ret                                           ; $5eb7: $c9


    daa                                           ; $5eb8: $27
    nop                                           ; $5eb9: $00
    halt                                          ; $5eba: $76
    db $10                                        ; $5ebb: $10
    add a                                         ; $5ebc: $87
    and c                                         ; $5ebd: $a1
    and b                                         ; $5ebe: $a0
    rlca                                          ; $5ebf: $07
    add b                                         ; $5ec0: $80
    adc e                                         ; $5ec1: $8b
    nop                                           ; $5ec2: $00
    or h                                          ; $5ec3: $b4

jr_0b9_5ec4:
    ld [hl], $a4                                  ; $5ec4: $36 $a4
    dec d                                         ; $5ec6: $15
    ld b, h                                       ; $5ec7: $44
    daa                                           ; $5ec8: $27
    ld a, [$0063]                                 ; $5ec9: $fa $63 $00
    ld a, b                                       ; $5ecc: $78
    rra                                           ; $5ecd: $1f
    ld a, b                                       ; $5ece: $78
    rra                                           ; $5ecf: $1f
    rlca                                          ; $5ed0: $07
    ld a, h                                       ; $5ed1: $7c
    ld [hl], e                                    ; $5ed2: $73
    ld a, [hl]                                    ; $5ed3: $7e
    nop                                           ; $5ed4: $00
    jr nz, @+$64                                  ; $5ed5: $20 $62

    dec e                                         ; $5ed7: $1d
    jr nc, jr_0b9_5f12                            ; $5ed8: $30 $38

    cpl                                           ; $5eda: $2f
    sbc h                                         ; $5edb: $9c
    rlca                                          ; $5edc: $07
    add [hl]                                      ; $5edd: $86
    ld l, h                                       ; $5ede: $6c
    ld d, b                                       ; $5edf: $50
    rst $38                                       ; $5ee0: $ff

jr_0b9_5ee1:
    rst $30                                       ; $5ee1: $f7
    ld [$6480], sp                                ; $5ee2: $08 $80 $64
    ld b, b                                       ; $5ee5: $40
    db $eb                                        ; $5ee6: $eb
    ld [$c021], sp                                ; $5ee7: $08 $21 $c0
    ld [$da40], a                                 ; $5eea: $ea $40 $da
    nop                                           ; $5eed: $00
    ld bc, $e207                                  ; $5eee: $01 $07 $e2
    db $f4                                        ; $5ef1: $f4
    rlca                                          ; $5ef2: $07
    ld sp, hl                                     ; $5ef3: $f9
    nop                                           ; $5ef4: $00
    ld bc, $01f9                                  ; $5ef5: $01 $f9 $01
    pop hl                                        ; $5ef8: $e1
    add hl, de                                    ; $5ef9: $19
    sub b                                         ; $5efa: $90
    ld a, h                                       ; $5efb: $7c
    ld b, b                                       ; $5efc: $40
    nop                                           ; $5efd: $00
    ldh [$80], a                                  ; $5efe: $e0 $80
    rst $00                                       ; $5f00: $c7
    db $e4                                        ; $5f01: $e4
    ld a, $f1                                     ; $5f02: $3e $f1
    ld [hl], $f8                                  ; $5f04: $36 $f8
    nop                                           ; $5f06: $00
    inc a                                         ; $5f07: $3c
    ld a, a                                       ; $5f08: $7f
    cp a                                          ; $5f09: $bf
    ld a, e                                       ; $5f0a: $7b
    jr c, jr_0b9_5f49                             ; $5f0b: $38 $3c

    add hl, de                                    ; $5f0d: $19
    dec e                                         ; $5f0e: $1d
    nop                                           ; $5f0f: $00

Jump_0b9_5f10:
    ld l, $0e                                     ; $5f10: $2e $0e

jr_0b9_5f12:
    adc e                                         ; $5f12: $8b
    sub b                                         ; $5f13: $90
    add hl, de                                    ; $5f14: $19
    ld b, b                                       ; $5f15: $40
    ld de, $0018                                  ; $5f16: $11 $18 $00
    ret z                                         ; $5f19: $c8

    ldh [rNR41], a                                ; $5f1a: $e0 $20

jr_0b9_5f1c:
    ldh a, [$60]                                  ; $5f1c: $f0 $60
    ld d, b                                       ; $5f1e: $50
    ret nz                                        ; $5f1f: $c0

    or b                                          ; $5f20: $b0
    nop                                           ; $5f21: $00
    jr nz, jr_0b9_5ec4                            ; $5f22: $20 $a0

    ld b, b                                       ; $5f24: $40
    call c, $cc17                                 ; $5f25: $dc $17 $cc
    rrca                                          ; $5f28: $0f
    pop hl                                        ; $5f29: $e1
    nop                                           ; $5f2a: $00
    dec c                                         ; $5f2b: $0d
    pop hl                                        ; $5f2c: $e1
    dec c                                         ; $5f2d: $0d
    dec b                                         ; $5f2e: $05
    db $e4                                        ; $5f2f: $e4
    dec b                                         ; $5f30: $05
    db $e4                                        ; $5f31: $e4
    inc c                                         ; $5f32: $0c
    ld b, $05                                     ; $5f33: $06 $05
    inc c                                         ; $5f35: $0c
    dec b                                         ; $5f36: $05
    rst $18                                       ; $5f37: $df
    jr nz, jr_0b9_5f1c                            ; $5f38: $20 $e2

    ld [$38e6], sp                                ; $5f3a: $08 $e6 $38
    nop                                           ; $5f3d: $00
    jr nz, jr_0b9_5f40                            ; $5f3e: $20 $00

jr_0b9_5f40:
    adc [hl]                                      ; $5f40: $8e
    ld d, d                                       ; $5f41: $52
    ld bc, $af79                                  ; $5f42: $01 $79 $af
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    rst $30                                       ; $5f47: $f7
    add b                                         ; $5f48: $80

jr_0b9_5f49:
    ld e, d                                       ; $5f49: $5a
    ld bc, $0002                                  ; $5f4a: $01 $02 $00
    ld sp, hl                                     ; $5f4d: $f9
    ld bc, $07fe                                  ; $5f4e: $01 $fe $07
    cp $00                                        ; $5f51: $fe $00
    ld [bc], a                                    ; $5f53: $02
    sub b                                         ; $5f54: $90
    cp $fc                                        ; $5f55: $fe $fc
    nop                                           ; $5f57: $00
    ld bc, $03f9                                  ; $5f58: $01 $f9 $03
    nop                                           ; $5f5b: $00
    ldh a, [rTAC]                                 ; $5f5c: $f0 $07
    db $e3                                        ; $5f5e: $e3
    rst $38                                       ; $5f5f: $ff
    add b                                         ; $5f60: $80
    ldh [$e0], a                                  ; $5f61: $e0 $e0
    ld [$0700], sp                                ; $5f63: $08 $00 $07
    rra                                           ; $5f66: $1f
    cpl                                           ; $5f67: $2f
    ld a, a                                       ; $5f68: $7f
    ld a, b                                       ; $5f69: $78
    ld hl, sp-$1c                                 ; $5f6a: $f8 $e4
    ldh a, [rP1]                                  ; $5f6c: $f0 $00
    ret z                                         ; $5f6e: $c8

    ld e, $ee                                     ; $5f6f: $1e $ee
    db $e3                                        ; $5f71: $e3
    ldh a, [rNR23]                                ; $5f72: $f0 $18
    inc a                                         ; $5f74: $3c
    jp z, $c400                                   ; $5f75: $ca $00 $c4

    pop hl                                        ; $5f78: $e1
    ld [c], a                                     ; $5f79: $e2
    ld bc, $01f8                                  ; $5f7a: $01 $f8 $01
    db $fd                                        ; $5f7d: $fd
    jr c, jr_0b9_5f80                             ; $5f7e: $38 $00

jr_0b9_5f80:
    ld [hl], h                                    ; $5f80: $74
    jr c, jr_0b9_6001                             ; $5f81: $38 $7e

    ret nc                                        ; $5f83: $d0

    and b                                         ; $5f84: $a0
    ld [de], a                                    ; $5f85: $12
    ld [hl+], a                                   ; $5f86: $22
    ld [hl-], a                                   ; $5f87: $32
    nop                                           ; $5f88: $00
    add d                                         ; $5f89: $82
    inc sp                                        ; $5f8a: $33
    inc bc                                        ; $5f8b: $03
    inc de                                        ; $5f8c: $13
    jr nc, jr_0b9_5f9c                            ; $5f8d: $30 $0d

    xor h                                         ; $5f8f: $ac
    and c                                         ; $5f90: $a1
    nop                                           ; $5f91: $00
    dec c                                         ; $5f92: $0d
    call nz, Call_000_1e19                        ; $5f93: $c4 $19 $1e
    inc de                                        ; $5f96: $13
    inc e                                         ; $5f97: $1c
    rla                                           ; $5f98: $17
    inc de                                        ; $5f99: $13
    nop                                           ; $5f9a: $00
    sbc b                                         ; $5f9b: $98

jr_0b9_5f9c:
    ld h, a                                       ; $5f9c: $67
    ld [hl], b                                    ; $5f9d: $70
    nop                                           ; $5f9e: $00
    adc a                                         ; $5f9f: $8f
    ld b, b                                       ; $5fa0: $40
    cp a                                          ; $5fa1: $bf
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    rst $38                                       ; $5fa4: $ff
    dec b                                         ; $5fa5: $05

jr_0b9_5fa6:
    add hl, bc                                    ; $5fa6: $09
    nop                                           ; $5fa7: $00
    rst $38                                       ; $5fa8: $ff
    call z, $0033                                 ; $5fa9: $cc $33 $00
    inc e                                         ; $5fac: $1c
    rst $38                                       ; $5fad: $ff
    rla                                           ; $5fae: $17
    db $eb                                        ; $5faf: $eb
    ld d, b                                       ; $5fb0: $50
    ld de, $00e0                                  ; $5fb1: $11 $e0 $00
    cp a                                          ; $5fb4: $bf
    add hl, de                                    ; $5fb5: $19
    cp $00                                        ; $5fb6: $fe $00
    nop                                           ; $5fb8: $00
    ld hl, sp+$07                                 ; $5fb9: $f8 $07
    rlca                                          ; $5fbb: $07
    rst $30                                       ; $5fbc: $f7
    ld [$c6e0], sp                                ; $5fbd: $08 $e0 $c6
    ld b, $00                                     ; $5fc0: $06 $00

jr_0b9_5fc2:
    rrca                                          ; $5fc2: $0f
    adc $3f                                       ; $5fc3: $ce $3f

jr_0b9_5fc5:
    and b                                         ; $5fc5: $a0
    ld a, a                                       ; $5fc6: $7f
    ld b, b                                       ; $5fc7: $40
    ld a, [hl]                                    ; $5fc8: $7e
    ld a, l                                       ; $5fc9: $7d
    nop                                           ; $5fca: $00
    inc a                                         ; $5fcb: $3c
    ld a, e                                       ; $5fcc: $7b
    ccf                                           ; $5fcd: $3f
    and e                                         ; $5fce: $a3
    ld e, $d6                                     ; $5fcf: $1e $d6
    ld h, b                                       ; $5fd1: $60
    inc l                                         ; $5fd2: $2c
    nop                                           ; $5fd3: $00
    jr nc, jr_0b9_5fa6                            ; $5fd4: $30 $d0

    ld [hl], b                                    ; $5fd6: $70
    or b                                          ; $5fd7: $b0
    ld h, b                                       ; $5fd8: $60
    and b                                         ; $5fd9: $a0
    ret nz                                        ; $5fda: $c0

    and c                                         ; $5fdb: $a1
    nop                                           ; $5fdc: $00
    add b                                         ; $5fdd: $80
    ld h, c                                       ; $5fde: $61
    pop bc                                        ; $5fdf: $c1
    and b                                         ; $5fe0: $a0
    add b                                         ; $5fe1: $80
    ld h, e                                       ; $5fe2: $63
    db $d3                                        ; $5fe3: $d3
    jp Jump_000_3c00                              ; $5fe4: $c3 $00 $3c


    ld a, b                                       ; $5fe7: $78
    ld a, h                                       ; $5fe8: $7c
    ld a, $5a                                     ; $5fe9: $3e $5a
    inc a                                         ; $5feb: $3c
    ld b, d                                       ; $5fec: $42
    inc a                                         ; $5fed: $3c
    nop                                           ; $5fee: $00
    ld a, [hl]                                    ; $5fef: $7e
    dec a                                         ; $5ff0: $3d
    ld a, $5d                                     ; $5ff1: $3e $5d
    ld [hl], c                                    ; $5ff3: $71
    ld c, [hl]                                    ; $5ff4: $4e

jr_0b9_5ff5:
    jr c, jr_0b9_602e                             ; $5ff5: $38 $37

    nop                                           ; $5ff7: $00
    ld b, h                                       ; $5ff8: $44
    ld e, d                                       ; $5ff9: $5a
    ld c, $50                                     ; $5ffa: $0e $50
    inc c                                         ; $5ffc: $0c
    ld d, [hl]                                    ; $5ffd: $56
    ld [bc], a                                    ; $5ffe: $02
    dec c                                         ; $5fff: $0d
    nop                                           ; $6000: $00

jr_0b9_6001:
    ld c, h                                       ; $6001: $4c
    ld d, e                                       ; $6002: $53
    ld c, d                                       ; $6003: $4a
    rla                                           ; $6004: $17
    rra                                           ; $6005: $1f
    sub c                                         ; $6006: $91
    rrca                                          ; $6007: $0f
    sbc c                                         ; $6008: $99
    adc h                                         ; $6009: $8c
    db $10                                        ; $600a: $10
    ld a, [bc]                                    ; $600b: $0a
    ld a, a                                       ; $600c: $7f
    rst $38                                       ; $600d: $ff
    ld a, a                                       ; $600e: $7f
    dec b                                         ; $600f: $05
    nop                                           ; $6010: $00
    inc b                                         ; $6011: $04
    ld [$6817], sp                                ; $6012: $08 $17 $68
    ret nz                                        ; $6015: $c0

    sbc $28                                       ; $6016: $de $28
    and $18                                       ; $6018: $e6 $18
    dec l                                         ; $601a: $2d
    sub $81                                       ; $601b: $d6 $81
    ccf                                           ; $601d: $3f
    ld e, a                                       ; $601e: $5f
    ld a, [hl]                                    ; $601f: $7e
    nop                                           ; $6020: $00
    ld d, a                                       ; $6021: $57
    rra                                           ; $6022: $1f
    add hl, hl                                    ; $6023: $29
    daa                                           ; $6024: $27
    ld b, h                                       ; $6025: $44
    dec hl                                        ; $6026: $2b
    ld b, [hl]                                    ; $6027: $46
    stop                                          ; $6028: $10 $00
    ld h, b                                       ; $602a: $60
    ld d, h                                       ; $602b: $54
    or c                                          ; $602c: $b1
    cpl                                           ; $602d: $2f

jr_0b9_602e:
    jr nc, jr_0b9_6064                            ; $602e: $30 $34

    jr nc, jr_0b9_5fc2                            ; $6030: $30 $90

    nop                                           ; $6032: $00
    jr jr_0b9_5fc5                                ; $6033: $18 $90

    adc b                                         ; $6035: $88
    sub b                                         ; $6036: $90
    ret z                                         ; $6037: $c8

    ret nc                                        ; $6038: $d0

    ld e, b                                       ; $6039: $58
    ret nz                                        ; $603a: $c0

    nop                                           ; $603b: $00
    ld [$30e0], sp                                ; $603c: $08 $e0 $30
    ld sp, hl                                     ; $603f: $f9
    pop bc                                        ; $6040: $c1
    pop de                                        ; $6041: $d1
    jr nc, jr_0b9_5ff5                            ; $6042: $30 $b1

    nop                                           ; $6044: $00
    ld [hl], b                                    ; $6045: $70
    ret nz                                        ; $6046: $c0

    ld [hl], b                                    ; $6047: $70
    ldh a, [$f0]                                  ; $6048: $f0 $f0
    ld [hl], b                                    ; $604a: $70
    ld a, [c]                                     ; $604b: $f2
    inc bc                                        ; $604c: $03
    nop                                           ; $604d: $00
    db $f4                                        ; $604e: $f4
    rlca                                          ; $604f: $07
    or $07                                        ; $6050: $f6 $07
    rrca                                          ; $6052: $0f
    ld [hl], a                                    ; $6053: $77
    rrca                                          ; $6054: $0f
    scf                                           ; $6055: $37
    nop                                           ; $6056: $00
    rrca                                          ; $6057: $0f
    rla                                           ; $6058: $17
    rrca                                          ; $6059: $0f
    scf                                           ; $605a: $37
    add hl, de                                    ; $605b: $19
    ld d, $31                                     ; $605c: $16 $31
    ld l, $00                                     ; $605e: $2e $00
    ld e, $2f                                     ; $6060: $1e $2f
    ld e, $2d                                     ; $6062: $1e $2d

jr_0b9_6064:
    sbc b                                         ; $6064: $98
    ld e, $9e                                     ; $6065: $1e $9e
    inc e                                         ; $6067: $1c
    nop                                           ; $6068: $00
    sbc [hl]                                      ; $6069: $9e
    dec e                                         ; $606a: $1d
    sbc [hl]                                      ; $606b: $9e
    ld bc, $861f                                  ; $606c: $01 $1f $86
    adc e                                         ; $606f: $8b
    ld b, $00                                     ; $6070: $06 $00
    rlca                                          ; $6072: $07
    jp z, Jump_0b9_4b87                           ; $6073: $ca $87 $4b

    ld c, a                                       ; $6076: $4f
    ld a, a                                       ; $6077: $7f
    ld a, a                                       ; $6078: $7f
    ccf                                           ; $6079: $3f
    nop                                           ; $607a: $00
    ccf                                           ; $607b: $3f
    add b                                         ; $607c: $80
    cp a                                          ; $607d: $bf
    add b                                         ; $607e: $80
    ccf                                           ; $607f: $3f
    cp a                                          ; $6080: $bf
    ccf                                           ; $6081: $3f
    add b                                         ; $6082: $80
    ld [bc], a                                    ; $6083: $02
    ccf                                           ; $6084: $3f
    sub a                                         ; $6085: $97
    ccf                                           ; $6086: $3f
    add b                                         ; $6087: $80
    xor h                                         ; $6088: $ac
    ld d, e                                       ; $6089: $53
    ld [hl-], a                                   ; $608a: $32
    ld a, [hl-]                                   ; $608b: $3a
    jp hl                                         ; $608c: $e9


    nop                                           ; $608d: $00
    ld d, $ff                                     ; $608e: $16 $ff
    nop                                           ; $6090: $00
    cp a                                          ; $6091: $bf
    jr nc, @+$7e                                  ; $6092: $30 $7c

    ret nc                                        ; $6094: $d0

    ld [hl], b                                    ; $6095: $70

jr_0b9_6096:
    nop                                           ; $6096: $00
    ldh [$38], a                                  ; $6097: $e0 $38
    add sp, $3c                                   ; $6099: $e8 $3c
    db $e4                                        ; $609b: $e4
    ldh [$0c], a                                  ; $609c: $e0 $0c
    di                                            ; $609e: $f3
    nop                                           ; $609f: $00
    inc bc                                        ; $60a0: $03
    db $fc                                        ; $60a1: $fc
    inc bc                                        ; $60a2: $03
    sbc l                                         ; $60a3: $9d
    ld l, [hl]                                    ; $60a4: $6e
    inc a                                         ; $60a5: $3c
    inc sp                                        ; $60a6: $33
    ccf                                           ; $60a7: $3f
    nop                                           ; $60a8: $00
    inc c                                         ; $60a9: $0c
    rlca                                          ; $60aa: $07
    inc sp                                        ; $60ab: $33
    rrca                                          ; $60ac: $0f
    ld h, b                                       ; $60ad: $60
    ld e, a                                       ; $60ae: $5f
    ret nz                                        ; $60af: $c0

    ccf                                           ; $60b0: $3f
    nop                                           ; $60b1: $00
    add b                                         ; $60b2: $80
    ld a, a                                       ; $60b3: $7f
    add b                                         ; $60b4: $80
    db $f4                                        ; $60b5: $f4
    rlca                                          ; $60b6: $07
    ld [hl], b                                    ; $60b7: $70
    add b                                         ; $60b8: $80
    ret nc                                        ; $60b9: $d0

    nop                                           ; $60ba: $00
    ld h, b                                       ; $60bb: $60
    jr nc, jr_0b9_6096                            ; $60bc: $30 $d8

    call z, $f332                                 ; $60be: $cc $32 $f3
    db $fd                                        ; $60c1: $fd
    ldh a, [rP1]                                  ; $60c2: $f0 $00
    pop hl                                        ; $60c4: $e1
    pop hl                                        ; $60c5: $e1
    ld bc, $6d1e                                  ; $60c6: $01 $1e $6d
    ld a, $4d                                     ; $60c9: $3e $4d
    ld h, e                                       ; $60cb: $63
    nop                                           ; $60cc: $00
    ld e, l                                       ; $60cd: $5d
    ld h, e                                       ; $60ce: $63
    ld e, l                                       ; $60cf: $5d
    ld a, [hl]                                    ; $60d0: $7e
    ld b, d                                       ; $60d1: $42
    ld a, [hl]                                    ; $60d2: $7e
    jp nz, Jump_000_003c                          ; $60d3: $c2 $3c $00

    ld hl, sp-$04                                 ; $60d6: $f8 $fc
    jr c, @-$77                                   ; $60d8: $38 $87

    ld c, e                                       ; $60da: $4b
    add a                                         ; $60db: $87
    dec bc                                        ; $60dc: $0b
    jr nz, jr_0b9_60df                            ; $60dd: $20 $00

jr_0b9_60df:
    cpl                                           ; $60df: $2f
    jr nz, jr_0b9_60f1                            ; $60e0: $20 $0f

    adc h                                         ; $60e2: $8c
    add a                                         ; $60e3: $87
    call z, $cc03                                 ; $60e4: $cc $03 $cc
    nop                                           ; $60e7: $00
    add a                                         ; $60e8: $87
    call z, $e0cf                                 ; $60e9: $cc $cf $e0
    rst $18                                       ; $60ec: $df
    ret nz                                        ; $60ed: $c0

    rst $18                                       ; $60ee: $df
    ld e, a                                       ; $60ef: $5f
    ld c, h                                       ; $60f0: $4c

jr_0b9_60f1:
    ret nz                                        ; $60f1: $c0

    ld [bc], a                                    ; $60f2: $02
    jr z, @+$21                                   ; $60f3: $28 $1f

    ret nz                                        ; $60f5: $c0

    cp [hl]                                       ; $60f6: $be
    add hl, sp                                    ; $60f7: $39
    and [hl]                                      ; $60f8: $a6
    ld a, [de]                                    ; $60f9: $1a

    db $00, $20, $0e, $7b, $4b, $08, $00, $20, $00, $20, $0e, $7b, $4b, $08, $00, $20
    db $00, $20, $0e, $7b, $4b, $08, $00, $20, $0e, $7b, $eb, $76, $ec, $76, $eb, $76
    db $82, $49, $0e, $7b, $b9, $01, $eb, $76, $0e, $7b, $0e, $7b, $b9, $01, $eb, $76
    db $00, $20, $0e, $7b, $b9, $01, $eb, $76, $0e, $7b, $0e, $7b, $4b, $08, $00, $20
    db $0e, $7b, $0e, $7b, $4b, $08, $00, $20, $0e, $7b, $0e, $7b, $4b, $08, $00, $20
    db $82, $49, $0e, $7b, $b9, $01, $eb, $76, $8a, $00, $82, $49, $db, $01, $0e, $7b
    db $0e, $7b, $82, $49, $db, $01, $0e, $7b, $00, $20, $0e, $7b, $db, $01, $0e, $7b
    db $0d, $77, $0e, $7b, $0d, $7b, $00, $20, $0d, $77, $0e, $7b, $0d, $7b, $00, $20
    db $0d, $77, $0e, $7b, $0d, $7b, $00, $20, $47, $04, $82, $49, $75, $01, $ed, $76
    db $03, $00, $ed, $76, $cb, $00, $0d, $7b, $ed, $76, $0d, $77, $0d, $7b, $0d, $7b
    db $00, $20, $ed, $76, $0d, $77, $0d, $7b, $ec, $76, $ed, $76, $0d, $7b, $00, $20
    db $82, $49, $ec, $76, $8b, $08, $ed, $76, $69, $04, $ed, $76, $82, $49, $9f, $67
    db $21, $00, $82, $49, $97, $01, $eb, $76, $eb, $76, $ec, $76, $97, $01, $eb, $76
    db $eb, $76, $ec, $76, $97, $01, $eb, $76, $00, $20, $eb, $76, $ec, $76, $eb, $76
    db $cb, $76, $eb, $76, $82, $49, $9f, $67, $82, $49, $cb, $76, $1f, $57, $ac, $0c
    db $67, $08, $33, $42, $93, $1d, $1f, $57, $00, $00, $ca, $76, $8b, $08, $cb, $76
    db $ca, $76, $cb, $76, $8b, $08, $cb, $76, $ca, $76, $cb, $76, $8b, $08, $cb, $76
    db $00, $20, $ca, $76, $cb, $76, $cb, $76, $c9, $76, $ca, $76, $93, $1d, $1f, $57
    db $8a, $08, $c9, $76, $fe, $56, $82, $49, $47, $04, $3a, $3e, $2d, $21, $3f, $57
    db $22, $04, $a8, $76, $c9, $76, $cb, $76, $22, $04, $a8, $76, $c9, $76, $cb, $76
    db $a8, $76, $c9, $76, $c9, $76, $cb, $76, $00, $20, $a8, $76, $c9, $76, $cb, $76
    db $00, $00, $82, $49, $a8, $72, $a8, $76, $67, $00, $da, $01, $82, $49, $bd, $4a
    db $cc, $10, $a8, $72, $bc, $4a, $93, $29, $00, $00, $a7, $72, $45, $00, $22, $04
    db $00, $00, $45, $08, $22, $04, $86, $08, $00, $00, $a7, $72, $a8, $72, $a8, $76
    db $00, $20, $a7, $72, $a8, $72, $a8, $76, $00, $00, $82, $49, $86, $72, $a6, $72
    db $00, $00, $86, $72, $39, $3e, $8b, $08, $86, $72, $8a, $08, $74, $21, $f9, $35
    db $00, $00, $86, $72, $ec, $18, $86, $08, $00, $00, $87, $0c, $ca, $14, $44, $04
    db $00, $00, $85, $72, $a8, $14, $eb, $1c, $00, $20, $85, $72, $86, $72, $a6, $72
    db $00, $00, $84, $72, $85, $72, $f9, $35, $8b, $08, $84, $72, $f9, $35, $de, $4e
    db $00, $00, $84, $72, $8b, $08, $85, $72, $00, $00, $72, $25, $66, $08, $a9, $10
    db $44, $08, $0d, $1d, $88, $10, $51, $21, $00, $00, $84, $72, $a8, $10, $0e, $19
    db $00, $20, $83, $72, $84, $72, $0e, $19, $04, $00, $63, $72, $bb, $31, $3c, $04
    db $00, $00, $63, $72, $3a, $3e, $ac, $0c, $00, $00, $63, $72, $83, $72, $ac, $0c
    db $44, $08, $30, $1d, $ca, $14, $94, $25, $00, $00, $0e, $19, $73, $25, $44, $08
    db $01, $00, $63, $72, $73, $25, $87, $0c, $00, $20, $63, $72, $73, $25, $87, $0c
    db $43, $72, $26, $04, $3c, $04, $6c, $0c, $00, $00, $43, $72, $bb, $31, $6c, $0c
    db $00, $00, $43, $6e, $c9, $14, $2f, $21, $00, $00, $ec, $18, $b6, $29, $86, $08
    db $00, $00, $72, $25, $bf, $4e, $48, $04, $00, $00, $43, $6e, $a8, $10, $2e, $1d
    db $00, $20, $43, $6e, $43, $72, $2e, $1d, $23, $6e, $06, $00, $3c, $04, $6c, $0c
    db $23, $6e, $26, $04, $3c, $04, $6c, $0c, $00, $00, $23, $6e, $87, $10, $ca, $14
    db $01, $00, $ca, $10, $73, $25, $66, $08, $00, $00, $97, $25, $1f, $57, $4a, $04
    db $00, $00, $03, $6e, $ca, $14, $21, $04, $00, $20, $04, $6a, $23, $6e, $04, $6e
    db $26, $04, $e4, $69, $3c, $04, $6c, $0c, $06, $00, $e5, $69, $3c, $04, $6c, $0c
    db $01, $00, $e4, $69, $a9, $10, $0d, $19, $00, $00, $ec, $14, $b9, $21, $66, $08
    db $00, $00, $da, $31, $df, $4e, $29, $00, $00, $00, $c6, $69, $ec, $18, $46, $04
    db $00, $20, $e5, $69, $c7, $69, $e6, $69, $26, $04, $a7, $65, $3c, $04, $6c, $0c
    db $26, $04, $a7, $65, $3c, $04, $6c, $0c, $00, $00, $a7, $65, $ca, $14, $44, $08
    db $21, $00, $95, $25, $8a, $0c, $5c, $3e, $22, $04, $b3, $25, $59, $3a, $de, $4e
    db $21, $04, $88, $65, $72, $25, $a8, $10, $00, $20, $a8, $65, $69, $65, $89, $65
    db $49, $08, $bb, $31, $69, $65, $3c, $04, $06, $00, $89, $65, $6c, $0c, $6a, $65
    db $00, $00, $69, $65, $6a, $65, $89, $65, $00, $00, $1b, $36, $cb, $10, $9e, $4a
    db $42, $08, $76, $42, $eb, $19, $ff, $7f, $44, $04, $4a, $61, $ff, $7f, $eb, $19
    db $00, $20, $4a, $61, $6a, $65, $eb, $19, $01, $00, $bb, $31, $3c, $04, $6c, $0c
    db $26, $04, $4a, $61, $3c, $04, $4b, $61, $00, $00, $4a, $61, $4b, $61, $4b, $61
    db $00, $00, $1b, $36, $aa, $10, $9e, $46, $42, $08, $d3, $29, $de, $4e, $ef, $14
    db $21, $04, $2b, $61, $b2, $25, $45, $0e, $00, $20, $2b, $61, $4b, $61, $45, $0e
    db $00, $00, $3c, $04, $6c, $0c, $4b, $61, $00, $00, $2b, $61, $26, $04, $0c, $61
    db $2b, $61, $0c, $61, $2c, $61, $0c, $61, $23, $00, $0c, $61, $54, $19, $7d, $42
    db $02, $00, $d7, $2d, $be, $4a, $8c, $04, $42, $08, $0c, $5d, $d5, $31, $68, $04
    db $00, $20, $0c, $5d, $0c, $61, $2c, $61, $00, $00, $6c, $0c, $3c, $04, $07, $00
    db $01, $00, $bb, $31, $3c, $04, $4b, $08, $00, $00, $0c, $5d, $ed, $5c, $0c, $61
    db $67, $08, $ed, $5c, $74, $25, $5c, $3e, $ac, $0c, $1a, $32, $bc, $4e, $ff, $7f
    db $68, $04, $ed, $5c, $1a, $36, $31, $19, $00, $20, $ed, $5c, $1a, $36, $31, $19
    db $00, $00, $3c, $04, $cd, $5c, $4b, $08, $08, $00, $3c, $04, $6c, $0c, $4b, $08
    db $00, $00, $bb, $31, $49, $08, $3c, $04, $22, $00, $ef, $10, $ed, $5c, $96, $25
    db $25, $00, $d9, $2d, $ce, $10, $9d, $46, $68, $04, $ce, $5c, $ce, $10, $9d, $46
    db $00, $20, $ce, $5c, $ce, $10, $9d, $46, $00, $00, $ae, $58, $3c, $04, $4b, $08
    db $08, $00, $3c, $04, $6c, $0c, $4b, $08, $00, $00, $bb, $31, $3c, $04, $6b, $0c
    db $22, $00, $74, $1d, $ae, $0c, $3c, $36, $01, $00, $af, $58, $b7, $29, $ab, $0c
    db $af, $58, $af, $58, $b7, $29, $ab, $0c, $00, $20, $af, $58, $b7, $29, $ab, $0c
    db $00, $00, $8f, $58, $08, $00, $6c, $0c, $08, $00, $3c, $04, $6c, $0c, $6c, $0c
    db $00, $00, $3c, $04, $6c, $0c, $6c, $0c, $00, $00, $d9, $2d, $ac, $08, $9e, $46
    db $01, $00, $53, $31, $be, $4a, $6b, $0c, $90, $58, $53, $31, $be, $4a, $6b, $0c
    db $00, $20, $90, $58, $be, $4a, $6b, $0c, $00, $00, $70, $58, $08, $00, $90, $58
    db $08, $00, $3c, $04, $6c, $0c, $90, $58, $00, $00, $bb, $31, $4b, $08, $3c, $04
    db $00, $00, $3c, $04, $d9, $31, $6b, $08, $00, $00, $b8, $2d, $6b, $08, $3c, $04
    db $01, $00, $70, $58, $08, $00, $71, $58, $00, $20, $70, $58, $71, $58, $90, $58
    db $71, $58, $bb, $31, $4b, $08, $3c, $04, $20, $04, $3c, $04, $71, $58, $2a, $04
    db $00, $00, $bb, $31, $3c, $04, $6c, $0c, $00, $00, $bb, $31, $3c, $04, $4b, $08
    db $01, $00, $bb, $31, $3c, $04, $6c, $0c, $26, $04, $71, $58, $3c, $04, $bb, $31
    db $00, $20, $71, $58, $3c, $04, $bb, $31, $71, $58, $bb, $31, $3c, $04, $6c, $0c
    db $00, $00, $71, $58, $3c, $04, $4b, $08, $00, $00, $3c, $04, $6c, $0c, $4b, $08
    db $00, $00, $bb, $31, $3c, $04, $4a, $08, $00, $00, $3c, $04, $08, $00, $6c, $0c
    db $01, $00, $71, $58, $3c, $04, $6c, $0c, $00, $20, $71, $58, $3c, $04, $6c, $0c
    db $71, $58, $3c, $04, $6c, $0c, $4b, $08, $00, $00, $71, $58, $3c, $04, $2a, $04
    db $6c, $0c, $3c, $04, $3c, $04, $2a, $04, $6c, $0c, $bb, $31, $3c, $04, $6c, $0c
    db $00, $00, $bb, $31, $3c, $04, $6c, $0c, $48, $08, $71, $58, $3c, $04, $bb, $31
    db $00, $20, $71, $58, $3c, $04, $bb, $31, $71, $58, $3c, $04, $3c, $04, $2a, $04
    db $00, $00, $71, $58, $08, $00, $6c, $0c, $6c, $0c, $3c, $04, $0d, $00, $6c, $0c
    db $00, $00, $3c, $04, $6c, $0c, $bb, $31, $00, $00, $bb, $31, $3c, $04, $6c, $0c
    db $48, $08, $71, $58, $3c, $04, $bb, $31, $00, $20, $71, $58, $3c, $04, $bb, $31
    db $71, $58, $3c, $04, $0d, $00, $6c, $0c, $00, $00, $71, $58, $0d, $00, $6c, $0c
    db $08, $00, $3c, $04, $6c, $0c, $6c, $0c, $00, $00, $3c, $04, $08, $00, $6c, $0c
    db $00, $00, $3c, $04, $6c, $0c, $6c, $0c, $22, $00, $71, $58, $3c, $04, $6c, $0c
    db $00, $20, $71, $58, $3c, $04, $6c, $0c, $71, $58, $3c, $04, $6c, $0c, $6c, $0c
    db $71, $58, $3c, $04, $6c, $0c, $6c, $0c, $00, $00, $bb, $31, $3c, $04, $4a, $04
    db $00, $00, $3c, $04, $08, $00, $6c, $0c, $00, $00, $bb, $31, $3c, $04, $6c, $0c
    db $23, $00, $71, $58, $3c, $04, $6c, $0c, $00, $20, $71, $58, $3c, $04, $6c, $0c

    nop                                           ; $671a: $00
    jr nz, @+$01                                  ; $671b: $20 $ff

    ld [bc], a                                    ; $671d: $02
    rst $20                                       ; $671e: $e7
    jr jr_0b9_6721                                ; $671f: $18 $00

jr_0b9_6721:
    inc e                                         ; $6721: $1c
    nop                                           ; $6722: $00
    jr nz, @+$01                                  ; $6723: $20 $ff

    ld [bc], a                                    ; $6725: $02
    rst $20                                       ; $6726: $e7
    jr jr_0b9_6729                                ; $6727: $18 $00

jr_0b9_6729:
    inc e                                         ; $6729: $1c
    nop                                           ; $672a: $00
    jr nz, @+$01                                  ; $672b: $20 $ff

    ld [bc], a                                    ; $672d: $02
    rst $20                                       ; $672e: $e7
    jr jr_0b9_6731                                ; $672f: $18 $00

jr_0b9_6731:
    inc e                                         ; $6731: $1c
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    rst $38                                       ; $6734: $ff
    ld [bc], a                                    ; $6735: $02
    ld b, e                                       ; $6736: $43
    ld [$2572], sp                                ; $6737: $08 $72 $25
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    rst $38                                       ; $673c: $ff
    ld [bc], a                                    ; $673d: $02
    ld b, e                                       ; $673e: $43
    ld [$2572], sp                                ; $673f: $08 $72 $25
    rst $38                                       ; $6742: $ff
    ld [bc], a                                    ; $6743: $02
    rst $38                                       ; $6744: $ff
    ld [bc], a                                    ; $6745: $02
    ld b, e                                       ; $6746: $43
    ld [$2572], sp                                ; $6747: $08 $72 $25
    nop                                           ; $674a: $00
    jr nz, @+$01                                  ; $674b: $20 $ff

    ld [bc], a                                    ; $674d: $02
    ld b, e                                       ; $674e: $43
    ld [$2572], sp                                ; $674f: $08 $72 $25
    rst $38                                       ; $6752: $ff
    ld [bc], a                                    ; $6753: $02
    rst $38                                       ; $6754: $ff
    ld [bc], a                                    ; $6755: $02
    rst $20                                       ; $6756: $e7
    jr jr_0b9_6759                                ; $6757: $18 $00

jr_0b9_6759:
    inc e                                         ; $6759: $1c
    rst $38                                       ; $675a: $ff
    ld [bc], a                                    ; $675b: $02
    rst $38                                       ; $675c: $ff
    ld [bc], a                                    ; $675d: $02
    rst $20                                       ; $675e: $e7
    jr jr_0b9_6761                                ; $675f: $18 $00

jr_0b9_6761:
    inc e                                         ; $6761: $1c
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00

jr_0b9_6764:
    rst $38                                       ; $6764: $ff
    ld [bc], a                                    ; $6765: $02
    ld b, [hl]                                    ; $6766: $46
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    inc e                                         ; $6769: $1c
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    add a                                         ; $676c: $87
    inc c                                         ; $676d: $0c
    dec c                                         ; $676e: $0d
    dec e                                         ; $676f: $1d
    ld b, h                                       ; $6770: $44
    inc b                                         ; $6771: $04
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    rst $18                                       ; $6774: $df
    ld [bc], a                                    ; $6775: $02
    ld h, l                                       ; $6776: $65
    ld [$10a8], sp                                ; $6777: $08 $a8 $10
    rst $18                                       ; $677a: $df
    ld [bc], a                                    ; $677b: $02
    rst $38                                       ; $677c: $ff
    ld [bc], a                                    ; $677d: $02
    ld h, l                                       ; $677e: $65
    ld [$10a8], sp                                ; $677f: $08 $a8 $10
    nop                                           ; $6782: $00
    jr nz, jr_0b9_6764                            ; $6783: $20 $df

    ld [bc], a                                    ; $6785: $02
    rst $38                                       ; $6786: $ff
    ld [bc], a                                    ; $6787: $02
    xor b                                         ; $6788: $a8
    db $10                                        ; $6789: $10
    rst $18                                       ; $678a: $df
    ld [bc], a                                    ; $678b: $02
    rst $38                                       ; $678c: $ff
    ld [bc], a                                    ; $678d: $02
    ld b, [hl]                                    ; $678e: $46
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    inc e                                         ; $6791: $1c
    rst $18                                       ; $6792: $df
    ld [bc], a                                    ; $6793: $02
    rst $38                                       ; $6794: $ff
    ld [bc], a                                    ; $6795: $02
    ld b, [hl]                                    ; $6796: $46
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    inc e                                         ; $6799: $1c
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00

jr_0b9_679c:
    rst $18                                       ; $679c: $df
    ld [bc], a                                    ; $679d: $02
    and a                                         ; $679e: $a7
    inc c                                         ; $679f: $0c
    inc c                                         ; $67a0: $0c
    add hl, de                                    ; $67a1: $19
    inc hl                                        ; $67a2: $23
    inc b                                         ; $67a3: $04
    rl h                                          ; $67a4: $cb $14
    add a                                         ; $67a6: $87
    inc c                                         ; $67a7: $0c
    ld d, c                                       ; $67a8: $51
    ld hl, $0001                                  ; $67a9: $21 $01 $00
    rst $18                                       ; $67ac: $df
    ld [bc], a                                    ; $67ad: $02
    jp z, $2f14                                   ; $67ae: $ca $14 $2f

    dec e                                         ; $67b1: $1d
    rst $18                                       ; $67b2: $df
    ld [bc], a                                    ; $67b3: $02

jr_0b9_67b4:
    rst $18                                       ; $67b4: $df
    ld [bc], a                                    ; $67b5: $02
    jp z, $2f14                                   ; $67b6: $ca $14 $2f

    dec e                                         ; $67b9: $1d
    nop                                           ; $67ba: $00
    jr nz, jr_0b9_679c                            ; $67bb: $20 $df

    ld [bc], a                                    ; $67bd: $02
    jp z, $2f14                                   ; $67be: $ca $14 $2f

    dec e                                         ; $67c1: $1d
    cp a                                          ; $67c2: $bf
    ld [bc], a                                    ; $67c3: $02
    rst $18                                       ; $67c4: $df
    ld [bc], a                                    ; $67c5: $02
    and a                                         ; $67c6: $a7
    inc c                                         ; $67c7: $0c
    inc c                                         ; $67c8: $0c
    add hl, de                                    ; $67c9: $19
    cp a                                          ; $67ca: $bf
    ld [bc], a                                    ; $67cb: $02

jr_0b9_67cc:
    rst $18                                       ; $67cc: $df
    ld [bc], a                                    ; $67cd: $02
    and a                                         ; $67ce: $a7
    inc c                                         ; $67cf: $0c
    inc c                                         ; $67d0: $0c
    add hl, de                                    ; $67d1: $19
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    sub h                                         ; $67d4: $94
    add hl, hl                                    ; $67d5: $29
    cp a                                          ; $67d6: $bf
    ld [bc], a                                    ; $67d7: $02
    ld h, [hl]                                    ; $67d8: $66
    ld [$0422], sp                                ; $67d9: $08 $22 $04
    ld c, $19                                     ; $67dc: $0e $19
    xor c                                         ; $67de: $a9
    db $10                                        ; $67df: $10
    ld [hl], d                                    ; $67e0: $72
    dec h                                         ; $67e1: $25
    ld [hl+], a                                   ; $67e2: $22
    nop                                           ; $67e3: $00
    ld c, $19                                     ; $67e4: $0e $19
    xor b                                         ; $67e6: $a8
    db $10                                        ; $67e7: $10
    ld [hl], d                                    ; $67e8: $72
    dec h                                         ; $67e9: $25
    ld b, e                                       ; $67ea: $43
    ld [$02bf], sp                                ; $67eb: $08 $bf $02
    xor b                                         ; $67ee: $a8
    db $10                                        ; $67ef: $10
    ld [hl], d                                    ; $67f0: $72
    dec h                                         ; $67f1: $25
    nop                                           ; $67f2: $00
    jr nz, jr_0b9_67b4                            ; $67f3: $20 $bf

    ld [bc], a                                    ; $67f5: $02
    xor b                                         ; $67f6: $a8
    db $10                                        ; $67f7: $10
    ld [hl], d                                    ; $67f8: $72
    dec h                                         ; $67f9: $25
    sbc a                                         ; $67fa: $9f
    ld [bc], a                                    ; $67fb: $02
    cp a                                          ; $67fc: $bf
    ld [bc], a                                    ; $67fd: $02
    cp a                                          ; $67fe: $bf
    ld [bc], a                                    ; $67ff: $02
    ld h, [hl]                                    ; $6800: $66
    ld [$029f], sp                                ; $6801: $08 $9f $02
    cp a                                          ; $6804: $bf
    ld [bc], a                                    ; $6805: $02
    cp a                                          ; $6806: $bf
    ld [bc], a                                    ; $6807: $02
    ld h, [hl]                                    ; $6808: $66
    ld [$0001], sp                                ; $6809: $08 $01 $00
    ld d, c                                       ; $680c: $51
    ld hl, $029f                                  ; $680d: $21 $9f $02
    xor c                                         ; $6810: $a9
    stop                                          ; $6811: $10 $00
    nop                                           ; $6813: $00
    jr nc, jr_0b9_6833                            ; $6814: $30 $1d

    ld h, a                                       ; $6816: $67
    ld [$29b6], sp                                ; $6817: $08 $b6 $29
    ld [bc], a                                    ; $681a: $02
    nop                                           ; $681b: $00
    dec c                                         ; $681c: $0d
    add hl, de                                    ; $681d: $19
    add a                                         ; $681e: $87
    inc c                                         ; $681f: $0c
    ld [hl], e                                    ; $6820: $73
    add hl, hl                                    ; $6821: $29
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    sbc a                                         ; $6824: $9f
    ld [bc], a                                    ; $6825: $02
    ld b, e                                       ; $6826: $43
    ld [$2973], sp                                ; $6827: $08 $73 $29
    nop                                           ; $682a: $00
    jr nz, jr_0b9_67cc                            ; $682b: $20 $9f

    ld [bc], a                                    ; $682d: $02
    ld b, e                                       ; $682e: $43
    ld [$2973], sp                                ; $682f: $08 $73 $29
    ld a, a                                       ; $6832: $7f

jr_0b9_6833:
    ld [bc], a                                    ; $6833: $02
    sbc a                                         ; $6834: $9f
    ld [bc], a                                    ; $6835: $02
    sbc a                                         ; $6836: $9f
    ld [bc], a                                    ; $6837: $02
    xor c                                         ; $6838: $a9
    db $10                                        ; $6839: $10
    ld a, a                                       ; $683a: $7f
    ld [bc], a                                    ; $683b: $02
    sbc a                                         ; $683c: $9f
    ld [bc], a                                    ; $683d: $02
    sbc a                                         ; $683e: $9f
    ld [bc], a                                    ; $683f: $02
    xor c                                         ; $6840: $a9
    db $10                                        ; $6841: $10
    ld hl, $cb00                                  ; $6842: $21 $00 $cb
    inc d                                         ; $6845: $14
    sbc a                                         ; $6846: $9f
    ld [bc], a                                    ; $6847: $02
    sub h                                         ; $6848: $94
    dec h                                         ; $6849: $25
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    ld [hl], l                                    ; $684c: $75
    dec h                                         ; $684d: $25
    rst $18                                       ; $684e: $df
    ld d, d                                       ; $684f: $52
    ld c, b                                       ; $6850: $48
    ld [$0000], sp                                ; $6851: $08 $00 $00
    rl h                                          ; $6854: $cb $14
    or [hl]                                       ; $6856: $b6
    add hl, hl                                    ; $6857: $29
    ld h, l                                       ; $6858: $65
    inc c                                         ; $6859: $0c
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    ld a, a                                       ; $685c: $7f
    ld [bc], a                                    ; $685d: $02
    or [hl]                                       ; $685e: $b6
    add hl, hl                                    ; $685f: $29
    ld h, l                                       ; $6860: $65
    inc c                                         ; $6861: $0c
    nop                                           ; $6862: $00
    jr nz, jr_0b9_68e4                            ; $6863: $20 $7f

    ld [bc], a                                    ; $6865: $02
    or [hl]                                       ; $6866: $b6
    add hl, hl                                    ; $6867: $29
    ld h, l                                       ; $6868: $65
    inc c                                         ; $6869: $0c
    ld e, a                                       ; $686a: $5f
    ld [bc], a                                    ; $686b: $02
    ld a, a                                       ; $686c: $7f
    ld [bc], a                                    ; $686d: $02
    sbc a                                         ; $686e: $9f
    ld [bc], a                                    ; $686f: $02
    sub h                                         ; $6870: $94
    dec h                                         ; $6871: $25
    ld e, a                                       ; $6872: $5f
    ld [bc], a                                    ; $6873: $02
    ld a, a                                       ; $6874: $7f
    ld [bc], a                                    ; $6875: $02
    sbc a                                         ; $6876: $9f
    ld [bc], a                                    ; $6877: $02
    sub h                                         ; $6878: $94
    dec h                                         ; $6879: $25
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    add a                                         ; $687c: $87
    inc c                                         ; $687d: $0c
    ld b, e                                       ; $687e: $43
    inc b                                         ; $687f: $04
    jp z, Jump_000_2610                           ; $6880: $ca $10 $26

    nop                                           ; $6883: $00
    sbc c                                         ; $6884: $99
    dec h                                         ; $6885: $25
    rra                                           ; $6886: $1f
    ld d, a                                       ; $6887: $57
    cpl                                           ; $6888: $2f
    dec e                                         ; $6889: $1d
    ld bc, $ca00                                  ; $688a: $01 $00 $ca
    inc d                                         ; $688d: $14
    ld [hl], h                                    ; $688e: $74
    dec e                                         ; $688f: $1d
    ld e, h                                       ; $6890: $5c
    ld a, [hl-]                                   ; $6891: $3a
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    ld e, a                                       ; $6894: $5f
    ld [bc], a                                    ; $6895: $02
    ld a, a                                       ; $6896: $7f
    ld [bc], a                                    ; $6897: $02
    ld e, h                                       ; $6898: $5c
    ld a, [hl-]                                   ; $6899: $3a
    nop                                           ; $689a: $00
    jr nz, @+$61                                  ; $689b: $20 $5f

    ld [bc], a                                    ; $689d: $02
    ld a, a                                       ; $689e: $7f
    ld [bc], a                                    ; $689f: $02
    ld e, h                                       ; $68a0: $5c
    ld a, [hl-]                                   ; $68a1: $3a
    ld e, a                                       ; $68a2: $5f
    ld [bc], a                                    ; $68a3: $02
    add a                                         ; $68a4: $87
    inc c                                         ; $68a5: $0c
    ld b, e                                       ; $68a6: $43
    inc b                                         ; $68a7: $04
    jp z, Jump_0b9_5f10                           ; $68a8: $ca $10 $5f

    ld [bc], a                                    ; $68ab: $02
    add a                                         ; $68ac: $87
    inc c                                         ; $68ad: $0c
    ld b, e                                       ; $68ae: $43
    inc b                                         ; $68af: $04
    jp z, RST_10                                  ; $68b0: $ca $10 $00

    nop                                           ; $68b3: $00
    ld h, [hl]                                    ; $68b4: $66
    inc c                                         ; $68b5: $0c
    rl h                                          ; $68b6: $cb $14
    ld h, l                                       ; $68b8: $65
    ld [$0421], sp                                ; $68b9: $08 $21 $04
    cp d                                          ; $68bc: $ba
    dec l                                         ; $68bd: $2d
    sbc $4e                                       ; $68be: $de $4e
    ld c, b                                       ; $68c0: $48
    inc b                                         ; $68c1: $04

Jump_0b9_68c2:
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    ld [hl], d                                    ; $68c4: $72
    dec h                                         ; $68c5: $25
    adc c                                         ; $68c6: $89
    ld [$3a7c], sp                                ; $68c7: $08 $7c $3a
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    ld a, $02                                     ; $68cc: $3e $02
    ld e, a                                       ; $68ce: $5f
    ld [bc], a                                    ; $68cf: $02
    ccf                                           ; $68d0: $3f
    ld [bc], a                                    ; $68d1: $02
    nop                                           ; $68d2: $00
    jr nz, @+$40                                  ; $68d3: $20 $3e

    ld [bc], a                                    ; $68d5: $02
    ld e, a                                       ; $68d6: $5f
    ld [bc], a                                    ; $68d7: $02
    ccf                                           ; $68d8: $3f
    ld [bc], a                                    ; $68d9: $02
    ld a, $02                                     ; $68da: $3e $02
    ccf                                           ; $68dc: $3f
    ld [bc], a                                    ; $68dd: $02
    rl h                                          ; $68de: $cb $14
    ld h, l                                       ; $68e0: $65
    ld [$023e], sp                                ; $68e1: $08 $3e $02

jr_0b9_68e4:
    ccf                                           ; $68e4: $3f
    ld [bc], a                                    ; $68e5: $02
    rl h                                          ; $68e6: $cb $14
    ld h, l                                       ; $68e8: $65
    ld [$0001], sp                                ; $68e9: $08 $01 $00
    ld hl, sp+$31                                 ; $68ec: $f8 $31
    xor h                                         ; $68ee: $ac
    inc b                                         ; $68ef: $04
    ccf                                           ; $68f0: $3f
    ld [bc], a                                    ; $68f1: $02
    ld hl, $fa04                                  ; $68f2: $21 $04 $fa
    ld sp, $633b                                  ; $68f5: $31 $3b $63
    ld l, d                                       ; $68f8: $6a
    dec d                                         ; $68f9: $15
    ld b, e                                       ; $68fa: $43
    ld [$021e], sp                                ; $68fb: $08 $1e $02
    sub [hl]                                      ; $68fe: $96
    ld hl, $4edf                                  ; $68ff: $21 $df $4e
    ld e, $02                                     ; $6902: $1e $02
    ld a, $02                                     ; $6904: $3e $02
    ccf                                           ; $6906: $3f
    ld [bc], a                                    ; $6907: $02
    rst $18                                       ; $6908: $df
    ld c, [hl]                                    ; $6909: $4e
    nop                                           ; $690a: $00
    jr nz, @+$20                                  ; $690b: $20 $1e

    ld [bc], a                                    ; $690d: $02
    rra                                           ; $690e: $1f
    ld [bc], a                                    ; $690f: $02
    ld a, $02                                     ; $6910: $3e $02
    ld e, $02                                     ; $6912: $1e $02
    rra                                           ; $6914: $1f
    ld [bc], a                                    ; $6915: $02
    xor h                                         ; $6916: $ac
    inc b                                         ; $6917: $04
    ccf                                           ; $6918: $3f
    ld [bc], a                                    ; $6919: $02
    ld e, $02                                     ; $691a: $1e $02
    rra                                           ; $691c: $1f
    ld [bc], a                                    ; $691d: $02
    xor h                                         ; $691e: $ac
    inc b                                         ; $691f: $04
    ccf                                           ; $6920: $3f
    ld [bc], a                                    ; $6921: $02
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    ld e, $02                                     ; $6924: $1e $02
    inc a                                         ; $6926: $3c
    ld a, [hl-]                                   ; $6927: $3a
    rrc h                                         ; $6928: $cb $0c
    ld bc, $7705                                  ; $692a: $01 $05 $77
    dec e                                         ; $692d: $1d
    ld a, [hl]                                    ; $692e: $7e
    ld b, d                                       ; $692f: $42
    rst $38                                       ; $6930: $ff
    ld a, a                                       ; $6931: $7f
    ld b, e                                       ; $6932: $43
    ld [$121d], sp                                ; $6933: $08 $1d $12
    rst $38                                       ; $6936: $ff
    ld a, a                                       ; $6937: $7f
    pop hl                                        ; $6938: $e1
    dec b                                         ; $6939: $05
    cp $01                                        ; $693a: $fe $01
    ld e, $02                                     ; $693c: $1e $02
    rst $38                                       ; $693e: $ff
    ld bc, $021f                                  ; $693f: $01 $1f $02
    nop                                           ; $6942: $00

jr_0b9_6943:
    jr nz, jr_0b9_6943                            ; $6943: $20 $fe

    ld bc, $021e                                  ; $6945: $01 $1e $02
    rst $38                                       ; $6948: $ff
    ld bc, $01fe                                  ; $6949: $01 $fe $01
    rst $38                                       ; $694c: $ff
    ld bc, $05fe                                  ; $694d: $01 $fe $05
    rrc h                                         ; $6950: $cb $0c
    cp $01                                        ; $6952: $fe $01
    rst $38                                       ; $6954: $ff
    ld bc, $05fe                                  ; $6955: $01 $fe $05
    rrc h                                         ; $6958: $cb $0c
    nop                                           ; $695a: $00

jr_0b9_695b:
    nop                                           ; $695b: $00
    dec de                                        ; $695c: $1b
    ld [hl], $fe                                  ; $695d: $36 $fe
    ld bc, $0caa                                  ; $695f: $01 $aa $0c
    ld b, d                                       ; $6962: $42
    ld [$2dd9], sp                                ; $6963: $08 $d9 $2d
    sbc [hl]                                      ; $6966: $9e
    ld c, d                                       ; $6967: $4a
    sbc $52                                       ; $6968: $de $52
    ld b, h                                       ; $696a: $44
    ld [$01de], sp                                ; $696b: $08 $de $01
    ld a, h                                       ; $696e: $7c
    ld a, $7f                                     ; $696f: $3e $7f
    ld h, a                                       ; $6971: $67
    sbc $01                                       ; $6972: $de $01
    sbc $05                                       ; $6974: $de $05
    cp $05                                        ; $6976: $fe $05
    cp $01                                        ; $6978: $fe $01
    nop                                           ; $697a: $00
    jr nz, jr_0b9_695b                            ; $697b: $20 $de

    ld bc, $05de                                  ; $697d: $01 $de $05
    rst $38                                       ; $6980: $ff
    ld bc, $05de                                  ; $6981: $01 $de $05
    cp $05                                        ; $6984: $fe $05
    rst $18                                       ; $6986: $df
    dec b                                         ; $6987: $05
    rst $38                                       ; $6988: $ff
    dec b                                         ; $6989: $05
    sbc $01                                       ; $698a: $de $01
    cp $01                                        ; $698c: $fe $01
    cp $05                                        ; $698e: $fe $05
    sbc $05                                       ; $6990: $de $05
    nop                                           ; $6992: $00

jr_0b9_6993:
    nop                                           ; $6993: $00
    halt                                          ; $6994: $76
    dec e                                         ; $6995: $1d
    adc e                                         ; $6996: $8b
    inc b                                         ; $6997: $04
    sbc $05                                       ; $6998: $de $05
    ld l, e                                       ; $699a: $6b
    nop                                           ; $699b: $00
    dec sp                                        ; $699c: $3b
    ld a, [hl-]                                   ; $699d: $3a
    or [hl]                                       ; $699e: $b6
    add hl, hl                                    ; $699f: $29
    sbc [hl]                                      ; $69a0: $9e
    ld b, [hl]                                    ; $69a1: $46
    ld c, b                                       ; $69a2: $48
    nop                                           ; $69a3: $00
    sbc $05                                       ; $69a4: $de $05
    rst $10                                       ; $69a6: $d7
    dec l                                         ; $69a7: $2d
    rst $18                                       ; $69a8: $df
    ld c, d                                       ; $69a9: $4a
    sbc $05                                       ; $69aa: $de $05
    rst $18                                       ; $69ac: $df
    dec b                                         ; $69ad: $05
    rst $10                                       ; $69ae: $d7
    dec l                                         ; $69af: $2d
    rst $18                                       ; $69b0: $df
    ld c, d                                       ; $69b1: $4a
    nop                                           ; $69b2: $00
    jr nz, jr_0b9_6993                            ; $69b3: $20 $de

    dec b                                         ; $69b5: $05
    rst $18                                       ; $69b6: $df
    dec b                                         ; $69b7: $05
    rst $18                                       ; $69b8: $df
    ld c, d                                       ; $69b9: $4a
    cp [hl]                                       ; $69ba: $be
    dec b                                         ; $69bb: $05
    sbc $05                                       ; $69bc: $de $05
    adc e                                         ; $69be: $8b
    inc b                                         ; $69bf: $04
    sbc $05                                       ; $69c0: $de $05
    cp [hl]                                       ; $69c2: $be

jr_0b9_69c3:
    dec b                                         ; $69c3: $05
    sbc $05                                       ; $69c4: $de $05
    adc e                                         ; $69c6: $8b
    inc b                                         ; $69c7: $04
    sbc $05                                       ; $69c8: $de $05
    inc hl                                        ; $69ca: $23
    nop                                           ; $69cb: $00
    sbc h                                         ; $69cc: $9c
    dec b                                         ; $69cd: $05
    xor e                                         ; $69ce: $ab
    inc b                                         ; $69cf: $04
    cp [hl]                                       ; $69d0: $be
    dec b                                         ; $69d1: $05
    ld b, [hl]                                    ; $69d2: $46
    nop                                           ; $69d3: $00
    ld hl, sp+$31                                 ; $69d4: $f8 $31
    ld sp, $df19                                  ; $69d6: $31 $19 $df
    ld c, [hl]                                    ; $69d9: $4e
    ld [bc], a                                    ; $69da: $02
    nop                                           ; $69db: $00
    cp [hl]                                       ; $69dc: $be
    dec b                                         ; $69dd: $05
    rst $38                                       ; $69de: $ff
    ld d, d                                       ; $69df: $52
    ld l, d                                       ; $69e0: $6a
    nop                                           ; $69e1: $00
    cp [hl]                                       ; $69e2: $be
    dec b                                         ; $69e3: $05
    cp [hl]                                       ; $69e4: $be
    dec b                                         ; $69e5: $05
    rst $38                                       ; $69e6: $ff
    ld d, d                                       ; $69e7: $52
    ld l, d                                       ; $69e8: $6a
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    jr nz, @-$40                                  ; $69eb: $20 $be

    dec b                                         ; $69ed: $05
    rst $38                                       ; $69ee: $ff
    ld d, d                                       ; $69ef: $52
    ld l, d                                       ; $69f0: $6a
    nop                                           ; $69f1: $00
    sbc [hl]                                      ; $69f2: $9e
    dec b                                         ; $69f3: $05
    cp [hl]                                       ; $69f4: $be
    dec b                                         ; $69f5: $05
    xor e                                         ; $69f6: $ab
    inc b                                         ; $69f7: $04
    cp [hl]                                       ; $69f8: $be
    dec b                                         ; $69f9: $05
    sbc [hl]                                      ; $69fa: $9e

jr_0b9_69fb:
    dec b                                         ; $69fb: $05
    cp [hl]                                       ; $69fc: $be
    dec b                                         ; $69fd: $05
    xor e                                         ; $69fe: $ab
    inc b                                         ; $69ff: $04
    cp [hl]                                       ; $6a00: $be
    dec b                                         ; $6a01: $05
    ld hl, $ef04                                  ; $6a02: $21 $04 $ef
    dec a                                         ; $6a05: $3d
    sbc h                                         ; $6a06: $9c
    dec b                                         ; $6a07: $05
    ld h, [hl]                                    ; $6a08: $66
    ld [$0024], sp                                ; $6a09: $08 $24 $00
    dec de                                        ; $6a0c: $1b
    ld [hl-], a                                   ; $6a0d: $32
    dec l                                         ; $6a0e: $2d
    dec e                                         ; $6a0f: $1d
    db $dd                                        ; $6a10: $dd
    ld c, [hl]                                    ; $6a11: $4e
    ld l, b                                       ; $6a12: $68
    inc b                                         ; $6a13: $04
    sbc [hl]                                      ; $6a14: $9e
    dec b                                         ; $6a15: $05
    sbc l                                         ; $6a16: $9d
    ld b, d                                       ; $6a17: $42
    inc de                                        ; $6a18: $13
    dec b                                         ; $6a19: $05
    sbc [hl]                                      ; $6a1a: $9e
    dec b                                         ; $6a1b: $05
    sbc [hl]                                      ; $6a1c: $9e
    dec b                                         ; $6a1d: $05
    sbc l                                         ; $6a1e: $9d
    ld b, d                                       ; $6a1f: $42
    inc de                                        ; $6a20: $13
    dec b                                         ; $6a21: $05
    nop                                           ; $6a22: $00
    jr nz, jr_0b9_69c3                            ; $6a23: $20 $9e

    dec b                                         ; $6a25: $05
    sbc l                                         ; $6a26: $9d
    ld b, d                                       ; $6a27: $42
    inc de                                        ; $6a28: $13
    dec b                                         ; $6a29: $05
    sbc [hl]                                      ; $6a2a: $9e
    dec b                                         ; $6a2b: $05
    rst $28                                       ; $6a2c: $ef
    dec a                                         ; $6a2d: $3d
    sbc h                                         ; $6a2e: $9c
    dec b                                         ; $6a2f: $05
    ld h, [hl]                                    ; $6a30: $66
    ld [$0000], sp                                ; $6a31: $08 $00 $00
    inc de                                        ; $6a34: $13
    dec b                                         ; $6a35: $05
    sbc [hl]                                      ; $6a36: $9e
    dec b                                         ; $6a37: $05
    inc hl                                        ; $6a38: $23
    inc b                                         ; $6a39: $04
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    xor l                                         ; $6a3c: $ad
    dec [hl]                                      ; $6a3d: $35
    jr jr_0b9_6aa3                                ; $6a3e: $18 $63

    ld d, d                                       ; $6a40: $52
    ld c, d                                       ; $6a41: $4a
    ld [hl+], a                                   ; $6a42: $22
    inc b                                         ; $6a43: $04
    halt                                          ; $6a44: $76
    ld c, d                                       ; $6a45: $4a
    cp l                                          ; $6a46: $bd
    ld [hl], a                                    ; $6a47: $77
    xor c                                         ; $6a48: $a9
    stop                                          ; $6a49: $10 $00
    nop                                           ; $6a4b: $00
    sbc [hl]                                      ; $6a4c: $9e
    dec b                                         ; $6a4d: $05
    and $1c                                       ; $6a4e: $e6 $1c
    ld c, b                                       ; $6a50: $48
    nop                                           ; $6a51: $00
    sbc [hl]                                      ; $6a52: $9e
    dec b                                         ; $6a53: $05
    sbc [hl]                                      ; $6a54: $9e
    dec b                                         ; $6a55: $05
    and $1c                                       ; $6a56: $e6 $1c
    ld c, b                                       ; $6a58: $48
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    jr nz, jr_0b9_69fb                            ; $6a5b: $20 $9e

    dec b                                         ; $6a5d: $05
    and $1c                                       ; $6a5e: $e6 $1c
    ld c, b                                       ; $6a60: $48
    nop                                           ; $6a61: $00
    ld a, l                                       ; $6a62: $7d
    dec b                                         ; $6a63: $05
    sbc [hl]                                      ; $6a64: $9e
    dec b                                         ; $6a65: $05
    jr jr_0b9_6acb                                ; $6a66: $18 $63

    ld d, d                                       ; $6a68: $52
    ld c, d                                       ; $6a69: $4a
    ld [hl+], a                                   ; $6a6a: $22
    inc b                                         ; $6a6b: $04
    inc de                                        ; $6a6c: $13
    dec b                                         ; $6a6d: $05
    ld l, e                                       ; $6a6e: $6b
    add hl, hl                                    ; $6a6f: $29
    sbc [hl]                                      ; $6a70: $9e
    dec b                                         ; $6a71: $05
    ld hl, $2e04                                  ; $6a72: $21 $04 $2e
    inc c                                         ; $6a75: $0c
    adc $35                                       ; $6a76: $ce $35
    inc a                                         ; $6a78: $3c
    inc b                                         ; $6a79: $04
    ld bc, $b400                                  ; $6a7a: $01 $00 $b4
    ld d, [hl]                                    ; $6a7d: $56
    cp l                                          ; $6a7e: $bd
    ld [hl], a                                    ; $6a7f: $77
    add sp, $1c                                   ; $6a80: $e8 $1c
    inc bc                                        ; $6a82: $03
    nop                                           ; $6a83: $00
    ld e, d                                       ; $6a84: $5a
    ld l, e                                       ; $6a85: $6b
    db $ed                                        ; $6a86: $ed
    inc e                                         ; $6a87: $1c
    call c, Call_0b9_7d04                         ; $6a88: $dc $04 $7d
    dec b                                         ; $6a8b: $05
    ld e, d                                       ; $6a8c: $5a
    ld l, e                                       ; $6a8d: $6b
    db $ed                                        ; $6a8e: $ed
    inc e                                         ; $6a8f: $1c
    call c, Call_000_0004                         ; $6a90: $dc $04 $00
    jr nz, jr_0b9_6b12                            ; $6a93: $20 $7d

    dec b                                         ; $6a95: $05
    db $ed                                        ; $6a96: $ed
    inc e                                         ; $6a97: $1c
    call c, Call_000_1304                         ; $6a98: $dc $04 $13
    dec b                                         ; $6a9b: $05
    ld a, l                                       ; $6a9c: $7d
    dec b                                         ; $6a9d: $05
    adc $35                                       ; $6a9e: $ce $35
    inc a                                         ; $6aa0: $3c
    inc b                                         ; $6aa1: $04
    ld b, d                                       ; $6aa2: $42

jr_0b9_6aa3:
    ld [$18c6], sp                                ; $6aa3: $08 $c6 $18
    inc de                                        ; $6aa6: $13
    dec b                                         ; $6aa7: $05
    ld c, d                                       ; $6aa8: $4a
    add hl, hl                                    ; $6aa9: $29
    ld hl, $3c04                                  ; $6aaa: $21 $04 $3c
    inc b                                         ; $6aad: $04
    dec c                                         ; $6aae: $0d
    inc c                                         ; $6aaf: $0c
    add hl, hl                                    ; $6ab0: $29
    ld hl, $0003                                  ; $6ab1: $21 $03 $00
    sbc h                                         ; $6ab4: $9c
    ld [hl], e                                    ; $6ab5: $73
    adc e                                         ; $6ab6: $8b
    ld sp, $09f1                                  ; $6ab7: $31 $f1 $09
    ld bc, $3700                                  ; $6aba: $01 $00 $37
    ld h, a                                       ; $6abd: $67
    inc a                                         ; $6abe: $3c
    inc b                                         ; $6abf: $04
    and $1c                                       ; $6ac0: $e6 $1c
    ld h, a                                       ; $6ac2: $67
    nop                                           ; $6ac3: $00
    ld a, h                                       ; $6ac4: $7c
    dec b                                         ; $6ac5: $05
    xor l                                         ; $6ac6: $ad
    nop                                           ; $6ac7: $00
    ld a, l                                       ; $6ac8: $7d
    dec b                                         ; $6ac9: $05
    nop                                           ; $6aca: $00

jr_0b9_6acb:
    jr nz, @+$7e                                  ; $6acb: $20 $7c

    dec b                                         ; $6acd: $05
    ld a, l                                       ; $6ace: $7d
    dec b                                         ; $6acf: $05
    ld a, l                                       ; $6ad0: $7d
    dec b                                         ; $6ad1: $05
    inc de                                        ; $6ad2: $13
    dec b                                         ; $6ad3: $05
    ld a, h                                       ; $6ad4: $7c
    dec b                                         ; $6ad5: $05
    dec c                                         ; $6ad6: $0d
    inc c                                         ; $6ad7: $0c
    add hl, hl                                    ; $6ad8: $29
    ld hl, $0421                                  ; $6ad9: $21 $21 $04
    push bc                                       ; $6adc: $c5
    inc d                                         ; $6add: $14
    adc c                                         ; $6ade: $89
    nop                                           ; $6adf: $00
    ld [$4121], sp                                ; $6ae0: $08 $21 $41
    inc b                                         ; $6ae3: $04
    inc a                                         ; $6ae4: $3c
    inc b                                         ; $6ae5: $04
    add $18                                       ; $6ae6: $c6 $18
    inc c                                         ; $6ae8: $0c
    inc c                                         ; $6ae9: $0c
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    or a                                          ; $6aec: $b7
    ld [$039f], sp                                ; $6aed: $08 $9f $03
    dec hl                                        ; $6af0: $2b
    ld [$0000], sp                                ; $6af1: $08 $00 $00
    ret                                           ; $6af4: $c9


    jr @+$54                                      ; $6af5: $18 $52

    db $10                                        ; $6af7: $10
    inc a                                         ; $6af8: $3c
    inc b                                         ; $6af9: $04
    ld [hl+], a                                   ; $6afa: $22
    nop                                           ; $6afb: $00
    ld e, e                                       ; $6afc: $5b
    dec b                                         ; $6afd: $05
    xor [hl]                                      ; $6afe: $ae
    nop                                           ; $6aff: $00
    and l                                         ; $6b00: $a5
    stop                                          ; $6b01: $10 $00
    jr nz, jr_0b9_6b80                            ; $6b03: $20 $7b

    dec b                                         ; $6b05: $05
    ld a, h                                       ; $6b06: $7c
    dec b                                         ; $6b07: $05
    and l                                         ; $6b08: $a5
    db $10                                        ; $6b09: $10
    ld a, e                                       ; $6b0a: $7b
    dec b                                         ; $6b0b: $05
    ld a, h                                       ; $6b0c: $7c
    dec b                                         ; $6b0d: $05
    add $18                                       ; $6b0e: $c6 $18
    inc c                                         ; $6b10: $0c
    inc c                                         ; $6b11: $0c

jr_0b9_6b12:
    ld hl, $7b04                                  ; $6b12: $21 $04 $7b
    dec b                                         ; $6b15: $05
    ld c, d                                       ; $6b16: $4a
    add hl, hl                                    ; $6b17: $29
    add $14                                       ; $6b18: $c6 $14
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    and l                                         ; $6b1c: $a5
    inc d                                         ; $6b1d: $14
    add hl, bc                                    ; $6b1e: $09
    ld hl, $0842                                  ; $6b1f: $21 $42 $08
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    inc a                                         ; $6b24: $3c
    inc b                                         ; $6b25: $04
    dec c                                         ; $6b26: $0d
    inc c                                         ; $6b27: $0c
    sbc a                                         ; $6b28: $9f
    inc bc                                        ; $6b29: $03
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    pop af                                        ; $6b2c: $f1
    add hl, bc                                    ; $6b2d: $09
    inc a                                         ; $6b2e: $3c
    inc b                                         ; $6b2f: $04
    ld b, h                                       ; $6b30: $44
    ld [$0023], sp                                ; $6b31: $08 $23 $00
    ld a, d                                       ; $6b34: $7a
    ld bc, $00ab                                  ; $6b35: $01 $ab $00
    and l                                         ; $6b38: $a5
    inc d                                         ; $6b39: $14
    nop                                           ; $6b3a: $00
    jr nz, @+$7c                                  ; $6b3b: $20 $7a

    ld bc, $057b                                  ; $6b3d: $01 $7b $05
    ld a, d                                       ; $6b40: $7a
    dec b                                         ; $6b41: $05
    ld a, c                                       ; $6b42: $79

jr_0b9_6b43:
    ld bc, $057a                                  ; $6b43: $01 $7a $05
    ld a, d                                       ; $6b46: $7a
    ld bc, $0842                                  ; $6b47: $01 $42 $08
    ld hl, $2904                                  ; $6b4a: $21 $04 $29
    dec h                                         ; $6b4d: $25
    adc $00                                       ; $6b4e: $ce $00
    add $18                                       ; $6b50: $c6 $18
    ld b, d                                       ; $6b52: $42
    ld [$14c6], sp                                ; $6b53: $08 $c6 $14
    rst $20                                       ; $6b56: $e7
    inc e                                         ; $6b57: $1c
    add sp, $1c                                   ; $6b58: $e8 $1c
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    dec c                                         ; $6b5c: $0d
    ld [$043c], sp                                ; $6b5d: $08 $3c $04
    add $14                                       ; $6b60: $c6 $14
    ld b, d                                       ; $6b62: $42
    inc b                                         ; $6b63: $04
    inc a                                         ; $6b64: $3c
    inc b                                         ; $6b65: $04
    inc c                                         ; $6b66: $0c
    ld [$039f], sp                                ; $6b67: $08 $9f $03
    ld hl, $7904                                  ; $6b6a: $21 $04 $79
    ld bc, $0069                                  ; $6b6d: $01 $69 $00
    add h                                         ; $6b70: $84
    stop                                          ; $6b71: $10 $00
    jr nz, @+$7b                                  ; $6b73: $20 $79

    ld bc, $017a                                  ; $6b75: $01 $7a $01
    ld a, d                                       ; $6b78: $7a
    dec b                                         ; $6b79: $05
    pop af                                        ; $6b7a: $f1
    nop                                           ; $6b7b: $00
    ld a, c                                       ; $6b7c: $79
    ld bc, $057b                                  ; $6b7d: $01 $7b $05

jr_0b9_6b80:
    add sp, $1c                                   ; $6b80: $e8 $1c
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    rst $20                                       ; $6b84: $e7
    jr jr_0b9_6bb0                                ; $6b85: $18 $29

    ld hl, $0863                                  ; $6b87: $21 $63 $08
    and l                                         ; $6b8a: $a5
    inc d                                         ; $6b8b: $14
    ld [$c71d], sp                                ; $6b8c: $08 $1d $c7
    jr @+$2b                                      ; $6b8f: $18 $29

    ld hl, $0421                                  ; $6b91: $21 $21 $04
    inc a                                         ; $6b94: $3c
    inc b                                         ; $6b95: $04
    rst $20                                       ; $6b96: $e7
    inc e                                         ; $6b97: $1c
    inc c                                         ; $6b98: $0c
    inc c                                         ; $6b99: $0c
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    sbc a                                         ; $6b9c: $9f
    inc bc                                        ; $6b9d: $03
    inc c                                         ; $6b9e: $0c
    inc c                                         ; $6b9f: $0c
    ld h, h                                       ; $6ba0: $64
    ld [$0001], sp                                ; $6ba1: $08 $01 $00
    ld d, a                                       ; $6ba4: $57
    ld bc, $1084                                  ; $6ba5: $01 $84 $10
    xor e                                         ; $6ba8: $ab
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    jr nz, jr_0b9_6c25                            ; $6bab: $20 $78

    ld bc, $0179                                  ; $6bad: $01 $79 $01

jr_0b9_6bb0:
    xor e                                         ; $6bb0: $ab
    nop                                           ; $6bb1: $00
    ld b, h                                       ; $6bb2: $44
    nop                                           ; $6bb3: $00
    ld a, b                                       ; $6bb4: $78
    ld bc, $0067                                  ; $6bb5: $01 $67 $00
    ld a, c                                       ; $6bb8: $79
    ld bc, $0421                                  ; $6bb9: $01 $21 $04
    rst $20                                       ; $6bbc: $e7
    jr jr_0b9_6b43                                ; $6bbd: $18 $84

    db $10                                        ; $6bbf: $10
    ld [$2121], sp                                ; $6bc0: $08 $21 $21
    inc b                                         ; $6bc3: $04
    rst $20                                       ; $6bc4: $e7
    jr @-$59                                      ; $6bc5: $18 $a5

    db $10                                        ; $6bc7: $10
    add hl, hl                                    ; $6bc8: $29
    dec h                                         ; $6bc9: $25
    ld bc, $a500                                  ; $6bca: $01 $00 $a5
    inc d                                         ; $6bcd: $14
    ld [$421d], sp                                ; $6bce: $08 $1d $42
    ld [$0000], sp                                ; $6bd1: $08 $00 $00
    ld d, e                                       ; $6bd4: $53
    add hl, bc                                    ; $6bd5: $09
    ld e, [hl]                                    ; $6bd6: $5e
    inc bc                                        ; $6bd7: $03
    dec c                                         ; $6bd8: $0d
    db $10                                        ; $6bd9: $10
    ld hl, $7800                                  ; $6bda: $21 $00 $78
    ld bc, $100d                                  ; $6bdd: $01 $0d $10
    add l                                         ; $6be0: $85
    inc c                                         ; $6be1: $0c
    nop                                           ; $6be2: $00
    jr nz, jr_0b9_6c5c                            ; $6be3: $20 $77

    ld bc, $0178                                  ; $6be5: $01 $78 $01
    add l                                         ; $6be8: $85
    inc c                                         ; $6be9: $0c
    jr nz, jr_0b9_6bec                            ; $6bea: $20 $00

jr_0b9_6bec:
    ld [de], a                                    ; $6bec: $12
    ld bc, $0177                                  ; $6bed: $01 $77 $01
    ld a, b                                       ; $6bf0: $78
    ld bc, $0842                                  ; $6bf1: $01 $42 $08
    rst $20                                       ; $6bf4: $e7

jr_0b9_6bf5:
    inc e                                         ; $6bf5: $1c
    and l                                         ; $6bf6: $a5
    inc d                                         ; $6bf7: $14
    add hl, hl                                    ; $6bf8: $29
    ld hl, $0421                                  ; $6bf9: $21 $21 $04
    rst $20                                       ; $6bfc: $e7
    jr @+$6d                                      ; $6bfd: $18 $6b

    add hl, hl                                    ; $6bff: $29
    add h                                         ; $6c00: $84
    stop                                          ; $6c01: $10 $00
    nop                                           ; $6c03: $00
    add $18                                       ; $6c04: $c6 $18
    ld l, e                                       ; $6c06: $6b
    add hl, hl                                    ; $6c07: $29
    ld [$4221], sp                                ; $6c08: $08 $21 $42
    ld [$035c], sp                                ; $6c0b: $08 $5c $03
    dec c                                         ; $6c0e: $0d
    db $10                                        ; $6c0f: $10
    ld d, b                                       ; $6c10: $50
    dec d                                         ; $6c11: $15
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    ld [hl], a                                    ; $6c14: $77
    ld bc, $1086                                  ; $6c15: $01 $86 $10
    add hl, sp                                    ; $6c18: $39
    rlca                                          ; $6c19: $07
    nop                                           ; $6c1a: $00
    jr nz, @+$78                                  ; $6c1b: $20 $76

    ld bc, $0177                                  ; $6c1d: $01 $77 $01
    add hl, sp                                    ; $6c20: $39
    rlca                                          ; $6c21: $07
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    halt                                          ; $6c24: $76

jr_0b9_6c25:
    ld bc, $0089                                  ; $6c25: $01 $89 $00
    xor h                                         ; $6c28: $ac
    nop                                           ; $6c29: $00
    ld h, e                                       ; $6c2a: $63
    inc c                                         ; $6c2b: $0c
    rst $20                                       ; $6c2c: $e7
    jr jr_0b9_6bf5                                ; $6c2d: $18 $c6

    inc d                                         ; $6c2f: $14
    ld [$2021], sp                                ; $6c30: $08 $21 $20
    nop                                           ; $6c33: $00
    ld [$841d], sp                                ; $6c34: $08 $1d $84
    db $10                                        ; $6c37: $10
    ld l, e                                       ; $6c38: $6b
    add hl, hl                                    ; $6c39: $29
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    ld [$6b1d], sp                                ; $6c3c: $08 $1d $6b
    add hl, hl                                    ; $6c3f: $29
    add h                                         ; $6c40: $84
    inc c                                         ; $6c41: $0c
    ld hl, $f604                                  ; $6c42: $21 $04 $f6
    dec c                                         ; $6c45: $0d
    ld c, a                                       ; $6c46: $4f
    inc c                                         ; $6c47: $0c
    rst $18                                       ; $6c48: $df
    inc bc                                        ; $6c49: $03
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    ld d, h                                       ; $6c4c: $54
    ld bc, $14c6                                  ; $6c4d: $01 $c6 $14
    inc l                                         ; $6c50: $2c
    ld [$2000], sp                                ; $6c51: $08 $00 $20
    ld d, l                                       ; $6c54: $55
    ld bc, $0176                                  ; $6c55: $01 $76 $01
    ld [hl], l                                    ; $6c58: $75
    ld bc, $0422                                  ; $6c59: $01 $22 $04

jr_0b9_6c5c:
    ld d, l                                       ; $6c5c: $55
    ld bc, $0863                                  ; $6c5d: $01 $63 $08
    ld b, h                                       ; $6c60: $44
    inc b                                         ; $6c61: $04
    add h                                         ; $6c62: $84
    db $10                                        ; $6c63: $10
    rst $20                                       ; $6c64: $e7
    jr jr_0b9_6c6f                                ; $6c65: $18 $08

    dec e                                         ; $6c67: $1d
    add hl, hl                                    ; $6c68: $29
    ld hl, $0000                                  ; $6c69: $21 $00 $00
    rst $20                                       ; $6c6c: $e7
    inc e                                         ; $6c6d: $1c
    and h                                         ; $6c6e: $a4

jr_0b9_6c6f:
    db $10                                        ; $6c6f: $10
    ld c, d                                       ; $6c70: $4a
    add hl, hl                                    ; $6c71: $29
    and l                                         ; $6c72: $a5
    inc d                                         ; $6c73: $14
    add hl, hl                                    ; $6c74: $29
    ld hl, $296b                                  ; $6c75: $21 $6b $29
    rst $20                                       ; $6c78: $e7
    jr jr_0b9_6cde                                ; $6c79: $18 $63

    inc c                                         ; $6c7b: $0c

jr_0b9_6c7c:
    inc de                                        ; $6c7c: $13
    add hl, bc                                    ; $6c7d: $09
    dec c                                         ; $6c7e: $0d
    db $10                                        ; $6c7f: $10
    ld a, [hl]                                    ; $6c80: $7e
    inc bc                                        ; $6c81: $03
    ld [hl+], a                                   ; $6c82: $22
    inc b                                         ; $6c83: $04
    ld d, h                                       ; $6c84: $54
    ld bc, $14c6                                  ; $6c85: $01 $c6 $14
    dec c                                         ; $6c88: $0d
    stop                                          ; $6c89: $10 $00
    jr nz, jr_0b9_6ce1                            ; $6c8b: $20 $54

    ld bc, $0155                                  ; $6c8d: $01 $55 $01
    dec c                                         ; $6c90: $0d
    db $10                                        ; $6c91: $10
    ld hl, $1004                                  ; $6c92: $21 $04 $10
    ld bc, $0154                                  ; $6c95: $01 $54 $01
    ld h, e                                       ; $6c98: $63
    inc c                                         ; $6c99: $0c
    and l                                         ; $6c9a: $a5
    db $10                                        ; $6c9b: $10
    ld [$c61d], sp                                ; $6c9c: $08 $1d $c6
    jr jr_0b9_6caa                                ; $6c9f: $18 $09

    ld hl, $0000                                  ; $6ca1: $21 $00 $00
    and $18                                       ; $6ca4: $e6 $18
    ld c, d                                       ; $6ca6: $4a
    dec h                                         ; $6ca7: $25
    ld h, e                                       ; $6ca8: $63
    inc c                                         ; $6ca9: $0c

jr_0b9_6caa:
    and l                                         ; $6caa: $a5
    inc d                                         ; $6cab: $14
    add hl, hl                                    ; $6cac: $29
    ld hl, $296b                                  ; $6cad: $21 $6b $29
    rst $20                                       ; $6cb0: $e7
    jr jr_0b9_6cb3                                ; $6cb1: $18 $00

jr_0b9_6cb3:
    nop                                           ; $6cb3: $00
    add $14                                       ; $6cb4: $c6 $14
    add h                                         ; $6cb6: $84
    inc c                                         ; $6cb7: $0c
    rst $20                                       ; $6cb8: $e7
    jr jr_0b9_6cbb                                ; $6cb9: $18 $00

jr_0b9_6cbb:
    nop                                           ; $6cbb: $00
    ld d, e                                       ; $6cbc: $53
    ld bc, $0c83                                  ; $6cbd: $01 $83 $0c
    push bc                                       ; $6cc0: $c5
    inc d                                         ; $6cc1: $14
    nop                                           ; $6cc2: $00
    jr nz, @+$55                                  ; $6cc3: $20 $53

    ld bc, $0154                                  ; $6cc5: $01 $54 $01
    push bc                                       ; $6cc8: $c5
    inc d                                         ; $6cc9: $14
    ld hl, $5304                                  ; $6cca: $21 $04 $53
    ld bc, $00cb                                  ; $6ccd: $01 $cb $00
    ld h, h                                       ; $6cd0: $64
    ld [$0c63], sp                                ; $6cd1: $08 $63 $0c
    rst $20                                       ; $6cd4: $e7
    jr jr_0b9_6c7c                                ; $6cd5: $18 $a5

    db $10                                        ; $6cd7: $10
    add sp, $1c                                   ; $6cd8: $e8 $1c
    ld hl, $e704                                  ; $6cda: $21 $04 $e7
    inc e                                         ; $6cdd: $1c

jr_0b9_6cde:
    and h                                         ; $6cde: $a4
    db $10                                        ; $6cdf: $10
    ld c, d                                       ; $6ce0: $4a

jr_0b9_6ce1:
    dec h                                         ; $6ce1: $25
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    ld [$6b21], sp                                ; $6ce4: $08 $21 $6b
    add hl, hl                                    ; $6ce7: $29
    and l                                         ; $6ce8: $a5
    stop                                          ; $6ce9: $10 $00
    nop                                           ; $6ceb: $00
    add h                                         ; $6cec: $84
    inc c                                         ; $6ced: $0c
    add $14                                       ; $6cee: $c6 $14
    and $18                                       ; $6cf0: $e6 $18
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    ld d, d                                       ; $6cf4: $52
    ld bc, $0c63                                  ; $6cf5: $01 $63 $0c
    and l                                         ; $6cf8: $a5
    inc d                                         ; $6cf9: $14
    nop                                           ; $6cfa: $00
    jr nz, @+$54                                  ; $6cfb: $20 $52

    ld bc, $0153                                  ; $6cfd: $01 $53 $01
    and l                                         ; $6d00: $a5
    inc d                                         ; $6d01: $14
    ld hl, $5204                                  ; $6d02: $21 $04 $52
    ld bc, $00aa                                  ; $6d05: $01 $aa $00
    ld h, e                                       ; $6d08: $63
    inc c                                         ; $6d09: $0c
    ld hl, $8404                                  ; $6d0a: $21 $04 $84
    db $10                                        ; $6d0d: $10
    add $14                                       ; $6d0e: $c6 $14
    and $18                                       ; $6d10: $e6 $18
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    add $14                                       ; $6d14: $c6 $14
    ld [$621d], sp                                ; $6d16: $08 $1d $62
    ld [$0000], sp                                ; $6d19: $08 $00 $00
    rst $20                                       ; $6d1c: $e7
    jr @+$2b                                      ; $6d1d: $18 $29

    ld hl, $2d8c                                  ; $6d1f: $21 $8c $2d
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    and l                                         ; $6d24: $a5
    inc d                                         ; $6d25: $14
    adc h                                         ; $6d26: $8c
    dec l                                         ; $6d27: $2d
    ld h, e                                       ; $6d28: $63
    inc c                                         ; $6d29: $0c
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    ld d, d                                       ; $6d2c: $52
    ld bc, $0c63                                  ; $6d2d: $01 $63 $0c
    and l                                         ; $6d30: $a5

jr_0b9_6d31:
    inc d                                         ; $6d31: $14
    nop                                           ; $6d32: $00
    jr nz, jr_0b9_6d87                            ; $6d33: $20 $52

    ld bc, $0c63                                  ; $6d35: $01 $63 $0c
    and l                                         ; $6d38: $a5

jr_0b9_6d39:
    inc d                                         ; $6d39: $14
    nop                                           ; $6d3a: $00
    jr nz, jr_0b9_6d31                            ; $6d3b: $20 $f4

    ld d, e                                       ; $6d3d: $53
    ld hl, $e704                                  ; $6d3e: $21 $04 $e7

jr_0b9_6d41:
    inc e                                         ; $6d41: $1c
    nop                                           ; $6d42: $00
    jr nz, jr_0b9_6d39                            ; $6d43: $20 $f4

    ld d, e                                       ; $6d45: $53
    ld hl, $e704                                  ; $6d46: $21 $04 $e7
    inc e                                         ; $6d49: $1c
    nop                                           ; $6d4a: $00
    jr nz, jr_0b9_6d41                            ; $6d4b: $20 $f4

    ld d, e                                       ; $6d4d: $53
    ld hl, $e704                                  ; $6d4e: $21 $04 $e7
    inc e                                         ; $6d51: $1c
    db $f4                                        ; $6d52: $f4
    ld d, e                                       ; $6d53: $53
    pop de                                        ; $6d54: $d1
    ld b, e                                       ; $6d55: $43
    pop de                                        ; $6d56: $d1
    ld b, a                                       ; $6d57: $47
    jp nc, $f447                                  ; $6d58: $d2 $47 $f4

    ld d, e                                       ; $6d5b: $53
    pop de                                        ; $6d5c: $d1
    ld b, e                                       ; $6d5d: $43
    pop de                                        ; $6d5e: $d1
    ld b, a                                       ; $6d5f: $47
    jp nc, $f447                                  ; $6d60: $d2 $47 $f4

    ld d, e                                       ; $6d63: $53
    pop de                                        ; $6d64: $d1
    ld b, e                                       ; $6d65: $43
    pop de                                        ; $6d66: $d1
    ld b, a                                       ; $6d67: $47
    jp nc, $0047                                  ; $6d68: $d2 $47 $00

    jr nz, @-$0a                                  ; $6d6b: $20 $f4

    ld d, e                                       ; $6d6d: $53
    pop de                                        ; $6d6e: $d1
    ld b, a                                       ; $6d6f: $47
    jp nc, $f447                                  ; $6d70: $d2 $47 $f4

    ld c, a                                       ; $6d73: $4f
    db $f4                                        ; $6d74: $f4
    ld d, e                                       ; $6d75: $53
    ld hl, $e704                                  ; $6d76: $21 $04 $e7
    inc e                                         ; $6d79: $1c
    db $f4                                        ; $6d7a: $f4
    ld c, a                                       ; $6d7b: $4f
    db $f4                                        ; $6d7c: $f4
    ld d, e                                       ; $6d7d: $53
    ld hl, $e704                                  ; $6d7e: $21 $04 $e7
    inc e                                         ; $6d81: $1c
    adc e                                         ; $6d82: $8b
    ld [$4ff4], sp                                ; $6d83: $08 $f4 $4f
    db $f4                                        ; $6d86: $f4

jr_0b9_6d87:
    ld d, e                                       ; $6d87: $53
    rst $20                                       ; $6d88: $e7
    inc e                                         ; $6d89: $1c
    adc e                                         ; $6d8a: $8b
    ld [$4ff4], sp                                ; $6d8b: $08 $f4 $4f
    db $f4                                        ; $6d8e: $f4
    ld d, e                                       ; $6d8f: $53
    jp nc, $f447                                  ; $6d90: $d2 $47 $f4

    ld hl, $4ff4                                  ; $6d93: $21 $f4 $4f
    or h                                          ; $6d96: $b4
    ld [hl-], a                                   ; $6d97: $32

jr_0b9_6d98:
    db $f4                                        ; $6d98: $f4
    ld d, e                                       ; $6d99: $53
    adc e                                         ; $6d9a: $8b
    ld [$32b4], sp                                ; $6d9b: $08 $b4 $32
    db $f4                                        ; $6d9e: $f4
    ld hl, $4ff4                                  ; $6d9f: $21 $f4 $4f
    nop                                           ; $6da2: $00
    jr nz, jr_0b9_6d98                            ; $6da3: $20 $f3

    ld c, a                                       ; $6da5: $4f
    db $f4                                        ; $6da6: $f4
    ld d, e                                       ; $6da7: $53
    db $f4                                        ; $6da8: $f4
    ld c, a                                       ; $6da9: $4f
    di                                            ; $6daa: $f3
    ld c, e                                       ; $6dab: $4b
    di                                            ; $6dac: $f3
    ld c, a                                       ; $6dad: $4f
    db $f4                                        ; $6dae: $f4

jr_0b9_6daf:
    ld c, a                                       ; $6daf: $4f
    rst $20                                       ; $6db0: $e7
    inc e                                         ; $6db1: $1c
    di                                            ; $6db2: $f3
    ld c, e                                       ; $6db3: $4b
    di                                            ; $6db4: $f3
    ld c, a                                       ; $6db5: $4f
    db $f4                                        ; $6db6: $f4
    ld c, a                                       ; $6db7: $4f
    rst $20                                       ; $6db8: $e7
    inc e                                         ; $6db9: $1c
    xor h                                         ; $6dba: $ac
    inc c                                         ; $6dbb: $0c
    di                                            ; $6dbc: $f3
    ld c, e                                       ; $6dbd: $4b
    rra                                           ; $6dbe: $1f
    ld d, a                                       ; $6dbf: $57
    cp a                                          ; $6dc0: $bf
    ld l, e                                       ; $6dc1: $6b
    adc e                                         ; $6dc2: $8b
    ld [$25d3], sp                                ; $6dc3: $08 $d3 $25
    rra                                           ; $6dc6: $1f
    ld d, a                                       ; $6dc7: $57
    or h                                          ; $6dc8: $b4
    ld [hl-], a                                   ; $6dc9: $32
    adc e                                         ; $6dca: $8b
    ld [$4bd2], sp                                ; $6dcb: $08 $d2 $4b
    db $f4                                        ; $6dce: $f4
    ld hl, $32b4                                  ; $6dcf: $21 $b4 $32
    jp nc, $b44b                                  ; $6dd2: $d2 $4b $b4

    ld [hl-], a                                   ; $6dd5: $32
    ld a, [c]                                     ; $6dd6: $f2
    ld c, e                                       ; $6dd7: $4b
    di                                            ; $6dd8: $f3
    ld c, e                                       ; $6dd9: $4b
    nop                                           ; $6dda: $00
    jr nz, jr_0b9_6daf                            ; $6ddb: $20 $d2

    ld c, e                                       ; $6ddd: $4b
    di                                            ; $6dde: $f3
    ld c, e                                       ; $6ddf: $4b
    di                                            ; $6de0: $f3
    ld c, e                                       ; $6de1: $4b
    jp nc, $d247                                  ; $6de2: $d2 $47 $d2

    ld c, e                                       ; $6de5: $4b

jr_0b9_6de6:
    rra                                           ; $6de6: $1f
    ld d, a                                       ; $6de7: $57
    cp a                                          ; $6de8: $bf
    ld l, e                                       ; $6de9: $6b
    adc e                                         ; $6dea: $8b
    ld [$43d1], sp                                ; $6deb: $08 $d1 $43
    or h                                          ; $6dee: $b4
    ld [hl-], a                                   ; $6def: $32
    jp nc, $8847                                  ; $6df0: $d2 $47 $88

    ld [$3e36], sp                                ; $6df3: $08 $36 $3e
    rra                                           ; $6df6: $1f
    ld d, a                                       ; $6df7: $57
    ld l, $1d                                     ; $6df8: $2e $1d
    xor d                                         ; $6dfa: $aa
    db $10                                        ; $6dfb: $10

jr_0b9_6dfc:
    ld [hl], c                                    ; $6dfc: $71
    ccf                                           ; $6dfd: $3f
    ld e, a                                       ; $6dfe: $5f
    ld e, e                                       ; $6dff: $5b
    sub e                                         ; $6e00: $93
    add hl, hl                                    ; $6e01: $29
    pop de                                        ; $6e02: $d1
    ld b, e                                       ; $6e03: $43
    pop de                                        ; $6e04: $d1
    ld b, a                                       ; $6e05: $47
    jp nc, $9347                                  ; $6e06: $d2 $47 $93

    add hl, hl                                    ; $6e09: $29
    pop de                                        ; $6e0a: $d1
    ld b, e                                       ; $6e0b: $43
    pop de                                        ; $6e0c: $d1
    ld b, a                                       ; $6e0d: $47
    jp nc, $9347                                  ; $6e0e: $d2 $47 $93

    add hl, hl                                    ; $6e11: $29
    nop                                           ; $6e12: $00

jr_0b9_6e13:
    jr nz, jr_0b9_6de6                            ; $6e13: $20 $d1

    ld b, e                                       ; $6e15: $43
    pop de                                        ; $6e16: $d1
    ld b, a                                       ; $6e17: $47
    jp nc, $b047                                  ; $6e18: $d2 $47 $b0

    ccf                                           ; $6e1b: $3f
    pop de                                        ; $6e1c: $d1
    ld b, e                                       ; $6e1d: $43
    rra                                           ; $6e1e: $1f
    ld d, a                                       ; $6e1f: $57
    ld l, $1d                                     ; $6e20: $2e $1d
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    or b                                          ; $6e24: $b0
    ccf                                           ; $6e25: $3f
    inc [hl]                                      ; $6e26: $34
    ld h, $6a                                     ; $6e27: $26 $6a
    inc b                                         ; $6e29: $04
    inc hl                                        ; $6e2a: $23
    nop                                           ; $6e2b: $00
    db $d3                                        ; $6e2c: $d3
    dec l                                         ; $6e2d: $2d
    db $fd                                        ; $6e2e: $fd
    ld d, d                                       ; $6e2f: $52
    db $eb                                        ; $6e30: $eb
    inc d                                         ; $6e31: $14
    adc e                                         ; $6e32: $8b
    ld [$3faf], sp                                ; $6e33: $08 $af $3f
    sub h                                         ; $6e36: $94
    dec l                                         ; $6e37: $2d
    adc $10                                       ; $6e38: $ce $10
    xor a                                         ; $6e3a: $af
    dec sp                                        ; $6e3b: $3b
    or b                                          ; $6e3c: $b0
    ccf                                           ; $6e3d: $3f
    xor a                                         ; $6e3e: $af
    ccf                                           ; $6e3f: $3f
    adc $10                                       ; $6e40: $ce $10
    xor a                                         ; $6e42: $af
    dec sp                                        ; $6e43: $3b
    or b                                          ; $6e44: $b0
    ccf                                           ; $6e45: $3f
    xor a                                         ; $6e46: $af
    ccf                                           ; $6e47: $3f
    adc $10                                       ; $6e48: $ce $10
    nop                                           ; $6e4a: $00
    jr nz, jr_0b9_6dfc                            ; $6e4b: $20 $af

    dec sp                                        ; $6e4d: $3b
    or b                                          ; $6e4e: $b0
    ccf                                           ; $6e4f: $3f
    xor a                                         ; $6e50: $af
    ccf                                           ; $6e51: $3f
    xor [hl]                                      ; $6e52: $ae
    dec sp                                        ; $6e53: $3b
    xor a                                         ; $6e54: $af
    ccf                                           ; $6e55: $3f
    db $fd                                        ; $6e56: $fd
    ld d, d                                       ; $6e57: $52
    db $eb                                        ; $6e58: $eb
    inc d                                         ; $6e59: $14
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    xor [hl]                                      ; $6e5c: $ae
    dec sp                                        ; $6e5d: $3b
    ld e, b                                       ; $6e5e: $58
    ld b, d                                       ; $6e5f: $42
    ld l, d                                       ; $6e60: $6a
    inc b                                         ; $6e61: $04
    ld l, b                                       ; $6e62: $68
    inc b                                         ; $6e63: $04
    ld sp, hl                                     ; $6e64: $f9
    dec [hl]                                      ; $6e65: $35
    rst $38                                       ; $6e66: $ff
    ld d, d                                       ; $6e67: $52
    rst $28                                       ; $6e68: $ef
    inc d                                         ; $6e69: $14
    adc e                                         ; $6e6a: $8b
    ld [$378e], sp                                ; $6e6b: $08 $8e $37
    xor [hl]                                      ; $6e6e: $ae
    dec sp                                        ; $6e6f: $3b
    xor a                                         ; $6e70: $af
    ccf                                           ; $6e71: $3f
    adc [hl]                                      ; $6e72: $8e
    scf                                           ; $6e73: $37
    xor [hl]                                      ; $6e74: $ae
    dec sp                                        ; $6e75: $3b
    xor [hl]                                      ; $6e76: $ae
    dec sp                                        ; $6e77: $3b
    xor a                                         ; $6e78: $af
    ccf                                           ; $6e79: $3f
    adc [hl]                                      ; $6e7a: $8e
    scf                                           ; $6e7b: $37
    xor [hl]                                      ; $6e7c: $ae
    dec sp                                        ; $6e7d: $3b
    xor [hl]                                      ; $6e7e: $ae
    dec sp                                        ; $6e7f: $3b
    xor a                                         ; $6e80: $af
    ccf                                           ; $6e81: $3f
    nop                                           ; $6e82: $00
    jr nz, jr_0b9_6e13                            ; $6e83: $20 $8e

    scf                                           ; $6e85: $37
    xor [hl]                                      ; $6e86: $ae
    dec sp                                        ; $6e87: $3b
    xor a                                         ; $6e88: $af
    ccf                                           ; $6e89: $3f
    adc l                                         ; $6e8a: $8d
    inc sp                                        ; $6e8b: $33
    adc [hl]                                      ; $6e8c: $8e
    scf                                           ; $6e8d: $37
    rst $38                                       ; $6e8e: $ff
    ld d, d                                       ; $6e8f: $52
    rst $28                                       ; $6e90: $ef
    inc d                                         ; $6e91: $14
    add l                                         ; $6e92: $85
    inc c                                         ; $6e93: $0c
    adc l                                         ; $6e94: $8d
    inc sp                                        ; $6e95: $33
    ld a, h                                       ; $6e96: $7c
    ld b, d                                       ; $6e97: $42
    ld l, e                                       ; $6e98: $6b
    dec l                                         ; $6e99: $2d
    adc e                                         ; $6e9a: $8b
    ld [$338d], sp                                ; $6e9b: $08 $8d $33
    ld hl, sp+$35                                 ; $6e9e: $f8 $35
    rra                                           ; $6ea0: $1f
    ld d, a                                       ; $6ea1: $57
    adc h                                         ; $6ea2: $8c
    cpl                                           ; $6ea3: $2f
    adc l                                         ; $6ea4: $8d
    inc sp                                        ; $6ea5: $33
    adc h                                         ; $6ea6: $8c
    inc sp                                        ; $6ea7: $33
    xor a                                         ; $6ea8: $af
    ccf                                           ; $6ea9: $3f
    adc h                                         ; $6eaa: $8c
    cpl                                           ; $6eab: $2f
    adc l                                         ; $6eac: $8d
    inc sp                                        ; $6ead: $33
    adc h                                         ; $6eae: $8c
    inc sp                                        ; $6eaf: $33
    xor a                                         ; $6eb0: $af
    ccf                                           ; $6eb1: $3f
    adc h                                         ; $6eb2: $8c
    cpl                                           ; $6eb3: $2f
    adc l                                         ; $6eb4: $8d
    inc sp                                        ; $6eb5: $33
    adc h                                         ; $6eb6: $8c
    inc sp                                        ; $6eb7: $33
    xor a                                         ; $6eb8: $af
    ccf                                           ; $6eb9: $3f
    nop                                           ; $6eba: $00
    jr nz, @-$72                                  ; $6ebb: $20 $8c

    cpl                                           ; $6ebd: $2f
    adc l                                         ; $6ebe: $8d
    inc sp                                        ; $6ebf: $33
    adc h                                         ; $6ec0: $8c
    inc sp                                        ; $6ec1: $33
    ld l, e                                       ; $6ec2: $6b
    cpl                                           ; $6ec3: $2f
    adc h                                         ; $6ec4: $8c
    cpl                                           ; $6ec5: $2f
    adc h                                         ; $6ec6: $8c
    inc sp                                        ; $6ec7: $33
    rra                                           ; $6ec8: $1f
    ld d, a                                       ; $6ec9: $57
    add h                                         ; $6eca: $84
    db $10                                        ; $6ecb: $10
    ld l, e                                       ; $6ecc: $6b
    cpl                                           ; $6ecd: $2f
    add hl, sp                                    ; $6ece: $39
    ld h, a                                       ; $6ecf: $67
    ld l, e                                       ; $6ed0: $6b
    dec l                                         ; $6ed1: $2d
    add h                                         ; $6ed2: $84
    db $10                                        ; $6ed3: $10
    ld l, e                                       ; $6ed4: $6b
    cpl                                           ; $6ed5: $2f
    ld sp, hl                                     ; $6ed6: $f9
    dec [hl]                                      ; $6ed7: $35
    call $0110                                    ; $6ed8: $cd $10 $01
    nop                                           ; $6edb: $00
    ld l, e                                       ; $6edc: $6b
    dec hl                                        ; $6edd: $2b
    ld l, e                                       ; $6ede: $6b
    cpl                                           ; $6edf: $2f
    adc h                                         ; $6ee0: $8c
    inc sp                                        ; $6ee1: $33
    nop                                           ; $6ee2: $00
    nop                                           ; $6ee3: $00
    ld l, e                                       ; $6ee4: $6b
    dec hl                                        ; $6ee5: $2b
    ld l, e                                       ; $6ee6: $6b
    cpl                                           ; $6ee7: $2f
    ld bc, $6b00                                  ; $6ee8: $01 $00 $6b
    dec hl                                        ; $6eeb: $2b
    ld l, e                                       ; $6eec: $6b
    cpl                                           ; $6eed: $2f
    ld l, e                                       ; $6eee: $6b

jr_0b9_6eef:
    cpl                                           ; $6eef: $2f
    ld bc, $0000                                  ; $6ef0: $01 $00 $00
    jr nz, jr_0b9_6f60                            ; $6ef3: $20 $6b

    dec hl                                        ; $6ef5: $2b
    ld l, e                                       ; $6ef6: $6b
    cpl                                           ; $6ef7: $2f
    ld bc, $6a00                                  ; $6ef8: $01 $00 $6a
    daa                                           ; $6efb: $27
    ld l, e                                       ; $6efc: $6b
    dec hl                                        ; $6efd: $2b
    ld sp, hl                                     ; $6efe: $f9
    dec [hl]                                      ; $6eff: $35
    call Call_0b9_4210                            ; $6f00: $cd $10 $42
    ld [$2d6b], sp                                ; $6f03: $08 $6b $2d
    ld l, d                                       ; $6f06: $6a
    daa                                           ; $6f07: $27
    sub $5a                                       ; $6f08: $d6 $5a
    add h                                         ; $6f0a: $84
    db $10                                        ; $6f0b: $10
    ld l, d                                       ; $6f0c: $6a
    daa                                           ; $6f0d: $27
    ld l, e                                       ; $6f0e: $6b
    dec l                                         ; $6f0f: $2d
    ld l, e                                       ; $6f10: $6b
    dec hl                                        ; $6f11: $2b
    ld bc, $6900                                  ; $6f12: $01 $00 $69
    inc hl                                        ; $6f15: $23
    dec c                                         ; $6f16: $0d
    add hl, de                                    ; $6f17: $19
    ld h, l                                       ; $6f18: $65
    ld [$0001], sp                                ; $6f19: $08 $01 $00
    xor b                                         ; $6f1c: $a8
    inc c                                         ; $6f1d: $0c
    dec c                                         ; $6f1e: $0d
    add hl, de                                    ; $6f1f: $19
    ld b, l                                       ; $6f20: $45
    ld [$0000], sp                                ; $6f21: $08 $00 $00
    ld l, c                                       ; $6f24: $69
    inc hl                                        ; $6f25: $23
    ld h, l                                       ; $6f26: $65
    ld [$276a], sp                                ; $6f27: $08 $6a $27
    nop                                           ; $6f2a: $00
    jr nz, jr_0b9_6f96                            ; $6f2b: $20 $69

    inc hl                                        ; $6f2d: $23
    ld l, d                                       ; $6f2e: $6a
    daa                                           ; $6f2f: $27
    ld l, d                                       ; $6f30: $6a
    daa                                           ; $6f31: $27
    add h                                         ; $6f32: $84
    db $10                                        ; $6f33: $10
    ld c, b                                       ; $6f34: $48
    inc hl                                        ; $6f35: $23
    ld l, c                                       ; $6f36: $69
    inc hl                                        ; $6f37: $23
    ld l, e                                       ; $6f38: $6b
    dec hl                                        ; $6f39: $2b
    ld b, d                                       ; $6f3a: $42
    ld [$5ad6], sp                                ; $6f3b: $08 $d6 $5a
    ld l, e                                       ; $6f3e: $6b
    dec l                                         ; $6f3f: $2d
    ld a, e                                       ; $6f40: $7b
    ld l, a                                       ; $6f41: $6f
    add h                                         ; $6f42: $84
    db $10                                        ; $6f43: $10
    ld c, b                                       ; $6f44: $48
    inc hl                                        ; $6f45: $23
    ld l, c                                       ; $6f46: $69
    inc hl                                        ; $6f47: $23
    ld a, e                                       ; $6f48: $7b
    ld l, a                                       ; $6f49: $6f
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    ld c, $19                                     ; $6f4c: $0e $19
    add a                                         ; $6f4e: $87
    inc c                                         ; $6f4f: $0c
    or [hl]                                       ; $6f50: $b6
    add hl, hl                                    ; $6f51: $29
    ld b, h                                       ; $6f52: $44
    inc b                                         ; $6f53: $04
    jp z, $5014                                   ; $6f54: $ca $14 $50

    ld hl, $0c87                                  ; $6f57: $21 $87 $0c
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    ld c, b                                       ; $6f5c: $48
    rra                                           ; $6f5d: $1f
    xor b                                         ; $6f5e: $a8
    inc d                                         ; $6f5f: $14

jr_0b9_6f60:
    db $ec                                        ; $6f60: $ec
    jr jr_0b9_6f63                                ; $6f61: $18 $00

jr_0b9_6f63:
    jr nz, @+$4a                                  ; $6f63: $20 $48

    rra                                           ; $6f65: $1f
    ld c, b                                       ; $6f66: $48
    inc hl                                        ; $6f67: $23
    db $ec                                        ; $6f68: $ec
    jr jr_0b9_6eef                                ; $6f69: $18 $84

    db $10                                        ; $6f6b: $10
    ld b, a                                       ; $6f6c: $47
    dec de                                        ; $6f6d: $1b
    ld l, e                                       ; $6f6e: $6b
    dec l                                         ; $6f6f: $2d
    ld c, b                                       ; $6f70: $48
    rra                                           ; $6f71: $1f
    ld b, d                                       ; $6f72: $42
    ld [$5ad6], sp                                ; $6f73: $08 $d6 $5a
    ld l, e                                       ; $6f76: $6b
    dec l                                         ; $6f77: $2d
    ld a, e                                       ; $6f78: $7b
    ld l, a                                       ; $6f79: $6f
    ld bc, $4700                                  ; $6f7a: $01 $00 $47
    dec de                                        ; $6f7d: $1b
    db $ec                                        ; $6f7e: $ec
    inc d                                         ; $6f7f: $14
    ld c, b                                       ; $6f80: $48
    rra                                           ; $6f81: $1f
    ld b, e                                       ; $6f82: $43
    inc b                                         ; $6f83: $04
    ld [hl], e                                    ; $6f84: $73
    dec h                                         ; $6f85: $25
    add a                                         ; $6f86: $87
    inc c                                         ; $6f87: $0c
    db $eb                                        ; $6f88: $eb
    inc d                                         ; $6f89: $14
    ld b, e                                       ; $6f8a: $43
    inc b                                         ; $6f8b: $04
    ld c, $19                                     ; $6f8c: $0e $19
    xor c                                         ; $6f8e: $a9
    db $10                                        ; $6f8f: $10
    ld [hl], d                                    ; $6f90: $72
    ld hl, $0001                                  ; $6f91: $21 $01 $00
    ld h, $17                                     ; $6f94: $26 $17

jr_0b9_6f96:
    ld d, d                                       ; $6f96: $52
    ld hl, $10a8                                  ; $6f97: $21 $a8 $10
    nop                                           ; $6f9a: $00
    jr nz, @+$28                                  ; $6f9b: $20 $26

    rla                                           ; $6f9d: $17
    ld b, a                                       ; $6f9e: $47
    dec de                                        ; $6f9f: $1b
    xor b                                         ; $6fa0: $a8
    db $10                                        ; $6fa1: $10
    add h                                         ; $6fa2: $84
    db $10                                        ; $6fa3: $10
    ld h, $17                                     ; $6fa4: $26 $17
    ld l, e                                       ; $6fa6: $6b
    dec l                                         ; $6fa7: $2d
    ld c, b                                       ; $6fa8: $48
    rra                                           ; $6fa9: $1f
    ld b, a                                       ; $6faa: $47
    ld [$5ad6], sp                                ; $6fab: $08 $d6 $5a
    ld l, e                                       ; $6fae: $6b
    dec l                                         ; $6faf: $2d
    ld a, e                                       ; $6fb0: $7b
    ld l, a                                       ; $6fb1: $6f
    ld [hl+], a                                   ; $6fb2: $22
    inc b                                         ; $6fb3: $04
    ld h, $17                                     ; $6fb4: $26 $17
    db $ec                                        ; $6fb6: $ec
    inc d                                         ; $6fb7: $14
    ld [hl], $1d                                  ; $6fb8: $36 $1d
    ld hl, $0e00                                  ; $6fba: $21 $00 $0e
    add hl, de                                    ; $6fbd: $19
    or [hl]                                       ; $6fbe: $b6
    add hl, hl                                    ; $6fbf: $29
    ld h, [hl]                                    ; $6fc0: $66
    ld [$0001], sp                                ; $6fc1: $08 $01 $00
    ld d, b                                       ; $6fc4: $50
    dec e                                         ; $6fc5: $1d
    ld b, a                                       ; $6fc6: $47
    ld [$29b6], sp                                ; $6fc7: $08 $b6 $29
    ld [hl+], a                                   ; $6fca: $22
    inc b                                         ; $6fcb: $04
    dec h                                         ; $6fcc: $25
    inc de                                        ; $6fcd: $13
    xor c                                         ; $6fce: $a9
    db $10                                        ; $6fcf: $10
    ld d, c                                       ; $6fd0: $51
    dec h                                         ; $6fd1: $25
    nop                                           ; $6fd2: $00
    jr nz, @+$27                                  ; $6fd3: $20 $25

    inc de                                        ; $6fd5: $13
    ld h, $17                                     ; $6fd6: $26 $17
    ld d, c                                       ; $6fd8: $51
    dec h                                         ; $6fd9: $25
    add h                                         ; $6fda: $84
    db $10                                        ; $6fdb: $10
    dec b                                         ; $6fdc: $05
    inc de                                        ; $6fdd: $13
    sub $5a                                       ; $6fde: $d6 $5a
    ld l, e                                       ; $6fe0: $6b
    dec l                                         ; $6fe1: $2d
    ld b, d                                       ; $6fe2: $42
    ld [$5ad6], sp                                ; $6fe3: $08 $d6 $5a
    ld l, e                                       ; $6fe6: $6b
    dec l                                         ; $6fe7: $2d
    ld a, e                                       ; $6fe8: $7b
    ld l, a                                       ; $6fe9: $6f
    ld hl, $0504                                  ; $6fea: $21 $04 $05
    inc de                                        ; $6fed: $13
    ld d, [hl]                                    ; $6fee: $56
    db $10                                        ; $6fef: $10
    ld h, a                                       ; $6ff0: $67
    inc c                                         ; $6ff1: $0c
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    or [hl]                                       ; $6ff4: $b6
    add hl, hl                                    ; $6ff5: $29
    add [hl]                                      ; $6ff6: $86
    inc c                                         ; $6ff7: $0c
    jp z, Jump_000_0014                           ; $6ff8: $ca $14 $00

    nop                                           ; $6ffb: $00
    ld [hl], l                                    ; $6ffc: $75
    dec h                                         ; $6ffd: $25
    rst $18                                       ; $6ffe: $df
    ld d, d                                       ; $6fff: $52
    ld l, c                                       ; $7000: $69
    ld [$0000], sp                                ; $7001: $08 $00 $00
    inc b                                         ; $7004: $04
    rrca                                          ; $7005: $0f
    xor c                                         ; $7006: $a9
    db $10                                        ; $7007: $10
    cpl                                           ; $7008: $2f
    dec e                                         ; $7009: $1d
    nop                                           ; $700a: $00
    jr nz, jr_0b9_7011                            ; $700b: $20 $04

    rrca                                          ; $700d: $0f
    dec b                                         ; $700e: $05
    inc de                                        ; $700f: $13
    inc b                                         ; $7010: $04

jr_0b9_7011:
    inc de                                        ; $7011: $13
    ld b, d                                       ; $7012: $42
    ld [$0ee4], sp                                ; $7013: $08 $e4 $0e
    sub $5a                                       ; $7016: $d6 $5a
    ld l, $21                                     ; $7018: $2e $21
    ld b, [hl]                                    ; $701a: $46
    ld [$5ad6], sp                                ; $701b: $08 $d6 $5a
    ld l, e                                       ; $701e: $6b
    dec l                                         ; $701f: $2d
    ld a, e                                       ; $7020: $7b
    ld l, a                                       ; $7021: $6f
    ld [hl+], a                                   ; $7022: $22
    inc b                                         ; $7023: $04
    db $e4                                        ; $7024: $e4
    ld c, $75                                     ; $7025: $0e $75
    db $10                                        ; $7027: $10
    xor c                                         ; $7028: $a9

jr_0b9_7029:
    db $10                                        ; $7029: $10
    ld bc, $ec00                                  ; $702a: $01 $00 $ec
    inc d                                         ; $702d: $14
    ld h, [hl]                                    ; $702e: $66
    ld [$1d54], sp                                ; $702f: $08 $54 $1d
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    cp b                                          ; $7034: $b8
    add hl, hl                                    ; $7035: $29
    rra                                           ; $7036: $1f
    ld d, a                                       ; $7037: $57
    ld a, [hl+]                                   ; $7038: $2a
    inc b                                         ; $7039: $04
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    db $e4                                        ; $703c: $e4
    ld c, $66                                     ; $703d: $0e $66
    inc c                                         ; $703f: $0c
    jp z, Jump_000_0014                           ; $7040: $ca $14 $00

    jr nz, jr_0b9_7029                            ; $7043: $20 $e4

    ld c, $66                                     ; $7045: $0e $66
    inc c                                         ; $7047: $0c
    jp z, $6314                                   ; $7048: $ca $14 $63

    inc c                                         ; $704b: $0c
    call nz, $d60e                                ; $704c: $c4 $0e $d6
    ld e, d                                       ; $704f: $5a
    ret nc                                        ; $7050: $d0

    jr jr_0b9_7095                                ; $7051: $18 $42

    ld [$6739], sp                                ; $7053: $08 $39 $67
    ld l, e                                       ; $7056: $6b
    dec l                                         ; $7057: $2d

jr_0b9_7058:
    sub l                                         ; $7058: $95
    jr jr_0b9_707d                                ; $7059: $18 $22

    inc b                                         ; $705b: $04
    call nz, $cc0e                                ; $705c: $c4 $0e $cc
    db $10                                        ; $705f: $10
    ld [hl], a                                    ; $7060: $77
    db $10                                        ; $7061: $10
    ld bc, $b800                                  ; $7062: $01 $00 $b8
    dec h                                         ; $7065: $25
    xor e                                         ; $7066: $ab
    inc c                                         ; $7067: $0c
    ld b, l                                       ; $7068: $45
    nop                                           ; $7069: $00
    ld hl, $3b04                                  ; $706a: $21 $04 $3b
    ld [hl], $de                                  ; $706d: $36 $de
    ld c, [hl]                                    ; $706f: $4e

jr_0b9_7070:
    add hl, hl                                    ; $7070: $29
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    call nz, $2f0e                                ; $7074: $c4 $0e $2f
    ld hl, $0868                                  ; $7077: $21 $68 $08
    nop                                           ; $707a: $00
    jr nz, @-$3a                                  ; $707b: $20 $c4

jr_0b9_707d:
    ld c, $2f                                     ; $707d: $0e $2f
    ld hl, $0868                                  ; $707f: $21 $68 $08
    ld h, e                                       ; $7082: $63
    inc c                                         ; $7083: $0c
    sub $5a                                       ; $7084: $d6 $5a
    and h                                         ; $7086: $a4
    ld c, $90                                     ; $7087: $0e $90
    inc c                                         ; $7089: $0c
    ld b, d                                       ; $708a: $42
    ld [$6318], sp                                ; $708b: $08 $18 $63
    ld e, c                                       ; $708e: $59
    inc d                                         ; $708f: $14
    db $ec                                        ; $7090: $ec
    inc e                                         ; $7091: $1c
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    and e                                         ; $7094: $a3

jr_0b9_7095:
    ld c, $91                                     ; $7095: $0e $91
    inc c                                         ; $7097: $0c
    ld b, d                                       ; $7098: $42
    ld [$0000], sp                                ; $7099: $08 $00 $00
    ld [hl], l                                    ; $709c: $75
    dec e                                         ; $709d: $1d
    ld e, h                                       ; $709e: $5c
    ld a, $a9                                     ; $709f: $3e $a9
    inc c                                         ; $70a1: $0c
    ld b, e                                       ; $70a2: $43
    ld [$2df4], sp                                ; $70a3: $08 $f4 $2d
    inc a                                         ; $70a6: $3c
    ld h, e                                       ; $70a7: $63
    ld [hl+], a                                   ; $70a8: $22
    ld a, [bc]                                    ; $70a9: $0a
    ld b, d                                       ; $70aa: $42
    ld [$0aa3], sp                                ; $70ab: $08 $a3 $0a
    or d                                          ; $70ae: $b2
    dec h                                         ; $70af: $25
    adc c                                         ; $70b0: $89
    inc b                                         ; $70b1: $04
    nop                                           ; $70b2: $00
    jr nz, jr_0b9_7058                            ; $70b3: $20 $a3

    ld a, [bc]                                    ; $70b5: $0a
    and e                                         ; $70b6: $a3
    ld c, $a4                                     ; $70b7: $0e $a4
    ld c, $a2                                     ; $70b9: $0e $a2
    ld [$5ad6], sp                                ; $70bb: $08 $d6 $5a
    ld l, e                                       ; $70be: $6b
    dec l                                         ; $70bf: $2d
    ld l, a                                       ; $70c0: $6f
    inc c                                         ; $70c1: $0c
    ld hl, $d604                                  ; $70c2: $21 $04 $d6
    ld e, d                                       ; $70c5: $5a
    db $eb                                        ; $70c6: $eb
    inc e                                         ; $70c7: $1c
    ld [hl], a                                    ; $70c8: $77
    stop                                          ; $70c9: $10 $00
    nop                                           ; $70cb: $00
    add e                                         ; $70cc: $83
    ld a, [bc]                                    ; $70cd: $0a
    adc [hl]                                      ; $70ce: $8e
    inc c                                         ; $70cf: $0c
    ld b, d                                       ; $70d0: $42
    ld [$0000], sp                                ; $70d1: $08 $00 $00
    dec sp                                        ; $70d4: $3b
    ld [hl], $ca                                  ; $70d5: $36 $ca
    db $10                                        ; $70d7: $10
    sbc [hl]                                      ; $70d8: $9e
    ld b, [hl]                                    ; $70d9: $46
    ld b, c                                       ; $70da: $41
    inc b                                         ; $70db: $04
    db $f4                                        ; $70dc: $f4
    dec l                                         ; $70dd: $2d
    ld e, a                                       ; $70de: $5f
    ld h, a                                       ; $70df: $67
    adc b                                         ; $70e0: $88
    dec c                                         ; $70e1: $0d
    ld hl, $ff04                                  ; $70e2: $21 $04 $ff
    ld a, a                                       ; $70e5: $7f
    ld h, d                                       ; $70e6: $62
    ld a, [bc]                                    ; $70e7: $0a
    jp hl                                         ; $70e8: $e9


    ld e, $00                                     ; $70e9: $1e $00
    jr nz, jr_0b9_7070                            ; $70eb: $20 $83

    ld a, [bc]                                    ; $70ed: $0a
    ld h, d                                       ; $70ee: $62
    ld a, [bc]                                    ; $70ef: $0a
    jp hl                                         ; $70f0: $e9


    ld e, $21                                     ; $70f1: $1e $21
    inc b                                         ; $70f3: $04
    ld l, e                                       ; $70f4: $6b
    inc c                                         ; $70f5: $0c
    ld l, e                                       ; $70f6: $6b
    dec l                                         ; $70f7: $2d
    or l                                          ; $70f8: $b5
    db $10                                        ; $70f9: $10
    ld b, d                                       ; $70fa: $42
    ld [$1077], sp                                ; $70fb: $08 $77 $10
    ld l, e                                       ; $70fe: $6b
    dec l                                         ; $70ff: $2d
    ld l, e                                       ; $7100: $6b
    inc c                                         ; $7101: $0c
    ld bc, $6300                                  ; $7102: $01 $00 $63
    ld a, [bc]                                    ; $7105: $0a
    add h                                         ; $7106: $84
    db $10                                        ; $7107: $10
    rst $20                                       ; $7108: $e7
    jr jr_0b9_710c                                ; $7109: $18 $01

    nop                                           ; $710b: $00

jr_0b9_710c:
    cp b                                          ; $710c: $b8
    add hl, hl                                    ; $710d: $29
    ld c, b                                       ; $710e: $48
    ld de, $469f                                  ; $710f: $11 $9f $46
    ld b, d                                       ; $7112: $42
    ld [$469c], sp                                ; $7113: $08 $9c $46
    rst $38                                       ; $7116: $ff
    ld d, d                                       ; $7117: $52
    xor [hl]                                      ; $7118: $ae
    ld [$0842], sp                                ; $7119: $08 $42 $08
    ld h, e                                       ; $711c: $63
    ld a, [bc]                                    ; $711d: $0a
    or d                                          ; $711e: $b2
    dec h                                         ; $711f: $25
    xor [hl]                                      ; $7120: $ae
    ld [$2000], sp                                ; $7121: $08 $00 $20
    ld h, e                                       ; $7124: $63
    ld a, [bc]                                    ; $7125: $0a
    or d                                          ; $7126: $b2
    dec h                                         ; $7127: $25
    xor [hl]                                      ; $7128: $ae
    ld [$0000], sp                                ; $7129: $08 $00 $00
    ld l, h                                       ; $712c: $6c
    inc c                                         ; $712d: $0c
    or h                                          ; $712e: $b4
    inc c                                         ; $712f: $0c
    ld b, d                                       ; $7130: $42
    ld [$0000], sp                                ; $7131: $08 $00 $00
    ld l, e                                       ; $7134: $6b
    inc c                                         ; $7135: $0c
    ld [hl], a                                    ; $7136: $77
    db $10                                        ; $7137: $10
    ld b, d                                       ; $7138: $42
    ld [$0000], sp                                ; $7139: $08 $00 $00
    ld b, e                                       ; $713c: $43
    ld a, [bc]                                    ; $713d: $0a
    rst $20                                       ; $713e: $e7
    inc e                                         ; $713f: $1c
    ld h, e                                       ; $7140: $63
    inc c                                         ; $7141: $0c
    ld bc, $1a00                                  ; $7142: $01 $00 $1a
    ld [hl], $43                                  ; $7145: $36 $43
    ld a, [bc]                                    ; $7147: $0a
    xor h                                         ; $7148: $ac
    ld [$0002], sp                                ; $7149: $08 $02 $00
    rst $18                                       ; $714c: $df
    ld c, d                                       ; $714d: $4a
    xor h                                         ; $714e: $ac
    inc c                                         ; $714f: $0c
    ld l, l                                       ; $7150: $6d
    add hl, hl                                    ; $7151: $29
    ld b, e                                       ; $7152: $43
    ld a, [bc]                                    ; $7153: $0a
    push de                                       ; $7154: $d5
    ld sp, $0468                                  ; $7155: $31 $68 $04
    ld a, [de]                                    ; $7158: $1a
    ld [hl], $00                                  ; $7159: $36 $00
    jr nz, jr_0b9_71a0                            ; $715b: $20 $43

    ld a, [bc]                                    ; $715d: $0a
    ld l, b                                       ; $715e: $68
    inc b                                         ; $715f: $04
    ld a, [de]                                    ; $7160: $1a
    ld [hl], $42                                  ; $7161: $36 $42
    ld [$0c6c], sp                                ; $7163: $08 $6c $0c
    inc hl                                        ; $7166: $23
    ld a, [bc]                                    ; $7167: $0a
    sub l                                         ; $7168: $95
    db $10                                        ; $7169: $10
    ld b, d                                       ; $716a: $42
    ld [$1076], sp                                ; $716b: $08 $76 $10
    ld [$6c21], sp                                ; $716e: $08 $21 $6c
    inc c                                         ; $7171: $0c
    ld b, d                                       ; $7172: $42
    ld [$0a23], sp                                ; $7173: $08 $23 $0a
    rst $00                                       ; $7176: $c7
    jr jr_0b9_71a3                                ; $7177: $18 $2a

    dec h                                         ; $7179: $25
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    or [hl]                                       ; $717c: $b6
    dec h                                         ; $717d: $25
    inc hl                                        ; $717e: $23
    ld a, [bc]                                    ; $717f: $0a
    jp z, $8810                                   ; $7180: $ca $10 $88

    ld [$3a5c], sp                                ; $7183: $08 $5c $3a
    ld de, $1f21                                  ; $7186: $11 $21 $1f
    ld e, e                                       ; $7189: $5b
    inc hl                                        ; $718a: $23
    ld a, [bc]                                    ; $718b: $0a
    ld a, [de]                                    ; $718c: $1a
    ld [hl], $68                                  ; $718d: $36 $68
    inc b                                         ; $718f: $04
    rra                                           ; $7190: $1f
    ld e, e                                       ; $7191: $5b
    nop                                           ; $7192: $00
    jr nz, jr_0b9_71b8                            ; $7193: $20 $23

    ld a, [bc]                                    ; $7195: $0a
    ld l, b                                       ; $7196: $68
    inc b                                         ; $7197: $04
    rra                                           ; $7198: $1f
    ld e, e                                       ; $7199: $5b
    ld b, d                                       ; $719a: $42
    ld [$0602], sp                                ; $719b: $08 $02 $06
    ld l, h                                       ; $719e: $6c
    inc c                                         ; $719f: $0c

jr_0b9_71a0:
    inc hl                                        ; $71a0: $23
    ld a, [bc]                                    ; $71a1: $0a
    ld b, d                                       ; $71a2: $42

jr_0b9_71a3:
    inc b                                         ; $71a3: $04
    ld [$6c21], sp                                ; $71a4: $08 $21 $6c
    inc c                                         ; $71a7: $0c
    add h                                         ; $71a8: $84
    db $10                                        ; $71a9: $10
    ld b, d                                       ; $71aa: $42
    ld [$0a23], sp                                ; $71ab: $08 $23 $0a
    and l                                         ; $71ae: $a5

jr_0b9_71af:
    inc d                                         ; $71af: $14
    rst $20                                       ; $71b0: $e7
    inc e                                         ; $71b1: $1c
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    adc $39                                       ; $71b4: $ce $39
    db $eb                                        ; $71b6: $eb
    inc d                                         ; $71b7: $14

jr_0b9_71b8:
    sub h                                         ; $71b8: $94
    ld d, d                                       ; $71b9: $52
    inc h                                         ; $71ba: $24
    nop                                           ; $71bb: $00
    ld a, [$0f31]                                 ; $71bc: $fa $31 $0f
    add hl, de                                    ; $71bf: $19
    rst $18                                       ; $71c0: $df
    ld d, d                                       ; $71c1: $52
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00

jr_0b9_71c4:
    ld [c], a                                     ; $71c4: $e2
    dec b                                         ; $71c5: $05
    ld [bc], a                                    ; $71c6: $02

jr_0b9_71c7:
    ld b, $03                                     ; $71c7: $06 $03
    ld b, $00                                     ; $71c9: $06 $00
    jr nz, jr_0b9_71af                            ; $71cb: $20 $e2

    dec b                                         ; $71cd: $05
    inc bc                                        ; $71ce: $03
    ld b, $02                                     ; $71cf: $06 $02
    ld b, $21                                     ; $71d1: $06 $21
    inc b                                         ; $71d3: $04
    ld [c], a                                     ; $71d4: $e2
    dec b                                         ; $71d5: $05
    ld b, d                                       ; $71d6: $42
    ld [$0422], sp                                ; $71d7: $08 $22 $04
    ld b, e                                       ; $71da: $43
    ld [$2108], sp                                ; $71db: $08 $08 $21
    add l                                         ; $71de: $85

jr_0b9_71df:
    db $10                                        ; $71df: $10
    ld c, d                                       ; $71e0: $4a
    add hl, hl                                    ; $71e1: $29
    ld hl, $c604                                  ; $71e2: $21 $04 $c6
    jr jr_0b9_7231                                ; $71e5: $18 $4a

    add hl, hl                                    ; $71e7: $29
    add h                                         ; $71e8: $84
    db $10                                        ; $71e9: $10
    ld hl, $d704                                  ; $71ea: $21 $04 $d7
    ld e, d                                       ; $71ed: $5a
    ld [$bd14], a                                 ; $71ee: $ea $14 $bd
    ld [hl], a                                    ; $71f1: $77
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    xor h                                         ; $71f4: $ac
    dec [hl]                                      ; $71f5: $35

jr_0b9_71f6:
    ld hl, sp+$31                                 ; $71f6: $f8 $31
    ld d, d                                       ; $71f8: $52
    dec e                                         ; $71f9: $1d
    ld b, d                                       ; $71fa: $42
    ld [$05c2], sp                                ; $71fb: $08 $c2 $05
    ld [c], a                                     ; $71fe: $e2
    dec b                                         ; $71ff: $05
    ld d, d                                       ; $7200: $52
    dec e                                         ; $7201: $1d
    nop                                           ; $7202: $00
    jr nz, jr_0b9_71c7                            ; $7203: $20 $c2

    dec b                                         ; $7205: $05
    ld [c], a                                     ; $7206: $e2
    dec b                                         ; $7207: $05
    ld d, d                                       ; $7208: $52
    dec e                                         ; $7209: $1d
    ld hl, $c204                                  ; $720a: $21 $04 $c2
    dec b                                         ; $720d: $05
    ld b, d                                       ; $720e: $42
    ld [$0422], sp                                ; $720f: $08 $22 $04
    ld hl, $c604                                  ; $7212: $21 $04 $c6
    jr jr_0b9_71c4                                ; $7215: $18 $ad

    dec [hl]                                      ; $7217: $35
    ld h, e                                       ; $7218: $63
    inc c                                         ; $7219: $0c
    ld hl, $0804                                  ; $721a: $21 $04 $08

jr_0b9_721d:
    ld hl, $0c63                                  ; $721d: $21 $63 $0c
    ld l, h                                       ; $7220: $6c
    dec l                                         ; $7221: $2d
    ld [hl+], a                                   ; $7222: $22
    inc b                                         ; $7223: $04
    rst $30                                       ; $7224: $f7
    ld e, [hl]                                    ; $7225: $5e
    xor b                                         ; $7226: $a8
    inc d                                         ; $7227: $14
    cp l                                          ; $7228: $bd
    ld [hl], a                                    ; $7229: $77
    ld bc, $f700                                  ; $722a: $01 $00 $f7
    ld sp, $14cb                                  ; $722d: $31 $cb $14
    rst $38                                       ; $7230: $ff

jr_0b9_7231:
    ld a, a                                       ; $7231: $7f
    ld b, d                                       ; $7232: $42
    ld [$01a2], sp                                ; $7233: $08 $a2 $01
    ld a, [bc]                                    ; $7236: $0a
    ld [$05c2], sp                                ; $7237: $08 $c2 $05
    nop                                           ; $723a: $00
    jr nz, jr_0b9_71df                            ; $723b: $20 $a2

    ld bc, $05c2                                  ; $723d: $01 $c2 $05
    and d                                         ; $7240: $a2
    dec b                                         ; $7241: $05
    ld b, d                                       ; $7242: $42
    ld [$01a1], sp                                ; $7243: $08 $a1 $01
    and d                                         ; $7246: $a2
    ld bc, $05a2                                  ; $7247: $01 $a2 $05
    ld hl, $e704                                  ; $724a: $21 $04 $e7
    inc e                                         ; $724d: $1c
    add h                                         ; $724e: $84
    db $10                                        ; $724f: $10
    ld c, d                                       ; $7250: $4a
    add hl, hl                                    ; $7251: $29
    ld hl, $a604                                  ; $7252: $21 $04 $a6
    inc d                                         ; $7255: $14
    ld l, e                                       ; $7256: $6b
    dec l                                         ; $7257: $2d
    rst $20                                       ; $7258: $e7
    inc e                                         ; $7259: $1c
    ld b, d                                       ; $725a: $42
    ld [$673a], sp                                ; $725b: $08 $3a $67
    or [hl]                                       ; $725e: $b6
    db $10                                        ; $725f: $10
    adc c                                         ; $7260: $89
    stop                                          ; $7261: $10 $00
    nop                                           ; $7263: $00
    push af                                       ; $7264: $f5
    ld e, [hl]                                    ; $7265: $5e
    dec b                                         ; $7266: $05
    dec h                                         ; $7267: $25
    cp l                                          ; $7268: $bd
    ld [hl], a                                    ; $7269: $77
    ld b, d                                       ; $726a: $42
    ld [$0c4f], sp                                ; $726b: $08 $4f $0c
    add c                                         ; $726e: $81
    ld bc, $1459                                  ; $726f: $01 $59 $14
    nop                                           ; $7272: $00
    jr nz, jr_0b9_71f6                            ; $7273: $20 $81

    ld bc, $01a1                                  ; $7275: $01 $a1 $01
    and d                                         ; $7278: $a2
    ld bc, $0000                                  ; $7279: $01 $00 $00
    add c                                         ; $727c: $81
    ld bc, $2d6b                                  ; $727d: $01 $6b $2d
    rst $20                                       ; $7280: $e7
    inc e                                         ; $7281: $1c
    ld bc, $8500                                  ; $7282: $01 $00 $85
    db $10                                        ; $7285: $10
    ld b, d                                       ; $7286: $42
    ld [$18c6], sp                                ; $7287: $08 $c6 $18
    ld b, d                                       ; $728a: $42
    inc b                                         ; $728b: $04
    ld [$c621], sp                                ; $728c: $08 $21 $c6
    jr jr_0b9_721d                                ; $728f: $18 $8c

    ld sp, $0423                                  ; $7291: $31 $23 $04
    ld l, h                                       ; $7294: $6c
    inc c                                         ; $7295: $0c
    ld [$b621], sp                                ; $7296: $08 $21 $b6
    db $10                                        ; $7299: $10
    inc hl                                        ; $729a: $23
    inc b                                         ; $729b: $04
    di                                            ; $729c: $f3
    inc c                                         ; $729d: $0c
    ld hl, sp+$5e                                 ; $729e: $f8 $5e
    sbc a                                         ; $72a0: $9f
    inc bc                                        ; $72a1: $03
    ld hl, $5504                                  ; $72a2: $21 $04 $55
    db $10                                        ; $72a5: $10
    ld h, c                                       ; $72a6: $61
    ld bc, $14a5                                  ; $72a7: $01 $a5 $14
    nop                                           ; $72aa: $00
    jr nz, jr_0b9_730e                            ; $72ab: $20 $61

    ld bc, $0181                                  ; $72ad: $01 $81 $01
    and l                                         ; $72b0: $a5
    inc d                                         ; $72b1: $14
    ld h, c                                       ; $72b2: $61
    ld bc, $2108                                  ; $72b3: $01 $08 $21
    add $18                                       ; $72b6: $c6 $18
    adc h                                         ; $72b8: $8c
    ld sp, $0421                                  ; $72b9: $31 $21 $04
    add h                                         ; $72bc: $84
    db $10                                        ; $72bd: $10
    ld h, c                                       ; $72be: $61
    ld bc, $18c6                                  ; $72bf: $01 $c6 $18
    add $18                                       ; $72c2: $c6 $18
    ld l, e                                       ; $72c4: $6b
    dec l                                         ; $72c5: $2d
    adc $39                                       ; $72c6: $ce $39
    ld [$0021], sp                                ; $72c8: $08 $21 $00
    nop                                           ; $72cb: $00
    or [hl]                                       ; $72cc: $b6
    db $10                                        ; $72cd: $10
    ld [$4200], sp                                ; $72ce: $08 $00 $42
    ld [$0000], sp                                ; $72d1: $08 $00 $00
    inc c                                         ; $72d4: $0c
    nop                                           ; $72d5: $00
    pop af                                        ; $72d6: $f1
    add hl, bc                                    ; $72d7: $09
    ld e, b                                       ; $72d8: $58
    inc d                                         ; $72d9: $14
    ld [hl+], a                                   ; $72da: $22
    inc b                                         ; $72db: $04
    ld [$4121], sp                                ; $72dc: $08 $21 $41
    ld bc, $1066                                  ; $72df: $01 $66 $10
    nop                                           ; $72e2: $00
    jr nz, jr_0b9_7326                            ; $72e3: $20 $41

    ld bc, $0161                                  ; $72e5: $01 $61 $01
    ld h, [hl]                                    ; $72e8: $66
    db $10                                        ; $72e9: $10
    ld b, c                                       ; $72ea: $41
    ld bc, $2d6b                                  ; $72eb: $01 $6b $2d
    adc $39                                       ; $72ee: $ce $39
    ld [$0021], sp                                ; $72f0: $08 $21 $00
    nop                                           ; $72f3: $00
    ld b, c                                       ; $72f4: $41
    ld bc, $0c63                                  ; $72f5: $01 $63 $0c
    ld hl, $4204                                  ; $72f8: $21 $04 $42
    ld [$2529], sp                                ; $72fb: $08 $29 $25
    xor l                                         ; $72fe: $ad
    dec [hl]                                      ; $72ff: $35
    add l                                         ; $7300: $85
    db $10                                        ; $7301: $10
    ld b, e                                       ; $7302: $43
    ld [$0c0d], sp                                ; $7303: $08 $0d $0c
    rst $20                                       ; $7306: $e7
    inc e                                         ; $7307: $1c
    ld e, c                                       ; $7308: $59
    inc d                                         ; $7309: $14
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    or a                                          ; $730c: $b7
    db $10                                        ; $730d: $10

jr_0b9_730e:
    sbc a                                         ; $730e: $9f
    inc bc                                        ; $730f: $03
    inc c                                         ; $7310: $0c
    inc b                                         ; $7311: $04
    ld hl, $4a04                                  ; $7312: $21 $04 $4a
    add hl, hl                                    ; $7315: $29
    ld b, c                                       ; $7316: $41
    ld bc, $0c64                                  ; $7317: $01 $64 $0c
    nop                                           ; $731a: $00
    jr nz, jr_0b9_735e                            ; $731b: $20 $41

    ld bc, $0141                                  ; $731d: $01 $41 $01
    ld h, h                                       ; $7320: $64
    inc c                                         ; $7321: $0c
    ld b, c                                       ; $7322: $41
    ld bc, $2529                                  ; $7323: $01 $29 $25

jr_0b9_7326:
    xor l                                         ; $7326: $ad
    dec [hl]                                      ; $7327: $35
    add l                                         ; $7328: $85
    stop                                          ; $7329: $10 $00
    nop                                           ; $732b: $00
    ld b, c                                       ; $732c: $41
    ld bc, $0001                                  ; $732d: $01 $01 $00

jr_0b9_7330:
    ld hl, $2100                                  ; $7330: $21 $00 $21
    inc b                                         ; $7333: $04
    rst $20                                       ; $7334: $e7
    inc e                                         ; $7335: $1c
    ld c, d                                       ; $7336: $4a
    add hl, hl                                    ; $7337: $29

jr_0b9_7338:
    and l                                         ; $7338: $a5
    inc d                                         ; $7339: $14
    ld b, d                                       ; $733a: $42
    ld [$2529], sp                                ; $733b: $08 $29 $25
    add $18                                       ; $733e: $c6 $18

jr_0b9_7340:
    adc h                                         ; $7340: $8c
    ld sp, $0000                                  ; $7341: $31 $00 $00
    inc c                                         ; $7344: $0c
    inc c                                         ; $7345: $0c
    ld e, c                                       ; $7346: $59
    inc d                                         ; $7347: $14

jr_0b9_7348:
    inc h                                         ; $7348: $24
    inc b                                         ; $7349: $04
    ld hl, $6b04                                  ; $734a: $21 $04 $6b
    dec l                                         ; $734d: $2d
    ld b, c                                       ; $734e: $41
    ld bc, $1084                                  ; $734f: $01 $84 $10
    nop                                           ; $7352: $00
    jr nz, jr_0b9_7396                            ; $7353: $20 $41

    ld bc, $0141                                  ; $7355: $01 $41 $01

jr_0b9_7358:
    add h                                         ; $7358: $84
    stop                                          ; $7359: $10 $00
    jr nz, jr_0b9_7330                            ; $735b: $20 $d3

    dec bc                                        ; $735d: $0b

jr_0b9_735e:
    nop                                           ; $735e: $00
    jr nz, jr_0b9_7348                            ; $735f: $20 $e7

    inc e                                         ; $7361: $1c
    nop                                           ; $7362: $00
    jr nz, jr_0b9_7338                            ; $7363: $20 $d3

    dec bc                                        ; $7365: $0b
    nop                                           ; $7366: $00
    jr nz, @-$17                                  ; $7367: $20 $e7

    inc e                                         ; $7369: $1c
    nop                                           ; $736a: $00
    jr nz, jr_0b9_7340                            ; $736b: $20 $d3

    dec bc                                        ; $736d: $0b
    nop                                           ; $736e: $00
    jr nz, jr_0b9_7358                            ; $736f: $20 $e7

    inc e                                         ; $7371: $1c
    ld bc, $d300                                  ; $7372: $01 $00 $d3
    dec bc                                        ; $7375: $0b
    ld b, h                                       ; $7376: $44
    inc b                                         ; $7377: $04

jr_0b9_7378:
    ld h, [hl]                                    ; $7378: $66
    ld [$0000], sp                                ; $7379: $08 $00 $00
    or e                                          ; $737c: $b3
    dec bc                                        ; $737d: $0b
    ld bc, $d300                                  ; $737e: $01 $00 $d3
    dec bc                                        ; $7381: $0b
    call z, $f110                                 ; $7382: $cc $10 $f1
    ld a, [bc]                                    ; $7385: $0a
    or e                                          ; $7386: $b3
    dec bc                                        ; $7387: $0b

jr_0b9_7388:
    dec l                                         ; $7388: $2d
    ld de, $2000                                  ; $7389: $11 $00 $20
    or e                                          ; $738c: $b3
    dec bc                                        ; $738d: $0b
    db $d3                                        ; $738e: $d3
    dec bc                                        ; $738f: $0b
    dec l                                         ; $7390: $2d
    ld de, $0bb3                                  ; $7391: $11 $b3 $0b
    db $d3                                        ; $7394: $d3
    dec bc                                        ; $7395: $0b

jr_0b9_7396:
    nop                                           ; $7396: $00
    jr nz, @-$17                                  ; $7397: $20 $e7

    inc e                                         ; $7399: $1c
    or e                                          ; $739a: $b3
    dec bc                                        ; $739b: $0b
    db $d3                                        ; $739c: $d3
    dec bc                                        ; $739d: $0b
    nop                                           ; $739e: $00
    jr nz, jr_0b9_7388                            ; $739f: $20 $e7

    inc e                                         ; $73a1: $1c
    inc hl                                        ; $73a2: $23
    nop                                           ; $73a3: $00
    or e                                          ; $73a4: $b3
    dec bc                                        ; $73a5: $0b
    ld b, e                                       ; $73a6: $43
    inc b                                         ; $73a7: $04
    inc hl                                        ; $73a8: $23
    inc b                                         ; $73a9: $04
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    add a                                         ; $73ac: $87
    inc c                                         ; $73ad: $0c
    rl h                                          ; $73ae: $cb $14
    inc hl                                        ; $73b0: $23

jr_0b9_73b1:
    inc b                                         ; $73b1: $04
    ld bc, $b300                                  ; $73b2: $01 $00 $b3
    dec bc                                        ; $73b5: $0b
    db $eb                                        ; $73b6: $eb
    inc d                                         ; $73b7: $14
    ld h, l                                       ; $73b8: $65
    inc c                                         ; $73b9: $0c
    rl h                                          ; $73ba: $cb $14
    or e                                          ; $73bc: $b3
    dec bc                                        ; $73bd: $0b
    db $fd                                        ; $73be: $fd
    ld e, d                                       ; $73bf: $5a
    sub e                                         ; $73c0: $93
    add hl, hl                                    ; $73c1: $29
    nop                                           ; $73c2: $00
    jr nz, jr_0b9_7378                            ; $73c3: $20 $b3

    dec bc                                        ; $73c5: $0b
    or h                                          ; $73c6: $b4
    dec bc                                        ; $73c7: $0b
    sub e                                         ; $73c8: $93
    add hl, hl                                    ; $73c9: $29

jr_0b9_73ca:
    or h                                          ; $73ca: $b4
    dec bc                                        ; $73cb: $0b
    or e                                          ; $73cc: $b3
    dec bc                                        ; $73cd: $0b
    ld b, e                                       ; $73ce: $43
    inc b                                         ; $73cf: $04
    inc hl                                        ; $73d0: $23
    inc b                                         ; $73d1: $04
    or e                                          ; $73d2: $b3
    dec bc                                        ; $73d3: $0b
    or h                                          ; $73d4: $b4
    dec bc                                        ; $73d5: $0b
    ld b, e                                       ; $73d6: $43
    inc b                                         ; $73d7: $04
    inc hl                                        ; $73d8: $23
    inc b                                         ; $73d9: $04
    ld [hl+], a                                   ; $73da: $22
    nop                                           ; $73db: $00
    or e                                          ; $73dc: $b3
    dec bc                                        ; $73dd: $0b
    xor c                                         ; $73de: $a9
    db $10                                        ; $73df: $10
    cpl                                           ; $73e0: $2f
    dec e                                         ; $73e1: $1d
    ld b, h                                       ; $73e2: $44
    ld [$190d], sp                                ; $73e3: $08 $0d $19
    xor b                                         ; $73e6: $a8
    db $10                                        ; $73e7: $10
    ld [hl], d                                    ; $73e8: $72
    dec h                                         ; $73e9: $25
    ld [hl+], a                                   ; $73ea: $22
    inc b                                         ; $73eb: $04
    db $ec                                        ; $73ec: $ec
    inc d                                         ; $73ed: $14
    or h                                          ; $73ee: $b4
    dec bc                                        ; $73ef: $0b
    ld [hl], d                                    ; $73f0: $72
    dec h                                         ; $73f1: $25
    ld h, e                                       ; $73f2: $63
    inc c                                         ; $73f3: $0c
    rst $18                                       ; $73f4: $df
    ld c, d                                       ; $73f5: $4a
    db $ed                                        ; $73f6: $ed
    db $10                                        ; $73f7: $10
    ld e, a                                       ; $73f8: $5f
    ld h, a                                       ; $73f9: $67
    nop                                           ; $73fa: $00
    jr nz, jr_0b9_73b1                            ; $73fb: $20 $b4

    dec bc                                        ; $73fd: $0b
    db $ed                                        ; $73fe: $ed
    db $10                                        ; $73ff: $10
    ld e, a                                       ; $7400: $5f
    ld h, a                                       ; $7401: $67

jr_0b9_7402:
    or h                                          ; $7402: $b4
    dec bc                                        ; $7403: $0b
    sub l                                         ; $7404: $95
    dec bc                                        ; $7405: $0b
    xor c                                         ; $7406: $a9
    db $10                                        ; $7407: $10
    cpl                                           ; $7408: $2f
    dec e                                         ; $7409: $1d
    or h                                          ; $740a: $b4
    dec bc                                        ; $740b: $0b
    sub l                                         ; $740c: $95
    dec bc                                        ; $740d: $0b
    xor c                                         ; $740e: $a9
    db $10                                        ; $740f: $10
    cpl                                           ; $7410: $2f
    dec e                                         ; $7411: $1d
    ld b, h                                       ; $7412: $44
    inc b                                         ; $7413: $04
    sub h                                         ; $7414: $94
    dec bc                                        ; $7415: $0b
    jp z, Jump_000_3014                           ; $7416: $ca $14 $30

    dec e                                         ; $7419: $1d
    ld [bc], a                                    ; $741a: $02
    nop                                           ; $741b: $00
    rl h                                          ; $741c: $cb $14
    ld d, c                                       ; $741e: $51
    ld hl, $0c87                                  ; $741f: $21 $87 $0c
    ld [hl+], a                                   ; $7422: $22
    inc b                                         ; $7423: $04
    ret                                           ; $7424: $c9


    db $10                                        ; $7425: $10
    ld c, $19                                     ; $7426: $0e $19
    ld d, c                                       ; $7428: $51
    dec h                                         ; $7429: $25
    nop                                           ; $742a: $00
    nop                                           ; $742b: $00
    sub l                                         ; $742c: $95
    dec bc                                        ; $742d: $0b
    ccf                                           ; $742e: $3f
    ld e, a                                       ; $742f: $5f
    call Call_000_0014                            ; $7430: $cd $14 $00
    jr nz, jr_0b9_73ca                            ; $7433: $20 $95

    dec bc                                        ; $7435: $0b
    ccf                                           ; $7436: $3f
    ld e, a                                       ; $7437: $5f
    call $9514                                    ; $7438: $cd $14 $95
    dec bc                                        ; $743b: $0b
    sub h                                         ; $743c: $94
    dec bc                                        ; $743d: $0b
    jp z, Jump_000_3014                           ; $743e: $ca $14 $30

    dec e                                         ; $7441: $1d
    sub l                                         ; $7442: $95
    dec bc                                        ; $7443: $0b
    sub h                                         ; $7444: $94
    dec bc                                        ; $7445: $0b
    jp z, Jump_000_3014                           ; $7446: $ca $14 $30

    dec e                                         ; $7449: $1d
    ld hl, $7400                                  ; $744a: $21 $00 $74
    dec bc                                        ; $744d: $0b
    jr nc, jr_0b9_746d                            ; $744e: $30 $1d

    add a                                         ; $7450: $87
    inc c                                         ; $7451: $0c
    ld [bc], a                                    ; $7452: $02
    nop                                           ; $7453: $00
    rst $28                                       ; $7454: $ef
    jr jr_0b9_74b6                                ; $7455: $18 $5f

    ld h, e                                       ; $7457: $63
    sub l                                         ; $7458: $95
    add hl, hl                                    ; $7459: $29
    ld bc, $ec00                                  ; $745a: $01 $00 $ec
    inc d                                         ; $745d: $14
    ld hl, sp+$31                                 ; $745e: $f8 $31
    ld h, [hl]                                    ; $7460: $66
    ld [$0000], sp                                ; $7461: $08 $00 $00
    db $db                                        ; $7464: $db
    ld d, d                                       ; $7465: $52
    sub l                                         ; $7466: $95
    dec bc                                        ; $7467: $0b
    jr nc, @+$17                                  ; $7468: $30 $15

    nop                                           ; $746a: $00
    jr nz, jr_0b9_7402                            ; $746b: $20 $95

jr_0b9_746d:
    dec bc                                        ; $746d: $0b
    sub [hl]                                      ; $746e: $96
    dec bc                                        ; $746f: $0b
    jr nc, jr_0b9_7487                            ; $7470: $30 $15

    halt                                          ; $7472: $76
    dec bc                                        ; $7473: $0b
    sub [hl]                                      ; $7474: $96
    dec bc                                        ; $7475: $0b
    jr nc, jr_0b9_7495                            ; $7476: $30 $1d

    add a                                         ; $7478: $87
    inc c                                         ; $7479: $0c
    halt                                          ; $747a: $76
    dec bc                                        ; $747b: $0b
    sub [hl]                                      ; $747c: $96
    dec bc                                        ; $747d: $0b
    jr nc, jr_0b9_749d                            ; $747e: $30 $1d

    add a                                         ; $7480: $87
    inc c                                         ; $7481: $0c
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    halt                                          ; $7484: $76
    dec bc                                        ; $7485: $0b
    adc b                                         ; $7486: $88

jr_0b9_7487:
    inc c                                         ; $7487: $0c
    ld b, e                                       ; $7488: $43
    inc b                                         ; $7489: $04
    ld [hl+], a                                   ; $748a: $22
    inc b                                         ; $748b: $04
    sbc $4e                                       ; $748c: $de $4e
    call Call_0b9_4b14                            ; $748e: $cd $14 $4b
    inc b                                         ; $7491: $04
    ld bc, $7500                                  ; $7492: $01 $00 $75

jr_0b9_7495:
    dec e                                         ; $7495: $1d
    ld h, [hl]                                    ; $7496: $66
    inc c                                         ; $7497: $0c
    ld a, [de]                                    ; $7498: $1a
    ld [hl], $00                                  ; $7499: $36 $00
    nop                                           ; $749b: $00
    halt                                          ; $749c: $76

jr_0b9_749d:
    dec bc                                        ; $749d: $0b
    rra                                           ; $749e: $1f
    ld d, a                                       ; $749f: $57
    ret nc                                        ; $74a0: $d0

    stop                                          ; $74a1: $10 $00
    jr nz, @+$78                                  ; $74a3: $20 $76

    dec bc                                        ; $74a5: $0b
    rra                                           ; $74a6: $1f
    ld d, a                                       ; $74a7: $57
    ret nc                                        ; $74a8: $d0

    db $10                                        ; $74a9: $10
    halt                                          ; $74aa: $76
    dec bc                                        ; $74ab: $0b
    ld [hl], a                                    ; $74ac: $77
    dec bc                                        ; $74ad: $0b
    adc b                                         ; $74ae: $88
    inc c                                         ; $74af: $0c
    ld b, e                                       ; $74b0: $43
    inc b                                         ; $74b1: $04
    halt                                          ; $74b2: $76
    dec bc                                        ; $74b3: $0b
    ld [hl], a                                    ; $74b4: $77
    dec bc                                        ; $74b5: $0b

jr_0b9_74b6:
    adc b                                         ; $74b6: $88
    inc c                                         ; $74b7: $0c
    ld b, e                                       ; $74b8: $43
    inc b                                         ; $74b9: $04
    ld bc, $7600                                  ; $74ba: $01 $00 $76
    dec bc                                        ; $74bd: $0b
    ld h, [hl]                                    ; $74be: $66
    ld [$14cb], sp                                ; $74bf: $08 $cb $14
    ld hl, $7404                                  ; $74c2: $21 $04 $74
    dec h                                         ; $74c5: $25
    sbc $52                                       ; $74c6: $de $52
    xor l                                         ; $74c8: $ad
    inc c                                         ; $74c9: $0c
    nop                                           ; $74ca: $00
    nop                                           ; $74cb: $00
    ld e, h                                       ; $74cc: $5c
    ld a, $eb                                     ; $74cd: $3e $eb
    inc e                                         ; $74cf: $1c
    ld b, l                                       ; $74d0: $45
    inc b                                         ; $74d1: $04
    ld c, b                                       ; $74d2: $48
    inc b                                         ; $74d3: $04
    dec d                                         ; $74d4: $15
    dec bc                                        ; $74d5: $0b
    ccf                                           ; $74d6: $3f
    ld d, d                                       ; $74d7: $52
    ld [de], a                                    ; $74d8: $12
    ld [$2000], sp                                ; $74d9: $08 $00 $20
    ld [hl], a                                    ; $74dc: $77
    dec bc                                        ; $74dd: $0b
    ccf                                           ; $74de: $3f
    ld d, d                                       ; $74df: $52
    ld [de], a                                    ; $74e0: $12
    ld [$0b77], sp                                ; $74e1: $08 $77 $0b
    ld a, b                                       ; $74e4: $78
    dec bc                                        ; $74e5: $0b
    ld h, [hl]                                    ; $74e6: $66
    ld [$14cb], sp                                ; $74e7: $08 $cb $14
    ld [hl], a                                    ; $74ea: $77
    dec bc                                        ; $74eb: $0b
    ld a, b                                       ; $74ec: $78
    dec bc                                        ; $74ed: $0b
    ld h, [hl]                                    ; $74ee: $66
    ld [$14cb], sp                                ; $74ef: $08 $cb $14
    ld [hl+], a                                   ; $74f2: $22
    inc b                                         ; $74f3: $04
    add hl, de                                    ; $74f4: $19
    ld [hl], $77                                  ; $74f5: $36 $77
    dec bc                                        ; $74f7: $0b
    adc $10                                       ; $74f8: $ce $10
    ld [hl+], a                                   ; $74fa: $22
    ld [$2df7], sp                                ; $74fb: $08 $f7 $2d
    inc a                                         ; $74fe: $3c
    ld h, e                                       ; $74ff: $63
    adc e                                         ; $7500: $8b
    add hl, de                                    ; $7501: $19
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    or h                                          ; $7504: $b4
    add hl, hl                                    ; $7505: $29
    sub [hl]                                      ; $7506: $96
    ld d, d                                       ; $7507: $52
    add l                                         ; $7508: $85
    inc d                                         ; $7509: $14
    ld h, d                                       ; $750a: $62
    inc c                                         ; $750b: $0c
    call c, $5845                                 ; $750c: $dc $45 $58
    dec bc                                        ; $750f: $0b
    inc d                                         ; $7510: $14
    ld [$2000], sp                                ; $7511: $08 $00 $20
    ld e, b                                       ; $7514: $58
    dec bc                                        ; $7515: $0b
    ld a, b                                       ; $7516: $78
    dec bc                                        ; $7517: $0b
    inc d                                         ; $7518: $14
    ld [$0b58], sp                                ; $7519: $08 $58 $0b
    ld e, c                                       ; $751c: $59
    dec bc                                        ; $751d: $0b
    ld [hl], a                                    ; $751e: $77
    dec bc                                        ; $751f: $0b
    adc $10                                       ; $7520: $ce $10
    ld e, b                                       ; $7522: $58
    dec bc                                        ; $7523: $0b
    ld e, c                                       ; $7524: $59
    dec bc                                        ; $7525: $0b
    ld [hl], a                                    ; $7526: $77
    dec bc                                        ; $7527: $0b
    adc $10                                       ; $7528: $ce $10
    ld [hl+], a                                   ; $752a: $22
    inc b                                         ; $752b: $04
    jr jr_0b9_7564                                ; $752c: $18 $36

    ld e, b                                       ; $752e: $58
    dec bc                                        ; $752f: $0b
    db $ed                                        ; $7530: $ed
    inc d                                         ; $7531: $14
    ld [hl+], a                                   ; $7532: $22
    inc b                                         ; $7533: $04
    dec sp                                        ; $7534: $3b
    ld a, [hl-]                                   ; $7535: $3a
    ld c, e                                       ; $7536: $4b
    add hl, de                                    ; $7537: $19
    rra                                           ; $7538: $1f
    ld e, e                                       ; $7539: $5b
    ld b, d                                       ; $753a: $42
    inc c                                         ; $753b: $0c
    or e                                          ; $753c: $b3
    dec l                                         ; $753d: $2d
    and [hl]                                      ; $753e: $a6
    add hl, de                                    ; $753f: $19
    ei                                            ; $7540: $fb
    ld l, a                                       ; $7541: $6f
    rst $00                                       ; $7542: $c7
    jr @+$56                                      ; $7543: $18 $54

    ld c, d                                       ; $7545: $4a
    ld e, b                                       ; $7546: $58
    dec bc                                        ; $7547: $0b
    rla                                           ; $7548: $17
    inc c                                         ; $7549: $0c
    nop                                           ; $754a: $00
    jr nz, jr_0b9_75a5                            ; $754b: $20 $58

    dec bc                                        ; $754d: $0b
    ld e, c                                       ; $754e: $59
    dec bc                                        ; $754f: $0b
    rla                                           ; $7550: $17
    inc c                                         ; $7551: $0c
    ld e, c                                       ; $7552: $59
    dec bc                                        ; $7553: $0b
    jr jr_0b9_758c                                ; $7554: $18 $36

    ld e, b                                       ; $7556: $58
    dec bc                                        ; $7557: $0b
    db $ed                                        ; $7558: $ed
    inc d                                         ; $7559: $14
    ld e, c                                       ; $755a: $59
    dec bc                                        ; $755b: $0b
    jr jr_0b9_7594                                ; $755c: $18 $36

    ld e, b                                       ; $755e: $58
    dec bc                                        ; $755f: $0b
    db $ed                                        ; $7560: $ed
    inc d                                         ; $7561: $14
    ld [hl+], a                                   ; $7562: $22
    inc b                                         ; $7563: $04

jr_0b9_7564:
    ld e, c                                       ; $7564: $59
    dec bc                                        ; $7565: $0b
    ld e, h                                       ; $7566: $5c
    ld a, [hl-]                                   ; $7567: $3a
    xor $14                                       ; $7568: $ee $14
    ld h, e                                       ; $756a: $63
    inc c                                         ; $756b: $0c
    dec de                                        ; $756c: $1b
    ld [hl], $93                                  ; $756d: $36 $93
    add hl, hl                                    ; $756f: $29
    rst $18                                       ; $7570: $df
    ld d, d                                       ; $7571: $52
    ld b, d                                       ; $7572: $42
    inc c                                         ; $7573: $0c
    sub h                                         ; $7574: $94
    dec h                                         ; $7575: $25
    ld e, $5b                                     ; $7576: $1e $5b
    db $ed                                        ; $7578: $ed
    inc d                                         ; $7579: $14
    dec h                                         ; $757a: $25
    inc b                                         ; $757b: $04
    adc $39                                       ; $757c: $ce $39
    jr c, jr_0b9_7590                             ; $757e: $38 $10

    ld e, c                                       ; $7580: $59
    dec bc                                        ; $7581: $0b
    nop                                           ; $7582: $00
    jr nz, jr_0b9_75de                            ; $7583: $20 $59

    dec bc                                        ; $7585: $0b
    ld e, d                                       ; $7586: $5a
    dec bc                                        ; $7587: $0b
    ld e, c                                       ; $7588: $59
    dec bc                                        ; $7589: $0b
    ld a, [hl-]                                   ; $758a: $3a
    dec bc                                        ; $758b: $0b

jr_0b9_758c:
    ld e, d                                       ; $758c: $5a
    dec bc                                        ; $758d: $0b
    ld e, h                                       ; $758e: $5c
    ld a, [hl-]                                   ; $758f: $3a

jr_0b9_7590:
    xor $14                                       ; $7590: $ee $14
    ld a, [hl-]                                   ; $7592: $3a
    dec bc                                        ; $7593: $0b

jr_0b9_7594:
    ld e, d                                       ; $7594: $5a
    dec bc                                        ; $7595: $0b
    ld e, h                                       ; $7596: $5c
    ld a, [hl-]                                   ; $7597: $3a
    xor $14                                       ; $7598: $ee $14
    nop                                           ; $759a: $00
    nop                                           ; $759b: $00
    ld a, [hl-]                                   ; $759c: $3a
    dec bc                                        ; $759d: $0b
    rlca                                          ; $759e: $07
    inc b                                         ; $759f: $04
    xor e                                         ; $75a0: $ab
    ld [$0ccd], sp                                ; $75a1: $08 $cd $0c
    ld sp, hl                                     ; $75a4: $f9

jr_0b9_75a5:
    dec l                                         ; $75a5: $2d
    sub $5a                                       ; $75a6: $d6 $5a
    cp [hl]                                       ; $75a8: $be
    ld c, d                                       ; $75a9: $4a
    ld [hl+], a                                   ; $75aa: $22
    nop                                           ; $75ab: $00
    ret c                                         ; $75ac: $d8

    dec l                                         ; $75ad: $2d
    rst $38                                       ; $75ae: $ff
    ld a, a                                       ; $75af: $7f
    sbc e                                         ; $75b0: $9b
    ld c, d                                       ; $75b1: $4a
    ld a, [bc]                                    ; $75b2: $0a
    inc b                                         ; $75b3: $04
    ld a, [hl-]                                   ; $75b4: $3a
    dec bc                                        ; $75b5: $0b
    rst $20                                       ; $75b6: $e7
    inc e                                         ; $75b7: $1c
    ld a, a                                       ; $75b8: $7f
    inc e                                         ; $75b9: $1c

jr_0b9_75ba:
    nop                                           ; $75ba: $00
    jr nz, jr_0b9_75f7                            ; $75bb: $20 $3a

    dec bc                                        ; $75bd: $0b
    rst $20                                       ; $75be: $e7
    inc e                                         ; $75bf: $1c
    ld a, a                                       ; $75c0: $7f
    inc e                                         ; $75c1: $1c
    ld a, [hl-]                                   ; $75c2: $3a
    dec bc                                        ; $75c3: $0b
    ld a, [hl-]                                   ; $75c4: $3a
    dec bc                                        ; $75c5: $0b
    rlca                                          ; $75c6: $07
    inc b                                         ; $75c7: $04
    xor e                                         ; $75c8: $ab
    ld [$0407], sp                                ; $75c9: $08 $07 $04
    ld a, [hl-]                                   ; $75cc: $3a
    dec bc                                        ; $75cd: $0b
    rlca                                          ; $75ce: $07
    inc b                                         ; $75cf: $04
    xor e                                         ; $75d0: $ab
    ld [$0000], sp                                ; $75d1: $08 $00 $00
    ld a, [hl-]                                   ; $75d4: $3a
    dec bc                                        ; $75d5: $0b
    add hl, bc                                    ; $75d6: $09
    inc b                                         ; $75d7: $04
    ld a, [hl]                                    ; $75d8: $7e
    inc e                                         ; $75d9: $1c
    ld bc, $b900                                  ; $75da: $01 $00 $b9
    dec l                                         ; $75dd: $2d

jr_0b9_75de:
    xor l                                         ; $75de: $ad
    db $10                                        ; $75df: $10
    sbc [hl]                                      ; $75e0: $9e
    ld b, [hl]                                    ; $75e1: $46
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    adc $14                                       ; $75e4: $ce $14
    ld a, [de]                                    ; $75e6: $1a
    ld [hl], $bf                                  ; $75e7: $36 $bf
    ld c, d                                       ; $75e9: $4a
    inc h                                         ; $75ea: $24
    inc b                                         ; $75eb: $04
    inc de                                        ; $75ec: $13
    ld [$0b1a], sp                                ; $75ed: $08 $1a $0b
    ld e, a                                       ; $75f0: $5f
    inc e                                         ; $75f1: $1c
    nop                                           ; $75f2: $00
    jr nz, jr_0b9_760f                            ; $75f3: $20 $1a

    dec bc                                        ; $75f5: $0b
    ld a, [hl-]                                   ; $75f6: $3a

jr_0b9_75f7:
    dec bc                                        ; $75f7: $0b
    ld e, a                                       ; $75f8: $5f
    inc e                                         ; $75f9: $1c
    ld a, [de]                                    ; $75fa: $1a
    dec bc                                        ; $75fb: $0b
    ld a, [hl-]                                   ; $75fc: $3a
    dec bc                                        ; $75fd: $0b
    add hl, bc                                    ; $75fe: $09
    inc b                                         ; $75ff: $04
    ld a, [hl]                                    ; $7600: $7e
    inc e                                         ; $7601: $1c
    ld a, [bc]                                    ; $7602: $0a
    inc b                                         ; $7603: $04
    ld a, [de]                                    ; $7604: $1a
    dec bc                                        ; $7605: $0b
    ld a, [hl]                                    ; $7606: $7e
    inc e                                         ; $7607: $1c
    cp a                                          ; $7608: $bf
    ld c, c                                       ; $7609: $49
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    ld a, [hl]                                    ; $760c: $7e
    inc e                                         ; $760d: $1c
    ld l, h                                       ; $760e: $6c

jr_0b9_760f:
    db $10                                        ; $760f: $10
    ld a, a                                       ; $7610: $7f
    add hl, sp                                    ; $7611: $39
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    add hl, de                                    ; $7614: $19
    ld [hl], $4c                                  ; $7615: $36 $4c
    db $10                                        ; $7617: $10
    ld a, a                                       ; $7618: $7f
    inc e                                         ; $7619: $1c
    ld bc, $cd00                                  ; $761a: $01 $00 $cd
    jr jr_0b9_75ba                                ; $761d: $18 $9b

    inc h                                         ; $761f: $24
    sub d                                         ; $7620: $92

jr_0b9_7621:
    dec d                                         ; $7621: $15
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    ld e, e                                       ; $7624: $5b
    jr jr_0b9_7621                                ; $7625: $18 $fa

jr_0b9_7627:
    ld a, [bc]                                    ; $7627: $0a
    add hl, bc                                    ; $7628: $09
    inc b                                         ; $7629: $04
    nop                                           ; $762a: $00
    jr nz, jr_0b9_7627                            ; $762b: $20 $fa

    ld a, [bc]                                    ; $762d: $0a
    ld a, [de]                                    ; $762e: $1a
    dec bc                                        ; $762f: $0b
    add hl, bc                                    ; $7630: $09
    inc b                                         ; $7631: $04
    ld a, [$1a0a]                                 ; $7632: $fa $0a $1a
    dec bc                                        ; $7635: $0b
    ld l, h                                       ; $7636: $6c
    db $10                                        ; $7637: $10
    ld a, a                                       ; $7638: $7f
    add hl, sp                                    ; $7639: $39
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    ld a, [$130a]                                 ; $763c: $fa $0a $13
    ld [$0407], sp                                ; $763f: $08 $07 $04
    jr nz, jr_0b9_7644                            ; $7642: $20 $00

jr_0b9_7644:
    adc e                                         ; $7644: $8b
    ld sp, $4a52                                  ; $7645: $31 $52 $4a
    sub c                                         ; $7648: $91
    jr jr_0b9_766d                                ; $7649: $18 $22

    inc b                                         ; $764b: $04
    ld c, l                                       ; $764c: $4d
    inc c                                         ; $764d: $0c
    ld a, a                                       ; $764e: $7f
    inc e                                         ; $764f: $1c
    adc h                                         ; $7650: $8c
    ld sp, $0000                                  ; $7651: $31 $00 $00
    ld e, c                                       ; $7654: $59
    inc d                                         ; $7655: $14
    push de                                       ; $7656: $d5
    dec l                                         ; $7657: $2d
    ld sp, hl                                     ; $7658: $f9
    ld a, [bc]                                    ; $7659: $0a
    ld [$fa04], sp                                ; $765a: $08 $04 $fa
    ld a, [bc]                                    ; $765d: $0a

jr_0b9_765e:
    dec d                                         ; $765e: $15
    db $10                                        ; $765f: $10
    ld a, a                                       ; $7660: $7f
    inc e                                         ; $7661: $1c
    nop                                           ; $7662: $00
    jr nz, jr_0b9_765e                            ; $7663: $20 $f9

    ld a, [bc]                                    ; $7665: $0a
    ld a, [$f90a]                                 ; $7666: $fa $0a $f9
    ld c, $d9                                     ; $7669: $0e $d9
    ld c, $f9                                     ; $766b: $0e $f9

jr_0b9_766d:
    ld a, [bc]                                    ; $766d: $0a
    ld a, [$f90a]                                 ; $766e: $fa $0a $f9
    ld c, $00                                     ; $7671: $0e $00
    nop                                           ; $7673: $00
    reti                                          ; $7674: $d9


    ld c, $f9                                     ; $7675: $0e $f9
    ld a, [bc]                                    ; $7677: $0a
    ld a, [$210a]                                 ; $7678: $fa $0a $21
    inc b                                         ; $767b: $04
    xor l                                         ; $767c: $ad
    dec [hl]                                      ; $767d: $35
    ld [$1021], sp                                ; $767e: $08 $21 $10
    ld b, d                                       ; $7681: $42
    ld [hl+], a                                   ; $7682: $22
    inc b                                         ; $7683: $04
    ld a, a                                       ; $7684: $7f
    inc e                                         ; $7685: $1c
    ld [$8f21], sp                                ; $7686: $08 $21 $8f
    jr jr_0b9_768b                                ; $7689: $18 $00

jr_0b9_768b:
    nop                                           ; $768b: $00
    sub [hl]                                      ; $768c: $96
    ld a, [bc]                                    ; $768d: $0a
    ld a, a                                       ; $768e: $7f
    inc e                                         ; $768f: $1c
    rr h                                          ; $7690: $cb $1c
    rlca                                          ; $7692: $07
    inc b                                         ; $7693: $04
    cp c                                          ; $7694: $b9
    ld c, $d9                                     ; $7695: $0e $d9
    ld c, $cb                                     ; $7697: $0e $cb
    inc e                                         ; $7699: $1c
    nop                                           ; $769a: $00
    jr nz, @-$25                                  ; $769b: $20 $d9

    ld c, $d9                                     ; $769d: $0e $d9
    ld c, $cb                                     ; $769f: $0e $cb
    inc e                                         ; $76a1: $1c
    cp c                                          ; $76a2: $b9
    ld c, $d9                                     ; $76a3: $0e $d9
    ld c, $08                                     ; $76a5: $0e $08
    ld hl, $4210                                  ; $76a7: $21 $10 $42
    nop                                           ; $76aa: $00
    nop                                           ; $76ab: $00
    ld sp, $b946                                  ; $76ac: $31 $46 $b9
    ld c, $6b                                     ; $76af: $0e $6b
    add hl, hl                                    ; $76b1: $29
    rst $20                                       ; $76b2: $e7
    inc e                                         ; $76b3: $1c
    rst $28                                       ; $76b4: $ef
    dec a                                         ; $76b5: $3d
    ld l, e                                       ; $76b6: $6b
    dec l                                         ; $76b7: $2d
    ld d, d                                       ; $76b8: $52
    ld c, d                                       ; $76b9: $4a
    ld h, e                                       ; $76ba: $63
    inc c                                         ; $76bb: $0c
    ld l, e                                       ; $76bc: $6b
    dec l                                         ; $76bd: $2d
    rst $20                                       ; $76be: $e7
    inc e                                         ; $76bf: $1c
    xor l                                         ; $76c0: $ad
    dec [hl]                                      ; $76c1: $35
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    ld [hl], $0c                                  ; $76c4: $36 $0c
    ld l, e                                       ; $76c6: $6b
    dec h                                         ; $76c7: $25
    cp c                                          ; $76c8: $b9
    ld c, $98                                     ; $76c9: $0e $98
    ld c, $99                                     ; $76cb: $0e $99
    ld c, $b9                                     ; $76cd: $0e $b9
    ld c, $b8                                     ; $76cf: $0e $b8
    ld c, $00                                     ; $76d1: $0e $00
    jr nz, jr_0b9_766d                            ; $76d3: $20 $98

    ld c, $99                                     ; $76d5: $0e $99
    ld c, $b9                                     ; $76d7: $0e $b9
    ld c, $98                                     ; $76d9: $0e $98
    ld c, $b8                                     ; $76db: $0e $b8
    ld c, $6b                                     ; $76dd: $0e $6b
    dec l                                         ; $76df: $2d
    ld d, d                                       ; $76e0: $52
    ld c, d                                       ; $76e1: $4a
    ld hl, $3104                                  ; $76e2: $21 $04 $31
    ld b, [hl]                                    ; $76e5: $46
    sbc b                                         ; $76e6: $98
    ld c, $73                                     ; $76e7: $0e $73
    ld c, [hl]                                    ; $76e9: $4e
    ld h, e                                       ; $76ea: $63
    inc c                                         ; $76eb: $0c
    ld l, e                                       ; $76ec: $6b
    dec l                                         ; $76ed: $2d
    db $10                                        ; $76ee: $10
    ld b, d                                       ; $76ef: $42
    add $18                                       ; $76f0: $c6 $18
    and l                                         ; $76f2: $a5
    inc d                                         ; $76f3: $14
    adc h                                         ; $76f4: $8c
    ld sp, $294a                                  ; $76f5: $31 $4a $29
    rst $28                                       ; $76f8: $ef
    dec a                                         ; $76f9: $3d
    nop                                           ; $76fa: $00
    nop                                           ; $76fb: $00
    ret c                                         ; $76fc: $d8

    add hl, bc                                    ; $76fd: $09
    ld c, h                                       ; $76fe: $4c
    inc d                                         ; $76ff: $14
    ld a, a                                       ; $7700: $7f
    inc e                                         ; $7701: $1c
    ld a, b                                       ; $7702: $78
    ld c, $98                                     ; $7703: $0e $98
    ld c, $4c                                     ; $7705: $0e $4c
    inc d                                         ; $7707: $14
    ld a, a                                       ; $7708: $7f
    inc e                                         ; $7709: $1c
    nop                                           ; $770a: $00
    jr nz, @+$7a                                  ; $770b: $20 $78

    ld c, $98                                     ; $770d: $0e $98
    ld c, $7f                                     ; $770f: $0e $7f
    inc e                                         ; $7711: $1c
    ld a, b                                       ; $7712: $78
    ld c, $6b                                     ; $7713: $0e $6b
    dec l                                         ; $7715: $2d
    db $10                                        ; $7716: $10
    ld b, d                                       ; $7717: $42
    add $18                                       ; $7718: $c6 $18
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    ld d, d                                       ; $771c: $52
    ld c, d                                       ; $771d: $4a
    ld a, b                                       ; $771e: $78
    ld c, $c6                                     ; $771f: $0e $c6
    inc d                                         ; $7721: $14
    ld hl, $2904                                  ; $7722: $21 $04 $29
    dec h                                         ; $7725: $25
    adc $39                                       ; $7726: $ce $39
    add l                                         ; $7728: $85
    db $10                                        ; $7729: $10
    add sp, $1c                                   ; $772a: $e8 $1c
    adc h                                         ; $772c: $8c
    ld sp, $420f                                  ; $772d: $31 $0f $42
    ld sp, HeaderSGBFlag                          ; $7730: $31 $46 $01
    nop                                           ; $7733: $00
    sub a                                         ; $7734: $97
    add hl, bc                                    ; $7735: $09
    dec l                                         ; $7736: $2d
    db $10                                        ; $7737: $10
    sbc a                                         ; $7738: $9f
    inc bc                                        ; $7739: $03
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    ld d, a                                       ; $773c: $57
    ld c, $2c                                     ; $773d: $0e $2c
    add hl, bc                                    ; $773f: $09
    ld a, b                                       ; $7740: $78

Call_0b9_7741:
    ld c, $00                                     ; $7741: $0e $00
    jr nz, jr_0b9_779c                            ; $7743: $20 $57

    ld c, $78                                     ; $7745: $0e $78
    ld c, $78                                     ; $7747: $0e $78
    ld c, $00                                     ; $7749: $0e $00
    nop                                           ; $774b: $00
    ld d, a                                       ; $774c: $57
    ld c, $06                                     ; $774d: $0e $06
    nop                                           ; $774f: $00
    add l                                         ; $7750: $85
    db $10                                        ; $7751: $10
    ld h, [hl]                                    ; $7752: $66
    ld [$3def], sp                                ; $7753: $08 $ef $3d
    ld l, e                                       ; $7756: $6b
    dec l                                         ; $7757: $2d
    ld d, d                                       ; $7758: $52
    ld c, d                                       ; $7759: $4a
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    and l                                         ; $775c: $a5
    inc d                                         ; $775d: $14
    ld b, d                                       ; $775e: $42
    ld [$2108], sp                                ; $775f: $08 $08 $21
    and l                                         ; $7762: $a5
    inc d                                         ; $7763: $14
    adc h                                         ; $7764: $8c
    ld sp, $252a                                  ; $7765: $31 $2a $25
    xor $3d                                       ; $7768: $ee $3d
    ld bc, $5704                                  ; $776a: $01 $04 $57
    ld b, $2c                                     ; $776d: $06 $2c
    inc d                                         ; $776f: $14
    rst $38                                       ; $7770: $ff
    inc bc                                        ; $7771: $03
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    scf                                           ; $7774: $37
    ld c, $57                                     ; $7775: $0e $57
    ld c, $ff                                     ; $7777: $0e $ff
    inc bc                                        ; $7779: $03
    nop                                           ; $777a: $00
    jr nz, @+$39                                  ; $777b: $20 $37

    ld c, $57                                     ; $777d: $0e $57
    ld c, $ff                                     ; $777f: $0e $ff
    inc bc                                        ; $7781: $03
    inc bc                                        ; $7782: $03
    nop                                           ; $7783: $00
    ld d, $0c                                     ; $7784: $16 $0c
    scf                                           ; $7786: $37
    ld c, $3e                                     ; $7787: $0e $3e
    dec [hl]                                      ; $7789: $35
    dec h                                         ; $778a: $25
    inc b                                         ; $778b: $04
    db $10                                        ; $778c: $10
    ld b, d                                       ; $778d: $42
    dec sp                                        ; $778e: $3b
    ld sp, $2106                                  ; $778f: $31 $06 $21
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    ld b, d                                       ; $7794: $42
    inc b                                         ; $7795: $04
    ld hl, $6304                                  ; $7796: $21 $04 $63
    inc c                                         ; $7799: $0c
    add h                                         ; $779a: $84
    db $10                                        ; $779b: $10

jr_0b9_779c:
    ld c, d                                       ; $779c: $4a
    add hl, hl                                    ; $779d: $29
    adc h                                         ; $779e: $8c
    ld sp, $18e6                                  ; $779f: $31 $e6 $18
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    ld e, c                                       ; $77a4: $59
    ld [bc], a                                    ; $77a5: $02
    add hl, hl                                    ; $77a6: $29
    dec h                                         ; $77a7: $25
    dec c                                         ; $77a8: $0d
    stop                                          ; $77a9: $10 $00
    nop                                           ; $77ab: $00
    rla                                           ; $77ac: $17
    ld c, $37                                     ; $77ad: $0e $37
    ld c, $0d                                     ; $77af: $0e $0d
    stop                                          ; $77b1: $10 $00
    jr nz, jr_0b9_77cb                            ; $77b3: $20 $16

    ld c, $37                                     ; $77b5: $0e $37
    ld c, $37                                     ; $77b7: $0e $37
    ld [de], a                                    ; $77b9: $12
    ld b, a                                       ; $77ba: $47
    inc b                                         ; $77bb: $04
    ld d, $0e                                     ; $77bc: $16 $0e
    ld a, $5b                                     ; $77be: $3e $5b
    rst $10                                       ; $77c0: $d7
    add hl, hl                                    ; $77c1: $29
    inc hl                                        ; $77c2: $23
    inc b                                         ; $77c3: $04
    ld d, $10                                     ; $77c4: $16 $10
    rlca                                          ; $77c6: $07
    ld hl, $397d                                  ; $77c7: $21 $7d $39
    nop                                           ; $77ca: $00

jr_0b9_77cb:
    nop                                           ; $77cb: $00
    dec bc                                        ; $77cc: $0b
    add hl, bc                                    ; $77cd: $09
    ld d, $12                                     ; $77ce: $16 $12
    ld hl, $4204                                  ; $77d0: $21 $04 $42
    ld [$2529], sp                                ; $77d3: $08 $29 $25
    and l                                         ; $77d6: $a5
    inc d                                         ; $77d7: $14
    adc h                                         ; $77d8: $8c
    ld sp, $0401                                  ; $77d9: $31 $01 $04
    ld [$0d21], sp                                ; $77dc: $08 $21 $0d
    db $10                                        ; $77df: $10
    ld l, e                                       ; $77e0: $6b
    dec l                                         ; $77e1: $2d
    nop                                           ; $77e2: $00
    nop                                           ; $77e3: $00
    ld [hl], b                                    ; $77e4: $70
    dec c                                         ; $77e5: $0d
    ld d, $0e                                     ; $77e6: $16 $0e
    ld d, $12                                     ; $77e8: $16 $12
    nop                                           ; $77ea: $00
    jr nz, @+$18                                  ; $77eb: $20 $16

    ld c, $16                                     ; $77ed: $0e $16
    ld [de], a                                    ; $77ef: $12
    ld d, $12                                     ; $77f0: $16 $12
    ld b, a                                       ; $77f2: $47
    inc b                                         ; $77f3: $04
    ld a, e                                       ; $77f4: $7b
    ld b, d                                       ; $77f5: $42
    sub [hl]                                      ; $77f6: $96
    dec h                                         ; $77f7: $25
    ld e, a                                       ; $77f8: $5f
    ld e, a                                       ; $77f9: $5f
    inc bc                                        ; $77fa: $03
    nop                                           ; $77fb: $00
    ld [hl], c                                    ; $77fc: $71
    inc d                                         ; $77fd: $14
    sub [hl]                                      ; $77fe: $96
    dec h                                         ; $77ff: $25
    ccf                                           ; $7800: $3f
    ld sp, $0000                                  ; $7801: $31 $00 $00
    or $11                                        ; $7804: $f6 $11
    ld hl, $1604                                  ; $7806: $21 $04 $16
    ld [de], a                                    ; $7809: $12
    ld b, d                                       ; $780a: $42
    ld [$2529], sp                                ; $780b: $08 $29 $25
    add $18                                       ; $780e: $c6 $18
    adc h                                         ; $7810: $8c
    ld sp, $0000                                  ; $7811: $31 $00 $00
    ld [$8421], sp                                ; $7814: $08 $21 $84
    db $10                                        ; $7817: $10
    ld c, d                                       ; $7818: $4a
    add hl, hl                                    ; $7819: $29
    nop                                           ; $781a: $00

jr_0b9_781b:
    nop                                           ; $781b: $00
    or $11                                        ; $781c: $f6 $11
    ld hl, $4104                                  ; $781e: $21 $04 $41
    inc b                                         ; $7821: $04
    nop                                           ; $7822: $00
    jr nz, jr_0b9_781b                            ; $7823: $20 $f6

    ld de, $0421                                  ; $7825: $11 $21 $04
    ld b, c                                       ; $7828: $41
    inc b                                         ; $7829: $04
    ld h, $00                                     ; $782a: $26 $00
    rst $10                                       ; $782c: $d7
    dec l                                         ; $782d: $2d
    cp l                                          ; $782e: $bd
    ld c, d                                       ; $782f: $4a
    sbc a                                         ; $7830: $9f
    ld h, a                                       ; $7831: $67

jr_0b9_7832:
    ld [bc], a                                    ; $7832: $02
    nop                                           ; $7833: $00
    ld a, h                                       ; $7834: $7c
    add hl, sp                                    ; $7835: $39
    jr jr_0b9_7848                                ; $7836: $18 $10

    ld a, [hl]                                    ; $7838: $7e
    ld e, a                                       ; $7839: $5f
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    or d                                          ; $783c: $b2
    dec c                                         ; $783d: $0d
    add l                                         ; $783e: $85
    inc b                                         ; $783f: $04
    sub $11                                       ; $7840: $d6 $11
    ld h, e                                       ; $7842: $63
    inc c                                         ; $7843: $0c
    ld c, d                                       ; $7844: $4a
    add hl, hl                                    ; $7845: $29
    adc $39                                       ; $7846: $ce $39

jr_0b9_7848:
    rst $20                                       ; $7848: $e7
    inc e                                         ; $7849: $1c
    jr nz, jr_0b9_7850                            ; $784a: $20 $04

    and l                                         ; $784c: $a5
    inc d                                         ; $784d: $14
    rst $20                                       ; $784e: $e7
    inc e                                         ; $784f: $1c

jr_0b9_7850:
    ld [$0021], sp                                ; $7850: $08 $21 $00
    nop                                           ; $7853: $00
    push de                                       ; $7854: $d5
    ld de, $0842                                  ; $7855: $11 $42 $08
    sub $11                                       ; $7858: $d6 $11
    nop                                           ; $785a: $00
    jr nz, jr_0b9_7832                            ; $785b: $20 $d5

    ld de, $11d6                                  ; $785d: $11 $d6 $11
    sub $11                                       ; $7860: $d6 $11

jr_0b9_7862:
    dec h                                         ; $7862: $25
    nop                                           ; $7863: $00
    add hl, sp                                    ; $7864: $39
    ld a, [hl-]                                   ; $7865: $3a
    sbc [hl]                                      ; $7866: $9e
    ld h, e                                       ; $7867: $63
    xor [hl]                                      ; $7868: $ae
    ld [$0004], sp                                ; $7869: $08 $04 $00
    ld a, e                                       ; $786c: $7b
    jr jr_0b9_7848                                ; $786d: $18 $d9

    dec b                                         ; $786f: $05
    ld a, a                                       ; $7870: $7f
    ld a, [hl-]                                   ; $7871: $3a
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    or l                                          ; $7874: $b5
    ld de, $0842                                  ; $7875: $11 $42 $08
    ld hl, $8404                                  ; $7878: $21 $04 $84
    db $10                                        ; $787b: $10
    adc h                                         ; $787c: $8c
    ld sp, $2529                                  ; $787d: $31 $29 $25
    adc $39                                       ; $7880: $ce $39
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    add $18                                       ; $7884: $c6 $18
    ld h, e                                       ; $7886: $63
    inc c                                         ; $7887: $0c
    ld [$2021], sp                                ; $7888: $08 $21 $20
    nop                                           ; $788b: $00
    or l                                          ; $788c: $b5
    ld de, $0c63                                  ; $788d: $11 $63 $0c
    push de                                       ; $7890: $d5
    ld de, $2000                                  ; $7891: $11 $00 $20
    or l                                          ; $7894: $b5
    ld de, $11d5                                  ; $7895: $11 $d5 $11
    push de                                       ; $7898: $d5
    ld de, $0003                                  ; $7899: $11 $03 $00
    or l                                          ; $789c: $b5
    ld hl, $4abc                                  ; $789d: $21 $bc $4a
    ld l, h                                       ; $78a0: $6c
    inc b                                         ; $78a1: $04
    inc bc                                        ; $78a2: $03
    nop                                           ; $78a3: $00
    sub l                                         ; $78a4: $95
    dec d                                         ; $78a5: $15
    db $ed                                        ; $78a6: $ed
    inc b                                         ; $78a7: $04
    dec a                                         ; $78a8: $3d
    ld [de], a                                    ; $78a9: $12
    jr nz, jr_0b9_78ac                            ; $78aa: $20 $00

jr_0b9_78ac:
    or l                                          ; $78ac: $b5
    ld de, $0c63                                  ; $78ad: $11 $63 $0c
    ld hl, $a404                                  ; $78b0: $21 $04 $a4
    db $10                                        ; $78b3: $10
    adc h                                         ; $78b4: $8c
    ld sp, $2108                                  ; $78b5: $31 $08 $21
    adc $39                                       ; $78b8: $ce $39
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    add $18                                       ; $78bc: $c6 $18
    ld h, e                                       ; $78be: $63
    inc c                                         ; $78bf: $0c
    ld [$4121], sp                                ; $78c0: $08 $21 $41
    nop                                           ; $78c3: $00
    dec l                                         ; $78c4: $2d
    dec c                                         ; $78c5: $0d
    sub l                                         ; $78c6: $95
    ld de, $1084                                  ; $78c7: $11 $84 $10
    nop                                           ; $78ca: $00
    jr nz, jr_0b9_7862                            ; $78cb: $20 $95

    ld de, $11b5                                  ; $78cd: $11 $b5 $11
    add h                                         ; $78d0: $84
    db $10                                        ; $78d1: $10
    ld bc, $5000                                  ; $78d2: $01 $00 $50
    ld [$1195], sp                                ; $78d5: $08 $95 $11
    rlca                                          ; $78d8: $07
    nop                                           ; $78d9: $00
    ld bc, $1300                                  ; $78da: $01 $00 $13
    dec c                                         ; $78dd: $0d
    dec a                                         ; $78de: $3d
    ld [de], a                                    ; $78df: $12
    adc h                                         ; $78e0: $8c
    inc b                                         ; $78e1: $04
    ld hl, $9504                                  ; $78e2: $21 $04 $95
    dec c                                         ; $78e5: $0d
    xor h                                         ; $78e6: $ac
    inc b                                         ; $78e7: $04
    ld a, [hl]                                    ; $78e8: $7e
    ld e, $a5                                     ; $78e9: $1e $a5
    inc d                                         ; $78eb: $14
    ld l, e                                       ; $78ec: $6b
    dec l                                         ; $78ed: $2d
    adc $39                                       ; $78ee: $ce $39
    add hl, hl                                    ; $78f0: $29
    dec h                                         ; $78f1: $25
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    dec d                                         ; $78f4: $15
    ld a, [bc]                                    ; $78f5: $0a
    rst $20                                       ; $78f6: $e7
    inc e                                         ; $78f7: $1c
    rst $38                                       ; $78f8: $ff
    inc bc                                        ; $78f9: $03
    jr nz, jr_0b9_78fc                            ; $78fa: $20 $00

jr_0b9_78fc:
    ld [hl], h                                    ; $78fc: $74
    ld de, $14a5                                  ; $78fd: $11 $a5 $14
    ld b, d                                       ; $7900: $42
    ld [$2000], sp                                ; $7901: $08 $00 $20
    sub h                                         ; $7904: $94
    ld de, $1195                                  ; $7905: $11 $95 $11
    ld b, d                                       ; $7908: $42
    ld [$0001], sp                                ; $7909: $08 $01 $00
    dec d                                         ; $790c: $15
    inc c                                         ; $790d: $0c
    ld [hl], h                                    ; $790e: $74
    ld de, $0006                                  ; $790f: $11 $06 $00
    ld [bc], a                                    ; $7912: $02
    nop                                           ; $7913: $00
    ld [hl], h                                    ; $7914: $74
    ld de, $145a                                  ; $7915: $11 $5a $14
    adc h                                         ; $7918: $8c
    inc b                                         ; $7919: $04
    ld b, d                                       ; $791a: $42
    ld [$0dd6], sp                                ; $791b: $08 $d6 $0d
    xor h                                         ; $791e: $ac
    inc b                                         ; $791f: $04
    ld a, [hl]                                    ; $7920: $7e
    ld e, $08                                     ; $7921: $1e $08
    ld hl, $39ce                                  ; $7923: $21 $ce $39
    xor h                                         ; $7926: $ac
    inc b                                         ; $7927: $04
    ld l, e                                       ; $7928: $6b
    dec l                                         ; $7929: $2d
    nop                                           ; $792a: $00
    nop                                           ; $792b: $00
    add $18                                       ; $792c: $c6 $18
    ld [$e721], sp                                ; $792e: $08 $21 $e7
    inc e                                         ; $7931: $1c
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    ld [hl], h                                    ; $7934: $74
    ld de, $18c6                                  ; $7935: $11 $c6 $18
    ld b, d                                       ; $7938: $42
    ld [$2000], sp                                ; $7939: $08 $00 $20
    ld [hl], h                                    ; $793c: $74
    ld de, $18c6                                  ; $793d: $11 $c6 $18
    ld b, d                                       ; $7940: $42
    ld [$0005], sp                                ; $7941: $08 $05 $00
    ld [hl], h                                    ; $7944: $74
    ld de, $0c16                                  ; $7945: $11 $16 $0c
    ld a, [hl-]                                   ; $7948: $3a
    inc d                                         ; $7949: $14
    ld b, $00                                     ; $794a: $06 $00
    ld [hl], h                                    ; $794c: $74
    ld de, $143a                                  ; $794d: $11 $3a $14
    ld a, a                                       ; $7950: $7f
    jr nz, @+$23                                  ; $7951: $20 $21

    inc b                                         ; $7953: $04
    cpl                                           ; $7954: $2f
    dec b                                         ; $7955: $05
    adc h                                         ; $7956: $8c
    inc b                                         ; $7957: $04
    ld [hl], h                                    ; $7958: $74
    dec c                                         ; $7959: $0d
    add sp, $24                                   ; $795a: $e8 $24
    adc h                                         ; $795c: $8c
    ld sp, $0cac                                  ; $795d: $31 $ac $0c
    adc $39                                       ; $7960: $ce $39
    nop                                           ; $7962: $00

jr_0b9_7963:
    nop                                           ; $7963: $00
    and l                                         ; $7964: $a5
    inc d                                         ; $7965: $14
    ld [$c621], sp                                ; $7966: $08 $21 $c6
    jr jr_0b9_796b                                ; $7969: $18 $00

jr_0b9_796b:
    nop                                           ; $796b: $00
    ld d, h                                       ; $796c: $54
    ld de, $18e6                                  ; $796d: $11 $e6 $18
    ld h, e                                       ; $7970: $63
    inc c                                         ; $7971: $0c
    nop                                           ; $7972: $00
    jr nz, jr_0b9_79c9                            ; $7973: $20 $54

    ld de, $1174                                  ; $7975: $11 $74 $11
    ld h, e                                       ; $7978: $63
    inc c                                         ; $7979: $0c
    sub b                                         ; $797a: $90
    ld b, $35                                     ; $797b: $06 $35
    inc bc                                        ; $797d: $03
    ld d, c                                       ; $797e: $51
    nop                                           ; $797f: $00
    ld bc, $03d8                                  ; $7980: $01 $d8 $03
    jr nz, jr_0b9_79cd                            ; $7983: $20 $48

    rlca                                          ; $7985: $07
    jr c, @+$01                                   ; $7986: $38 $ff

    dec c                                         ; $7988: $0d
    ld b, b                                       ; $7989: $40
    ld [bc], a                                    ; $798a: $02
    ccf                                           ; $798b: $3f
    ret nz                                        ; $798c: $c0

    rst $38                                       ; $798d: $ff
    nop                                           ; $798e: $00
    ldh [rNR23], a                                ; $798f: $e0 $18
    dec de                                        ; $7991: $1b
    jr z, @+$01                                   ; $7992: $28 $ff

    inc b                                         ; $7994: $04
    nop                                           ; $7995: $00
    rst $38                                       ; $7996: $ff
    nop                                           ; $7997: $00
    add b                                         ; $7998: $80
    ld [hl], b                                    ; $7999: $70
    ld c, [hl]                                    ; $799a: $4e
    jr z, jr_0b9_7a1c                             ; $799b: $28 $7f

    add b                                         ; $799d: $80
    and b                                         ; $799e: $a0
    ld c, $00                                     ; $799f: $0e $00
    ld a, h                                       ; $79a1: $7c
    ld e, h                                       ; $79a2: $5c
    jr nc, @+$41                                  ; $79a3: $30 $3f

    rst $38                                       ; $79a5: $ff
    nop                                           ; $79a6: $00
    cp $01                                        ; $79a7: $fe $01
    or h                                          ; $79a9: $b4
    ld l, d                                       ; $79aa: $6a
    ld b, b                                       ; $79ab: $40
    rst $38                                       ; $79ac: $ff
    ld c, b                                       ; $79ad: $48
    nop                                           ; $79ae: $00
    ld c, e                                       ; $79af: $4b
    ld b, b                                       ; $79b0: $40
    nop                                           ; $79b1: $00
    ld l, $00                                     ; $79b2: $2e $00
    ld a, a                                       ; $79b4: $7f
    add b                                         ; $79b5: $80
    add c                                         ; $79b6: $81
    adc d                                         ; $79b7: $8a
    ld c, b                                       ; $79b8: $48
    add b                                         ; $79b9: $80
    ld a, b                                       ; $79ba: $78
    rst $38                                       ; $79bb: $ff
    nop                                           ; $79bc: $00
    ld bc, $9c3e                                  ; $79bd: $01 $3e $9c
    ld c, b                                       ; $79c0: $48
    ld c, b                                       ; $79c1: $48
    ret nz                                        ; $79c2: $c0

    ld a, h                                       ; $79c3: $7c
    nop                                           ; $79c4: $00
    ld bc, $ae0e                                  ; $79c5: $01 $0e $ae
    ld d, b                                       ; $79c8: $50

jr_0b9_79c9:
    ret nz                                        ; $79c9: $c0

    db $fc                                        ; $79ca: $fc
    inc bc                                        ; $79cb: $03
    ld h, e                                       ; $79cc: $63

jr_0b9_79cd:
    rlca                                          ; $79cd: $07
    add b                                         ; $79ce: $80
    jr z, jr_0b9_79f7                             ; $79cf: $28 $26

    jr z, jr_0b9_7a03                             ; $79d1: $28 $30

    db $fc                                        ; $79d3: $fc
    inc bc                                        ; $79d4: $03
    sub h                                         ; $79d5: $94
    nop                                           ; $79d6: $00
    ld c, h                                       ; $79d7: $4c
    ld b, b                                       ; $79d8: $40
    nop                                           ; $79d9: $00
    inc bc                                        ; $79da: $03
    inc c                                         ; $79db: $0c
    ld a, a                                       ; $79dc: $7f
    add b                                         ; $79dd: $80
    cp $01                                        ; $79de: $fe $01
    ret nz                                        ; $79e0: $c0

    jr nc, jr_0b9_7963                            ; $79e1: $30 $80

    add sp, $40                                   ; $79e3: $e8 $40
    ld bc, $700f                                  ; $79e5: $01 $0f $70
    rst $38                                       ; $79e8: $ff
    nop                                           ; $79e9: $00
    ldh a, [$0e]                                  ; $79ea: $f0 $0e
    jr nz, jr_0b9_79ee                            ; $79ec: $20 $00

jr_0b9_79ee:
    ret nz                                        ; $79ee: $c0

    rst $20                                       ; $79ef: $e7
    ld b, b                                       ; $79f0: $40
    ld a, h                                       ; $79f1: $7c
    rst $38                                       ; $79f2: $ff
    nop                                           ; $79f3: $00
    ld hl, sp+$07                                 ; $79f4: $f8 $07
    xor h                                         ; $79f6: $ac

jr_0b9_79f7:
    ld sp, hl                                     ; $79f7: $f9
    ld d, b                                       ; $79f8: $50
    db $fc                                        ; $79f9: $fc
    ret nc                                        ; $79fa: $d0

    nop                                           ; $79fb: $00
    ld a, a                                       ; $79fc: $7f
    ld e, $49                                     ; $79fd: $1e $49
    ld [c], a                                     ; $79ff: $e2
    ld [$f000], sp                                ; $7a00: $08 $00 $f0

jr_0b9_7a03:
    jp hl                                         ; $7a03: $e9


    db $10                                        ; $7a04: $10
    ld h, b                                       ; $7a05: $60
    ld de, $2041                                  ; $7a06: $11 $41 $20
    db $10                                        ; $7a09: $10
    ccf                                           ; $7a0a: $3f
    jr nc, jr_0b9_7a55                            ; $7a0b: $30 $48

    inc bc                                        ; $7a0d: $03
    db $fc                                        ; $7a0e: $fc
    ld e, [hl]                                    ; $7a0f: $5e
    add hl, sp                                    ; $7a10: $39
    rrca                                          ; $7a11: $0f
    ldh [$1f], a                                  ; $7a12: $e0 $1f
    rra                                           ; $7a14: $1f

jr_0b9_7a15:
    ldh [$ce], a                                  ; $7a15: $e0 $ce
    ld c, b                                       ; $7a17: $48
    ld c, $00                                     ; $7a18: $0e $00
    ld [de], a                                    ; $7a1a: $12

jr_0b9_7a1b:
    ld c, c                                       ; $7a1b: $49

jr_0b9_7a1c:
    sub a                                         ; $7a1c: $97
    ld [$0208], sp                                ; $7a1d: $08 $08 $02
    rlca                                          ; $7a20: $07
    ld [$751f], sp                                ; $7a21: $08 $1f $75
    add hl, de                                    ; $7a24: $19
    inc b                                         ; $7a25: $04
    rra                                           ; $7a26: $1f
    jr nz, jr_0b9_7a29                            ; $7a27: $20 $00

jr_0b9_7a29:
    ld a, a                                       ; $7a29: $7f
    add b                                         ; $7a2a: $80
    db $fc                                        ; $7a2b: $fc
    ld [bc], a                                    ; $7a2c: $02
    ldh [rNR10], a                                ; $7a2d: $e0 $10
    add b                                         ; $7a2f: $80
    ld b, b                                       ; $7a30: $40
    ld [hl+], a                                   ; $7a31: $22
    rrca                                          ; $7a32: $0f
    jr nc, jr_0b9_7a3f                            ; $7a33: $30 $0a

    nop                                           ; $7a35: $00
    inc bc                                        ; $7a36: $03
    ldh [rNR10], a                                ; $7a37: $e0 $10
    call nc, $f828                                ; $7a39: $d4 $28 $f8
    db $10                                        ; $7a3c: $10
    rlca                                          ; $7a3d: $07
    ret nz                                        ; $7a3e: $c0

jr_0b9_7a3f:
    jr nz, @-$4a                                  ; $7a3f: $20 $b4

    ld c, c                                       ; $7a41: $49
    inc a                                         ; $7a42: $3c
    jp $0c03                                      ; $7a43: $c3 $03 $0c


    add c                                         ; $7a46: $81
    call nz, $8059                                ; $7a47: $c4 $59 $80
    ld h, b                                       ; $7a4a: $60
    jr nc, jr_0b9_7a15                            ; $7a4b: $30 $c8

    ld b, $09                                     ; $7a4d: $06 $09
    ld e, [hl]                                    ; $7a4f: $5e
    ld l, b                                       ; $7a50: $68
    db $10                                        ; $7a51: $10
    add b                                         ; $7a52: $80
    ld b, b                                       ; $7a53: $40
    nop                                           ; $7a54: $00

jr_0b9_7a55:
    inc b                                         ; $7a55: $04
    add hl, hl                                    ; $7a56: $29
    ret nz                                        ; $7a57: $c0

    ld [hl], b                                    ; $7a58: $70
    adc [hl]                                      ; $7a59: $8e
    inc bc                                        ; $7a5a: $03
    ld b, e                                       ; $7a5b: $43
    inc e                                         ; $7a5c: $1c
    ld hl, sp+$29                                 ; $7a5d: $f8 $29
    ld h, b                                       ; $7a5f: $60
    sbc b                                         ; $7a60: $98
    ld b, $19                                     ; $7a61: $06 $19
    and $51                                       ; $7a63: $e6 $51
    sub [hl]                                      ; $7a65: $96
    ld h, b                                       ; $7a66: $60
    inc bc                                        ; $7a67: $03
    ccf                                           ; $7a68: $3f
    nop                                           ; $7a69: $00
    ld a, h                                       ; $7a6a: $7c
    add d                                         ; $7a6b: $82
    ld hl, sp+$00                                 ; $7a6c: $f8 $00
    adc d                                         ; $7a6e: $8a
    ld [$60aa], sp                                ; $7a6f: $08 $aa $60
    nop                                           ; $7a72: $00
    ld h, b                                       ; $7a73: $60
    cp $01                                        ; $7a74: $fe $01
    ldh a, [$08]                                  ; $7a76: $f0 $08
    ret nz                                        ; $7a78: $c0

    jr nz, jr_0b9_7a93                            ; $7a79: $20 $18

    inc h                                         ; $7a7b: $24
    jr jr_0b9_7a9e                                ; $7a7c: $18 $20

    inc b                                         ; $7a7e: $04
    nop                                           ; $7a7f: $00
    jr c, jr_0b9_7aba                             ; $7a80: $38 $38

    inc l                                         ; $7a82: $2c
    ld a, [bc]                                    ; $7a83: $0a
    rlca                                          ; $7a84: $07
    jr jr_0b9_7a87                                ; $7a85: $18 $00

jr_0b9_7a87:
    ccf                                           ; $7a87: $3f
    ret nz                                        ; $7a88: $c0

    ld a, [bc]                                    ; $7a89: $0a
    ld a, [bc]                                    ; $7a8a: $0a
    adc h                                         ; $7a8b: $8c
    adc h                                         ; $7a8c: $8c
    ld a, [bc]                                    ; $7a8d: $0a
    ld a, [bc]                                    ; $7a8e: $0a
    jr nz, jr_0b9_7a1b                            ; $7a8f: $20 $8a

    adc d                                         ; $7a91: $8a
    ld l, h                                       ; $7a92: $6c

jr_0b9_7a93:
    add hl, hl                                    ; $7a93: $29
    jp $22c3                                      ; $7a94: $c3 $c3 $22


    ld [hl+], a                                   ; $7a97: $22
    inc hl                                        ; $7a98: $23
    db $10                                        ; $7a99: $10
    inc hl                                        ; $7a9a: $23
    jp nz, Jump_0b9_68c2                          ; $7a9b: $c2 $c2 $68

jr_0b9_7a9e:
    ld a, [hl+]                                   ; $7a9e: $2a
    ld d, b                                       ; $7a9f: $50
    ld d, b                                       ; $7aa0: $50
    ld d, c                                       ; $7aa1: $51
    ld d, c                                       ; $7aa2: $51
    ld [$a1a1], sp                                ; $7aa3: $08 $a1 $a1
    and b                                         ; $7aa6: $a0
    and b                                         ; $7aa7: $a0
    ld a, b                                       ; $7aa8: $78
    ld a, [hl+]                                   ; $7aa9: $2a
    ld hl, $5121                                  ; $7aaa: $21 $21 $51
    inc b                                         ; $7aad: $04
    ld d, c                                       ; $7aae: $51
    ld [hl], b                                    ; $7aaf: $70
    ld [hl], b                                    ; $7ab0: $70
    ld d, b                                       ; $7ab1: $50
    ld d, b                                       ; $7ab2: $50
    adc b                                         ; $7ab3: $88
    ld a, [hl+]                                   ; $7ab4: $2a
    ld [hl], c                                    ; $7ab5: $71
    ld [hl], c                                    ; $7ab6: $71
    inc bc                                        ; $7ab7: $03
    ld h, c                                       ; $7ab8: $61
    ld h, c                                       ; $7ab9: $61

jr_0b9_7aba:
    ld b, c                                       ; $7aba: $41
    ld b, c                                       ; $7abb: $41
    ld [hl], c                                    ; $7abc: $71
    ld [hl], c                                    ; $7abd: $71
    ld a, [de]                                    ; $7abe: $1a
    ld d, c                                       ; $7abf: $51
    add a                                         ; $7ac0: $87
    ld [bc], a                                    ; $7ac1: $02
    nop                                           ; $7ac2: $00
    rlca                                          ; $7ac3: $07
    nop                                           ; $7ac4: $00
    rrca                                          ; $7ac5: $0f
    nop                                           ; $7ac6: $00
    rrca                                          ; $7ac7: $0f
    db $10                                        ; $7ac8: $10
    ld e, $00                                     ; $7ac9: $1e $00
    ld bc, $413e                                  ; $7acb: $01 $3e $41
    db $fc                                        ; $7ace: $fc
    nop                                           ; $7acf: $00
    ldh a, [$08]                                  ; $7ad0: $f0 $08
    ldh [$bd], a                                  ; $7ad2: $e0 $bd
    ld bc, $3183                                  ; $7ad4: $01 $83 $31
    ld a, [hl-]                                   ; $7ad7: $3a
    rra                                           ; $7ad8: $1f
    rra                                           ; $7ad9: $1f
    rrca                                          ; $7ada: $0f
    db $10                                        ; $7adb: $10
    rlca                                          ; $7adc: $07
    ld [hl+], a                                   ; $7add: $22
    nop                                           ; $7ade: $00
    inc b                                         ; $7adf: $04
    ld [$d080], sp                                ; $7ae0: $08 $80 $d0
    ld a, [bc]                                    ; $7ae3: $0a
    rst $28                                       ; $7ae4: $ef
    rst $28                                       ; $7ae5: $ef
    rst $28                                       ; $7ae6: $ef
    jr z, jr_0b9_7af0                             ; $7ae7: $28 $07

    add h                                         ; $7ae9: $84
    add d                                         ; $7aea: $82
    inc b                                         ; $7aeb: $04
    add l                                         ; $7aec: $85
    add h                                         ; $7aed: $84
    adc d                                         ; $7aee: $8a
    adc b                                         ; $7aef: $88

jr_0b9_7af0:
    sub h                                         ; $7af0: $94
    ldh [$0a], a                                  ; $7af1: $e0 $0a
    ldh a, [$f0]                                  ; $7af3: $f0 $f0
    ld [de], a                                    ; $7af5: $12
    ret nc                                        ; $7af6: $d0

    jr nc, jr_0b9_7b39                            ; $7af7: $30 $40

    xor $11                                       ; $7af9: $ee $11
    dec c                                         ; $7afb: $0d
    dec c                                         ; $7afc: $0d
    ldh a, [$5a]                                  ; $7afd: $f0 $5a
    ldh a, [$c8]                                  ; $7aff: $f0 $c8
    ret nc                                        ; $7b01: $d0

    ld b, c                                       ; $7b02: $41
    ld a, [bc]                                    ; $7b03: $0a
    dec bc                                        ; $7b04: $0b
    ld a, b                                       ; $7b05: $78
    ld a, b                                       ; $7b06: $78
    db $10                                        ; $7b07: $10
    dec de                                        ; $7b08: $1b

jr_0b9_7b09:
    ld [bc], a                                    ; $7b09: $02
    inc bc                                        ; $7b0a: $03
    dec b                                         ; $7b0b: $05
    ld b, b                                       ; $7b0c: $40
    ld b, $1a                                     ; $7b0d: $06 $1a
    dec sp                                        ; $7b0f: $3b
    ld h, b                                       ; $7b10: $60
    ld a, b                                       ; $7b11: $78
    ld a, c                                       ; $7b12: $79
    adc c                                         ; $7b13: $89
    di                                            ; $7b14: $f3
    ld [bc], a                                    ; $7b15: $02
    ld [bc], a                                    ; $7b16: $02
    ldh a, [rP1]                                  ; $7b17: $f0 $00
    ld hl, sp+$08                                 ; $7b19: $f8 $08
    ld hl, sp+$08                                 ; $7b1b: $f8 $08
    ld [$0813], sp                                ; $7b1d: $08 $13 $08
    nop                                           ; $7b20: $00
    rlca                                          ; $7b21: $07
    inc b                                         ; $7b22: $04
    db $e3                                        ; $7b23: $e3
    ld h, h                                       ; $7b24: $64
    ld [hl], a                                    ; $7b25: $77
    sub b                                         ; $7b26: $90
    ld c, a                                       ; $7b27: $4f
    xor b                                         ; $7b28: $a8
    jr nz, @-$37                                  ; $7b29: $20 $c7

    jr z, jr_0b9_7b09                             ; $7b2b: $28 $dc

    ld de, $b010                                  ; $7b2d: $11 $10 $b0
    ld [hl], b                                    ; $7b30: $70
    ret nz                                        ; $7b31: $c0

    ld b, b                                       ; $7b32: $40
    adc c                                         ; $7b33: $89
    pop bc                                        ; $7b34: $c1
    ld [bc], a                                    ; $7b35: $02
    add b                                         ; $7b36: $80
    sub d                                         ; $7b37: $92
    sbc [hl]                                      ; $7b38: $9e

jr_0b9_7b39:
    ld d, b                                       ; $7b39: $50
    ld e, e                                       ; $7b3a: $5b
    ld a, [de]                                    ; $7b3b: $1a
    ld e, $60                                     ; $7b3c: $1e $60
    dec de                                        ; $7b3e: $1b
    dec b                                         ; $7b3f: $05
    ld c, $0f                                     ; $7b40: $0e $0f
    rlca                                          ; $7b42: $07
    ld [$4d03], sp                                ; $7b43: $08 $03 $4d
    inc bc                                        ; $7b46: $03
    dec de                                        ; $7b47: $1b
    jr z, jr_0b9_7b53                             ; $7b48: $28 $09

    ld bc, $6000                                  ; $7b4a: $01 $00 $60
    ld h, b                                       ; $7b4d: $60
    ret nz                                        ; $7b4e: $c0

    jr nz, @-$7e                                  ; $7b4f: $20 $80

    ld b, b                                       ; $7b51: $40

jr_0b9_7b52:
    ld [bc], a                                    ; $7b52: $02

jr_0b9_7b53:
    ld [$8638], sp                                ; $7b53: $08 $38 $86

jr_0b9_7b56:
    ld b, a                                       ; $7b56: $47
    add b                                         ; $7b57: $80
    ld e, e                                       ; $7b58: $5b
    and [hl]                                      ; $7b59: $a6
    jr jr_0b9_7b52                                ; $7b5a: $18 $f6

    ld b, d                                       ; $7b5c: $42
    ret nz                                        ; $7b5d: $c0

    ld b, h                                       ; $7b5e: $44
    ld b, h                                       ; $7b5f: $44
    ld [bc], a                                    ; $7b60: $02
    ld l, h                                       ; $7b61: $6c
    ld l, h                                       ; $7b62: $6c
    ld d, h                                       ; $7b63: $54
    ld d, h                                       ; $7b64: $54
    ld b, h                                       ; $7b65: $44
    ld b, h                                       ; $7b66: $44
    xor b                                         ; $7b67: $a8
    and e                                         ; $7b68: $a3
    ld b, b                                       ; $7b69: $40
    ld d, b                                       ; $7b6a: $50
    add b                                         ; $7b6b: $80
    ld bc, $e010                                  ; $7b6c: $01 $10 $e0
    ld e, h                                       ; $7b6f: $5c
    ld [hl-], a                                   ; $7b70: $32
    db $10                                        ; $7b71: $10
    db $10                                        ; $7b72: $10
    jr z, jr_0b9_7b9d                             ; $7b73: $28 $28

    jr @+$3a                                      ; $7b75: $18 $38

    jr c, @+$2a                                   ; $7b77: $38 $28

    sbc b                                         ; $7b79: $98
    db $10                                        ; $7b7a: $10
    call c, $8e0b                                 ; $7b7b: $dc $0b $8e
    adc [hl]                                      ; $7b7e: $8e
    add h                                         ; $7b7f: $84
    ret nz                                        ; $7b80: $c0

    ld bc, $e810                                  ; $7b81: $01 $10 $e8
    dec hl                                        ; $7b84: $2b
    jr nc, @+$32                                  ; $7b85: $30 $30

    ld b, b                                       ; $7b87: $40
    ld b, b                                       ; $7b88: $40
    ld e, b                                       ; $7b89: $58
    ld e, b                                       ; $7b8a: $58
    ld b, [hl]                                    ; $7b8b: $46
    jr nc, @+$12                                  ; $7b8c: $30 $10

    inc sp                                        ; $7b8e: $33
    add h                                         ; $7b8f: $84
    add h                                         ; $7b90: $84
    ld b, h                                       ; $7b91: $44
    ld bc, $2000                                  ; $7b92: $01 $00 $20
    jr c, @+$03                                   ; $7b95: $38 $01

    call $2001                                    ; $7b97: $cd $01 $20
    ld [hl], e                                    ; $7b9a: $73
    dec bc                                        ; $7b9b: $0b
    nop                                           ; $7b9c: $00

jr_0b9_7b9d:
    jr c, jr_0b9_7bf0                             ; $7b9d: $38 $51

    ld hl, $4218                                  ; $7b9f: $21 $18 $42
    jr c, jr_0b9_7bb9                             ; $7ba2: $38 $15

    nop                                           ; $7ba4: $00
    ld [bc], a                                    ; $7ba5: $02
    ld [hl], b                                    ; $7ba6: $70
    ld [$8070], sp                                ; $7ba7: $08 $70 $80
    ldh [rNR10], a                                ; $7baa: $e0 $10
    add h                                         ; $7bac: $84
    ld sp, $b080                                  ; $7bad: $31 $80 $b0
    ld [hl], b                                    ; $7bb0: $70
    inc de                                        ; $7bb1: $13
    ld bc, $02c0                                  ; $7bb2: $01 $c0 $02
    and d                                         ; $7bb5: $a2
    ld bc, $01c6                                  ; $7bb6: $01 $c6 $01

jr_0b9_7bb9:
    db $dd                                        ; $7bb9: $dd
    ld a, [hl-]                                   ; $7bba: $3a
    inc b                                         ; $7bbb: $04
    cp $19                                        ; $7bbc: $fe $19
    dec c                                         ; $7bbe: $0d
    ld a, [bc]                                    ; $7bbf: $0a
    rlca                                          ; $7bc0: $07
    ld c, [hl]                                    ; $7bc1: $4e
    inc hl                                        ; $7bc2: $23
    push af                                       ; $7bc3: $f5
    ld e, $02                                     ; $7bc4: $1e $02

jr_0b9_7bc6:
    ld d, c                                       ; $7bc6: $51
    ld [c], a                                     ; $7bc7: $e2
    cp a                                          ; $7bc8: $bf
    jr c, jr_0b9_7b56                             ; $7bc9: $38 $8b

    adc a                                         ; $7bcb: $8f
    ld l, b                                       ; $7bcc: $68
    inc l                                         ; $7bcd: $2c
    xor a                                         ; $7bce: $af
    ld bc, $ea78                                  ; $7bcf: $01 $78 $ea
    cpl                                           ; $7bd2: $2f
    call nz, $8129                                ; $7bd3: $c4 $29 $81
    add c                                         ; $7bd6: $81
    ld a, b                                       ; $7bd7: $78
    inc l                                         ; $7bd8: $2c
    nop                                           ; $7bd9: $00
    inc e                                         ; $7bda: $1c
    ld [hl+], a                                   ; $7bdb: $22
    inc a                                         ; $7bdc: $3c
    ld [bc], a                                    ; $7bdd: $02
    inc a                                         ; $7bde: $3c
    nop                                           ; $7bdf: $00
    jr c, @+$06                                   ; $7be0: $38 $04

    ld bc, $0438                                  ; $7be2: $01 $38 $04
    jr jr_0b9_7c0b                                ; $7be5: $18 $24

    jr jr_0b9_7c0d                                ; $7be7: $18 $24

    inc c                                         ; $7be9: $0c
    ret z                                         ; $7bea: $c8

    ld sp, $d080                                  ; $7beb: $31 $80 $d0
    add hl, hl                                    ; $7bee: $29
    ret nc                                        ; $7bef: $d0

jr_0b9_7bf0:
    add sp, -$20                                  ; $7bf0: $e8 $e0
    sub b                                         ; $7bf2: $90
    ldh [rNR10], a                                ; $7bf3: $e0 $10
    ldh a, [rP1]                                  ; $7bf5: $f0 $00
    ld [$c4bc], sp                                ; $7bf7: $08 $bc $c4
    ld e, $22                                     ; $7bfa: $1e $22
    rrca                                          ; $7bfc: $0f
    ld de, $000f                                  ; $7bfd: $11 $0f $00
    nop                                           ; $7c00: $00
    inc l                                         ; $7c01: $2c
    ld sp, $407f                                  ; $7c02: $31 $7f $40
    inc c                                         ; $7c05: $0c
    ld [de], a                                    ; $7c06: $12
    inc c                                         ; $7c07: $0c
    ld b, b                                       ; $7c08: $40
    db $10                                        ; $7c09: $10
    ld [bc], a                                    ; $7c0a: $02

jr_0b9_7c0b:
    jr @-$72                                      ; $7c0b: $18 $8c

jr_0b9_7c0d:
    sub b                                         ; $7c0d: $90
    jp hl                                         ; $7c0e: $e9


    add hl, de                                    ; $7c0f: $19

jr_0b9_7c10:
    inc sp                                        ; $7c10: $33
    jp z, Jump_000_1904                           ; $7c11: $ca $04 $19

    ld [hl+], a                                   ; $7c14: $22
    rra                                           ; $7c15: $1f
    inc h                                         ; $7c16: $24
    dec sp                                        ; $7c17: $3b
    ld [bc], a                                    ; $7c18: $02
    jr nz, jr_0b9_7c95                            ; $7c19: $20 $7a

    add a                                         ; $7c1b: $87
    ld [bc], a                                    ; $7c1c: $02
    sub a                                         ; $7c1d: $97
    ld e, c                                       ; $7c1e: $59
    rlca                                          ; $7c1f: $07
    add b                                         ; $7c20: $80
    add e                                         ; $7c21: $83
    add h                                         ; $7c22: $84
    ld l, [hl]                                    ; $7c23: $6e
    add hl, bc                                    ; $7c24: $09
    add e                                         ; $7c25: $83
    nop                                           ; $7c26: $00
    add b                                         ; $7c27: $80
    inc bc                                        ; $7c28: $03
    add b                                         ; $7c29: $80
    di                                            ; $7c2a: $f3
    inc b                                         ; $7c2b: $04
    pop hl                                        ; $7c2c: $e1
    ld [bc], a                                    ; $7c2d: $02
    ld [hl], e                                    ; $7c2e: $73
    nop                                           ; $7c2f: $00
    sub d                                         ; $7c30: $92
    ld h, c                                       ; $7c31: $61
    sub b                                         ; $7c32: $90
    or e                                          ; $7c33: $b3
    ld b, d                                       ; $7c34: $42
    ld sp, hl                                     ; $7c35: $f9
    ld c, d                                       ; $7c36: $4a
    or [hl]                                       ; $7c37: $b6
    nop                                           ; $7c38: $00
    dec c                                         ; $7c39: $0d
    ld a, [de]                                    ; $7c3a: $1a
    and h                                         ; $7c3b: $a4
    rst $28                                       ; $7c3c: $ef
    jr z, jr_0b9_7bc6                             ; $7c3d: $28 $87

    dec b                                         ; $7c3f: $05
    jp nz, $4400                                  ; $7c40: $c2 $00 $44

    add h                                         ; $7c43: $84
    ld b, d                                       ; $7c44: $42
    db $e4                                        ; $7c45: $e4
    jr z, jr_0b9_7c10                             ; $7c46: $28 $c8

    inc h                                         ; $7c48: $24
    ld a, h                                       ; $7c49: $7c
    nop                                           ; $7c4a: $00
    sub h                                         ; $7c4b: $94
    ld hl, sp-$80                                 ; $7c4c: $f8 $80
    ld a, c                                       ; $7c4e: $79
    adc c                                         ; $7c4f: $89
    ld [hl], b                                    ; $7c50: $70
    adc c                                         ; $7c51: $89
    di                                            ; $7c52: $f3
    nop                                           ; $7c53: $00
    adc d                                         ; $7c54: $8a
    ld hl, sp-$7d                                 ; $7c55: $f8 $83
    ld a, e                                       ; $7c57: $7b
    ld bc, $067c                                  ; $7c58: $01 $7c $06
    ld a, [hl]                                    ; $7c5b: $7e
    nop                                           ; $7c5c: $00
    ld [bc], a                                    ; $7c5d: $02
    inc a                                         ; $7c5e: $3c
    ld b, b                                       ; $7c5f: $40
    rst $28                                       ; $7c60: $ef
    nop                                           ; $7c61: $00
    cp $11                                        ; $7c62: $fe $11
    rst $38                                       ; $7c64: $ff
    nop                                           ; $7c65: $00
    add c                                         ; $7c66: $81
    rst $38                                       ; $7c67: $ff
    add c                                         ; $7c68: $81
    ld a, [hl]                                    ; $7c69: $7e
    inc bc                                        ; $7c6a: $03
    ld a, a                                       ; $7c6b: $7f
    inc bc                                        ; $7c6c: $03
    add hl, sp                                    ; $7c6d: $39
    nop                                           ; $7c6e: $00
    ld b, l                                       ; $7c6f: $45
    ld a, a                                       ; $7c70: $7f
    ld b, a                                       ; $7c71: $47
    ld h, a                                       ; $7c72: $67
    ld a, b                                       ; $7c73: $78
    rst $38                                       ; $7c74: $ff
    add h                                         ; $7c75: $84
    rst $08                                       ; $7c76: $cf
    nop                                           ; $7c77: $00
    ld c, d                                       ; $7c78: $4a
    dec d                                         ; $7c79: $15
    sub b                                         ; $7c7a: $90
    add hl, de                                    ; $7c7b: $19
    and h                                         ; $7c7c: $a4
    dec sp                                        ; $7c7d: $3b
    and d                                         ; $7c7e: $a2
    add e                                         ; $7c7f: $83
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    adc e                                         ; $7c82: $8b
    ld c, h                                       ; $7c83: $4c
    ccf                                           ; $7c84: $3f
    ld b, e                                       ; $7c85: $43
    dec a                                         ; $7c86: $3d
    and d                                         ; $7c87: $a2
    cp $02                                        ; $7c88: $fe $02
    ld h, c                                       ; $7c8a: $61
    db $fc                                        ; $7c8b: $fc
    ld h, b                                       ; $7c8c: $60
    cp h                                          ; $7c8d: $bc
    ld h, b                                       ; $7c8e: $60
    db $fc                                        ; $7c8f: $fc
    ld [bc], a                                    ; $7c90: $02
    nop                                           ; $7c91: $00
    inc e                                         ; $7c92: $1c
    nop                                           ; $7c93: $00
    and b                                         ; $7c94: $a0

jr_0b9_7c95:
    ld d, c                                       ; $7c95: $51
    or c                                          ; $7c96: $b1
    push af                                       ; $7c97: $f5
    rlca                                          ; $7c98: $07
    ld a, d                                       ; $7c99: $7a
    adc h                                         ; $7c9a: $8c
    inc a                                         ; $7c9b: $3c
    nop                                           ; $7c9c: $00
    ld c, l                                       ; $7c9d: $4d
    ld [hl], l                                    ; $7c9e: $75
    ld b, d                                       ; $7c9f: $42
    ld [hl], a                                    ; $7ca0: $77
    ld b, h                                       ; $7ca1: $44
    ld h, e                                       ; $7ca2: $63
    ld d, b                                       ; $7ca3: $50
    ld [hl], c                                    ; $7ca4: $71
    nop                                           ; $7ca5: $00
    ld d, d                                       ; $7ca6: $52
    rst $38                                       ; $7ca7: $ff
    ld d, h                                       ; $7ca8: $54
    inc sp                                        ; $7ca9: $33
    or b                                          ; $7caa: $b0
    ld c, a                                       ; $7cab: $4f
    or h                                          ; $7cac: $b4
    add a                                         ; $7cad: $87
    nop                                           ; $7cae: $00
    ld [$908f], sp                                ; $7caf: $08 $8f $90
    sbc e                                         ; $7cb2: $9b
    sub h                                         ; $7cb3: $94
    add a                                         ; $7cb4: $87
    add h                                         ; $7cb5: $84
    add a                                         ; $7cb6: $87
    nop                                           ; $7cb7: $00
    inc b                                         ; $7cb8: $04
    rst $08                                       ; $7cb9: $cf
    ld c, c                                       ; $7cba: $49
    sbc $52                                       ; $7cbb: $de $52
    rst $08                                       ; $7cbd: $cf
    ld d, e                                       ; $7cbe: $53
    cp $00                                        ; $7cbf: $fe $00
    ld h, c                                       ; $7cc1: $61
    cp $62                                        ; $7cc2: $fe $62
    db $fc                                        ; $7cc4: $fc
    ld h, d                                       ; $7cc5: $62
    adc a                                         ; $7cc6: $8f
    ld d, c                                       ; $7cc7: $51
    sbc a                                         ; $7cc8: $9f
    nop                                           ; $7cc9: $00
    ld d, b                                       ; $7cca: $50
    rst $20                                       ; $7ccb: $e7
    add b                                         ; $7ccc: $80
    ld h, c                                       ; $7ccd: $61
    ld [de], a                                    ; $7cce: $12
    pop de                                        ; $7ccf: $d1
    ld [hl-], a                                   ; $7cd0: $32
    pop af                                        ; $7cd1: $f1
    nop                                           ; $7cd2: $00
    jp z, Jump_0b9_5229                           ; $7cd3: $ca $29 $52

    add hl, hl                                    ; $7cd6: $29
    ld [hl+], a                                   ; $7cd7: $22
    ld de, $d51a                                  ; $7cd8: $11 $1a $d5
    nop                                           ; $7cdb: $00
    xor $c8                                       ; $7cdc: $ee $c8
    ld [$44b8], sp                                ; $7cde: $08 $b8 $44
    add $22                                       ; $7ce1: $c6 $22
    sbc $00                                       ; $7ce3: $de $00
    ld a, [de]                                    ; $7ce5: $1a
    sbc [hl]                                      ; $7ce6: $9e
    ld b, d                                       ; $7ce7: $42
    adc h                                         ; $7ce8: $8c
    ld d, h                                       ; $7ce9: $54
    add b                                         ; $7cea: $80
    ld b, b                                       ; $7ceb: $40
    add $00                                       ; $7cec: $c6 $00
    ld b, $00                                     ; $7cee: $06 $00
    jr nz, jr_0b9_7cf2                            ; $7cf0: $20 $00

jr_0b9_7cf2:
    jr nc, jr_0b9_7d04                            ; $7cf2: $30 $10

    nop                                           ; $7cf4: $00
    db $10                                        ; $7cf5: $10
    db $10                                        ; $7cf6: $10
    ld [$0018], sp                                ; $7cf7: $08 $18 $00
    ld [bc], a                                    ; $7cfa: $02
    nop                                           ; $7cfb: $00
    jr nz, jr_0b9_7d16                            ; $7cfc: $20 $18

    jr nz, @-$0f                                  ; $7cfe: $20 $ef

    ld b, d                                       ; $7d00: $42
    jr z, @+$1e                                   ; $7d01: $28 $1c

    dec b                                         ; $7d03: $05

Call_0b9_7d04:
jr_0b9_7d04:
    add h                                         ; $7d04: $84
    ld [hl], e                                    ; $7d05: $73
    ld [hl], h                                    ; $7d06: $74
    ld b, $90                                     ; $7d07: $06 $90
    ld [hl+], a                                   ; $7d09: $22
    ld a, a                                       ; $7d0a: $7f
    inc bc                                        ; $7d0b: $03
    ld e, [hl]                                    ; $7d0c: $5e
    ld l, $13                                     ; $7d0d: $2e $13
    inc a                                         ; $7d0f: $3c
    jr nz, jr_0b9_7d1a                            ; $7d10: $20 $08

    adc b                                         ; $7d12: $88
    ld [de], a                                    ; $7d13: $12
    cp h                                          ; $7d14: $bc
    dec c                                         ; $7d15: $0d

jr_0b9_7d16:
    ld bc, $609c                                  ; $7d16: $01 $9c $60
    sbc h                                         ; $7d19: $9c

jr_0b9_7d1a:
    and b                                         ; $7d1a: $a0
    ccf                                           ; $7d1b: $3f
    ld b, c                                       ; $7d1c: $41
    ld bc, $34aa                                  ; $7d1d: $01 $aa $34
    nop                                           ; $7d20: $00
    ld a, [hl]                                    ; $7d21: $7e
    ld bc, $fef6                                  ; $7d22: $01 $f6 $fe
    ld d, c                                       ; $7d25: $51
    sbc e                                         ; $7d26: $9b
    jp nz, $82da                                  ; $7d27: $c2 $da $82

    ret c                                         ; $7d2a: $d8

    dec l                                         ; $7d2b: $2d
    ld a, c                                       ; $7d2c: $79
    ld b, d                                       ; $7d2d: $42
    ld sp, $3809                                  ; $7d2e: $31 $09 $38
    ld l, $30                                     ; $7d31: $2e $30
    nop                                           ; $7d33: $00
    nop                                           ; $7d34: $00
    nop                                           ; $7d35: $00
    ld a, $42                                     ; $7d36: $3e $42
    ld a, h                                       ; $7d38: $7c
    ld b, d                                       ; $7d39: $42
    ld a, [hl]                                    ; $7d3a: $7e
    ld b, d                                       ; $7d3b: $42
    jr nc, jr_0b9_7d7e                            ; $7d3c: $30 $40

    ld [$2a02], sp                                ; $7d3e: $08 $02 $2a
    ld [hl], b                                    ; $7d41: $70
    ld [$4030], sp                                ; $7d42: $08 $30 $40
    ld h, b                                       ; $7d45: $60
    ld d, b                                       ; $7d46: $50
    ld b, b                                       ; $7d47: $40
    db $10                                        ; $7d48: $10
    jr nz, jr_0b9_7d80                            ; $7d49: $20 $35

    sbc h                                         ; $7d4b: $9c
    add d                                         ; $7d4c: $82
    inc c                                         ; $7d4d: $0c
    db $10                                        ; $7d4e: $10
    jr jr_0b9_7d65                                ; $7d4f: $18 $14

    ld b, b                                       ; $7d51: $40
    inc b                                         ; $7d52: $04
    ld d, h                                       ; $7d53: $54
    inc [hl]                                      ; $7d54: $34
    add e                                         ; $7d55: $83
    nop                                           ; $7d56: $00
    jp $c744                                      ; $7d57: $c3 $44 $c7


    add hl, hl                                    ; $7d5a: $29
    ld b, b                                       ; $7d5b: $40
    ld hl, sp+$40                                 ; $7d5c: $f8 $40
    ld [hl-], a                                   ; $7d5e: $32
    ccf                                           ; $7d5f: $3f
    inc h                                         ; $7d60: $24
    add hl, sp                                    ; $7d61: $39
    ld [hl+], a                                   ; $7d62: $22
    ld e, b                                       ; $7d63: $58
    ld h, l                                       ; $7d64: $65

jr_0b9_7d65:
    jr nz, @+$40                                  ; $7d65: $20 $3e

    ld b, d                                       ; $7d67: $42
    jr c, jr_0b9_7d98                             ; $7d68: $38 $2e

    call z, $ec50                                 ; $7d6a: $cc $50 $ec
    jr nc, @-$01                                  ; $7d6d: $30 $fd

    ld b, b                                       ; $7d6f: $40
    inc bc                                        ; $7d70: $03
    sbc $3d                                       ; $7d71: $de $3d
    rrca                                          ; $7d73: $0f
    ld [$8487], sp                                ; $7d74: $08 $87 $84
    xor a                                         ; $7d77: $af
    ld l, h                                       ; $7d78: $6c
    ld h, c                                       ; $7d79: $61
    rst $08                                       ; $7d7a: $cf
    add b                                         ; $7d7b: $80
    ld [hl-], a                                   ; $7d7c: $32
    sbc b                                         ; $7d7d: $98

jr_0b9_7d7e:
    dec bc                                        ; $7d7e: $0b
    rla                                           ; $7d7f: $17

jr_0b9_7d80:
    jr @+$11                                      ; $7d80: $18 $0f

    db $10                                        ; $7d82: $10
    ld l, b                                       ; $7d83: $68
    ld l, [hl]                                    ; $7d84: $6e
    and b                                         ; $7d85: $a0
    rst $28                                       ; $7d86: $ef
    dec b                                         ; $7d87: $05
    ret nz                                        ; $7d88: $c0

    db $ec                                        ; $7d89: $ec
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    inc c                                         ; $7d8c: $0c
    db $10                                        ; $7d8d: $10
    inc b                                         ; $7d8e: $04
    ld a, [bc]                                    ; $7d8f: $0a
    ld [$0502], sp                                ; $7d90: $08 $02 $05
    ld bc, $0e02                                  ; $7d93: $01 $02 $0e
    dec l                                         ; $7d96: $2d
    nop                                           ; $7d97: $00

jr_0b9_7d98:
    ld [bc], a                                    ; $7d98: $02
    dec l                                         ; $7d99: $2d

jr_0b9_7d9a:
    ld bc, $0020                                  ; $7d9a: $01 $20 $00
    rst $38                                       ; $7d9d: $ff
    ld [bc], a                                    ; $7d9e: $02
    ld e, b                                       ; $7d9f: $58
    ld [hl], b                                    ; $7da0: $70
    rst $18                                       ; $7da1: $df
    ldh [$3f], a                                  ; $7da2: $e0 $3f
    ldh [rSC], a                                  ; $7da4: $e0 $02
    cp a                                          ; $7da6: $bf
    ld h, b                                       ; $7da7: $60
    rst $18                                       ; $7da8: $df
    jr c, jr_0b9_7d9a                             ; $7da9: $38 $ef

    db $10                                        ; $7dab: $10
    ld a, [de]                                    ; $7dac: $1a
    db $10                                        ; $7dad: $10
    ld [bc], a                                    ; $7dae: $02
    nop                                           ; $7daf: $00
    db $fd                                        ; $7db0: $fd
    ld [bc], a                                    ; $7db1: $02
    db $fd                                        ; $7db2: $fd
    ld b, d                                       ; $7db3: $42
    db $fd                                        ; $7db4: $fd
    ld b, e                                       ; $7db5: $43
    cp l                                          ; $7db6: $bd
    rst $08                                       ; $7db7: $cf
    ld b, b                                       ; $7db8: $40
    jr c, jr_0b9_7de5                             ; $7db9: $38 $2a

    jr @+$07                                      ; $7dbb: $18 $05

    ld a, [$78c7]                                 ; $7dbd: $fa $c7 $78
    dec b                                         ; $7dc0: $05
    ld a, [$0502]                                 ; $7dc1: $fa $02 $05
    ei                                            ; $7dc4: $fb
    rra                                           ; $7dc5: $1f
    ldh a, [$c0]                                  ; $7dc6: $f0 $c0
    ld a, a                                       ; $7dc8: $7f
    inc a                                         ; $7dc9: $3c
    ld [$04c0], sp                                ; $7dca: $08 $c0 $04
    ccf                                           ; $7dcd: $3f
    ld b, a                                       ; $7dce: $47
    cp h                                          ; $7dcf: $bc
    ld b, c                                       ; $7dd0: $41
    cp [hl]                                       ; $7dd1: $be
    ld [bc], a                                    ; $7dd2: $02
    ld [$1cf7], sp                                ; $7dd3: $08 $f7 $1c
    add h                                         ; $7dd6: $84
    ld c, h                                       ; $7dd7: $4c
    ld [$f00f], sp                                ; $7dd8: $08 $0f $f0

jr_0b9_7ddb:
    ld [$02f7], sp                                ; $7ddb: $08 $f7 $02
    ld [$63be], sp                                ; $7dde: $08 $be $63
    ld b, h                                       ; $7de1: $44
    add c                                         ; $7de2: $81
    ld e, d                                       ; $7de3: $5a
    db $10                                        ; $7de4: $10

jr_0b9_7de5:
    or b                                          ; $7de5: $b0
    rst $08                                       ; $7de6: $cf

jr_0b9_7de7:
    jr nc, @+$04                                  ; $7de7: $30 $02

    nop                                           ; $7de9: $00
    jr c, jr_0b9_7ddb                             ; $7dea: $38 $ef

    ld a, [bc]                                    ; $7dec: $0a
    sbc l                                         ; $7ded: $9d
    rst $30                                       ; $7dee: $f7
    rrca                                          ; $7def: $0f
    ld hl, sp+$20                                 ; $7df0: $f8 $20
    db $10                                        ; $7df2: $10
    ld hl, sp+$52                                 ; $7df3: $f8 $52
    ld [$4002], sp                                ; $7df5: $08 $02 $40
    db $fd                                        ; $7df8: $fd
    ld c, $18                                     ; $7df9: $0e $18
    nop                                           ; $7dfb: $00
    rst $38                                       ; $7dfc: $ff
    inc a                                         ; $7dfd: $3c
    jp $cb34                                      ; $7dfe: $c3 $34 $cb


    ld c, b                                       ; $7e01: $48
    inc [hl]                                      ; $7e02: $34
    inc h                                         ; $7e03: $24
    nop                                           ; $7e04: $00
    db $fc                                        ; $7e05: $fc
    add a                                         ; $7e06: $87
    adc d                                         ; $7e07: $8a

jr_0b9_7e08:
    jr jr_0b9_7e82                                ; $7e08: $18 $78

    rst $10                                       ; $7e0a: $d7
    ld [hl], b                                    ; $7e0b: $70
    ld bc, $f8cf                                  ; $7e0c: $01 $cf $f8
    and a                                         ; $7e0f: $a7

Jump_0b9_7e10:
    call c, $9f77                                 ; $7e10: $dc $77 $9f
    ld [hl], c                                    ; $7e13: $71
    sbc d                                         ; $7e14: $9a
    jr jr_0b9_7e17                                ; $7e15: $18 $00

jr_0b9_7e17:
    ldh [$3f], a                                  ; $7e17: $e0 $3f
    add b                                         ; $7e19: $80
    ld a, a                                       ; $7e1a: $7f
    add b                                         ; $7e1b: $80
    ld a, a                                       ; $7e1c: $7f
    add c                                         ; $7e1d: $81
    ld a, a                                       ; $7e1e: $7f
    jr nz, jr_0b9_7e08                            ; $7e1f: $20 $e7

    inc a                                         ; $7e21: $3c
    xor d                                         ; $7e22: $aa
    jr @+$1d                                      ; $7e23: $18 $1b

    and $18                                       ; $7e25: $e6 $18
    rst $20                                       ; $7e27: $e7
    jr c, @+$04                                   ; $7e28: $38 $02

    rst $28                                       ; $7e2a: $ef
    ldh a, [$df]                                  ; $7e2b: $f0 $df
    db $e3                                        ; $7e2d: $e3

jr_0b9_7e2e:
    ld a, $80                                     ; $7e2e: $3e $80
    cp d                                          ; $7e30: $ba
    db $10                                        ; $7e31: $10
    ld h, b                                       ; $7e32: $60
    ld [$60df], sp                                ; $7e33: $08 $df $60
    rst $18                                       ; $7e36: $df
    jr nc, jr_0b9_7de7                            ; $7e37: $30 $ae

    nop                                           ; $7e39: $00
    rra                                           ; $7e3a: $1f
    ldh a, [$87]                                  ; $7e3b: $f0 $87
    add h                                         ; $7e3d: $84
    jp z, Jump_0b9_7e10                           ; $7e3e: $ca $10 $7e

    add c                                         ; $7e41: $81
    ld b, d                                       ; $7e42: $42
    cp l                                          ; $7e43: $bd
    ld [bc], a                                    ; $7e44: $02
    ld [$1df2], sp                                ; $7e45: $08 $f2 $1d
    ret nz                                        ; $7e48: $c0

    ld h, d                                       ; $7e49: $62
    jr z, jr_0b9_7e2e                             ; $7e4a: $28 $e2

    ld [$ff84], sp                                ; $7e4c: $08 $84 $ff
    db $fd                                        ; $7e4f: $fd
    inc sp                                        ; $7e50: $33
    ld hl, sp-$71                                 ; $7e51: $f8 $8f
    add b                                         ; $7e53: $80
    and b                                         ; $7e54: $a0
    db $10                                        ; $7e55: $10
    ld sp, hl                                     ; $7e56: $f9
    rrca                                          ; $7e57: $0f
    ld sp, hl                                     ; $7e58: $f9
    rlca                                          ; $7e59: $07
    ld sp, hl                                     ; $7e5a: $f9
    rlca                                          ; $7e5b: $07
    db $fc                                        ; $7e5c: $fc
    ld [hl+], a                                   ; $7e5d: $22
    inc bc                                        ; $7e5e: $03
    cp $fa                                        ; $7e5f: $fe $fa
    ld c, b                                       ; $7e61: $48
    ldh [$3f], a                                  ; $7e62: $e0 $3f
    ldh a, [$f2]                                  ; $7e64: $f0 $f2
    nop                                           ; $7e66: $00
    jr c, @-$3e                                   ; $7e67: $38 $c0

    ld e, d                                       ; $7e69: $5a
    nop                                           ; $7e6a: $00
    db $10                                        ; $7e6b: $10
    add hl, de                                    ; $7e6c: $19
    cpl                                           ; $7e6d: $2f
    ld hl, sp+$23                                 ; $7e6e: $f8 $23
    db $dd                                        ; $7e70: $dd
    ld [c], a                                     ; $7e71: $e2
    dec e                                         ; $7e72: $1d
    ld a, [bc]                                    ; $7e73: $0a
    ld [hl+], a                                   ; $7e74: $22
    db $dd                                        ; $7e75: $dd
    ld [hl+], a                                   ; $7e76: $22
    db $fd                                        ; $7e77: $fd
    jr nz, jr_0b9_7e93                            ; $7e78: $20 $19

    add b                                         ; $7e7a: $80

jr_0b9_7e7b:
    add sp, $00                                   ; $7e7b: $e8 $00
    sbc a                                         ; $7e7d: $9f
    nop                                           ; $7e7e: $00
    ld [hl], b                                    ; $7e7f: $70
    add h                                         ; $7e80: $84
    ei                                            ; $7e81: $fb

jr_0b9_7e82:
    add l                                         ; $7e82: $85
    ld a, e                                       ; $7e83: $7b
    nop                                           ; $7e84: $00
    rst $38                                       ; $7e85: $ff
    ld bc, $ff00                                  ; $7e86: $01 $00 $ff
    inc bc                                        ; $7e89: $03
    cp $03                                        ; $7e8a: $fe $03
    db $fc                                        ; $7e8c: $fc
    ld c, $f3                                     ; $7e8d: $0e $f3
    push af                                       ; $7e8f: $f5
    inc b                                         ; $7e90: $04
    dec de                                        ; $7e91: $1b
    ld b, a                                       ; $7e92: $47

jr_0b9_7e93:
    cp h                                          ; $7e93: $bc

jr_0b9_7e94:
    ld b, [hl]                                    ; $7e94: $46
    cp e                                          ; $7e95: $bb
    ld b, b                                       ; $7e96: $40
    add hl, hl                                    ; $7e97: $29
    add b                                         ; $7e98: $80
    ld a, a                                       ; $7e99: $7f
    ld [bc], a                                    ; $7e9a: $02
    cp a                                          ; $7e9b: $bf
    ld h, e                                       ; $7e9c: $63
    adc b                                         ; $7e9d: $88
    ld [hl], a                                    ; $7e9e: $77
    ld [$0ef7], sp                                ; $7e9f: $08 $f7 $0e
    jr z, jr_0b9_7ea4                             ; $7ea2: $28 $00

jr_0b9_7ea4:
    nop                                           ; $7ea4: $00
    rst $38                                       ; $7ea5: $ff
    rra                                           ; $7ea6: $1f
    ldh a, [$38]                                  ; $7ea7: $f0 $38
    rst $28                                       ; $7ea9: $ef
    jr nc, jr_0b9_7e7b                            ; $7eaa: $30 $cf

    ld b, d                                       ; $7eac: $42
    nop                                           ; $7ead: $00
    rst $38                                       ; $7eae: $ff
    ld b, [hl]                                    ; $7eaf: $46
    cp l                                          ; $7eb0: $bd
    rst $00                                       ; $7eb1: $c7
    add hl, sp                                    ; $7eb2: $39
    ld a, l                                       ; $7eb3: $7d
    and [hl]                                      ; $7eb4: $a6
    ld c, e                                       ; $7eb5: $4b
    inc b                                         ; $7eb6: $04
    or $0f                                        ; $7eb7: $f6 $0f
    ld sp, hl                                     ; $7eb9: $f9
    dec c                                         ; $7eba: $0d
    or $6e                                        ; $7ebb: $f6 $6e
    add hl, de                                    ; $7ebd: $19
    rst $38                                       ; $7ebe: $ff
    add b                                         ; $7ebf: $80
    add c                                         ; $7ec0: $81
    inc d                                         ; $7ec1: $14
    add hl, bc                                    ; $7ec2: $09
    jr nc, jr_0b9_7e94                            ; $7ec3: $30 $cf

    inc [hl]                                      ; $7ec5: $34
    rst $08                                       ; $7ec6: $cf
    inc [hl]                                      ; $7ec7: $34
    res 0, b                                      ; $7ec8: $cb $80
    add hl, sp                                    ; $7eca: $39
    ret nz                                        ; $7ecb: $c0

    ld d, b                                       ; $7ecc: $50
    add hl, de                                    ; $7ecd: $19
    sub b                                         ; $7ece: $90
    add hl, sp                                    ; $7ecf: $39
    rst $00                                       ; $7ed0: $c7
    inc a                                         ; $7ed1: $3c
    rst $00                                       ; $7ed2: $c7
    ld a, l                                       ; $7ed3: $7d
    xor $bb                                       ; $7ed4: $ee $bb
    ld b, b                                       ; $7ed6: $40
    add b                                         ; $7ed7: $80
    ld e, d                                       ; $7ed8: $5a
    nop                                           ; $7ed9: $00
    ret nz                                        ; $7eda: $c0

    ld a, a                                       ; $7edb: $7f
    ld h, b                                       ; $7edc: $60
    sbc a                                         ; $7edd: $9f
    ret nz                                        ; $7ede: $c0

    cp a                                          ; $7edf: $bf
    ld [$7ec7], sp                                ; $7ee0: $08 $c7 $7e
    ld b, c                                       ; $7ee3: $41
    cp a                                          ; $7ee4: $bf
    xor [hl]                                      ; $7ee5: $ae
    add hl, bc                                    ; $7ee6: $09
    ld bc, $01ff                                  ; $7ee7: $01 $ff $01
    nop                                           ; $7eea: $00
    cp $07                                        ; $7eeb: $fe $07
    ld sp, hl                                     ; $7eed: $f9
    ld [bc], a                                    ; $7eee: $02
    db $fd                                        ; $7eef: $fd
    db $e3                                        ; $7ef0: $e3
    ld a, $7b                                     ; $7ef1: $3e $7b
    dec d                                         ; $7ef3: $15
    call $e738                                    ; $7ef4: $cd $38 $e7
    ret nz                                        ; $7ef7: $c0

    add hl, sp                                    ; $7ef8: $39
    sbc a                                         ; $7ef9: $9f
    ld [hl], b                                    ; $7efa: $70
    ld [$d0df], sp                                ; $7efb: $08 $df $d0
    add hl, sp                                    ; $7efe: $39
    add hl, sp                                    ; $7eff: $39
    rst $38                                       ; $7f00: $ff
    jr jr_0b9_7f0d                                ; $7f01: $18 $0a

    add hl, bc                                    ; $7f03: $09
    ldh [rNR24], a                                ; $7f04: $e0 $19
    or h                                          ; $7f06: $b4
    nop                                           ; $7f07: $00
    db $fc                                        ; $7f08: $fc
    rlca                                          ; $7f09: $07
    ld a, [$2000]                                 ; $7f0a: $fa $00 $20

jr_0b9_7f0d:
    rrca                                          ; $7f0d: $0f
    ld sp, hl                                     ; $7f0e: $f9
    ldh a, [$09]                                  ; $7f0f: $f0 $09
    ld a, h                                       ; $7f11: $7c
    ei                                            ; $7f12: $fb
    db $fc                                        ; $7f13: $fc
    inc bc                                        ; $7f14: $03
    adc h                                         ; $7f15: $8c
    ld [$0dfb], sp                                ; $7f16: $08 $fb $0d
    ei                                            ; $7f19: $fb
    inc b                                         ; $7f1a: $04
    db $fc                                        ; $7f1b: $fc
    db $01                                        ; $7f1c: $01

    db $14, $00, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

    nop                                           ; $7fe9: $00
    inc a                                         ; $7fea: $3c
    rst $38                                       ; $7feb: $ff
    ld a, a                                       ; $7fec: $7f
    add b                                         ; $7fed: $80
    ld [bc], a                                    ; $7fee: $02
    ld h, b                                       ; $7fef: $60
    ld c, l                                       ; $7ff0: $4d
    ld l, e                                       ; $7ff1: $6b
    dec l                                         ; $7ff2: $2d
    or l                                          ; $7ff3: $b5
    ld d, a                                       ; $7ff4: $57
    jr nz, jr_0b9_7ffa                            ; $7ff5: $20 $03

    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff

jr_0b9_7ffa:
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
