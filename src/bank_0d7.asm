; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d7", ROMX[$4000], BANK[$d7]

    db $d7

    ld sp, $ff51                                  ; $4001: $31 $51 $ff
    ld c, c                                       ; $4004: $49
    ld c, d                                       ; $4005: $4a
    add hl, hl                                    ; $4006: $29
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    ld sp, $5f51                                  ; $4009: $31 $51 $5f
    ld c, d                                       ; $400c: $4a
    sbc d                                         ; $400d: $9a
    ld bc, $0000                                  ; $400e: $01 $00 $00
    ld sp, $5e51                                  ; $4011: $31 $51 $5e
    ld h, $c0                                     ; $4014: $26 $c0
    ld bc, $0000                                  ; $4016: $01 $00 $00
    ld sp, $7f51                                  ; $4019: $31 $51 $7f
    ld c, [hl]                                    ; $401c: $4e
    ld a, b                                       ; $401d: $78
    ld d, $00                                     ; $401e: $16 $00
    nop                                           ; $4020: $00
    ld sp, $ff51                                  ; $4021: $31 $51 $ff
    ld a, a                                       ; $4024: $7f
    add b                                         ; $4025: $80
    ld a, l                                       ; $4026: $7d
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    ld sp, $ff51                                  ; $4029: $31 $51 $ff
    ld c, c                                       ; $402c: $49
    sub e                                         ; $402d: $93
    dec e                                         ; $402e: $1d
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    ld sp, $3f51                                  ; $4031: $31 $51 $3f
    ld a, $0f                                     ; $4034: $3e $0f
    ld c, h                                       ; $4036: $4c
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    ld sp, $3b51                                  ; $4039: $31 $51 $3b
    ld [hl], $ea                                  ; $403c: $36 $ea
    inc c                                         ; $403e: $0c
    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    ld sp, $ff51                                  ; $4041: $31 $51 $ff
    ld c, c                                       ; $4044: $49
    ld c, d                                       ; $4045: $4a
    add hl, hl                                    ; $4046: $29
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    ld sp, $5f51                                  ; $4049: $31 $51 $5f
    ld c, d                                       ; $404c: $4a
    sbc d                                         ; $404d: $9a
    ld bc, $0000                                  ; $404e: $01 $00 $00
    ld sp, $7f51                                  ; $4051: $31 $51 $7f
    ld c, [hl]                                    ; $4054: $4e
    ld a, b                                       ; $4055: $78
    ld d, $00                                     ; $4056: $16 $00
    nop                                           ; $4058: $00
    ld sp, $1b51                                  ; $4059: $31 $51 $1b
    nop                                           ; $405c: $00
    ld [hl], $22                                  ; $405d: $36 $22
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    ld sp, $ff51                                  ; $4061: $31 $51 $ff
    ld a, a                                       ; $4064: $7f
    add b                                         ; $4065: $80
    ld [bc], a                                    ; $4066: $02

jr_0d7_4067:
    ld h, b                                       ; $4067: $60
    ld c, l                                       ; $4068: $4d
    ld sp, $ff51                                  ; $4069: $31 $51 $ff
    ld c, c                                       ; $406c: $49
    sub e                                         ; $406d: $93
    dec e                                         ; $406e: $1d
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    ld sp, $5f51                                  ; $4071: $31 $51 $5f
    ld c, d                                       ; $4074: $4a
    ld c, d                                       ; $4075: $4a
    ld a, l                                       ; $4076: $7d
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    ld sp, $5f51                                  ; $4079: $31 $51 $5f
    ld c, d                                       ; $407c: $4a
    rra                                           ; $407d: $1f
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    ld sp, $ff51                                  ; $4081: $31 $51 $ff
    ld c, c                                       ; $4084: $49
    ld c, d                                       ; $4085: $4a
    add hl, hl                                    ; $4086: $29
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    ld sp, $1f51                                  ; $4089: $31 $51 $1f
    nop                                           ; $408c: $00
    ld c, a                                       ; $408d: $4f
    dec c                                         ; $408e: $0d
    sbc d                                         ; $408f: $9a
    ld bc, $5131                                  ; $4090: $01 $31 $51
    ld e, [hl]                                    ; $4093: $5e
    ld h, $c0                                     ; $4094: $26 $c0
    ld bc, $0000                                  ; $4096: $01 $00 $00
    ld sp, $3b51                                  ; $4099: $31 $51 $3b
    ld [hl], $1f                                  ; $409c: $36 $1f
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    ld sp, $ff51                                  ; $40a1: $31 $51 $ff
    ld a, a                                       ; $40a4: $7f
    add b                                         ; $40a5: $80
    ld a, l                                       ; $40a6: $7d
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    ld sp, $ff51                                  ; $40a9: $31 $51 $ff
    ld c, c                                       ; $40ac: $49
    and l                                         ; $40ad: $a5
    jr c, jr_0d7_40b0                             ; $40ae: $38 $00

jr_0d7_40b0:
    nop                                           ; $40b0: $00
    ld sp, $3f51                                  ; $40b1: $31 $51 $3f
    ld a, $0f                                     ; $40b4: $3e $0f
    ld c, h                                       ; $40b6: $4c
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    ld sp, $3b51                                  ; $40b9: $31 $51 $3b
    ld [hl], $ea                                  ; $40bc: $36 $ea
    inc c                                         ; $40be: $0c
    nop                                           ; $40bf: $00
    nop                                           ; $40c0: $00
    ret nz                                        ; $40c1: $c0

    jr nc, @+$01                                  ; $40c2: $30 $ff

    ld c, c                                       ; $40c4: $49
    ld l, e                                       ; $40c5: $6b
    dec l                                         ; $40c6: $2d
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    ret nz                                        ; $40c9: $c0

    jr nc, jr_0d7_4067                            ; $40ca: $30 $9b

    ld [hl-], a                                   ; $40cc: $32
    ld h, h                                       ; $40cd: $64
    ld c, l                                       ; $40ce: $4d
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    rra                                           ; $40d1: $1f
    ld a, h                                       ; $40d2: $7c
    rra                                           ; $40d3: $1f
    ld a, h                                       ; $40d4: $7c
    rra                                           ; $40d5: $1f
    ld a, h                                       ; $40d6: $7c
    rra                                           ; $40d7: $1f
    ld a, h                                       ; $40d8: $7c
    ret nz                                        ; $40d9: $c0

    jr nc, jr_0d7_40f7                            ; $40da: $30 $1b

    nop                                           ; $40dc: $00
    ld [hl], $22                                  ; $40dd: $36 $22
    nop                                           ; $40df: $00
    nop                                           ; $40e0: $00
    rra                                           ; $40e1: $1f
    ld a, h                                       ; $40e2: $7c
    rra                                           ; $40e3: $1f
    ld a, h                                       ; $40e4: $7c
    rra                                           ; $40e5: $1f
    ld a, h                                       ; $40e6: $7c
    rra                                           ; $40e7: $1f
    ld a, h                                       ; $40e8: $7c
    rra                                           ; $40e9: $1f
    ld a, h                                       ; $40ea: $7c
    rra                                           ; $40eb: $1f
    ld a, h                                       ; $40ec: $7c
    rra                                           ; $40ed: $1f
    ld a, h                                       ; $40ee: $7c
    rra                                           ; $40ef: $1f
    ld a, h                                       ; $40f0: $7c
    rra                                           ; $40f1: $1f
    ld a, h                                       ; $40f2: $7c
    rra                                           ; $40f3: $1f
    ld a, h                                       ; $40f4: $7c
    rra                                           ; $40f5: $1f
    ld a, h                                       ; $40f6: $7c

jr_0d7_40f7:
    rra                                           ; $40f7: $1f
    ld a, h                                       ; $40f8: $7c
    rra                                           ; $40f9: $1f
    ld a, h                                       ; $40fa: $7c
    rra                                           ; $40fb: $1f
    ld a, h                                       ; $40fc: $7c
    rra                                           ; $40fd: $1f
    ld a, h                                       ; $40fe: $7c
    rra                                           ; $40ff: $1f
    ld a, h                                       ; $4100: $7c
    call $ff49                                    ; $4101: $cd $49 $ff
    ld c, c                                       ; $4104: $49
    ld c, d                                       ; $4105: $4a
    add hl, hl                                    ; $4106: $29
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    call Call_000_1f49                            ; $4109: $cd $49 $1f
    nop                                           ; $410c: $00
    ld c, a                                       ; $410d: $4f
    dec c                                         ; $410e: $0d
    sbc d                                         ; $410f: $9a
    ld bc, $49cd                                  ; $4110: $01 $cd $49
    ld e, [hl]                                    ; $4113: $5e
    ld h, $c0                                     ; $4114: $26 $c0
    ld bc, $0000                                  ; $4116: $01 $00 $00
    call $9b49                                    ; $4119: $cd $49 $9b
    ld bc, $01c0                                  ; $411c: $01 $c0 $01
    dec c                                         ; $411f: $0d
    inc [hl]                                      ; $4120: $34
    call $ff49                                    ; $4121: $cd $49 $ff
    ld a, a                                       ; $4124: $7f
    add b                                         ; $4125: $80
    ld a, l                                       ; $4126: $7d
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    call $ff49                                    ; $4129: $cd $49 $ff
    ld c, c                                       ; $412c: $49
    and l                                         ; $412d: $a5
    jr c, jr_0d7_4130                             ; $412e: $38 $00

jr_0d7_4130:
    nop                                           ; $4130: $00
    call $3f49                                    ; $4131: $cd $49 $3f
    ld a, $0f                                     ; $4134: $3e $0f
    ld c, h                                       ; $4136: $4c
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    call Call_000_3b49                            ; $4139: $cd $49 $3b
    ld [hl], $ea                                  ; $413c: $36 $ea
    inc c                                         ; $413e: $0c
    nop                                           ; $413f: $00
    nop                                           ; $4140: $00
    sra h                                         ; $4141: $cb $2c
    reti                                          ; $4143: $d9


    ld b, l                                       ; $4144: $45
    add hl, hl                                    ; $4145: $29
    ld sp, $0000                                  ; $4146: $31 $00 $00
    sra h                                         ; $4149: $cb $2c
    jr jr_0d7_414d                                ; $414b: $18 $00

jr_0d7_414d:
    inc c                                         ; $414d: $0c
    dec b                                         ; $414e: $05
    ld a, [hl-]                                   ; $414f: $3a
    ld bc, $2ccb                                  ; $4150: $01 $cb $2c
    db $db                                        ; $4153: $db
    dec e                                         ; $4154: $1d
    jr nz, jr_0d7_4168                            ; $4155: $20 $11

    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    sra h                                         ; $4159: $cb $2c
    rst $18                                       ; $415b: $df
    ld c, d                                       ; $415c: $4a
    db $fd                                        ; $415d: $fd
    ld bc, $0000                                  ; $415e: $01 $00 $00
    sra h                                         ; $4161: $cb $2c
    rst $38                                       ; $4163: $ff
    ld a, a                                       ; $4164: $7f
    add b                                         ; $4165: $80
    ld a, l                                       ; $4166: $7d
    nop                                           ; $4167: $00

jr_0d7_4168:
    nop                                           ; $4168: $00
    sra h                                         ; $4169: $cb $2c
    db $fc                                        ; $416b: $fc
    ld sp, $0896                                  ; $416c: $31 $96 $08
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    sra h                                         ; $4171: $cb $2c
    db $db                                        ; $4173: $db
    ld b, l                                       ; $4174: $45
    inc c                                         ; $4175: $0c
    inc a                                         ; $4176: $3c
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    sra h                                         ; $4179: $cb $2c
    ld d, $32                                     ; $417b: $16 $32
    add a                                         ; $417d: $87
    nop                                           ; $417e: $00
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    ld sp, $7f51                                  ; $4181: $31 $51 $7f
    ld c, [hl]                                    ; $4184: $4e
    ld c, d                                       ; $4185: $4a
    add hl, hl                                    ; $4186: $29
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    ld sp, $1f51                                  ; $4189: $31 $51 $1f
    nop                                           ; $418c: $00
    ld c, a                                       ; $418d: $4f
    dec c                                         ; $418e: $0d
    sbc d                                         ; $418f: $9a
    ld bc, $5131                                  ; $4190: $01 $31 $51
    sbc l                                         ; $4193: $9d
    ld l, $c0                                     ; $4194: $2e $c0
    ld bc, $0000                                  ; $4196: $01 $00 $00
    ld sp, $1f51                                  ; $4199: $31 $51 $1f
    ld a, h                                       ; $419c: $7c
    rra                                           ; $419d: $1f
    ld a, h                                       ; $419e: $7c
    nop                                           ; $419f: $00

jr_0d7_41a0:
    nop                                           ; $41a0: $00
    ld sp, $ff51                                  ; $41a1: $31 $51 $ff
    ld a, a                                       ; $41a4: $7f
    add b                                         ; $41a5: $80
    ld a, l                                       ; $41a6: $7d
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    ld sp, $5f51                                  ; $41a9: $31 $51 $5f
    ld d, d                                       ; $41ac: $52
    and l                                         ; $41ad: $a5
    jr c, jr_0d7_41b0                             ; $41ae: $38 $00

jr_0d7_41b0:
    nop                                           ; $41b0: $00
    ld sp, $df51                                  ; $41b1: $31 $51 $df
    ld e, d                                       ; $41b4: $5a
    rrca                                          ; $41b5: $0f
    ld c, h                                       ; $41b6: $4c
    nop                                           ; $41b7: $00
    nop                                           ; $41b8: $00
    ld sp, $bc51                                  ; $41b9: $31 $51 $bc
    ld a, a                                       ; $41bc: $7f
    rst $28                                       ; $41bd: $ef
    ld c, l                                       ; $41be: $4d
    nop                                           ; $41bf: $00
    db $10                                        ; $41c0: $10
    ld sp, $7f51                                  ; $41c1: $31 $51 $7f
    ld c, [hl]                                    ; $41c4: $4e
    ld c, d                                       ; $41c5: $4a
    add hl, hl                                    ; $41c6: $29
    nop                                           ; $41c7: $00
    nop                                           ; $41c8: $00
    ld sp, $1f51                                  ; $41c9: $31 $51 $1f
    nop                                           ; $41cc: $00
    ld c, a                                       ; $41cd: $4f
    dec c                                         ; $41ce: $0d
    sbc d                                         ; $41cf: $9a
    ld bc, $5131                                  ; $41d0: $01 $31 $51
    sbc l                                         ; $41d3: $9d
    ld l, $c0                                     ; $41d4: $2e $c0
    ld bc, $0000                                  ; $41d6: $01 $00 $00
    ld sp, $e351                                  ; $41d9: $31 $51 $e3
    jr z, @-$7c                                   ; $41dc: $28 $82

    inc e                                         ; $41de: $1c
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    ld sp, $ff51                                  ; $41e1: $31 $51 $ff
    ld a, a                                       ; $41e4: $7f
    add b                                         ; $41e5: $80
    ld a, l                                       ; $41e6: $7d
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    ld sp, $5f51                                  ; $41e9: $31 $51 $5f
    ld d, d                                       ; $41ec: $52
    and l                                         ; $41ed: $a5
    jr c, jr_0d7_41f0                             ; $41ee: $38 $00

jr_0d7_41f0:
    nop                                           ; $41f0: $00
    ld sp, $df51                                  ; $41f1: $31 $51 $df
    ld e, d                                       ; $41f4: $5a
    rrca                                          ; $41f5: $0f
    ld c, h                                       ; $41f6: $4c
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    ld sp, $bb51                                  ; $41f9: $31 $51 $bb
    ld a, [hl-]                                   ; $41fc: $3a
    ld [$000c], a                                 ; $41fd: $ea $0c $00
    nop                                           ; $4200: $00
    ld sp, $7f51                                  ; $4201: $31 $51 $7f
    ld c, [hl]                                    ; $4204: $4e
    ld c, d                                       ; $4205: $4a
    add hl, hl                                    ; $4206: $29
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    ld sp, $1f51                                  ; $4209: $31 $51 $1f
    nop                                           ; $420c: $00
    rst $38                                       ; $420d: $ff
    ld a, a                                       ; $420e: $7f
    add b                                         ; $420f: $80
    ld a, l                                       ; $4210: $7d
    ld sp, $9d51                                  ; $4211: $31 $51 $9d
    ld l, $c0                                     ; $4214: $2e $c0
    ld bc, $0000                                  ; $4216: $01 $00 $00
    ld sp, $e351                                  ; $4219: $31 $51 $e3
    jr z, jr_0d7_41a0                             ; $421c: $28 $82

    inc e                                         ; $421e: $1c
    nop                                           ; $421f: $00
    nop                                           ; $4220: $00
    ld sp, $ff51                                  ; $4221: $31 $51 $ff
    ld a, a                                       ; $4224: $7f
    add b                                         ; $4225: $80
    ld a, l                                       ; $4226: $7d
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    ld sp, $5f51                                  ; $4229: $31 $51 $5f
    ld d, d                                       ; $422c: $52
    and l                                         ; $422d: $a5
    jr c, jr_0d7_4230                             ; $422e: $38 $00

jr_0d7_4230:
    nop                                           ; $4230: $00
    ld sp, $df51                                  ; $4231: $31 $51 $df
    ld e, d                                       ; $4234: $5a
    rrca                                          ; $4235: $0f
    ld c, h                                       ; $4236: $4c
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    ld sp, $bb51                                  ; $4239: $31 $51 $bb
    ld a, [hl-]                                   ; $423c: $3a
    ld [$000c], a                                 ; $423d: $ea $0c $00
    nop                                           ; $4240: $00
    ld sp, $1f51                                  ; $4241: $31 $51 $1f
    ld c, d                                       ; $4244: $4a
    ld c, d                                       ; $4245: $4a
    add hl, hl                                    ; $4246: $29
    nop                                           ; $4247: $00
    nop                                           ; $4248: $00
    ld sp, $1f51                                  ; $4249: $31 $51 $1f
    nop                                           ; $424c: $00
    ld c, a                                       ; $424d: $4f
    dec c                                         ; $424e: $0d
    sbc d                                         ; $424f: $9a
    ld bc, $5131                                  ; $4250: $01 $31 $51
    ld e, [hl]                                    ; $4253: $5e
    ld h, $c0                                     ; $4254: $26 $c0
    ld bc, $0000                                  ; $4256: $01 $00 $00
    ld sp, $5451                                  ; $4259: $31 $51 $54
    ld b, d                                       ; $425c: $42
    cpl                                           ; $425d: $2f
    dec b                                         ; $425e: $05
    nop                                           ; $425f: $00
    nop                                           ; $4260: $00
    ld sp, $ff51                                  ; $4261: $31 $51 $ff
    ld a, a                                       ; $4264: $7f
    add b                                         ; $4265: $80
    ld a, l                                       ; $4266: $7d
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    ld sp, $1f51                                  ; $4269: $31 $51 $1f
    ld c, d                                       ; $426c: $4a
    and l                                         ; $426d: $a5
    jr c, jr_0d7_4270                             ; $426e: $38 $00

jr_0d7_4270:
    nop                                           ; $4270: $00
    ld sp, $3f51                                  ; $4271: $31 $51 $3f
    ld a, $0f                                     ; $4274: $3e $0f
    ld c, h                                       ; $4276: $4c
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    ld sp, $3b51                                  ; $4279: $31 $51 $3b
    ld [hl], $ea                                  ; $427c: $36 $ea
    inc c                                         ; $427e: $0c
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    ld sp, $ff51                                  ; $4281: $31 $51 $ff
    ld c, c                                       ; $4284: $49
    ld c, d                                       ; $4285: $4a
    add hl, hl                                    ; $4286: $29
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    ld sp, $1f51                                  ; $4289: $31 $51 $1f
    nop                                           ; $428c: $00
    ld c, a                                       ; $428d: $4f
    dec c                                         ; $428e: $0d
    sbc d                                         ; $428f: $9a
    ld bc, $5131                                  ; $4290: $01 $31 $51
    ld e, [hl]                                    ; $4293: $5e
    ld h, $c0                                     ; $4294: $26 $c0
    ld bc, $0000                                  ; $4296: $01 $00 $00
    ld sp, $ff51                                  ; $4299: $31 $51 $ff
    ld a, a                                       ; $429c: $7f
    rst $38                                       ; $429d: $ff
    jr z, jr_0d7_42a0                             ; $429e: $28 $00

jr_0d7_42a0:
    nop                                           ; $42a0: $00
    ld sp, $ff51                                  ; $42a1: $31 $51 $ff
    ld a, a                                       ; $42a4: $7f
    add b                                         ; $42a5: $80
    ld a, l                                       ; $42a6: $7d
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    ld sp, $ff51                                  ; $42a9: $31 $51 $ff
    ld c, c                                       ; $42ac: $49
    and l                                         ; $42ad: $a5
    jr c, jr_0d7_42b0                             ; $42ae: $38 $00

jr_0d7_42b0:
    nop                                           ; $42b0: $00
    ld sp, $3f51                                  ; $42b1: $31 $51 $3f
    ld a, $0f                                     ; $42b4: $3e $0f
    ld c, h                                       ; $42b6: $4c
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    ld sp, $3b51                                  ; $42b9: $31 $51 $3b
    ld [hl], $ea                                  ; $42bc: $36 $ea
    inc c                                         ; $42be: $0c
    nop                                           ; $42bf: $00
    nop                                           ; $42c0: $00
    ld sp, $ff51                                  ; $42c1: $31 $51 $ff
    ld c, c                                       ; $42c4: $49
    ld c, d                                       ; $42c5: $4a
    add hl, hl                                    ; $42c6: $29
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    ld sp, $1f51                                  ; $42c9: $31 $51 $1f
    nop                                           ; $42cc: $00
    ld c, a                                       ; $42cd: $4f
    dec c                                         ; $42ce: $0d
    sbc d                                         ; $42cf: $9a
    ld bc, $5131                                  ; $42d0: $01 $31 $51
    ld e, [hl]                                    ; $42d3: $5e
    ld h, $c0                                     ; $42d4: $26 $c0
    ld bc, $0000                                  ; $42d6: $01 $00 $00
    ld sp, $b851                                  ; $42d9: $31 $51 $b8
    nop                                           ; $42dc: $00
    ld [$0021], sp                                ; $42dd: $08 $21 $00
    nop                                           ; $42e0: $00
    ld sp, $ff51                                  ; $42e1: $31 $51 $ff
    ld a, a                                       ; $42e4: $7f
    sbc a                                         ; $42e5: $9f
    ld bc, $0000                                  ; $42e6: $01 $00 $00
    ld sp, $ae51                                  ; $42e9: $31 $51 $ae
    ld [bc], a                                    ; $42ec: $02
    and l                                         ; $42ed: $a5
    ld bc, $0000                                  ; $42ee: $01 $00 $00
    ld sp, $1f51                                  ; $42f1: $31 $51 $1f
    ld a, h                                       ; $42f4: $7c
    rra                                           ; $42f5: $1f
    ld a, h                                       ; $42f6: $7c
    rra                                           ; $42f7: $1f
    ld a, h                                       ; $42f8: $7c
    ld sp, $3b51                                  ; $42f9: $31 $51 $3b
    ld [hl], $ea                                  ; $42fc: $36 $ea
    inc c                                         ; $42fe: $0c

Jump_0d7_42ff:
    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00

    db $c0, $30, $ff, $49, $6b, $2d, $00, $00, $c0, $30, $91, $21, $7f, $02, $00, $00
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $c0, $30, $1b, $00, $36, $22, $e0, $03
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c

    ld sp, $ff51                                  ; $4341: $31 $51 $ff
    ld c, c                                       ; $4344: $49
    ld c, d                                       ; $4345: $4a
    add hl, hl                                    ; $4346: $29
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    ld sp, $1f51                                  ; $4349: $31 $51 $1f
    nop                                           ; $434c: $00
    ld c, a                                       ; $434d: $4f
    dec c                                         ; $434e: $0d
    ldh [$03], a                                  ; $434f: $e0 $03
    ld sp, $9d51                                  ; $4351: $31 $51 $9d
    ld l, $c0                                     ; $4354: $2e $c0
    ld bc, $0000                                  ; $4356: $01 $00 $00
    ld sp, $3f51                                  ; $4359: $31 $51 $3f
    ld c, d                                       ; $435c: $4a
    rst $38                                       ; $435d: $ff
    ld a, a                                       ; $435e: $7f
    nop                                           ; $435f: $00
    nop                                           ; $4360: $00
    ld sp, $ff51                                  ; $4361: $31 $51 $ff
    ld a, a                                       ; $4364: $7f
    add b                                         ; $4365: $80
    ld a, l                                       ; $4366: $7d
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    ld sp, $ff51                                  ; $4369: $31 $51 $ff
    ld c, c                                       ; $436c: $49
    and l                                         ; $436d: $a5
    jr c, jr_0d7_4370                             ; $436e: $38 $00

jr_0d7_4370:
    nop                                           ; $4370: $00
    ld sp, $3f51                                  ; $4371: $31 $51 $3f
    ld a, $0f                                     ; $4374: $3e $0f
    ld c, h                                       ; $4376: $4c
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    ld sp, $3b51                                  ; $4379: $31 $51 $3b
    ld [hl], $ea                                  ; $437c: $36 $ea
    inc c                                         ; $437e: $0c
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    ld sp, $ff51                                  ; $4381: $31 $51 $ff
    ld c, c                                       ; $4384: $49
    ld c, d                                       ; $4385: $4a
    add hl, hl                                    ; $4386: $29
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    ld sp, $1f51                                  ; $4389: $31 $51 $1f
    nop                                           ; $438c: $00
    ld c, a                                       ; $438d: $4f
    dec c                                         ; $438e: $0d
    sbc d                                         ; $438f: $9a
    ld bc, $5131                                  ; $4390: $01 $31 $51
    sbc l                                         ; $4393: $9d
    ld l, $c0                                     ; $4394: $2e $c0
    ld bc, $0000                                  ; $4396: $01 $00 $00
    ld sp, $a151                                  ; $4399: $31 $51 $a1
    inc d                                         ; $439c: $14
    ld l, d                                       ; $439d: $6a
    ld h, [hl]                                    ; $439e: $66
    cp c                                          ; $439f: $b9
    ld a, a                                       ; $43a0: $7f
    ld sp, $ff51                                  ; $43a1: $31 $51 $ff
    ld a, a                                       ; $43a4: $7f
    add b                                         ; $43a5: $80
    ld a, l                                       ; $43a6: $7d
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    ld sp, $ff51                                  ; $43a9: $31 $51 $ff
    ld c, c                                       ; $43ac: $49
    and l                                         ; $43ad: $a5
    jr c, jr_0d7_43b0                             ; $43ae: $38 $00

jr_0d7_43b0:
    nop                                           ; $43b0: $00
    ld sp, $3f51                                  ; $43b1: $31 $51 $3f
    ld a, $0f                                     ; $43b4: $3e $0f
    ld c, h                                       ; $43b6: $4c
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    ld sp, $3b51                                  ; $43b9: $31 $51 $3b
    ld [hl], $ea                                  ; $43bc: $36 $ea
    inc c                                         ; $43be: $0c
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    ld sp, $ff51                                  ; $43c1: $31 $51 $ff
    ld c, c                                       ; $43c4: $49
    ld c, d                                       ; $43c5: $4a
    add hl, hl                                    ; $43c6: $29
    nop                                           ; $43c7: $00
    nop                                           ; $43c8: $00
    ld sp, $1f51                                  ; $43c9: $31 $51 $1f
    nop                                           ; $43cc: $00
    ld c, a                                       ; $43cd: $4f
    dec c                                         ; $43ce: $0d
    sbc d                                         ; $43cf: $9a
    ld bc, $5131                                  ; $43d0: $01 $31 $51
    sbc l                                         ; $43d3: $9d
    ld l, $c0                                     ; $43d4: $2e $c0
    ld bc, $0000                                  ; $43d6: $01 $00 $00
    ld sp, $1f51                                  ; $43d9: $31 $51 $1f
    ld a, h                                       ; $43dc: $7c
    rra                                           ; $43dd: $1f
    ld a, h                                       ; $43de: $7c
    nop                                           ; $43df: $00
    nop                                           ; $43e0: $00
    ld sp, $ff51                                  ; $43e1: $31 $51 $ff
    ld a, a                                       ; $43e4: $7f
    add b                                         ; $43e5: $80
    ld a, l                                       ; $43e6: $7d
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    ld sp, $ff51                                  ; $43e9: $31 $51 $ff
    ld c, c                                       ; $43ec: $49
    and l                                         ; $43ed: $a5
    jr c, jr_0d7_43f0                             ; $43ee: $38 $00

jr_0d7_43f0:
    nop                                           ; $43f0: $00
    ld sp, $3f51                                  ; $43f1: $31 $51 $3f
    ld a, $0f                                     ; $43f4: $3e $0f
    ld c, h                                       ; $43f6: $4c
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    ld sp, $fb51                                  ; $43f9: $31 $51 $fb
    ld [de], a                                    ; $43fc: $12
    ld [hl], a                                    ; $43fd: $77
    ld bc, $00cb                                  ; $43fe: $01 $cb $00
    ld sp, $ff51                                  ; $4401: $31 $51 $ff
    ld c, c                                       ; $4404: $49
    ld c, d                                       ; $4405: $4a
    add hl, hl                                    ; $4406: $29
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    ld sp, $5f51                                  ; $4409: $31 $51 $5f
    ld c, d                                       ; $440c: $4a
    sbc d                                         ; $440d: $9a
    ld bc, $0000                                  ; $440e: $01 $00 $00
    ld sp, $5f51                                  ; $4411: $31 $51 $5f
    ld c, d                                       ; $4414: $4a
    rst $38                                       ; $4415: $ff
    ld a, a                                       ; $4416: $7f
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    ld sp, $1b51                                  ; $4419: $31 $51 $1b
    nop                                           ; $441c: $00
    ld [hl], $22                                  ; $441d: $36 $22
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    ld sp, $3f51                                  ; $4421: $31 $51 $3f
    ld d, [hl]                                    ; $4424: $56
    ret nz                                        ; $4425: $c0

    dec c                                         ; $4426: $0d
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    ld sp, $ff51                                  ; $4429: $31 $51 $ff
    ld c, c                                       ; $442c: $49
    sub e                                         ; $442d: $93
    dec e                                         ; $442e: $1d
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    ld sp, $5f51                                  ; $4431: $31 $51 $5f
    ld c, d                                       ; $4434: $4a
    ld c, d                                       ; $4435: $4a
    ld a, l                                       ; $4436: $7d
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    ld sp, $5f51                                  ; $4439: $31 $51 $5f
    ld c, d                                       ; $443c: $4a
    rra                                           ; $443d: $1f
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    ld sp, $ff51                                  ; $4441: $31 $51 $ff
    ld c, c                                       ; $4444: $49
    ld c, d                                       ; $4445: $4a
    add hl, hl                                    ; $4446: $29
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    ld sp, $1f51                                  ; $4449: $31 $51 $1f
    nop                                           ; $444c: $00
    ld c, a                                       ; $444d: $4f
    dec c                                         ; $444e: $0d
    sbc d                                         ; $444f: $9a
    ld bc, $5131                                  ; $4450: $01 $31 $51
    ld e, [hl]                                    ; $4453: $5e

Call_0d7_4454:
    ld h, $c0                                     ; $4454: $26 $c0
    ld bc, $0000                                  ; $4456: $01 $00 $00
    ld sp, $1f51                                  ; $4459: $31 $51 $1f
    nop                                           ; $445c: $00
    jr nz, jr_0d7_4461                            ; $445d: $20 $02

    nop                                           ; $445f: $00
    nop                                           ; $4460: $00

jr_0d7_4461:
    ld sp, $ff51                                  ; $4461: $31 $51 $ff
    ld a, a                                       ; $4464: $7f
    add b                                         ; $4465: $80
    ld a, l                                       ; $4466: $7d
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    ld sp, $ff51                                  ; $4469: $31 $51 $ff
    ld c, c                                       ; $446c: $49
    and l                                         ; $446d: $a5
    jr c, jr_0d7_4470                             ; $446e: $38 $00

jr_0d7_4470:
    nop                                           ; $4470: $00
    ld sp, $3f51                                  ; $4471: $31 $51 $3f
    ld a, $0f                                     ; $4474: $3e $0f
    ld c, h                                       ; $4476: $4c
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    ld sp, $ff51                                  ; $4479: $31 $51 $ff
    inc de                                        ; $447c: $13
    cp a                                          ; $447d: $bf
    ld bc, $0010                                  ; $447e: $01 $10 $00
    sra h                                         ; $4481: $cb $2c
    reti                                          ; $4483: $d9


    ld b, l                                       ; $4484: $45
    add hl, hl                                    ; $4485: $29
    ld sp, $0000                                  ; $4486: $31 $00 $00
    sra h                                         ; $4489: $cb $2c
    jr jr_0d7_448d                                ; $448b: $18 $00

jr_0d7_448d:
    inc c                                         ; $448d: $0c
    dec b                                         ; $448e: $05
    ld a, [hl-]                                   ; $448f: $3a
    ld bc, $2ccb                                  ; $4490: $01 $cb $2c
    rst $38                                       ; $4493: $ff
    ld a, a                                       ; $4494: $7f
    rst $38                                       ; $4495: $ff
    dec b                                         ; $4496: $05
    rrca                                          ; $4497: $0f
    nop                                           ; $4498: $00
    sra h                                         ; $4499: $cb $2c
    rra                                           ; $449b: $1f
    ld a, h                                       ; $449c: $7c
    rra                                           ; $449d: $1f
    ld a, h                                       ; $449e: $7c
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    sra h                                         ; $44a1: $cb $2c
    rst $38                                       ; $44a3: $ff
    ld a, a                                       ; $44a4: $7f
    add b                                         ; $44a5: $80
    ld a, l                                       ; $44a6: $7d
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    sra h                                         ; $44a9: $cb $2c
    reti                                          ; $44ab: $d9


    ld b, l                                       ; $44ac: $45
    add h                                         ; $44ad: $84
    jr nc, jr_0d7_44b0                            ; $44ae: $30 $00

jr_0d7_44b0:
    nop                                           ; $44b0: $00
    sra h                                         ; $44b1: $cb $2c
    db $db                                        ; $44b3: $db
    ld b, l                                       ; $44b4: $45
    inc c                                         ; $44b5: $0c
    inc a                                         ; $44b6: $3c
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    sra h                                         ; $44b9: $cb $2c
    ld d, $32                                     ; $44bb: $16 $32
    add a                                         ; $44bd: $87
    nop                                           ; $44be: $00
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    ld sp, $ff51                                  ; $44c1: $31 $51 $ff
    ld c, c                                       ; $44c4: $49
    ld c, d                                       ; $44c5: $4a
    add hl, hl                                    ; $44c6: $29
    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    ld sp, $1f51                                  ; $44c9: $31 $51 $1f

Call_0d7_44cc:
    nop                                           ; $44cc: $00
    ld c, a                                       ; $44cd: $4f
    dec c                                         ; $44ce: $0d
    sbc d                                         ; $44cf: $9a
    ld bc, $5131                                  ; $44d0: $01 $31 $51
    ld e, [hl]                                    ; $44d3: $5e
    ld h, $c0                                     ; $44d4: $26 $c0
    ld bc, $0000                                  ; $44d6: $01 $00 $00
    ld sp, $7f51                                  ; $44d9: $31 $51 $7f
    ld c, [hl]                                    ; $44dc: $4e
    ld h, $45                                     ; $44dd: $26 $45
    nop                                           ; $44df: $00
    nop                                           ; $44e0: $00
    ld sp, $ff51                                  ; $44e1: $31 $51 $ff
    ld a, a                                       ; $44e4: $7f
    add b                                         ; $44e5: $80
    ld a, l                                       ; $44e6: $7d
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    ld sp, $ff51                                  ; $44e9: $31 $51 $ff
    ld c, c                                       ; $44ec: $49
    and l                                         ; $44ed: $a5
    jr c, jr_0d7_44f0                             ; $44ee: $38 $00

jr_0d7_44f0:
    nop                                           ; $44f0: $00
    ld sp, $3f51                                  ; $44f1: $31 $51 $3f
    ld a, $0f                                     ; $44f4: $3e $0f
    ld c, h                                       ; $44f6: $4c
    nop                                           ; $44f7: $00
    nop                                           ; $44f8: $00
    ld sp, $3b51                                  ; $44f9: $31 $51 $3b
    ld [hl], $ea                                  ; $44fc: $36 $ea
    inc c                                         ; $44fe: $0c
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    ld h, b                                       ; $4501: $60
    inc b                                         ; $4502: $04
    db $db                                        ; $4503: $db
    ld b, l                                       ; $4504: $45
    add hl, hl                                    ; $4505: $29
    ld sp, $0000                                  ; $4506: $31 $00 $00
    ld h, b                                       ; $4509: $60
    inc b                                         ; $450a: $04
    or [hl]                                       ; $450b: $b6
    add hl, bc                                    ; $450c: $09
    db $10                                        ; $450d: $10
    add hl, bc                                    ; $450e: $09
    and a                                         ; $450f: $a7
    ld [$0460], sp                                ; $4510: $08 $60 $04
    rst $38                                       ; $4513: $ff
    nop                                           ; $4514: $00
    ld [$0000], sp                                ; $4515: $08 $00 $00
    inc bc                                        ; $4518: $03
    ld h, b                                       ; $4519: $60
    inc b                                         ; $451a: $04
    rst $38                                       ; $451b: $ff
    rra                                           ; $451c: $1f
    ld d, h                                       ; $451d: $54
    nop                                           ; $451e: $00
    nop                                           ; $451f: $00
    ld a, l                                       ; $4520: $7d
    ld h, b                                       ; $4521: $60
    inc b                                         ; $4522: $04
    db $eb                                        ; $4523: $eb
    ld [hl], d                                    ; $4524: $72
    and b                                         ; $4525: $a0
    inc l                                         ; $4526: $2c
    rst $18                                       ; $4527: $df
    ld bc, $4e73                                  ; $4528: $01 $73 $4e
    ld [hl], e                                    ; $452b: $73
    ld c, [hl]                                    ; $452c: $4e
    ld [hl], e                                    ; $452d: $73
    ld c, [hl]                                    ; $452e: $4e
    ld [hl], e                                    ; $452f: $73
    ld c, [hl]                                    ; $4530: $4e
    ld [hl], e                                    ; $4531: $73
    ld c, [hl]                                    ; $4532: $4e
    ld [hl], e                                    ; $4533: $73
    ld c, [hl]                                    ; $4534: $4e
    ld [hl], e                                    ; $4535: $73
    ld c, [hl]                                    ; $4536: $4e
    ld [hl], e                                    ; $4537: $73
    ld c, [hl]                                    ; $4538: $4e
    ld [hl], e                                    ; $4539: $73
    ld c, [hl]                                    ; $453a: $4e
    ld [hl], e                                    ; $453b: $73
    ld c, [hl]                                    ; $453c: $4e
    ld [hl], e                                    ; $453d: $73
    ld c, [hl]                                    ; $453e: $4e
    ld [hl], e                                    ; $453f: $73
    ld c, [hl]                                    ; $4540: $4e
    ld sp, $ff51                                  ; $4541: $31 $51 $ff
    ld c, c                                       ; $4544: $49
    ld c, d                                       ; $4545: $4a
    add hl, hl                                    ; $4546: $29
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    ld sp, $1f51                                  ; $4549: $31 $51 $1f
    nop                                           ; $454c: $00
    ld c, a                                       ; $454d: $4f
    dec c                                         ; $454e: $0d
    sbc d                                         ; $454f: $9a
    ld bc, $5131                                  ; $4550: $01 $31 $51
    sbc l                                         ; $4553: $9d
    ld l, $c0                                     ; $4554: $2e $c0
    ld bc, $0000                                  ; $4556: $01 $00 $00
    ld sp, $3f51                                  ; $4559: $31 $51 $3f
    ld c, d                                       ; $455c: $4a
    rst $38                                       ; $455d: $ff
    ld a, a                                       ; $455e: $7f
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    ld sp, $ff51                                  ; $4561: $31 $51 $ff
    ld a, a                                       ; $4564: $7f
    add b                                         ; $4565: $80
    ld a, l                                       ; $4566: $7d
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    ld sp, $ff51                                  ; $4569: $31 $51 $ff
    ld c, c                                       ; $456c: $49
    and l                                         ; $456d: $a5
    jr c, jr_0d7_4570                             ; $456e: $38 $00

jr_0d7_4570:
    nop                                           ; $4570: $00
    ld sp, $3f51                                  ; $4571: $31 $51 $3f
    ld a, $0f                                     ; $4574: $3e $0f
    ld c, h                                       ; $4576: $4c
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    ld sp, $3b51                                  ; $4579: $31 $51 $3b
    ld [hl], $ea                                  ; $457c: $36 $ea
    inc c                                         ; $457e: $0c
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    ld b, b                                       ; $4581: $40
    ld [bc], a                                    ; $4582: $02
    rst $38                                       ; $4583: $ff
    ld a, a                                       ; $4584: $7f
    ld h, b                                       ; $4585: $60
    ld c, a                                       ; $4586: $4f
    xor [hl]                                      ; $4587: $ae
    ld a, [hl]                                    ; $4588: $7e
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    nop                                           ; $458c: $00
    nop                                           ; $458d: $00
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    nop                                           ; $45b6: $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    ld [hl], b                                    ; $45c1: $70
    ld d, d                                       ; $45c2: $52
    adc b                                         ; $45c3: $88
    ld a, a                                       ; $45c4: $7f
    ldh [$7d], a                                  ; $45c5: $e0 $7d
    ld b, d                                       ; $45c7: $42
    ld b, l                                       ; $45c8: $45
    sub d                                         ; $45c9: $92
    ld e, d                                       ; $45ca: $5a
    nop                                           ; $45cb: $00
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    nop                                           ; $45cf: $00
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    nop                                           ; $45db: $00
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    nop                                           ; $45e4: $00
    nop                                           ; $45e5: $00
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    nop                                           ; $45ea: $00
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
    ld [hl], b                                    ; $4601: $70
    ld d, d                                       ; $4602: $52
    ld c, $7f                                     ; $4603: $0e $7f
    dec b                                         ; $4605: $05
    ld l, [hl]                                    ; $4606: $6e
    ld bc, $0039                                  ; $4607: $01 $39 $00
    nop                                           ; $460a: $00
    nop                                           ; $460b: $00
    nop                                           ; $460c: $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    nop                                           ; $462a: $00
    nop                                           ; $462b: $00
    nop                                           ; $462c: $00
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    nop                                           ; $463b: $00
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00

    db $06, $02, $df, $03, $9d, $01, $36, $00, $06, $02, $bf, $1a, $9f, $00, $b8, $14

    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    nop                                           ; $465c: $00
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    nop                                           ; $466e: $00
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    ld b, $02                                     ; $4681: $06 $02
    sbc a                                         ; $4683: $9f
    ld [bc], a                                    ; $4684: $02
    sbc a                                         ; $4685: $9f
    ld bc, $001f                                  ; $4686: $01 $1f $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    nop                                           ; $468e: $00
    nop                                           ; $468f: $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    nop                                           ; $46ab: $00
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
    nop                                           ; $46b4: $00
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    nop                                           ; $46b7: $00
    nop                                           ; $46b8: $00
    nop                                           ; $46b9: $00
    nop                                           ; $46ba: $00
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    ld [hl], b                                    ; $46c3: $70
    inc bc                                        ; $46c4: $03
    ld h, b                                       ; $46c5: $60
    ld [bc], a                                    ; $46c6: $02
    add b                                         ; $46c7: $80
    ld bc, $0000                                  ; $46c8: $01 $00 $00
    ld sp, hl                                     ; $46cb: $f9
    ld d, e                                       ; $46cc: $53
    ld d, b                                       ; $46cd: $50
    inc de                                        ; $46ce: $13
    and a                                         ; $46cf: $a7
    ld bc, $4850                                  ; $46d0: $01 $50 $48
    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    nop                                           ; $46d7: $00
    nop                                           ; $46d8: $00
    nop                                           ; $46d9: $00
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    nop                                           ; $46e0: $00
    ld hl, sp+$3b                                 ; $46e1: $f8 $3b
    or b                                          ; $46e3: $b0
    ld d, $69                                     ; $46e4: $16 $69
    ld bc, $0000                                  ; $46e6: $01 $00 $00
    rst $38                                       ; $46e9: $ff
    ld h, e                                       ; $46ea: $63
    ccf                                           ; $46eb: $3f
    inc bc                                        ; $46ec: $03
    ret c                                         ; $46ed: $d8

    ld bc, $0000                                  ; $46ee: $01 $00 $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    nop                                           ; $46f8: $00
    nop                                           ; $46f9: $00
    nop                                           ; $46fa: $00
    nop                                           ; $46fb: $00
    nop                                           ; $46fc: $00
    nop                                           ; $46fd: $00
    nop                                           ; $46fe: $00
    nop                                           ; $46ff: $00
    nop                                           ; $4700: $00
    push bc                                       ; $4701: $c5
    inc e                                         ; $4702: $1c
    rst $38                                       ; $4703: $ff
    ccf                                           ; $4704: $3f
    sbc a                                         ; $4705: $9f
    ld bc, $0c17                                  ; $4706: $01 $17 $0c
    nop                                           ; $4709: $00
    nop                                           ; $470a: $00
    nop                                           ; $470b: $00
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    nop                                           ; $472f: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    push bc                                       ; $4741: $c5
    inc e                                         ; $4742: $1c
    rst $38                                       ; $4743: $ff
    ccf                                           ; $4744: $3f
    sbc a                                         ; $4745: $9f
    ld bc, $0c17                                  ; $4746: $01 $17 $0c
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    rra                                           ; $4781: $1f
    ld a, [hl]                                    ; $4782: $7e
    ld a, [$2003]                                 ; $4783: $fa $03 $20
    inc bc                                        ; $4786: $03
    ld b, b                                       ; $4787: $40
    ld bc, $0000                                  ; $4788: $01 $00 $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    nop                                           ; $47c0: $00
    xor b                                         ; $47c1: $a8
    add hl, sp                                    ; $47c2: $39
    ld [de], a                                    ; $47c3: $12
    ld b, h                                       ; $47c4: $44
    cp a                                          ; $47c5: $bf
    ld bc, $2bff                                  ; $47c6: $01 $ff $2b
    xor h                                         ; $47c9: $ac
    add hl, sp                                    ; $47ca: $39
    nop                                           ; $47cb: $00
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    ld c, e                                       ; $4801: $4b
    ld sp, $7fd8                                  ; $4802: $31 $d8 $7f
    and l                                         ; $4805: $a5
    ld [hl], d                                    ; $4806: $72
    rst $00                                       ; $4807: $c7
    ld d, c                                       ; $4808: $51
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    ld l, h                                       ; $4841: $6c
    inc a                                         ; $4842: $3c
    cp $7f                                        ; $4843: $fe $7f
    ld e, [hl]                                    ; $4845: $5e
    inc bc                                        ; $4846: $03
    ret nz                                        ; $4847: $c0

    ld l, $00                                     ; $4848: $2e $00
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    nop                                           ; $485b: $00
    nop                                           ; $485c: $00
    nop                                           ; $485d: $00
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486a: $00
    nop                                           ; $486b: $00
    nop                                           ; $486c: $00
    nop                                           ; $486d: $00
    nop                                           ; $486e: $00
    nop                                           ; $486f: $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    nop                                           ; $487b: $00
    nop                                           ; $487c: $00
    nop                                           ; $487d: $00
    nop                                           ; $487e: $00
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    db $eb                                        ; $4881: $eb
    dec a                                         ; $4882: $3d
    ld a, c                                       ; $4883: $79
    ld a, [hl]                                    ; $4884: $7e
    ld a, [c]                                     ; $4885: $f2
    ld [hl], h                                    ; $4886: $74
    add hl, bc                                    ; $4887: $09
    inc a                                         ; $4888: $3c
    ld b, $21                                     ; $4889: $06 $21
    nop                                           ; $488b: $00
    ld a, h                                       ; $488c: $7c
    ldh [$03], a                                  ; $488d: $e0 $03
    nop                                           ; $488f: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00

    db $e0, $7f, $ff, $7f, $df, $02, $00, $00, $e0, $03, $ff, $7f, $1f, $00, $00, $00

    or l                                          ; $48d1: $b5
    ld d, [hl]                                    ; $48d2: $56
    or l                                          ; $48d3: $b5
    ld d, [hl]                                    ; $48d4: $56
    or l                                          ; $48d5: $b5
    ld d, [hl]                                    ; $48d6: $56
    or l                                          ; $48d7: $b5
    ld d, [hl]                                    ; $48d8: $56
    or l                                          ; $48d9: $b5
    ld d, [hl]                                    ; $48da: $56
    or l                                          ; $48db: $b5
    ld d, [hl]                                    ; $48dc: $56
    or l                                          ; $48dd: $b5
    ld d, [hl]                                    ; $48de: $56
    or l                                          ; $48df: $b5
    ld d, [hl]                                    ; $48e0: $56
    or l                                          ; $48e1: $b5
    ld d, [hl]                                    ; $48e2: $56
    or l                                          ; $48e3: $b5
    ld d, [hl]                                    ; $48e4: $56
    or l                                          ; $48e5: $b5
    ld d, [hl]                                    ; $48e6: $56
    or l                                          ; $48e7: $b5
    ld d, [hl]                                    ; $48e8: $56
    or l                                          ; $48e9: $b5
    ld d, [hl]                                    ; $48ea: $56
    or l                                          ; $48eb: $b5
    ld d, [hl]                                    ; $48ec: $56
    or l                                          ; $48ed: $b5
    ld d, [hl]                                    ; $48ee: $56
    or l                                          ; $48ef: $b5
    ld d, [hl]                                    ; $48f0: $56
    or l                                          ; $48f1: $b5
    ld d, [hl]                                    ; $48f2: $56
    or l                                          ; $48f3: $b5
    ld d, [hl]                                    ; $48f4: $56
    or l                                          ; $48f5: $b5
    ld d, [hl]                                    ; $48f6: $56
    or l                                          ; $48f7: $b5
    ld d, [hl]                                    ; $48f8: $56
    or l                                          ; $48f9: $b5
    ld d, [hl]                                    ; $48fa: $56
    or l                                          ; $48fb: $b5
    ld d, [hl]                                    ; $48fc: $56
    or l                                          ; $48fd: $b5
    ld d, [hl]                                    ; $48fe: $56
    or l                                          ; $48ff: $b5
    ld d, [hl]                                    ; $4900: $56

    db $8c, $35, $20, $69, $00, $7e, $e9, $7f, $00, $00, $ad, $39, $00, $00, $00, $00

    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    nop                                           ; $491e: $00
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00

jr_0d7_4934:
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00

jr_0d7_493c:
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    nop                                           ; $493e: $00
    nop                                           ; $493f: $00
    nop                                           ; $4940: $00

    db $00, $20, $ff, $7f, $ef, $3d, $00, $00

    nop                                           ; $4949: $00
    jr nz, jr_0d7_4934                            ; $494a: $20 $e8

    inc bc                                        ; $494c: $03
    ldh [rSB], a                                  ; $494d: $e0 $01
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    jr nz, @+$21                                  ; $4952: $20 $1f

    ld bc, $000f                                  ; $4954: $01 $0f $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    jr nz, jr_0d7_493c                            ; $495a: $20 $e0

    ld a, a                                       ; $495c: $7f
    ldh [$3d], a                                  ; $495d: $e0 $3d
    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    jr nz, jr_0d7_49c3                            ; $4962: $20 $5f

    inc bc                                        ; $4964: $03
    db $f4                                        ; $4965: $f4
    ld bc, $0000                                  ; $4966: $01 $00 $00
    nop                                           ; $4969: $00
    jr nz, jr_0d7_4986                            ; $496a: $20 $1a

    ld a, h                                       ; $496c: $7c
    db $f4                                        ; $496d: $f4
    ld bc, $0000                                  ; $496e: $01 $00 $00

    db $00

    db $20                                        ; $4972: $20

    db $31, $46, $f4, $01, $00, $00

    db $f4                                        ; $4979: $f4
    ld bc, $01f4                                  ; $497a: $01 $f4 $01
    db $f4                                        ; $497d: $f4
    ld bc, $01f4                                  ; $497e: $01 $f4 $01
    inc d                                         ; $4981: $14
    ld l, $95                                     ; $4982: $2e $95
    ld a, l                                       ; $4984: $7d
    adc [hl]                                      ; $4985: $8e

jr_0d7_4986:
    ld d, b                                       ; $4986: $50
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    rra                                           ; $4989: $1f
    ld a, h                                       ; $498a: $7c
    ld a, a                                       ; $498b: $7f
    ld c, [hl]                                    ; $498c: $4e
    ld c, d                                       ; $498d: $4a
    add hl, hl                                    ; $498e: $29
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    adc $39                                       ; $4991: $ce $39
    adc $39                                       ; $4993: $ce $39
    adc $39                                       ; $4995: $ce $39
    adc $39                                       ; $4997: $ce $39
    adc $39                                       ; $4999: $ce $39
    adc $39                                       ; $499b: $ce $39
    adc $39                                       ; $499d: $ce $39
    adc $39                                       ; $499f: $ce $39
    adc $39                                       ; $49a1: $ce $39
    adc $39                                       ; $49a3: $ce $39

jr_0d7_49a5:
    adc $39                                       ; $49a5: $ce $39
    adc $39                                       ; $49a7: $ce $39
    adc $39                                       ; $49a9: $ce $39
    adc $39                                       ; $49ab: $ce $39
    adc $39                                       ; $49ad: $ce $39
    adc $39                                       ; $49af: $ce $39
    adc $39                                       ; $49b1: $ce $39
    adc $39                                       ; $49b3: $ce $39
    adc $39                                       ; $49b5: $ce $39
    adc $39                                       ; $49b7: $ce $39
    adc $39                                       ; $49b9: $ce $39
    adc $39                                       ; $49bb: $ce $39
    adc $39                                       ; $49bd: $ce $39
    adc $39                                       ; $49bf: $ce $39
    ld b, l                                       ; $49c1: $45
    ld b, c                                       ; $49c2: $41

jr_0d7_49c3:
    jr nz, jr_0d7_49f2                            ; $49c3: $20 $2d

    jr nz, @+$4f                                  ; $49c5: $20 $4d

    ld h, c                                       ; $49c7: $61
    ld [hl], e                                    ; $49c8: $73
    ld [hl], h                                    ; $49c9: $74
    ld h, l                                       ; $49ca: $65
    ld [hl], d                                    ; $49cb: $72
    ld l, c                                       ; $49cc: $69
    ld l, [hl]                                    ; $49cd: $6e
    ld h, a                                       ; $49ce: $67
    ld a, [hl-]                                   ; $49cf: $3a
    inc hl                                        ; $49d0: $23
    inc hl                                        ; $49d1: $23
    inc hl                                        ; $49d2: $23
    inc hl                                        ; $49d3: $23
    inc hl                                        ; $49d4: $23
    inc hl                                        ; $49d5: $23
    inc hl                                        ; $49d6: $23
    inc hl                                        ; $49d7: $23
    inc hl                                        ; $49d8: $23
    inc hl                                        ; $49d9: $23
    inc hl                                        ; $49da: $23
    inc hl                                        ; $49db: $23
    inc hl                                        ; $49dc: $23
    inc hl                                        ; $49dd: $23
    inc hl                                        ; $49de: $23
    inc hl                                        ; $49df: $23
    dec c                                         ; $49e0: $0d
    ld a, [bc]                                    ; $49e1: $0a

    db $9e, $00, $1a, $00

    ld a, $00                                     ; $49e6: $3e $00
    ld b, [hl]                                    ; $49e8: $46
    nop                                           ; $49e9: $00
    ld c, [hl]                                    ; $49ea: $4e
    nop                                           ; $49eb: $00
    ld d, [hl]                                    ; $49ec: $56
    nop                                           ; $49ed: $00
    ld e, [hl]                                    ; $49ee: $5e
    nop                                           ; $49ef: $00
    ld h, [hl]                                    ; $49f0: $66
    nop                                           ; $49f1: $00

jr_0d7_49f2:
    ld l, [hl]                                    ; $49f2: $6e
    nop                                           ; $49f3: $00
    halt                                          ; $49f4: $76
    nop                                           ; $49f5: $00
    ld a, [hl]                                    ; $49f6: $7e
    nop                                           ; $49f7: $00
    add [hl]                                      ; $49f8: $86
    nop                                           ; $49f9: $00
    adc [hl]                                      ; $49fa: $8e
    nop                                           ; $49fb: $00
    sub [hl]                                      ; $49fc: $96
    nop                                           ; $49fd: $00

    db $0f, $00

    nop                                           ; $4a00: $00
    add hl, bc                                    ; $4a01: $09
    nop                                           ; $4a02: $00
    add hl, bc                                    ; $4a03: $09

    db $4b, $7e, $4b, $86, $48, $8e, $48, $96, $49, $98, $5c, $00, $5d, $08, $62, $0e
    db $62, $1f, $61, $70, $58, $78, $5b, $80, $58, $88, $58, $90, $59, $98

    ld bc, $fb1e                                  ; $4a22: $01 $1e $fb
    inc b                                         ; $4a25: $04
    db $fc                                        ; $4a26: $fc
    dec b                                         ; $4a27: $05
    db $fd                                        ; $4a28: $fd
    db $fc                                        ; $4a29: $fc
    ld bc, $fb20                                  ; $4a2a: $01 $20 $fb
    inc b                                         ; $4a2d: $04
    db $fc                                        ; $4a2e: $fc
    dec b                                         ; $4a2f: $05
    db $fd                                        ; $4a30: $fd
    db $fc                                        ; $4a31: $fc
    ld bc, $fb22                                  ; $4a32: $01 $22 $fb
    inc b                                         ; $4a35: $04
    db $fc                                        ; $4a36: $fc
    dec b                                         ; $4a37: $05
    cp $fb                                        ; $4a38: $fe $fb
    ld bc, $fb24                                  ; $4a3a: $01 $24 $fb
    inc b                                         ; $4a3d: $04
    db $fc                                        ; $4a3e: $fc
    dec b                                         ; $4a3f: $05
    db $fd                                        ; $4a40: $fd
    db $fc                                        ; $4a41: $fc
    ld bc, $fb26                                  ; $4a42: $01 $26 $fb
    inc b                                         ; $4a45: $04
    db $fc                                        ; $4a46: $fc
    dec b                                         ; $4a47: $05
    db $fd                                        ; $4a48: $fd
    db $fc                                        ; $4a49: $fc
    ld bc, $fb28                                  ; $4a4a: $01 $28 $fb
    inc b                                         ; $4a4d: $04
    db $fc                                        ; $4a4e: $fc
    dec b                                         ; $4a4f: $05
    db $fd                                        ; $4a50: $fd
    db $fc                                        ; $4a51: $fc
    ld bc, $fb2a                                  ; $4a52: $01 $2a $fb
    inc b                                         ; $4a55: $04
    db $fc                                        ; $4a56: $fc
    dec b                                         ; $4a57: $05
    cp $fb                                        ; $4a58: $fe $fb
    ld bc, $fb2c                                  ; $4a5a: $01 $2c $fb
    inc b                                         ; $4a5d: $04
    db $fc                                        ; $4a5e: $fc
    dec b                                         ; $4a5f: $05
    db $fd                                        ; $4a60: $fd
    db $fc                                        ; $4a61: $fc
    ld bc, $fb2e                                  ; $4a62: $01 $2e $fb
    inc b                                         ; $4a65: $04
    db $fc                                        ; $4a66: $fc
    dec b                                         ; $4a67: $05
    db $fd                                        ; $4a68: $fd
    db $fc                                        ; $4a69: $fc
    ld bc, $fb30                                  ; $4a6a: $01 $30 $fb
    inc b                                         ; $4a6d: $04
    db $fc                                        ; $4a6e: $fc
    dec b                                         ; $4a6f: $05
    db $fd                                        ; $4a70: $fd
    db $fc                                        ; $4a71: $fc
    ld bc, $fb32                                  ; $4a72: $01 $32 $fb
    inc b                                         ; $4a75: $04
    db $fc                                        ; $4a76: $fc
    dec b                                         ; $4a77: $05
    cp $fb                                        ; $4a78: $fe $fb
    ld bc, $fb34                                  ; $4a7a: $01 $34 $fb
    inc b                                         ; $4a7d: $04
    db $fc                                        ; $4a7e: $fc
    dec b                                         ; $4a7f: $05
    db $fd                                        ; $4a80: $fd
    db $fc                                        ; $4a81: $fc

    db $60, $03, $70, $01, $04, $07, $03, $0f, $0f, $1f, $01, $00, $0f, $0f, $01, $06
    db $03, $07, $07, $0f, $07, $0e, $0e, $00, $00, $2f, $1f, $77, $3f, $f3, $7f, $fb
    db $7f, $00, $f3, $1f, $fb, $7f, $f0, $e0, $ea, $f3, $00, $df, $ef, $bf, $df, $7f
    db $bf, $ff, $7f, $01, $fe, $3f, $7f, $bf, $fe, $bf, $7c, $04, $18, $00, $ff, $ff
    db $b7, $ff, $e8, $fb, $d7, $3f, $00, $1f, $ff, $7f, $ff, $ff, $fe, $ff, $fc, $00
    db $7e, $7c, $9e, $7c, $be, $fc, $be, $7c, $00, $be, $fd, $bf, $7d, $ff, $fd, $bf
    db $7f, $80, $04, $18, $ff, $01, $00, $01, $81, $03, $81, $10, $03, $03, $07, $02
    db $00, $06, $03, $0f, $02, $00, $3f, $1a, $fe, $f3, $ff, $eb, $ff, $d3, $08, $ff
    db $fb, $ff, $ff, $04, $08, $00, $02, $00, $30, $03, $02, $02, $00, $01, $00, $01
    db $01, $03, $01, $c0, $08, $08, $04, $40, $ff, $ef, $80, $00, $c0, $80, $00, $e0
    db $c0, $e0, $81, $f1, $e3, $f9, $f7, $08, $f7, $cf, $ff, $f7, $35, $10, $fb, $ff
    db $fc, $42, $00, $01, $10, $80, $80, $00, $80, $20, $08, $f0, $00, $c0, $e0, $c0
    db $f8, $f0, $f8, $e0, $fc, $16, $f9, $ff, $fc, $58, $00, $fe, $1e, $18, $20, $08
    db $08, $00, $00, $0c, $18, $1c, $38, $3e, $3c, $3e, $18, $38, $3f, $3e, $16, $28
    db $08, $38, $20, $20, $08, $00, $08, $0c, $1c, $06, $3c, $1f, $18, $1e, $10, $38
    db $3f, $7e, $20, $78, $40, $40, $01, $01, $a0, $22, $01, $07, $24, $01, $0f, $7f
    db $3f, $ff, $7f, $80, $42, $78, $1c, $0c, $3c, $1c, $7c, $3c, $7f, $00, $7c, $7f
    db $4d, $7f, $4c, $6f, $5d, $4d, $01, $7e, $ff, $7d, $fd, $7f, $ff, $7f, $04, $00
    db $80, $15, $09, $01, $ff, $7f, $cf, $7e, $ff, $fd, $5c, $ef, $04, $08, $fe, $0d
    db $01, $04, $10, $2c, $01, $03, $fd, $e0, $fa, $08, $c3, $10, $f2, $10, $01, $de
    db $bf, $be, $7f, $08, $be, $7f, $bf, $7e, $02, $40, $7f, $3f, $fe, $60, $5f, $23
    db $01, $03, $30, $fe, $ff, $c1, $ff, $3f, $80, $34, $01, $e6, $ef, $da, $df, $ba
    db $df, $be, $04, $df, $bb, $ff, $bf, $df, $20, $28, $f8, $ff, $40, $07, $58, $00
    db $9d, $bd, $6b, $7d, $eb, $7d, $7a, $fb, $04, $00, $5b, $01, $81, $08, $64, $08
    db $08, $29, $01, $08, $36, $00, $5d, $08, $20, $02, $79, $10, $84, $08, $26, $00
    db $40, $aa, $51, $01, $04, $20, $80, $11, $16, $00, $0e, $1a, $00, $11, $eb, $3c
    db $80, $84, $09, $34, $08, $40, $66, $00, $01, $4c, $20, $64, $71, $f4, $81, $f8
    db $81, $f8, $81, $f8, $81, $b0, $08, $01, $01, $08, $08, $38, $5d, $5d, $08, $18
    db $00, $81, $01, $01, $01, $01, $08, $28, $08, $40, $01, $01, $04, $01, $81, $11
    db $11, $04, $03, $04, $0e, $0e, $04, $04, $11, $01, $a1, $34, $08, $07, $40, $40
    db $08, $08, $01, $01, $01, $4c, $08, $64, $6a, $1e, $00, $02, $00, $0b, $00

    nop                                           ; $4c71: $00
    add hl, bc                                    ; $4c72: $09
    nop                                           ; $4c73: $00
    add hl, bc                                    ; $4c74: $09

    db $33, $36, $31, $3e, $31, $46, $30, $4e, $3b, $56, $3a, $5e, $39, $68, $3b, $70
    db $38, $78, $38, $7c, $40, $4e, $60, $01, $c6, $00, $00, $cc, $00, $6e, $44, $7f
    db $15, $bf, $15, $04, $ff, $15, $75, $75, $00, $01, $80, $21, $00, $00, $31, $10
    db $73, $10, $b1, $10, $f1, $50, $00, $f1, $50, $70, $10, $30, $30, $18, $00, $00
    db $2c, $0c, $31, $10, $12, $00, $0b, $01, $00, $0f, $05, $35, $04, $18, $18, $20
    db $00, $00, $b0, $90, $b1, $00, $fa, $d0, $bf, $94, $02, $bf, $95, $bd, $14, $54
    db $54, $44, $08, $29, $00, $00, $b6, $04, $fb, $59, $f3, $51, $71, $00, $50, $90
    db $90, $00, $1e, $00, $1e, $04, $00, $0e, $04, $0e, $80, $0e, $c0, $4e, $c0, $04
    db $c4, $80, $04, $c0, $c4, $66, $08, $92, $00, $00, $eb, $c0, $3f, $05, $3f, $1d
    db $9b, $01, $00, $92, $00, $6b, $40, $bf, $85, $3f, $1d, $08, $1b, $01, $0d, $0d
    db $80, $88, $10, $00, $ae, $00, $08, $5b, $53, $84, $80, $02, $00, $0d, $10, $01
    db $06, $06, $a2, $78, $64, $00, $b6, $32, $00, $ce, $40, $47, $03, $26, $02, $36
    db $12, $08, $d2, $10, $61, $61, $c4, $68, $4c, $00, $ae, $00, $04, $ff, $55, $ff
    db $55, $5f, $15, $25, $40, $25, $e0, $88, $3a, $00, $1f, $0c, $1b, $09, $00, $5b
    db $09, $a9, $09, $f0, $10, $f0, $70, $08, $60, $00, $30, $30, $06, $59, $02, $00
    db $07, $01, $01, $0b, $01, $07, $05, $01, $01, $1e, $89, $0c, $00, $00, $cd, $cd
    db $18, $98, $4c, $29

    ld e, $00                                     ; $4d79: $1e $00
    ld [bc], a                                    ; $4d7b: $02
    nop                                           ; $4d7c: $00
    dec bc                                        ; $4d7d: $0b
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    add hl, bc                                    ; $4d80: $09
    nop                                           ; $4d81: $00
    add hl, bc                                    ; $4d82: $09
    inc sp                                        ; $4d83: $33
    ld [hl], $31                                  ; $4d84: $36 $31
    ld a, $31                                     ; $4d86: $3e $31
    ld b, [hl]                                    ; $4d88: $46
    jr nc, jr_0d7_4dd9                            ; $4d89: $30 $4e

    dec sp                                        ; $4d8b: $3b
    ld d, [hl]                                    ; $4d8c: $56
    ld a, [hl-]                                   ; $4d8d: $3a
    ld e, [hl]                                    ; $4d8e: $5e
    add hl, sp                                    ; $4d8f: $39
    ld l, b                                       ; $4d90: $68
    dec sp                                        ; $4d91: $3b
    ld [hl], b                                    ; $4d92: $70
    scf                                           ; $4d93: $37
    ld a, b                                       ; $4d94: $78
    scf                                           ; $4d95: $37
    ld a, h                                       ; $4d96: $7c
    ld b, b                                       ; $4d97: $40
    ld c, [hl]                                    ; $4d98: $4e
    ld h, b                                       ; $4d99: $60
    ld bc, $00d8                                  ; $4d9a: $01 $d8 $00
    nop                                           ; $4d9d: $00
    call z, Call_0d7_6e00                         ; $4d9e: $cc $00 $6e
    ld b, h                                       ; $4da1: $44
    ld a, a                                       ; $4da2: $7f
    dec d                                         ; $4da3: $15
    cp a                                          ; $4da4: $bf
    dec d                                         ; $4da5: $15
    nop                                           ; $4da6: $00
    rst $38                                       ; $4da7: $ff
    dec d                                         ; $4da8: $15
    ld [hl], l                                    ; $4da9: $75
    ld [hl], l                                    ; $4daa: $75
    ld [hl-], a                                   ; $4dab: $32
    nop                                           ; $4dac: $00
    dec sp                                        ; $4dad: $3b
    ld de, $3f00                                  ; $4dae: $11 $00 $3f
    inc d                                         ; $4db1: $14
    scf                                           ; $4db2: $37
    dec b                                         ; $4db3: $05
    dec sp                                        ; $4db4: $3b
    add hl, de                                    ; $4db5: $19
    inc sp                                        ; $4db6: $33
    ld de, $3304                                  ; $4db7: $11 $04 $33
    ld de, $1111                                  ; $4dba: $11 $11 $11
    nop                                           ; $4dbd: $00
    ld bc, $2100                                  ; $4dbe: $01 $00 $21
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    ld sp, $7310                                  ; $4dc3: $31 $10 $73
    db $10                                        ; $4dc6: $10
    or c                                          ; $4dc7: $b1
    db $10                                        ; $4dc8: $10
    pop af                                        ; $4dc9: $f1
    ld d, b                                       ; $4dca: $50
    nop                                           ; $4dcb: $00
    pop af                                        ; $4dcc: $f1
    ld d, b                                       ; $4dcd: $50
    ld [hl], b                                    ; $4dce: $70
    db $10                                        ; $4dcf: $10
    jr nc, jr_0d7_4e02                            ; $4dd0: $30 $30

    ld [$0000], sp                                ; $4dd2: $08 $00 $00
    inc l                                         ; $4dd5: $2c
    inc b                                         ; $4dd6: $04
    dec e                                         ; $4dd7: $1d
    inc d                                         ; $4dd8: $14

jr_0d7_4dd9:
    xor [hl]                                      ; $4dd9: $ae
    inc b                                         ; $4dda: $04
    rst $38                                       ; $4ddb: $ff
    ld d, l                                       ; $4ddc: $55
    nop                                           ; $4ddd: $00
    rst $38                                       ; $4dde: $ff
    ld d, l                                       ; $4ddf: $55
    db $fd                                        ; $4de0: $fd
    ld d, h                                       ; $4de1: $54
    ld d, h                                       ; $4de2: $54
    ld d, h                                       ; $4de3: $54
    jr nz, jr_0d7_4de6                            ; $4de4: $20 $00

jr_0d7_4de6:
    nop                                           ; $4de6: $00
    or b                                          ; $4de7: $b0
    sub b                                         ; $4de8: $90
    or c                                          ; $4de9: $b1
    nop                                           ; $4dea: $00
    ld a, [$bfd0]                                 ; $4deb: $fa $d0 $bf
    sub h                                         ; $4dee: $94
    ld [bc], a                                    ; $4def: $02
    cp a                                          ; $4df0: $bf
    sub l                                         ; $4df1: $95
    cp l                                          ; $4df2: $bd
    inc d                                         ; $4df3: $14
    ld d, h                                       ; $4df4: $54
    ld d, h                                       ; $4df5: $54
    inc [hl]                                      ; $4df6: $34
    ld [$0019], sp                                ; $4df7: $08 $19 $00
    nop                                           ; $4dfa: $00
    xor [hl]                                      ; $4dfb: $ae
    inc c                                         ; $4dfc: $0c
    db $d3                                        ; $4dfd: $d3
    ld b, c                                       ; $4dfe: $41
    bit 0, c                                      ; $4dff: $cb $41
    ld [hl], l                                    ; $4e01: $75

jr_0d7_4e02:
    nop                                           ; $4e02: $00
    ld b, h                                       ; $4e03: $44
    sbc b                                         ; $4e04: $98
    sbc b                                         ; $4e05: $98
    nop                                           ; $4e06: $00
    ld e, $00                                     ; $4e07: $1e $00
    ld e, $04                                     ; $4e09: $1e $04
    nop                                           ; $4e0b: $00
    ld c, $04                                     ; $4e0c: $0e $04
    ld c, $80                                     ; $4e0e: $0e $80
    ld c, $c0                                     ; $4e10: $0e $c0
    ld c, [hl]                                    ; $4e12: $4e
    ret nz                                        ; $4e13: $c0

    nop                                           ; $4e14: $00
    call nz, Call_000_0480                        ; $4e15: $c4 $80 $04
    ret nz                                        ; $4e18: $c0

    call nz, $0002                                ; $4e19: $c4 $02 $00
    inc bc                                        ; $4e1c: $03
    inc b                                         ; $4e1d: $04
    ld bc, $0033                                  ; $4e1e: $01 $33 $00
    cp e                                          ; $4e21: $bb
    ld de, $0842                                  ; $4e22: $11 $42 $08
    ld [hl], a                                    ; $4e25: $77
    ld b, l                                       ; $4e26: $45
    nop                                           ; $4e27: $00
    ld [de], a                                    ; $4e28: $12
    nop                                           ; $4e29: $00
    xor e                                         ; $4e2a: $ab
    nop                                           ; $4e2b: $00
    rst $38                                       ; $4e2c: $ff
    ld b, l                                       ; $4e2d: $45
    rst $38                                       ; $4e2e: $ff
    ld e, l                                       ; $4e2f: $5d
    inc c                                         ; $4e30: $0c
    db $db                                        ; $4e31: $db
    ld b, c                                       ; $4e32: $41
    ld c, l                                       ; $4e33: $4d
    ld c, l                                       ; $4e34: $4d
    ld [hl], b                                    ; $4e35: $70
    ld [$6804], sp                                ; $4e36: $08 $04 $68
    stop                                          ; $4e39: $10 $00
    nop                                           ; $4e3b: $00
    xor [hl]                                      ; $4e3c: $ae
    ld [$535b], sp                                ; $4e3d: $08 $5b $53
    add h                                         ; $4e40: $84
    add b                                         ; $4e41: $80
    ld [bc], a                                    ; $4e42: $02
    nop                                           ; $4e43: $00
    ld [$010d], sp                                ; $4e44: $08 $0d $01
    ld b, $06                                     ; $4e47: $06 $06
    ld [hl+], a                                   ; $4e49: $22
    ld a, b                                       ; $4e4a: $78
    ld h, h                                       ; $4e4b: $64
    nop                                           ; $4e4c: $00
    or [hl]                                       ; $4e4d: $b6
    nop                                           ; $4e4e: $00
    ld [hl-], a                                   ; $4e4f: $32
    adc $40                                       ; $4e50: $ce $40
    ld b, a                                       ; $4e52: $47
    inc bc                                        ; $4e53: $03
    ld h, $02                                     ; $4e54: $26 $02
    ld [hl], $04                                  ; $4e56: $36 $04
    ld [de], a                                    ; $4e58: $12
    jp nc, Jump_0d7_6110                          ; $4e59: $d2 $10 $61

    ld h, c                                       ; $4e5c: $61
    ld b, h                                       ; $4e5d: $44
    ld l, b                                       ; $4e5e: $68
    ld c, h                                       ; $4e5f: $4c
    nop                                           ; $4e60: $00
    add h                                         ; $4e61: $84
    xor h                                         ; $4e62: $ac
    jr jr_0d7_4ec4                                ; $4e63: $18 $5f

    dec d                                         ; $4e65: $15
    dec h                                         ; $4e66: $25
    dec h                                         ; $4e67: $25
    ld h, b                                       ; $4e68: $60
    adc b                                         ; $4e69: $88
    ld a, [hl-]                                   ; $4e6a: $3a
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    rra                                           ; $4e6d: $1f
    inc c                                         ; $4e6e: $0c
    dec de                                        ; $4e6f: $1b
    add hl, bc                                    ; $4e70: $09
    dec de                                        ; $4e71: $1b
    add hl, bc                                    ; $4e72: $09
    ld c, c                                       ; $4e73: $49
    add hl, bc                                    ; $4e74: $09
    nop                                           ; $4e75: $00
    and b                                         ; $4e76: $a0
    nop                                           ; $4e77: $00
    ldh a, [rNR10]                                ; $4e78: $f0 $10
    ldh a, [rSVBK]                                ; $4e7a: $f0 $70
    ld h, b                                       ; $4e7c: $60
    nop                                           ; $4e7d: $00
    jr nz, jr_0d7_4eb0                            ; $4e7e: $20 $30

    jr nc, @-$76                                  ; $4e80: $30 $88

    ld c, b                                       ; $4e82: $48
    ld [bc], a                                    ; $4e83: $02
    nop                                           ; $4e84: $00
    rlca                                          ; $4e85: $07
    ld bc, $040b                                  ; $4e86: $01 $0b $04
    ld bc, $0507                                  ; $4e89: $01 $07 $05
    ld bc, $9e01                                  ; $4e8c: $01 $01 $9e
    adc b                                         ; $4e8f: $88
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    inc bc                                        ; $4e92: $03
    cp c                                          ; $4e93: $b9
    sbc c                                         ; $4e94: $99
    jr nc, jr_0d7_4ea7                            ; $4e95: $30 $10

    db $10                                        ; $4e97: $10
    db $10                                        ; $4e98: $10
    inc e                                         ; $4e99: $1c
    sbc b                                         ; $4e9a: $98
    ld b, b                                       ; $4e9b: $40
    add hl, bc                                    ; $4e9c: $09
    inc e                                         ; $4e9d: $1c
    nop                                           ; $4e9e: $00
    ld [bc], a                                    ; $4e9f: $02
    nop                                           ; $4ea0: $00
    ld a, [bc]                                    ; $4ea1: $0a
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    add hl, bc                                    ; $4ea4: $09
    nop                                           ; $4ea5: $00
    add hl, bc                                    ; $4ea6: $09

jr_0d7_4ea7:
    ld l, $36                                     ; $4ea7: $2e $36
    ld l, $3e                                     ; $4ea9: $2e $3e
    ld sp, $3046                                  ; $4eab: $31 $46 $30
    ld c, [hl]                                    ; $4eae: $4e
    dec sp                                        ; $4eaf: $3b

jr_0d7_4eb0:
    ld d, [hl]                                    ; $4eb0: $56
    ld a, [hl-]                                   ; $4eb1: $3a
    ld e, [hl]                                    ; $4eb2: $5e
    scf                                           ; $4eb3: $37
    ld h, [hl]                                    ; $4eb4: $66
    scf                                           ; $4eb5: $37
    ld l, l                                       ; $4eb6: $6d
    ld a, $3e                                     ; $4eb7: $3e $3e
    ld a, $4d                                     ; $4eb9: $3e $4d
    ld b, b                                       ; $4ebb: $40
    ld bc, $00b5                                  ; $4ebc: $01 $b5 $00
    nop                                           ; $4ebf: $00
    add b                                         ; $4ec0: $80
    nop                                           ; $4ec1: $00
    ld b, b                                       ; $4ec2: $40
    nop                                           ; $4ec3: $00

jr_0d7_4ec4:
    jr nz, jr_0d7_4ee6                            ; $4ec4: $20 $20

    ld b, d                                       ; $4ec6: $42
    nop                                           ; $4ec7: $00
    ld [bc], a                                    ; $4ec8: $02
    and e                                         ; $4ec9: $a3
    ld bc, $51f3                                  ; $4eca: $01 $f3 $51
    di                                            ; $4ecd: $f3
    ld de, $0004                                  ; $4ece: $11 $04 $00
    ld d, c                                       ; $4ed1: $51
    inc b                                         ; $4ed2: $04
    di                                            ; $4ed3: $f3

jr_0d7_4ed4:
    ld d, b                                       ; $4ed4: $50
    ld d, c                                       ; $4ed5: $51
    ld d, c                                       ; $4ed6: $51

jr_0d7_4ed7:
    nop                                           ; $4ed7: $00
    ld bc, $0830                                  ; $4ed8: $01 $30 $08
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    inc d                                         ; $4edd: $14
    inc b                                         ; $4ede: $04
    adc b                                         ; $4edf: $88
    ld [$40f8], sp                                ; $4ee0: $08 $f8 $40
    ld a, h                                       ; $4ee3: $7c
    ld e, h                                       ; $4ee4: $5c
    nop                                           ; $4ee5: $00

jr_0d7_4ee6:
    ld sp, $3210                                  ; $4ee6: $31 $10 $32
    nop                                           ; $4ee9: $00
    dec sp                                        ; $4eea: $3b
    add hl, de                                    ; $4eeb: $19
    inc sp                                        ; $4eec: $33
    ld de, $b900                                  ; $4eed: $11 $00 $b9
    nop                                           ; $4ef0: $00
    call c, Call_000_30dc                         ; $4ef1: $dc $dc $30
    nop                                           ; $4ef4: $00
    jr c, jr_0d7_4f07                             ; $4ef5: $38 $10

    nop                                           ; $4ef7: $00
    dec a                                         ; $4ef8: $3d
    inc d                                         ; $4ef9: $14
    ld a, $14                                     ; $4efa: $3e $14
    ccf                                           ; $4efc: $3f
    inc d                                         ; $4efd: $14

jr_0d7_4efe:
    ld [bc], a                                    ; $4efe: $02
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    inc bc                                        ; $4f01: $03
    ld bc, $0193                                  ; $4f02: $01 $93 $01
    db $eb                                        ; $4f05: $eb
    pop bc                                        ; $4f06: $c1

jr_0d7_4f07:
    ccf                                           ; $4f07: $3f
    dec d                                         ; $4f08: $15
    ld [bc], a                                    ; $4f09: $02
    ccf                                           ; $4f0a: $3f
    dec d                                         ; $4f0b: $15
    sub a                                         ; $4f0c: $97
    dec b                                         ; $4f0d: $05
    ret                                           ; $4f0e: $c9


    ret                                           ; $4f0f: $c9


    ld a, [hl-]                                   ; $4f10: $3a
    ld [$0018], sp                                ; $4f11: $08 $18 $00
    nop                                           ; $4f14: $00
    xor h                                         ; $4f15: $ac
    inc c                                         ; $4f16: $0c
    ret nc                                        ; $4f17: $d0

    ld b, b                                       ; $4f18: $40
    ret z                                         ; $4f19: $c8

    ret nz                                        ; $4f1a: $c0

    or h                                          ; $4f1b: $b4
    nop                                           ; $4f1c: $00
    inc b                                         ; $4f1d: $04
    ret c                                         ; $4f1e: $d8

    ret c                                         ; $4f1f: $d8

    nop                                           ; $4f20: $00
    ld e, $00                                     ; $4f21: $1e $00
    ld e, $04                                     ; $4f23: $1e $04
    nop                                           ; $4f25: $00
    ld c, $44                                     ; $4f26: $0e $44
    ld c, $a0                                     ; $4f28: $0e $a0
    ld c, $f0                                     ; $4f2a: $0e $f0
    ld e, $f0                                     ; $4f2c: $1e $f0
    nop                                           ; $4f2e: $00
    ld [hl], h                                    ; $4f2f: $74
    ld h, b                                       ; $4f30: $60
    inc b                                         ; $4f31: $04
    jr nc, jr_0d7_4f68                            ; $4f32: $30 $34

    ld h, b                                       ; $4f34: $60
    nop                                           ; $4f35: $00
    or b                                          ; $4f36: $b0
    nop                                           ; $4f37: $00
    jr nc, jr_0d7_4efe                            ; $4f38: $30 $c4

    ld b, b                                       ; $4f3a: $40
    ld c, d                                       ; $4f3b: $4a
    nop                                           ; $4f3c: $00
    cpl                                           ; $4f3d: $2f
    dec b                                         ; $4f3e: $05
    ccf                                           ; $4f3f: $3f
    nop                                           ; $4f40: $00
    dec d                                         ; $4f41: $15
    push de                                       ; $4f42: $d5
    ld de, $00a6                                  ; $4f43: $11 $a6 $00
    db $db                                        ; $4f46: $db
    inc de                                        ; $4f47: $13
    db $ec                                        ; $4f48: $ec
    ld bc, $cc64                                  ; $4f49: $01 $64 $cc
    ld b, h                                       ; $4f4c: $44
    add $40                                       ; $4f4d: $c6 $40
    ld b, e                                       ; $4f4f: $43
    ld b, e                                       ; $4f50: $43
    halt                                          ; $4f51: $76
    jr c, jr_0d7_4ed4                             ; $4f52: $38 $80

    add b                                         ; $4f54: $80
    jr c, jr_0d7_4ed7                             ; $4f55: $38 $80

    nop                                           ; $4f57: $00
    ld d, d                                       ; $4f58: $52
    ld b, b                                       ; $4f59: $40
    xor e                                         ; $4f5a: $ab
    nop                                           ; $4f5b: $00
    rst $38                                       ; $4f5c: $ff
    ld bc, $ff45                                  ; $4f5d: $01 $45 $ff
    ld e, l                                       ; $4f60: $5d
    db $db                                        ; $4f61: $db
    ld b, c                                       ; $4f62: $41
    ld c, l                                       ; $4f63: $4d
    ld c, l                                       ; $4f64: $4d
    ld [hl+], a                                   ; $4f65: $22
    ld a, b                                       ; $4f66: $78
    ld h, b                                       ; $4f67: $60

jr_0d7_4f68:
    rlca                                          ; $4f68: $07
    add b                                         ; $4f69: $80
    nop                                           ; $4f6a: $00
    ld [bc], a                                    ; $4f6b: $02
    ld [$0199], sp                                ; $4f6c: $08 $99 $01
    ld l, h                                       ; $4f6f: $6c
    ld c, h                                       ; $4f70: $4c
    sub b                                         ; $4f71: $90
    ld bc, $0880                                  ; $4f72: $01 $80 $08
    nop                                           ; $4f75: $00
    inc [hl]                                      ; $4f76: $34
    inc b                                         ; $4f77: $04
    jr jr_0d7_4f92                                ; $4f78: $18 $18

    ld c, b                                       ; $4f7a: $48
    ld c, b                                       ; $4f7b: $48
    nop                                           ; $4f7c: $00
    ld [hl+], a                                   ; $4f7d: $22
    nop                                           ; $4f7e: $00
    ld [hl], a                                    ; $4f7f: $77
    ld b, c                                       ; $4f80: $41
    dec sp                                        ; $4f81: $3b
    ld de, $1537                                  ; $4f82: $11 $37 $15
    jr nz, jr_0d7_4f98                            ; $4f85: $20 $11

    ld de, $885e                                  ; $4f87: $11 $5e $88
    nop                                           ; $4f8a: $00
    nop                                           ; $4f8b: $00
    ccf                                           ; $4f8c: $3f
    dec d                                         ; $4f8d: $15
    dec [hl]                                      ; $4f8e: $35
    ret z                                         ; $4f8f: $c8

    ld [hl-], a                                   ; $4f90: $32
    ld h, b                                       ; $4f91: $60

jr_0d7_4f92:
    add [hl]                                      ; $4f92: $86
    ld a, b                                       ; $4f93: $78
    ld sp, $2031                                  ; $4f94: $31 $31 $20
    cp b                                          ; $4f97: $b8

jr_0d7_4f98:
    ld e, $00                                     ; $4f98: $1e $00
    ld [bc], a                                    ; $4f9a: $02
    nop                                           ; $4f9b: $00
    dec bc                                        ; $4f9c: $0b
    nop                                           ; $4f9d: $00
    nop                                           ; $4f9e: $00
    add hl, bc                                    ; $4f9f: $09
    nop                                           ; $4fa0: $00
    add hl, bc                                    ; $4fa1: $09
    inc sp                                        ; $4fa2: $33
    ld [hl], $31                                  ; $4fa3: $36 $31
    ld a, $31                                     ; $4fa5: $3e $31
    ld b, [hl]                                    ; $4fa7: $46
    jr nc, @+$50                                  ; $4fa8: $30 $4e

    add hl, sp                                    ; $4faa: $39
    ld d, [hl]                                    ; $4fab: $56
    add hl, sp                                    ; $4fac: $39
    ld e, [hl]                                    ; $4fad: $5e
    add hl, sp                                    ; $4fae: $39
    ld h, [hl]                                    ; $4faf: $66
    dec sp                                        ; $4fb0: $3b
    ld l, [hl]                                    ; $4fb1: $6e
    jr c, jr_0d7_502a                             ; $4fb2: $38 $76

    jr c, @+$7c                                   ; $4fb4: $38 $7a

    ld b, b                                       ; $4fb6: $40
    ld c, d                                       ; $4fb7: $4a
    ld h, b                                       ; $4fb8: $60
    ld bc, $00b1                                  ; $4fb9: $01 $b1 $00
    nop                                           ; $4fbc: $00
    xor h                                         ; $4fbd: $ac
    nop                                           ; $4fbe: $00
    cp $54                                        ; $4fbf: $fe $54
    rst $38                                       ; $4fc1: $ff
    ld d, l                                       ; $4fc2: $55
    rst $38                                       ; $4fc3: $ff
    ld d, l                                       ; $4fc4: $55
    inc b                                         ; $4fc5: $04
    ld a, a                                       ; $4fc6: $7f
    dec d                                         ; $4fc7: $15
    dec [hl]                                      ; $4fc8: $35
    dec [hl]                                      ; $4fc9: $35
    nop                                           ; $4fca: $00
    ld bc, $2080                                  ; $4fcb: $01 $80 $20
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    jr nc, jr_0d7_4fe2                            ; $4fd0: $30 $10

    ld [hl], c                                    ; $4fd2: $71
    db $10                                        ; $4fd3: $10
    or d                                          ; $4fd4: $b2
    db $10                                        ; $4fd5: $10
    di                                            ; $4fd6: $f3
    ld d, c                                       ; $4fd7: $51
    nop                                           ; $4fd8: $00
    di                                            ; $4fd9: $f3
    ld d, c                                       ; $4fda: $51
    ld [hl], c                                    ; $4fdb: $71
    db $10                                        ; $4fdc: $10
    jr nc, jr_0d7_500f                            ; $4fdd: $30 $30

    add hl, de                                    ; $4fdf: $19
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00

jr_0d7_4fe2:
    dec l                                         ; $4fe2: $2d
    inc c                                         ; $4fe3: $0c
    inc sp                                        ; $4fe4: $33
    db $10                                        ; $4fe5: $10
    ld de, $0900                                  ; $4fe6: $11 $00 $09
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    dec c                                         ; $4feb: $0d
    inc b                                         ; $4fec: $04
    inc [hl]                                      ; $4fed: $34
    inc b                                         ; $4fee: $04
    jr jr_0d7_5009                                ; $4fef: $18 $18

    add b                                         ; $4ff1: $80
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    ret nz                                        ; $4ff4: $c0

    ld b, b                                       ; $4ff5: $40
    jp nc, $eb40                                  ; $4ff6: $d2 $40 $eb

    ld b, b                                       ; $4ff9: $40
    rst $38                                       ; $4ffa: $ff
    ld b, l                                       ; $4ffb: $45
    nop                                           ; $4ffc: $00
    rst $38                                       ; $4ffd: $ff
    ld e, l                                       ; $4ffe: $5d
    db $db                                        ; $4fff: $db
    ld b, c                                       ; $5000: $41
    call Call_000_00cd                            ; $5001: $cd $cd $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    add d                                         ; $5006: $82
    add b                                         ; $5007: $80
    sub c                                         ; $5008: $91

jr_0d7_5009:
    ld bc, $c0ea                                  ; $5009: $01 $ea $c0
    cp a                                          ; $500c: $bf
    add l                                         ; $500d: $85
    nop                                           ; $500e: $00

jr_0d7_500f:
    cp a                                          ; $500f: $bf
    sbc l                                         ; $5010: $9d
    sbc e                                         ; $5011: $9b
    ld bc, $4d4d                                  ; $5012: $01 $4d $4d
    nop                                           ; $5015: $00
    ld e, $00                                     ; $5016: $1e $00
    nop                                           ; $5018: $00
    ld e, $04                                     ; $5019: $1e $04
    ld c, $84                                     ; $501b: $0e $84
    ld c, $40                                     ; $501d: $0e $40
    ld c, [hl]                                    ; $501f: $4e
    inc c                                         ; $5020: $0c
    add b                                         ; $5021: $80
    adc [hl]                                      ; $5022: $8e
    nop                                           ; $5023: $00
    inc b                                         ; $5024: $04
    ld [bc], a                                    ; $5025: $02
    db $10                                        ; $5026: $10
    ld h, a                                       ; $5027: $67
    nop                                           ; $5028: $00
    pop bc                                        ; $5029: $c1

jr_0d7_502a:
    nop                                           ; $502a: $00
    ld h, $e2                                     ; $502b: $26 $e2
    ld b, b                                       ; $502d: $40
    ld d, d                                       ; $502e: $52
    ld [$50f1], sp                                ; $502f: $08 $f1 $50
    ld b, b                                       ; $5032: $40
    ld a, b                                       ; $5033: $78
    add [hl]                                      ; $5034: $86
    ld e, b                                       ; $5035: $58
    ld a, [bc]                                    ; $5036: $0a
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    rrca                                          ; $5039: $0f
    dec b                                         ; $503a: $05
    adc a                                         ; $503b: $8f
    dec b                                         ; $503c: $05
    ld c, a                                       ; $503d: $4f
    ld b, l                                       ; $503e: $45
    adc a                                         ; $503f: $8f
    ld bc, $0f85                                  ; $5040: $01 $85 $0f
    dec b                                         ; $5043: $05
    dec b                                         ; $5044: $05
    nop                                           ; $5045: $00
    ld [bc], a                                    ; $5046: $02
    ld [bc], a                                    ; $5047: $02
    and h                                         ; $5048: $a4
    ld l, b                                       ; $5049: $68
    ld bc, $0080                                  ; $504a: $01 $80 $00
    jp nz, $d140                                  ; $504d: $c2 $40 $d1

    ld b, c                                       ; $5050: $41
    ld [$1080], a                                 ; $5051: $ea $80 $10
    ld [$415b], sp                                ; $5054: $08 $5b $41
    adc l                                         ; $5057: $8d
    adc l                                         ; $5058: $8d
    call nz, Call_0d7_6468                        ; $5059: $c4 $68 $64
    nop                                           ; $505c: $00
    cp d                                          ; $505d: $ba
    nop                                           ; $505e: $00
    jr nc, jr_0d7_50b0                            ; $505f: $30 $4f

    ld bc, $072f                                  ; $5061: $01 $2f $07
    sub $10                                       ; $5064: $d6 $10
    ld h, e                                       ; $5066: $63
    ld b, b                                       ; $5067: $40
    ld h, e                                       ; $5068: $63
    ldh [$88], a                                  ; $5069: $e0 $88
    ld a, [hl-]                                   ; $506b: $3a
    nop                                           ; $506c: $00
    rra                                           ; $506d: $1f
    inc c                                         ; $506e: $0c
    dec de                                        ; $506f: $1b
    add hl, bc                                    ; $5070: $09
    ld [bc], a                                    ; $5071: $02
    db $db                                        ; $5072: $db
    add hl, bc                                    ; $5073: $09
    jp hl                                         ; $5074: $e9


    ld c, c                                       ; $5075: $49
    ldh a, [$50]                                  ; $5076: $f0 $50
    ld [bc], a                                    ; $5078: $02
    ld [$4050], sp                                ; $5079: $08 $50 $40
    ld d, b                                       ; $507c: $50
    ld b, $59                                     ; $507d: $06 $59
    ld [bc], a                                    ; $507f: $02
    nop                                           ; $5080: $00
    rlca                                          ; $5081: $07
    ld bc, $010b                                  ; $5082: $01 $0b $01
    add hl, bc                                    ; $5085: $09
    rlca                                          ; $5086: $07
    dec b                                         ; $5087: $05
    ld bc, $1e01                                  ; $5088: $01 $01 $1e
    adc c                                         ; $508b: $89
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    sub l                                         ; $508e: $95
    nop                                           ; $508f: $00
    add b                                         ; $5090: $80
    ld bc, $1cd0                                  ; $5091: $01 $d0 $1c
    nop                                           ; $5094: $00
    ld [bc], a                                    ; $5095: $02
    nop                                           ; $5096: $00
    ld a, [bc]                                    ; $5097: $0a
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    add hl, bc                                    ; $509a: $09
    nop                                           ; $509b: $00
    add hl, bc                                    ; $509c: $09
    ld sp, $3336                                  ; $509d: $31 $36 $33
    ld a, $39                                     ; $50a0: $3e $39
    ld b, [hl]                                    ; $50a2: $46
    jr nc, jr_0d7_50f3                            ; $50a3: $30 $4e

    add hl, sp                                    ; $50a5: $39
    ld e, c                                       ; $50a6: $59
    dec sp                                        ; $50a7: $3b
    ld h, c                                       ; $50a8: $61
    add hl, sp                                    ; $50a9: $39
    ld l, c                                       ; $50aa: $69
    add hl, sp                                    ; $50ab: $39
    ld [hl], c                                    ; $50ac: $71
    add hl, sp                                    ; $50ad: $39
    ld a, c                                       ; $50ae: $79
    ld b, b                                       ; $50af: $40

jr_0d7_50b0:
    ld c, [hl]                                    ; $50b0: $4e
    ld b, b                                       ; $50b1: $40
    ld bc, $00a7                                  ; $50b2: $01 $a7 $00
    nop                                           ; $50b5: $00
    ld [bc], a                                    ; $50b6: $02
    nop                                           ; $50b7: $00
    inc bc                                        ; $50b8: $03
    ld bc, $01a3                                  ; $50b9: $01 $a3 $01
    di                                            ; $50bc: $f3
    ld d, c                                       ; $50bd: $51
    add b                                         ; $50be: $80
    ld [bc], a                                    ; $50bf: $02
    ld [$1173], sp                                ; $50c0: $08 $73 $11

Call_0d7_50c3:
    ld sp, $d011                                  ; $50c3: $31 $11 $d0
    db $10                                        ; $50c6: $10
    ld h, b                                       ; $50c7: $60
    jr nz, jr_0d7_512a                            ; $50c8: $20 $60

    nop                                           ; $50ca: $00
    ld bc, $c040                                  ; $50cb: $01 $40 $c0
    nop                                           ; $50ce: $00
    ld h, b                                       ; $50cf: $60
    ld b, b                                       ; $50d0: $40
    ld [hl], b                                    ; $50d1: $70
    nop                                           ; $50d2: $00
    db $10                                        ; $50d3: $10
    or b                                          ; $50d4: $b0
    db $10                                        ; $50d5: $10
    ldh a, [rNR10]                                ; $50d6: $f0 $10
    ld [hl], b                                    ; $50d8: $70
    ld [hl], b                                    ; $50d9: $70
    jr nc, jr_0d7_50dc                            ; $50da: $30 $00

jr_0d7_50dc:
    nop                                           ; $50dc: $00
    ld a, [hl-]                                   ; $50dd: $3a
    db $10                                        ; $50de: $10
    dec a                                         ; $50df: $3d
    dec d                                         ; $50e0: $15
    ld [hl], $04                                  ; $50e1: $36 $04
    dec sp                                        ; $50e3: $3b
    ld bc, $3319                                  ; $50e4: $01 $19 $33
    ld de, $1133                                  ; $50e7: $11 $33 $11
    ld de, $2811                                  ; $50ea: $11 $11 $28
    ld [$4080], sp                                ; $50ed: $08 $80 $40
    ld [$0147], sp                                ; $50f0: $08 $47 $01

jr_0d7_50f3:
    xor e                                         ; $50f3: $ab
    ld bc, $15ff                                  ; $50f4: $01 $ff $15
    rst $38                                       ; $50f7: $ff
    ld b, $75                                     ; $50f8: $06 $75
    ld h, a                                       ; $50fa: $67
    ld bc, $3333                                  ; $50fb: $01 $33 $33
    inc a                                         ; $50fe: $3c
    ld c, b                                       ; $50ff: $48
    ld c, b                                       ; $5100: $48
    db $10                                        ; $5101: $10
    ld e, $01                                     ; $5102: $1e $01
    nop                                           ; $5104: $00
    ld e, $04                                     ; $5105: $1e $04
    ld c, $04                                     ; $5107: $0e $04
    ld c, $00                                     ; $5109: $0e $00
    ld [bc], a                                    ; $510b: $02
    ld [$0460], sp                                ; $510c: $08 $60 $04
    ld [bc], a                                    ; $510f: $02
    db $10                                        ; $5110: $10
    ld e, a                                       ; $5111: $5f
    nop                                           ; $5112: $00
    xor h                                         ; $5113: $ac
    nop                                           ; $5114: $00
    sub $14                                       ; $5115: $d6 $14
    rst $20                                       ; $5117: $e7

jr_0d7_5118:
    nop                                           ; $5118: $00
    ld h, c                                       ; $5119: $61
    bit 0, c                                      ; $511a: $cb $41
    rst $08                                       ; $511c: $cf
    ld b, c                                       ; $511d: $41
    ld [c], a                                     ; $511e: $e2
    nop                                           ; $511f: $00
    ei                                            ; $5120: $fb
    nop                                           ; $5121: $00
    ld [hl], c                                    ; $5122: $71

jr_0d7_5123:
    rst $00                                       ; $5123: $c7
    ld b, l                                       ; $5124: $45
    db $eb                                        ; $5125: $eb
    ld bc, $75ff                                  ; $5126: $01 $ff $75
    rst $08                                       ; $5129: $cf

jr_0d7_512a:
    inc b                                         ; $512a: $04
    ld b, l                                       ; $512b: $45
    rst $08                                       ; $512c: $cf
    ld b, l                                       ; $512d: $45
    ld b, l                                       ; $512e: $45
    ld b, l                                       ; $512f: $45
    ld b, b                                       ; $5130: $40
    ld l, b                                       ; $5131: $68
    ld b, [hl]                                    ; $5132: $46
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    xor e                                         ; $5135: $ab
    inc bc                                        ; $5136: $03
    db $f4                                        ; $5137: $f4
    ld d, b                                       ; $5138: $50
    ld a, [c]                                     ; $5139: $f2
    ld d, b                                       ; $513a: $50
    ld e, l                                       ; $513b: $5d
    ld de, $2630                                  ; $513c: $11 $30 $26
    ld h, $5c                                     ; $513f: $26 $5c
    ld [hl], b                                    ; $5141: $70
    xor c                                         ; $5142: $a9
    nop                                           ; $5143: $00
    inc b                                         ; $5144: $04
    nop                                           ; $5145: $00
    ld a, [bc]                                    ; $5146: $0a
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    ld c, l                                       ; $5149: $4d
    dec b                                         ; $514a: $05
    xor h                                         ; $514b: $ac
    nop                                           ; $514c: $00
    cp $56                                        ; $514d: $fe $56
    db $fc                                        ; $514f: $fc
    ld d, h                                       ; $5150: $54
    ld [$145c], sp                                ; $5151: $08 $5c $14
    inc h                                         ; $5154: $24
    inc h                                         ; $5155: $24
    add b                                         ; $5156: $80
    ld l, b                                       ; $5157: $68
    dec bc                                        ; $5158: $0b
    nop                                           ; $5159: $00
    dec c                                         ; $515a: $0d
    nop                                           ; $515b: $00
    inc b                                         ; $515c: $04
    call $6d04                                    ; $515d: $cd $04 $6d
    ld b, h                                       ; $5160: $44
    ld a, h                                       ; $5161: $7c
    inc d                                         ; $5162: $14
    cp h                                          ; $5163: $bc
    inc b                                         ; $5164: $04
    inc d                                         ; $5165: $14
    db $fc                                        ; $5166: $fc
    inc d                                         ; $5167: $14
    ld [hl], h                                    ; $5168: $74
    ld [hl], h                                    ; $5169: $74
    and b                                         ; $516a: $a0
    ld l, b                                       ; $516b: $68
    and d                                         ; $516c: $a2
    nop                                           ; $516d: $00
    nop                                           ; $516e: $00
    rst $30                                       ; $516f: $f7
    pop bc                                        ; $5170: $c1
    cp e                                          ; $5171: $bb
    sub c                                         ; $5172: $91
    or a                                          ; $5173: $b7
    sub l                                         ; $5174: $95
    sub c                                         ; $5175: $91
    sub c                                         ; $5176: $91
    add [hl]                                      ; $5177: $86
    ld e, [hl]                                    ; $5178: $5e
    adc b                                         ; $5179: $88
    nop                                           ; $517a: $00
    nop                                           ; $517b: $00
    ld b, a                                       ; $517c: $47
    ld b, a                                       ; $517d: $47
    jr jr_0d7_5118                                ; $517e: $18 $98

    inc h                                         ; $5180: $24
    add hl, hl                                    ; $5181: $29
    ld e, $00                                     ; $5182: $1e $00
    ld [bc], a                                    ; $5184: $02
    nop                                           ; $5185: $00
    dec bc                                        ; $5186: $0b
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00

jr_0d7_5189:
    add hl, bc                                    ; $5189: $09
    nop                                           ; $518a: $00
    add hl, bc                                    ; $518b: $09
    ld sp, $3239                                  ; $518c: $31 $39 $32
    ld b, c                                       ; $518f: $41
    add hl, sp                                    ; $5190: $39
    ld c, c                                       ; $5191: $49
    jr nc, @+$53                                  ; $5192: $30 $51

    ld b, b                                       ; $5194: $40
    ld d, c                                       ; $5195: $51
    add hl, sp                                    ; $5196: $39
    ld e, c                                       ; $5197: $59
    add hl, sp                                    ; $5198: $39
    ld h, c                                       ; $5199: $61
    dec sp                                        ; $519a: $3b
    ld l, c                                       ; $519b: $69
    add hl, sp                                    ; $519c: $39
    ld [hl], c                                    ; $519d: $71
    jr c, jr_0d7_5219                             ; $519e: $38 $79

    jr c, jr_0d7_5123                             ; $51a0: $38 $81

    ld h, b                                       ; $51a2: $60
    ld bc, $00ba                                  ; $51a3: $01 $ba $00
    nop                                           ; $51a6: $00
    ld bc, $0100                                  ; $51a7: $01 $00 $01
    nop                                           ; $51aa: $00
    ld hl, $5100                                  ; $51ab: $21 $00 $51
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    ld a, c                                       ; $51b0: $79
    ld [$3879], sp                                ; $51b1: $08 $79 $38
    ld sp, $1800                                  ; $51b4: $31 $00 $18
    jr jr_0d7_51f9                                ; $51b7: $18 $40

    nop                                           ; $51b9: $00
    ld bc, $8060                                  ; $51ba: $01 $60 $80
    add b                                         ; $51bd: $80
    ldh [$80], a                                  ; $51be: $e0 $80
    or b                                          ; $51c0: $b0
    and b                                         ; $51c1: $a0
    nop                                           ; $51c2: $00
    cp b                                          ; $51c3: $b8
    adc b                                         ; $51c4: $88
    ret c                                         ; $51c5: $d8

    adc b                                         ; $51c6: $88
    ld hl, sp-$78                                 ; $51c7: $f8 $88
    cp b                                          ; $51c9: $b8
    cp b                                          ; $51ca: $b8
    nop                                           ; $51cb: $00
    jr jr_0d7_51ce                                ; $51cc: $18 $00

jr_0d7_51ce:
    dec e                                         ; $51ce: $1d
    ld [$0a1e], sp                                ; $51cf: $08 $1e $0a
    dec de                                        ; $51d2: $1b
    ld [bc], a                                    ; $51d3: $02
    nop                                           ; $51d4: $00
    dec e                                         ; $51d5: $1d
    inc c                                         ; $51d6: $0c
    add hl, de                                    ; $51d7: $19
    ld [$0819], sp                                ; $51d8: $08 $19 $08
    ld [$0008], sp                                ; $51db: $08 $08 $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    ld [bc], a                                    ; $51e0: $02
    nop                                           ; $51e1: $00
    inc bc                                        ; $51e2: $03
    ld bc, $80a7                                  ; $51e3: $01 $a7 $80
    nop                                           ; $51e6: $00
    ld d, e                                       ; $51e7: $53
    ld bc, $89fb                                  ; $51e8: $01 $fb $89
    ei                                            ; $51eb: $fb
    cp c                                          ; $51ec: $b9
    or c                                          ; $51ed: $b1
    add b                                         ; $51ee: $80
    jr nz, jr_0d7_5189                            ; $51ef: $20 $98

    sbc b                                         ; $51f1: $98
    ld b, b                                       ; $51f2: $40
    ld l, b                                       ; $51f3: $68
    nop                                           ; $51f4: $00
    ldh a, [rP1]                                  ; $51f5: $f0 $00
    ldh a, [rNR41]                                ; $51f7: $f0 $20

jr_0d7_51f9:
    dec bc                                        ; $51f9: $0b
    ld [hl], b                                    ; $51fa: $70
    jr nz, jr_0d7_526d                            ; $51fb: $20 $70

    nop                                           ; $51fd: $00
    ld [bc], a                                    ; $51fe: $02
    ld [$0220], sp                                ; $51ff: $08 $20 $02
    db $10                                        ; $5202: $10
    ld h, e                                       ; $5203: $63
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    ld d, [hl]                                    ; $5206: $56
    nop                                           ; $5207: $00
    db $eb                                        ; $5208: $eb
    adc d                                         ; $5209: $8a
    ld [hl], e                                    ; $520a: $73
    jr nc, jr_0d7_5272                            ; $520b: $30 $65

    jr nz, jr_0d7_521b                            ; $520d: $20 $0c

    ld h, a                                       ; $520f: $67
    jr nz, @-$5b                                  ; $5210: $20 $a3

    and e                                         ; $5212: $a3
    ld [hl-], a                                   ; $5213: $32
    ld [hl], b                                    ; $5214: $70
    add e                                         ; $5215: $83
    ld d, b                                       ; $5216: $50
    ld c, $00                                     ; $5217: $0e $00

jr_0d7_5219:
    nop                                           ; $5219: $00
    rrca                                          ; $521a: $0f

jr_0d7_521b:
    rlca                                          ; $521b: $07
    inc c                                         ; $521c: $0c
    inc b                                         ; $521d: $04
    ld c, $00                                     ; $521e: $0e $00
    adc a                                         ; $5220: $8f
    add a                                         ; $5221: $87
    ld [bc], a                                    ; $5222: $02
    adc h                                         ; $5223: $8c
    add h                                         ; $5224: $84
    adc h                                         ; $5225: $8c
    add h                                         ; $5226: $84
    add h                                         ; $5227: $84
    add h                                         ; $5228: $84
    and b                                         ; $5229: $a0
    ld l, b                                       ; $522a: $68
    jr nz, jr_0d7_522d                            ; $522b: $20 $00

jr_0d7_522d:
    nop                                           ; $522d: $00
    or b                                          ; $522e: $b0
    db $10                                        ; $522f: $10
    ld [hl], h                                    ; $5230: $74
    ld d, b                                       ; $5231: $50
    cp d                                          ; $5232: $ba
    db $10                                        ; $5233: $10
    rst $38                                       ; $5234: $ff
    ld bc, $ff55                                  ; $5235: $01 $55 $ff
    ld d, l                                       ; $5238: $55
    push af                                       ; $5239: $f5
    ld d, c                                       ; $523a: $51
    ld d, d                                       ; $523b: $52
    ld d, d                                       ; $523c: $52
    ret nz                                        ; $523d: $c0

    ld l, b                                       ; $523e: $68
    nop                                           ; $523f: $00
    ld h, h                                       ; $5240: $64
    nop                                           ; $5241: $00
    cp d                                          ; $5242: $ba
    jr nc, jr_0d7_5294                            ; $5243: $30 $4f

    dec b                                         ; $5245: $05
    cpl                                           ; $5246: $2f
    dec b                                         ; $5247: $05
    ld [$11d5], sp                                ; $5248: $08 $d5 $11
    ld h, d                                       ; $524b: $62
    ld h, d                                       ; $524c: $62
    ld l, d                                       ; $524d: $6a
    adc b                                         ; $524e: $88
    ld b, b                                       ; $524f: $40
    nop                                           ; $5250: $00
    and b                                         ; $5251: $a0
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    call c, $c650                                 ; $5254: $dc $50 $c6
    inc b                                         ; $5257: $04
    rst $20                                       ; $5258: $e7
    ld h, c                                       ; $5259: $61
    rlc h                                         ; $525a: $cb $04
    ld b, c                                       ; $525c: $41
    rst $08                                       ; $525d: $cf
    ld b, c                                       ; $525e: $41
    ld b, a                                       ; $525f: $47
    ld b, a                                       ; $5260: $47
    add b                                         ; $5261: $80
    ld a, b                                       ; $5262: $78
    add a                                         ; $5263: $87
    inc bc                                        ; $5264: $03
    nop                                           ; $5265: $00
    add $42                                       ; $5266: $c6 $42
    sub $42                                       ; $5268: $d6 $42
    ld [$fc42], a                                 ; $526a: $ea $42 $fc

jr_0d7_526d:
    ld b, h                                       ; $526d: $44
    ld [bc], a                                    ; $526e: $02
    db $fc                                        ; $526f: $fc
    ld e, h                                       ; $5270: $5c
    ret c                                         ; $5271: $d8

jr_0d7_5272:
    ld b, b                                       ; $5272: $40
    ld c, h                                       ; $5273: $4c
    ld c, h                                       ; $5274: $4c
    ld [hl+], a                                   ; $5275: $22
    ld e, c                                       ; $5276: $59
    adc b                                         ; $5277: $88
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    call c, $ec04                                 ; $527a: $dc $04 $ec
    ld b, h                                       ; $527d: $44
    call c, Call_0d7_4454                         ; $527e: $dc $54 $44
    ld b, b                                       ; $5281: $40
    ld b, h                                       ; $5282: $44
    ret z                                         ; $5283: $c8

    sbc b                                         ; $5284: $98
    ld e, $00                                     ; $5285: $1e $00
    ld [bc], a                                    ; $5287: $02
    nop                                           ; $5288: $00
    dec bc                                        ; $5289: $0b
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    add hl, bc                                    ; $528c: $09
    nop                                           ; $528d: $00
    add hl, bc                                    ; $528e: $09
    inc sp                                        ; $528f: $33
    dec [hl]                                      ; $5290: $35
    ld sp, $3b3f                                  ; $5291: $31 $3f $3b

jr_0d7_5294:
    ld b, a                                       ; $5294: $47
    jr nc, @+$51                                  ; $5295: $30 $4f

    add hl, sp                                    ; $5297: $39
    ld d, a                                       ; $5298: $57
    add hl, sp                                    ; $5299: $39
    ld e, a                                       ; $529a: $5f
    add hl, sp                                    ; $529b: $39
    ld h, a                                       ; $529c: $67
    dec sp                                        ; $529d: $3b
    ld l, a                                       ; $529e: $6f
    jr c, jr_0d7_5318                             ; $529f: $38 $77

    jr c, jr_0d7_531c                             ; $52a1: $38 $79

    ld b, b                                       ; $52a3: $40
    ld c, e                                       ; $52a4: $4b
    ld h, b                                       ; $52a5: $60
    ld bc, $00b0                                  ; $52a6: $01 $b0 $00
    nop                                           ; $52a9: $00
    ld c, h                                       ; $52aa: $4c
    nop                                           ; $52ab: $00
    xor [hl]                                      ; $52ac: $ae
    inc b                                         ; $52ad: $04
    rst $38                                       ; $52ae: $ff
    dec d                                         ; $52af: $15
    rst $38                                       ; $52b0: $ff
    ld [hl], l                                    ; $52b1: $75
    inc b                                         ; $52b2: $04
    ld l, a                                       ; $52b3: $6f
    dec b                                         ; $52b4: $05
    dec [hl]                                      ; $52b5: $35
    dec [hl]                                      ; $52b6: $35
    nop                                           ; $52b7: $00
    ld bc, $2080                                  ; $52b8: $01 $80 $20
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    jr nc, jr_0d7_52cf                            ; $52bd: $30 $10

    ld [hl], h                                    ; $52bf: $74
    db $10                                        ; $52c0: $10
    cp d                                          ; $52c1: $ba
    db $10                                        ; $52c2: $10
    rst $38                                       ; $52c3: $ff
    ld d, c                                       ; $52c4: $51
    nop                                           ; $52c5: $00
    rst $38                                       ; $52c6: $ff
    ld d, a                                       ; $52c7: $57
    halt                                          ; $52c8: $76
    db $10                                        ; $52c9: $10
    inc sp                                        ; $52ca: $33
    inc sp                                        ; $52cb: $33
    ld h, h                                       ; $52cc: $64
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00

jr_0d7_52cf:
    or [hl]                                       ; $52cf: $b6
    ld [hl-], a                                   ; $52d0: $32
    adc $40                                       ; $52d1: $ce $40
    ld b, a                                       ; $52d3: $47
    inc bc                                        ; $52d4: $03
    ld h, $02                                     ; $52d5: $26 $02
    nop                                           ; $52d7: $00
    ld [hl], $12                                  ; $52d8: $36 $12
    jp nc, Jump_0d7_6110                          ; $52da: $d2 $10 $61

    ld h, c                                       ; $52dd: $61
    ld b, h                                       ; $52de: $44
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    xor d                                         ; $52e1: $aa
    nop                                           ; $52e2: $00
    rst $38                                       ; $52e3: $ff
    ld de, $77ff                                  ; $52e4: $11 $ff $77
    ld h, [hl]                                    ; $52e7: $66
    nop                                           ; $52e8: $00

jr_0d7_52e9:
    jr nz, @+$35                                  ; $52e9: $20 $33

    inc sp                                        ; $52eb: $33
    ld b, b                                       ; $52ec: $40
    adc b                                         ; $52ed: $88
    nop                                           ; $52ee: $00
    inc a                                         ; $52ef: $3c
    nop                                           ; $52f0: $00
    inc a                                         ; $52f1: $3c

jr_0d7_52f2:
    ld [$1c0b], sp                                ; $52f2: $08 $0b $1c
    ld [$001c], sp                                ; $52f5: $08 $1c $00
    ld [bc], a                                    ; $52f8: $02
    ld [$0208], sp                                ; $52f9: $08 $08 $02
    db $10                                        ; $52fc: $10
    ld h, a                                       ; $52fd: $67
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    pop bc                                        ; $5300: $c1
    nop                                           ; $5301: $00
    ld [c], a                                     ; $5302: $e2
    ld b, b                                       ; $5303: $40
    di                                            ; $5304: $f3
    ld d, c                                       ; $5305: $51
    di                                            ; $5306: $f3
    ld d, c                                       ; $5307: $51
    nop                                           ; $5308: $00
    pop af                                        ; $5309: $f1
    ld d, b                                       ; $530a: $50
    add b                                         ; $530b: $80
    nop                                           ; $530c: $00
    ret nz                                        ; $530d: $c0

    ld b, b                                       ; $530e: $40
    jp nc, VBlankInterrupt                        ; $530f: $d2 $40 $00

    db $eb                                        ; $5312: $eb
    ld b, b                                       ; $5313: $40
    rst $38                                       ; $5314: $ff
    ld b, l                                       ; $5315: $45
    rst $38                                       ; $5316: $ff
    ld e, l                                       ; $5317: $5d

jr_0d7_5318:
    db $db                                        ; $5318: $db
    ld b, c                                       ; $5319: $41
    jr nz, jr_0d7_52e9                            ; $531a: $20 $cd

jr_0d7_531c:
    call $6884                                    ; $531c: $cd $84 $68
    ld a, [bc]                                    ; $531f: $0a
    nop                                           ; $5320: $00
    rrca                                          ; $5321: $0f
    dec b                                         ; $5322: $05
    adc a                                         ; $5323: $8f
    nop                                           ; $5324: $00
    dec b                                         ; $5325: $05
    ld c, a                                       ; $5326: $4f
    ld b, l                                       ; $5327: $45
    adc a                                         ; $5328: $8f
    add l                                         ; $5329: $85
    rrca                                          ; $532a: $0f
    dec b                                         ; $532b: $05
    dec b                                         ; $532c: $05
    stop                                          ; $532d: $10 $00
    ld [bc], a                                    ; $532f: $02
    ld [bc], a                                    ; $5330: $02
    and h                                         ; $5331: $a4
    ld l, b                                       ; $5332: $68
    add b                                         ; $5333: $80
    nop                                           ; $5334: $00
    add sp, $40                                   ; $5335: $e8 $40
    nop                                           ; $5337: $00
    rst $10                                       ; $5338: $d7
    ld d, h                                       ; $5339: $54
    jp hl                                         ; $533a: $e9


    ld b, c                                       ; $533b: $41
    db $fd                                        ; $533c: $fd
    ld d, h                                       ; $533d: $54
    cp $54                                        ; $533e: $fe $54
    nop                                           ; $5340: $00
    ld a, a                                       ; $5341: $7f
    ld d, h                                       ; $5342: $54
    sbc l                                         ; $5343: $9d
    sub l                                         ; $5344: $95
    inc [hl]                                      ; $5345: $34
    inc b                                         ; $5346: $04
    jr jr_0d7_5361                                ; $5347: $18 $18

    add b                                         ; $5349: $80
    ret z                                         ; $534a: $c8

    ld c, b                                       ; $534b: $48
    sub e                                         ; $534c: $93
    nop                                           ; $534d: $00
    db $eb                                        ; $534e: $eb
    ld b, c                                       ; $534f: $41
    ld a, a                                       ; $5350: $7f
    ld b, l                                       ; $5351: $45
    cp a                                          ; $5352: $bf
    jr jr_0d7_52f2                                ; $5353: $18 $9d

    sbc e                                         ; $5355: $9b
    ld bc, $785c                                  ; $5356: $01 $5c $78
    ldh a, [$08]                                  ; $5359: $f0 $08
    add sp, $00                                   ; $535b: $e8 $00
    ld a, l                                       ; $535d: $7d
    nop                                           ; $535e: $00
    jr nc, jr_0d7_53cf                            ; $535f: $30 $6e

jr_0d7_5361:
    inc h                                         ; $5361: $24
    ld l, l                                       ; $5362: $6d
    dec h                                         ; $5363: $25
    and h                                         ; $5364: $a4
    inc h                                         ; $5365: $24
    ret nz                                        ; $5366: $c0

    ld c, b                                       ; $5367: $48
    ld b, b                                       ; $5368: $40
    ld [bc], a                                    ; $5369: $02
    ld [$4040], sp                                ; $536a: $08 $40 $40
    ld b, $59                                     ; $536d: $06 $59
    ld [bc], a                                    ; $536f: $02
    nop                                           ; $5370: $00
    inc bc                                        ; $5371: $03
    ld c, e                                       ; $5372: $4b
    ld bc, $0802                                  ; $5373: $01 $02 $08
    ld bc, $de01                                  ; $5376: $01 $01 $de
    sub b                                         ; $5379: $90
    nop                                           ; $537a: $00
    sub l                                         ; $537b: $95
    nop                                           ; $537c: $00
    ld bc, $18d0                                  ; $537d: $01 $d0 $18
    nop                                           ; $5380: $00
    ld [bc], a                                    ; $5381: $02
    nop                                           ; $5382: $00
    ld [$0000], sp                                ; $5383: $08 $00 $00
    add hl, bc                                    ; $5386: $09
    nop                                           ; $5387: $00
    add hl, bc                                    ; $5388: $09
    inc sp                                        ; $5389: $33
    dec [hl]                                      ; $538a: $35
    ld sp, $313d                                  ; $538b: $31 $3d $31
    ld b, l                                       ; $538e: $45
    jr nc, jr_0d7_53de                            ; $538f: $30 $4d

    add hl, sp                                    ; $5391: $39
    ld d, l                                       ; $5392: $55
    jr c, jr_0d7_53f2                             ; $5393: $38 $5d

    jr c, jr_0d7_53fb                             ; $5395: $38 $64

    ld b, b                                       ; $5397: $40
    ld c, b                                       ; $5398: $48
    nop                                           ; $5399: $00
    ld bc, $0096                                  ; $539a: $01 $96 $00
    nop                                           ; $539d: $00
    ld b, [hl]                                    ; $539e: $46
    nop                                           ; $539f: $00
    xor e                                         ; $53a0: $ab
    inc bc                                        ; $53a1: $03
    db $fc                                        ; $53a2: $fc
    ld d, h                                       ; $53a3: $54
    db $fc                                        ; $53a4: $fc
    ld d, h                                       ; $53a5: $54
    inc b                                         ; $53a6: $04
    ld d, [hl]                                    ; $53a7: $56
    db $10                                        ; $53a8: $10
    inc hl                                        ; $53a9: $23
    inc hl                                        ; $53aa: $23
    nop                                           ; $53ab: $00
    ld bc, $8080                                  ; $53ac: $01 $80 $80
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    ret nz                                        ; $53b1: $c0

    ld b, b                                       ; $53b2: $40
    pop bc                                        ; $53b3: $c1
    nop                                           ; $53b4: $00
    ld [c], a                                     ; $53b5: $e2
    ld b, b                                       ; $53b6: $40
    di                                            ; $53b7: $f3
    ld d, c                                       ; $53b8: $51
    nop                                           ; $53b9: $00
    di                                            ; $53ba: $f3
    ld d, c                                       ; $53bb: $51
    pop af                                        ; $53bc: $f1
    ld d, b                                       ; $53bd: $50
    ld d, b                                       ; $53be: $50
    ld d, b                                       ; $53bf: $50
    jr z, jr_0d7_53c2                             ; $53c0: $28 $00

jr_0d7_53c2:
    nop                                           ; $53c2: $00
    ld a, $14                                     ; $53c3: $3e $14
    dec a                                         ; $53c5: $3d
    dec d                                         ; $53c6: $15
    ld a, $14                                     ; $53c7: $3e $14
    ccf                                           ; $53c9: $3f
    dec d                                         ; $53ca: $15
    ld [bc], a                                    ; $53cb: $02
    ccf                                           ; $53cc: $3f
    dec d                                         ; $53cd: $15
    rla                                           ; $53ce: $17

jr_0d7_53cf:
    dec b                                         ; $53cf: $05
    add hl, bc                                    ; $53d0: $09
    add hl, bc                                    ; $53d1: $09
    jr nz, jr_0d7_53dc                            ; $53d2: $20 $08

    ret nc                                        ; $53d4: $d0

    nop                                           ; $53d5: $00
    ld b, b                                       ; $53d6: $40
    add sp, $40                                   ; $53d7: $e8 $40
    db $fc                                        ; $53d9: $fc
    ld b, h                                       ; $53da: $44
    db $fc                                        ; $53db: $fc

jr_0d7_53dc:
    ld e, h                                       ; $53dc: $5c
    ret c                                         ; $53dd: $d8

jr_0d7_53de:
    db $10                                        ; $53de: $10
    ld b, b                                       ; $53df: $40
    call z, Call_0d7_44cc                         ; $53e0: $cc $cc $44
    ld [$0064], sp                                ; $53e3: $08 $64 $00

jr_0d7_53e6:
    cp d                                          ; $53e6: $ba
    jr nc, jr_0d7_53e9                            ; $53e7: $30 $00

jr_0d7_53e9:
    ld c, a                                       ; $53e9: $4f
    ld bc, $072f                                  ; $53ea: $01 $2f $07
    sub $10                                       ; $53ed: $d6 $10
    ld h, e                                       ; $53ef: $63
    ld h, e                                       ; $53f0: $63
    nop                                           ; $53f1: $00

jr_0d7_53f2:
    nop                                           ; $53f2: $00
    rrca                                          ; $53f3: $0f
    nop                                           ; $53f4: $00
    rrca                                          ; $53f5: $0f
    ld [bc], a                                    ; $53f6: $02
    rlca                                          ; $53f7: $07
    ld [bc], a                                    ; $53f8: $02
    rlca                                          ; $53f9: $07
    ld d, b                                       ; $53fa: $50

jr_0d7_53fb:
    nop                                           ; $53fb: $00
    ld [bc], a                                    ; $53fc: $02
    ld [$0202], sp                                ; $53fd: $08 $02 $02
    stop                                          ; $5400: $10 $00
    ld bc, $6100                                  ; $5402: $01 $00 $61
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    or b                                          ; $5407: $b0
    jr nc, jr_0d7_544a                            ; $5408: $30 $40

    nop                                           ; $540a: $00
    jr nz, jr_0d7_540d                            ; $540b: $20 $00

jr_0d7_540d:
    pop de                                        ; $540d: $d1
    nop                                           ; $540e: $00
    db $10                                        ; $540f: $10
    ret z                                         ; $5410: $c8

    nop                                           ; $5411: $00
    ld l, h                                       ; $5412: $6c
    ld h, h                                       ; $5413: $64
    sbc h                                         ; $5414: $9c
    add b                                         ; $5415: $80
    adc a                                         ; $5416: $8f
    nop                                           ; $5417: $00
    ld b, $4d                                     ; $5418: $06 $4d
    inc b                                         ; $541a: $04
    ld l, l                                       ; $541b: $6d
    inc h                                         ; $541c: $24
    and h                                         ; $541d: $a4
    jr nz, @-$3c                                  ; $541e: $20 $c2

    ld b, b                                       ; $5420: $40
    jp nz, $6884                                  ; $5421: $c2 $84 $68

    rlca                                          ; $5424: $07
    nop                                           ; $5425: $00
    inc bc                                        ; $5426: $03
    ld bc, $0103                                  ; $5427: $01 $03 $01
    nop                                           ; $542a: $00
    sbc e                                         ; $542b: $9b
    ld bc, $095d                                  ; $542c: $01 $5d $09
    cp $2a                                        ; $542f: $fe $2a
    cp $ea                                        ; $5431: $fe $ea
    ld [$0ade], sp                                ; $5433: $08 $de $0a
    ld l, d                                       ; $5436: $6a
    ld l, d                                       ; $5437: $6a
    and [hl]                                      ; $5438: $a6
    ld e, b                                       ; $5439: $58
    ld [hl+], a                                   ; $543a: $22
    nop                                           ; $543b: $00
    ld [hl], a                                    ; $543c: $77
    ld bc, $3b41                                  ; $543d: $01 $41 $3b
    ld de, $1537                                  ; $5440: $11 $37 $15
    ld de, $be11                                  ; $5443: $11 $11 $be
    adc b                                         ; $5446: $88
    inc c                                         ; $5447: $0c
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00

jr_0d7_544a:
    inc bc                                        ; $544a: $03
    inc bc                                        ; $544b: $03
    jr jr_0d7_53e6                                ; $544c: $18 $98

    db $ec                                        ; $544e: $ec
    jr z, jr_0d7_546b                             ; $544f: $28 $1a

    nop                                           ; $5451: $00
    ld [bc], a                                    ; $5452: $02
    nop                                           ; $5453: $00
    add hl, bc                                    ; $5454: $09
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    add hl, bc                                    ; $5457: $09
    nop                                           ; $5458: $00
    add hl, bc                                    ; $5459: $09
    inc sp                                        ; $545a: $33
    ld a, [hl-]                                   ; $545b: $3a
    ld sp, $3044                                  ; $545c: $31 $44 $30
    ld c, h                                       ; $545f: $4c
    jr nc, @+$56                                  ; $5460: $30 $54

    add hl, sp                                    ; $5462: $39
    ld e, h                                       ; $5463: $5c
    jr c, jr_0d7_54ca                             ; $5464: $38 $64

    jr c, @+$6d                                   ; $5466: $38 $6b

    ld b, b                                       ; $5468: $40
    ld c, h                                       ; $5469: $4c
    ld b, b                                       ; $546a: $40

jr_0d7_546b:
    ld d, h                                       ; $546b: $54
    jr nz, jr_0d7_546f                            ; $546c: $20 $01

    sub d                                         ; $546e: $92

jr_0d7_546f:
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    ld b, [hl]                                    ; $5471: $46
    nop                                           ; $5472: $00
    xor e                                         ; $5473: $ab
    ld bc, $55ff                                  ; $5474: $01 $ff $55
    rst $38                                       ; $5477: $ff
    ld d, l                                       ; $5478: $55
    nop                                           ; $5479: $00
    ld d, a                                       ; $547a: $57
    ld de, $2123                                  ; $547b: $11 $23 $21
    dec c                                         ; $547e: $0d
    ld bc, $0606                                  ; $547f: $01 $06 $06
    ld b, b                                       ; $5482: $40
    nop                                           ; $5483: $00
    ld bc, $2060                                  ; $5484: $01 $60 $20
    nop                                           ; $5487: $00
    jr nc, jr_0d7_549a                            ; $5488: $30 $10

    ld [hl], h                                    ; $548a: $74
    stop                                          ; $548b: $10 $00
    cp d                                          ; $548d: $ba
    db $10                                        ; $548e: $10
    rst $38                                       ; $548f: $ff
    ld d, c                                       ; $5490: $51
    rst $38                                       ; $5491: $ff
    ld d, a                                       ; $5492: $57
    halt                                          ; $5493: $76
    stop                                          ; $5494: $10 $00
    inc sp                                        ; $5496: $33
    inc sp                                        ; $5497: $33
    and b                                         ; $5498: $a0
    nop                                           ; $5499: $00

jr_0d7_549a:
    ld hl, sp+$50                                 ; $549a: $f8 $50
    push af                                       ; $549c: $f5
    ld d, h                                       ; $549d: $54
    nop                                           ; $549e: $00
    ld a, [$fd50]                                 ; $549f: $fa $50 $fd
    ld d, h                                       ; $54a2: $54
    db $fc                                        ; $54a3: $fc
    ld d, h                                       ; $54a4: $54
    ld e, a                                       ; $54a5: $5f
    inc d                                         ; $54a6: $14
    nop                                           ; $54a7: $00
    dec h                                         ; $54a8: $25
    dec h                                         ; $54a9: $25
    nop                                           ; $54aa: $00
    rlca                                          ; $54ab: $07
    nop                                           ; $54ac: $00
    rlca                                          ; $54ad: $07
    ld bc, $1603                                  ; $54ae: $01 $03 $16
    ld bc, $0003                                  ; $54b1: $01 $03 $00
    ld [bc], a                                    ; $54b4: $02
    ld [$0201], sp                                ; $54b5: $08 $01 $02
    db $10                                        ; $54b8: $10
    ld b, e                                       ; $54b9: $43
    nop                                           ; $54ba: $00
    sub c                                         ; $54bb: $91
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    ld [$3dc0], a                                 ; $54be: $ea $c0 $3d
    inc b                                         ; $54c1: $04
    cp h                                          ; $54c2: $bc
    inc e                                         ; $54c3: $1c
    ld e, e                                       ; $54c4: $5b
    jr jr_0d7_5507                                ; $54c5: $18 $40

    nop                                           ; $54c7: $00
    add b                                         ; $54c8: $80
    ld [bc], a                                    ; $54c9: $02

jr_0d7_54ca:
    ld b, b                                       ; $54ca: $40
    ld e, l                                       ; $54cb: $5d
    db $10                                        ; $54cc: $10
    inc bc                                        ; $54cd: $03
    nop                                           ; $54ce: $00
    dec b                                         ; $54cf: $05
    nop                                           ; $54d0: $00
    ld bc, $0286                                  ; $54d1: $01 $86 $02
    jp nz, $01c0                                  ; $54d4: $c2 $c0 $01

    nop                                           ; $54d7: $00
    add c                                         ; $54d8: $81
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    ld b, [hl]                                    ; $54db: $46
    ld b, b                                       ; $54dc: $40
    jr nz, jr_0d7_54df                            ; $54dd: $20 $00

jr_0d7_54df:
    or b                                          ; $54df: $b0
    sub b                                         ; $54e0: $90
    ld [hl], d                                    ; $54e1: $72
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    dec a                                         ; $54e4: $3d
    jr jr_0d7_551e                                ; $54e5: $18 $37

    db $10                                        ; $54e7: $10
    or a                                          ; $54e8: $b7
    sub e                                         ; $54e9: $93
    sub e                                         ; $54ea: $93
    db $10                                        ; $54eb: $10
    add b                                         ; $54ec: $80
    add hl, bc                                    ; $54ed: $09
    add hl, bc                                    ; $54ee: $09
    add b                                         ; $54ef: $80
    ld l, b                                       ; $54f0: $68
    rlca                                          ; $54f1: $07
    nop                                           ; $54f2: $00
    inc bc                                        ; $54f3: $03
    ld bc, $4300                                  ; $54f4: $01 $00 $43
    ld bc, $213b                                  ; $54f7: $01 $3b $21

jr_0d7_54fa:
    ld e, l                                       ; $54fa: $5d
    add hl, bc                                    ; $54fb: $09
    cp $aa                                        ; $54fc: $fe $aa
    ld [bc], a                                    ; $54fe: $02
    cp $aa                                        ; $54ff: $fe $aa
    ld a, [hl]                                    ; $5501: $7e
    ld a, [hl+]                                   ; $5502: $2a
    xor d                                         ; $5503: $aa
    xor d                                         ; $5504: $aa
    and d                                         ; $5505: $a2
    ld e, b                                       ; $5506: $58

jr_0d7_5507:
    ld [hl+], a                                   ; $5507: $22
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    ld [hl], a                                    ; $550a: $77
    ld b, c                                       ; $550b: $41
    dec sp                                        ; $550c: $3b
    ld de, $1537                                  ; $550d: $11 $37 $15
    ld de, $1166                                  ; $5510: $11 $66 $11
    cp d                                          ; $5513: $ba
    ld l, b                                       ; $5514: $68
    jp z, $8d18                                   ; $5515: $ca $18 $8d

    adc l                                         ; $5518: $8d
    jr @-$66                                      ; $5519: $18 $98

    add sp, $28                                   ; $551b: $e8 $28
    add e                                         ; $551d: $83

jr_0d7_551e:
    ld b, b                                       ; $551e: $40
    add e                                         ; $551f: $83
    jr nz, jr_0d7_54fa                            ; $5520: $20 $d8

    ld a, [de]                                    ; $5522: $1a
    nop                                           ; $5523: $00
    ld [bc], a                                    ; $5524: $02
    nop                                           ; $5525: $00
    add hl, bc                                    ; $5526: $09
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    add hl, bc                                    ; $5529: $09
    nop                                           ; $552a: $00
    add hl, bc                                    ; $552b: $09
    ld [hl-], a                                   ; $552c: $32
    jr c, jr_0d7_5568                             ; $552d: $38 $39

    ld b, b                                       ; $552f: $40
    dec sp                                        ; $5530: $3b
    ld c, b                                       ; $5531: $48
    jr nc, jr_0d7_5584                            ; $5532: $30 $50

    dec sp                                        ; $5534: $3b
    ld d, a                                       ; $5535: $57
    add hl, sp                                    ; $5536: $39
    ld h, c                                       ; $5537: $61
    jr c, @+$6b                                   ; $5538: $38 $69

    jr c, jr_0d7_55ab                             ; $553a: $38 $6f

    ld b, b                                       ; $553c: $40
    ld c, a                                       ; $553d: $4f
    jr nz, jr_0d7_5541                            ; $553e: $20 $01

    sub b                                         ; $5540: $90

jr_0d7_5541:
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    jr nz, jr_0d7_5545                            ; $5543: $20 $00

jr_0d7_5545:
    inc e                                         ; $5545: $1c
    db $10                                        ; $5546: $10
    ld h, $04                                     ; $5547: $26 $04
    scf                                           ; $5549: $37
    ld de, $3b00                                  ; $554a: $11 $00 $3b
    ld de, $113f                                  ; $554d: $11 $3f $11
    scf                                           ; $5550: $37
    rla                                           ; $5551: $17
    pop de                                        ; $5552: $d1
    db $10                                        ; $5553: $10
    inc c                                         ; $5554: $0c
    ld h, c                                       ; $5555: $61
    ld h, b                                       ; $5556: $60
    ld bc, $0200                                  ; $5557: $01 $00 $02
    jr @+$03                                      ; $555a: $18 $01

    jr jr_0d7_559e                                ; $555c: $18 $40

    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    db $f4                                        ; $5560: $f4
    and b                                         ; $5561: $a0
    ld [$f5aa], a                                 ; $5562: $ea $aa $f5
    and b                                         ; $5565: $a0
    cp $aa                                        ; $5566: $fe $aa

jr_0d7_5568:
    inc bc                                        ; $5568: $03
    cp $aa                                        ; $5569: $fe $aa
    cp a                                          ; $556b: $bf
    ld a, [hl+]                                   ; $556c: $2a
    ld c, d                                       ; $556d: $4a
    ld c, d                                       ; $556e: $4a
    rla                                           ; $556f: $17
    jr nz, jr_0d7_5579                            ; $5570: $20 $07

    jr nc, jr_0d7_5574                            ; $5572: $30 $00

jr_0d7_5574:
    ret c                                         ; $5574: $d8

    nop                                           ; $5575: $00
    ld l, l                                       ; $5576: $6d
    ld l, b                                       ; $5577: $68
    adc [hl]                                      ; $5578: $8e

jr_0d7_5579:
    ld [bc], a                                    ; $5579: $02
    ld d, [hl]                                    ; $557a: $56
    ld [bc], a                                    ; $557b: $02
    inc c                                         ; $557c: $0c
    cp a                                          ; $557d: $bf
    ld [hl+], a                                   ; $557e: $22
    adc $ce                                       ; $557f: $ce $ce
    inc e                                         ; $5581: $1c
    ld l, b                                       ; $5582: $68
    ld b, e                                       ; $5583: $43

jr_0d7_5584:
    db $10                                        ; $5584: $10
    ld a, b                                       ; $5585: $78
    nop                                           ; $5586: $00
    ld [bc], a                                    ; $5587: $02

jr_0d7_5588:
    ld a, b                                       ; $5588: $78
    db $10                                        ; $5589: $10
    jr c, jr_0d7_559c                             ; $558a: $38 $10

    jr c, jr_0d7_558e                             ; $558c: $38 $00

jr_0d7_558e:
    ld [bc], a                                    ; $558e: $02
    ld [$8010], sp                                ; $558f: $08 $10 $80
    ld [bc], a                                    ; $5592: $02
    ld [$0008], sp                                ; $5593: $08 $08 $00
    inc c                                         ; $5596: $0c
    inc b                                         ; $5597: $04
    call c, Call_0d7_6f00                         ; $5598: $dc $00 $6f
    nop                                           ; $559b: $00

jr_0d7_559c:
    ld h, [hl]                                    ; $559c: $66
    adc l                                         ; $559d: $8d

jr_0d7_559e:
    inc b                                         ; $559e: $04
    ld c, l                                       ; $559f: $4d
    inc b                                         ; $55a0: $04
    and h                                         ; $55a1: $a4
    jr nz, jr_0d7_55f0                            ; $55a2: $20 $4c

    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    ld l, $04                                     ; $55a6: $2e $04
    ld a, a                                       ; $55a8: $7f
    dec d                                         ; $55a9: $15
    ld a, a                                       ; $55aa: $7f

jr_0d7_55ab:
    ld [hl], l                                    ; $55ab: $75
    ld l, a                                       ; $55ac: $6f
    db $10                                        ; $55ad: $10
    dec b                                         ; $55ae: $05
    dec [hl]                                      ; $55af: $35
    dec [hl]                                      ; $55b0: $35
    ld b, b                                       ; $55b1: $40
    adc b                                         ; $55b2: $88
    and b                                         ; $55b3: $a0
    nop                                           ; $55b4: $00
    ld hl, sp+$50                                 ; $55b5: $f8 $50
    nop                                           ; $55b7: $00
    db $f4                                        ; $55b8: $f4
    ld d, h                                       ; $55b9: $54
    jp c, $ef10                                   ; $55ba: $da $10 $ef

    ld b, l                                       ; $55bd: $45
    rst $38                                       ; $55be: $ff
    ld d, l                                       ; $55bf: $55
    ld [$54fd], sp                                ; $55c0: $08 $fd $54
    ld d, h                                       ; $55c3: $54
    ld d, h                                       ; $55c4: $54
    add b                                         ; $55c5: $80
    ld l, b                                       ; $55c6: $68
    ld c, $00                                     ; $55c7: $0e $00
    rlca                                          ; $55c9: $07
    nop                                           ; $55ca: $00
    inc bc                                        ; $55cb: $03
    ld h, $02                                     ; $55cc: $26 $02
    ld d, $12                                     ; $55ce: $16 $12
    and d                                         ; $55d0: $a2
    ld [bc], a                                    ; $55d1: $02
    ldh a, [rSB]                                  ; $55d2: $f0 $01
    ld d, b                                       ; $55d4: $50
    ldh a, [$50]                                  ; $55d5: $f0 $50
    ld [hl], b                                    ; $55d7: $70
    ld d, b                                       ; $55d8: $50
    sub b                                         ; $55d9: $90
    sub b                                         ; $55da: $90
    and d                                         ; $55db: $a2
    ld e, b                                       ; $55dc: $58
    nop                                           ; $55dd: $00
    ld [hl+], a                                   ; $55de: $22
    nop                                           ; $55df: $00
    scf                                           ; $55e0: $37
    ld bc, $113b                                  ; $55e1: $01 $3b $11
    scf                                           ; $55e4: $37
    dec d                                         ; $55e5: $15
    inc hl                                        ; $55e6: $23
    ld de, $9e11                                  ; $55e7: $11 $11 $9e
    sub b                                         ; $55ea: $90
    nop                                           ; $55eb: $00
    ld h, c                                       ; $55ec: $61
    ld h, c                                       ; $55ed: $61
    jr jr_0d7_5588                                ; $55ee: $18 $98

jr_0d7_55f0:
    add sp, $28                                   ; $55f0: $e8 $28
    jr jr_0d7_55f4                                ; $55f2: $18 $00

jr_0d7_55f4:
    ld [bc], a                                    ; $55f4: $02
    nop                                           ; $55f5: $00
    ld [$0000], sp                                ; $55f6: $08 $00 $00
    add hl, bc                                    ; $55f9: $09
    nop                                           ; $55fa: $00
    add hl, bc                                    ; $55fb: $09
    inc sp                                        ; $55fc: $33
    add hl, sp                                    ; $55fd: $39
    ld sp, $3341                                  ; $55fe: $31 $41 $33
    ld c, c                                       ; $5601: $49

jr_0d7_5602:
    jr nc, jr_0d7_5655                            ; $5602: $30 $51

    ld b, b                                       ; $5604: $40
    ld d, c                                       ; $5605: $51
    add hl, sp                                    ; $5606: $39
    ld e, c                                       ; $5607: $59
    jr c, jr_0d7_566b                             ; $5608: $38 $61

    jr c, jr_0d7_5675                             ; $560a: $38 $69

    nop                                           ; $560c: $00
    ld bc, $008f                                  ; $560d: $01 $8f $00
    nop                                           ; $5610: $00
    inc hl                                        ; $5611: $23
    nop                                           ; $5612: $00
    ld d, l                                       ; $5613: $55
    nop                                           ; $5614: $00
    ld a, a                                       ; $5615: $7f
    ld a, [hl+]                                   ; $5616: $2a
    ld a, a                                       ; $5617: $7f
    ld a, [hl+]                                   ; $5618: $2a
    nop                                           ; $5619: $00
    dec hl                                        ; $561a: $2b
    ld [$1011], sp                                ; $561b: $08 $11 $10
    ld b, $00                                     ; $561e: $06 $00
    inc bc                                        ; $5620: $03
    inc bc                                        ; $5621: $03
    ld b, b                                       ; $5622: $40
    nop                                           ; $5623: $00
    ld bc, $0460                                  ; $5624: $01 $60 $04
    nop                                           ; $5627: $00
    ld b, $02                                     ; $5628: $06 $02
    ld c, $02                                     ; $562a: $0e $02
    nop                                           ; $562c: $00
    sub a                                         ; $562d: $97
    add d                                         ; $562e: $82
    sbc a                                         ; $562f: $9f
    adc d                                         ; $5630: $8a
    sbc a                                         ; $5631: $9f
    adc d                                         ; $5632: $8a
    adc [hl]                                      ; $5633: $8e
    add d                                         ; $5634: $82
    nop                                           ; $5635: $00
    add [hl]                                      ; $5636: $86
    add [hl]                                      ; $5637: $86
    sub h                                         ; $5638: $94
    add b                                         ; $5639: $80
    rra                                           ; $563a: $1f
    ld a, [bc]                                    ; $563b: $0a
    ld e, $0a                                     ; $563c: $1e $0a
    ld b, b                                       ; $563e: $40
    rra                                           ; $563f: $1f
    ld [bc], a                                    ; $5640: $02
    db $10                                        ; $5641: $10
    dec bc                                        ; $5642: $0b
    ld [bc], a                                    ; $5643: $02
    inc b                                         ; $5644: $04
    inc b                                         ; $5645: $04
    add b                                         ; $5646: $80
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    ld b, b                                       ; $5649: $40
    nop                                           ; $564a: $00
    ldh [rNR41], a                                ; $564b: $e0 $20
    ldh [$e0], a                                  ; $564d: $e0 $e0
    ret nz                                        ; $564f: $c0

    nop                                           ; $5650: $00
    jr nz, jr_0d7_56b3                            ; $5651: $20 $60

    ld h, b                                       ; $5653: $60
    inc a                                         ; $5654: $3c

jr_0d7_5655:
    ld [$80b2], sp                                ; $5655: $08 $b2 $80
    ld e, l                                       ; $5658: $5d
    jr jr_0d7_5602                                ; $5659: $18 $a7

    ld bc, $9780                                  ; $565b: $01 $80 $97
    add e                                         ; $565e: $83
    db $eb                                        ; $565f: $eb
    adc b                                         ; $5660: $88
    or c                                          ; $5661: $b1
    or c                                          ; $5662: $b1
    ld c, h                                       ; $5663: $4c
    stop                                          ; $5664: $10 $00
    ldh a, [rP1]                                  ; $5666: $f0 $00
    ldh a, [rNR41]                                ; $5668: $f0 $20
    ld [hl], b                                    ; $566a: $70

jr_0d7_566b:
    jr nz, jr_0d7_56dd                            ; $566b: $20 $70

    nop                                           ; $566d: $00
    or b                                          ; $566e: $b0
    ld [bc], a                                    ; $566f: $02
    ld [$0220], sp                                ; $5670: $08 $20 $02
    db $10                                        ; $5673: $10
    ld h, e                                       ; $5674: $63

jr_0d7_5675:
    nop                                           ; $5675: $00
    jr nc, jr_0d7_5678                            ; $5676: $30 $00

jr_0d7_5678:
    ld e, b                                       ; $5678: $58
    jr jr_0d7_567b                                ; $5679: $18 $00

jr_0d7_567b:
    and b                                         ; $567b: $a0
    add b                                         ; $567c: $80
    sub b                                         ; $567d: $90
    add b                                         ; $567e: $80
    ld l, b                                       ; $567f: $68
    ld [$b0b0], sp                                ; $5680: $08 $b0 $b0
    ret nz                                        ; $5683: $c0

    ld [hl], d                                    ; $5684: $72
    ld l, b                                       ; $5685: $68
    add d                                         ; $5686: $82
    ld e, b                                       ; $5687: $58
    ld h, h                                       ; $5688: $64
    nop                                           ; $5689: $00
    or [hl]                                       ; $568a: $b6
    ld [hl-], a                                   ; $568b: $32
    adc $40                                       ; $568c: $ce $40
    nop                                           ; $568e: $00
    ld b, a                                       ; $568f: $47
    inc bc                                        ; $5690: $03
    ld h, $02                                     ; $5691: $26 $02
    ld [hl], $12                                  ; $5693: $36 $12
    jp nc, Jump_000_2210                          ; $5695: $d2 $10 $22

    ld h, c                                       ; $5698: $61
    ld h, c                                       ; $5699: $61
    and b                                         ; $569a: $a0
    ld l, b                                       ; $569b: $68
    inc bc                                        ; $569c: $03
    nop                                           ; $569d: $00
    ld bc, $0002                                  ; $569e: $01 $02 $00
    ld c, l                                       ; $56a1: $4d
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    xor [hl]                                      ; $56a4: $ae
    inc b                                         ; $56a5: $04
    rst $38                                       ; $56a6: $ff
    dec d                                         ; $56a7: $15
    rst $38                                       ; $56a8: $ff
    ld [hl], l                                    ; $56a9: $75
    ld l, a                                       ; $56aa: $6f
    db $10                                        ; $56ab: $10
    dec b                                         ; $56ac: $05
    dec [hl]                                      ; $56ad: $35
    dec [hl]                                      ; $56ae: $35
    jp nz, $a258                                  ; $56af: $c2 $58 $a2

    nop                                           ; $56b2: $00

jr_0d7_56b3:
    rst $30                                       ; $56b3: $f7
    pop bc                                        ; $56b4: $c1
    ld [bc], a                                    ; $56b5: $02
    cp e                                          ; $56b6: $bb
    sub c                                         ; $56b7: $91
    or a                                          ; $56b8: $b7
    sub l                                         ; $56b9: $95
    sub c                                         ; $56ba: $91
    sub c                                         ; $56bb: $91
    ld l, b                                       ; $56bc: $68
    sbc b                                         ; $56bd: $98
    ld e, $00                                     ; $56be: $1e $00
    ld [bc], a                                    ; $56c0: $02
    nop                                           ; $56c1: $00
    dec bc                                        ; $56c2: $0b
    nop                                           ; $56c3: $00
    nop                                           ; $56c4: $00
    add hl, bc                                    ; $56c5: $09
    nop                                           ; $56c6: $00
    add hl, bc                                    ; $56c7: $09
    inc sp                                        ; $56c8: $33
    ld a, [hl-]                                   ; $56c9: $3a
    inc sp                                        ; $56ca: $33
    ld b, d                                       ; $56cb: $42
    jr nc, jr_0d7_5718                            ; $56cc: $30 $4a

    jr nc, @+$52                                  ; $56ce: $30 $50

    add hl, sp                                    ; $56d0: $39
    ld e, e                                       ; $56d1: $5b
    dec sp                                        ; $56d2: $3b
    ld h, e                                       ; $56d3: $63
    add hl, sp                                    ; $56d4: $39
    ld l, e                                       ; $56d5: $6b
    jr c, jr_0d7_574b                             ; $56d6: $38 $73

    jr c, jr_0d7_5755                             ; $56d8: $38 $7b

    ld b, b                                       ; $56da: $40
    ld c, d                                       ; $56db: $4a
    ld b, b                                       ; $56dc: $40

jr_0d7_56dd:
    ld d, b                                       ; $56dd: $50
    ld h, b                                       ; $56de: $60
    ld bc, $00a5                                  ; $56df: $01 $a5 $00
    nop                                           ; $56e2: $00
    ld b, c                                       ; $56e3: $41
    nop                                           ; $56e4: $00
    and b                                         ; $56e5: $a0
    nop                                           ; $56e6: $00
    ldh a, [rNR10]                                ; $56e7: $f0 $10
    pop af                                        ; $56e9: $f1
    ld [hl], b                                    ; $56ea: $70
    inc b                                         ; $56eb: $04
    ld h, c                                       ; $56ec: $61
    nop                                           ; $56ed: $00
    jr nc, @+$32                                  ; $56ee: $30 $30

    nop                                           ; $56f0: $00
    ld bc, $8080                                  ; $56f1: $01 $80 $80
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    ret nz                                        ; $56f6: $c0

    add b                                         ; $56f7: $80
    ldh [rNR41], a                                ; $56f8: $e0 $20
    ld h, b                                       ; $56fa: $60
    jr nz, jr_0d7_56dd                            ; $56fb: $20 $e0

    jr nz, jr_0d7_56ff                            ; $56fd: $20 $00

jr_0d7_56ff:
    ldh [$e0], a                                  ; $56ff: $e0 $e0
    jr nc, jr_0d7_5703                            ; $5701: $30 $00

jr_0d7_5703:
    jr c, jr_0d7_5715                             ; $5703: $38 $10

    dec a                                         ; $5705: $3d
    inc d                                         ; $5706: $14
    nop                                           ; $5707: $00
    ld [hl], $04                                  ; $5708: $36 $04
    dec sp                                        ; $570a: $3b
    jr @+$35                                      ; $570b: $18 $33

    ld de, $1031                                  ; $570d: $11 $31 $10
    inc l                                         ; $5710: $2c
    db $10                                        ; $5711: $10
    db $10                                        ; $5712: $10
    jr nc, jr_0d7_5725                            ; $5713: $30 $10

jr_0d7_5715:
    ld bc, $0002                                  ; $5715: $01 $02 $00

jr_0d7_5718:
    add hl, sp                                    ; $5718: $39
    ld d, b                                       ; $5719: $50
    ld [$0000], sp                                ; $571a: $08 $00 $00
    inc c                                         ; $571d: $0c
    inc b                                         ; $571e: $04
    ld e, $04                                     ; $571f: $1e $04
    xor a                                         ; $5721: $af
    inc b                                         ; $5722: $04
    rst $38                                       ; $5723: $ff
    ld d, l                                       ; $5724: $55

jr_0d7_5725:
    inc bc                                        ; $5725: $03
    rst $38                                       ; $5726: $ff
    push de                                       ; $5727: $d5
    sbc a                                         ; $5728: $9f
    dec b                                         ; $5729: $05
    nop                                           ; $572a: $00
    jr c, @+$37                                   ; $572b: $38 $35

    nop                                           ; $572d: $00
    ld [bc], a                                    ; $572e: $02
    nop                                           ; $572f: $00
    sbc b                                         ; $5730: $98
    ld [$0008], sp                                ; $5731: $08 $08 $00
    db $10                                        ; $5734: $10
    ld [bc], a                                    ; $5735: $02
    db $10                                        ; $5736: $10
    ld h, a                                       ; $5737: $67
    nop                                           ; $5738: $00
    inc l                                         ; $5739: $2c
    nop                                           ; $573a: $00
    ld d, $00                                     ; $573b: $16 $00
    inc d                                         ; $573d: $14
    daa                                           ; $573e: $27

jr_0d7_573f:
    ld hl, $010b                                  ; $573f: $21 $0b $01
    rrca                                          ; $5742: $0f
    ld bc, $00e2                                  ; $5743: $01 $e2 $00
    nop                                           ; $5746: $00
    ei                                            ; $5747: $fb
    ld [hl], c                                    ; $5748: $71
    rst $00                                       ; $5749: $c7
    ld b, l                                       ; $574a: $45

jr_0d7_574b:
    db $eb                                        ; $574b: $eb
    ld bc, $01ff                                  ; $574c: $01 $ff $01
    ld [hl], l                                    ; $574f: $75
    rst $08                                       ; $5750: $cf
    ld b, l                                       ; $5751: $45
    rst $08                                       ; $5752: $cf
    ld b, l                                       ; $5753: $45
    ld b, l                                       ; $5754: $45

jr_0d7_5755:
    ld b, l                                       ; $5755: $45
    add h                                         ; $5756: $84
    ld l, b                                       ; $5757: $68
    nop                                           ; $5758: $00
    ld b, [hl]                                    ; $5759: $46
    nop                                           ; $575a: $00
    xor e                                         ; $575b: $ab
    inc bc                                        ; $575c: $03
    db $f4                                        ; $575d: $f4
    ld d, b                                       ; $575e: $50
    ld a, [c]                                     ; $575f: $f2
    ld d, b                                       ; $5760: $50
    ld [$115d], sp                                ; $5761: $08 $5d $11
    ld h, $26                                     ; $5764: $26 $26
    and b                                         ; $5766: $a0
    adc b                                         ; $5767: $88
    inc b                                         ; $5768: $04
    nop                                           ; $5769: $00
    ld a, [bc]                                    ; $576a: $0a
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    ld c, l                                       ; $576d: $4d
    dec b                                         ; $576e: $05
    xor h                                         ; $576f: $ac
    nop                                           ; $5770: $00
    cp $56                                        ; $5771: $fe $56
    db $fc                                        ; $5773: $fc
    inc b                                         ; $5774: $04
    ld d, h                                       ; $5775: $54
    ld e, h                                       ; $5776: $5c
    inc d                                         ; $5777: $14
    inc h                                         ; $5778: $24
    inc h                                         ; $5779: $24
    call nz, $0368                                ; $577a: $c4 $68 $03
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    add hl, bc                                    ; $577f: $09
    nop                                           ; $5780: $00
    dec c                                         ; $5781: $0d
    inc b                                         ; $5782: $04
    call Call_0d7_6c04                            ; $5783: $cd $04 $6c
    ld b, h                                       ; $5786: $44
    nop                                           ; $5787: $00
    ld a, h                                       ; $5788: $7c
    inc d                                         ; $5789: $14
    cp h                                          ; $578a: $bc
    inc d                                         ; $578b: $14
    db $fc                                        ; $578c: $fc
    inc d                                         ; $578d: $14
    ld [hl], h                                    ; $578e: $74
    ld [hl], h                                    ; $578f: $74
    add b                                         ; $5790: $80
    and $58                                       ; $5791: $e6 $58
    and d                                         ; $5793: $a2
    nop                                           ; $5794: $00
    rst $30                                       ; $5795: $f7
    pop bc                                        ; $5796: $c1
    cp e                                          ; $5797: $bb
    sub c                                         ; $5798: $91
    or a                                          ; $5799: $b7
    db $10                                        ; $579a: $10
    sub l                                         ; $579b: $95
    sub c                                         ; $579c: $91
    sub c                                         ; $579d: $91
    cp $88                                        ; $579e: $fe $88
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    call $c8cd                                    ; $57a2: $cd $cd $c8
    jr jr_0d7_573f                                ; $57a5: $18 $98

    inc l                                         ; $57a7: $2c
    add hl, hl                                    ; $57a8: $29
    rlca                                          ; $57a9: $07
    rlca                                          ; $57aa: $07
    jr nz, @-$26                                  ; $57ab: $20 $d8

    ld e, $00                                     ; $57ad: $1e $00
    ld [bc], a                                    ; $57af: $02
    nop                                           ; $57b0: $00
    dec bc                                        ; $57b1: $0b
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    add hl, bc                                    ; $57b4: $09
    nop                                           ; $57b5: $00
    add hl, bc                                    ; $57b6: $09
    inc sp                                        ; $57b7: $33
    ld a, [hl-]                                   ; $57b8: $3a
    inc sp                                        ; $57b9: $33
    ld b, d                                       ; $57ba: $42
    jr nc, jr_0d7_5807                            ; $57bb: $30 $4a

    jr nc, @+$52                                  ; $57bd: $30 $50

    add hl, sp                                    ; $57bf: $39
    ld e, e                                       ; $57c0: $5b
    dec sp                                        ; $57c1: $3b
    ld h, e                                       ; $57c2: $63
    add hl, sp                                    ; $57c3: $39
    ld l, e                                       ; $57c4: $6b
    jr c, jr_0d7_583a                             ; $57c5: $38 $73

    jr c, jr_0d7_5844                             ; $57c7: $38 $7b

    ld b, b                                       ; $57c9: $40
    ld c, d                                       ; $57ca: $4a
    ld b, b                                       ; $57cb: $40

jr_0d7_57cc:
    ld d, b                                       ; $57cc: $50
    ld h, b                                       ; $57cd: $60
    ld bc, $00a5                                  ; $57ce: $01 $a5 $00
    nop                                           ; $57d1: $00
    ld b, c                                       ; $57d2: $41
    nop                                           ; $57d3: $00
    and b                                         ; $57d4: $a0
    nop                                           ; $57d5: $00
    ldh a, [rNR10]                                ; $57d6: $f0 $10
    pop af                                        ; $57d8: $f1
    ld [hl], b                                    ; $57d9: $70
    inc b                                         ; $57da: $04
    ld h, c                                       ; $57db: $61
    nop                                           ; $57dc: $00
    jr nc, @+$32                                  ; $57dd: $30 $30

    nop                                           ; $57df: $00
    ld bc, $8080                                  ; $57e0: $01 $80 $80
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    ret nz                                        ; $57e5: $c0

    add b                                         ; $57e6: $80
    ldh [rNR41], a                                ; $57e7: $e0 $20
    ld h, b                                       ; $57e9: $60
    jr nz, jr_0d7_57cc                            ; $57ea: $20 $e0

    jr nz, jr_0d7_57ee                            ; $57ec: $20 $00

jr_0d7_57ee:
    ldh [$e0], a                                  ; $57ee: $e0 $e0
    jr nc, jr_0d7_57f2                            ; $57f0: $30 $00

jr_0d7_57f2:
    jr c, jr_0d7_5804                             ; $57f2: $38 $10

    dec a                                         ; $57f4: $3d
    inc d                                         ; $57f5: $14
    nop                                           ; $57f6: $00
    ld [hl], $04                                  ; $57f7: $36 $04
    dec sp                                        ; $57f9: $3b
    jr @+$35                                      ; $57fa: $18 $33

    ld de, $1031                                  ; $57fc: $11 $31 $10
    inc l                                         ; $57ff: $2c
    db $10                                        ; $5800: $10
    db $10                                        ; $5801: $10
    jr nc, jr_0d7_5814                            ; $5802: $30 $10

jr_0d7_5804:
    ld bc, $0002                                  ; $5804: $01 $02 $00

jr_0d7_5807:
    add hl, sp                                    ; $5807: $39
    ld d, b                                       ; $5808: $50
    ld [$0000], sp                                ; $5809: $08 $00 $00
    inc c                                         ; $580c: $0c
    inc b                                         ; $580d: $04
    ld e, $04                                     ; $580e: $1e $04
    xor a                                         ; $5810: $af
    inc b                                         ; $5811: $04
    rst $38                                       ; $5812: $ff
    ld d, l                                       ; $5813: $55

jr_0d7_5814:
    inc bc                                        ; $5814: $03
    rst $38                                       ; $5815: $ff
    push de                                       ; $5816: $d5
    sbc a                                         ; $5817: $9f
    dec b                                         ; $5818: $05
    nop                                           ; $5819: $00
    jr c, @+$37                                   ; $581a: $38 $35

    nop                                           ; $581c: $00
    ld [bc], a                                    ; $581d: $02
    nop                                           ; $581e: $00
    sbc b                                         ; $581f: $98
    ld [$0008], sp                                ; $5820: $08 $08 $00
    db $10                                        ; $5823: $10
    ld [bc], a                                    ; $5824: $02
    db $10                                        ; $5825: $10
    ld h, a                                       ; $5826: $67
    nop                                           ; $5827: $00
    inc l                                         ; $5828: $2c
    nop                                           ; $5829: $00
    ld d, $00                                     ; $582a: $16 $00
    inc d                                         ; $582c: $14
    daa                                           ; $582d: $27

jr_0d7_582e:
    ld hl, $010b                                  ; $582e: $21 $0b $01
    rrca                                          ; $5831: $0f
    ld bc, $00e2                                  ; $5832: $01 $e2 $00
    nop                                           ; $5835: $00
    ei                                            ; $5836: $fb
    ld [hl], c                                    ; $5837: $71
    rst $00                                       ; $5838: $c7
    ld b, l                                       ; $5839: $45

jr_0d7_583a:
    db $eb                                        ; $583a: $eb
    ld bc, $01ff                                  ; $583b: $01 $ff $01
    ld [hl], l                                    ; $583e: $75
    rst $08                                       ; $583f: $cf
    ld b, l                                       ; $5840: $45
    rst $08                                       ; $5841: $cf
    ld b, l                                       ; $5842: $45
    ld b, l                                       ; $5843: $45

jr_0d7_5844:
    ld b, l                                       ; $5844: $45
    add h                                         ; $5845: $84
    ld l, b                                       ; $5846: $68
    nop                                           ; $5847: $00
    ld b, [hl]                                    ; $5848: $46
    nop                                           ; $5849: $00
    xor e                                         ; $584a: $ab
    inc bc                                        ; $584b: $03
    db $f4                                        ; $584c: $f4
    ld d, b                                       ; $584d: $50
    ld a, [c]                                     ; $584e: $f2
    ld d, b                                       ; $584f: $50
    ld [$115d], sp                                ; $5850: $08 $5d $11
    ld h, $26                                     ; $5853: $26 $26
    and b                                         ; $5855: $a0
    adc b                                         ; $5856: $88
    inc b                                         ; $5857: $04
    nop                                           ; $5858: $00
    ld a, [bc]                                    ; $5859: $0a
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    ld c, l                                       ; $585c: $4d
    dec b                                         ; $585d: $05
    xor h                                         ; $585e: $ac
    nop                                           ; $585f: $00
    cp $56                                        ; $5860: $fe $56
    db $fc                                        ; $5862: $fc
    inc b                                         ; $5863: $04
    ld d, h                                       ; $5864: $54
    ld e, h                                       ; $5865: $5c
    inc d                                         ; $5866: $14
    inc h                                         ; $5867: $24
    inc h                                         ; $5868: $24
    call nz, $0368                                ; $5869: $c4 $68 $03
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    add hl, bc                                    ; $586e: $09
    nop                                           ; $586f: $00
    dec c                                         ; $5870: $0d
    inc b                                         ; $5871: $04
    call Call_0d7_6c04                            ; $5872: $cd $04 $6c
    ld b, h                                       ; $5875: $44
    nop                                           ; $5876: $00
    ld a, h                                       ; $5877: $7c
    inc d                                         ; $5878: $14
    cp h                                          ; $5879: $bc
    inc d                                         ; $587a: $14
    db $fc                                        ; $587b: $fc
    inc d                                         ; $587c: $14
    ld [hl], h                                    ; $587d: $74
    ld [hl], h                                    ; $587e: $74
    add b                                         ; $587f: $80
    and $58                                       ; $5880: $e6 $58
    and d                                         ; $5882: $a2
    nop                                           ; $5883: $00
    rst $30                                       ; $5884: $f7
    pop bc                                        ; $5885: $c1
    cp e                                          ; $5886: $bb
    sub c                                         ; $5887: $91
    or a                                          ; $5888: $b7
    db $10                                        ; $5889: $10
    sub l                                         ; $588a: $95
    sub c                                         ; $588b: $91
    sub c                                         ; $588c: $91
    cp $88                                        ; $588d: $fe $88
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    call $c8cd                                    ; $5891: $cd $cd $c8
    jr jr_0d7_582e                                ; $5894: $18 $98

    inc l                                         ; $5896: $2c
    add hl, hl                                    ; $5897: $29
    rlca                                          ; $5898: $07
    rlca                                          ; $5899: $07
    jr nz, @-$26                                  ; $589a: $20 $d8

    call nz, $1600                                ; $589c: $c4 $00 $16
    nop                                           ; $589f: $00
    ld b, b                                       ; $58a0: $40
    nop                                           ; $58a1: $00
    ld h, h                                       ; $58a2: $64
    nop                                           ; $58a3: $00
    ld a, b                                       ; $58a4: $78
    nop                                           ; $58a5: $00
    add b                                         ; $58a6: $80
    nop                                           ; $58a7: $00
    adc b                                         ; $58a8: $88
    nop                                           ; $58a9: $00
    sub d                                         ; $58aa: $92
    nop                                           ; $58ab: $00
    sbc h                                         ; $58ac: $9c
    nop                                           ; $58ad: $00
    and [hl]                                      ; $58ae: $a6
    nop                                           ; $58af: $00
    or b                                          ; $58b0: $b0
    nop                                           ; $58b1: $00
    cp d                                          ; $58b2: $ba
    nop                                           ; $58b3: $00
    ld [de], a                                    ; $58b4: $12
    nop                                           ; $58b5: $00
    ldh a, [rIF]                                  ; $58b6: $f0 $0f
    and c                                         ; $58b8: $a1
    nop                                           ; $58b9: $00
    and c                                         ; $58ba: $a1
    ld sp, hl                                     ; $58bb: $f9
    and d                                         ; $58bc: $a2
    cp $b1                                        ; $58bd: $fe $b1
    rst $30                                       ; $58bf: $f7
    or d                                          ; $58c0: $b2
    rst $38                                       ; $58c1: $ff
    or a                                          ; $58c2: $b7
    inc bc                                        ; $58c3: $03
    pop bc                                        ; $58c4: $c1
    db $f4                                        ; $58c5: $f4
    pop bc                                        ; $58c6: $c1
    db $fc                                        ; $58c7: $fc
    rst $00                                       ; $58c8: $c7
    inc b                                         ; $58c9: $04
    pop de                                        ; $58ca: $d1
    pop af                                        ; $58cb: $f1
    pop de                                        ; $58cc: $d1
    ld sp, hl                                     ; $58cd: $f9
    pop de                                        ; $58ce: $d1
    ld bc, $07d6                                  ; $58cf: $01 $d6 $07
    pop hl                                        ; $58d2: $e1
    ldh a, [$e1]                                  ; $58d3: $f0 $e1
    ld hl, sp-$1f                                 ; $58d5: $f8 $e1
    nop                                           ; $58d7: $00
    and $08                                       ; $58d8: $e6 $08
    pop af                                        ; $58da: $f1
    ld hl, sp-$0f                                 ; $58db: $f8 $f1
    rst $38                                       ; $58dd: $ff
    rrca                                          ; $58de: $0f
    inc h                                         ; $58df: $24
    ldh a, [$0e]                                  ; $58e0: $f0 $0e
    cp d                                          ; $58e2: $ba
    nop                                           ; $58e3: $00
    cp d                                          ; $58e4: $ba
    ld sp, hl                                     ; $58e5: $f9
    cp l                                          ; $58e6: $bd
    rst $38                                       ; $58e7: $ff
    jp z, $caf5                                   ; $58e8: $ca $f5 $ca

    db $fd                                        ; $58eb: $fd
    ret nc                                        ; $58ec: $d0

    inc bc                                        ; $58ed: $03
    jp c, $daf2                                   ; $58ee: $da $f2 $da

    ld a, [$02da]                                 ; $58f1: $fa $da $02
    db $e4                                        ; $58f4: $e4
    rlca                                          ; $58f5: $07
    ld [$eaf0], a                                 ; $58f6: $ea $f0 $ea
    ld hl, sp-$16                                 ; $58f9: $f8 $ea
    nop                                           ; $58fb: $00
    db $f4                                        ; $58fc: $f4
    rlca                                          ; $58fd: $07
    ld a, [$fafc]                                 ; $58fe: $fa $fc $fa
    rlca                                          ; $5901: $07
    rlca                                          ; $5902: $07
    ld b, d                                       ; $5903: $42
    ld a, [c]                                     ; $5904: $f2
    ld de, $00e1                                  ; $5905: $11 $e1 $00
    push hl                                       ; $5908: $e5
    push af                                       ; $5909: $f5
    pop hl                                        ; $590a: $e1
    db $fd                                        ; $590b: $fd
    rst $20                                       ; $590c: $e7
    dec b                                         ; $590d: $05
    pop af                                        ; $590e: $f1
    ld a, [c]                                     ; $590f: $f2
    pop af                                        ; $5910: $f1
    ld a, [$02f1]                                 ; $5911: $fa $f1 $02
    pop af                                        ; $5914: $f1
    ld a, [bc]                                    ; $5915: $0a
    ld bc, $f750                                  ; $5916: $01 $50 $f7
    rlca                                          ; $5919: $07
    ld hl, sp+$07                                 ; $591a: $f8 $07
    cp $fc                                        ; $591c: $fe $fc
    ld bc, $f752                                  ; $591e: $01 $52 $f7
    rlca                                          ; $5921: $07
    ld hl, sp+$07                                 ; $5922: $f8 $07
    db $fd                                        ; $5924: $fd
    db $fc                                        ; $5925: $fc
    ld [bc], a                                    ; $5926: $02
    ld d, h                                       ; $5927: $54
    rst $30                                       ; $5928: $f7
    rlca                                          ; $5929: $07
    ld hl, sp+$07                                 ; $592a: $f8 $07
    ld a, [$faf8]                                 ; $592c: $fa $f8 $fa
    cp $02                                        ; $592f: $fe $02
    ld e, b                                       ; $5931: $58
    rst $30                                       ; $5932: $f7
    rlca                                          ; $5933: $07
    ld hl, sp+$07                                 ; $5934: $f8 $07
    ld sp, hl                                     ; $5936: $f9
    ld hl, sp-$07                                 ; $5937: $f8 $f9
    nop                                           ; $5939: $00
    ld [bc], a                                    ; $593a: $02
    ld e, h                                       ; $593b: $5c
    rst $30                                       ; $593c: $f7
    rlca                                          ; $593d: $07
    ld hl, sp+$07                                 ; $593e: $f8 $07
    ld hl, sp-$08                                 ; $5940: $f8 $f8
    ld hl, sp+$00                                 ; $5942: $f8 $00
    ld [bc], a                                    ; $5944: $02
    ld h, b                                       ; $5945: $60
    rst $30                                       ; $5946: $f7
    rlca                                          ; $5947: $07
    ld hl, sp+$07                                 ; $5948: $f8 $07
    ld hl, sp-$08                                 ; $594a: $f8 $f8
    ld hl, sp+$00                                 ; $594c: $f8 $00
    ld [bc], a                                    ; $594e: $02
    ld h, h                                       ; $594f: $64
    rst $30                                       ; $5950: $f7
    rlca                                          ; $5951: $07
    ld hl, sp+$07                                 ; $5952: $f8 $07
    ld a, [$fafa]                                 ; $5954: $fa $fa $fa
    rst $38                                       ; $5957: $ff
    ld [bc], a                                    ; $5958: $02
    ld l, b                                       ; $5959: $68
    rst $30                                       ; $595a: $f7
    rlca                                          ; $595b: $07
    ld hl, sp+$07                                 ; $595c: $f8 $07
    ld a, [$faf8]                                 ; $595e: $fa $f8 $fa
    rst $38                                       ; $5961: $ff
    ret nz                                        ; $5962: $c0

    ld b, $d4                                     ; $5963: $06 $d4
    inc b                                         ; $5965: $04
    nop                                           ; $5966: $00
    inc bc                                        ; $5967: $03
    nop                                           ; $5968: $00
    inc bc                                        ; $5969: $03
    nop                                           ; $596a: $00
    rlca                                          ; $596b: $07
    nop                                           ; $596c: $00
    ld b, $01                                     ; $596d: $06 $01
    ld bc, $030c                                  ; $596f: $01 $0c $03
    rrca                                          ; $5972: $0f
    ld bc, $031d                                  ; $5973: $01 $1d $03
    ld c, $08                                     ; $5976: $0e $08
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    ld [$1f07], sp                                ; $597a: $08 $07 $1f
    inc bc                                        ; $597d: $03
    add hl, de                                    ; $597e: $19
    rlca                                          ; $597f: $07
    dec a                                         ; $5980: $3d
    inc bc                                        ; $5981: $03
    nop                                           ; $5982: $00
    dec sp                                        ; $5983: $3b
    rlca                                          ; $5984: $07
    ld [hl], b                                    ; $5985: $70
    rrca                                          ; $5986: $0f
    db $e3                                        ; $5987: $e3
    rra                                           ; $5988: $1f
    stop                                          ; $5989: $10 $00
    db $10                                        ; $598b: $10
    stop                                          ; $598c: $10 $00
    jr jr_0d7_5992                                ; $598e: $18 $02

    nop                                           ; $5990: $00
    inc e                                         ; $5991: $1c

jr_0d7_5992:
    nop                                           ; $5992: $00
    ld c, $10                                     ; $5993: $0e $10
    nop                                           ; $5995: $00
    jr jr_0d7_5998                                ; $5996: $18 $00

jr_0d7_5998:
    ld [$1c10], sp                                ; $5998: $08 $10 $1c
    nop                                           ; $599b: $00
    inc c                                         ; $599c: $0c
    stop                                          ; $599d: $10 $00
    inc d                                         ; $599f: $14
    jr @+$06                                      ; $59a0: $18 $04

    jr @+$10                                      ; $59a2: $18 $0e

    db $10                                        ; $59a4: $10
    ld b, $18                                     ; $59a5: $06 $18
    nop                                           ; $59a7: $00
    rrca                                          ; $59a8: $0f
    db $10                                        ; $59a9: $10
    adc h                                         ; $59aa: $8c
    ld [hl], b                                    ; $59ab: $70
    inc c                                         ; $59ac: $0c
    ld [bc], a                                    ; $59ad: $02
    rrca                                          ; $59ae: $0f
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    ld c, $01                                     ; $59b1: $0e $01
    dec e                                         ; $59b3: $1d
    ld [bc], a                                    ; $59b4: $02
    ld a, [de]                                    ; $59b5: $1a
    dec b                                         ; $59b6: $05
    inc a                                         ; $59b7: $3c
    inc bc                                        ; $59b8: $03
    nop                                           ; $59b9: $00
    add hl, sp                                    ; $59ba: $39
    rlca                                          ; $59bb: $07
    ld [hl], d                                    ; $59bc: $72
    dec c                                         ; $59bd: $0d
    inc a                                         ; $59be: $3c
    inc bc                                        ; $59bf: $03
    ld a, [de]                                    ; $59c0: $1a
    dec b                                         ; $59c1: $05
    nop                                           ; $59c2: $00
    rra                                           ; $59c3: $1f
    nop                                           ; $59c4: $00
    ccf                                           ; $59c5: $3f
    nop                                           ; $59c6: $00
    dec a                                         ; $59c7: $3d
    ld [bc], a                                    ; $59c8: $02
    ld a, [hl]                                    ; $59c9: $7e
    ld bc, $7c00                                  ; $59ca: $01 $00 $7c
    inc bc                                        ; $59cd: $03
    add sp, $17                                   ; $59ce: $e8 $17
    cp h                                          ; $59d0: $bc
    ld b, b                                       ; $59d1: $40
    inc l                                         ; $59d2: $2c
    ret nc                                        ; $59d3: $d0

    nop                                           ; $59d4: $00
    inc c                                         ; $59d5: $0c
    ldh a, [rDMA]                                 ; $59d6: $f0 $46
    ld hl, sp+$33                                 ; $59d8: $f8 $33
    db $fc                                        ; $59da: $fc
    ld h, l                                       ; $59db: $65
    ld a, [$db00]                                 ; $59dc: $fa $00 $db
    db $fc                                        ; $59df: $fc
    ld b, [hl]                                    ; $59e0: $46
    ld hl, sp+$26                                 ; $59e1: $f8 $26
    ld hl, sp-$12                                 ; $59e3: $f8 $ee
    stop                                          ; $59e5: $10 $00
    rst $10                                       ; $59e7: $d7
    jr z, @+$2d                                   ; $59e8: $28 $2b

    call nc, $7c83                                ; $59ea: $d4 $83 $7c
    ld bc, $02fe                                  ; $59ed: $01 $fe $02
    ld d, h                                       ; $59f0: $54
    rst $38                                       ; $59f1: $ff
    ld [$08ff], a                                 ; $59f2: $ea $ff $08
    nop                                           ; $59f5: $00
    ld bc, $0858                                  ; $59f6: $01 $58 $08
    add b                                         ; $59f9: $80
    ld [bc], a                                    ; $59fa: $02
    nop                                           ; $59fb: $00
    inc c                                         ; $59fc: $0c
    nop                                           ; $59fd: $00
    ld b, [hl]                                    ; $59fe: $46
    ld hl, sp-$55                                 ; $59ff: $f8 $ab
    db $f4                                        ; $5a01: $f4
    ld e, $04                                     ; $5a02: $1e $04
    ldh [$2c], a                                  ; $5a04: $e0 $2c
    ret nc                                        ; $5a06: $d0

    ld e, b                                       ; $5a07: $58
    and b                                         ; $5a08: $a0
    ld e, b                                       ; $5a09: $58
    ld [$0b74], sp                                ; $5a0a: $08 $74 $0b
    ld [hl+], a                                   ; $5a0d: $22
    ld a, [hl-]                                   ; $5a0e: $3a
    dec b                                         ; $5a0f: $05
    ld h, [hl]                                    ; $5a10: $66
    ld [$001f], sp                                ; $5a11: $08 $1f $00
    ld e, $6a                                     ; $5a14: $1e $6a
    nop                                           ; $5a16: $00
    ld a, $01                                     ; $5a17: $3e $01
    ld bc, $0b34                                  ; $5a19: $01 $34 $0b
    ld a, b                                       ; $5a1c: $78

jr_0d7_5a1d:
    rlca                                          ; $5a1d: $07
    jp hl                                         ; $5a1e: $e9


    rla                                           ; $5a1f: $17
    ld d, $08                                     ; $5a20: $16 $08
    nop                                           ; $5a22: $00
    ccf                                           ; $5a23: $3f
    nop                                           ; $5a24: $00
    ld b, b                                       ; $5a25: $40
    ldh [$3e], a                                  ; $5a26: $e0 $3e
    cp $ae                                        ; $5a28: $fe $ae
    cp $00                                        ; $5a2a: $fe $00
    ld [de], a                                    ; $5a2c: $12
    cp $02                                        ; $5a2d: $fe $02
    cp $a8                                        ; $5a2f: $fe $a8
    ld d, [hl]                                    ; $5a31: $56
    db $fd                                        ; $5a32: $fd
    ld [bc], a                                    ; $5a33: $02
    nop                                           ; $5a34: $00
    and b                                         ; $5a35: $a0
    ld e, a                                       ; $5a36: $5f
    ld b, $ff                                     ; $5a37: $06 $ff
    dec bc                                        ; $5a39: $0b
    rst $38                                       ; $5a3a: $ff

jr_0d7_5a3b:
    dec l                                         ; $5a3b: $2d
    rst $38                                       ; $5a3c: $ff
    nop                                           ; $5a3d: $00
    sbc a                                         ; $5a3e: $9f
    rst $38                                       ; $5a3f: $ff
    ld a, [hl-]                                   ; $5a40: $3a
    rst $38                                       ; $5a41: $ff
    ld b, b                                       ; $5a42: $40
    rst $38                                       ; $5a43: $ff
    add b                                         ; $5a44: $80
    ld a, a                                       ; $5a45: $7f
    nop                                           ; $5a46: $00
    ld l, e                                       ; $5a47: $6b
    sub h                                         ; $5a48: $94
    ld a, b                                       ; $5a49: $78
    add b                                         ; $5a4a: $80
    sbc b                                         ; $5a4b: $98
    ld h, b                                       ; $5a4c: $60
    inc e                                         ; $5a4d: $1c
    ldh [rP1], a                                  ; $5a4e: $e0 $00
    ld c, h                                       ; $5a50: $4c
    ldh a, [$d6]                                  ; $5a51: $f0 $d6
    add sp, -$52                                  ; $5a53: $e8 $ae
    ldh a, [$9c]                                  ; $5a55: $f0 $9c
    ldh [rP1], a                                  ; $5a57: $e0 $00
    jr jr_0d7_5a3b                                ; $5a59: $18 $e0

    jr c, jr_0d7_5a1d                             ; $5a5b: $38 $c0

    ld e, h                                       ; $5a5d: $5c
    and b                                         ; $5a5e: $a0
    xor h                                         ; $5a5f: $ac
    ld d, b                                       ; $5a60: $50
    nop                                           ; $5a61: $00
    inc c                                         ; $5a62: $0c
    ldh a, [$0e]                                  ; $5a63: $f0 $0e
    ldh a, [$b6]                                  ; $5a65: $f0 $b6
    add sp, -$31                                  ; $5a67: $e8 $cf
    ldh a, [rNR21]                                ; $5a69: $f0 $16
    db $ed                                        ; $5a6b: $ed
    ld a, [$fe07]                                 ; $5a6c: $fa $07 $fe
    nop                                           ; $5a6f: $00
    rrca                                          ; $5a70: $0f
    ld [bc], a                                    ; $5a71: $02
    nop                                           ; $5a72: $00
    ld e, d                                       ; $5a73: $5a
    ld [$093a], sp                                ; $5a74: $08 $3a $09
    dec b                                         ; $5a77: $05
    ld a, h                                       ; $5a78: $7c
    inc bc                                        ; $5a79: $03

jr_0d7_5a7a:
    ccf                                           ; $5a7a: $3f
    ld c, $00                                     ; $5a7b: $0e $00
    rra                                           ; $5a7d: $1f
    nop                                           ; $5a7e: $00
    inc c                                         ; $5a7f: $0c
    ld [$7400], sp                                ; $5a80: $08 $00 $74
    dec bc                                        ; $5a83: $0b
    add sp, $17                                   ; $5a84: $e8 $17
    ld d, h                                       ; $5a86: $54
    dec hl                                        ; $5a87: $2b
    jp c, $0025                                   ; $5a88: $da $25 $00

    ret nz                                        ; $5a8b: $c0

    ccf                                           ; $5a8c: $3f
    add b                                         ; $5a8d: $80
    ld a, a                                       ; $5a8e: $7f
    ld a, [bc]                                    ; $5a8f: $0a
    rst $38                                       ; $5a90: $ff
    add l                                         ; $5a91: $85
    ld a, a                                       ; $5a92: $7f
    nop                                           ; $5a93: $00
    ld [de], a                                    ; $5a94: $12
    rst $38                                       ; $5a95: $ff
    dec b                                         ; $5a96: $05
    rst $38                                       ; $5a97: $ff
    and b                                         ; $5a98: $a0
    ld e, a                                       ; $5a99: $5f
    ld e, l                                       ; $5a9a: $5d
    and d                                         ; $5a9b: $a2
    nop                                           ; $5a9c: $00
    cp $01                                        ; $5a9d: $fe $01
    add c                                         ; $5a9f: $81
    ld a, a                                       ; $5aa0: $7f
    ld b, $ff                                     ; $5aa1: $06 $ff
    inc bc                                        ; $5aa3: $03
    rst $38                                       ; $5aa4: $ff
    nop                                           ; $5aa5: $00
    dec hl                                        ; $5aa6: $2b
    rst $38                                       ; $5aa7: $ff
    ld b, l                                       ; $5aa8: $45
    rst $38                                       ; $5aa9: $ff
    db $10                                        ; $5aaa: $10
    rst $38                                       ; $5aab: $ff
    nop                                           ; $5aac: $00
    ldh [$08], a                                  ; $5aad: $e0 $08
    nop                                           ; $5aaf: $00
    ldh [$a0], a                                  ; $5ab0: $e0 $a0
    ldh [rSB], a                                  ; $5ab2: $e0 $01
    jr jr_0d7_5b1e                                ; $5ab4: $18 $68

    rst $38                                       ; $5ab6: $ff
    ld b, $00                                     ; $5ab7: $06 $00
    db $fd                                        ; $5ab9: $fd
    ld d, a                                       ; $5aba: $57
    xor b                                         ; $5abb: $a8
    ld a, [bc]                                    ; $5abc: $0a
    push af                                       ; $5abd: $f5
    jr z, @+$01                                   ; $5abe: $28 $ff

    ld e, h                                       ; $5ac0: $5c
    nop                                           ; $5ac1: $00
    rst $38                                       ; $5ac2: $ff
    ld a, [$beff]                                 ; $5ac3: $fa $ff $be
    rst $38                                       ; $5ac6: $ff
    cp $ff                                        ; $5ac7: $fe $ff
    add sp, $00                                   ; $5ac9: $e8 $00
    rst $38                                       ; $5acb: $ff
    inc b                                         ; $5acc: $04
    nop                                           ; $5acd: $00
    inc d                                         ; $5ace: $14
    jr z, jr_0d7_5aff                             ; $5acf: $28 $2e

    db $10                                        ; $5ad1: $10
    inc a                                         ; $5ad2: $3c
    ld [bc], a                                    ; $5ad3: $02
    nop                                           ; $5ad4: $00
    jr c, jr_0d7_5ad7                             ; $5ad5: $38 $00

jr_0d7_5ad7:
    jr @+$22                                      ; $5ad7: $18 $20

    inc e                                         ; $5ad9: $1c
    ld [bc], a                                    ; $5ada: $02
    nop                                           ; $5adb: $00
    ld c, $00                                     ; $5adc: $0e $00
    jr nc, jr_0d7_5af6                            ; $5ade: $30 $16

    jr z, jr_0d7_5af1                             ; $5ae0: $28 $0f

    jr nc, jr_0d7_5b42                            ; $5ae2: $30 $5e

    and b                                         ; $5ae4: $a0
    db $fc                                        ; $5ae5: $fc
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    cp h                                          ; $5ae8: $bc
    ld b, b                                       ; $5ae9: $40
    ld e, $e0                                     ; $5aea: $1e $e0
    ld c, $f0                                     ; $5aec: $0e $f0
    dec a                                         ; $5aee: $3d
    jr nz, jr_0d7_5af3                            ; $5aef: $20 $02

jr_0d7_5af1:
    rra                                           ; $5af1: $1f
    ld [hl], b                                    ; $5af2: $70

jr_0d7_5af3:
    nop                                           ; $5af3: $00
    ld e, $01                                     ; $5af4: $1e $01

jr_0d7_5af6:
    inc a                                         ; $5af6: $3c
    inc bc                                        ; $5af7: $03
    jr c, jr_0d7_5a7a                             ; $5af8: $38 $80

    ld [hl], b                                    ; $5afa: $70
    ld bc, $17e8                                  ; $5afb: $01 $e8 $17
    ld a, [c]                                     ; $5afe: $f2

jr_0d7_5aff:
    rrca                                          ; $5aff: $0f
    ld l, c                                       ; $5b00: $69
    rla                                           ; $5b01: $17
    ld d, b                                       ; $5b02: $50
    nop                                           ; $5b03: $00
    cpl                                           ; $5b04: $2f
    db $f4                                        ; $5b05: $f4
    dec bc                                        ; $5b06: $0b
    ld [c], a                                     ; $5b07: $e2
    dec e                                         ; $5b08: $1d
    xor $11                                       ; $5b09: $ee $11
    ld a, a                                       ; $5b0b: $7f
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    ld e, $00                                     ; $5b0e: $1e $00
    nop                                           ; $5b10: $00
    rst $38                                       ; $5b11: $ff
    xor b                                         ; $5b12: $a8
    ld d, a                                       ; $5b13: $57
    jp c, Jump_000_2500                           ; $5b14: $da $00 $25

    and h                                         ; $5b17: $a4
    ld e, e                                       ; $5b18: $5b
    nop                                           ; $5b19: $00
    rst $38                                       ; $5b1a: $ff
    nop                                           ; $5b1b: $00
    rst $38                                       ; $5b1c: $ff
    add c                                         ; $5b1d: $81

jr_0d7_5b1e:
    nop                                           ; $5b1e: $00
    rst $38                                       ; $5b1f: $ff
    inc l                                         ; $5b20: $2c
    rst $38                                       ; $5b21: $ff
    ld b, a                                       ; $5b22: $47
    rst $38                                       ; $5b23: $ff
    ld [de], a                                    ; $5b24: $12
    rst $38                                       ; $5b25: $ff
    ld b, c                                       ; $5b26: $41
    add b                                         ; $5b27: $80
    inc c                                         ; $5b28: $0c
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    rst $38                                       ; $5b2b: $ff
    adc d                                         ; $5b2c: $8a
    ld [hl], l                                    ; $5b2d: $75
    rst $10                                       ; $5b2e: $d7
    jr z, jr_0d7_5b9f                             ; $5b2f: $28 $6e

    nop                                           ; $5b31: $00
    ld de, $fe00                                  ; $5b32: $11 $00 $fe
    ld b, $f8                                     ; $5b35: $06 $f8
    xor d                                         ; $5b37: $aa
    ld d, h                                       ; $5b38: $54
    inc b                                         ; $5b39: $04
    ld [bc], a                                    ; $5b3a: $02
    cp $4a                                        ; $5b3b: $fe $4a
    cp $ad                                        ; $5b3d: $fe $ad
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    ld [hl], d                                    ; $5b41: $72

jr_0d7_5b42:
    nop                                           ; $5b42: $00
    db $fd                                        ; $5b43: $fd
    ld [$d6ff], sp                                ; $5b44: $08 $ff $d6
    rst $38                                       ; $5b47: $ff
    ld l, b                                       ; $5b48: $68
    inc l                                         ; $5b49: $2c
    nop                                           ; $5b4a: $00
    ld [de], a                                    ; $5b4b: $12
    db $ed                                        ; $5b4c: $ed
    ld e, l                                       ; $5b4d: $5d
    nop                                           ; $5b4e: $00
    and d                                         ; $5b4f: $a2
    ccf                                           ; $5b50: $3f
    ret nz                                        ; $5b51: $c0

    ld a, h                                       ; $5b52: $7c
    add b                                         ; $5b53: $80
    ld l, $d0                                     ; $5b54: $2e $d0
    sbc a                                         ; $5b56: $9f
    ld [$cce0], sp                                ; $5b57: $08 $e0 $cc
    ldh a, [rNR21]                                ; $5b5a: $f0 $16
    cp $00                                        ; $5b5c: $fe $00
    ld b, $f8                                     ; $5b5e: $06 $f8
    inc bc                                        ; $5b60: $03
    nop                                           ; $5b61: $00
    db $fc                                        ; $5b62: $fc
    sub l                                         ; $5b63: $95
    ld l, d                                       ; $5b64: $6a
    ld a, a                                       ; $5b65: $7f
    add b                                         ; $5b66: $80
    or [hl]                                       ; $5b67: $b6
    ld b, b                                       ; $5b68: $40
    ld hl, sp-$74                                 ; $5b69: $f8 $8c
    ld [hl], h                                    ; $5b6b: $74
    ld b, c                                       ; $5b6c: $41
    rst $30                                       ; $5b6d: $f7
    nop                                           ; $5b6e: $00
    rst $00                                       ; $5b6f: $c7
    nop                                           ; $5b70: $00
    ld [bc], a                                    ; $5b71: $02
    ld [bc], a                                    ; $5b72: $02
    xor b                                         ; $5b73: $a8
    inc bc                                        ; $5b74: $03
    nop                                           ; $5b75: $00
    ld bc, $403f                                  ; $5b76: $01 $3f $40
    ld a, b                                       ; $5b79: $78
    nop                                           ; $5b7a: $00
    ld a, b                                       ; $5b7b: $78
    nop                                           ; $5b7c: $00
    jr c, @+$08                                   ; $5b7d: $38 $06

    nop                                           ; $5b7f: $00
    add hl, bc                                    ; $5b80: $09
    jr c, jr_0d7_5bc3                             ; $5b81: $38 $40

    ld e, b                                       ; $5b83: $58
    jr nz, @+$06                                  ; $5b84: $20 $04

    ld [$6018], sp                                ; $5b86: $08 $18 $60
    ld [$8208], sp                                ; $5b89: $08 $08 $82
    inc d                                         ; $5b8c: $14
    ld [$0070], sp                                ; $5b8d: $08 $70 $00
    ld h, b                                       ; $5b90: $60
    nop                                           ; $5b91: $00
    ld [bc], a                                    ; $5b92: $02
    ld b, b                                       ; $5b93: $40
    ld [bc], a                                    ; $5b94: $02
    dec b                                         ; $5b95: $05
    nop                                           ; $5b96: $00
    ld [bc], a                                    ; $5b97: $02
    dec c                                         ; $5b98: $0d
    ld [bc], a                                    ; $5b99: $02
    add hl, bc                                    ; $5b9a: $09
    ld b, $18                                     ; $5b9b: $06 $18
    rlca                                          ; $5b9d: $07
    inc c                                         ; $5b9e: $0c

jr_0d7_5b9f:
    nop                                           ; $5b9f: $00
    inc bc                                        ; $5ba0: $03
    add hl, bc                                    ; $5ba1: $09
    ld b, $1e                                     ; $5ba2: $06 $1e
    inc bc                                        ; $5ba4: $03
    jr @+$09                                      ; $5ba5: $18 $07

    ld a, [hl-]                                   ; $5ba7: $3a
    inc b                                         ; $5ba8: $04
    rlca                                          ; $5ba9: $07
    ld [hl], c                                    ; $5baa: $71
    rrca                                          ; $5bab: $0f
    ld a, [$d207]                                 ; $5bac: $fa $07 $d2
    ld [$0b75], sp                                ; $5baf: $08 $75 $0b
    jr jr_0d7_5bd4                                ; $5bb2: $18 $20

    nop                                           ; $5bb4: $00
    jr nc, @-$02                                  ; $5bb5: $30 $fc

    nop                                           ; $5bb7: $00
    ld b, $08                                     ; $5bb8: $06 $08
    jr nc, jr_0d7_5bbc                            ; $5bba: $30 $00

jr_0d7_5bbc:
    db $10                                        ; $5bbc: $10
    ld d, b                                       ; $5bbd: $50
    jr nz, jr_0d7_5bc6                            ; $5bbe: $20 $06

    add hl, bc                                    ; $5bc0: $09
    inc a                                         ; $5bc1: $3c
    ld [de], a                                    ; $5bc2: $12

jr_0d7_5bc3:
    nop                                           ; $5bc3: $00
    jr jr_0d7_5be6                                ; $5bc4: $18 $20

jr_0d7_5bc6:
    jr jr_0d7_5be8                                ; $5bc6: $18 $20

    ld [bc], a                                    ; $5bc8: $02
    inc c                                         ; $5bc9: $0c
    ldh a, [rBGP]                                 ; $5bca: $f0 $47
    ld hl, sp-$4e                                 ; $5bcc: $f8 $b2
    db $fc                                        ; $5bce: $fc
    ld a, d                                       ; $5bcf: $7a
    ld a, [bc]                                    ; $5bd0: $0a
    inc e                                         ; $5bd1: $1c
    ld b, $03                                     ; $5bd2: $06 $03

jr_0d7_5bd4:
    dec c                                         ; $5bd4: $0d
    ld [bc], a                                    ; $5bd5: $02
    ld b, $01                                     ; $5bd6: $06 $01
    adc b                                         ; $5bd8: $88
    add hl, bc                                    ; $5bd9: $09
    inc c                                         ; $5bda: $0c
    add hl, bc                                    ; $5bdb: $09
    jr nc, jr_0d7_5c3e                            ; $5bdc: $30 $60

    rrca                                          ; $5bde: $0f
    sbc $19                                       ; $5bdf: $de $19
    ld [$3c09], a                                 ; $5be1: $ea $09 $3c
    inc bc                                        ; $5be4: $03
    add b                                         ; $5be5: $80

jr_0d7_5be6:
    ld b, b                                       ; $5be6: $40
    nop                                           ; $5be7: $00

jr_0d7_5be8:
    nop                                           ; $5be8: $00
    ret nz                                        ; $5be9: $c0

    add b                                         ; $5bea: $80
    ld b, b                                       ; $5beb: $40
    dec de                                        ; $5bec: $1b
    db $fc                                        ; $5bed: $fc
    sub e                                         ; $5bee: $93
    ld a, h                                       ; $5bef: $7c
    rlc b                                         ; $5bf0: $cb $00
    inc [hl]                                      ; $5bf2: $34
    ld h, l                                       ; $5bf3: $65
    sbc d                                         ; $5bf4: $9a
    add c                                         ; $5bf5: $81
    ld a, [hl]                                    ; $5bf6: $7e
    nop                                           ; $5bf7: $00
    rst $38                                       ; $5bf8: $ff
    inc d                                         ; $5bf9: $14
    ld [bc], a                                    ; $5bfa: $02
    rst $38                                       ; $5bfb: $ff
    ld a, d                                       ; $5bfc: $7a
    rst $38                                       ; $5bfd: $ff
    ld e, l                                       ; $5bfe: $5d
    rst $38                                       ; $5bff: $ff
    ld [$0110], sp                                ; $5c00: $08 $10 $01
    push de                                       ; $5c03: $d5
    ld [$4a2a], sp                                ; $5c04: $08 $2a $4a
    or l                                          ; $5c07: $b5
    jr nz, jr_0d7_5c66                            ; $5c08: $20 $5c

    db $10                                        ; $5c0a: $10
    db $10                                        ; $5c0b: $10
    jr nz, jr_0d7_5c1a                            ; $5c0c: $20 $0c

    adc b                                         ; $5c0e: $88
    ld e, b                                       ; $5c0f: $58
    ld bc, $3804                                  ; $5c10: $01 $04 $38
    jr c, jr_0d7_5c7d                             ; $5c13: $38 $68

    add hl, de                                    ; $5c15: $19
    ldh [rDMA], a                                 ; $5c16: $e0 $46
    ld hl, sp+$00                                 ; $5c18: $f8 $00

jr_0d7_5c1a:
    and a                                         ; $5c1a: $a7
    ld hl, sp-$7a                                 ; $5c1b: $f8 $86
    ld hl, sp+$0c                                 ; $5c1d: $f8 $0c
    ldh a, [$58]                                  ; $5c1f: $f0 $58
    and b                                         ; $5c21: $a0
    nop                                           ; $5c22: $00
    rlca                                          ; $5c23: $07
    nop                                           ; $5c24: $00
    add hl, bc                                    ; $5c25: $09
    ld b, $1c                                     ; $5c26: $06 $1c
    inc bc                                        ; $5c28: $03
    ld a, [hl-]                                   ; $5c29: $3a
    dec b                                         ; $5c2a: $05
    inc c                                         ; $5c2b: $0c
    dec e                                         ; $5c2c: $1d
    ld [bc], a                                    ; $5c2d: $02
    ld c, $01                                     ; $5c2e: $0e $01
    add sp, $09                                   ; $5c30: $e8 $09
    call c, $f929                                 ; $5c32: $dc $29 $f9
    ld b, $00                                     ; $5c35: $06 $00
    ld e, $01                                     ; $5c37: $1e $01
    ccf                                           ; $5c39: $3f
    nop                                           ; $5c3a: $00
    ld a, [hl-]                                   ; $5c3b: $3a
    dec b                                         ; $5c3c: $05
    ld b, e                                       ; $5c3d: $43

jr_0d7_5c3e:
    cp a                                          ; $5c3e: $bf
    inc b                                         ; $5c3f: $04
    ld a, [bc]                                    ; $5c40: $0a
    rst $38                                       ; $5c41: $ff
    daa                                           ; $5c42: $27
    rst $38                                       ; $5c43: $ff
    ld c, l                                       ; $5c44: $4d

jr_0d7_5c45:
    jp z, $a001                                   ; $5c45: $ca $01 $a0

    ld e, a                                       ; $5c48: $5f
    ld bc, $0af5                                  ; $5c49: $01 $f5 $0a
    ld d, b                                       ; $5c4c: $50
    xor a                                         ; $5c4d: $af
    add d                                         ; $5c4e: $82
    ld a, a                                       ; $5c4f: $7f
    dec bc                                        ; $5c50: $0b
    stop                                          ; $5c51: $10 $00
    ld bc, $ff09                                  ; $5c53: $01 $09 $ff
    ld b, b                                       ; $5c56: $40
    cp a                                          ; $5c57: $bf
    cp b                                          ; $5c58: $b8
    ld b, a                                       ; $5c59: $47
    nop                                           ; $5c5a: $00
    ld [$2800], sp                                ; $5c5b: $08 $00 $28
    nop                                           ; $5c5e: $00
    add b                                         ; $5c5f: $80
    ld bc, $0008                                  ; $5c60: $01 $08 $00
    ld [bc], a                                    ; $5c63: $02
    db $10                                        ; $5c64: $10
    ld d, [hl]                                    ; $5c65: $56

jr_0d7_5c66:
    xor b                                         ; $5c66: $a8
    ld c, $00                                     ; $5c67: $0e $00
    ldh a, [$a7]                                  ; $5c69: $f0 $a7
    ld hl, sp-$2d                                 ; $5c6b: $f8 $d3
    db $fc                                        ; $5c6d: $fc
    rst $30                                       ; $5c6e: $f7
    db $fc                                        ; $5c6f: $fc
    and c                                         ; $5c70: $a1
    nop                                           ; $5c71: $00
    cp $1a                                        ; $5c72: $fe $1a
    push af                                       ; $5c74: $f5
    dec bc                                        ; $5c75: $0b
    db $f4                                        ; $5c76: $f4
    and c                                         ; $5c77: $a1
    cp $71                                        ; $5c78: $fe $71
    ld e, c                                       ; $5c7a: $59
    cp $1e                                        ; $5c7b: $fe $1e

jr_0d7_5c7d:
    dec bc                                        ; $5c7d: $0b
    inc e                                         ; $5c7e: $1c
    inc h                                         ; $5c7f: $24
    inc bc                                        ; $5c80: $03
    ld h, $0b                                     ; $5c81: $26 $0b
    jr c, jr_0d7_5c45                             ; $5c83: $38 $c0

    ld e, b                                       ; $5c85: $58
    ld a, [bc]                                    ; $5c86: $0a
    ld b, b                                       ; $5c87: $40

Jump_0d7_5c88:
    cp h                                          ; $5c88: $bc
    ld h, b                                       ; $5c89: $60
    ld bc, $40b8                                  ; $5c8a: $01 $b8 $40
    ld e, h                                       ; $5c8d: $5c
    and b                                         ; $5c8e: $a0
    ld c, $f0                                     ; $5c8f: $0e $f0
    nop                                           ; $5c91: $00
    sbc a                                         ; $5c92: $9f
    ldh [rDIV], a                                 ; $5c93: $e0 $04
    ld hl, sp+$1d                                 ; $5c95: $f8 $1d
    ld [bc], a                                    ; $5c97: $02
    inc [hl]                                      ; $5c98: $34
    dec bc                                        ; $5c99: $0b
    jr z, @+$2c                                   ; $5c9a: $28 $2a

    dec d                                         ; $5c9c: $15
    and $19                                       ; $5c9d: $e6 $19
    dec a                                         ; $5c9f: $3d
    ld h, d                                       ; $5ca0: $62
    ld [bc], a                                    ; $5ca1: $02
    ld [hl], b                                    ; $5ca2: $70
    rrca                                          ; $5ca3: $0f
    ldh a, [$91]                                  ; $5ca4: $f0 $91
    ld [c], a                                     ; $5ca6: $e2
    ld de, $02fd                                  ; $5ca7: $11 $fd $02
    ldh [rNR24], a                                ; $5caa: $e0 $19
    dec b                                         ; $5cac: $05
    rst $38                                       ; $5cad: $ff
    ld [bc], a                                    ; $5cae: $02
    call z, $0100                                 ; $5caf: $cc $00 $01
    ld b, b                                       ; $5cb2: $40
    cp a                                          ; $5cb3: $bf
    xor d                                         ; $5cb4: $aa
    ld d, l                                       ; $5cb5: $55
    ret nc                                        ; $5cb6: $d0

    cpl                                           ; $5cb7: $2f
    nop                                           ; $5cb8: $00
    ld h, d                                       ; $5cb9: $62
    ld [bc], a                                    ; $5cba: $02
    ld h, b                                       ; $5cbb: $60
    xor e                                         ; $5cbc: $ab
    ld h, [hl]                                    ; $5cbd: $66
    ld [bc], a                                    ; $5cbe: $02
    ld [c], a                                     ; $5cbf: $e2
    add hl, de                                    ; $5cc0: $19
    xor d                                         ; $5cc1: $aa
    ld d, l                                       ; $5cc2: $55
    rst $30                                       ; $5cc3: $f7
    ld [$006e], sp                                ; $5cc4: $08 $6e $00
    ld de, $fefa                                  ; $5cc7: $11 $fa $fe
    cp [hl]                                       ; $5cca: $be
    cp $a8                                        ; $5ccb: $fe $a8
    cp $00                                        ; $5ccd: $fe $00
    nop                                           ; $5ccf: $00
    cp $2e                                        ; $5cd0: $fe $2e
    ret nc                                        ; $5cd2: $d0

    inc b                                         ; $5cd3: $04
    ld a, [$fe94]                                 ; $5cd4: $fa $94 $fe
    ld e, d                                       ; $5cd7: $5a
    ld a, [bc]                                    ; $5cd8: $0a
    cp $fe                                        ; $5cd9: $fe $fe
    cp $fa                                        ; $5cdb: $fe $fa
    ld [$d001], a                                 ; $5cdd: $ea $01 $d0
    ld c, $02                                     ; $5ce0: $0e $02
    ld [bc], a                                    ; $5ce2: $02
    nop                                           ; $5ce3: $00
    db $fd                                        ; $5ce4: $fd
    ld l, a                                       ; $5ce5: $6f
    sub b                                         ; $5ce6: $90
    cp c                                          ; $5ce7: $b9
    ld b, b                                       ; $5ce8: $40
    ld h, $78                                     ; $5ce9: $26 $78
    ld b, $03                                     ; $5ceb: $06 $03
    ld a, b                                       ; $5ced: $78
    dec bc                                        ; $5cee: $0b
    ld [hl], h                                    ; $5cef: $74
    ld d, a                                       ; $5cf0: $57
    jr z, jr_0d7_5d2f                             ; $5cf1: $28 $3c

    xor b                                         ; $5cf3: $a8
    ld bc, $8801                                  ; $5cf4: $01 $01 $88
    ld [bc], a                                    ; $5cf7: $02
    rst $38                                       ; $5cf8: $ff
    nop                                           ; $5cf9: $00
    di                                            ; $5cfa: $f3
    inc c                                         ; $5cfb: $0c
    rst $20                                       ; $5cfc: $e7
    jr @+$06                                      ; $5cfd: $18 $04

    ld [$30f7], sp                                ; $5cff: $08 $f7 $30
    ld [$227e], sp                                ; $5d02: $08 $7e $22
    sub b                                         ; $5d05: $90
    dec d                                         ; $5d06: $15
    ret z                                         ; $5d07: $c8

    ld bc, $0101                                  ; $5d08: $01 $01 $01
    nop                                           ; $5d0b: $00
    ld h, b                                       ; $5d0c: $60
    ld bc, $0422                                  ; $5d0d: $01 $22 $04
    inc h                                         ; $5d10: $24
    inc c                                         ; $5d11: $0c
    rra                                           ; $5d12: $1f
    nop                                           ; $5d13: $00
    ld a, $01                                     ; $5d14: $3e $01
    ld a, [hl]                                    ; $5d16: $7e
    nop                                           ; $5d17: $00
    ld bc, $01fe                                  ; $5d18: $01 $fe $01
    push hl                                       ; $5d1b: $e5
    ld a, [de]                                    ; $5d1c: $1a
    jp nc, $c93d                                  ; $5d1d: $d2 $3d $c9

    nop                                           ; $5d20: $00
    ld a, $df                                     ; $5d21: $3e $df
    inc a                                         ; $5d23: $3c
    adc l                                         ; $5d24: $8d
    ld a, [hl]                                    ; $5d25: $7e
    rst $18                                       ; $5d26: $df
    ld a, $8f                                     ; $5d27: $3e $8f
    nop                                           ; $5d29: $00
    ld a, [hl]                                    ; $5d2a: $7e
    inc a                                         ; $5d2b: $3c
    nop                                           ; $5d2c: $00
    ld l, d                                       ; $5d2d: $6a
    inc e                                         ; $5d2e: $1c

jr_0d7_5d2f:
    sbc $3c                                       ; $5d2f: $de $3c
    sbc l                                         ; $5d31: $9d
    nop                                           ; $5d32: $00
    ld a, [hl]                                    ; $5d33: $7e
    rst $08                                       ; $5d34: $cf
    ld a, $97                                     ; $5d35: $3e $97
    ld a, [hl]                                    ; $5d37: $7e
    xor [hl]                                      ; $5d38: $ae
    ld a, a                                       ; $5d39: $7f
    rla                                           ; $5d3a: $17
    ld [bc], a                                    ; $5d3b: $02
    rst $38                                       ; $5d3c: $ff
    xor e                                         ; $5d3d: $ab
    ld a, a                                       ; $5d3e: $7f
    ld d, a                                       ; $5d3f: $57
    rst $38                                       ; $5d40: $ff
    inc hl                                        ; $5d41: $23
    and d                                         ; $5d42: $a2
    ld [bc], a                                    ; $5d43: $02
    ld [bc], a                                    ; $5d44: $02
    ld bc, $05ff                                  ; $5d45: $01 $ff $05
    ei                                            ; $5d48: $fb
    add d                                         ; $5d49: $82
    ld a, l                                       ; $5d4a: $7d
    dec b                                         ; $5d4b: $05
    ld a, [$093b]                                 ; $5d4c: $fa $3b $09
    nop                                           ; $5d4f: $00
    ld b, b                                       ; $5d50: $40
    add b                                         ; $5d51: $80
    ret nz                                        ; $5d52: $c0

    add b                                         ; $5d53: $80
    and b                                         ; $5d54: $a0
    ret nz                                        ; $5d55: $c0

    ldh [$c0], a                                  ; $5d56: $e0 $c0
    nop                                           ; $5d58: $00
    sub b                                         ; $5d59: $90
    ldh [$50], a                                  ; $5d5a: $e0 $50
    ldh [rNR10], a                                ; $5d5c: $e0 $10
    ldh [$50], a                                  ; $5d5e: $e0 $50
    and b                                         ; $5d60: $a0
    dec b                                         ; $5d61: $05
    xor a                                         ; $5d62: $af
    ld d, b                                       ; $5d63: $50
    ld c, [hl]                                    ; $5d64: $4e
    cp a                                          ; $5d65: $bf
    cp a                                          ; $5d66: $bf
    inc l                                         ; $5d67: $2c
    nop                                           ; $5d68: $00
    dec bc                                        ; $5d69: $0b
    ld d, d                                       ; $5d6a: $52
    inc bc                                        ; $5d6b: $03
    call nz, $09c0                                ; $5d6c: $c4 $c0 $09
    call nz, $3809                                ; $5d6f: $c4 $09 $38
    rlca                                          ; $5d72: $07
    ld [hl], h                                    ; $5d73: $74
    sub $03                                       ; $5d74: $d6 $03
    ld [hl], h                                    ; $5d76: $74
    dec bc                                        ; $5d77: $0b
    add hl, bc                                    ; $5d78: $09
    ld a, d                                       ; $5d79: $7a
    dec b                                         ; $5d7a: $05
    ld a, l                                       ; $5d7b: $7d
    ld [bc], a                                    ; $5d7c: $02
    inc b                                         ; $5d7d: $04
    ld [$01fe], sp                                ; $5d7e: $08 $fe $01
    push hl                                       ; $5d81: $e5
    ld [de], a                                    ; $5d82: $12
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    ld de, $0b0e                                  ; $5d85: $11 $0e $0b
    inc d                                         ; $5d88: $14
    dec d                                         ; $5d89: $15
    ld a, [bc]                                    ; $5d8a: $0a
    ld a, [de]                                    ; $5d8b: $1a
    nop                                           ; $5d8c: $00
    dec b                                         ; $5d8d: $05
    push de                                       ; $5d8e: $d5
    db $eb                                        ; $5d8f: $eb
    cp $e3                                        ; $5d90: $fe $e3
    ld a, b                                       ; $5d92: $78
    rst $20                                       ; $5d93: $e7
    xor h                                         ; $5d94: $ac
    nop                                           ; $5d95: $00
    di                                            ; $5d96: $f3
    ld l, a                                       ; $5d97: $6f
    ldh a, [$2f]                                  ; $5d98: $f0 $2f
    ldh a, [rNR33]                                ; $5d9a: $f0 $1d
    ld [c], a                                     ; $5d9c: $e2
    ccf                                           ; $5d9d: $3f
    nop                                           ; $5d9e: $00
    ldh [$9d], a                                  ; $5d9f: $e0 $9d
    ld h, d                                       ; $5da1: $62
    ld a, [hl]                                    ; $5da2: $7e
    add c                                         ; $5da3: $81
    cp l                                          ; $5da4: $bd
    ld b, d                                       ; $5da5: $42
    rst $38                                       ; $5da6: $ff
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    ld b, b                                       ; $5da9: $40
    and b                                         ; $5daa: $a0
    ldh [rP1], a                                  ; $5dab: $e0 $00
    ret nz                                        ; $5dad: $c0

    jr nz, jr_0d7_5e10                            ; $5dae: $20 $60

    nop                                           ; $5db0: $00
    add b                                         ; $5db1: $80
    ret nz                                        ; $5db2: $c0

    and b                                         ; $5db3: $a0
    ret nz                                        ; $5db4: $c0

    and b                                         ; $5db5: $a0
    add b                                         ; $5db6: $80
    ld a, a                                       ; $5db7: $7f
    ret nz                                        ; $5db8: $c0

    nop                                           ; $5db9: $00
    ccf                                           ; $5dba: $3f
    and b                                         ; $5dbb: $a0
    ld e, a                                       ; $5dbc: $5f
    ld b, b                                       ; $5dbd: $40
    cp a                                          ; $5dbe: $bf
    and b                                         ; $5dbf: $a0
    ld e, a                                       ; $5dc0: $5f
    ld d, b                                       ; $5dc1: $50
    nop                                           ; $5dc2: $00
    xor a                                         ; $5dc3: $af
    ldh [$1f], a                                  ; $5dc4: $e0 $1f
    ret nc                                        ; $5dc6: $d0

    cpl                                           ; $5dc7: $2f
    xor b                                         ; $5dc8: $a8
    ld d, a                                       ; $5dc9: $57
    call nc, $2b22                                ; $5dca: $d4 $22 $2b
    nop                                           ; $5dcd: $00
    ret nz                                        ; $5dce: $c0

    inc b                                         ; $5dcf: $04
    ld [$1810], sp                                ; $5dd0: $08 $10 $18
    or h                                          ; $5dd3: $b4
    inc b                                         ; $5dd4: $04
    inc e                                         ; $5dd5: $1c
    nop                                           ; $5dd6: $00
    jr @+$60                                      ; $5dd7: $18 $5e

    ld hl, sp+$3a                                 ; $5dd9: $f8 $3a
    db $fc                                        ; $5ddb: $fc
    ld e, [hl]                                    ; $5ddc: $5e
    db $fc                                        ; $5ddd: $fc
    ld l, $00                                     ; $5dde: $2e $00
    db $fc                                        ; $5de0: $fc
    rra                                           ; $5de1: $1f
    db $fc                                        ; $5de2: $fc
    dec l                                         ; $5de3: $2d
    cp $17                                        ; $5de4: $fe $17
    db $fc                                        ; $5de6: $fc
    dec c                                         ; $5de7: $0d
    nop                                           ; $5de8: $00
    cp $15                                        ; $5de9: $fe $15
    cp $09                                        ; $5deb: $fe $09
    cp $2c                                        ; $5ded: $fe $2c
    ld [hl-], a                                   ; $5def: $32
    ld a, [hl]                                    ; $5df0: $7e
    ld bc, $5f41                                  ; $5df1: $01 $41 $5f
    ld h, c                                       ; $5df4: $61
    ld h, [hl]                                    ; $5df5: $66
    ld a, d                                       ; $5df6: $7a
    inc a                                         ; $5df7: $3c
    inc a                                         ; $5df8: $3c
    dec e                                         ; $5df9: $1d
    sbc c                                         ; $5dfa: $99
    nop                                           ; $5dfb: $00
    ld h, b                                       ; $5dfc: $60
    ld a, h                                       ; $5dfd: $7c
    cp h                                          ; $5dfe: $bc
    jp $81ff                                      ; $5dff: $c3 $ff $81


    cp l                                          ; $5e02: $bd
    jp $cd02                                      ; $5e03: $c3 $02 $cd


    di                                            ; $5e06: $f3
    ld h, [hl]                                    ; $5e07: $66
    ld a, [hl]                                    ; $5e08: $7e
    inc e                                         ; $5e09: $1c
    inc e                                         ; $5e0a: $1c
    ld h, e                                       ; $5e0b: $63
    adc c                                         ; $5e0c: $89
    ld [bc], a                                    ; $5e0d: $02
    nop                                           ; $5e0e: $00
    inc bc                                        ; $5e0f: $03

jr_0d7_5e10:
    dec b                                         ; $5e10: $05
    ld b, $1b                                     ; $5e11: $06 $1b
    inc e                                         ; $5e13: $1c
    cpl                                           ; $5e14: $2f
    jr nc, @+$61                                  ; $5e15: $30 $5f

    nop                                           ; $5e17: $00
    ld h, b                                       ; $5e18: $60
    rst $08                                       ; $5e19: $cf
    ldh a, [$d3]                                  ; $5e1a: $f0 $d3
    db $fc                                        ; $5e1c: $fc
    ld l, c                                       ; $5e1d: $69
    ld a, [hl]                                    ; $5e1e: $7e
    ld e, $04                                     ; $5e1f: $1e $04
    dec e                                         ; $5e21: $1d
    add hl, bc                                    ; $5e22: $09
    ld c, $07                                     ; $5e23: $0e $07
    rlca                                          ; $5e25: $07
    rst $10                                       ; $5e26: $d7
    inc l                                         ; $5e27: $2c
    jr nz, @+$3a                                  ; $5e28: $20 $38

    ld b, $30                                     ; $5e2a: $06 $30
    inc c                                         ; $5e2c: $0c
    inc a                                         ; $5e2d: $3c
    ld [bc], a                                    ; $5e2e: $02
    inc a                                         ; $5e2f: $3c
    or [hl]                                       ; $5e30: $b6
    inc b                                         ; $5e31: $04
    ld [bc], a                                    ; $5e32: $02
    ld [$003f], sp                                ; $5e33: $08 $3f $00
    ld bc, $0b35                                  ; $5e36: $01 $35 $0b
    ld [hl], $0e                                  ; $5e39: $36 $0e
    ld [$3038], sp                                ; $5e3b: $08 $38 $30
    ld b, b                                       ; $5e3e: $40
    jr nc, @-$07                                  ; $5e3f: $30 $f7

    inc l                                         ; $5e41: $2c
    inc bc                                        ; $5e42: $03
    inc bc                                        ; $5e43: $03
    ld b, $07                                     ; $5e44: $06 $07
    dec b                                         ; $5e46: $05
    ld b, $04                                     ; $5e47: $06 $04
    dec sp                                        ; $5e49: $3b
    inc a                                         ; $5e4a: $3c
    ld h, a                                       ; $5e4b: $67
    ld a, b                                       ; $5e4c: $78
    rst $08                                       ; $5e4d: $cf
    jr nc, @+$04                                  ; $5e4e: $30 $02

    sub a                                         ; $5e50: $97
    add sp, $00                                   ; $5e51: $e8 $00
    rst $00                                       ; $5e53: $c7
    ld hl, sp+$52                                 ; $5e54: $f8 $52
    ld a, l                                       ; $5e56: $7d
    ld l, c                                       ; $5e57: $69
    ld a, [hl]                                    ; $5e58: $7e
    dec a                                         ; $5e59: $3d
    ccf                                           ; $5e5a: $3f
    ld a, [bc]                                    ; $5e5b: $0a
    ld c, $0f                                     ; $5e5c: $0e $0f
    rlca                                          ; $5e5e: $07
    rlca                                          ; $5e5f: $07
    ld a, l                                       ; $5e60: $7d
    ld bc, $fe00                                  ; $5e61: $01 $00 $fe
    ld [bc], a                                    ; $5e64: $02
    ld h, b                                       ; $5e65: $60
    nop                                           ; $5e66: $00
    ldh [rNR10], a                                ; $5e67: $e0 $10
    ret nc                                        ; $5e69: $d0

    inc l                                         ; $5e6a: $2c
    add sp, $16                                   ; $5e6b: $e8 $16
    db $fd                                        ; $5e6d: $fd
    inc bc                                        ; $5e6e: $03
    add b                                         ; $5e6f: $80
    ld [bc], a                                    ; $5e70: $02
    ld [$07f9], sp                                ; $5e71: $08 $f9 $07
    ld a, [c]                                     ; $5e74: $f2
    ld c, $46                                     ; $5e75: $0e $46
    cp [hl]                                       ; $5e77: $be
    ld a, [bc]                                    ; $5e78: $0a
    nop                                           ; $5e79: $00
    cp $9c                                        ; $5e7a: $fe $9c
    db $fc                                        ; $5e7c: $fc
    ld hl, sp-$08                                 ; $5e7d: $f8 $f8
    ldh [$e0], a                                  ; $5e7f: $e0 $e0
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    rlca                                          ; $5e84: $07
    rlca                                          ; $5e85: $07
    inc c                                         ; $5e86: $0c
    rrca                                          ; $5e87: $0f
    jr c, jr_0d7_5ec9                             ; $5e88: $38 $3f

    ld [hl], c                                    ; $5e8a: $71
    nop                                           ; $5e8b: $00
    ld a, [hl]                                    ; $5e8c: $7e
    db $eb                                        ; $5e8d: $eb
    db $fc                                        ; $5e8e: $fc
    pop de                                        ; $5e8f: $d1
    cp $e9                                        ; $5e90: $fe $e9
    cp $f0                                        ; $5e92: $fe $f0
    nop                                           ; $5e94: $00
    rst $38                                       ; $5e95: $ff
    ld a, c                                       ; $5e96: $79
    ld a, [hl]                                    ; $5e97: $7e
    ld [hl], h                                    ; $5e98: $74

jr_0d7_5e99:
    ld a, a                                       ; $5e99: $7f
    add hl, sp                                    ; $5e9a: $39
    ld a, $1c                                     ; $5e9b: $3e $1c
    inc b                                         ; $5e9d: $04
    rra                                           ; $5e9e: $1f
    ld a, [de]                                    ; $5e9f: $1a
    rra                                           ; $5ea0: $1f
    dec e                                         ; $5ea1: $1d
    rra                                           ; $5ea2: $1f
    ld b, h                                       ; $5ea3: $44
    ld [$c0c0], sp                                ; $5ea4: $08 $c0 $c0
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    ldh a, [rLCDC]                                ; $5ea9: $f0 $40
    cp b                                          ; $5eab: $b8
    and h                                         ; $5eac: $a4
    ld e, h                                       ; $5ead: $5c
    jp nz, $003e                                  ; $5eae: $c2 $3e $00

    jp nz, Jump_000_073e                          ; $5eb1: $c2 $3e $07

    rst $38                                       ; $5eb4: $ff
    xor e                                         ; $5eb5: $ab
    ld e, a                                       ; $5eb6: $5f
    rst $00                                       ; $5eb7: $c7
    ccf                                           ; $5eb8: $3f
    nop                                           ; $5eb9: $00
    xor [hl]                                      ; $5eba: $ae
    ld e, [hl]                                    ; $5ebb: $5e
    ld d, [hl]                                    ; $5ebc: $56

jr_0d7_5ebd:
    cp [hl]                                       ; $5ebd: $be
    adc [hl]                                      ; $5ebe: $8e
    ld a, [hl]                                    ; $5ebf: $7e
    inc a                                         ; $5ec0: $3c
    db $fc                                        ; $5ec1: $fc
    nop                                           ; $5ec2: $00
    ld e, b                                       ; $5ec3: $58
    ld hl, sp-$10                                 ; $5ec4: $f8 $f0
    ldh a, [$c0]                                  ; $5ec6: $f0 $c0
    ret nz                                        ; $5ec8: $c0

jr_0d7_5ec9:
    inc d                                         ; $5ec9: $14
    inc d                                         ; $5eca: $14
    nop                                           ; $5ecb: $00
    ld a, [hl+]                                   ; $5ecc: $2a
    ld a, [hl+]                                   ; $5ecd: $2a
    dec d                                         ; $5ece: $15
    dec d                                         ; $5ecf: $15
    ld a, [bc]                                    ; $5ed0: $0a
    ld a, [bc]                                    ; $5ed1: $0a
    ld de, $0015                                  ; $5ed2: $11 $15 $00
    ld [hl+], a                                   ; $5ed5: $22
    ld a, [hl+]                                   ; $5ed6: $2a
    ld b, c                                       ; $5ed7: $41
    ld d, l                                       ; $5ed8: $55
    add b                                         ; $5ed9: $80
    xor d                                         ; $5eda: $aa
    ld d, b                                       ; $5edb: $50
    ld d, l                                       ; $5edc: $55
    ld b, $a8                                     ; $5edd: $06 $a8
    xor d                                         ; $5edf: $aa
    ld d, l                                       ; $5ee0: $55
    ld d, l                                       ; $5ee1: $55
    xor d                                         ; $5ee2: $aa
    inc b                                         ; $5ee3: $04
    nop                                           ; $5ee4: $00
    jr jr_0d7_5eff                                ; $5ee5: $18 $18

    inc b                                         ; $5ee7: $04
    nop                                           ; $5ee8: $00
    inc b                                         ; $5ee9: $04
    ld a, [hl+]                                   ; $5eea: $2a
    ld a, [hl+]                                   ; $5eeb: $2a
    ld d, h                                       ; $5eec: $54
    ld d, h                                       ; $5eed: $54
    adc b                                         ; $5eee: $88
    xor b                                         ; $5eef: $a8
    ld d, b                                       ; $5ef0: $50
    nop                                           ; $5ef1: $00
    ld d, b                                       ; $5ef2: $50
    and b                                         ; $5ef3: $a0
    and b                                         ; $5ef4: $a0
    ld b, b                                       ; $5ef5: $40
    ld b, b                                       ; $5ef6: $40
    jr nz, jr_0d7_5e99                            ; $5ef7: $20 $a0

    ld d, b                                       ; $5ef9: $50
    nop                                           ; $5efa: $00
    ld d, b                                       ; $5efb: $50
    add d                                         ; $5efc: $82
    xor d                                         ; $5efd: $aa
    ld b, h                                       ; $5efe: $44

jr_0d7_5eff:
    ld d, h                                       ; $5eff: $54
    xor b                                         ; $5f00: $a8
    xor b                                         ; $5f01: $a8
    ld d, l                                       ; $5f02: $55
    db $10                                        ; $5f03: $10
    ld d, l                                       ; $5f04: $55
    ld [bc], a                                    ; $5f05: $02
    ld [bc], a                                    ; $5f06: $02
    cp e                                          ; $5f07: $bb
    dec c                                         ; $5f08: $0d
    ld a, [hl+]                                   ; $5f09: $2a
    ld a, [hl+]                                   ; $5f0a: $2a
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    ld h, $0a                                     ; $5f0d: $26 $0a
    ld a, [bc]                                    ; $5f0f: $0a
    inc b                                         ; $5f10: $04
    jr jr_0d7_5ebd                                ; $5f11: $18 $aa

    xor d                                         ; $5f13: $aa
    db $10                                        ; $5f14: $10
    ld e, b                                       ; $5f15: $58
    db $db                                        ; $5f16: $db
    dec c                                         ; $5f17: $0d
    dec d                                         ; $5f18: $15
    ld c, e                                       ; $5f19: $4b
    dec d                                         ; $5f1a: $15
    inc b                                         ; $5f1b: $04
    ld e, b                                       ; $5f1c: $58
    inc d                                         ; $5f1d: $14
    inc d                                         ; $5f1e: $14
    sub d                                         ; $5f1f: $92

jr_0d7_5f20:
    ld bc, $0410                                  ; $5f20: $01 $10 $04
    jr jr_0d7_5f20                                ; $5f23: $18 $fb

    dec c                                         ; $5f25: $0d
    ld [bc], a                                    ; $5f26: $02
    ld [hl+], a                                   ; $5f27: $22
    ld [hl+], a                                   ; $5f28: $22
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    adc b                                         ; $5f2b: $88
    adc b                                         ; $5f2c: $88
    ld [$0818], sp                                ; $5f2d: $08 $18 $08
    ldh a, [$0d]                                  ; $5f30: $f0 $0d
    ld b, $56                                     ; $5f32: $06 $56
    jr @+$0a                                      ; $5f34: $18 $08

    jr c, @+$2e                                   ; $5f36: $38 $2c

    ld [$4444], sp                                ; $5f38: $08 $44 $44
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    jr nc, jr_0d7_5f50                            ; $5f3d: $30 $11

    ld de, $5808                                  ; $5f3f: $11 $08 $58
    scf                                           ; $5f42: $37
    db $2e                                        ; $5f43: $2e

    db $28, $00, $08, $00, $10, $00, $18, $00, $20, $00, $01, $00

jr_0d7_5f50:
    db $fc                                        ; $5f50: $fc
    inc bc                                        ; $5f51: $03
    db $fc                                        ; $5f52: $fc
    inc bc                                        ; $5f53: $03

    db $fc, $fd, $01, $02

    db $fc                                        ; $5f58: $fc
    inc bc                                        ; $5f59: $03
    db $fc                                        ; $5f5a: $fc
    inc bc                                        ; $5f5b: $03

    db $fc, $fc, $01, $04

    db $fc                                        ; $5f60: $fc
    inc bc                                        ; $5f61: $03
    db $fc                                        ; $5f62: $fc
    inc bc                                        ; $5f63: $03

    db $fc, $fb, $01, $06

    db $fc                                        ; $5f68: $fc
    inc bc                                        ; $5f69: $03
    db $fc                                        ; $5f6a: $fc
    inc bc                                        ; $5f6b: $03

    db $fc, $fa, $80, $00, $17, $00, $00, $30, $30, $38, $28, $3c, $24, $3e, $22, $00
    db $3f, $23, $3e, $26, $3c, $2c, $38, $38, $1e, $10, $10, $00, $01, $50, $20, $f8
    db $40, $f8, $60, $c8, $64, $00

    inc d                                         ; $5f92: $14
    nop                                           ; $5f93: $00

    db $1c, $00, $24, $00

    inc l                                         ; $5f98: $2c
    nop                                           ; $5f99: $00
    inc [hl]                                      ; $5f9a: $34
    nop                                           ; $5f9b: $00
    inc a                                         ; $5f9c: $3c
    nop                                           ; $5f9d: $00
    ld b, h                                       ; $5f9e: $44
    nop                                           ; $5f9f: $00
    ld c, h                                       ; $5fa0: $4c
    nop                                           ; $5fa1: $00
    ld d, h                                       ; $5fa2: $54
    nop                                           ; $5fa3: $00
    ld e, h                                       ; $5fa4: $5c
    nop                                           ; $5fa5: $00
    ld bc, $fd00                                  ; $5fa6: $01 $00 $fd
    inc bc                                        ; $5fa9: $03
    ei                                            ; $5faa: $fb
    ld bc, $fdfb                                  ; $5fab: $01 $fb $fd

    db $01, $02

    db $fd                                        ; $5fb0: $fd
    inc bc                                        ; $5fb1: $03
    ei                                            ; $5fb2: $fb
    db $01                                        ; $5fb3: $01

    db $fb, $fd, $01, $04

    db $fd                                        ; $5fb8: $fd
    inc bc                                        ; $5fb9: $03
    ei                                            ; $5fba: $fb
    db $01                                        ; $5fbb: $01

    db $fb, $fd

    ld bc, $fd06                                  ; $5fbe: $01 $06 $fd
    inc bc                                        ; $5fc1: $03
    ei                                            ; $5fc2: $fb
    ld bc, $fdfb                                  ; $5fc3: $01 $fb $fd
    ld bc, $fd08                                  ; $5fc6: $01 $08 $fd
    inc bc                                        ; $5fc9: $03
    ei                                            ; $5fca: $fb
    ld bc, $fdfb                                  ; $5fcb: $01 $fb $fd
    ld bc, $fd0a                                  ; $5fce: $01 $0a $fd
    inc bc                                        ; $5fd1: $03
    ei                                            ; $5fd2: $fb
    ld bc, $fdfb                                  ; $5fd3: $01 $fb $fd
    ld bc, $fd0c                                  ; $5fd6: $01 $0c $fd
    inc bc                                        ; $5fd9: $03
    ei                                            ; $5fda: $fb
    ld bc, $fdfb                                  ; $5fdb: $01 $fb $fd
    ld bc, $fd0e                                  ; $5fde: $01 $0e $fd
    inc bc                                        ; $5fe1: $03
    ei                                            ; $5fe2: $fb
    ld bc, $fdfb                                  ; $5fe3: $01 $fb $fd
    ld bc, $fd10                                  ; $5fe6: $01 $10 $fd
    inc bc                                        ; $5fe9: $03
    ei                                            ; $5fea: $fb
    ld bc, $fdfb                                  ; $5feb: $01 $fb $fd
    ld bc, $fd12                                  ; $5fee: $01 $12 $fd
    inc bc                                        ; $5ff1: $03
    ei                                            ; $5ff2: $fb
    ld bc, $fdfb                                  ; $5ff3: $01 $fb $fd

    db $40, $01, $3e, $00, $00, $7f, $7f, $7f, $41, $7f, $5d, $7f, $55, $a4, $02, $00
    db $5d, $0a, $00, $7f, $00, $01, $60, $3c, $3c, $00, $3c, $24, $3c, $34, $1c, $14
    db $1c, $14, $35, $7f, $77, $20, $88, $40, $10, $7d, $44, $00, $5f, $02, $00, $86
    db $20, $b0, $1f, $11, $0f, $0d, $26, $10, $60, $70, $77, $22, $77, $77, $7a, $18
    db $7d, $07, $05, $02, $00, $07, $db, $60, $90, $5a, $08, $7d, $40, $98, $20, $30
    db $5d, $c0, $98, $a0, $18, $fc, $5c, $10, $60, $b8, $fa, $08, $40, $c8, $a0, $10
    db $c0, $98, $10, $00, $02, $00, $04, $00

    nop                                           ; $605e: $00
    rrca                                          ; $605f: $0f
    nop                                           ; $6060: $00
    rrca                                          ; $6061: $0f

    db $fc, $fc, $fc, $0c, $0c, $fc, $0c, $0c, $80, $00, $34, $00, $00, $00, $3e, $3f
    db $41, $61, $9f, $5f, $bf, $22, $50, $b0, $02, $08, $70, $70, $00, $01, $68, $7c
    db $00, $fc, $82, $86, $f9, $fa, $fd, $0a, $0d, $92, $02, $08, $0e, $0e, $20, $68
    db $70, $70, $3a, $18, $5f, $01, $bf, $61, $9f, $3f, $41, $00, $3e, $40, $68, $20
    db $0e, $0e, $3a, $18, $fa, $fd, $86, $f9, $fc, $10, $82, $00, $7c, $60, $68

    sub d                                         ; $60b1: $92
    nop                                           ; $60b2: $00
    jr jr_0d7_60b5                                ; $60b3: $18 $00

jr_0d7_60b5:
    ld [hl+], a                                   ; $60b5: $22
    nop                                           ; $60b6: $00
    inc l                                         ; $60b7: $2c
    nop                                           ; $60b8: $00
    ld [hl], $00                                  ; $60b9: $36 $00
    ld b, b                                       ; $60bb: $40
    nop                                           ; $60bc: $00
    ld c, d                                       ; $60bd: $4a
    nop                                           ; $60be: $00
    ld d, h                                       ; $60bf: $54
    nop                                           ; $60c0: $00
    ld e, [hl]                                    ; $60c1: $5e
    nop                                           ; $60c2: $00
    ld l, b                                       ; $60c3: $68
    nop                                           ; $60c4: $00
    ld [hl], d                                    ; $60c5: $72
    nop                                           ; $60c6: $00
    ld a, h                                       ; $60c7: $7c
    nop                                           ; $60c8: $00
    adc b                                         ; $60c9: $88
    nop                                           ; $60ca: $00
    ld [bc], a                                    ; $60cb: $02
    nop                                           ; $60cc: $00
    ei                                            ; $60cd: $fb
    inc b                                         ; $60ce: $04
    di                                            ; $60cf: $f3
    nop                                           ; $60d0: $00
    push af                                       ; $60d1: $f5
    ei                                            ; $60d2: $fb
    push af                                       ; $60d3: $f5
    nop                                           ; $60d4: $00
    ld [bc], a                                    ; $60d5: $02
    inc b                                         ; $60d6: $04
    ei                                            ; $60d7: $fb
    inc b                                         ; $60d8: $04
    di                                            ; $60d9: $f3
    nop                                           ; $60da: $00
    di                                            ; $60db: $f3
    ei                                            ; $60dc: $fb
    di                                            ; $60dd: $f3
    nop                                           ; $60de: $00
    ld [bc], a                                    ; $60df: $02
    ld [$04fb], sp                                ; $60e0: $08 $fb $04
    di                                            ; $60e3: $f3
    nop                                           ; $60e4: $00
    di                                            ; $60e5: $f3
    ei                                            ; $60e6: $fb
    di                                            ; $60e7: $f3
    nop                                           ; $60e8: $00
    ld [bc], a                                    ; $60e9: $02
    inc c                                         ; $60ea: $0c
    ei                                            ; $60eb: $fb
    inc b                                         ; $60ec: $04
    di                                            ; $60ed: $f3
    nop                                           ; $60ee: $00
    di                                            ; $60ef: $f3
    ei                                            ; $60f0: $fb
    di                                            ; $60f1: $f3
    nop                                           ; $60f2: $00
    ld [bc], a                                    ; $60f3: $02
    db $10                                        ; $60f4: $10
    ei                                            ; $60f5: $fb
    inc b                                         ; $60f6: $04
    di                                            ; $60f7: $f3
    nop                                           ; $60f8: $00
    di                                            ; $60f9: $f3
    ld a, [$fff3]                                 ; $60fa: $fa $f3 $ff
    ld [bc], a                                    ; $60fd: $02
    inc d                                         ; $60fe: $14
    ei                                            ; $60ff: $fb
    inc b                                         ; $6100: $04
    di                                            ; $6101: $f3
    nop                                           ; $6102: $00
    di                                            ; $6103: $f3
    ld a, [$fff3]                                 ; $6104: $fa $f3 $ff
    ld [bc], a                                    ; $6107: $02
    jr @-$03                                      ; $6108: $18 $fb

    inc b                                         ; $610a: $04
    di                                            ; $610b: $f3
    nop                                           ; $610c: $00
    db $f4                                        ; $610d: $f4
    ld sp, hl                                     ; $610e: $f9
    db $f4                                        ; $610f: $f4

Jump_0d7_6110:
    rst $38                                       ; $6110: $ff
    ld [bc], a                                    ; $6111: $02
    inc e                                         ; $6112: $1c
    ei                                            ; $6113: $fb
    inc b                                         ; $6114: $04
    di                                            ; $6115: $f3
    nop                                           ; $6116: $00
    db $f4                                        ; $6117: $f4
    ld a, [$fff4]                                 ; $6118: $fa $f4 $ff
    ld [bc], a                                    ; $611b: $02
    jr nz, @-$03                                  ; $611c: $20 $fb

    inc b                                         ; $611e: $04
    di                                            ; $611f: $f3
    nop                                           ; $6120: $00
    di                                            ; $6121: $f3
    ld a, [$fef3]                                 ; $6122: $fa $f3 $fe
    ld [bc], a                                    ; $6125: $02
    inc h                                         ; $6126: $24
    ei                                            ; $6127: $fb
    inc b                                         ; $6128: $04
    di                                            ; $6129: $f3
    nop                                           ; $612a: $00
    di                                            ; $612b: $f3
    ld hl, sp-$0d                                 ; $612c: $f8 $f3
    nop                                           ; $612e: $00
    inc bc                                        ; $612f: $03
    jr z, @-$03                                   ; $6130: $28 $fb

    inc b                                         ; $6132: $04
    di                                            ; $6133: $f3
    nop                                           ; $6134: $00
    ld a, [c]                                     ; $6135: $f2
    rst $30                                       ; $6136: $f7
    ld a, [c]                                     ; $6137: $f2
    rst $38                                       ; $6138: $ff
    ld a, [c]                                     ; $6139: $f2
    ld bc, $2e02                                  ; $613a: $01 $02 $2e
    ei                                            ; $613d: $fb
    inc b                                         ; $613e: $04
    di                                            ; $613f: $f3
    nop                                           ; $6140: $00
    ld a, [c]                                     ; $6141: $f2
    ld hl, sp-$0e                                 ; $6142: $f8 $f2
    nop                                           ; $6144: $00
    jr nz, @+$05                                  ; $6145: $20 $03

    ld a, [hl]                                    ; $6147: $7e
    ld bc, $0400                                  ; $6148: $01 $00 $04
    inc b                                         ; $614b: $04
    inc c                                         ; $614c: $0c
    inc c                                         ; $614d: $0c
    ld l, l                                       ; $614e: $6d
    dec c                                         ; $614f: $0d
    ei                                            ; $6150: $fb
    ld l, e                                       ; $6151: $6b
    nop                                           ; $6152: $00
    cp [hl]                                       ; $6153: $be
    ld l, a                                       ; $6154: $6f
    ld l, a                                       ; $6155: $6f
    rra                                           ; $6156: $1f
    rst $38                                       ; $6157: $ff
    ld l, a                                       ; $6158: $6f
    cp e                                          ; $6159: $bb
    ld l, e                                       ; $615a: $6b
    ld bc, $0ded                                  ; $615b: $01 $ed $0d
    xor h                                         ; $615e: $ac
    inc c                                         ; $615f: $0c
    ld d, h                                       ; $6160: $54
    inc b                                         ; $6161: $04
    nop                                           ; $6162: $00
    ld bc, $0160                                  ; $6163: $01 $60 $01
    ld e, $00                                     ; $6166: $1e $00
    ld bc, $1f1e                                  ; $6168: $01 $1e $1f
    ld e, $1e                                     ; $616b: $1e $1e
    rla                                           ; $616d: $17
    ld l, b                                       ; $616e: $68
    adc b                                         ; $616f: $88
    daa                                           ; $6170: $27
    nop                                           ; $6171: $00
    inc b                                         ; $6172: $04
    inc b                                         ; $6173: $04
    ld c, $01                                     ; $6174: $0e $01
    nop                                           ; $6176: $00
    dec c                                         ; $6177: $0d
    dec c                                         ; $6178: $0d
    ld l, l                                       ; $6179: $6d
    nop                                           ; $617a: $00
    dec c                                         ; $617b: $0d
    rst $38                                       ; $617c: $ff
    ld l, [hl]                                    ; $617d: $6e
    or [hl]                                       ; $617e: $b6
    ld l, a                                       ; $617f: $6f
    ld h, a                                       ; $6180: $67
    rra                                           ; $6181: $1f
    rst $38                                       ; $6182: $ff
    nop                                           ; $6183: $00
    ld l, [hl]                                    ; $6184: $6e
    cp l                                          ; $6185: $bd
    ld l, l                                       ; $6186: $6d
    db $ed                                        ; $6187: $ed
    dec c                                         ; $6188: $0d
    xor [hl]                                      ; $6189: $ae
    ld c, $5e                                     ; $618a: $0e $5e
    xor a                                         ; $618c: $af
    rla                                           ; $618d: $17
    nop                                           ; $618e: $00
    inc b                                         ; $618f: $04
    ld c, b                                       ; $6190: $48
    db $10                                        ; $6191: $10
    db $10                                        ; $6192: $10
    ld bc, $4410                                  ; $6193: $01 $10 $44
    ld c, b                                       ; $6196: $48
    ld [de], a                                    ; $6197: $12
    jr jr_0d7_61ae                                ; $6198: $18 $14

    ld [$0004], sp                                ; $619a: $08 $04 $00
    nop                                           ; $619d: $00
    ld [$1c08], sp                                ; $619e: $08 $08 $1c
    ld bc, $1d00                                  ; $61a1: $01 $00 $1d
    dec e                                         ; $61a4: $1d
    add d                                         ; $61a5: $82
    ld b, b                                       ; $61a6: $40
    ld c, b                                       ; $61a7: $48
    ld a, l                                       ; $61a8: $7d
    dec e                                         ; $61a9: $1d
    ld e, h                                       ; $61aa: $5c
    inc e                                         ; $61ab: $1c
    inc a                                         ; $61ac: $3c
    rla                                           ; $61ad: $17

jr_0d7_61ae:
    nop                                           ; $61ae: $00
    ld [$0848], sp                                ; $61af: $08 $48 $08
    ld [hl+], a                                   ; $61b2: $22
    jr jr_0d7_61cd                                ; $61b3: $18 $18

    jr @+$42                                      ; $61b5: $18 $40

    ld [$0018], sp                                ; $61b7: $08 $18 $00
    ld b, $02                                     ; $61ba: $06 $02
    jr jr_0d7_61d7                                ; $61bc: $18 $19

    ld e, $1f                                     ; $61be: $1e $1f
    ld b, $06                                     ; $61c0: $06 $06
    ld d, d                                       ; $61c2: $52
    db $10                                        ; $61c3: $10
    ld [$01fc], sp                                ; $61c4: $08 $fc $01

jr_0d7_61c7:
    nop                                           ; $61c7: $00
    add b                                         ; $61c8: $80
    ld hl, sp-$80                                 ; $61c9: $f8 $80
    ld c, b                                       ; $61cb: $48
    ld b, b                                       ; $61cc: $40

jr_0d7_61cd:
    ld e, b                                       ; $61cd: $58
    add b                                         ; $61ce: $80
    jr z, @-$14                                   ; $61cf: $28 $ea

    jr jr_0d7_61d4                                ; $61d1: $18 $01

    nop                                           ; $61d3: $00

jr_0d7_61d4:
    nop                                           ; $61d4: $00
    ld l, e                                       ; $61d5: $6b
    ld l, c                                       ; $61d6: $69

jr_0d7_61d7:
    ld a, $3b                                     ; $61d7: $3e $3b
    inc e                                         ; $61d9: $1c
    rla                                           ; $61da: $17
    ld a, a                                       ; $61db: $7f
    rrca                                          ; $61dc: $0f
    nop                                           ; $61dd: $00
    db $e3                                        ; $61de: $e3
    ld a, a                                       ; $61df: $7f
    or [hl]                                       ; $61e0: $b6
    ld l, b                                       ; $61e1: $68
    ld a, [hl]                                    ; $61e2: $7e
    inc c                                         ; $61e3: $0c
    ld d, a                                       ; $61e4: $57
    inc c                                         ; $61e5: $0c
    db $10                                        ; $61e6: $10
    inc l                                         ; $61e7: $2c
    nop                                           ; $61e8: $00
    ld [bc], a                                    ; $61e9: $02
    dec b                                         ; $61ea: $05
    ld de, $0006                                  ; $61eb: $11 $06 $00
    rrca                                          ; $61ee: $0f
    ld b, $01                                     ; $61ef: $06 $01
    add hl, de                                    ; $61f1: $19
    ld c, $12                                     ; $61f2: $0e $12
    inc e                                         ; $61f4: $1c
    inc b                                         ; $61f5: $04
    jr jr_0d7_6200                                ; $61f6: $18 $08

    push bc                                       ; $61f8: $c5
    nop                                           ; $61f9: $00
    sbc h                                         ; $61fa: $9c
    adc d                                         ; $61fb: $8a
    ld [$1818], sp                                ; $61fc: $08 $18 $18
    sbc b                                         ; $61ff: $98

jr_0d7_6200:
    ld [$403d], sp                                ; $6200: $08 $3d $40
    ld [c], a                                     ; $6203: $e2
    nop                                           ; $6204: $00
    reti                                          ; $6205: $d9


    ret c                                         ; $6206: $d8

    nop                                           ; $6207: $00
    rst $28                                       ; $6208: $ef
    db $ed                                        ; $6209: $ed
    ld [hl], a                                    ; $620a: $77
    ld a, a                                       ; $620b: $7f
    ccf                                           ; $620c: $3f
    ccf                                           ; $620d: $3f
    ld a, a                                       ; $620e: $7f
    rrca                                          ; $620f: $0f
    nop                                           ; $6210: $00
    db $eb                                        ; $6211: $eb
    ld a, a                                       ; $6212: $7f
    or a                                          ; $6213: $b7
    ld l, e                                       ; $6214: $6b
    ld a, a                                       ; $6215: $7f
    dec c                                         ; $6216: $0d
    ld d, a                                       ; $6217: $57
    inc c                                         ; $6218: $0c
    jr nc, jr_0d7_6268                            ; $6219: $30 $4d

    nop                                           ; $621b: $00

jr_0d7_621c:
    ld b, l                                       ; $621c: $45
    add hl, de                                    ; $621d: $19
    ld b, b                                       ; $621e: $40
    ld c, b                                       ; $621f: $48
    jr jr_0d7_623a                                ; $6220: $18 $18

    inc c                                         ; $6222: $0c
    inc e                                         ; $6223: $1c
    ld c, $16                                     ; $6224: $0e $16
    ld d, $18                                     ; $6226: $16 $18
    jr jr_0d7_621c                                ; $6228: $18 $f2

    ld [$18dc], sp                                ; $622a: $08 $dc $18
    ld b, d                                       ; $622d: $42
    add hl, de                                    ; $622e: $19
    add $08                                       ; $622f: $c6 $08
    add $f3                                       ; $6231: $c6 $f3
    ld a, [c]                                     ; $6233: $f2
    ld a, e                                       ; $6234: $7b
    ld a, $00                                     ; $6235: $3e $00
    dec sp                                        ; $6237: $3b
    rlca                                          ; $6238: $07
    ld [hl], l                                    ; $6239: $75

jr_0d7_623a:
    nop                                           ; $623a: $00
    ccf                                           ; $623b: $3f
    ld e, e                                       ; $623c: $5b
    dec [hl]                                      ; $623d: $35
    ccf                                           ; $623e: $3f
    ld b, $2b                                     ; $623f: $06 $2b
    ld b, $26                                     ; $6241: $06 $26
    ret nz                                        ; $6243: $c0

    ld a, [hl]                                    ; $6244: $7e
    jr nz, jr_0d7_61c7                            ; $6245: $20 $80

    ld [$061f], sp                                ; $6247: $08 $1f $06
    add hl, sp                                    ; $624a: $39
    ld e, $26                                     ; $624b: $1e $26
    jr c, jr_0d7_624f                             ; $624d: $38 $00

jr_0d7_624f:
    jr z, @+$32                                   ; $624f: $28 $30

    inc a                                         ; $6251: $3c
    inc a                                         ; $6252: $3c
    ld l, $3e                                     ; $6253: $2e $3e
    jr nz, jr_0d7_6277                            ; $6255: $20 $20

    ld bc, $3030                                  ; $6257: $01 $30 $30
    jr c, jr_0d7_6294                             ; $625a: $38 $38

    inc a                                         ; $625c: $3c
    inc a                                         ; $625d: $3c
    inc a                                         ; $625e: $3c
    ld b, b                                       ; $625f: $40
    ld b, b                                       ; $6260: $40
    and d                                         ; $6261: $a2
    ld a, [hl]                                    ; $6262: $7e
    jr c, @+$79                                   ; $6263: $38 $77

    ld a, [hl]                                    ; $6265: $7e
    jr nz, jr_0d7_62be                            ; $6266: $20 $56

jr_0d7_6268:
    inc c                                         ; $6268: $0c
    dec l                                         ; $6269: $2d
    ld b, b                                       ; $626a: $40
    ld d, b                                       ; $626b: $50
    add hl, de                                    ; $626c: $19
    ld hl, $061e                                  ; $626d: $21 $1e $06
    ld a, [hl]                                    ; $6270: $7e
    or b                                          ; $6271: $b0
    ld b, $00                                     ; $6272: $06 $00
    dec c                                         ; $6274: $0d
    ld b, $02                                     ; $6275: $06 $02

jr_0d7_6277:
    jr jr_0d7_6279                                ; $6277: $18 $00

jr_0d7_6279:
    ld l, l                                       ; $6279: $6d
    ld l, a                                       ; $627a: $6f
    rra                                           ; $627b: $1f
    rra                                           ; $627c: $1f
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    dec c                                         ; $627f: $0d
    ld b, $00                                     ; $6280: $06 $00
    ld [de], a                                    ; $6282: $12
    dec c                                         ; $6283: $0d
    ld a, c                                       ; $6284: $79
    rra                                           ; $6285: $1f
    xor [hl]                                      ; $6286: $ae
    add hl, de                                    ; $6287: $19
    ld e, c                                       ; $6288: $59
    nop                                           ; $6289: $00
    ld b, b                                       ; $628a: $40
    jr nz, @+$07                                  ; $628b: $20 $05

    ld h, d                                       ; $628d: $62
    ld b, $06                                     ; $628e: $06 $06
    ld [$0f08], sp                                ; $6290: $08 $08 $0f
    rrca                                          ; $6293: $0f

jr_0d7_6294:
    add c                                         ; $6294: $81
    or d                                          ; $6295: $b2

jr_0d7_6296:
    ld bc, $0e00                                  ; $6296: $01 $00 $0e
    ld [$080d], sp                                ; $6299: $08 $0d $08
    ld a, [bc]                                    ; $629c: $0a
    ldh [rNR41], a                                ; $629d: $e0 $20
    ld [$0001], sp                                ; $629f: $08 $01 $00
    inc bc                                        ; $62a2: $03
    ld bc, $0802                                  ; $62a3: $01 $02 $08
    ld a, e                                       ; $62a6: $7b
    ld a, c                                       ; $62a7: $79
    rrca                                          ; $62a8: $0f
    nop                                           ; $62a9: $00
    dec c                                         ; $62aa: $0d
    ld [hl], e                                    ; $62ab: $73
    ld [hl], e                                    ; $62ac: $73
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    ld a, [hl]                                    ; $62af: $7e
    ld a, a                                       ; $62b0: $7f
    inc b                                         ; $62b1: $04
    ld [bc], a                                    ; $62b2: $02
    inc bc                                        ; $62b3: $03
    ld e, $07                                     ; $62b4: $1e $07
    dec hl                                        ; $62b6: $2b
    ld b, $36                                     ; $62b7: $06 $36
    ld [hl+], a                                   ; $62b9: $22
    ld hl, $1080                                  ; $62ba: $21 $80 $10
    nop                                           ; $62bd: $00

jr_0d7_62be:
    ld b, b                                       ; $62be: $40
    add b                                         ; $62bf: $80
    ld [bc], a                                    ; $62c0: $02
    ld [$9e5e], sp                                ; $62c1: $08 $5e $9e

jr_0d7_62c4:
    ld [hl], b                                    ; $62c4: $70
    or b                                          ; $62c5: $b0
    jr nz, jr_0d7_6296                            ; $62c6: $20 $ce

    adc $20                                       ; $62c8: $ce $20
    nop                                           ; $62ca: $00
    cp $a0                                        ; $62cb: $fe $a0
    ld b, b                                       ; $62cd: $40
    ld a, b                                       ; $62ce: $78
    ldh [rNR23], a                                ; $62cf: $e0 $18
    or h                                          ; $62d1: $b4
    ld h, b                                       ; $62d2: $60
    ld l, h                                       ; $62d3: $6c
    ld c, b                                       ; $62d4: $48
    nop                                           ; $62d5: $00
    ld h, [hl]                                    ; $62d6: $66
    ld c, d                                       ; $62d7: $4a
    add hl, sp                                    ; $62d8: $39
    jr c, jr_0d7_62ea                             ; $62d9: $38 $0f

    ld bc, $030e                                  ; $62db: $01 $0e $03
    ld [bc], a                                    ; $62de: $02
    inc bc                                        ; $62df: $03
    ld bc, $7f7f                                  ; $62e0: $01 $7f $7f
    ld b, h                                       ; $62e3: $44
    nop                                           ; $62e4: $00
    ld [bc], a                                    ; $62e5: $02
    ld a, l                                       ; $62e6: $7d
    rrca                                          ; $62e7: $0f
    inc bc                                        ; $62e8: $03
    dec d                                         ; $62e9: $15

jr_0d7_62ea:
    inc bc                                        ; $62ea: $03
    dec de                                        ; $62eb: $1b
    ld [hl+], a                                   ; $62ec: $22
    db $10                                        ; $62ed: $10
    jr nz, jr_0d7_62f0                            ; $62ee: $20 $00

jr_0d7_62f0:
    nop                                           ; $62f0: $00
    ld d, b                                       ; $62f1: $50
    jr nz, jr_0d7_62c4                            ; $62f2: $20 $d0

    ld h, b                                       ; $62f4: $60
    ret nc                                        ; $62f5: $d0

    ld h, b                                       ; $62f6: $60

Jump_0d7_62f7:
    and a                                         ; $62f7: $a7
    nop                                           ; $62f8: $00
    rst $00                                       ; $62f9: $c7
    cp h                                          ; $62fa: $bc
    call c, $d0b0                                 ; $62fb: $dc $b0 $d0
    ldh a, [$e0]                                  ; $62fe: $f0 $e0
    rst $38                                       ; $6300: $ff
    nop                                           ; $6301: $00
    rst $38                                       ; $6302: $ff
    rra                                           ; $6303: $1f
    rst $38                                       ; $6304: $ff
    ld e, a                                       ; $6305: $5f
    xor a                                         ; $6306: $af
    inc a                                         ; $6307: $3c
    ldh a, [$da]                                  ; $6308: $f0 $da
    jr nc, @+$32                                  ; $630a: $30 $30

    ld [hl], $62                                  ; $630c: $36 $62
    ld hl, $5aac                                  ; $630e: $21 $ac $5a
    ld [bc], a                                    ; $6311: $02
    ld [bc], a                                    ; $6312: $02
    inc bc                                        ; $6313: $03
    inc bc                                        ; $6314: $03
    ld a, d                                       ; $6315: $7a
    ld [bc], a                                    ; $6316: $02
    dec a                                         ; $6317: $3d
    add hl, hl                                    ; $6318: $29
    sbc $31                                       ; $6319: $de $31
    and [hl]                                      ; $631b: $a6
    ld [$08a2], sp                                ; $631c: $08 $a2 $08
    ld [hl], a                                    ; $631f: $77

jr_0d7_6320:
    and d                                         ; $6320: $a2
    ld b, b                                       ; $6321: $40
    ld d, $80                                     ; $6322: $16 $80
    add d                                         ; $6324: $82
    db $10                                        ; $6325: $10
    ld b, b                                       ; $6326: $40
    nop                                           ; $6327: $00
    and b                                         ; $6328: $a0
    ld b, b                                       ; $6329: $40
    and b                                         ; $632a: $a0
    ret nz                                        ; $632b: $c0

    and b                                         ; $632c: $a0
    ld d, h                                       ; $632d: $54
    ret nz                                        ; $632e: $c0

    and d                                         ; $632f: $a2
    jr jr_0d7_6320                                ; $6330: $18 $ee

    and d                                         ; $6332: $a2
    ld b, b                                       ; $6333: $40
    ld l, b                                       ; $6334: $68
    db $e4                                        ; $6335: $e4
    ld de, $0068                                  ; $6336: $11 $68 $00
    ld c, $00                                     ; $6339: $0e $00
    ld d, $00                                     ; $633b: $16 $00
    jr nz, jr_0d7_633f                            ; $633d: $20 $00

jr_0d7_633f:
    inc l                                         ; $633f: $2c
    nop                                           ; $6340: $00
    inc a                                         ; $6341: $3c
    nop                                           ; $6342: $00
    ld c, h                                       ; $6343: $4c
    nop                                           ; $6344: $00
    ld e, h                                       ; $6345: $5c
    nop                                           ; $6346: $00
    ld bc, $fc00                                  ; $6347: $01 $00 $fc
    inc b                                         ; $634a: $04
    ld a, [$fe01]                                 ; $634b: $fa $01 $fe
    ei                                            ; $634e: $fb
    ld [bc], a                                    ; $634f: $02
    ld [bc], a                                    ; $6350: $02
    db $fc                                        ; $6351: $fc
    inc b                                         ; $6352: $04
    ld a, [$f501]                                 ; $6353: $fa $01 $f5
    push af                                       ; $6356: $f5
    push af                                       ; $6357: $f5
    ei                                            ; $6358: $fb
    inc bc                                        ; $6359: $03
    ld b, $fc                                     ; $635a: $06 $fc
    inc b                                         ; $635c: $04
    ld a, [$f001]                                 ; $635d: $fa $01 $f0
    pop af                                        ; $6360: $f1
    rst $28                                       ; $6361: $ef
    ld sp, hl                                     ; $6362: $f9
    ld a, [c]                                     ; $6363: $f2
    db $fd                                        ; $6364: $fd
    dec b                                         ; $6365: $05
    inc c                                         ; $6366: $0c
    db $fc                                        ; $6367: $fc
    inc b                                         ; $6368: $04
    ld a, [$eb01]                                 ; $6369: $fa $01 $eb
    xor $e9                                       ; $636c: $ee $e9
    or $ea                                        ; $636e: $f6 $ea
    cp $ef                                        ; $6370: $fe $ef
    nop                                           ; $6372: $00
    ld sp, hl                                     ; $6373: $f9
    ei                                            ; $6374: $fb
    dec b                                         ; $6375: $05
    ld d, $fc                                     ; $6376: $16 $fc
    inc b                                         ; $6378: $04
    ld a, [$e401]                                 ; $6379: $fa $01 $e4
    db $ec                                        ; $637c: $ec
    db $e3                                        ; $637d: $e3
    db $f4                                        ; $637e: $f4
    db $e4                                        ; $637f: $e4
    db $fc                                        ; $6380: $fc
    add sp, $01                                   ; $6381: $e8 $01
    di                                            ; $6383: $f3

jr_0d7_6384:
    ei                                            ; $6384: $fb
    dec b                                         ; $6385: $05
    jr nz, jr_0d7_6384                            ; $6386: $20 $fc

    inc b                                         ; $6388: $04
    ld a, [$e701]                                 ; $6389: $fa $01 $e7
    xor $e6                                       ; $638c: $ee $e6
    or $e7                                        ; $638e: $f6 $e7
    db $fd                                        ; $6390: $fd
    or $fa                                        ; $6391: $f6 $fa
    or $fb                                        ; $6393: $f6 $fb
    inc bc                                        ; $6395: $03
    ld a, [hl+]                                   ; $6396: $2a
    db $fc                                        ; $6397: $fc
    inc b                                         ; $6398: $04
    ld a, [$e701]                                 ; $6399: $fa $01 $e7
    ld sp, hl                                     ; $639c: $f9
    add sp, -$02                                  ; $639d: $e8 $fe
    rst $30                                       ; $639f: $f7
    ei                                            ; $63a0: $fb
    nop                                           ; $63a1: $00
    inc bc                                        ; $63a2: $03
    rst $00                                       ; $63a3: $c7
    ld bc, $0e01                                  ; $63a4: $01 $01 $0e
    nop                                           ; $63a7: $00
    ld de, $000e                                  ; $63a8: $11 $0e $00
    ld c, $00                                     ; $63ab: $0e $00
    ld bc, $00b8                                  ; $63ad: $01 $b8 $00
    rlca                                          ; $63b0: $07
    rlca                                          ; $63b1: $07
    rra                                           ; $63b2: $1f
    inc e                                         ; $63b3: $1c
    ccf                                           ; $63b4: $3f
    ld [hl], e                                    ; $63b5: $73
    inc a                                         ; $63b6: $3c
    xor a                                         ; $63b7: $af
    ld [bc], a                                    ; $63b8: $02
    ld [hl], b                                    ; $63b9: $70
    sbc d                                         ; $63ba: $9a
    ld h, h                                       ; $63bb: $64
    xor h                                         ; $63bc: $ac
    ld d, b                                       ; $63bd: $50
    ld [hl], b                                    ; $63be: $70
    add hl, hl                                    ; $63bf: $29
    ld a, b                                       ; $63c0: $78
    jr nz, jr_0d7_63c3                            ; $63c1: $20 $00

jr_0d7_63c3:
    jr nz, jr_0d7_63fd                            ; $63c3: $20 $38

    jr c, @+$3e                                   ; $63c5: $38 $3c

    inc c                                         ; $63c7: $0c
    ld a, $24                                     ; $63c8: $3e $24
    ld e, $0e                                     ; $63ca: $1e $0e
    inc d                                         ; $63cc: $14
    rrca                                          ; $63cd: $0f
    dec d                                         ; $63ce: $15
    ld c, $04                                     ; $63cf: $0e $04
    ld [$0802], sp                                ; $63d1: $08 $02 $08
    ld d, d                                       ; $63d4: $52
    ld b, b                                       ; $63d5: $40
    inc bc                                        ; $63d6: $03
    nop                                           ; $63d7: $00
    inc bc                                        ; $63d8: $03
    rrca                                          ; $63d9: $0f
    ld c, $1f                                     ; $63da: $0e $1f
    add hl, de                                    ; $63dc: $19
    ld a, $17                                     ; $63dd: $3e $17
    ld a, b                                       ; $63df: $78
    nop                                           ; $63e0: $00
    cpl                                           ; $63e1: $2f
    ld [hl], b                                    ; $63e2: $70
    ld e, [hl]                                    ; $63e3: $5e
    pop hl                                        ; $63e4: $e1
    db $db                                        ; $63e5: $db
    ld h, h                                       ; $63e6: $64
    or l                                          ; $63e7: $b5
    ld c, d                                       ; $63e8: $4a
    db $10                                        ; $63e9: $10
    ld a, d                                       ; $63ea: $7a
    inc b                                         ; $63eb: $04
    jr c, jr_0d7_645d                             ; $63ec: $38 $6f

    ld c, b                                       ; $63ee: $48
    ldh a, [$f0]                                  ; $63ef: $f0 $f0
    db $fc                                        ; $63f1: $fc
    db $fc                                        ; $63f2: $fc
    nop                                           ; $63f3: $00
    rst $38                                       ; $63f4: $ff
    rrca                                          ; $63f5: $0f
    rst $38                                       ; $63f6: $ff
    ld sp, hl                                     ; $63f7: $f9
    rlca                                          ; $63f8: $07
    xor $01                                       ; $63f9: $ee $01
    ld b, e                                       ; $63fb: $43
    ld [bc], a                                    ; $63fc: $02

jr_0d7_63fd:
    add b                                         ; $63fd: $80
    pop bc                                        ; $63fe: $c1
    nop                                           ; $63ff: $00
    add c                                         ; $6400: $81
    nop                                           ; $6401: $00
    ld bc, $3002                                  ; $6402: $01 $02 $30
    ld [bc], a                                    ; $6405: $02
    nop                                           ; $6406: $00
    ld bc, $0305                                  ; $6407: $01 $05 $03
    nop                                           ; $640a: $00
    ld [$0c08], sp                                ; $640b: $08 $08 $0c
    ld [$0e03], sp                                ; $640e: $08 $03 $0e
    inc c                                         ; $6411: $0c
    ld c, $04                                     ; $6412: $0e $04
    rrca                                          ; $6414: $0f
    dec b                                         ; $6415: $05
    inc b                                         ; $6416: $04
    db $10                                        ; $6417: $10
    ld [bc], a                                    ; $6418: $02
    jr jr_0d7_641c                                ; $6419: $18 $01

    ld a, [bc]                                    ; $641b: $0a

jr_0d7_641c:
    inc c                                         ; $641c: $0c
    ld a, [bc]                                    ; $641d: $0a
    inc c                                         ; $641e: $0c
    ld d, h                                       ; $641f: $54
    jr c, jr_0d7_6422                             ; $6420: $38 $00

jr_0d7_6422:
    ld c, c                                       ; $6422: $49
    ld [$6080], sp                                ; $6423: $08 $80 $60
    db $10                                        ; $6426: $10
    dec e                                         ; $6427: $1d
    ld a, $33                                     ; $6428: $3e $33
    ld a, h                                       ; $642a: $7c
    ld l, $71                                     ; $642b: $2e $71
    ld e, a                                       ; $642d: $5f
    nop                                           ; $642e: $00
    ldh [$b3], a                                  ; $642f: $e0 $b3
    ld c, h                                       ; $6431: $4c
    xor l                                         ; $6432: $ad
    ld d, d                                       ; $6433: $52
    ld [hl], e                                    ; $6434: $73
    inc c                                         ; $6435: $0c
    inc e                                         ; $6436: $1c
    add b                                         ; $6437: $80
    rst $08                                       ; $6438: $cf
    ld c, b                                       ; $6439: $48
    ld a, $3e                                     ; $643a: $3e $3e
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    ret nz                                        ; $643f: $c0

    rst $38                                       ; $6440: $ff
    nop                                           ; $6441: $00
    ccf                                           ; $6442: $3f
    ret nz                                        ; $6443: $c0

    ld hl, sp+$00                                 ; $6444: $f8 $00
    jr nc, @-$3e                                  ; $6446: $30 $c0

    ret nc                                        ; $6448: $d0

jr_0d7_6449:
    jr nz, jr_0d7_644f                            ; $6449: $20 $04

    jr nz, @-$3e                                  ; $644b: $20 $c0

    ret nz                                        ; $644d: $c0

    nop                                           ; $644e: $00

jr_0d7_644f:
    add b                                         ; $644f: $80
    rst $28                                       ; $6450: $ef
    jr jr_0d7_6454                                ; $6451: $18 $01

    nop                                           ; $6453: $00

jr_0d7_6454:
    nop                                           ; $6454: $00
    inc bc                                        ; $6455: $03
    ld bc, $0003                                  ; $6456: $01 $03 $00
    ret nz                                        ; $6459: $c0

    ret nz                                        ; $645a: $c0

    ldh a, [rSVBK]                                ; $645b: $f0 $70

jr_0d7_645d:
    nop                                           ; $645d: $00
    db $fc                                        ; $645e: $fc
    sbc h                                         ; $645f: $9c
    ld a, [hl]                                    ; $6460: $7e
    and $1f                                       ; $6461: $e6 $1f
    dec sp                                        ; $6463: $3b
    rlca                                          ; $6464: $07
    dec c                                         ; $6465: $0d
    jr nz, jr_0d7_646b                            ; $6466: $20 $03

Call_0d7_6468:
    dec b                                         ; $6468: $05
    ld [bc], a                                    ; $6469: $02
    nop                                           ; $646a: $00

jr_0d7_646b:
    dec bc                                        ; $646b: $0b
    rlca                                          ; $646c: $07
    ld b, $3f                                     ; $646d: $06 $3f
    dec a                                         ; $646f: $3d
    nop                                           ; $6470: $00
    cp $73                                        ; $6471: $fe $73
    db $fc                                        ; $6473: $fc

jr_0d7_6474:
    adc $f0                                       ; $6474: $ce $f0
    cp b                                          ; $6476: $b8
    ret nz                                        ; $6477: $c0

    ld h, b                                       ; $6478: $60
    dec d                                         ; $6479: $15
    add b                                         ; $647a: $80
    nop                                           ; $647b: $00
    ld [bc], a                                    ; $647c: $02
    ld h, $00                                     ; $647d: $26 $00
    ld [bc], a                                    ; $647f: $02
    ld [bc], a                                    ; $6480: $02
    ld [$0b02], sp                                ; $6481: $08 $02 $0b
    nop                                           ; $6484: $00

jr_0d7_6485:
    add b                                         ; $6485: $80
    jr z, jr_0d7_64d1                             ; $6486: $28 $49

    add b                                         ; $6488: $80
    nop                                           ; $6489: $00
    ld b, b                                       ; $648a: $40
    add b                                         ; $648b: $80
    and b                                         ; $648c: $a0
    ret nz                                        ; $648d: $c0

    jr nz, jr_0d7_6490                            ; $648e: $20 $00

jr_0d7_6490:
    ldh [$a8], a                                  ; $6490: $e0 $a8
    ld [hl], b                                    ; $6492: $70
    jr z, jr_0d7_6485                             ; $6493: $28 $f0

    or b                                          ; $6495: $b0
    ld a, b                                       ; $6496: $78
    ld e, b                                       ; $6497: $58
    ld [bc], a                                    ; $6498: $02
    jr c, @+$6a                                   ; $6499: $38 $68

    jr jr_0d7_64c2                                ; $649b: $18 $25

    ld e, $10                                     ; $649d: $1e $10
    ld c, d                                       ; $649f: $4a
    ld a, c                                       ; $64a0: $79
    ld bc, $0140                                  ; $64a1: $01 $40 $01
    ld b, d                                       ; $64a4: $42
    ld de, $7c3b                                  ; $64a5: $11 $3b $7c
    ld h, a                                       ; $64a8: $67
    ld hl, sp-$64                                 ; $64a9: $f8 $9c
    ld h, e                                       ; $64ab: $63
    ld [de], a                                    ; $64ac: $12
    ld a, e                                       ; $64ad: $7b
    inc b                                         ; $64ae: $04
    rra                                           ; $64af: $1f
    ld l, e                                       ; $64b0: $6b
    ld l, c                                       ; $64b1: $69
    inc a                                         ; $64b2: $3c
    inc a                                         ; $64b3: $3c
    and b                                         ; $64b4: $a0
    nop                                           ; $64b5: $00
    jp $ff00                                      ; $64b6: $c3 $00 $ff


jr_0d7_64b9:
    ld a, $c1                                     ; $64b9: $3e $c1
    rst $08                                       ; $64bb: $cf
    jr nc, jr_0d7_6474                            ; $64bc: $30 $b6

    ld c, b                                       ; $64be: $48
    call z, Call_000_301a                         ; $64bf: $cc $1a $30

jr_0d7_64c2:
    ld [hl], b                                    ; $64c2: $70
    add b                                         ; $64c3: $80
    sbc [hl]                                      ; $64c4: $9e
    jr nz, jr_0d7_652e                            ; $64c5: $20 $67

    jr nc, jr_0d7_6449                            ; $64c7: $30 $80

    ld [hl+], a                                   ; $64c9: $22
    ld bc, $031c                                  ; $64ca: $01 $1c $03
    rst $38                                       ; $64cd: $ff
    rst $20                                       ; $64ce: $e7
    rra                                           ; $64cf: $1f
    add hl, sp                                    ; $64d0: $39

jr_0d7_64d1:
    rlca                                          ; $64d1: $07
    ld c, $af                                     ; $64d2: $0e $af
    nop                                           ; $64d4: $00
    ld e, $19                                     ; $64d5: $1e $19
    sub b                                         ; $64d7: $90
    ld d, [hl]                                    ; $64d8: $56
    ld bc, $0707                                  ; $64d9: $01 $07 $07
    ld e, b                                       ; $64dc: $58
    ld bc, $3f1c                                  ; $64dd: $01 $1c $3f
    nop                                           ; $64e0: $00
    jr jr_0d7_64e3                                ; $64e1: $18 $00

jr_0d7_64e3:
    jr jr_0d7_6501                                ; $64e3: $18 $1c

    inc e                                         ; $64e5: $1c

jr_0d7_64e6:
    ld e, $0d                                     ; $64e6: $1e $0d
    ld e, $0e                                     ; $64e8: $1e $0e
    rra                                           ; $64ea: $1f
    ld b, b                                       ; $64eb: $40
    rrca                                          ; $64ec: $0f
    ld b, $00                                     ; $64ed: $06 $00
    dec de                                        ; $64ef: $1b
    inc e                                         ; $64f0: $1c
    ld a, [de]                                    ; $64f1: $1a
    inc e                                         ; $64f2: $1c
    ld b, $18                                     ; $64f3: $06 $18
    ld [de], a                                    ; $64f5: $12
    inc c                                         ; $64f6: $0c
    db $10                                        ; $64f7: $10
    jr jr_0d7_64e6                                ; $64f8: $18 $ec

    nop                                           ; $64fa: $00
    ld h, b                                       ; $64fb: $60
    add b                                         ; $64fc: $80
    ld [$1c18], a                                 ; $64fd: $ea $18 $1c
    nop                                           ; $6500: $00

jr_0d7_6501:
    inc a                                         ; $6501: $3c
    jr jr_0d7_6580                                ; $6502: $18 $7c

    jr c, jr_0d7_6582                             ; $6504: $38 $7c

    or b                                          ; $6506: $b0
    ld a, h                                       ; $6507: $7c
    inc [hl]                                      ; $6508: $34
    db $10                                        ; $6509: $10
    ld hl, sp-$4c                                 ; $650a: $f8 $b4
    ld a, b                                       ; $650c: $78
    ld [bc], a                                    ; $650d: $02
    ld [$3cda], sp                                ; $650e: $08 $da $3c
    ld e, d                                       ; $6511: $5a
    inc a                                         ; $6512: $3c
    jr nc, jr_0d7_6582                            ; $6513: $30 $6d

    ld e, $ac                                     ; $6515: $1e $ac
    jr nc, jr_0d7_64b9                            ; $6517: $30 $a0

    ld bc, $1f0f                                  ; $6519: $01 $0f $1f
    rra                                           ; $651c: $1f
    ccf                                           ; $651d: $3f
    nop                                           ; $651e: $00
    dec [hl]                                      ; $651f: $35
    ld a, a                                       ; $6520: $7f
    jr c, jr_0d7_65a2                             ; $6521: $38 $7f

    ld [hl], h                                    ; $6523: $74
    rst $38                                       ; $6524: $ff
    jr nz, @+$01                                  ; $6525: $20 $ff

    inc b                                         ; $6527: $04
    add c                                         ; $6528: $81
    ld a, [hl]                                    ; $6529: $7e
    ld a, a                                       ; $652a: $7f
    nop                                           ; $652b: $00
    inc a                                         ; $652c: $3c
    rrca                                          ; $652d: $0f

jr_0d7_652e:
    ld c, d                                       ; $652e: $4a
    ld a, a                                       ; $652f: $7f
    ld a, a                                       ; $6530: $7f
    nop                                           ; $6531: $00
    rst $38                                       ; $6532: $ff
    rst $30                                       ; $6533: $f7
    rst $38                                       ; $6534: $ff
    and h                                         ; $6535: $a4
    rst $38                                       ; $6536: $ff
    ld h, c                                       ; $6537: $61
    cp $06                                        ; $6538: $fe $06
    nop                                           ; $653a: $00
    ld hl, sp+$4c                                 ; $653b: $f8 $4c
    ldh a, [rNR23]                                ; $653d: $f0 $18
    ldh [rSVBK], a                                ; $653f: $e0 $70
    add b                                         ; $6541: $80
    ldh [rNR43], a                                ; $6542: $e0 $22
    nop                                           ; $6544: $00
    add b                                         ; $6545: $80
    ld a, [hl-]                                   ; $6546: $3a
    ld de, $0701                                  ; $6547: $11 $01 $07
    inc bc                                        ; $654a: $03
    ld [bc], a                                    ; $654b: $02
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    ld [hl], b                                    ; $654f: $70
    ld h, h                                       ; $6550: $64
    ld a, b                                       ; $6551: $78
    ld [hl], d                                    ; $6552: $72
    ld a, h                                       ; $6553: $7c
    ld a, [hl-]                                   ; $6554: $3a
    ld a, h                                       ; $6555: $7c
    ld e, c                                       ; $6556: $59
    nop                                           ; $6557: $00
    ld a, $2d                                     ; $6558: $3e $2d
    ld e, $2d                                     ; $655a: $1e $2d
    ld e, $2a                                     ; $655c: $1e $2a
    inc e                                         ; $655e: $1c
    ld e, d                                       ; $655f: $5a
    nop                                           ; $6560: $00
    inc a                                         ; $6561: $3c
    ld [hl], h                                    ; $6562: $74
    ld a, b                                       ; $6563: $78
    ld [hl], h                                    ; $6564: $74
    ld a, b                                       ; $6565: $78
    ld l, b                                       ; $6566: $68
    ld [hl], b                                    ; $6567: $70
    ld l, b                                       ; $6568: $68
    inc b                                         ; $6569: $04
    ld [hl], b                                    ; $656a: $70
    ld d, b                                       ; $656b: $50
    ld h, b                                       ; $656c: $60
    ld d, b                                       ; $656d: $50
    ld h, b                                       ; $656e: $60
    jr nz, jr_0d7_657a                            ; $656f: $20 $09

    or h                                          ; $6571: $b4
    ld a, b                                       ; $6572: $78
    inc b                                         ; $6573: $04
    inc [hl]                                      ; $6574: $34
    ld hl, sp-$46                                 ; $6575: $f8 $ba
    ld a, h                                       ; $6577: $7c
    ld e, d                                       ; $6578: $5a
    halt                                          ; $6579: $76

jr_0d7_657a:
    db $10                                        ; $657a: $10
    dec l                                         ; $657b: $2d
    ld e, $03                                     ; $657c: $1e $03
    ld [hl], $0f                                  ; $657e: $36 $0f

jr_0d7_6580:
    ld [de], a                                    ; $6580: $12
    rrca                                          ; $6581: $0f

jr_0d7_6582:
    ld [$7007], sp                                ; $6582: $08 $07 $70
    cp d                                          ; $6585: $ba
    sbc $10                                       ; $6586: $de $10
    sub b                                         ; $6588: $90
    add b                                         ; $6589: $80
    ld e, d                                       ; $658a: $5a
    rrca                                          ; $658b: $0f
    rlca                                          ; $658c: $07
    and d                                         ; $658d: $a2
    nop                                           ; $658e: $00
    rrca                                          ; $658f: $0f
    ccf                                           ; $6590: $3f
    ccf                                           ; $6591: $3f
    ld a, a                                       ; $6592: $7f
    nop                                           ; $6593: $00
    rra                                           ; $6594: $1f
    ld a, a                                       ; $6595: $7f
    ld a, l                                       ; $6596: $7d
    rst $38                                       ; $6597: $ff
    ld a, [hl-]                                   ; $6598: $3a
    rst $38                                       ; $6599: $ff
    sub b                                         ; $659a: $90
    ld a, a                                       ; $659b: $7f
    nop                                           ; $659c: $00
    ret nc                                        ; $659d: $d0

    ccf                                           ; $659e: $3f
    ld b, h                                       ; $659f: $44
    ccf                                           ; $65a0: $3f
    ld l, b                                       ; $65a1: $68

jr_0d7_65a2:
    rra                                           ; $65a2: $1f
    jr nz, @+$21                                  ; $65a3: $20 $1f

    nop                                           ; $65a5: $00
    ld [hl-], a                                   ; $65a6: $32
    rrca                                          ; $65a7: $0f
    jr jr_0d7_65b1                                ; $65a8: $18 $07

    nop                                           ; $65aa: $00
    stop                                          ; $65ab: $10 $00
    db $10                                        ; $65ad: $10
    ld b, b                                       ; $65ae: $40
    db $10                                        ; $65af: $10
    inc b                                         ; $65b0: $04

jr_0d7_65b1:
    ld de, $1e14                                  ; $65b1: $11 $14 $1e
    ld a, [bc]                                    ; $65b4: $0a
    rra                                           ; $65b5: $1f
    ld de, $051e                                  ; $65b6: $11 $1e $05
    inc b                                         ; $65b9: $04
    rra                                           ; $65ba: $1f
    inc bc                                        ; $65bb: $03
    inc e                                         ; $65bc: $1c
    ld a, [bc]                                    ; $65bd: $0a
    inc b                                         ; $65be: $04
    ld bc, $0614                                  ; $65bf: $01 $14 $06
    ld de, $f000                                  ; $65c2: $11 $00 $f0
    nop                                           ; $65c5: $00
    jr nz, jr_0d7_65c8                            ; $65c6: $20 $00

jr_0d7_65c8:
    ld a, $00                                     ; $65c8: $3e $00
    ld a, [hl+]                                   ; $65ca: $2a
    inc e                                         ; $65cb: $1c
    add [hl]                                      ; $65cc: $86
    ld [bc], a                                    ; $65cd: $02
    ld [$1e2d], sp                                ; $65ce: $08 $2d $1e
    dec [hl]                                      ; $65d1: $35
    ld c, $02                                     ; $65d2: $0e $02
    ld [$59a4], sp                                ; $65d4: $08 $a4 $59
    add b                                         ; $65d7: $80
    ld bc, $0040                                  ; $65d8: $01 $40 $00
    ld c, d                                       ; $65db: $4a
    nop                                           ; $65dc: $00
    ld d, h                                       ; $65dd: $54
    nop                                           ; $65de: $00
    ld e, [hl]                                    ; $65df: $5e
    nop                                           ; $65e0: $00
    ld l, b                                       ; $65e1: $68
    nop                                           ; $65e2: $00
    ld [hl], d                                    ; $65e3: $72
    nop                                           ; $65e4: $00
    ld a, h                                       ; $65e5: $7c
    nop                                           ; $65e6: $00
    add [hl]                                      ; $65e7: $86
    nop                                           ; $65e8: $00
    sub b                                         ; $65e9: $90
    nop                                           ; $65ea: $00
    sbc d                                         ; $65eb: $9a
    nop                                           ; $65ec: $00
    and h                                         ; $65ed: $a4
    nop                                           ; $65ee: $00
    xor [hl]                                      ; $65ef: $ae
    nop                                           ; $65f0: $00
    cp b                                          ; $65f1: $b8
    nop                                           ; $65f2: $00
    jp nz, $cc00                                  ; $65f3: $c2 $00 $cc

    nop                                           ; $65f6: $00
    sub $00                                       ; $65f7: $d6 $00
    ldh [rP1], a                                  ; $65f9: $e0 $00
    ld [$f400], a                                 ; $65fb: $ea $00 $f4
    nop                                           ; $65fe: $00
    cp $00                                        ; $65ff: $fe $00
    ld [$1201], sp                                ; $6601: $08 $01 $12
    ld bc, $011c                                  ; $6604: $01 $1c $01
    ld h, $01                                     ; $6607: $26 $01
    jr nc, jr_0d7_660c                            ; $6609: $30 $01

    ld a, [hl-]                                   ; $660b: $3a

jr_0d7_660c:
    ld bc, $0144                  ; $660c: $01 $44 $01
    ld c, [hl]                                    ; $660f: $4e
    ld bc, $0158                                  ; $6610: $01 $58 $01
    ld h, d                                       ; $6613: $62
    ld bc, $016c                                  ; $6614: $01 $6c $01
    halt                                          ; $6617: $76
    ld bc, $0002                                  ; $6618: $01 $02 $00
    db $fc                                        ; $661b: $fc
    dec bc                                        ; $661c: $0b
    rst $38                                       ; $661d: $ff
    ld c, $f7                                     ; $661e: $0e $f7
    nop                                           ; $6620: $00
    rst $30                                       ; $6621: $f7
    inc bc                                        ; $6622: $03
    ld [bc], a                                    ; $6623: $02
    inc b                                         ; $6624: $04
    db $fc                                        ; $6625: $fc
    dec bc                                        ; $6626: $0b
    rst $38                                       ; $6627: $ff
    ld c, $f9                                     ; $6628: $0e $f9
    cp $f9                                        ; $662a: $fe $f9
    ld bc, $0802                                  ; $662c: $01 $02 $08
    db $fc                                        ; $662f: $fc
    dec bc                                        ; $6630: $0b
    rst $38                                       ; $6631: $ff
    ld c, $f9                                     ; $6632: $0e $f9
    nop                                           ; $6634: $00
    ld sp, hl                                     ; $6635: $f9
    ld [bc], a                                    ; $6636: $02
    ld [bc], a                                    ; $6637: $02
    inc c                                         ; $6638: $0c
    db $fc                                        ; $6639: $fc
    dec bc                                        ; $663a: $0b
    rst $38                                       ; $663b: $ff

Call_0d7_663c:
    ld c, $f9                                     ; $663c: $0e $f9
    cp $f9                                        ; $663e: $fe $f9
    nop                                           ; $6640: $00
    ld [bc], a                                    ; $6641: $02
    db $10                                        ; $6642: $10
    db $fc                                        ; $6643: $fc
    dec bc                                        ; $6644: $0b
    rst $38                                       ; $6645: $ff
    ld c, $f8                                     ; $6646: $0e $f8
    nop                                           ; $6648: $00
    ld hl, sp+$02                                 ; $6649: $f8 $02
    ld [bc], a                                    ; $664b: $02
    inc d                                         ; $664c: $14
    db $fc                                        ; $664d: $fc
    dec bc                                        ; $664e: $0b
    rst $38                                       ; $664f: $ff
    ld c, $f7                                     ; $6650: $0e $f7
    cp $f7                                        ; $6652: $fe $f7
    ld bc, $1802                                  ; $6654: $01 $02 $18
    db $fc                                        ; $6657: $fc
    dec bc                                        ; $6658: $0b
    rst $38                                       ; $6659: $ff
    ld c, $f9                                     ; $665a: $0e $f9
    nop                                           ; $665c: $00
    ld sp, hl                                     ; $665d: $f9
    ld [bc], a                                    ; $665e: $02
    ld [bc], a                                    ; $665f: $02
    inc e                                         ; $6660: $1c
    db $fc                                        ; $6661: $fc
    dec bc                                        ; $6662: $0b
    rst $38                                       ; $6663: $ff
    ld c, $f9                                     ; $6664: $0e $f9
    rst $38                                       ; $6666: $ff
    ld sp, hl                                     ; $6667: $f9
    ld bc, $2002                                  ; $6668: $01 $02 $20
    db $fc                                        ; $666b: $fc
    dec bc                                        ; $666c: $0b
    rst $38                                       ; $666d: $ff
    ld c, $f8                                     ; $666e: $0e $f8
    nop                                           ; $6670: $00
    ld hl, sp+$02                                 ; $6671: $f8 $02
    ld [bc], a                                    ; $6673: $02
    inc h                                         ; $6674: $24
    db $fc                                        ; $6675: $fc
    dec bc                                        ; $6676: $0b
    rst $38                                       ; $6677: $ff
    ld c, $f7                                     ; $6678: $0e $f7
    cp $f7                                        ; $667a: $fe $f7
    ld bc, $2802                                  ; $667c: $01 $02 $28
    db $fc                                        ; $667f: $fc
    dec bc                                        ; $6680: $0b
    rst $38                                       ; $6681: $ff
    ld c, $f7                                     ; $6682: $0e $f7
    nop                                           ; $6684: $00
    rst $30                                       ; $6685: $f7
    ld [bc], a                                    ; $6686: $02
    ld [bc], a                                    ; $6687: $02
    inc l                                         ; $6688: $2c
    db $fc                                        ; $6689: $fc
    dec bc                                        ; $668a: $0b
    rst $38                                       ; $668b: $ff
    ld c, $f9                                     ; $668c: $0e $f9
    cp $f9                                        ; $668e: $fe $f9

jr_0d7_6690:
    nop                                           ; $6690: $00
    ld [bc], a                                    ; $6691: $02
    jr nc, jr_0d7_6690                            ; $6692: $30 $fc

    dec bc                                        ; $6694: $0b
    rst $38                                       ; $6695: $ff
    ld c, $f7                                     ; $6696: $0e $f7
    cp $f7                                        ; $6698: $fe $f7
    ld [bc], a                                    ; $669a: $02
    ld [bc], a                                    ; $669b: $02
    inc [hl]                                      ; $669c: $34
    db $fc                                        ; $669d: $fc
    dec bc                                        ; $669e: $0b
    rst $38                                       ; $669f: $ff
    ld c, $f7                                     ; $66a0: $0e $f7
    cp $f7                                        ; $66a2: $fe $f7
    ld bc, $3802                                  ; $66a4: $01 $02 $38
    db $fc                                        ; $66a7: $fc
    dec bc                                        ; $66a8: $0b
    rst $38                                       ; $66a9: $ff
    ld c, $f8                                     ; $66aa: $0e $f8
    nop                                           ; $66ac: $00
    ld hl, sp+$02                                 ; $66ad: $f8 $02
    ld [bc], a                                    ; $66af: $02
    inc a                                         ; $66b0: $3c
    db $fc                                        ; $66b1: $fc
    dec bc                                        ; $66b2: $0b
    rst $38                                       ; $66b3: $ff
    ld c, $fa                                     ; $66b4: $0e $fa
    cp $fa                                        ; $66b6: $fe $fa
    nop                                           ; $66b8: $00
    ld [bc], a                                    ; $66b9: $02
    ld b, b                                       ; $66ba: $40
    db $fc                                        ; $66bb: $fc
    dec bc                                        ; $66bc: $0b
    rst $38                                       ; $66bd: $ff
    ld c, $f8                                     ; $66be: $0e $f8
    cp $f8                                        ; $66c0: $fe $f8
    ld bc, $4402                                  ; $66c2: $01 $02 $44
    db $fc                                        ; $66c5: $fc
    dec bc                                        ; $66c6: $0b
    rst $38                                       ; $66c7: $ff
    ld c, $f9                                     ; $66c8: $0e $f9
    cp $f9                                        ; $66ca: $fe $f9
    rst $38                                       ; $66cc: $ff
    ld [bc], a                                    ; $66cd: $02
    ld c, b                                       ; $66ce: $48
    db $fc                                        ; $66cf: $fc
    dec bc                                        ; $66d0: $0b
    rst $38                                       ; $66d1: $ff
    ld c, $f8                                     ; $66d2: $0e $f8
    nop                                           ; $66d4: $00
    ld hl, sp+$02                                 ; $66d5: $f8 $02
    ld [bc], a                                    ; $66d7: $02
    ld c, h                                       ; $66d8: $4c
    db $fc                                        ; $66d9: $fc
    dec bc                                        ; $66da: $0b
    rst $38                                       ; $66db: $ff
    ld c, $f9                                     ; $66dc: $0e $f9
    cp $f9                                        ; $66de: $fe $f9
    nop                                           ; $66e0: $00
    ld [bc], a                                    ; $66e1: $02
    ld d, b                                       ; $66e2: $50
    db $fc                                        ; $66e3: $fc
    dec bc                                        ; $66e4: $0b
    rst $38                                       ; $66e5: $ff
    ld c, $f9                                     ; $66e6: $0e $f9
    rst $38                                       ; $66e8: $ff
    ld sp, hl                                     ; $66e9: $f9
    ld [bc], a                                    ; $66ea: $02
    ld [bc], a                                    ; $66eb: $02
    ld d, h                                       ; $66ec: $54
    db $fc                                        ; $66ed: $fc
    dec bc                                        ; $66ee: $0b
    rst $38                                       ; $66ef: $ff
    ld c, $f9                                     ; $66f0: $0e $f9
    cp $f9                                        ; $66f2: $fe $f9
    nop                                           ; $66f4: $00
    ld [bc], a                                    ; $66f5: $02
    ld e, b                                       ; $66f6: $58
    db $fc                                        ; $66f7: $fc
    dec bc                                        ; $66f8: $0b
    rst $38                                       ; $66f9: $ff
    ld c, $f8                                     ; $66fa: $0e $f8
    nop                                           ; $66fc: $00
    ld hl, sp+$02                                 ; $66fd: $f8 $02
    ld [bc], a                                    ; $66ff: $02
    ld e, h                                       ; $6700: $5c
    db $fc                                        ; $6701: $fc
    dec bc                                        ; $6702: $0b
    rst $38                                       ; $6703: $ff
    ld c, $f6                                     ; $6704: $0e $f6
    rst $38                                       ; $6706: $ff
    or $02                                        ; $6707: $f6 $02
    ld [bc], a                                    ; $6709: $02
    ld h, b                                       ; $670a: $60
    db $fc                                        ; $670b: $fc
    dec bc                                        ; $670c: $0b
    rst $38                                       ; $670d: $ff
    ld c, $f9                                     ; $670e: $0e $f9
    nop                                           ; $6710: $00
    ld sp, hl                                     ; $6711: $f9
    ld [bc], a                                    ; $6712: $02
    ld [bc], a                                    ; $6713: $02
    ld h, h                                       ; $6714: $64
    db $fc                                        ; $6715: $fc
    dec bc                                        ; $6716: $0b
    rst $38                                       ; $6717: $ff
    ld c, $f7                                     ; $6718: $0e $f7
    rst $38                                       ; $671a: $ff
    rst $30                                       ; $671b: $f7
    ld bc, $6802                                  ; $671c: $01 $02 $68
    db $fc                                        ; $671f: $fc
    dec bc                                        ; $6720: $0b
    rst $38                                       ; $6721: $ff
    ld c, $f9                                     ; $6722: $0e $f9
    rst $38                                       ; $6724: $ff
    ld sp, hl                                     ; $6725: $f9
    ld [bc], a                                    ; $6726: $02
    ld [bc], a                                    ; $6727: $02
    ld l, h                                       ; $6728: $6c
    db $fc                                        ; $6729: $fc
    dec bc                                        ; $672a: $0b
    rst $38                                       ; $672b: $ff
    ld c, $f8                                     ; $672c: $0e $f8
    cp $f8                                        ; $672e: $fe $f8
    nop                                           ; $6730: $00
    ld [bc], a                                    ; $6731: $02
    ld [hl], b                                    ; $6732: $70
    db $fc                                        ; $6733: $fc
    dec bc                                        ; $6734: $0b
    rst $38                                       ; $6735: $ff
    ld c, $f7                                     ; $6736: $0e $f7
    rst $38                                       ; $6738: $ff
    rst $30                                       ; $6739: $f7
    ld [bc], a                                    ; $673a: $02
    ld [bc], a                                    ; $673b: $02
    ld [hl], h                                    ; $673c: $74
    db $fc                                        ; $673d: $fc
    dec bc                                        ; $673e: $0b
    rst $38                                       ; $673f: $ff
    ld c, $f9                                     ; $6740: $0e $f9
    cp $f9                                        ; $6742: $fe $f9
    nop                                           ; $6744: $00
    ld [bc], a                                    ; $6745: $02
    ld a, b                                       ; $6746: $78
    db $fc                                        ; $6747: $fc
    dec bc                                        ; $6748: $0b
    rst $38                                       ; $6749: $ff
    ld c, $f7                                     ; $674a: $0e $f7
    rst $38                                       ; $674c: $ff
    rst $30                                       ; $674d: $f7
    ld [bc], a                                    ; $674e: $02
    ld [bc], a                                    ; $674f: $02
    ld a, h                                       ; $6750: $7c
    db $fc                                        ; $6751: $fc
    dec bc                                        ; $6752: $0b
    rst $38                                       ; $6753: $ff
    ld c, $f7                                     ; $6754: $0e $f7
    cp $f7                                        ; $6756: $fe $f7
    ld bc, $0800                                  ; $6758: $01 $00 $08
    rst $00                                       ; $675b: $c7
    ld [bc], a                                    ; $675c: $02
    nop                                           ; $675d: $00

jr_0d7_675e:
    ld [bc], a                                    ; $675e: $02
    ld [bc], a                                    ; $675f: $02
    dec e                                         ; $6760: $1d
    rra                                           ; $6761: $1f
    ld a, e                                       ; $6762: $7b
    ld a, a                                       ; $6763: $7f
    rst $18                                       ; $6764: $df
    rst $38                                       ; $6765: $ff
    nop                                           ; $6766: $00
    ld l, a                                       ; $6767: $6f
    ld a, l                                       ; $6768: $7d
    rst $38                                       ; $6769: $ff
    cp $7f                                        ; $676a: $fe $7f
    ld a, e                                       ; $676c: $7b
    ld a, a                                       ; $676d: $7f
    ld d, b                                       ; $676e: $50
    nop                                           ; $676f: $00
    ccf                                           ; $6770: $3f
    jr nz, jr_0d7_6792                            ; $6771: $20 $1f

    ld de, $181f                                  ; $6773: $11 $1f $18
    rlca                                          ; $6776: $07
    rlca                                          ; $6777: $07
    ld b, b                                       ; $6778: $40
    nop                                           ; $6779: $00
    ld bc, $0620                                  ; $677a: $01 $20 $06
    ld b, $04                                     ; $677d: $06 $04
    inc b                                         ; $677f: $04
    inc bc                                        ; $6780: $03
    rlca                                          ; $6781: $07
    add hl, bc                                    ; $6782: $09
    ld b, $06                                     ; $6783: $06 $06
    ld b, $02                                     ; $6785: $06 $02
    ld [bc], a                                    ; $6787: $02
    ld [$0107], sp                                ; $6788: $08 $07 $01
    ld [$c000], sp                                ; $678b: $08 $00 $c0
    ld [de], a                                    ; $678e: $12
    nop                                           ; $678f: $00
    ld e, $28                                     ; $6790: $1e $28

jr_0d7_6792:
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    ld e, a                                       ; $6794: $5f
    ld e, a                                       ; $6795: $5f
    ccf                                           ; $6796: $3f
    inc [hl]                                      ; $6797: $34
    nop                                           ; $6798: $00
    ccf                                           ; $6799: $3f
    ld h, $7f                                     ; $679a: $26 $7f
    ld e, e                                       ; $679c: $5b
    rst $38                                       ; $679d: $ff
    add e                                         ; $679e: $83
    ld a, a                                       ; $679f: $7f
    ld b, l                                       ; $67a0: $45
    nop                                           ; $67a1: $00
    ld a, a                                       ; $67a2: $7f
    ld d, e                                       ; $67a3: $53
    ccf                                           ; $67a4: $3f
    daa                                           ; $67a5: $27
    rra                                           ; $67a6: $1f
    dec de                                        ; $67a7: $1b
    ld bc, $ce01                                  ; $67a8: $01 $01 $ce
    ld e, $38                                     ; $67ab: $1e $38
    ld b, [hl]                                    ; $67ad: $46
    ld [$0404], sp                                ; $67ae: $08 $04 $04
    inc [hl]                                      ; $67b1: $34
    ld [$1004], sp                                ; $67b2: $08 $04 $10
    ld b, [hl]                                    ; $67b5: $46
    nop                                           ; $67b6: $00
    rlca                                          ; $67b7: $07
    ld b, c                                       ; $67b8: $41
    ld bc, $0002                                  ; $67b9: $01 $02 $00
    dec b                                         ; $67bc: $05
    rlca                                          ; $67bd: $07
    dec b                                         ; $67be: $05
    ld b, $06                                     ; $67bf: $06 $06
    ld h, d                                       ; $67c1: $62
    jr jr_0d7_67c4                                ; $67c2: $18 $00

jr_0d7_67c4:
    ccf                                           ; $67c4: $3f
    ccf                                           ; $67c5: $3f
    ld b, [hl]                                    ; $67c6: $46
    ld a, a                                       ; $67c7: $7f
    sub e                                         ; $67c8: $93
    rst $38                                       ; $67c9: $ff
    xor a                                         ; $67ca: $af
    db $fd                                        ; $67cb: $fd
    ld [$f6df], sp                                ; $67cc: $08 $df $f6
    ld a, a                                       ; $67cf: $7f
    ld [hl], b                                    ; $67d0: $70

jr_0d7_67d1:
    ld a, [hl]                                    ; $67d1: $7e
    nop                                           ; $67d2: $00
    ld sp, $080f                                  ; $67d3: $31 $0f $08
    reti                                          ; $67d6: $d9


    ld a, h                                       ; $67d7: $7c
    jr c, jr_0d7_675e                             ; $67d8: $38 $84

    jr @+$04                                      ; $67da: $18 $02

    ld bc, $0600                                  ; $67dc: $01 $00 $06
    ld [$0103], sp                                ; $67df: $08 $03 $01
    ld a, [bc]                                    ; $67e2: $0a
    ld [$0cc0], sp                                ; $67e3: $08 $c0 $0c
    ld [$4860], sp                                ; $67e6: $08 $60 $48
    rra                                           ; $67e9: $1f
    rra                                           ; $67ea: $1f
    ld a, a                                       ; $67eb: $7f
    ld l, b                                       ; $67ec: $68
    rst $38                                       ; $67ed: $ff
    or h                                          ; $67ee: $b4
    jr nz, jr_0d7_6870                            ; $67ef: $20 $7f

    ld c, d                                       ; $67f1: $4a
    ld a, [hl]                                    ; $67f2: $7e
    nop                                           ; $67f3: $00
    ld e, e                                       ; $67f4: $5b
    rst $38                                       ; $67f5: $ff
    add d                                         ; $67f6: $82
    ld a, a                                       ; $67f7: $7f
    ld h, c                                       ; $67f8: $61
    ld [bc], a                                    ; $67f9: $02
    ld a, [hl]                                    ; $67fa: $7e
    ld d, d                                       ; $67fb: $52
    ld a, $22                                     ; $67fc: $3e $22
    inc e                                         ; $67fe: $1c
    inc e                                         ; $67ff: $1c
    ld b, b                                       ; $6800: $40
    ld e, b                                       ; $6801: $58
    inc bc                                        ; $6802: $03
    ld e, b                                       ; $6803: $58
    ld bc, $1002                                  ; $6804: $01 $02 $10
    inc bc                                        ; $6807: $03
    inc a                                         ; $6808: $3c
    ld l, b                                       ; $6809: $68
    db $e4                                        ; $680a: $e4
    ld [$5e5e], sp                                ; $680b: $08 $5e $5e
    cp a                                          ; $680e: $bf
    nop                                           ; $680f: $00
    cp a                                          ; $6810: $bf
    ld a, a                                       ; $6811: $7f
    ld a, a                                       ; $6812: $7f
    rst $38                                       ; $6813: $ff
    ld a, [$f0ff]                                 ; $6814: $fa $ff $f0
    rst $38                                       ; $6817: $ff
    ld b, a                                       ; $6818: $47
    or $fe                                        ; $6819: $f6 $fe
    nop                                           ; $681b: $00
    jr nc, jr_0d7_683d                            ; $681c: $30 $1f

    ld de, $6882                                  ; $681e: $11 $82 $68
    ld a, d                                       ; $6821: $7a
    nop                                           ; $6822: $00
    ld a, [hl-]                                   ; $6823: $3a
    nop                                           ; $6824: $00
    ret nz                                        ; $6825: $c0

    add [hl]                                      ; $6826: $86
    ld [$8882], sp                                ; $6827: $08 $82 $88
    ld e, $1e                                     ; $682a: $1e $1e
    scf                                           ; $682c: $37
    ccf                                           ; $682d: $3f
    ld a, $3f                                     ; $682e: $3e $3f

jr_0d7_6830:
    nop                                           ; $6830: $00
    ld a, l                                       ; $6831: $7d
    ld b, a                                       ; $6832: $47
    ld a, a                                       ; $6833: $7f
    ld b, e                                       ; $6834: $43
    ld a, a                                       ; $6835: $7f
    ld d, e                                       ; $6836: $53
    rst $38                                       ; $6837: $ff
    add a                                         ; $6838: $87
    nop                                           ; $6839: $00
    ld a, a                                       ; $683a: $7f
    ld b, a                                       ; $683b: $47
    ld a, a                                       ; $683c: $7f

jr_0d7_683d:
    ld [hl], e                                    ; $683d: $73
    dec a                                         ; $683e: $3d
    dec h                                         ; $683f: $25
    jr jr_0d7_685a                                ; $6840: $18 $18

    db $e3                                        ; $6842: $e3
    nop                                           ; $6843: $00
    ld h, c                                       ; $6844: $61
    ei                                            ; $6845: $fb
    db $10                                        ; $6846: $10
    push af                                       ; $6847: $f5
    nop                                           ; $6848: $00
    rlca                                          ; $6849: $07
    inc bc                                        ; $684a: $03
    rlca                                          ; $684b: $07
    ld bc, $fc08                                  ; $684c: $01 $08 $fc
    jr z, jr_0d7_67d1                             ; $684f: $28 $80

    ld h, h                                       ; $6851: $64
    add hl, bc                                    ; $6852: $09
    dec a                                         ; $6853: $3d
    dec a                                         ; $6854: $3d
    halt                                          ; $6855: $76
    ld a, a                                       ; $6856: $7f
    ei                                            ; $6857: $fb
    rst $38                                       ; $6858: $ff
    cp a                                          ; $6859: $bf

jr_0d7_685a:
    ret nz                                        ; $685a: $c0

    nop                                           ; $685b: $00
    ld bc, $0082                                  ; $685c: $01 $82 $00
    ldh a, [rIE]                                  ; $685f: $f0 $ff
    di                                            ; $6861: $f3
    rst $38                                       ; $6862: $ff
    ld sp, hl                                     ; $6863: $f9
    ld [hl], a                                    ; $6864: $77
    inc e                                         ; $6865: $1c
    ld [hl], a                                    ; $6866: $77
    db $10                                        ; $6867: $10
    stop                                          ; $6868: $10 $00
    ld l, c                                       ; $686a: $69
    ld a, [hl]                                    ; $686b: $7e
    jr c, jr_0d7_6830                             ; $686c: $38 $c2

    ld l, b                                       ; $686e: $68
    cpl                                           ; $686f: $2f

jr_0d7_6870:
    cpl                                           ; $6870: $2f
    ld a, [bc]                                    ; $6871: $0a
    ld a, a                                       ; $6872: $7f
    ld d, b                                       ; $6873: $50
    ld a, a                                       ; $6874: $7f
    ld a, c                                       ; $6875: $79
    add d                                         ; $6876: $82
    ld de, $8482                                  ; $6877: $11 $82 $84
    ld [$1e7e], sp                                ; $687a: $08 $7e $1e
    ld h, [hl]                                    ; $687d: $66
    jr c, jr_0d7_68b8                             ; $687e: $38 $38

    ld b, b                                       ; $6880: $40
    ld l, c                                       ; $6881: $69
    db $fc                                        ; $6882: $fc
    ld [$0802], sp                                ; $6883: $08 $02 $08
    nop                                           ; $6886: $00
    adc c                                         ; $6887: $89
    ld e, $00                                     ; $6888: $1e $00
    ld e, $25                                     ; $688a: $1e $25
    ccf                                           ; $688c: $3f
    ld c, e                                       ; $688d: $4b
    ld a, a                                       ; $688e: $7f
    ld d, a                                       ; $688f: $57
    ld a, h                                       ; $6890: $7c
    xor a                                         ; $6891: $af
    nop                                           ; $6892: $00
    ld hl, sp-$01                                 ; $6893: $f8 $ff
    ld a, [c]                                     ; $6895: $f2
    rst $38                                       ; $6896: $ff
    ret nc                                        ; $6897: $d0

    ld a, a                                       ; $6898: $7f
    ld h, b                                       ; $6899: $60
    ccf                                           ; $689a: $3f
    dec de                                        ; $689b: $1b
    inc sp                                        ; $689c: $33
    rrca                                          ; $689d: $0f
    add hl, bc                                    ; $689e: $09
    and b                                         ; $689f: $a0
    ld c, b                                       ; $68a0: $48
    add b                                         ; $68a1: $80
    add hl, bc                                    ; $68a2: $09
    ld bc, $5100                                  ; $68a3: $01 $00 $51
    sbc $59                                       ; $68a6: $de $59
    nop                                           ; $68a8: $00
    inc [hl]                                      ; $68a9: $34
    inc [hl]                                      ; $68aa: $34
    ld e, d                                       ; $68ab: $5a
    ld a, [hl]                                    ; $68ac: $7e
    ld h, c                                       ; $68ad: $61
    ld a, a                                       ; $68ae: $7f
    or h                                          ; $68af: $b4
    rst $38                                       ; $68b0: $ff
    nop                                           ; $68b1: $00
    ld a, [hl]                                    ; $68b2: $7e
    ld l, e                                       ; $68b3: $6b
    ccf                                           ; $68b4: $3f
    ld hl, $6d7f                                  ; $68b5: $21 $7f $6d

jr_0d7_68b8:
    ld a, a                                       ; $68b8: $7f
    ld b, c                                       ; $68b9: $41
    nop                                           ; $68ba: $00
    ld a, a                                       ; $68bb: $7f
    ld b, b                                       ; $68bc: $40
    ccf                                           ; $68bd: $3f
    add hl, hl                                    ; $68be: $29
    rra                                           ; $68bf: $1f
    inc de                                        ; $68c0: $13
    inc c                                         ; $68c1: $0c
    inc c                                         ; $68c2: $0c
    adc c                                         ; $68c3: $89
    inc b                                         ; $68c4: $04
    ld c, d                                       ; $68c5: $4a
    dec b                                         ; $68c6: $05
    dec b                                         ; $68c7: $05
    ld [bc], a                                    ; $68c8: $02
    cp $00                                        ; $68c9: $fe $00
    inc bc                                        ; $68cb: $03
    rlca                                          ; $68cc: $07
    rlca                                          ; $68cd: $07
    ld a, [bc]                                    ; $68ce: $0a
    ld h, b                                       ; $68cf: $60
    inc b                                         ; $68d0: $04
    ld bc, $2000                                  ; $68d1: $01 $00 $20
    ld c, d                                       ; $68d4: $4a
    ld a, $3e                                     ; $68d5: $3e $3e
    ld h, l                                       ; $68d7: $65
    ld a, a                                       ; $68d8: $7f
    rr b                                          ; $68d9: $cb $18
    rst $38                                       ; $68db: $ff
    rst $10                                       ; $68dc: $d7
    db $fc                                        ; $68dd: $fc
    add b                                         ; $68de: $80
    ld [$00ca], sp                                ; $68df: $08 $ca $00
    ld h, c                                       ; $68e2: $61
    ccf                                           ; $68e3: $3f
    ld [hl-], a                                   ; $68e4: $32
    rrca                                          ; $68e5: $0f
    rra                                           ; $68e6: $1f
    ld de, $0e0e                                  ; $68e7: $11 $0e $0e
    add b                                         ; $68ea: $80
    ld hl, sp+$00                                 ; $68eb: $f8 $00
    ld sp, hl                                     ; $68ed: $f9
    nop                                           ; $68ee: $00
    ld sp, hl                                     ; $68ef: $f9
    db $e4                                        ; $68f0: $e4
    ld a, [bc]                                    ; $68f1: $0a
    nop                                           ; $68f2: $00
    ld bc, $0f01                                  ; $68f3: $01 $01 $0f
    rrca                                          ; $68f6: $0f
    rra                                           ; $68f7: $1f
    rra                                           ; $68f8: $1f
    ccf                                           ; $68f9: $3f
    cpl                                           ; $68fa: $2f
    add b                                         ; $68fb: $80
    push bc                                       ; $68fc: $c5
    ld bc, $3f3d                                  ; $68fd: $01 $3d $3f
    inc a                                         ; $6900: $3c
    rra                                           ; $6901: $1f
    ld a, [de]                                    ; $6902: $1a
    cpl                                           ; $6903: $2f
    inc a                                         ; $6904: $3c
    nop                                           ; $6905: $00
    ld a, a                                       ; $6906: $7f
    ld a, [hl]                                    ; $6907: $7e
    ld sp, hl                                     ; $6908: $f9
    ld sp, hl                                     ; $6909: $f9
    ld a, b                                       ; $690a: $78
    ld a, b                                       ; $690b: $78
    ld hl, sp-$08                                 ; $690c: $f8 $f8
    ld b, b                                       ; $690e: $40
    ldh a, [rSB]                                  ; $690f: $f0 $01
    nop                                           ; $6911: $00
    ld h, b                                       ; $6912: $60
    ld h, b                                       ; $6913: $60
    inc b                                         ; $6914: $04
    inc b                                         ; $6915: $04
    ld a, [bc]                                    ; $6916: $0a
    ld a, [bc]                                    ; $6917: $0a
    nop                                           ; $6918: $00
    ld c, $0e                                     ; $6919: $0e $0e
    inc c                                         ; $691b: $0c
    inc b                                         ; $691c: $04
    ld c, $02                                     ; $691d: $0e $02
    ld c, $0a                                     ; $691f: $0e $0a
    nop                                           ; $6921: $00
    ld c, $02                                     ; $6922: $0e $02
    rrca                                          ; $6924: $0f
    ld bc, $0a0e                                  ; $6925: $01 $0e $0a
    inc c                                         ; $6928: $0c
    inc b                                         ; $6929: $04
    jr nz, jr_0d7_6934                            ; $692a: $20 $08

    ld [$3b00], sp                                ; $692c: $08 $00 $3b
    inc l                                         ; $692f: $2c
    inc l                                         ; $6930: $2c
    ld d, e                                       ; $6931: $53
    ld a, a                                       ; $6932: $7f
    ret                                           ; $6933: $c9


jr_0d7_6934:
    nop                                           ; $6934: $00
    rst $38                                       ; $6935: $ff
    or [hl]                                       ; $6936: $b6
    rst $38                                       ; $6937: $ff
    db $fc                                        ; $6938: $fc
    rst $18                                       ; $6939: $df
    ld a, [hl]                                    ; $693a: $7e
    ld b, a                                       ; $693b: $47
    rst $38                                       ; $693c: $ff
    add hl, de                                    ; $693d: $19
    rst $18                                       ; $693e: $df
    ld a, [hl]                                    ; $693f: $7e
    ld b, e                                       ; $6940: $43
    inc b                                         ; $6941: $04
    ld [bc], a                                    ; $6942: $02
    ld b, $03                                     ; $6943: $06 $03
    ld e, $1f                                     ; $6945: $1e $1f
    xor a                                         ; $6947: $af
    ld [bc], a                                    ; $6948: $02
    cp $08                                        ; $6949: $fe $08
    inc sp                                        ; $694b: $33
    db $f4                                        ; $694c: $f4
    ld [$0b03], sp                                ; $694d: $08 $03 $0b
    ld sp, hl                                     ; $6950: $f9
    ld a, [bc]                                    ; $6951: $0a
    ld a, [bc]                                    ; $6952: $0a
    add hl, bc                                    ; $6953: $09
    ld c, $09                                     ; $6954: $0e $09
    nop                                           ; $6956: $00
    dec hl                                        ; $6957: $2b
    dec de                                        ; $6958: $1b
    inc b                                         ; $6959: $04
    dec de                                        ; $695a: $1b
    ld a, l                                       ; $695b: $7d
    ld a, a                                       ; $695c: $7f
    or a                                          ; $695d: $b7
    rst $38                                       ; $695e: $ff
    add b                                         ; $695f: $80
    ld [bc], a                                    ; $6960: $02
    ld hl, sp-$41                                 ; $6961: $f8 $bf
    ld bc, $5ffa                                  ; $6963: $01 $fa $5f
    ld a, b                                       ; $6966: $78
    ld a, a                                       ; $6967: $7f
    ld [hl], b                                    ; $6968: $70
    ccf                                           ; $6969: $3f
    ld sp, $4b7e                                  ; $696a: $31 $7e $4b
    db $e4                                        ; $696d: $e4
    add [hl]                                      ; $696e: $86
    dec bc                                        ; $696f: $0b
    ld a, [hl]                                    ; $6970: $7e
    ld a, [hl+]                                   ; $6971: $2a
    ld [bc], a                                    ; $6972: $02
    sbc e                                         ; $6973: $9b
    ld a, $3e                                     ; $6974: $3e $3e
    ld a, [hl]                                    ; $6976: $7e
    add hl, bc                                    ; $6977: $09
    db $fc                                        ; $6978: $fc
    rst $28                                       ; $6979: $ef
    jr nz, jr_0d7_69fa                            ; $697a: $20 $7e

    ld d, e                                       ; $697c: $53
    add d                                         ; $697d: $82
    inc bc                                        ; $697e: $03
    ld b, b                                       ; $697f: $40
    ld a, a                                       ; $6980: $7f
    ld [hl], e                                    ; $6981: $73
    ccf                                           ; $6982: $3f
    daa                                           ; $6983: $27
    ldh a, [$7e]                                  ; $6984: $f0 $7e
    ld e, d                                       ; $6986: $5a
    ld b, b                                       ; $6987: $40
    dec de                                        ; $6988: $1b
    ld bc, $401a                                  ; $6989: $01 $1a $40
    adc d                                         ; $698c: $8a
    rlca                                          ; $698d: $07
    rlca                                          ; $698e: $07
    dec de                                        ; $698f: $1b
    rra                                           ; $6990: $1f
    jr nz, jr_0d7_69cc                            ; $6991: $20 $39

    ccf                                           ; $6993: $3f
    jp Jump_000_3c02                              ; $6994: $c3 $02 $3c


    ccf                                           ; $6997: $3f
    ccf                                           ; $6998: $3f
    ld e, a                                       ; $6999: $5f
    ld a, b                                       ; $699a: $78
    nop                                           ; $699b: $00
    ld e, a                                       ; $699c: $5f
    ld a, h                                       ; $699d: $7c
    ld l, a                                       ; $699e: $6f
    ld a, c                                       ; $699f: $79
    ld a, a                                       ; $69a0: $7f
    ld a, h                                       ; $69a1: $7c
    ei                                            ; $69a2: $fb
    ei                                            ; $69a3: $fb
    dec bc                                        ; $69a4: $0b
    ld [hl], b                                    ; $69a5: $70
    ld [hl], b                                    ; $69a6: $70
    sub b                                         ; $69a7: $90
    sub b                                         ; $69a8: $90
    ld a, [hl]                                    ; $69a9: $7e
    dec hl                                        ; $69aa: $2b
    dec b                                         ; $69ab: $05
    or h                                          ; $69ac: $b4
    ld [bc], a                                    ; $69ad: $02
    ld [bc], a                                    ; $69ae: $02
    inc b                                         ; $69af: $04
    jr jr_0d7_69b4                                ; $69b0: $18 $02

    rlca                                          ; $69b2: $07
    inc bc                                        ; $69b3: $03

jr_0d7_69b4:
    nop                                           ; $69b4: $00
    inc e                                         ; $69b5: $1c
    ret nz                                        ; $69b6: $c0

    ld e, c                                       ; $69b7: $59
    ld e, $1e                                     ; $69b8: $1e $1e
    ccf                                           ; $69ba: $3f
    jr nz, @+$41                                  ; $69bb: $20 $3f

    ld a, a                                       ; $69bd: $7f
    rst $30                                       ; $69be: $f7
    ld [bc], a                                    ; $69bf: $02
    ld b, a                                       ; $69c0: $47
    ld a, a                                       ; $69c1: $7f
    ld d, e                                       ; $69c2: $53
    ld a, a                                       ; $69c3: $7f
    add b                                         ; $69c4: $80
    ld bc, $43ff                                  ; $69c5: $01 $ff $43
    ld a, a                                       ; $69c8: $7f
    ld [hl], d                                    ; $69c9: $72
    ld a, [hl]                                    ; $69ca: $7e
    inc h                                         ; $69cb: $24

jr_0d7_69cc:
    inc a                                         ; $69cc: $3c
    add d                                         ; $69cd: $82
    ld l, b                                       ; $69ce: $68
    ld h, c                                       ; $69cf: $61
    ld bc, $3001                                  ; $69d0: $01 $01 $30
    add b                                         ; $69d3: $80
    ld a, e                                       ; $69d4: $7b
    inc b                                         ; $69d5: $04
    inc b                                         ; $69d6: $04
    ld e, [hl]                                    ; $69d7: $5e
    ld e, [hl]                                    ; $69d8: $5e
    ld b, d                                       ; $69d9: $42
    ld [$7f02], sp                                ; $69da: $08 $02 $7f
    ld a, d                                       ; $69dd: $7a
    rst $38                                       ; $69de: $ff
    ld hl, sp+$7f                                 ; $69df: $f8 $7f
    ld [hl], d                                    ; $69e1: $72
    add d                                         ; $69e2: $82
    inc de                                        ; $69e3: $13
    ld [de], a                                    ; $69e4: $12
    dec a                                         ; $69e5: $3d
    rra                                           ; $69e6: $1f
    add hl, de                                    ; $69e7: $19
    inc b                                         ; $69e8: $04
    ld c, h                                       ; $69e9: $4c
    add b                                         ; $69ea: $80
    dec sp                                        ; $69eb: $3b
    inc b                                         ; $69ec: $04
    adc e                                         ; $69ed: $8b
    ld a, [hl]                                    ; $69ee: $7e
    nop                                           ; $69ef: $00
    ld b, h                                       ; $69f0: $44
    nop                                           ; $69f1: $00
    inc hl                                        ; $69f2: $23
    ld [hl], c                                    ; $69f3: $71
    and d                                         ; $69f4: $a2
    nop                                           ; $69f5: $00
    ei                                            ; $69f6: $fb
    nop                                           ; $69f7: $00
    ld a, h                                       ; $69f8: $7c
    db $fc                                        ; $69f9: $fc

jr_0d7_69fa:
    ld bc, $7f25                                  ; $69fa: $01 $25 $7f
    ld c, h                                       ; $69fd: $4c
    ld a, [$0004]                                 ; $69fe: $fa $04 $00
    ld e, b                                       ; $6a01: $58
    ld a, a                                       ; $6a02: $7f
    ld [hl], h                                    ; $6a03: $74
    ld a, a                                       ; $6a04: $7f
    ld a, c                                       ; $6a05: $79
    ld a, a                                       ; $6a06: $7f
    ld e, h                                       ; $6a07: $5c
    rst $38                                       ; $6a08: $ff
    nop                                           ; $6a09: $00
    sbc e                                         ; $6a0a: $9b
    ldh a, [$90]                                  ; $6a0b: $f0 $90
    ldh [$a0], a                                  ; $6a0d: $e0 $a0
    ldh [$a0], a                                  ; $6a0f: $e0 $a0
    ld h, b                                       ; $6a11: $60
    ld a, h                                       ; $6a12: $7c
    ld h, b                                       ; $6a13: $60
    ld a, [hl]                                    ; $6a14: $7e
    inc l                                         ; $6a15: $2c
    or d                                          ; $6a16: $b2
    ld a, [bc]                                    ; $6a17: $0a
    ld a, [$fc24]                                 ; $6a18: $fa $24 $fc
    ld h, b                                       ; $6a1b: $60
    ret nz                                        ; $6a1c: $c0

    ld a, [de]                                    ; $6a1d: $1a
    ld e, e                                       ; $6a1e: $5b
    ld a, a                                       ; $6a1f: $7f
    nop                                           ; $6a20: $00
    or l                                          ; $6a21: $b5
    rst $38                                       ; $6a22: $ff
    ldh a, [$df]                                  ; $6a23: $f0 $df
    ld a, b                                       ; $6a25: $78
    ld c, a                                       ; $6a26: $4f
    ld e, b                                       ; $6a27: $58
    ld a, a                                       ; $6a28: $7f
    nop                                           ; $6a29: $00
    db $fc                                        ; $6a2a: $fc
    add a                                         ; $6a2b: $87
    ld a, h                                       ; $6a2c: $7c
    ld b, a                                       ; $6a2d: $47
    ld a, h                                       ; $6a2e: $7c
    ld c, a                                       ; $6a2f: $4f
    add hl, sp                                    ; $6a30: $39
    ccf                                           ; $6a31: $3f
    rst $38                                       ; $6a32: $ff
    ld b, b                                       ; $6a33: $40
    ld e, e                                       ; $6a34: $5b
    add d                                         ; $6a35: $82
    add hl, hl                                    ; $6a36: $29
    ld [bc], a                                    ; $6a37: $02
    jr z, jr_0d7_69fa                             ; $6a38: $28 $c0

    ld l, c                                       ; $6a3a: $69
    nop                                           ; $6a3b: $00
    ei                                            ; $6a3c: $fb
    add b                                         ; $6a3d: $80
    res 0, b                                      ; $6a3e: $cb $80
    ld a, [$da80]                                 ; $6a40: $fa $80 $da
    nop                                           ; $6a43: $00
    rra                                           ; $6a44: $1f
    rra                                           ; $6a45: $1f
    inc h                                         ; $6a46: $24
    ccf                                           ; $6a47: $3f
    ld b, e                                       ; $6a48: $43
    ld a, a                                       ; $6a49: $7f
    ld d, a                                       ; $6a4a: $57
    ld a, l                                       ; $6a4b: $7d
    nop                                           ; $6a4c: $00
    ld h, a                                       ; $6a4d: $67
    ld a, h                                       ; $6a4e: $7c
    ld a, [hl]                                    ; $6a4f: $7e
    ld a, e                                       ; $6a50: $7b
    ld e, a                                       ; $6a51: $5f
    ld [hl], b                                    ; $6a52: $70
    rst $18                                       ; $6a53: $df
    ld hl, sp+$03                                 ; $6a54: $f8 $03
    adc a                                         ; $6a56: $8f
    ld sp, hl                                     ; $6a57: $f9
    or [hl]                                       ; $6a58: $b6
    or $40                                        ; $6a59: $f6 $40
    ld b, b                                       ; $6a5b: $40
    nop                                           ; $6a5c: $00
    cp h                                          ; $6a5d: $bc
    ld b, d                                       ; $6a5e: $42
    ld l, l                                       ; $6a5f: $6d
    nop                                           ; $6a60: $00
    ld e, a                                       ; $6a61: $5f
    ld e, a                                       ; $6a62: $5f
    xor c                                         ; $6a63: $a9
    rst $30                                       ; $6a64: $f7
    ld sp, hl                                     ; $6a65: $f9
    cp $7e                                        ; $6a66: $fe $7e
    ld b, a                                       ; $6a68: $47
    jp Jump_000_0502                              ; $6a69: $c3 $02 $05


    add d                                         ; $6a6c: $82
    inc d                                         ; $6a6d: $14
    ld a, [hl]                                    ; $6a6e: $7e
    ld h, d                                       ; $6a6f: $62
    ld a, [hl]                                    ; $6a70: $7e
    ld b, [hl]                                    ; $6a71: $46
    add d                                         ; $6a72: $82
    ld e, h                                       ; $6a73: $5c
    ld a, [hl-]                                   ; $6a74: $3a
    dec e                                         ; $6a75: $1d
    ldh a, [$83]                                  ; $6a76: $f0 $83
    inc c                                         ; $6a78: $0c
    add b                                         ; $6a79: $80
    ld sp, hl                                     ; $6a7a: $f9
    add b                                         ; $6a7b: $80
    ld sp, hl                                     ; $6a7c: $f9
    add b                                         ; $6a7d: $80
    ld a, c                                       ; $6a7e: $79
    ld c, c                                       ; $6a7f: $49
    ld [hl], a                                    ; $6a80: $77
    and h                                         ; $6a81: $a4
    ei                                            ; $6a82: $fb
    inc b                                         ; $6a83: $04
    ld l, c                                       ; $6a84: $69
    ld a, [hl]                                    ; $6a85: $7e
    ld a, h                                       ; $6a86: $7c
    ld d, a                                       ; $6a87: $57
    ld a, [hl]                                    ; $6a88: $7e
    add h                                         ; $6a89: $84
    ld c, $42                                     ; $6a8a: $0e $42
    ld a, a                                       ; $6a8c: $7f
    ld e, $73                                     ; $6a8d: $1e $73
    inc a                                         ; $6a8f: $3c
    inc h                                         ; $6a90: $24
    add b                                         ; $6a91: $80
    ld e, l                                       ; $6a92: $5d
    ld hl, sp+$0d                                 ; $6a93: $f8 $0d
    rst $38                                       ; $6a95: $ff
    dec d                                         ; $6a96: $15
    nop                                           ; $6a97: $00
    sub e                                         ; $6a98: $93
    rra                                           ; $6a99: $1f
    nop                                           ; $6a9a: $00
    rra                                           ; $6a9b: $1f
    inc [hl]                                      ; $6a9c: $34
    dec sp                                        ; $6a9d: $3b
    ld e, l                                       ; $6a9e: $5d
    ld a, a                                       ; $6a9f: $7f
    xor [hl]                                      ; $6aa0: $ae
    db $db                                        ; $6aa1: $db
    rst $08                                       ; $6aa2: $cf
    rla                                           ; $6aa3: $17
    cp c                                          ; $6aa4: $b9
    cp a                                          ; $6aa5: $bf
    or $00                                        ; $6aa6: $f6 $00
    dec b                                         ; $6aa8: $05
    ld [hl], b                                    ; $6aa9: $70
    add b                                         ; $6aaa: $80
    inc b                                         ; $6aab: $04
    ld a, [hl]                                    ; $6aac: $7e
    ld d, d                                       ; $6aad: $52
    ret nz                                        ; $6aae: $c0

    ld c, $f0                                     ; $6aaf: $0e $f0
    or b                                          ; $6ab1: $b0
    dec de                                        ; $6ab2: $1b
    ret z                                         ; $6ab3: $c8

    ld c, $be                                     ; $6ab4: $0e $be
    inc c                                         ; $6ab6: $0c
    ret nz                                        ; $6ab7: $c0

    ld e, h                                       ; $6ab8: $5c
    rra                                           ; $6ab9: $1f
    rra                                           ; $6aba: $1f
    ld l, b                                       ; $6abb: $68
    ld [hl], a                                    ; $6abc: $77
    dec b                                         ; $6abd: $05
    or l                                          ; $6abe: $b5
    cp $7e                                        ; $6abf: $fe $7e
    ld e, e                                       ; $6ac1: $5b
    ld a, [hl]                                    ; $6ac2: $7e
    nop                                           ; $6ac3: $00
    ld c, $80                                     ; $6ac4: $0e $80
    nop                                           ; $6ac6: $00
    dec b                                         ; $6ac7: $05
    ld e, $71                                     ; $6ac8: $1e $71
    ccf                                           ; $6aca: $3f
    inc hl                                        ; $6acb: $23
    add b                                         ; $6acc: $80
    ld l, [hl]                                    ; $6acd: $6e
    ld a, e                                       ; $6ace: $7b
    ld b, $82                                     ; $6acf: $06 $82
    dec d                                         ; $6ad1: $15
    ret nz                                        ; $6ad2: $c0

    adc l                                         ; $6ad3: $8d
    dec l                                         ; $6ad4: $2d
    nop                                           ; $6ad5: $00
    dec l                                         ; $6ad6: $2d
    ld a, a                                       ; $6ad7: $7f
    ld a, a                                       ; $6ad8: $7f
    ccf                                           ; $6ad9: $3f
    ccf                                           ; $6ada: $3f
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    cp d                                          ; $6add: $ba
    nop                                           ; $6ade: $00
    cp a                                          ; $6adf: $bf
    ld [hl], b                                    ; $6ae0: $70
    ld a, a                                       ; $6ae1: $7f
    halt                                          ; $6ae2: $76
    ld a, a                                       ; $6ae3: $7f
    xor b                                         ; $6ae4: $a8
    cp a                                          ; $6ae5: $bf
    ld sp, $3f07                                  ; $6ae6: $31 $07 $3f
    db $10                                        ; $6ae9: $10
    rra                                           ; $6aea: $1f
    add hl, bc                                    ; $6aeb: $09
    rrca                                          ; $6aec: $0f
    ld [hl+], a                                   ; $6aed: $22
    ld a, $6c                                     ; $6aee: $3e $6c
    rrca                                          ; $6af0: $0f
    inc a                                         ; $6af1: $3c
    ld b, $50                                     ; $6af2: $06 $50
    dec b                                         ; $6af4: $05
    ld a, d                                       ; $6af5: $7a
    jr jr_0d7_6afa                                ; $6af6: $18 $02

    ld b, b                                       ; $6af8: $40
    ld [hl], l                                    ; $6af9: $75

jr_0d7_6afa:
    rra                                           ; $6afa: $1f
    rra                                           ; $6afb: $1f
    dec l                                         ; $6afc: $2d
    inc sp                                        ; $6afd: $33
    nop                                           ; $6afe: $00
    ld d, a                                       ; $6aff: $57
    ld a, a                                       ; $6b00: $7f
    xor [hl]                                      ; $6b01: $ae
    ei                                            ; $6b02: $fb
    ld a, [hl]                                    ; $6b03: $7e
    ld [hl], e                                    ; $6b04: $73
    ccf                                           ; $6b05: $3f
    dec l                                         ; $6b06: $2d
    nop                                           ; $6b07: $00
    ld a, a                                       ; $6b08: $7f
    ld b, c                                       ; $6b09: $41
    ccf                                           ; $6b0a: $3f
    ld hl, $393f                                  ; $6b0b: $21 $3f $39
    rra                                           ; $6b0e: $1f
    inc de                                        ; $6b0f: $13
    sbc $00                                       ; $6b10: $de $00
    ld e, a                                       ; $6b12: $5f
    ret nz                                        ; $6b13: $c0

    db $10                                        ; $6b14: $10
    inc bc                                        ; $6b15: $03
    ld [hl], l                                    ; $6b16: $75
    rrca                                          ; $6b17: $0f
    jp nz, $bc03                                  ; $6b18: $c2 $03 $bc

    ld d, a                                       ; $6b1b: $57
    db $e4                                        ; $6b1c: $e4
    rrca                                          ; $6b1d: $0f

    db $28, $00, $06, $00

    ld d, $00                                     ; $6b22: $16 $00

    db $1e, $00, $05, $00

    nop                                           ; $6b28: $00
    rra                                           ; $6b29: $1f
    nop                                           ; $6b2a: $00
    rra                                           ; $6b2b: $1f

    db $0a, $fc, $fc, $0c, $0a, $1c, $1c, $01, $1c, $17

    ld bc, $010a                                  ; $6b36: $01 $0a $01
    inc b                                         ; $6b39: $04
    ld [bc], a                                    ; $6b3a: $02
    ld b, $01                                     ; $6b3b: $06 $01
    db $fd                                        ; $6b3d: $fd

    db $02, $0c

    nop                                           ; $6b40: $00
    ld b, $00                                     ; $6b41: $06 $00
    db $06                                        ; $6b43: $06

    db $fc, $fc, $fc, $04, $00, $01, $87, $00, $02, $00, $7c, $74, $8c, $68, $98, $02
    db $18, $74, $08, $8c, $04, $7c, $00, $01, $68, $7e, $7e, $81, $00, $7e, $81, $42
    db $bd, $3c, $ff, $c3, $c3, $c1, $1c, $70, $2d, $08, $3e, $2e, $31, $16, $19, $02
    db $18, $08, $2e, $31, $20, $3e, $24, $78, $08, $f8, $68, $00, $98, $77, $8f, $38
    db $47, $1e, $21, $0e, $10, $11, $00, $0f, $44, $78, $10, $1f, $16, $19, $00, $ee
    db $f1, $1c, $e2, $78, $84, $70, $88, $21, $00, $f0, $3e, $70, $00, $0c, $00, $0e
    db $37, $00, $00, $0f, $01, $0e, $02, $0c, $04, $08, $08, $80, $a0, $70, $3c, $3a
    db $46, $7a, $86, $62, $9e, $02, $60, $90, $00, $f0, $70, $70, $be, $10, $f0, $00
    db $60, $90, $60, $9c, $7a, $86, $3a, $46, $00, $02, $3e, $1e, $1e, $00, $78, $38
    db $44, $00, $3c, $42, $0d, $73, $0d, $13, $01, $1f, $40, $0f, $7e, $18, $1e, $0d
    db $13, $0d, $73, $3d, $00, $43, $3b, $47, $06, $7e, $3c, $3c

    xor d                                         ; $6bf0: $aa
    nop                                           ; $6bf1: $00
    ld d, $00                                     ; $6bf2: $16 $00
    inc h                                         ; $6bf4: $24
    nop                                           ; $6bf5: $00
    ld [hl-], a                                   ; $6bf6: $32
    nop                                           ; $6bf7: $00
    ld b, b                                       ; $6bf8: $40
    nop                                           ; $6bf9: $00
    ld c, h                                       ; $6bfa: $4c
    nop                                           ; $6bfb: $00
    ld e, d                                       ; $6bfc: $5a
    nop                                           ; $6bfd: $00
    ld l, b                                       ; $6bfe: $68
    nop                                           ; $6bff: $00
    halt                                          ; $6c00: $76
    nop                                           ; $6c01: $00
    add h                                         ; $6c02: $84
    nop                                           ; $6c03: $00

Call_0d7_6c04:
    sub d                                         ; $6c04: $92
    nop                                           ; $6c05: $00
    and b                                         ; $6c06: $a0
    nop                                           ; $6c07: $00
    inc b                                         ; $6c08: $04
    nop                                           ; $6c09: $00
    ld hl, sp+$09                                 ; $6c0a: $f8 $09
    ld a, [c]                                     ; $6c0c: $f2
    inc bc                                        ; $6c0d: $03
    db $fc                                        ; $6c0e: $fc
    db $f4                                        ; $6c0f: $f4
    di                                            ; $6c10: $f3
    db $fc                                        ; $6c11: $fc
    pop af                                        ; $6c12: $f1
    inc b                                         ; $6c13: $04
    ld bc, $04f9                                  ; $6c14: $01 $f9 $04
    ld [$09f8], sp                                ; $6c17: $08 $f8 $09
    ld a, [c]                                     ; $6c1a: $f2
    inc bc                                        ; $6c1b: $03
    ld a, [$f1f4]                                 ; $6c1c: $fa $f4 $f1
    db $fc                                        ; $6c1f: $fc
    pop af                                        ; $6c20: $f1
    inc b                                         ; $6c21: $04
    ld bc, $04fb                                  ; $6c22: $01 $fb $04
    db $10                                        ; $6c25: $10
    ld hl, sp+$09                                 ; $6c26: $f8 $09
    ld a, [c]                                     ; $6c28: $f2
    inc bc                                        ; $6c29: $03
    ei                                            ; $6c2a: $fb
    db $f4                                        ; $6c2b: $f4
    ld a, [c]                                     ; $6c2c: $f2

jr_0d7_6c2d:
    db $fc                                        ; $6c2d: $fc
    pop af                                        ; $6c2e: $f1
    inc b                                         ; $6c2f: $04
    ld bc, $03fa                                  ; $6c30: $01 $fa $03
    jr jr_0d7_6c2d                                ; $6c33: $18 $f8

    add hl, bc                                    ; $6c35: $09
    ld a, [c]                                     ; $6c36: $f2
    inc bc                                        ; $6c37: $03
    ei                                            ; $6c38: $fb
    db $f4                                        ; $6c39: $f4
    push af                                       ; $6c3a: $f5
    db $fc                                        ; $6c3b: $fc
    di                                            ; $6c3c: $f3
    inc b                                         ; $6c3d: $04
    inc b                                         ; $6c3e: $04
    ld e, $f8                                     ; $6c3f: $1e $f8
    add hl, bc                                    ; $6c41: $09
    ld a, [c]                                     ; $6c42: $f2
    inc bc                                        ; $6c43: $03
    ld sp, hl                                     ; $6c44: $f9
    db $f4                                        ; $6c45: $f4
    di                                            ; $6c46: $f3
    db $fc                                        ; $6c47: $fc
    di                                            ; $6c48: $f3
    inc b                                         ; $6c49: $04
    inc bc                                        ; $6c4a: $03
    ld sp, hl                                     ; $6c4b: $f9
    inc b                                         ; $6c4c: $04
    ld h, $f8                                     ; $6c4d: $26 $f8
    add hl, bc                                    ; $6c4f: $09
    ld a, [c]                                     ; $6c50: $f2
    inc bc                                        ; $6c51: $03
    ei                                            ; $6c52: $fb
    db $f4                                        ; $6c53: $f4
    db $f4                                        ; $6c54: $f4
    db $fc                                        ; $6c55: $fc
    di                                            ; $6c56: $f3
    inc b                                         ; $6c57: $04
    inc bc                                        ; $6c58: $03
    ld hl, sp+$04                                 ; $6c59: $f8 $04
    ld l, $f8                                     ; $6c5b: $2e $f8
    add hl, bc                                    ; $6c5d: $09
    ld a, [c]                                     ; $6c5e: $f2
    inc bc                                        ; $6c5f: $03
    ei                                            ; $6c60: $fb
    db $f4                                        ; $6c61: $f4
    di                                            ; $6c62: $f3
    db $fc                                        ; $6c63: $fc
    inc bc                                        ; $6c64: $03
    db $fc                                        ; $6c65: $fc
    pop af                                        ; $6c66: $f1
    inc b                                         ; $6c67: $04
    inc b                                         ; $6c68: $04
    ld [hl], $f8                                  ; $6c69: $36 $f8
    add hl, bc                                    ; $6c6b: $09
    ld a, [c]                                     ; $6c6c: $f2
    inc bc                                        ; $6c6d: $03
    ld sp, hl                                     ; $6c6e: $f9
    db $f4                                        ; $6c6f: $f4
    pop af                                        ; $6c70: $f1
    db $fc                                        ; $6c71: $fc
    ld bc, $f1fc                                  ; $6c72: $01 $fc $f1
    inc b                                         ; $6c75: $04
    inc b                                         ; $6c76: $04
    ld a, $f8                                     ; $6c77: $3e $f8
    add hl, bc                                    ; $6c79: $09
    ld a, [c]                                     ; $6c7a: $f2
    inc bc                                        ; $6c7b: $03
    ld a, [$f2f4]                                 ; $6c7c: $fa $f4 $f2
    db $fc                                        ; $6c7f: $fc
    ld [bc], a                                    ; $6c80: $02
    db $fc                                        ; $6c81: $fc
    pop af                                        ; $6c82: $f1
    inc b                                         ; $6c83: $04
    inc b                                         ; $6c84: $04
    ld b, [hl]                                    ; $6c85: $46
    ld hl, sp+$09                                 ; $6c86: $f8 $09
    ld a, [c]                                     ; $6c88: $f2
    inc bc                                        ; $6c89: $03
    rst $30                                       ; $6c8a: $f7
    push af                                       ; $6c8b: $f5
    ldh a, [$fd]                                  ; $6c8c: $f0 $fd
    nop                                           ; $6c8e: $00
    db $fd                                        ; $6c8f: $fd
    ld a, [c]                                     ; $6c90: $f2
    dec b                                         ; $6c91: $05
    ld [bc], a                                    ; $6c92: $02
    ld c, [hl]                                    ; $6c93: $4e
    ld hl, sp+$09                                 ; $6c94: $f8 $09
    ld a, [c]                                     ; $6c96: $f2
    inc bc                                        ; $6c97: $03
    ld a, [$fafa]                                 ; $6c98: $fa $fa $fa
    db $fd                                        ; $6c9b: $fd
    jr nz, jr_0d7_6ca3                            ; $6c9c: $20 $05

    ld a, [de]                                    ; $6c9e: $1a
    ld [bc], a                                    ; $6c9f: $02
    nop                                           ; $6ca0: $00
    inc bc                                        ; $6ca1: $03
    inc bc                                        ; $6ca2: $03

jr_0d7_6ca3:
    dec b                                         ; $6ca3: $05
    rlca                                          ; $6ca4: $07
    dec bc                                        ; $6ca5: $0b
    rrca                                          ; $6ca6: $0f
    ld e, e                                       ; $6ca7: $5b
    ld e, a                                       ; $6ca8: $5f
    nop                                           ; $6ca9: $00
    sbc $ae                                       ; $6caa: $de $ae
    ld h, c                                       ; $6cac: $61
    ld e, a                                       ; $6cad: $5f
    push de                                       ; $6cae: $d5
    cp l                                          ; $6caf: $bd
    ld l, d                                       ; $6cb0: $6a
    ld l, e                                       ; $6cb1: $6b
    inc b                                         ; $6cb2: $04
    ld [bc], a                                    ; $6cb3: $02
    inc bc                                        ; $6cb4: $03
    ld bc, $0001                                  ; $6cb5: $01 $01 $00
    ld bc, $0340                                  ; $6cb8: $01 $40 $03
    inc bc                                        ; $6cbb: $03
    inc b                                         ; $6cbc: $04
    ld [bc], a                                    ; $6cbd: $02
    inc bc                                        ; $6cbe: $03
    rlca                                          ; $6cbf: $07
    rlca                                          ; $6cc0: $07
    inc bc                                        ; $6cc1: $03
    ld bc, $3f00                                  ; $6cc2: $01 $00 $3f
    ccf                                           ; $6cc5: $3f
    nop                                           ; $6cc6: $00
    inc hl                                        ; $6cc7: $23
    ccf                                           ; $6cc8: $3f
    rra                                           ; $6cc9: $1f
    rra                                           ; $6cca: $1f
    ld [hl], h                                    ; $6ccb: $74
    ld a, a                                       ; $6ccc: $7f
    xor l                                         ; $6ccd: $ad
    rst $38                                       ; $6cce: $ff
    nop                                           ; $6ccf: $00
    db $fd                                        ; $6cd0: $fd
    rst $38                                       ; $6cd1: $ff
    db $fc                                        ; $6cd2: $fc
    rst $38                                       ; $6cd3: $ff
    cp $ff                                        ; $6cd4: $fe $ff
    rst $18                                       ; $6cd6: $df
    rst $38                                       ; $6cd7: $ff
    nop                                           ; $6cd8: $00
    xor $fe                                       ; $6cd9: $ee $fe
    sub h                                         ; $6cdb: $94
    db $fc                                        ; $6cdc: $fc
    ret nc                                        ; $6cdd: $d0

    ret nc                                        ; $6cde: $d0

    cp b                                          ; $6cdf: $b8
    ld hl, sp+$00                                 ; $6ce0: $f8 $00
    and $fe                                       ; $6ce2: $e6 $fe
    db $fc                                        ; $6ce4: $fc
    db $fc                                        ; $6ce5: $fc
    db $fc                                        ; $6ce6: $fc
    call nc, $e8f8                                ; $6ce7: $d4 $f8 $e8
    nop                                           ; $6cea: $00
    call c, $fc6c                                 ; $6ceb: $dc $6c $fc
    sub h                                         ; $6cee: $94
    ld hl, sp+$08                                 ; $6cef: $f8 $08
    ldh a, [$90]                                  ; $6cf1: $f0 $90
    nop                                           ; $6cf3: $00
    ldh [$e0], a                                  ; $6cf4: $e0 $e0
    ret nz                                        ; $6cf6: $c0

    ret nz                                        ; $6cf7: $c0

    or a                                          ; $6cf8: $b7
    rst $30                                       ; $6cf9: $f7
    ld a, a                                       ; $6cfa: $7f
    rst $08                                       ; $6cfb: $cf
    ld [$d2fe], sp                                ; $6cfc: $08 $fe $d2
    db $ec                                        ; $6cff: $ec
    db $ec                                        ; $6d00: $ec
    ld c, h                                       ; $6d01: $4c
    ld [$1f1f], sp                                ; $6d02: $08 $1f $1f
    ld a, [de]                                    ; $6d05: $1a
    inc e                                         ; $6d06: $1c
    ld e, $04                                     ; $6d07: $1e $04
    inc b                                         ; $6d09: $04
    ld d, [hl]                                    ; $6d0a: $56
    ld c, b                                       ; $6d0b: $48
    ld h, b                                       ; $6d0c: $60
    ld c, b                                       ; $6d0d: $48
    add b                                         ; $6d0e: $80
    ld [$0f0b], sp                                ; $6d0f: $08 $0b $0f
    nop                                           ; $6d12: $00
    rrca                                          ; $6d13: $0f
    rrca                                          ; $6d14: $0f
    ld d, c                                       ; $6d15: $51
    ld d, c                                       ; $6d16: $51
    sbc $ae                                       ; $6d17: $de $ae
    ld a, c                                       ; $6d19: $79
    ld d, a                                       ; $6d1a: $57
    ret z                                         ; $6d1b: $c8

    add h                                         ; $6d1c: $84
    ld l, b                                       ; $6d1d: $68
    adc [hl]                                      ; $6d1e: $8e
    ld [$0707], sp                                ; $6d1f: $08 $07 $07
    add h                                         ; $6d22: $84
    jr z, jr_0d7_6d44                             ; $6d23: $28 $1f

    rra                                           ; $6d25: $1f
    inc hl                                        ; $6d26: $23
    ld [bc], a                                    ; $6d27: $02
    ccf                                           ; $6d28: $3f
    sbc a                                         ; $6d29: $9f
    sbc a                                         ; $6d2a: $9f
    xor $ff                                       ; $6d2b: $ee $ff
    push de                                       ; $6d2d: $d5
    add h                                         ; $6d2e: $84
    nop                                           ; $6d2f: $00
    ld hl, sp-$80                                 ; $6d30: $f8 $80
    add [hl]                                      ; $6d32: $86
    nop                                           ; $6d33: $00
    rst $10                                       ; $6d34: $d7
    rst $38                                       ; $6d35: $ff
    ret nc                                        ; $6d36: $d0

    ret nc                                        ; $6d37: $d0

    cp h                                          ; $6d38: $bc
    db $fc                                        ; $6d39: $fc
    db $f4                                        ; $6d3a: $f4
    ret nz                                        ; $6d3b: $c0

    ld a, a                                       ; $6d3c: $7f
    nop                                           ; $6d3d: $00
    add b                                         ; $6d3e: $80
    xor b                                         ; $6d3f: $a8
    ld [hl], a                                    ; $6d40: $77
    ld a, a                                       ; $6d41: $7f
    ld c, d                                       ; $6d42: $4a
    ld a, [hl]                                    ; $6d43: $7e

jr_0d7_6d44:
    ld a, h                                       ; $6d44: $7c
    ld a, h                                       ; $6d45: $7c
    ld [$7868], sp                                ; $6d46: $08 $68 $78
    db $10                                        ; $6d49: $10
    db $10                                        ; $6d4a: $10
    add b                                         ; $6d4b: $80
    sbc b                                         ; $6d4c: $98
    ld bc, $0601                                  ; $6d4d: $01 $01 $06
    add b                                         ; $6d50: $80
    nop                                           ; $6d51: $00
    ld bc, $0707                                  ; $6d52: $01 $07 $07
    ld d, e                                       ; $6d55: $53
    ld d, e                                       ; $6d56: $53
    sbc $ae                                       ; $6d57: $de $ae
    ld l, a                                       ; $6d59: $6f
    ld b, c                                       ; $6d5a: $41
    ld d, e                                       ; $6d5b: $53
    ld [bc], a                                    ; $6d5c: $02
    ld a, c                                       ; $6d5d: $79
    ld bc, $0301                                  ; $6d5e: $01 $01 $03
    inc bc                                        ; $6d61: $03
    inc b                                         ; $6d62: $04
    nop                                           ; $6d63: $00
    ld bc, $0700                                  ; $6d64: $01 $00 $07
    rlca                                          ; $6d67: $07
    dec de                                        ; $6d68: $1b
    dec de                                        ; $6d69: $1b
    daa                                           ; $6d6a: $27
    ccf                                           ; $6d6b: $3f
    add hl, de                                    ; $6d6c: $19
    rra                                           ; $6d6d: $1f
    ld [bc], a                                    ; $6d6e: $02
    rrca                                          ; $6d6f: $0f
    rrca                                          ; $6d70: $0f
    ld e, $1f                                     ; $6d71: $1e $1f
    cp l                                          ; $6d73: $bd
    cp a                                          ; $6d74: $bf
    ld a, [hl]                                    ; $6d75: $7e
    jr @+$01                                      ; $6d76: $18 $ff

    add b                                         ; $6d78: $80
    ld [bc], a                                    ; $6d79: $02
    ld bc, $a0a0                                  ; $6d7a: $01 $a0 $a0
    ld a, h                                       ; $6d7d: $7c
    db $fc                                        ; $6d7e: $fc
    db $e4                                        ; $6d7f: $e4
    db $fc                                        ; $6d80: $fc
    ld hl, sp+$44                                 ; $6d81: $f8 $44
    ld hl, sp+$00                                 ; $6d83: $f8 $00
    ld l, c                                       ; $6d85: $69
    scf                                           ; $6d86: $37
    rst $30                                       ; $6d87: $f7
    rst $38                                       ; $6d88: $ff
    nop                                           ; $6d89: $00
    ld hl, $3f25                                  ; $6d8a: $21 $25 $3f
    ld [bc], a                                    ; $6d8d: $02
    ld a, $3e                                     ; $6d8e: $3e $3e
    inc [hl]                                      ; $6d90: $34
    inc a                                         ; $6d91: $3c
    ld [$0008], sp                                ; $6d92: $08 $08 $00
    sbc c                                         ; $6d95: $99
    rlca                                          ; $6d96: $07
    nop                                           ; $6d97: $00
    rlca                                          ; $6d98: $07
    rrca                                          ; $6d99: $0f
    rrca                                          ; $6d9a: $0f
    ld l, e                                       ; $6d9b: $6b
    ld l, a                                       ; $6d9c: $6f
    db $db                                        ; $6d9d: $db
    cp a                                          ; $6d9e: $bf
    ld a, a                                       ; $6d9f: $7f
    rlca                                          ; $6da0: $07
    ld c, a                                       ; $6da1: $4f
    rst $10                                       ; $6da2: $d7
    cp a                                          ; $6da3: $bf
    ld a, c                                       ; $6da4: $79
    ld a, c                                       ; $6da5: $79
    ld l, [hl]                                    ; $6da6: $6e
    add hl, bc                                    ; $6da7: $09
    add d                                         ; $6da8: $82
    ld e, c                                       ; $6da9: $59
    add b                                         ; $6daa: $80
    add hl, de                                    ; $6dab: $19
    nop                                           ; $6dac: $00
    inc de                                        ; $6dad: $13
    inc de                                        ; $6dae: $13
    cpl                                           ; $6daf: $2f
    ccf                                           ; $6db0: $3f
    inc sp                                        ; $6db1: $33
    ccf                                           ; $6db2: $3f
    db $ed                                        ; $6db3: $ed
    rst $38                                       ; $6db4: $ff
    db $10                                        ; $6db5: $10
    ld e, a                                       ; $6db6: $5f
    rst $38                                       ; $6db7: $ff
    cp h                                          ; $6db8: $bc
    ld a, [hl]                                    ; $6db9: $7e
    ld bc, $ff7c                                  ; $6dba: $01 $7c $ff
    xor [hl]                                      ; $6dbd: $ae
    rst $38                                       ; $6dbe: $ff
    nop                                           ; $6dbf: $00
    or a                                          ; $6dc0: $b7
    rst $38                                       ; $6dc1: $ff
    ld a, b                                       ; $6dc2: $78
    ld hl, sp-$58                                 ; $6dc3: $f8 $a8
    cp b                                          ; $6dc5: $b8
    or b                                          ; $6dc6: $b0
    or b                                          ; $6dc7: $b0
    add b                                         ; $6dc8: $80
    add b                                         ; $6dc9: $80
    sbc c                                         ; $6dca: $99
    add b                                         ; $6dcb: $80
    add b                                         ; $6dcc: $80
    ld h, b                                       ; $6dcd: $60
    ldh [$fe], a                                  ; $6dce: $e0 $fe
    sbc [hl]                                      ; $6dd0: $9e
    rst $38                                       ; $6dd1: $ff
    nop                                           ; $6dd2: $00
    and a                                         ; $6dd3: $a7
    ld e, b                                       ; $6dd4: $58
    ld e, b                                       ; $6dd5: $58
    rlca                                          ; $6dd6: $07
    rlca                                          ; $6dd7: $07
    add hl, bc                                    ; $6dd8: $09
    rrca                                          ; $6dd9: $0f
    rla                                           ; $6dda: $17
    nop                                           ; $6ddb: $00
    rra                                           ; $6ddc: $1f
    rra                                           ; $6ddd: $1f
    rra                                           ; $6dde: $1f
    ld l, a                                       ; $6ddf: $6f
    ld l, a                                       ; $6de0: $6f
    rst $10                                       ; $6de1: $d7
    or a                                          ; $6de2: $b7
    ld a, l                                       ; $6de3: $7d
    ld h, b                                       ; $6de4: $60
    ld c, e                                       ; $6de5: $4b
    ld h, h                                       ; $6de6: $64
    ld a, b                                       ; $6de7: $78
    ld h, b                                       ; $6de8: $60
    add hl, sp                                    ; $6de9: $39
    inc sp                                        ; $6dea: $33
    inc sp                                        ; $6deb: $33
    cpl                                           ; $6dec: $2f
    ccf                                           ; $6ded: $3f
    rst $30                                       ; $6dee: $f7
    ld [$59ff], sp                                ; $6def: $08 $ff $59

jr_0d7_6df2:
    rst $38                                       ; $6df2: $ff
    xor a                                         ; $6df3: $af
    sbc $01                                       ; $6df4: $de $01
    db $fd                                        ; $6df6: $fd
    rst $38                                       ; $6df7: $ff
    inc a                                         ; $6df8: $3c
    jr c, @+$01                                   ; $6df9: $38 $ff

    xor h                                         ; $6dfb: $ac
    ld h, h                                       ; $6dfc: $64
    db $10                                        ; $6dfd: $10
    ld h, b                                       ; $6dfe: $60
    sbc c                                         ; $6dff: $99

Call_0d7_6e00:
    ld h, b                                       ; $6e00: $60
    jr c, jr_0d7_6e18                             ; $6e01: $38 $15

    rla                                           ; $6e03: $17
    ld d, $60                                     ; $6e04: $16 $60
    ld d, $da                                     ; $6e06: $16 $da
    sbc c                                         ; $6e08: $99
    ld b, [hl]                                    ; $6e09: $46
    ld a, [de]                                    ; $6e0a: $1a
    inc c                                         ; $6e0b: $0c
    inc c                                         ; $6e0c: $0c
    dec bc                                        ; $6e0d: $0b
    rrca                                          ; $6e0e: $0f
    ld l, a                                       ; $6e0f: $6f
    inc c                                         ; $6e10: $0c
    ld l, a                                       ; $6e11: $6f
    rst $18                                       ; $6e12: $df
    cp a                                          ; $6e13: $bf
    ld a, e                                       ; $6e14: $7b
    ldh [$a0], a                                  ; $6e15: $e0 $a0
    ld h, b                                       ; $6e17: $60

jr_0d7_6e18:
    add hl, hl                                    ; $6e18: $29
    rra                                           ; $6e19: $1f
    rra                                           ; $6e1a: $1f
    ld bc, $3f27                                  ; $6e1b: $01 $27 $3f
    dec de                                        ; $6e1e: $1b
    rra                                           ; $6e1f: $1f
    dec a                                         ; $6e20: $3d
    ccf                                           ; $6e21: $3f
    rst $38                                       ; $6e22: $ff
    ld e, d                                       ; $6e23: $5a
    ld [bc], a                                    ; $6e24: $02
    ld e, h                                       ; $6e25: $5c
    ld sp, hl                                     ; $6e26: $f9
    ld h, b                                       ; $6e27: $60
    ld [bc], a                                    ; $6e28: $02
    cp h                                          ; $6e29: $bc
    ld [c], a                                     ; $6e2a: $e2
    jr nz, @+$62                                  ; $6e2b: $20 $60

    add hl, bc                                    ; $6e2d: $09
    ldh [$c8], a                                  ; $6e2e: $e0 $c8
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    jr nc, jr_0d7_6e3f                            ; $6e32: $30 $0b

    dec bc                                        ; $6e34: $0b
    add b                                         ; $6e35: $80
    ret z                                         ; $6e36: $c8

    ld h, b                                       ; $6e37: $60
    ld a, [hl+]                                   ; $6e38: $2a
    rra                                           ; $6e39: $1f
    rra                                           ; $6e3a: $1f
    rlca                                          ; $6e3b: $07
    rlca                                          ; $6e3c: $07
    nop                                           ; $6e3d: $00
    ld e, a                                       ; $6e3e: $5f

jr_0d7_6e3f:
    ld e, a                                       ; $6e3f: $5f
    pop de                                        ; $6e40: $d1
    xor a                                         ; $6e41: $af
    ld h, l                                       ; $6e42: $65
    ld e, l                                       ; $6e43: $5d
    ret c                                         ; $6e44: $d8

    cp b                                          ; $6e45: $b8
    jr nc, jr_0d7_6ea8                            ; $6e46: $30 $60

    ld h, b                                       ; $6e48: $60
    ldh [$7a], a                                  ; $6e49: $e0 $7a
    sbc $1a                                       ; $6e4b: $de $1a
    scf                                           ; $6e4d: $37
    ccf                                           ; $6e4e: $3f
    db $ec                                        ; $6e4f: $ec
    rst $38                                       ; $6e50: $ff
    ld b, b                                       ; $6e51: $40
    cp l                                          ; $6e52: $bd
    sbc $12                                       ; $6e53: $de $12
    rst $28                                       ; $6e55: $ef
    rst $38                                       ; $6e56: $ff
    and $fe                                       ; $6e57: $e6 $fe
    jp c, $03fe                                   ; $6e59: $da $fe $03

    ld a, h                                       ; $6e5c: $7c
    db $fc                                        ; $6e5d: $fc
    ld l, b                                       ; $6e5e: $68

jr_0d7_6e5f:
    ld hl, sp-$70                                 ; $6e5f: $f8 $90
    sub b                                         ; $6e61: $90
    ldh [$c8], a                                  ; $6e62: $e0 $c8
    nop                                           ; $6e64: $00
    ld a, e                                       ; $6e65: $7b
    jr nz, jr_0d7_6e5f                            ; $6e66: $20 $f7

    sub a                                         ; $6e68: $97
    call nz, $ca00                                ; $6e69: $c4 $00 $ca
    ld a, h                                       ; $6e6c: $7c
    call nc, $e868                                ; $6e6d: $d4 $68 $e8
    jr nc, jr_0d7_6df2                            ; $6e70: $30 $80

    add b                                         ; $6e72: $80
    ldh [rWY], a                                  ; $6e73: $e0 $4a
    ld e, b                                       ; $6e75: $58
    dec bc                                        ; $6e76: $0b
    ld bc, $5f01                                  ; $6e77: $01 $01 $5f
    ld e, a                                       ; $6e7a: $5f
    jr c, @-$21                                   ; $6e7b: $38 $dd

    and e                                         ; $6e7d: $a3
    add h                                         ; $6e7e: $84
    ld c, b                                       ; $6e7f: $48
    ldh [rWY], a                                  ; $6e80: $e0 $4a
    sbc $1a                                       ; $6e82: $de $1a
    rst $28                                       ; $6e84: $ef
    rst $38                                       ; $6e85: $ff
    sub $bd                                       ; $6e86: $d6 $bd
    sbc $22                                       ; $6e88: $de $22
    rst $08                                       ; $6e8a: $cf
    add h                                         ; $6e8b: $84
    ld hl, sp-$80                                 ; $6e8c: $f8 $80
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    ld l, e                                       ; $6e90: $6b
    add b                                         ; $6e91: $80
    jr z, @-$16                                   ; $6e92: $28 $e8

    add b                                         ; $6e94: $80
    db $10                                        ; $6e95: $10
    ld de, $0101                                  ; $6e96: $11 $01 $01
    ld c, $5e                                     ; $6e99: $0e $5e
    inc de                                        ; $6e9b: $13
    rlca                                          ; $6e9c: $07
    rlca                                          ; $6e9d: $07
    ld bc, $0001                                  ; $6e9e: $01 $01 $00
    inc c                                         ; $6ea1: $0c
    ld e, a                                       ; $6ea2: $5f
    ld e, a                                       ; $6ea3: $5f
    reti                                          ; $6ea4: $d9


    and a                                         ; $6ea5: $a7
    ld [bc], a                                    ; $6ea6: $02
    ld e, c                                       ; $6ea7: $59

jr_0d7_6ea8:
    ldh [$3a], a                                  ; $6ea8: $e0 $3a
    rlca                                          ; $6eaa: $07
    rlca                                          ; $6eab: $07
    ld b, l                                       ; $6eac: $45
    add hl, de                                    ; $6ead: $19
    add h                                         ; $6eae: $84
    ld bc, $1f1f                                  ; $6eaf: $01 $1f $1f
    cp [hl]                                       ; $6eb2: $be
    sbc $12                                       ; $6eb3: $de $12
    cp $de                                        ; $6eb5: $fe $de
    ld [bc], a                                    ; $6eb7: $02
    sbc [hl]                                      ; $6eb8: $9e
    ld [bc], a                                    ; $6eb9: $02
    ld sp, hl                                     ; $6eba: $f9
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    and b                                         ; $6ebd: $a0
    ld a, c                                       ; $6ebe: $79
    nop                                           ; $6ebf: $00
    ld e, c                                       ; $6ec0: $59
    halt                                          ; $6ec1: $76
    ld [$1886], sp                                ; $6ec2: $08 $86 $18
    rla                                           ; $6ec5: $17
    ld [bc], a                                    ; $6ec6: $02
    rra                                           ; $6ec7: $1f
    cpl                                           ; $6ec8: $2f
    ccf                                           ; $6ec9: $3f
    inc de                                        ; $6eca: $13
    rra                                           ; $6ecb: $1f
    ld l, h                                       ; $6ecc: $6c
    inc c                                         ; $6ecd: $0c
    ld [bc], a                                    ; $6ece: $02
    ld [hl], l                                    ; $6ecf: $75
    inc b                                         ; $6ed0: $04
    ld c, a                                       ; $6ed1: $4f
    db $db                                        ; $6ed2: $db
    cp a                                          ; $6ed3: $bf
    ld [hl], l                                    ; $6ed4: $75
    ld [hl], l                                    ; $6ed5: $75
    ld [$021a], a                                 ; $6ed6: $ea $1a $02
    ld [bc], a                                    ; $6ed9: $02
    ld [bc], a                                    ; $6eda: $02
    ld c, $0e                                     ; $6edb: $0e $0e
    dec sp                                        ; $6edd: $3b
    ccf                                           ; $6ede: $3f
    ld e, l                                       ; $6edf: $5d
    ld a, a                                       ; $6ee0: $7f
    ld bc, $6900                                  ; $6ee1: $01 $00 $69
    nop                                           ; $6ee4: $00
    cp a                                          ; $6ee5: $bf
    or [hl]                                       ; $6ee6: $b6
    ld a, a                                       ; $6ee7: $7f
    sub $3f                                       ; $6ee8: $d6 $3f
    jp hl                                         ; $6eea: $e9


    rst $38                                       ; $6eeb: $ff
    ld a, [c]                                     ; $6eec: $f2
    nop                                           ; $6eed: $00
    ld l, a                                       ; $6eee: $6f
    ld sp, hl                                     ; $6eef: $f9
    xor $ff                                       ; $6ef0: $ee $ff
    and $ff                                       ; $6ef2: $e6 $ff
    rst $20                                       ; $6ef4: $e7
    rst $38                                       ; $6ef5: $ff
    nop                                           ; $6ef6: $00
    and a                                         ; $6ef7: $a7
    cp $77                                        ; $6ef8: $fe $77
    ei                                            ; $6efa: $fb
    rst $38                                       ; $6efb: $ff
    di                                            ; $6efc: $f3
    ccf                                           ; $6efd: $3f
    ld sp, hl                                     ; $6efe: $f9
    nop                                           ; $6eff: $00

Call_0d7_6f00:
    ld c, [hl]                                    ; $6f00: $4e
    adc $4e                                       ; $6f01: $ce $4e
    adc $8a                                       ; $6f03: $ce $8a
    adc [hl]                                      ; $6f05: $8e
    ld b, h                                       ; $6f06: $44
    call nz, Call_0d7_50c3                        ; $6f07: $c4 $c3 $50
    add hl, bc                                    ; $6f0a: $09
    ld b, [hl]                                    ; $6f0b: $46
    ld l, h                                       ; $6f0c: $6c
    ret nz                                        ; $6f0d: $c0

    ret nz                                        ; $6f0e: $c0

    add b                                         ; $6f0f: $80
    add b                                         ; $6f10: $80
    ldh a, [$0a]                                  ; $6f11: $f0 $0a
    ld [bc], a                                    ; $6f13: $02
    jr z, @+$2a                                   ; $6f14: $28 $28

    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    inc c                                         ; $6f18: $0c
    ld [$1640], sp                                ; $6f19: $08 $40 $16
    nop                                           ; $6f1c: $00
    ldh a, [$f0]                                  ; $6f1d: $f0 $f0
    ld hl, sp+$00                                 ; $6f1f: $f8 $00
    ld hl, sp+$00                                 ; $6f21: $f8 $00
    nop                                           ; $6f23: $00
    add hl, de                                    ; $6f24: $19
    add hl, de                                    ; $6f25: $19
    rla                                           ; $6f26: $17
    rra                                           ; $6f27: $1f
    halt                                          ; $6f28: $76
    nop                                           ; $6f29: $00
    ld a, a                                       ; $6f2a: $7f
    ld e, a                                       ; $6f2b: $5f
    ld a, a                                       ; $6f2c: $7f
    cp a                                          ; $6f2d: $bf
    cp $b7                                        ; $6f2e: $fe $b7
    ld sp, hl                                     ; $6f30: $f9
    ld l, e                                       ; $6f31: $6b
    nop                                           ; $6f32: $00
    ld a, [hl]                                    ; $6f33: $7e
    ld a, a                                       ; $6f34: $7f
    ld [hl], d                                    ; $6f35: $72
    dec a                                         ; $6f36: $3d
    dec hl                                        ; $6f37: $2b
    ccf                                           ; $6f38: $3f
    jr nc, jr_0d7_6f4a                            ; $6f39: $30 $0f

    db $10                                        ; $6f3b: $10
    add hl, bc                                    ; $6f3c: $09
    ld b, $06                                     ; $6f3d: $06 $06
    db $e4                                        ; $6f3f: $e4
    inc a                                         ; $6f40: $3c
    inc b                                         ; $6f41: $04
    inc b                                         ; $6f42: $04
    inc bc                                        ; $6f43: $03
    rlca                                          ; $6f44: $07
    ld [bc], a                                    ; $6f45: $02
    ld b, $06                                     ; $6f46: $06 $06
    inc b                                         ; $6f48: $04
    inc b                                         ; $6f49: $04

jr_0d7_6f4a:
    ld b, $02                                     ; $6f4a: $06 $02
    inc b                                         ; $6f4c: $04
    nop                                           ; $6f4d: $00
    ld b, $c0                                     ; $6f4e: $06 $c0
    ld b, $08                                     ; $6f50: $06 $08
    nop                                           ; $6f52: $00
    ld c, l                                       ; $6f53: $4d
    inc [hl]                                      ; $6f54: $34
    nop                                           ; $6f55: $00
    ld [$1400], sp                                ; $6f56: $08 $00 $14
    nop                                           ; $6f59: $00
    jr nz, jr_0d7_6f5c                            ; $6f5a: $20 $00

jr_0d7_6f5c:
    inc l                                         ; $6f5c: $2c
    nop                                           ; $6f5d: $00
    inc bc                                        ; $6f5e: $03
    nop                                           ; $6f5f: $00
    ld hl, sp+$09                                 ; $6f60: $f8 $09
    ld a, [c]                                     ; $6f62: $f2
    inc bc                                        ; $6f63: $03
    db $fc                                        ; $6f64: $fc
    db $f4                                        ; $6f65: $f4
    db $f4                                        ; $6f66: $f4
    db $fc                                        ; $6f67: $fc
    di                                            ; $6f68: $f3
    inc b                                         ; $6f69: $04
    inc bc                                        ; $6f6a: $03
    ld b, $f8                                     ; $6f6b: $06 $f8
    add hl, bc                                    ; $6f6d: $09
    ld a, [c]                                     ; $6f6e: $f2
    inc bc                                        ; $6f6f: $03
    ld a, [$f4f4]                                 ; $6f70: $fa $f4 $f4
    db $fc                                        ; $6f73: $fc
    di                                            ; $6f74: $f3
    inc b                                         ; $6f75: $04
    inc bc                                        ; $6f76: $03
    inc c                                         ; $6f77: $0c
    ld hl, sp+$09                                 ; $6f78: $f8 $09
    ld a, [c]                                     ; $6f7a: $f2
    inc bc                                        ; $6f7b: $03
    ei                                            ; $6f7c: $fb
    db $f4                                        ; $6f7d: $f4
    db $f4                                        ; $6f7e: $f4
    db $fc                                        ; $6f7f: $fc
    di                                            ; $6f80: $f3
    inc b                                         ; $6f81: $04
    ld bc, $f812                                  ; $6f82: $01 $12 $f8
    add hl, bc                                    ; $6f85: $09
    ld a, [c]                                     ; $6f86: $f2
    inc bc                                        ; $6f87: $03
    db $fc                                        ; $6f88: $fc
    db $fc                                        ; $6f89: $fc
    ld b, b                                       ; $6f8a: $40
    ld bc, $00a0                                  ; $6f8b: $01 $a0 $00
    nop                                           ; $6f8e: $00
    inc bc                                        ; $6f8f: $03
    inc bc                                        ; $6f90: $03
    dec b                                         ; $6f91: $05
    rlca                                          ; $6f92: $07
    dec bc                                        ; $6f93: $0b
    rrca                                          ; $6f94: $0f
    ld l, e                                       ; $6f95: $6b
    ld l, a                                       ; $6f96: $6f
    nop                                           ; $6f97: $00
    sbc $be                                       ; $6f98: $de $be
    ld l, c                                       ; $6f9a: $69
    ld d, a                                       ; $6f9b: $57
    rst $18                                       ; $6f9c: $df
    xor a                                         ; $6f9d: $af
    ld d, [hl]                                    ; $6f9e: $56
    ld d, a                                       ; $6f9f: $57
    inc b                                         ; $6fa0: $04
    dec b                                         ; $6fa1: $05
    rlca                                          ; $6fa2: $07
    ld [bc], a                                    ; $6fa3: $02
    ld [bc], a                                    ; $6fa4: $02
    nop                                           ; $6fa5: $00
    ld bc, $0140                                  ; $6fa6: $01 $40 $01
    ld bc, $0320                                  ; $6fa9: $01 $20 $03
    ld [bc], a                                    ; $6fac: $02
    ld [bc], a                                    ; $6fad: $02
    nop                                           ; $6fae: $00
    inc bc                                        ; $6faf: $03
    rra                                           ; $6fb0: $1f
    rra                                           ; $6fb1: $1f
    inc hl                                        ; $6fb2: $23
    ccf                                           ; $6fb3: $3f
    nop                                           ; $6fb4: $00
    rra                                           ; $6fb5: $1f
    rra                                           ; $6fb6: $1f
    ld [hl], h                                    ; $6fb7: $74
    ld a, a                                       ; $6fb8: $7f
    xor l                                         ; $6fb9: $ad
    rst $38                                       ; $6fba: $ff
    db $fd                                        ; $6fbb: $fd
    rst $38                                       ; $6fbc: $ff
    nop                                           ; $6fbd: $00
    db $fc                                        ; $6fbe: $fc
    rst $38                                       ; $6fbf: $ff
    cp $ff                                        ; $6fc0: $fe $ff
    rst $18                                       ; $6fc2: $df
    rst $38                                       ; $6fc3: $ff
    xor $fe                                       ; $6fc4: $ee $fe
    db $10                                        ; $6fc6: $10
    sbc h                                         ; $6fc7: $9c
    db $fc                                        ; $6fc8: $fc
    ld hl, sp+$01                                 ; $6fc9: $f8 $01
    nop                                           ; $6fcb: $00
    db $fc                                        ; $6fcc: $fc
    inc [hl]                                      ; $6fcd: $34
    db $fc                                        ; $6fce: $fc
    ld e, h                                       ; $6fcf: $5c
    nop                                           ; $6fd0: $00
    db $fc                                        ; $6fd1: $fc
    db $ec                                        ; $6fd2: $ec
    cp $b2                                        ; $6fd3: $fe $b2
    db $fc                                        ; $6fd5: $fc
    inc b                                         ; $6fd6: $04
    ld hl, sp-$68                                 ; $6fd7: $f8 $98
    nop                                           ; $6fd9: $00
    ld hl, sp-$78                                 ; $6fda: $f8 $88
    ldh a, [$f0]                                  ; $6fdc: $f0 $f0
    ret nz                                        ; $6fde: $c0

    ret nz                                        ; $6fdf: $c0

    or a                                          ; $6fe0: $b7
    rst $30                                       ; $6fe1: $f7
    inc bc                                        ; $6fe2: $03
    ld a, a                                       ; $6fe3: $7f
    rst $08                                       ; $6fe4: $cf
    cp $d2                                        ; $6fe5: $fe $d2
    db $ec                                        ; $6fe7: $ec
    db $ec                                        ; $6fe8: $ec
    ld c, b                                       ; $6fe9: $48
    ld [$1860], sp                                ; $6fea: $08 $60 $18
    nop                                           ; $6fed: $00
    dec bc                                        ; $6fee: $0b
    rrca                                          ; $6fef: $0f
    rrca                                          ; $6ff0: $0f
    rrca                                          ; $6ff1: $0f
    ld l, c                                       ; $6ff2: $69
    ld l, c                                       ; $6ff3: $69
    sub $be                                       ; $6ff4: $d6 $be
    jr nc, @+$6f                                  ; $6ff6: $30 $6d

    ld d, e                                       ; $6ff8: $53
    ld h, h                                       ; $6ff9: $64
    ld l, b                                       ; $6ffa: $68
    ld h, b                                       ; $6ffb: $60
    jr z, jr_0d7_703d                             ; $6ffc: $28 $3f

    ccf                                           ; $6ffe: $3f
    dec hl                                        ; $6fff: $2b
    ccf                                           ; $7000: $3f
    dec b                                         ; $7001: $05
    sub a                                         ; $7002: $97
    sbc a                                         ; $7003: $9f
    xor $ff                                       ; $7004: $ee $ff
    push de                                       ; $7006: $d5
    ld h, b                                       ; $7007: $60
    nop                                           ; $7008: $00
    ld hl, sp+$62                                 ; $7009: $f8 $62
    nop                                           ; $700b: $00
    ld h, d                                       ; $700c: $62
    rst $10                                       ; $700d: $d7
    ld h, b                                       ; $700e: $60
    ld hl, sp+$60                                 ; $700f: $f8 $60
    db $10                                        ; $7011: $10
    ld bc, $0601                                  ; $7012: $01 $01 $06
    ret nz                                        ; $7015: $c0

    nop                                           ; $7016: $00
    rlca                                          ; $7017: $07
    inc bc                                        ; $7018: $03
    rlca                                          ; $7019: $07
    ld l, e                                       ; $701a: $6b
    ld l, e                                       ; $701b: $6b
    sub $be                                       ; $701c: $d6 $be
    ld l, a                                       ; $701e: $6f
    ld e, [hl]                                    ; $701f: $5e
    ld [hl], b                                    ; $7020: $70
    ret nz                                        ; $7021: $c0

    jr z, jr_0d7_7024                             ; $7022: $28 $00

jr_0d7_7024:
    dec de                                        ; $7024: $1b
    dec de                                        ; $7025: $1b
    daa                                           ; $7026: $27
    ccf                                           ; $7027: $3f
    add hl, de                                    ; $7028: $19
    rra                                           ; $7029: $1f
    rrca                                          ; $702a: $0f
    rrca                                          ; $702b: $0f
    ld a, [bc]                                    ; $702c: $0a
    ld e, $1f                                     ; $702d: $1e $1f
    cp l                                          ; $702f: $bd

jr_0d7_7030:
    cp a                                          ; $7030: $bf
    ld h, b                                       ; $7031: $60
    jr @+$01                                      ; $7032: $18 $ff

    ret nz                                        ; $7034: $c0

    ret nz                                        ; $7035: $c0

    scf                                           ; $7036: $37
    jr nz, jr_0d7_7030                            ; $7037: $20 $f7

    rst $38                                       ; $7039: $ff
    ret nz                                        ; $703a: $c0

    jr nc, jr_0d7_70b9                            ; $703b: $30 $7c

jr_0d7_703d:
    ld a, h                                       ; $703d: $7c
    sbc d                                         ; $703e: $9a
    cp $2e                                        ; $703f: $fe $2e
    nop                                           ; $7041: $00
    cp $7e                                        ; $7042: $fe $7e
    or $ff                                        ; $7044: $f6 $ff
    reti                                          ; $7046: $d9


    cp $82                                        ; $7047: $fe $82
    ld a, h                                       ; $7049: $7c
    inc b                                         ; $704a: $04
    ld c, h                                       ; $704b: $4c
    ld a, h                                       ; $704c: $7c
    ld b, h                                       ; $704d: $44
    jr c, jr_0d7_7088                             ; $704e: $38 $38

    ld e, $49                                     ; $7050: $1e $49
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    inc [hl]                                      ; $7054: $34
    nop                                           ; $7055: $00
    ld [$1400], sp                                ; $7056: $08 $00 $14
    nop                                           ; $7059: $00
    jr nz, jr_0d7_705c                            ; $705a: $20 $00

jr_0d7_705c:
    ld a, [hl+]                                   ; $705c: $2a
    nop                                           ; $705d: $00
    inc bc                                        ; $705e: $03
    nop                                           ; $705f: $00
    ld hl, sp+$0b                                 ; $7060: $f8 $0b
    db $fc                                        ; $7062: $fc
    rlca                                          ; $7063: $07
    ld a, [$faf6]                                 ; $7064: $fa $f6 $fa
    cp $fa                                        ; $7067: $fe $fa
    ld b, $03                                     ; $7069: $06 $03
    ld b, $f8                                     ; $706b: $06 $f8
    dec bc                                        ; $706d: $0b
    db $fc                                        ; $706e: $fc
    rlca                                          ; $706f: $07
    rst $30                                       ; $7070: $f7
    db $f4                                        ; $7071: $f4
    rst $30                                       ; $7072: $f7
    db $fc                                        ; $7073: $fc
    rst $30                                       ; $7074: $f7
    inc bc                                        ; $7075: $03
    ld [bc], a                                    ; $7076: $02
    inc c                                         ; $7077: $0c
    ld hl, sp+$0b                                 ; $7078: $f8 $0b
    db $fc                                        ; $707a: $fc
    rlca                                          ; $707b: $07
    rst $30                                       ; $707c: $f7
    ei                                            ; $707d: $fb
    ld a, [$02ff]                                 ; $707e: $fa $ff $02
    db $10                                        ; $7081: $10
    ld hl, sp+$0b                                 ; $7082: $f8 $0b
    db $fc                                        ; $7084: $fc
    rlca                                          ; $7085: $07
    rst $30                                       ; $7086: $f7
    ei                                            ; $7087: $fb

jr_0d7_7088:
    ld sp, hl                                     ; $7088: $f9
    rst $38                                       ; $7089: $ff
    ld b, b                                       ; $708a: $40
    ld bc, $00d3                                  ; $708b: $01 $d3 $00
    ld b, b                                       ; $708e: $40
    nop                                           ; $708f: $00
    ld bc, $0f10                                  ; $7090: $01 $10 $0f
    rrca                                          ; $7093: $0f
    ccf                                           ; $7094: $3f
    jr nc, jr_0d7_7116                            ; $7095: $30 $7f

    ld b, b                                       ; $7097: $40
    jr nz, @+$01                                  ; $7098: $20 $ff

    add b                                         ; $709a: $80
    ld [bc], a                                    ; $709b: $02
    db $10                                        ; $709c: $10
    ret nz                                        ; $709d: $c0

    cp a                                          ; $709e: $bf
    pop hl                                        ; $709f: $e1
    ld a, a                                       ; $70a0: $7f
    ld h, d                                       ; $70a1: $62

jr_0d7_70a2:
    ld bc, $745f                                  ; $70a2: $01 $5f $74
    cpl                                           ; $70a5: $2f
    add hl, sp                                    ; $70a6: $39
    ld d, $1f                                     ; $70a7: $16 $1f
    rrca                                          ; $70a9: $0f
    ld bc, $8000                                  ; $70aa: $01 $00 $80
    ld a, [de]                                    ; $70ad: $1a
    jr nz, @+$42                                  ; $70ae: $20 $40

    rst $38                                       ; $70b0: $ff
    jr nz, jr_0d7_70a2                            ; $70b1: $20 $ef

    db $10                                        ; $70b3: $10
    rst $30                                       ; $70b4: $f7
    ld [$fb00], sp                                ; $70b5: $08 $00 $fb
    dec b                                         ; $70b8: $05

jr_0d7_70b9:
    rst $38                                       ; $70b9: $ff
    ld a, [hl]                                    ; $70ba: $7e
    rst $38                                       ; $70bb: $ff
    add e                                         ; $70bc: $83
    rst $38                                       ; $70bd: $ff
    rlca                                          ; $70be: $07
    nop                                           ; $70bf: $00

jr_0d7_70c0:
    ld sp, hl                                     ; $70c0: $f9
    ld a, a                                       ; $70c1: $7f
    add [hl]                                      ; $70c2: $86
    cp $38                                        ; $70c3: $fe $38
    ld hl, sp-$40                                 ; $70c5: $f8 $c0
    ret nz                                        ; $70c7: $c0

    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    ret nz                                        ; $70cb: $c0

    ret nz                                        ; $70cc: $c0

    ldh [rNR41], a                                ; $70cd: $e0 $20
    ldh a, [rNR10]                                ; $70cf: $f0 $10
    nop                                           ; $70d1: $00
    ld hl, sp+$08                                 ; $70d2: $f8 $08
    db $fc                                        ; $70d4: $fc
    inc e                                         ; $70d5: $1c
    cp $62                                        ; $70d6: $fe $62
    rst $38                                       ; $70d8: $ff
    add c                                         ; $70d9: $81
    ret nz                                        ; $70da: $c0

    ld a, [de]                                    ; $70db: $1a
    ld c, b                                       ; $70dc: $48
    ld [bc], a                                    ; $70dd: $02
    ld c, b                                       ; $70de: $48
    ld a, a                                       ; $70df: $7f
    ld a, a                                       ; $70e0: $7f
    cp a                                          ; $70e1: $bf
    pop af                                        ; $70e2: $f1
    ld e, a                                       ; $70e3: $5f
    ld a, b                                       ; $70e4: $78
    nop                                           ; $70e5: $00
    cpl                                           ; $70e6: $2f
    inc a                                         ; $70e7: $3c
    rla                                           ; $70e8: $17
    ld e, $0b                                     ; $70e9: $1e $0b
    rrca                                          ; $70eb: $0f
    dec b                                         ; $70ec: $05
    rlca                                          ; $70ed: $07
    ld [$0302], sp                                ; $70ee: $08 $02 $03
    ld bc, $7a01                                  ; $70f1: $01 $01 $7a
    jr jr_0d7_70f9                                ; $70f4: $18 $03

    inc bc                                        ; $70f6: $03
    ld b, $00                                     ; $70f7: $06 $00

jr_0d7_70f9:
    rlca                                          ; $70f9: $07
    rrca                                          ; $70fa: $0f
    add hl, bc                                    ; $70fb: $09
    rra                                           ; $70fc: $1f
    db $10                                        ; $70fd: $10
    ccf                                           ; $70fe: $3f
    jr nz, jr_0d7_70c0                            ; $70ff: $20 $bf

    ld b, b                                       ; $7101: $40
    and b                                         ; $7102: $a0
    ld h, h                                       ; $7103: $64
    ld [$10ff], sp                                ; $7104: $08 $ff $10
    rst $38                                       ; $7107: $ff
    jp hl                                         ; $7108: $e9


    rst $38                                       ; $7109: $ff
    sbc l                                         ; $710a: $9d
    ld bc, $e77f                                  ; $710b: $01 $7f $e7
    sbc a                                         ; $710e: $9f
    ld a, [$7d67]                                 ; $710f: $fa $67 $7d
    inc de                                        ; $7112: $13
    add b                                         ; $7113: $80
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00

jr_0d7_7116:
    ld b, b                                       ; $7116: $40
    ld b, b                                       ; $7117: $40
    jr nz, jr_0d7_717a                            ; $7118: $20 $60

    jr jr_0d7_7194                                ; $711a: $18 $78

    ld b, h                                       ; $711c: $44
    ld a, h                                       ; $711d: $7c
    nop                                           ; $711e: $00
    ld [hl], e                                    ; $711f: $73
    ccf                                           ; $7120: $3f
    ld a, l                                       ; $7121: $7d
    rra                                           ; $7122: $1f
    ld a, [hl]                                    ; $7123: $7e
    ld h, $7a                                     ; $7124: $26 $7a
    ld c, [hl]                                    ; $7126: $4e
    nop                                           ; $7127: $00
    ld [hl], h                                    ; $7128: $74
    ld e, h                                       ; $7129: $5c
    ld l, h                                       ; $712a: $6c
    inc a                                         ; $712b: $3c
    ld l, b                                       ; $712c: $68
    jr c, jr_0d7_7197                             ; $712d: $38 $68

    jr c, @+$22                                   ; $712f: $38 $20

    ld d, b                                       ; $7131: $50
    ld [hl], b                                    ; $7132: $70
    ld [bc], a                                    ; $7133: $02
    ld [$6060], sp                                ; $7134: $08 $60 $60
    inc h                                         ; $7137: $24
    inc h                                         ; $7138: $24
    ld e, [hl]                                    ; $7139: $5e
    nop                                           ; $713a: $00
    ld a, [hl]                                    ; $713b: $7e
    ld c, a                                       ; $713c: $4f
    ld a, e                                       ; $713d: $7b
    ld b, a                                       ; $713e: $47
    ld a, l                                       ; $713f: $7d
    ld d, e                                       ; $7140: $53
    ld l, [hl]                                    ; $7141: $6e
    ld d, c                                       ; $7142: $51
    ld [bc], a                                    ; $7143: $02
    ld l, a                                       ; $7144: $6f
    sub b                                         ; $7145: $90
    rst $28                                       ; $7146: $ef
    add c                                         ; $7147: $81
    rst $38                                       ; $7148: $ff
    sub c                                         ; $7149: $91
    inc b                                         ; $714a: $04
    nop                                           ; $714b: $00
    ld b, c                                       ; $714c: $41
    ld [bc], a                                    ; $714d: $02
    ld a, a                                       ; $714e: $7f
    ld hl, $113f                                  ; $714f: $21 $3f $11
    rra                                           ; $7152: $1f
    add hl, bc                                    ; $7153: $09
    ld l, b                                       ; $7154: $68
    nop                                           ; $7155: $00
    inc bc                                        ; $7156: $03
    ld [bc], a                                    ; $7157: $02
    inc bc                                        ; $7158: $03
    ld [$0c08], sp                                ; $7159: $08 $08 $0c
    inc c                                         ; $715c: $0c
    ld c, $01                                     ; $715d: $0e $01

jr_0d7_715f:
    ld [$0806], sp                                ; $715f: $08 $06 $08
    ld c, $06                                     ; $7162: $0e $06
    dec c                                         ; $7164: $0d
    rlca                                          ; $7165: $07
    ld [bc], a                                    ; $7166: $02
    jr nc, jr_0d7_7178                            ; $7167: $30 $0f

    ld bc, $200f                                  ; $7169: $01 $0f $20
    ld e, $1e                                     ; $716c: $1e $1e
    db $fc                                        ; $716e: $fc
    ld [$6666], sp                                ; $716f: $08 $66 $66
    cp l                                          ; $7172: $bd
    rst $38                                       ; $7173: $ff
    sbc [hl]                                      ; $7174: $9e
    nop                                           ; $7175: $00
    di                                            ; $7176: $f3
    adc a                                         ; $7177: $8f

jr_0d7_7178:
    ld sp, hl                                     ; $7178: $f9
    and a                                         ; $7179: $a7

jr_0d7_717a:
    call c, $dfa3                                 ; $717a: $dc $a3 $df
    and c                                         ; $717d: $a1
    jr jr_0d7_715f                                ; $717e: $18 $df

    add c                                         ; $7180: $81
    rst $38                                       ; $7181: $ff
    inc b                                         ; $7182: $04
    ld [$5840], sp                                ; $7183: $08 $40 $58
    inc b                                         ; $7186: $04
    inc c                                         ; $7187: $0c
    ld a, [bc]                                    ; $7188: $0a
    ld h, b                                       ; $7189: $60
    ld c, $3a                                     ; $718a: $0e $3a
    ld b, b                                       ; $718c: $40
    ld b, d                                       ; $718d: $42
    ld h, b                                       ; $718e: $60
    ld [hl-], a                                   ; $718f: $32
    nop                                           ; $7190: $00
    ld [$1200], sp                                ; $7191: $08 $00 $12

jr_0d7_7194:
    nop                                           ; $7194: $00
    inc e                                         ; $7195: $1c
    nop                                           ; $7196: $00

jr_0d7_7197:
    jr z, jr_0d7_7199                             ; $7197: $28 $00

jr_0d7_7199:
    ld [bc], a                                    ; $7199: $02
    nop                                           ; $719a: $00
    ei                                            ; $719b: $fb
    rlca                                          ; $719c: $07
    ld sp, hl                                     ; $719d: $f9
    dec b                                         ; $719e: $05
    ld hl, sp-$07                                 ; $719f: $f8 $f9
    ld hl, sp+$01                                 ; $71a1: $f8 $01
    ld [bc], a                                    ; $71a3: $02
    inc b                                         ; $71a4: $04
    ei                                            ; $71a5: $fb
    rlca                                          ; $71a6: $07
    ld sp, hl                                     ; $71a7: $f9
    dec b                                         ; $71a8: $05
    ld hl, sp-$07                                 ; $71a9: $f8 $f9
    ld hl, sp+$01                                 ; $71ab: $f8 $01
    inc bc                                        ; $71ad: $03
    ld [$07fb], sp                                ; $71ae: $08 $fb $07
    ld sp, hl                                     ; $71b1: $f9
    dec b                                         ; $71b2: $05
    sbc $84                                       ; $71b3: $de $84
    ld hl, sp-$07                                 ; $71b5: $f8 $f9
    ld hl, sp+$01                                 ; $71b7: $f8 $01
    ld [bc], a                                    ; $71b9: $02
    ld c, $fb                                     ; $71ba: $0e $fb
    rlca                                          ; $71bc: $07
    ld sp, hl                                     ; $71bd: $f9
    dec b                                         ; $71be: $05
    ld hl, sp-$07                                 ; $71bf: $f8 $f9
    ld hl, sp+$01                                 ; $71c1: $f8 $01
    jr nz, jr_0d7_71c6                            ; $71c3: $20 $01

    rst $20                                       ; $71c5: $e7

jr_0d7_71c6:
    nop                                           ; $71c6: $00
    nop                                           ; $71c7: $00
    dec b                                         ; $71c8: $05
    rlca                                          ; $71c9: $07
    ld b, $07                                     ; $71ca: $06 $07
    rra                                           ; $71cc: $1f
    rra                                           ; $71cd: $1f
    cpl                                           ; $71ce: $2f
    ccf                                           ; $71cf: $3f
    nop                                           ; $71d0: $00
    ld e, a                                       ; $71d1: $5f
    ld a, a                                       ; $71d2: $7f
    ld e, [hl]                                    ; $71d3: $5e
    ld a, a                                       ; $71d4: $7f
    cp d                                          ; $71d5: $ba
    rst $38                                       ; $71d6: $ff
    cp d                                          ; $71d7: $ba
    db $fd                                        ; $71d8: $fd
    nop                                           ; $71d9: $00
    pop af                                        ; $71da: $f1
    cp $bd                                        ; $71db: $fe $bd
    ld a, [$fbf4]                                 ; $71dd: $fa $f4 $fb
    halt                                          ; $71e0: $76
    ld a, c                                       ; $71e1: $79
    nop                                           ; $71e2: $00
    ld a, e                                       ; $71e3: $7b
    ld a, h                                       ; $71e4: $7c
    inc a                                         ; $71e5: $3c
    ccf                                           ; $71e6: $3f
    rra                                           ; $71e7: $1f
    rra                                           ; $71e8: $1f
    rlca                                          ; $71e9: $07
    rlca                                          ; $71ea: $07
    nop                                           ; $71eb: $00
    ret nz                                        ; $71ec: $c0

    ldh [$74], a                                  ; $71ed: $e0 $74
    db $fc                                        ; $71ef: $fc
    cp [hl]                                       ; $71f0: $be
    sbc $fd                                       ; $71f1: $de $fd
    rst $20                                       ; $71f3: $e7
    nop                                           ; $71f4: $00
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    cp [hl]                                       ; $71f7: $be
    cp $8f                                        ; $71f8: $fe $8f
    ld a, a                                       ; $71fa: $7f
    ld d, a                                       ; $71fb: $57
    xor a                                         ; $71fc: $af
    nop                                           ; $71fd: $00
    ld l, e                                       ; $71fe: $6b
    sub a                                         ; $71ff: $97
    dec sp                                        ; $7200: $3b
    rst $00                                       ; $7201: $c7
    rst $30                                       ; $7202: $f7
    rrca                                          ; $7203: $0f
    sub $2e                                       ; $7204: $d6 $2e
    nop                                           ; $7206: $00
    ld c, [hl]                                    ; $7207: $4e
    cp [hl]                                       ; $7208: $be
    cp h                                          ; $7209: $bc
    db $fc                                        ; $720a: $fc
    ld hl, sp-$08                                 ; $720b: $f8 $f8
    ldh [$e0], a                                  ; $720d: $e0 $e0
    nop                                           ; $720f: $00
    rra                                           ; $7210: $1f
    rra                                           ; $7211: $1f
    ld h, [hl]                                    ; $7212: $66
    ld a, c                                       ; $7213: $79
    ld a, a                                       ; $7214: $7f
    ld a, a                                       ; $7215: $7f

jr_0d7_7216:
    cpl                                           ; $7216: $2f
    ccf                                           ; $7217: $3f
    nop                                           ; $7218: $00
    inc sp                                        ; $7219: $33
    inc a                                         ; $721a: $3c
    ld a, a                                       ; $721b: $7f
    ld a, a                                       ; $721c: $7f
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    ld a, [$00ff]                                 ; $721f: $fa $ff $00
    ld a, [c]                                     ; $7222: $f2
    db $fd                                        ; $7223: $fd
    jp hl                                         ; $7224: $e9


    or $f5                                        ; $7225: $f6 $f5
    ld a, [$7877]                                 ; $7227: $fa $77 $78
    db $10                                        ; $722a: $10
    ld a, d                                       ; $722b: $7a
    ld a, l                                       ; $722c: $7d
    dec a                                         ; $722d: $3d
    ld b, b                                       ; $722e: $40
    db $10                                        ; $722f: $10
    ld hl, sp-$08                                 ; $7230: $f8 $f8
    ld h, [hl]                                    ; $7232: $66
    cp $00                                        ; $7233: $fe $00
    cp $fe                                        ; $7235: $fe $fe
    db $f4                                        ; $7237: $f4
    db $fc                                        ; $7238: $fc
    ld c, h                                       ; $7239: $4c
    cp h                                          ; $723a: $bc
    ld a, [$00fe]                                 ; $723b: $fa $fe $00
    ld e, l                                       ; $723e: $5d
    rst $38                                       ; $723f: $ff
    dec c                                         ; $7240: $0d
    rst $38                                       ; $7241: $ff
    sub a                                         ; $7242: $97
    ld l, a                                       ; $7243: $6f
    ld c, l                                       ; $7244: $4d
    cp a                                          ; $7245: $bf
    ld bc, $0ff7                                  ; $7246: $01 $f7 $0f
    xor $1e                                       ; $7249: $ee $1e
    sbc [hl]                                      ; $724b: $9e
    ld a, [hl]                                    ; $724c: $7e
    ld a, h                                       ; $724d: $7c
    ld b, b                                       ; $724e: $40
    db $10                                        ; $724f: $10
    stop                                          ; $7250: $10 $00
    ld bc, $0100                                  ; $7252: $01 $00 $01
    ret nc                                        ; $7255: $d0

    inc bc                                        ; $7256: $03
    rlca                                          ; $7257: $07
    cpl                                           ; $7258: $2f
    ld a, $00                                     ; $7259: $3e $00
    ei                                            ; $725b: $fb
    db $fd                                        ; $725c: $fd
    and a                                         ; $725d: $a7
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    ld a, [hl]                                    ; $7261: $7e
    ld a, a                                       ; $7262: $7f
    nop                                           ; $7263: $00
    db $f4                                        ; $7264: $f4
    rst $38                                       ; $7265: $ff
    ld [c], a                                     ; $7266: $e2
    db $fd                                        ; $7267: $fd
    ret                                           ; $7268: $c9


    or $e5                                        ; $7269: $f6 $e5
    ld a, [$ce02]                                 ; $726b: $fa $02 $ce
    pop af                                        ; $726e: $f1
    ld h, l                                       ; $726f: $65
    ld a, d                                       ; $7270: $7a
    ld [hl], b                                    ; $7271: $70
    ld a, a                                       ; $7272: $7f
    ld h, b                                       ; $7273: $60
    jr jr_0d7_7216                                ; $7274: $18 $a0

    nop                                           ; $7276: $00
    ldh [$e0], a                                  ; $7277: $e0 $e0
    ld h, b                                       ; $7279: $60
    ld hl, sp-$08                                 ; $727a: $f8 $f8
    db $fc                                        ; $727c: $fc
    db $fc                                        ; $727d: $fc
    cp $00                                        ; $727e: $fe $00
    cp $be                                        ; $7280: $fe $be
    cp $9f                                        ; $7282: $fe $9f
    ld a, a                                       ; $7284: $7f
    ld c, l                                       ; $7285: $4d
    cp a                                          ; $7286: $bf
    ld [hl], a                                    ; $7287: $77
    nop                                           ; $7288: $00
    adc a                                         ; $7289: $8f
    xor l                                         ; $728a: $ad
    ld e, a                                       ; $728b: $5f
    db $ed                                        ; $728c: $ed
    rra                                           ; $728d: $1f
    jp c, $ba3e                                   ; $728e: $da $3e $ba

    ld [hl+], a                                   ; $7291: $22
    ld a, [hl]                                    ; $7292: $7e
    ld [hl], h                                    ; $7293: $74
    and b                                         ; $7294: $a0
    jr nz, jr_0d7_72f9                            ; $7295: $20 $62

    ld a, l                                       ; $7297: $7d
    ld a, a                                       ; $7298: $7f
    ld bc, $3d00                                  ; $7299: $01 $00 $3d
    nop                                           ; $729c: $00
    ccf                                           ; $729d: $3f
    ld a, c                                       ; $729e: $79
    ld a, [hl]                                    ; $729f: $7e
    ld a, [c]                                     ; $72a0: $f2
    db $fd                                        ; $72a1: $fd
    pop hl                                        ; $72a2: $e1
    cp $f5                                        ; $72a3: $fe $f5
    nop                                           ; $72a5: $00
    ld a, [$f8e7]                                 ; $72a6: $fa $e7 $f8
    ld a, [c]                                     ; $72a9: $f2
    db $fd                                        ; $72aa: $fd
    ld a, c                                       ; $72ab: $79
    ld a, [hl]                                    ; $72ac: $7e
    ld e, [hl]                                    ; $72ad: $5e
    add hl, bc                                    ; $72ae: $09
    ld a, a                                       ; $72af: $7f
    daa                                           ; $72b0: $27
    ccf                                           ; $72b1: $3f
    add hl, de                                    ; $72b2: $19
    and b                                         ; $72b3: $a0
    db $10                                        ; $72b4: $10
    ld [c], a                                     ; $72b5: $e2
    ld e, $a1                                     ; $72b6: $1e $a1
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    cp $5c                                        ; $72ba: $fe $5c
    db $fc                                        ; $72bc: $fc
    ld c, $fe                                     ; $72bd: $0e $fe
    and a                                         ; $72bf: $a7
    ld e, a                                       ; $72c0: $5f
    ld a, e                                       ; $72c1: $7b
    nop                                           ; $72c2: $00
    add a                                         ; $72c3: $87
    di                                            ; $72c4: $f3
    rrca                                          ; $72c5: $0f
    rst $20                                       ; $72c6: $e7
    rra                                           ; $72c7: $1f
    or a                                          ; $72c8: $b7
    ld c, a                                       ; $72c9: $4f
    ld c, [hl]                                    ; $72ca: $4e
    ld [bc], a                                    ; $72cb: $02
    cp [hl]                                       ; $72cc: $be
    cp [hl]                                       ; $72cd: $be
    cp $fc                                        ; $72ce: $fe $fc
    db $fc                                        ; $72d0: $fc
    ld a, b                                       ; $72d1: $78
    ldh [rP1], a                                  ; $72d2: $e0 $00
    jr nc, jr_0d7_72d6                            ; $72d4: $30 $00

jr_0d7_72d6:
    ld b, $00                                     ; $72d6: $06 $00
    inc d                                         ; $72d8: $14
    nop                                           ; $72d9: $00
    ld [hl+], a                                   ; $72da: $22

jr_0d7_72db:
    nop                                           ; $72db: $00
    inc b                                         ; $72dc: $04
    nop                                           ; $72dd: $00
    db $fc                                        ; $72de: $fc
    dec b                                         ; $72df: $05
    or $0b                                        ; $72e0: $f6 $0b
    ld a, [c]                                     ; $72e2: $f2
    db $fc                                        ; $72e3: $fc
    ld a, [c]                                     ; $72e4: $f2
    cp $02                                        ; $72e5: $fe $02
    db $fc                                        ; $72e7: $fc
    ld [bc], a                                    ; $72e8: $02
    cp $04                                        ; $72e9: $fe $04
    ld [$05fc], sp                                ; $72eb: $08 $fc $05
    or $0b                                        ; $72ee: $f6 $0b
    db $f4                                        ; $72f0: $f4
    ld a, [$fff2]                                 ; $72f1: $fa $f2 $ff
    ld [bc], a                                    ; $72f4: $02
    ld a, [$ff02]                                 ; $72f5: $fa $02 $ff
    inc b                                         ; $72f8: $04

jr_0d7_72f9:
    db $10                                        ; $72f9: $10
    db $fc                                        ; $72fa: $fc
    dec b                                         ; $72fb: $05
    or $0b                                        ; $72fc: $f6 $0b
    db $f4                                        ; $72fe: $f4
    ld sp, hl                                     ; $72ff: $f9
    ld a, [c]                                     ; $7300: $f2
    nop                                           ; $7301: $00
    ld [bc], a                                    ; $7302: $02
    ld sp, hl                                     ; $7303: $f9
    ld [bc], a                                    ; $7304: $02
    nop                                           ; $7305: $00
    add b                                         ; $7306: $80
    ld bc, $00a9                                  ; $7307: $01 $a9 $00
    nop                                           ; $730a: $00
    inc bc                                        ; $730b: $03
    inc bc                                        ; $730c: $03
    inc b                                         ; $730d: $04
    rlca                                          ; $730e: $07
    dec c                                         ; $730f: $0d

jr_0d7_7310:
    ld c, $75                                     ; $7310: $0e $75
    ld a, [hl]                                    ; $7312: $7e
    ld bc, $ffaa                                  ; $7313: $01 $aa $ff
    push de                                       ; $7316: $d5
    rst $38                                       ; $7317: $ff
    ld e, a                                       ; $7318: $5f
    ld [hl], a                                    ; $7319: $77
    ld e, l                                       ; $731a: $5d
    ld [bc], a                                    ; $731b: $02
    nop                                           ; $731c: $00
    ld h, c                                       ; $731d: $61
    ld a, a                                       ; $731e: $7f
    ld b, $10                                     ; $731f: $06 $10
    ld a, [bc]                                    ; $7321: $0a
    jr z, @+$04                                   ; $7322: $28 $02

    ld [bc], a                                    ; $7324: $02
    ld bc, $0203                                  ; $7325: $01 $03 $02
    ld [$021c], sp                                ; $7328: $08 $1c $02
    ld [bc], a                                    ; $732b: $02
    nop                                           ; $732c: $00
    ld bc, $2a90                                  ; $732d: $01 $90 $2a
    jr c, jr_0d7_736c                             ; $7330: $38 $3a

    ld [$ffd5], sp                                ; $7332: $08 $d5 $ff
    nop                                           ; $7335: $00
    xor e                                         ; $7336: $ab
    rst $38                                       ; $7337: $ff
    ld [hl], h                                    ; $7338: $74
    ld a, a                                       ; $7339: $7f
    dec c                                         ; $733a: $0d
    ld c, $05                                     ; $733b: $0e $05
    ld b, $30                                     ; $733d: $06 $30
    inc bc                                        ; $733f: $03
    inc bc                                        ; $7340: $03
    jr nc, jr_0d7_72db                            ; $7341: $30 $98

    ld d, b                                       ; $7343: $50
    ld l, b                                       ; $7344: $68
    inc bc                                        ; $7345: $03
    inc bc                                        ; $7346: $03
    ld l, h                                       ; $7347: $6c
    ld l, a                                       ; $7348: $6f
    nop                                           ; $7349: $00
    sub a                                         ; $734a: $97
    rst $38                                       ; $734b: $ff
    xor e                                         ; $734c: $ab
    db $fc                                        ; $734d: $fc
    ld l, e                                       ; $734e: $6b
    ld a, h                                       ; $734f: $7c
    dec l                                         ; $7350: $2d
    ld a, [hl-]                                   ; $7351: $3a
    ld a, [bc]                                    ; $7352: $0a
    dec hl                                        ; $7353: $2b
    inc a                                         ; $7354: $3c
    dec sp                                        ; $7355: $3b
    inc a                                         ; $7356: $3c
    ld b, $08                                     ; $7357: $06 $08
    dec hl                                        ; $7359: $2b
    ld b, $00                                     ; $735a: $06 $00
    dec sp                                        ; $735c: $3b
    add b                                         ; $735d: $80
    ld b, $10                                     ; $735e: $06 $10
    dec hl                                        ; $7360: $2b
    inc a                                         ; $7361: $3c
    ld c, $0e                                     ; $7362: $0e $0e
    ld de, $151f                                  ; $7364: $11 $1f $15
    nop                                           ; $7367: $00
    dec de                                        ; $7368: $1b
    dec d                                         ; $7369: $15

jr_0d7_736a:
    dec de                                        ; $736a: $1b
    ld a, [bc]                                    ; $736b: $0a

jr_0d7_736c:
    ld e, $14                                     ; $736c: $1e $14
    inc e                                         ; $736e: $1c
    inc e                                         ; $736f: $1c
    inc a                                         ; $7370: $3c
    inc e                                         ; $7371: $1c
    inc d                                         ; $7372: $14
    ld [bc], a                                    ; $7373: $02
    nop                                           ; $7374: $00
    ld b, $18                                     ; $7375: $06 $18
    ld a, [bc]                                    ; $7377: $0a
    jr z, jr_0d7_7310                             ; $7378: $28 $96

    ld [$3c2b], sp                                ; $737a: $08 $2b $3c
    ld b, b                                       ; $737d: $40
    dec a                                         ; $737e: $3d
    ld [hl], $10                                  ; $737f: $36 $10
    ld a, l                                       ; $7381: $7d
    ld a, d                                       ; $7382: $7a
    xor b                                         ; $7383: $a8
    rst $38                                       ; $7384: $ff
    sub a                                         ; $7385: $97
    rst $38                                       ; $7386: $ff
    add hl, sp                                    ; $7387: $39
    ld l, h                                       ; $7388: $6c
    ld l, a                                       ; $7389: $6f
    ld a, h                                       ; $738a: $7c
    ld c, b                                       ; $738b: $48
    ld a, [hl+]                                   ; $738c: $2a
    jr c, @+$42                                   ; $738d: $38 $40

    jr jr_0d7_739f                                ; $738f: $18 $0e

    ld e, $50                                     ; $7391: $1e $50
    jr @+$22                                      ; $7393: $18 $20

    ld c, $0e                                     ; $7395: $0e $0e
    add b                                         ; $7397: $80
    jr z, jr_0d7_7407                             ; $7398: $28 $6d

    ld l, a                                       ; $739a: $6f
    sub [hl]                                      ; $739b: $96
    rst $38                                       ; $739c: $ff
    xor d                                         ; $739d: $aa
    nop                                           ; $739e: $00

jr_0d7_739f:
    db $fd                                        ; $739f: $fd
    ld a, c                                       ; $73a0: $79
    ld a, [hl]                                    ; $73a1: $7e
    ld a, [hl+]                                   ; $73a2: $2a
    dec a                                         ; $73a3: $3d
    ld a, [hl+]                                   ; $73a4: $2a
    dec a                                         ; $73a5: $3d
    add hl, sp                                    ; $73a6: $39
    ld d, h                                       ; $73a7: $54
    ld a, $06                                     ; $73a8: $3e $06
    ld [$0629], sp                                ; $73aa: $08 $29 $06
    nop                                           ; $73ad: $00
    ld a, [hl-]                                   ; $73ae: $3a
    ld b, $10                                     ; $73af: $06 $10
    ld a, [hl+]                                   ; $73b1: $2a
    dec a                                         ; $73b2: $3d
    nop                                           ; $73b3: $00
    ld c, $0e                                     ; $73b4: $0e $0e
    ld [hl], c                                    ; $73b6: $71
    ld a, a                                       ; $73b7: $7f
    dec d                                         ; $73b8: $15
    ld a, e                                       ; $73b9: $7b
    ld [hl], l                                    ; $73ba: $75
    ld a, e                                       ; $73bb: $7b
    nop                                           ; $73bc: $00
    ld e, d                                       ; $73bd: $5a
    ld a, $74                                     ; $73be: $3e $74
    inc e                                         ; $73c0: $1c
    inc a                                         ; $73c1: $3c
    ld e, h                                       ; $73c2: $5c
    ld [hl], h                                    ; $73c3: $74
    inc e                                         ; $73c4: $1c
    xor h                                         ; $73c5: $ac
    ld b, $28                                     ; $73c6: $06 $28
    inc [hl]                                      ; $73c8: $34
    inc c                                         ; $73c9: $0c
    nop                                           ; $73ca: $00
    ld a, h                                       ; $73cb: $7c
    ld b, $00                                     ; $73cc: $06 $00
    ld d, $09                                     ; $73ce: $16 $09
    add hl, hl                                    ; $73d0: $29
    ld a, $40                                     ; $73d1: $3e $40
    ld a, [hl-]                                   ; $73d3: $3a
    ld [hl], $10                                  ; $73d4: $36 $10
    ld a, d                                       ; $73d6: $7a
    ld a, l                                       ; $73d7: $7d
    xor b                                         ; $73d8: $a8
    rst $38                                       ; $73d9: $ff
    sub [hl]                                      ; $73da: $96
    rst $38                                       ; $73db: $ff
    ld l, c                                       ; $73dc: $69
    ld l, l                                       ; $73dd: $6d
    add b                                         ; $73de: $80
    ld d, b                                       ; $73df: $50
    inc l                                         ; $73e0: $2c
    jr @+$7e                                      ; $73e1: $18 $7c

    ld b, $30                                     ; $73e3: $06 $30
    ld e, $7e                                     ; $73e5: $1e $7e
    ld d, b                                       ; $73e7: $50
    jr jr_0d7_736a                                ; $73e8: $18 $80

    add b                                         ; $73ea: $80
    jr z, @+$80                                   ; $73eb: $28 $7e

    nop                                           ; $73ed: $00
    inc c                                         ; $73ee: $0c
    nop                                           ; $73ef: $00
    ld [hl+], a                                   ; $73f0: $22
    nop                                           ; $73f1: $00
    inc [hl]                                      ; $73f2: $34
    nop                                           ; $73f3: $00
    ld b, [hl]                                    ; $73f4: $46
    nop                                           ; $73f5: $00
    ld e, b                                       ; $73f6: $58
    nop                                           ; $73f7: $00
    ld l, d                                       ; $73f8: $6a
    nop                                           ; $73f9: $00
    ld [$fc00], sp                                ; $73fa: $08 $00 $fc
    inc bc                                        ; $73fd: $03
    xor $12                                       ; $73fe: $ee $12
    ld [$e9f8], a                                 ; $7400: $ea $f8 $e9
    nop                                           ; $7403: $00
    db $eb                                        ; $7404: $eb
    rlca                                          ; $7405: $07
    ld sp, hl                                     ; $7406: $f9

jr_0d7_7407:
    ei                                            ; $7407: $fb
    ld sp, hl                                     ; $7408: $f9
    inc bc                                        ; $7409: $03
    ei                                            ; $740a: $fb
    ld b, $09                                     ; $740b: $06 $09
    ld a, [$fe09]                                 ; $740d: $fa $09 $fe
    ld b, $10                                     ; $7410: $06 $10
    db $fc                                        ; $7412: $fc
    inc bc                                        ; $7413: $03
    xor $12                                       ; $7414: $ee $12
    db $ec                                        ; $7416: $ec
    ld hl, sp-$14                                 ; $7417: $f8 $ec
    nop                                           ; $7419: $00
    db $fc                                        ; $741a: $fc
    ld a, [$fefc]                                 ; $741b: $fa $fc $fe
    inc c                                         ; $741e: $0c
    ld a, [$fe0c]                                 ; $741f: $fa $0c $fe
    ld b, $1c                                     ; $7422: $06 $1c
    db $fc                                        ; $7424: $fc
    inc bc                                        ; $7425: $03
    xor $12                                       ; $7426: $ee $12
    db $ed                                        ; $7428: $ed
    rst $30                                       ; $7429: $f7
    xor $ff                                       ; $742a: $ee $ff
    ld sp, hl                                     ; $742c: $f9
    ld [bc], a                                    ; $742d: $02
    db $fd                                        ; $742e: $fd
    ld a, [$fe09]                                 ; $742f: $fa $09 $fe
    dec c                                         ; $7432: $0d
    rst $30                                       ; $7433: $f7
    ld b, $28                                     ; $7434: $06 $28
    db $fc                                        ; $7436: $fc
    inc bc                                        ; $7437: $03
    xor $12                                       ; $7438: $ee $12
    db $ed                                        ; $743a: $ed
    ld hl, sp-$12                                 ; $743b: $f8 $ee
    nop                                           ; $743d: $00
    ld hl, sp+$02                                 ; $743e: $f8 $02
    db $fd                                        ; $7440: $fd
    ld a, [$fe08]                                 ; $7441: $fa $08 $fe
    dec c                                         ; $7444: $0d
    ld hl, sp+$06                                 ; $7445: $f8 $06
    inc [hl]                                      ; $7447: $34
    db $fc                                        ; $7448: $fc
    inc bc                                        ; $7449: $03
    xor $12                                       ; $744a: $ee $12
    db $ec                                        ; $744c: $ec
    ld hl, sp-$14                                 ; $744d: $f8 $ec
    nop                                           ; $744f: $00
    db $fc                                        ; $7450: $fc
    ld a, [$fffc]                                 ; $7451: $fa $fc $ff
    inc c                                         ; $7454: $0c
    ld a, [$fe0c]                                 ; $7455: $fa $0c $fe
    rlca                                          ; $7458: $07
    ld b, b                                       ; $7459: $40
    db $fc                                        ; $745a: $fc
    inc bc                                        ; $745b: $03
    xor $12                                       ; $745c: $ee $12
    ld [$e9f8], a                                 ; $745e: $ea $f8 $e9
    nop                                           ; $7461: $00
    db $ec                                        ; $7462: $ec
    inc b                                         ; $7463: $04
    ld sp, hl                                     ; $7464: $f9
    ei                                            ; $7465: $fb
    ld sp, hl                                     ; $7466: $f9
    inc bc                                        ; $7467: $03
    add hl, bc                                    ; $7468: $09
    ld a, [$fe09]                                 ; $7469: $fa $09 $fe
    ldh [rDIV], a                                 ; $746c: $e0 $04
    ld d, b                                       ; $746e: $50
    ld [bc], a                                    ; $746f: $02
    nop                                           ; $7470: $00
    ld bc, $0301                                  ; $7471: $01 $01 $03
    ld [bc], a                                    ; $7474: $02
    ld a, [hl-]                                   ; $7475: $3a
    dec sp                                        ; $7476: $3b
    ld c, a                                       ; $7477: $4f
    ld a, a                                       ; $7478: $7f
    nop                                           ; $7479: $00
    cp d                                          ; $747a: $ba
    rst $30                                       ; $747b: $f7
    jp $9dbe                                      ; $747c: $c3 $be $9d


    cp $68                                        ; $747f: $fe $68
    ld l, a                                       ; $7481: $6f
    nop                                           ; $7482: $00
    ld b, $07                                     ; $7483: $06 $07
    dec bc                                        ; $7485: $0b
    dec c                                         ; $7486: $0d
    ld a, [bc]                                    ; $7487: $0a
    dec c                                         ; $7488: $0d
    dec b                                         ; $7489: $05
    ld b, $00                                     ; $748a: $06 $00
    ld b, $07                                     ; $748c: $06 $07
    rrca                                          ; $748e: $0f
    rrca                                          ; $748f: $0f
    dec bc                                        ; $7490: $0b
    rrca                                          ; $7491: $0f
    ld c, $0b                                     ; $7492: $0e $0b
    nop                                           ; $7494: $00
    ld e, $1e                                     ; $7495: $1e $1e
    inc hl                                        ; $7497: $23
    ccf                                           ; $7498: $3f
    xor l                                         ; $7499: $ad
    or e                                          ; $749a: $b3
    sub [hl]                                      ; $749b: $96
    sbc c                                         ; $749c: $99
    nop                                           ; $749d: $00
    ld d, c                                       ; $749e: $51
    sbc $f7                                       ; $749f: $de $f7
    ld hl, sp+$72                                 ; $74a1: $f8 $72
    db $fd                                        ; $74a3: $fd
    daa                                           ; $74a4: $27
    ld hl, sp+$00                                 ; $74a5: $f8 $00
    ld l, h                                       ; $74a7: $6c
    di                                            ; $74a8: $f3
    ret                                           ; $74a9: $c9


    or $83                                        ; $74aa: $f6 $83
    db $fc                                        ; $74ac: $fc
    cp c                                          ; $74ad: $b9
    cp $00                                        ; $74ae: $fe $00
    db $fc                                        ; $74b0: $fc
    ld a, a                                       ; $74b1: $7f
    ld h, a                                       ; $74b2: $67
    rst $20                                       ; $74b3: $e7
    pop af                                        ; $74b4: $f1
    pop af                                        ; $74b5: $f1
    ld d, b                                       ; $74b6: $50
    ldh a, [rP1]                                  ; $74b7: $f0 $00
    ld b, b                                       ; $74b9: $40
    ld b, b                                       ; $74ba: $40
    ld h, b                                       ; $74bb: $60
    ld h, b                                       ; $74bc: $60
    jr nc, @+$72                                  ; $74bd: $30 $70

    jr @+$7a                                      ; $74bf: $18 $78

    nop                                           ; $74c1: $00
    ld e, b                                       ; $74c2: $58
    jr c, jr_0d7_7529                             ; $74c3: $38 $64

    inc e                                         ; $74c5: $1c
    inc l                                         ; $74c6: $2c
    ld e, h                                       ; $74c7: $5c
    ld b, $7e                                     ; $74c8: $06 $7e
    nop                                           ; $74ca: $00
    ld d, [hl]                                    ; $74cb: $56
    ld l, $33                                     ; $74cc: $2e $33
    ld c, a                                       ; $74ce: $4f
    ld c, e                                       ; $74cf: $4b
    scf                                           ; $74d0: $37
    ld sp, $004f                                  ; $74d1: $31 $4f $00
    ld c, e                                       ; $74d4: $4b
    ld [hl], a                                    ; $74d5: $77
    ld e, c                                       ; $74d6: $59
    ld h, a                                       ; $74d7: $67
    dec hl                                        ; $74d8: $2b
    scf                                           ; $74d9: $37
    dec hl                                        ; $74da: $2b
    scf                                           ; $74db: $37
    nop                                           ; $74dc: $00
    rlca                                          ; $74dd: $07
    inc bc                                        ; $74de: $03
    ld d, [hl]                                    ; $74df: $56
    ld a, a                                       ; $74e0: $7f
    ld a, c                                       ; $74e1: $79
    ld a, [hl]                                    ; $74e2: $7e
    add $f9                                       ; $74e3: $c6 $f9
    nop                                           ; $74e5: $00
    cp e                                          ; $74e6: $bb
    rst $00                                       ; $74e7: $c7
    rst $08                                       ; $74e8: $cf
    rst $38                                       ; $74e9: $ff
    ld a, a                                       ; $74ea: $7f
    ld a, [hl]                                    ; $74eb: $7e
    ld [hl], d                                    ; $74ec: $72
    ld a, a                                       ; $74ed: $7f
    ld [$7b56], sp                                ; $74ee: $08 $56 $7b
    ld [hl], a                                    ; $74f1: $77
    ld e, e                                       ; $74f2: $5b
    ld [de], a                                    ; $74f3: $12
    ld c, b                                       ; $74f4: $48
    ret nz                                        ; $74f5: $c0

    ret nz                                        ; $74f6: $c0

    ret nz                                        ; $74f7: $c0

    dec bc                                        ; $74f8: $0b
    ld b, b                                       ; $74f9: $40
    ld b, d                                       ; $74fa: $42
    jp $0181                                      ; $74fb: $c3 $81 $01


    db $10                                        ; $74fe: $10
    add b                                         ; $74ff: $80
    ld bc, $0f00                                  ; $7500: $01 $00 $0f
    nop                                           ; $7503: $00
    sbc b                                         ; $7504: $98
    ld [de], a                                    ; $7505: $12
    nop                                           ; $7506: $00
    ld b, b                                       ; $7507: $40
    ret nz                                        ; $7508: $c0

    inc c                                         ; $7509: $0c
    ld [$0810], sp                                ; $750a: $08 $10 $08
    rlca                                          ; $750d: $07
    inc bc                                        ; $750e: $03
    ld bc, $0700                                  ; $750f: $01 $00 $07
    inc bc                                        ; $7512: $03
    rlca                                          ; $7513: $07
    ld [bc], a                                    ; $7514: $02
    ld b, $04                                     ; $7515: $06 $04
    inc b                                         ; $7517: $04
    nop                                           ; $7518: $00
    add b                                         ; $7519: $80
    ld bc, $7b90                                  ; $751a: $01 $90 $7b
    ld l, l                                       ; $751d: $6d
    ld sp, hl                                     ; $751e: $f9
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    ld l, h                                       ; $7522: $6c
    nop                                           ; $7523: $00
    ld a, a                                       ; $7524: $7f
    rst $00                                       ; $7525: $c7
    ld hl, sp-$07                                 ; $7526: $f8 $f9
    rst $38                                       ; $7528: $ff

jr_0d7_7529:
    ld a, a                                       ; $7529: $7f
    ld a, a                                       ; $752a: $7f
    rst $38                                       ; $752b: $ff
    ld b, $ff                                     ; $752c: $06 $ff
    ld [$c6ff], a                                 ; $752e: $ea $ff $c6
    ld sp, hl                                     ; $7531: $f9
    ld a, [bc]                                    ; $7532: $0a
    ld [$282e], sp                                ; $7533: $08 $2e $28
    ld b, $20                                     ; $7536: $06 $20
    ld c, $0f                                     ; $7538: $0e $0f
    ld bc, $0a00                                  ; $753a: $01 $00 $0a
    ld c, $0b                                     ; $753d: $0e $0b
    rlca                                          ; $753f: $07
    rlca                                          ; $7540: $07
    ld h, $0f                                     ; $7541: $26 $0f
    ld c, $0c                                     ; $7543: $0e $0c
    nop                                           ; $7545: $00
    dec bc                                        ; $7546: $0b
    rrca                                          ; $7547: $0f
    ld a, [bc]                                    ; $7548: $0a
    jr jr_0d7_7599                                ; $7549: $18 $4e

    jr z, jr_0d7_7586                             ; $754b: $28 $39

    nop                                           ; $754d: $00
    add hl, sp                                    ; $754e: $39
    ld c, a                                       ; $754f: $4f
    ld a, a                                       ; $7550: $7f
    cp e                                          ; $7551: $bb
    rst $30                                       ; $7552: $f7
    rst $00                                       ; $7553: $c7
    cp a                                          ; $7554: $bf
    sbc d                                         ; $7555: $9a
    inc d                                         ; $7556: $14
    db $fd                                        ; $7557: $fd
    ld l, c                                       ; $7558: $69
    ld l, [hl]                                    ; $7559: $6e
    db $fc                                        ; $755a: $fc
    ld l, b                                       ; $755b: $68
    ld a, [bc]                                    ; $755c: $0a
    dec sp                                        ; $755d: $3b
    nop                                           ; $755e: $00
    add b                                         ; $755f: $80
    add b                                         ; $7560: $80
    nop                                           ; $7561: $00
    ld b, b                                       ; $7562: $40
    ret nz                                        ; $7563: $c0

    ldh [$e0], a                                  ; $7564: $e0 $e0
    ld [hl], b                                    ; $7566: $70
    ldh a, [$38]                                  ; $7567: $f0 $38
    ld hl, sp+$00                                 ; $7569: $f8 $00
    call z, Call_0d7_663c                         ; $756b: $cc $3c $66
    sbc [hl]                                      ; $756e: $9e
    ld a, [de]                                    ; $756f: $1a
    and $c7                                       ; $7570: $e6 $c7
    ei                                            ; $7572: $fb
    nop                                           ; $7573: $00
    xor a                                         ; $7574: $af
    ld [hl], e                                    ; $7575: $73
    ld [hl], l                                    ; $7576: $75
    ei                                            ; $7577: $fb
    ei                                            ; $7578: $fb
    db $fd                                        ; $7579: $fd
    ld e, c                                       ; $757a: $59
    rst $38                                       ; $757b: $ff
    nop                                           ; $757c: $00
    db $fd                                        ; $757d: $fd
    ld a, a                                       ; $757e: $7f
    db $dd                                        ; $757f: $dd
    rst $28                                       ; $7580: $ef
    ld a, [hl+]                                   ; $7581: $2a
    jp c, Jump_0d7_7c63                           ; $7582: $da $63 $7c

    nop                                           ; $7585: $00

jr_0d7_7586:
    ld e, l                                       ; $7586: $5d
    ld h, e                                       ; $7587: $63
    ld h, a                                       ; $7588: $67
    ld a, a                                       ; $7589: $7f
    ccf                                           ; $758a: $3f
    ccf                                           ; $758b: $3f
    add hl, sp                                    ; $758c: $39
    ccf                                           ; $758d: $3f
    nop                                           ; $758e: $00
    dec hl                                        ; $758f: $2b
    dec a                                         ; $7590: $3d
    dec sp                                        ; $7591: $3b
    dec l                                         ; $7592: $2d
    dec hl                                        ; $7593: $2b
    ccf                                           ; $7594: $3f
    inc a                                         ; $7595: $3c
    ccf                                           ; $7596: $3f
    ret z                                         ; $7597: $c8

    ld [de], a                                    ; $7598: $12

jr_0d7_7599:
    jr z, @-$64                                   ; $7599: $28 $9a

    jr jr_0d7_75a1                                ; $759b: $18 $04

    inc c                                         ; $759d: $0c
    ld bc, $0410                                  ; $759e: $01 $10 $04

jr_0d7_75a1:
    inc b                                         ; $75a1: $04
    inc c                                         ; $75a2: $0c
    nop                                           ; $75a3: $00
    ld b, $0e                                     ; $75a4: $06 $0e
    ld a, [bc]                                    ; $75a6: $0a
    ld c, $06                                     ; $75a7: $0e $06
    ld a, [bc]                                    ; $75a9: $0a
    ld a, [bc]                                    ; $75aa: $0a
    ld b, $fc                                     ; $75ab: $06 $fc
    ld [de], a                                    ; $75ad: $12
    jr z, @-$64                                   ; $75ae: $28 $9a

    jr @-$44                                      ; $75b0: $18 $ba

jr_0d7_75b2:
    cp b                                          ; $75b2: $b8
    ldh a, [rNR23]                                ; $75b3: $f0 $18
    cp d                                          ; $75b5: $ba
    cp b                                          ; $75b6: $b8
    db $10                                        ; $75b7: $10
    add hl, de                                    ; $75b8: $19
    inc e                                         ; $75b9: $1c
    inc e                                         ; $75ba: $1c
    nop                                           ; $75bb: $00
    daa                                           ; $75bc: $27
    ccf                                           ; $75bd: $3f
    ld e, l                                       ; $75be: $5d
    ld a, e                                       ; $75bf: $7b
    ld h, a                                       ; $75c0: $67
    ld e, a                                       ; $75c1: $5f
    ld a, h                                       ; $75c2: $7c
    ld a, a                                       ; $75c3: $7f
    nop                                           ; $75c4: $00
    ret                                           ; $75c5: $c9


    or $b3                                        ; $75c6: $f6 $b3
    call z, $e59a                                 ; $75c8: $cc $9a $e5
    call $00f2                                    ; $75cb: $cd $f2 $00
    ld c, e                                       ; $75ce: $4b
    ld [hl], h                                    ; $75cf: $74
    ld h, a                                       ; $75d0: $67
    ld a, b                                       ; $75d1: $78
    ld sp, $1c3e                                  ; $75d2: $31 $3e $1c
    rra                                           ; $75d5: $1f
    ld b, h                                       ; $75d6: $44
    rlca                                          ; $75d7: $07
    ld bc, $0c00                                  ; $75d8: $01 $00 $0c
    rrca                                          ; $75db: $0f
    ret nz                                        ; $75dc: $c0

    cp [hl]                                       ; $75dd: $be
    nop                                           ; $75de: $00
    ld d, b                                       ; $75df: $50
    ldh a, [rP1]                                  ; $75e0: $f0 $00
    ld l, b                                       ; $75e2: $68
    ld hl, sp+$68                                 ; $75e3: $f8 $68

jr_0d7_75e5:
    ld hl, sp+$38                                 ; $75e5: $f8 $38
    ld hl, sp-$70                                 ; $75e7: $f8 $90
    ld [hl], b                                    ; $75e9: $70
    nop                                           ; $75ea: $00
    jr jr_0d7_75e5                                ; $75eb: $18 $f8

    inc l                                         ; $75ed: $2c
    call c, Call_000_3ec6                         ; $75ee: $dc $c6 $3e
    db $eb                                        ; $75f1: $eb
    rla                                           ; $75f2: $17
    nop                                           ; $75f3: $00
    add hl, sp                                    ; $75f4: $39
    rst $00                                       ; $75f5: $c7
    add h                                         ; $75f6: $84
    ei                                            ; $75f7: $fb
    ldh a, [rIE]                                  ; $75f8: $f0 $ff
    ld l, a                                       ; $75fa: $6f
    sbc a                                         ; $75fb: $9f
    ld bc, $7cbc                                  ; $75fc: $01 $bc $7c
    ld b, $06                                     ; $75ff: $06 $06
    inc bc                                        ; $7601: $03
    rlca                                          ; $7602: $07
    ld b, $5e                                     ; $7603: $06 $5e
    ld de, $8a80                                  ; $7605: $11 $80 $8a

jr_0d7_7608:
    add hl, bc                                    ; $7608: $09
    ld b, b                                       ; $7609: $40
    ret nz                                        ; $760a: $c0

    ld h, b                                       ; $760b: $60
    ldh [$a0], a                                  ; $760c: $e0 $a0
    ldh [$60], a                                  ; $760e: $e0 $60
    jr jr_0d7_75b2                                ; $7610: $18 $a0

    and b                                         ; $7612: $a0
    ld h, b                                       ; $7613: $60
    add [hl]                                      ; $7614: $86
    ld bc, $0802                                  ; $7615: $01 $02 $08
    ld b, b                                       ; $7618: $40
    ld e, b                                       ; $7619: $58
    ld h, b                                       ; $761a: $60
    sub b                                         ; $761b: $90
    sbc $c8                                       ; $761c: $de $c8
    ld l, h                                       ; $761e: $6c
    ld a, a                                       ; $761f: $7f
    ld h, b                                       ; $7620: $60
    add hl, hl                                    ; $7621: $29
    ld a, e                                       ; $7622: $7b
    add a                                         ; $7623: $87
    sub a                                         ; $7624: $97
    rst $38                                       ; $7625: $ff
    nop                                           ; $7626: $00
    cp $fe                                        ; $7627: $fe $fe
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff

jr_0d7_762b:
    xor e                                         ; $762b: $ab
    rst $38                                       ; $762c: $ff
    ld l, e                                       ; $762d: $6b
    sub a                                         ; $762e: $97
    ret nz                                        ; $762f: $c0

    ld a, [bc]                                    ; $7630: $0a
    ld [$29ae], sp                                ; $7631: $08 $ae $29
    jr jr_0d7_7654                                ; $7634: $18 $1e

    ld e, $1e                                     ; $7636: $1e $1e
    ld c, $0e                                     ; $7638: $0e $0e
    inc c                                         ; $763a: $0c
    ld e, $1e                                     ; $763b: $1e $1e
    inc e                                         ; $763d: $1c
    ld e, $0a                                     ; $763e: $1e $0a
    jr jr_0d7_7608                                ; $7640: $18 $c6

    ld l, c                                       ; $7642: $69
    jr c, jr_0d7_767d                             ; $7643: $38 $38

    nop                                           ; $7645: $00
    ld c, l                                       ; $7646: $4d
    ld a, l                                       ; $7647: $7d
    cp e                                          ; $7648: $bb
    rst $30                                       ; $7649: $f7
    rst $08                                       ; $764a: $cf
    cp a                                          ; $764b: $bf
    sub c                                         ; $764c: $91
    rst $38                                       ; $764d: $ff
    nop                                           ; $764e: $00
    halt                                          ; $764f: $76
    ld a, c                                       ; $7650: $79
    inc d                                         ; $7651: $14
    dec de                                        ; $7652: $1b
    rla                                           ; $7653: $17

jr_0d7_7654:
    jr jr_0d7_7670                                ; $7654: $18 $1a

    dec e                                         ; $7656: $1d
    inc d                                         ; $7657: $14
    add hl, bc                                    ; $7658: $09
    ld c, $0d                                     ; $7659: $0e $0d
    xor c                                         ; $765b: $a9
    ld de, $b90b                                  ; $765c: $11 $0b $b9
    ld bc, $1f18                                  ; $765f: $01 $18 $1f
    and b                                         ; $7662: $a0
    ld [de], a                                    ; $7663: $12
    ld a, [bc]                                    ; $7664: $0a
    and b                                         ; $7665: $a0
    jp nz, $7800                                  ; $7666: $c2 $00 $78

    ld hl, sp+$7c                                 ; $7669: $f8 $7c
    db $fc                                        ; $766b: $fc
    ld a, $00                                     ; $766c: $3e $00
    cp $1e                                        ; $766e: $fe $1e

jr_0d7_7670:
    cp $47                                        ; $7670: $fe $47
    cp a                                          ; $7672: $bf
    sub e                                         ; $7673: $93
    ld l, a                                       ; $7674: $6f
    ld l, d                                       ; $7675: $6a
    jr nz, @-$69                                  ; $7676: $20 $95

    add b                                         ; $7678: $80
    db $f4                                        ; $7679: $f4
    ld bc, $ff7f                                  ; $767a: $01 $7f $ff

jr_0d7_767d:
    ret nc                                        ; $767d: $d0

    jr nc, jr_0d7_76f0                            ; $767e: $30 $70

    nop                                           ; $7680: $00
    ldh a, [rSC]                                  ; $7681: $f0 $02
    ld [bc], a                                    ; $7683: $02
    ld bc, $0303                                  ; $7684: $01 $03 $03
    inc bc                                        ; $7687: $03
    ld [bc], a                                    ; $7688: $02
    ld l, [hl]                                    ; $7689: $6e
    ld [bc], a                                    ; $768a: $02
    ld e, $0a                                     ; $768b: $1e $0a
    jp nz, Jump_0d7_5c88                          ; $768d: $c2 $88 $5c

    ret nz                                        ; $7690: $c0

    ldh [$88], a                                  ; $7691: $e0 $88
    add hl, hl                                    ; $7693: $29
    jp nz, Jump_000_30a8                          ; $7694: $c2 $a8 $30

    nop                                           ; $7697: $00
    inc a                                         ; $7698: $3c
    inc a                                         ; $7699: $3c
    inc a                                         ; $769a: $3c
    inc e                                         ; $769b: $1c
    inc e                                         ; $769c: $1c
    inc a                                         ; $769d: $3c
    inc a                                         ; $769e: $3c
    jr c, jr_0d7_7701                             ; $769f: $38 $60

    inc a                                         ; $76a1: $3c
    ld a, [bc]                                    ; $76a2: $0a
    jr jr_0d7_762b                                ; $76a3: $18 $86

    ld l, d                                       ; $76a5: $6a
    rlca                                          ; $76a6: $07
    rlca                                          ; $76a7: $07
    inc a                                         ; $76a8: $3c
    ccf                                           ; $76a9: $3f
    ld c, a                                       ; $76aa: $4f
    nop                                           ; $76ab: $00
    ld a, a                                       ; $76ac: $7f
    cp l                                          ; $76ad: $bd
    rst $30                                       ; $76ae: $f7
    jp z, $99bd                                   ; $76af: $ca $bd $99

    cp $66                                        ; $76b2: $fe $66
    ld h, e                                       ; $76b4: $63
    ld h, a                                       ; $76b5: $67
    ld e, [hl]                                    ; $76b6: $5e
    ld [bc], a                                    ; $76b7: $02
    ld b, b                                       ; $76b8: $40
    ld [hl], d                                    ; $76b9: $72
    ldh [$e0], a                                  ; $76ba: $e0 $e0
    ldh a, [$be]                                  ; $76bc: $f0 $be
    nop                                           ; $76be: $00
    ld b, b                                       ; $76bf: $40
    ld a, [bc]                                    ; $76c0: $0a
    nop                                           ; $76c1: $00
    ld h, h                                       ; $76c2: $64
    sbc h                                         ; $76c3: $9c
    ld [de], a                                    ; $76c4: $12
    xor $d6                                       ; $76c5: $ee $d6
    ld [$f36d], a                                 ; $76c7: $ea $6d $f3
    add c                                         ; $76ca: $81
    ld b, b                                       ; $76cb: $40
    ld a, [de]                                    ; $76cc: $1a
    ei                                            ; $76cd: $fb
    ld a, l                                       ; $76ce: $7d
    db $dd                                        ; $76cf: $dd
    rst $28                                       ; $76d0: $ef
    dec l                                         ; $76d1: $2d
    rst $18                                       ; $76d2: $df
    ld b, b                                       ; $76d3: $40
    ld [$0910], a                                 ; $76d4: $ea $10 $09
    add hl, de                                    ; $76d7: $19
    jr @+$03                                      ; $76d8: $18 $01

    ld [$0808], sp                                ; $76da: $08 $08 $08
    jr jr_0d7_76eb                                ; $76dd: $18 $0c

    nop                                           ; $76df: $00
    inc e                                         ; $76e0: $1c
    inc d                                         ; $76e1: $14
    inc e                                         ; $76e2: $1c
    inc c                                         ; $76e3: $0c
    inc d                                         ; $76e4: $14
    inc d                                         ; $76e5: $14
    inc c                                         ; $76e6: $0c
    ld [$1185], sp                                ; $76e7: $08 $85 $11
    db $10                                        ; $76ea: $10

jr_0d7_76eb:
    jr @+$0a                                      ; $76eb: $18 $08

    inc c                                         ; $76ed: $0c
    inc e                                         ; $76ee: $1c
    ld e, e                                       ; $76ef: $5b

jr_0d7_76f0:
    ld bc, $401e                                  ; $76f0: $01 $1e $40
    ld a, [$4083]                                 ; $76f3: $fa $83 $40
    jp c, $0202                                   ; $76f6: $da $02 $02

    rlca                                          ; $76f9: $07
    dec b                                         ; $76fa: $05
    add hl, sp                                    ; $76fb: $39
    jp nz, RST_00                                 ; $76fc: $c2 $00 $00

    xor h                                         ; $76ff: $ac
    nop                                           ; $7700: $00

jr_0d7_7701:
    jr c, @+$3a                                   ; $7701: $38 $38

    ld l, [hl]                                    ; $7703: $6e
    ld a, [hl]                                    ; $7704: $7e
    ld b, a                                       ; $7705: $47
    ld a, a                                       ; $7706: $7f
    reti                                          ; $7707: $d9


    rst $20                                       ; $7708: $e7
    nop                                           ; $7709: $00
    jp z, $ecf5                                   ; $770a: $ca $f5 $ec

    di                                            ; $770d: $f3
    halt                                          ; $770e: $76
    jp hl                                         ; $770f: $e9


    ld c, a                                       ; $7710: $4f
    ldh a, [rP1]                                  ; $7711: $f0 $00
    ld d, a                                       ; $7713: $57
    add sp, -$51                                  ; $7714: $e8 $af
    ret nc                                        ; $7716: $d0

    sub d                                         ; $7717: $92
    db $fd                                        ; $7718: $fd
    ld sp, hl                                     ; $7719: $f9
    cp $10                                        ; $771a: $fe $10
    cp h                                          ; $771c: $bc
    ld a, a                                       ; $771d: $7f
    ld a, [hl]                                    ; $771e: $7e
    ld a, b                                       ; $771f: $78
    inc bc                                        ; $7720: $03
    ld e, l                                       ; $7721: $5d
    db $fd                                        ; $7722: $fd
    ld [$c408], sp                                ; $7723: $08 $08 $c4
    db $dd                                        ; $7726: $dd
    ld [bc], a                                    ; $7727: $02
    call c, Call_000_0e02                         ; $7728: $dc $02 $0e
    ld b, $03                                     ; $772b: $06 $03
    ld e, d                                       ; $772d: $5a
    inc bc                                        ; $772e: $03
    add hl, bc                                    ; $772f: $09
    rlca                                          ; $7730: $07
    add b                                         ; $7731: $80
    inc b                                         ; $7732: $04
    jr jr_0d7_7738                                ; $7733: $18 $03

    rrca                                          ; $7735: $0f
    inc bc                                        ; $7736: $03
    rrca                                          ; $7737: $0f

jr_0d7_7738:
    ret                                           ; $7738: $c9


    rst $08                                       ; $7739: $cf
    rr b                                          ; $773a: $cb $18
    rst $08                                       ; $773c: $cf
    jp z, Jump_000_00ce                           ; $773d: $ca $ce $00

    db $ec                                        ; $7740: $ec
    db $f4                                        ; $7741: $f4
    inc bc                                        ; $7742: $03
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    add b                                         ; $7745: $80
    rrca                                          ; $7746: $0f
    push bc                                       ; $7747: $c5
    rst $00                                       ; $7748: $c7
    add d                                         ; $7749: $82
    add d                                         ; $774a: $82
    ld a, [c]                                     ; $774b: $f2
    dec de                                        ; $774c: $1b
    nop                                           ; $774d: $00
    ld l, h                                       ; $774e: $6c
    ldh [$fb], a                                  ; $774f: $e0 $fb
    ldh [$db], a                                  ; $7751: $e0 $db

    db $ce, $00, $1a, $00, $26, $00, $34, $00, $42, $00, $50, $00, $5e, $00, $6c, $00
    db $7a, $00, $88, $00, $96, $00, $a4, $00, $b2, $00, $c0, $00, $03, $00

    rst $30                                       ; $7771: $f7
    ld b, $f2                                     ; $7772: $06 $f2
    db $01                                        ; $7774: $01

    db $ee, $f8, $ee, $00, $fe, $fc, $04, $06

    rst $30                                       ; $777d: $f7
    ld b, $f2                                     ; $777e: $06 $f2
    db $01                                        ; $7780: $01

    db $ee, $f7, $ee, $ff, $ee, $07, $fe, $fc, $04, $0e

    rst $30                                       ; $778b: $f7
    ld b, $f2                                     ; $778c: $06 $f2
    db $01                                        ; $778e: $01

    db $ef, $f9, $ef, $01, $f3, $07, $ff, $fc, $04, $16

    rst $30                                       ; $7799: $f7
    ld b, $f2                                     ; $779a: $06 $f2
    db $01                                        ; $779c: $01

    db $ef, $f9, $ef, $01, $f6, $07, $ff, $fc, $04, $1e

    rst $30                                       ; $77a7: $f7
    ld b, $f2                                     ; $77a8: $06 $f2
    db $01                                        ; $77aa: $01

    db $ee, $f7, $ef, $ff, $f0, $07, $fe, $fc, $04, $26

    rst $30                                       ; $77b5: $f7
    ld b, $f2                                     ; $77b6: $06 $f2
    db $01                                        ; $77b8: $01

    db $ef, $f9, $ef, $01, $f3, $06, $ff, $fc, $04, $2e

    rst $30                                       ; $77c3: $f7
    ld b, $f2                                     ; $77c4: $06 $f2
    db $01                                        ; $77c6: $01

    db $ef, $f9, $ef, $01, $f1, $06, $ff, $fc, $04, $36

    rst $30                                       ; $77d1: $f7
    ld b, $f2                                     ; $77d2: $06 $f2
    db $01                                        ; $77d4: $01

    db $ef, $f9, $ef, $01, $f3, $06, $ff, $fc, $04, $3e

    rst $30                                       ; $77df: $f7
    ld b, $f2                                     ; $77e0: $06 $f2
    db $01                                        ; $77e2: $01

    db $ef, $f9, $ef, $01, $f1, $06, $ff, $fc, $04, $46

    rst $30                                       ; $77ed: $f7
    ld b, $f2                                     ; $77ee: $06 $f2
    db $01                                        ; $77f0: $01

    db $ef, $f9, $ef, $01, $f3, $06, $ff, $fc, $04, $4e

    rst $30                                       ; $77fb: $f7
    ld b, $f2                                     ; $77fc: $06 $f2
    db $01                                        ; $77fe: $01

    db $ef, $f9, $ef, $01, $f1, $06, $ff, $fc, $04, $56

    rst $30                                       ; $7809: $f7
    ld b, $f2                                     ; $780a: $06 $f2
    db $01                                        ; $780c: $01

    db $ef, $f9, $ef, $01, $f3, $06, $ff, $fc, $04, $5e

    rst $30                                       ; $7817: $f7
    ld b, $f2                                     ; $7818: $06 $f2
    db $01                                        ; $781a: $01

    db $ef, $f9, $ef, $01, $f1, $06, $ff, $fc, $60, $06, $07, $02, $00, $1e, $1e, $7f
    db $6d, $ff, $a6, $7f, $50, $00, $3f, $31, $1f, $1a, $2f, $3f, $5b, $7f, $00, $65
    db $7f, $a3, $ff, $93, $fe, $cf, $fc, $54, $00, $01, $00, $fc, $06, $00, $80, $01
    db $00, $c0, $c0, $00, $e0, $20, $c0, $c0, $80, $80, $cc, $cc, $00, $fe, $f2, $fe
    db $9e, $ff, $f1, $fe, $02, $00, $fc, $7c, $f0, $d0, $e0, $f0, $90, $f0, $00, $f0
    db $f0, $0e, $0a, $0c, $0c, $17, $1f, $30, $1f, $1f, $30, $08, $04, $88, $03, $03
    db $17, $16, $00, $6f, $6f, $ff, $96, $7f, $69, $1f, $19, $00, $07, $07, $09, $0f
    db $1a, $1f, $13, $1f, $08, $34, $3f, $3b, $3f, $60, $08, $3e, $3e, $00, $00, $00
    db $02, $02, $e5, $e7, $f2, $32, $ff, $00, $ed, $f7, $34, $e7, $e4, $bf, $bb, $7f
    db $00, $f3, $7f, $c6, $ff, $ef, $d0, $d0, $b1, $00, $f1, $73, $63, $71, $51, $20
    db $60, $78, $44, $58, $7e, $00, $40, $e0, $a0, $80, $00, $40, $80, $10, $80, $00
    db $00, $8a, $08, $f8, $58, $ee, $fe, $00, $b7, $ff, $ee, $fe, $f8, $f8, $70, $70
    db $08, $00, $00, $0f, $0b, $80, $d8, $10, $10, $4f, $04, $4f, $ff, $be, $7f, $57
    db $e0, $18, $69, $7f, $01, $4c, $7f, $d3, $fe, $ef, $ff, $01, $01, $00, $20, $f8
    db $f9, $06, $08, $40, $40, $c0, $c0, $ea, $00, $ea, $f7, $3d, $eb, $ea, $df, $54
    db $ff, $00, $f1, $ff, $f6, $ff, $cd, $f3, $33, $e6, $00, $67, $cf, $8f, $c7, $47
    db $81, $81, $e0, $08, $60, $e0, $60, $20, $01, $00, $00, $00, $20, $00, $20, $38
    db $18, $2e, $3e, $37, $3f, $2e, $07, $3e, $38, $38, $30, $30, $ec, $48, $fe, $d8
    db $80, $68, $00, $6b, $7f, $49, $7f, $dd, $ff, $ef, $fe, $80, $80, $58, $e0, $e0
    db $e0, $20, $e0, $e0, $c0, $04, $40, $ff, $ff, $ff, $f8, $04, $00, $fc, $ff, $04
    db $00, $ff, $3f, $e7, $e7, $80, $28, $38, $38, $03, $3e, $1e, $3f, $0f, $3e, $2e
    db $7a, $68, $80, $f8, $80, $80, $f9, $00, $00, $e0, $e0, $f2, $32, $fd, $00, $ef
    db $f2, $32, $e7, $e5, $bf, $bc, $ff, $00, $fd, $7f, $fb, $3f, $f7, $f8, $88, $f9
    db $77, $d9, $7e, $29, $80, $49, $06, $02, $a0, $7c, $59, $02, $f9, $80, $09, $00
    db $4e, $4e, $ff, $bb, $7c, $57, $3f, $30, $22, $1f, $1d, $80, $09, $49, $7f, $d7
    db $80, $61, $cc, $00, $cc, $f2, $7e, $d5, $3f, $f2, $ff, $d8, $01, $5f, $fd, $f7
    db $fe, $fb, $ff, $fe, $fe, $08, $00, $df, $d0, $df, $55, $9f, $9a, $ff, $7f, $00
    db $e0, $60, $10, $10, $1e, $1f, $1e, $11, $00, $1e, $15, $1f, $0f, $1e, $11, $1f
    db $01, $03, $1e, $01, $1e, $0b, $1f, $15, $6e, $4a, $80, $f9, $d0, $80, $58, $00
    db $02, $ff, $00, $5a, $c3, $c3, $e4, $67, $00, $d5, $37, $e5, $e7, $de, $5f, $fe
    db $f3, $20, $ff, $fb, $84, $01, $00, $ff, $1f, $ff, $f0, $80, $80, $38, $08, $18
    db $08, $18, $0e, $1f, $1e, $00, $19, $0e, $1d, $1f, $07, $1e, $0d, $1f, $75, $11
    db $84, $58, $00, $fa, $00, $49, $6b, $80, $02, $d2, $80, $60, $00, $c0, $c0, $e6
    db $66, $d9, $3f, $ea, $ef, $10, $d9, $5f, $fc, $00, $09, $ff, $ff, $80, $ff, $10
    db $0f, $ff, $f8, $00, $39, $0e, $1f, $0e, $19, $00, $1e, $1d, $0f, $17, $1e, $05
    db $1f, $19, $f6, $00, $f9, $00, $f9, $00, $f9, $00, $c1, $09, $00, $f9, $0a, $5c
    db $04, $00, $04, $37, $37, $3f, $2c, $1f, $15, $0f, $10, $0e, $17, $1f, $00, $8a
    db $80, $80, $ec, $ec, $00, $f2, $de, $35, $df, $f2, $ff, $f8, $bf, $f0, $00, $fa
    db $00, $fa, $80, $e8, $00, $6a, $80, $80, $e3, $e3, $00, $f4, $d7, $3d, $cf, $f5
    db $f7, $fe, $bf, $f0, $00, $fa, $00, $fa, $00, $d9, $00, $7a, $80, $80, $e0, $e0
    db $00, $f6, $d6, $39, $cf, $fa, $ff, $f9, $bf, $fe, $00, $fa, $00, $fb, $80, $f8
    db $00, $f9, $00, $fa, $00, $fb, $10, $2e

    inc a                                         ; $7ab3: $3c
    nop                                           ; $7ab4: $00
    ld b, $00                                     ; $7ab5: $06 $00
    ld d, $00                                     ; $7ab7: $16 $00
    jr z, jr_0d7_7abb                             ; $7ab9: $28 $00

jr_0d7_7abb:
    dec b                                         ; $7abb: $05
    nop                                           ; $7abc: $00
    ld a, [$fa07]                                 ; $7abd: $fa $07 $fa
    inc b                                         ; $7ac0: $04
    ld sp, hl                                     ; $7ac1: $f9
    push af                                       ; $7ac2: $f5
    rst $30                                       ; $7ac3: $f7
    db $fd                                        ; $7ac4: $fd
    ld a, [$0405]                                 ; $7ac5: $fa $05 $04
    ld b, $07                                     ; $7ac8: $06 $07
    db $fd                                        ; $7aca: $fd
    ld b, $0a                                     ; $7acb: $06 $0a
    ei                                            ; $7acd: $fb
    ld b, $f9                                     ; $7ace: $06 $f9
    ld b, $f6                                     ; $7ad0: $06 $f6
    push af                                       ; $7ad2: $f5
    or $fd                                        ; $7ad3: $f6 $fd
    or $05                                        ; $7ad5: $f6 $05
    ld b, $f5                                     ; $7ad7: $06 $f5
    ld b, $fd                                     ; $7ad9: $06 $fd
    ld b, $05                                     ; $7adb: $06 $05
    rlca                                          ; $7add: $07
    ld d, $f8                                     ; $7ade: $16 $f8
    ld b, $f8                                     ; $7ae0: $06 $f8
    add hl, bc                                    ; $7ae2: $09
    di                                            ; $7ae3: $f3
    push af                                       ; $7ae4: $f5
    ld a, [c]                                     ; $7ae5: $f2
    db $fd                                        ; $7ae6: $fd
    or $05                                        ; $7ae7: $f6 $05
    ld [bc], a                                    ; $7ae9: $02
    push af                                       ; $7aea: $f5
    ld [bc], a                                    ; $7aeb: $02
    db $fd                                        ; $7aec: $fd
    ld [bc], a                                    ; $7aed: $02
    dec b                                         ; $7aee: $05
    ld [bc], a                                    ; $7aef: $02
    ld b, $40                                     ; $7af0: $06 $40
    ld [bc], a                                    ; $7af2: $02
    sub d                                         ; $7af3: $92
    ld bc, $0000                                  ; $7af4: $01 $00 $00
    rlca                                          ; $7af7: $07
    ld bc, $221f                                  ; $7af8: $01 $1f $22
    rra                                           ; $7afb: $1f
    ld c, e                                       ; $7afc: $4b
    ccf                                           ; $7afd: $3f
    nop                                           ; $7afe: $00
    ld h, l                                       ; $7aff: $65
    rra                                           ; $7b00: $1f
    ld d, b                                       ; $7b01: $50
    rrca                                          ; $7b02: $0f
    inc b                                         ; $7b03: $04
    inc bc                                        ; $7b04: $03
    dec de                                        ; $7b05: $1b
    rlca                                          ; $7b06: $07
    nop                                           ; $7b07: $00
    inc h                                         ; $7b08: $24
    rra                                           ; $7b09: $1f
    ld c, [hl]                                    ; $7b0a: $4e
    ccf                                           ; $7b0b: $3f
    xor d                                         ; $7b0c: $aa
    ld a, a                                       ; $7b0d: $7f
    sub b                                         ; $7b0e: $90
    ld a, a                                       ; $7b0f: $7f
    nop                                           ; $7b10: $00
    add l                                         ; $7b11: $85
    ld a, d                                       ; $7b12: $7a
    jr c, @+$44                                   ; $7b13: $38 $42

    ld b, d                                       ; $7b15: $42
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    jr jr_0d7_7b1c                                ; $7b1a: $18 $00

jr_0d7_7b1c:
    inc a                                         ; $7b1c: $3c
    nop                                           ; $7b1d: $00
    ldh a, [rIF]                                  ; $7b1e: $f0 $0f
    ld l, l                                       ; $7b20: $6d
    sbc a                                         ; $7b21: $9f
    nop                                           ; $7b22: $00
    ld [bc], a                                    ; $7b23: $02
    rst $38                                       ; $7b24: $ff
    adc h                                         ; $7b25: $8c
    rst $38                                       ; $7b26: $ff
    ld h, e                                       ; $7b27: $63
    sbc a                                         ; $7b28: $9f
    inc c                                         ; $7b29: $0c
    sub e                                         ; $7b2a: $93
    nop                                           ; $7b2b: $00
    ld d, $c1                                     ; $7b2c: $16 $c1
    inc bc                                        ; $7b2e: $03
    ldh [rHDMA3], a                               ; $7b2f: $e0 $53
    ldh [$88], a                                  ; $7b31: $e0 $88
    ldh a, [rP1]                                  ; $7b33: $f0 $00
    ld d, d                                       ; $7b35: $52
    and c                                         ; $7b36: $a1
    and h                                         ; $7b37: $a4
    inc bc                                        ; $7b38: $03
    dec bc                                        ; $7b39: $0b
    rlca                                          ; $7b3a: $07
    add hl, bc                                    ; $7b3b: $09
    rlca                                          ; $7b3c: $07
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    or b                                          ; $7b3f: $b0
    add b                                         ; $7b40: $80
    ld hl, sp+$28                                 ; $7b41: $f8 $28
    db $fc                                        ; $7b43: $fc
    inc b                                         ; $7b44: $04
    ld hl, sp+$00                                 ; $7b45: $f8 $00
    ret c                                         ; $7b47: $d8

    ldh [rNR41], a                                ; $7b48: $e0 $20
    ret nz                                        ; $7b4a: $c0

    ret c                                         ; $7b4b: $d8

    nop                                           ; $7b4c: $00
    ld hl, sp+$00                                 ; $7b4d: $f8 $00
    nop                                           ; $7b4f: $00
    db $10                                        ; $7b50: $10
    ld l, [hl]                                    ; $7b51: $6e
    inc c                                         ; $7b52: $0c
    cp $da                                        ; $7b53: $fe $da
    rst $38                                       ; $7b55: $ff
    jr nc, @+$01                                  ; $7b56: $30 $ff

    nop                                           ; $7b58: $00
    ld a, [de]                                    ; $7b59: $1a
    rst $38                                       ; $7b5a: $ff
    pop bc                                        ; $7b5b: $c1
    ld a, $39                                     ; $7b5c: $3e $39
    ld b, $04                                     ; $7b5e: $06 $04
    ld [bc], a                                    ; $7b60: $02
    ld [hl], $01                                  ; $7b61: $36 $01
    nop                                           ; $7b63: $00
    ld [bc], a                                    ; $7b64: $02
    ld [$1801], sp                                ; $7b65: $08 $01 $18
    inc b                                         ; $7b68: $04
    ld [$0720], sp                                ; $7b69: $08 $20 $07
    ld c, b                                       ; $7b6c: $48
    inc b                                         ; $7b6d: $04
    inc c                                         ; $7b6e: $0c
    inc bc                                        ; $7b6f: $03
    ld bc, $0202                                  ; $7b70: $01 $02 $02
    jr @-$7e                                      ; $7b73: $18 $80

    dec hl                                        ; $7b75: $2b
    jr nc, @+$03                                  ; $7b76: $30 $01

    ld [$0700], sp                                ; $7b78: $08 $00 $07
    ld sp, $410f                                  ; $7b7b: $31 $0f $41
    ccf                                           ; $7b7e: $3f
    sbc d                                         ; $7b7f: $9a
    ld a, a                                       ; $7b80: $7f
    and b                                         ; $7b81: $a0
    nop                                           ; $7b82: $00
    ld a, a                                       ; $7b83: $7f
    add [hl]                                      ; $7b84: $86
    ld a, c                                       ; $7b85: $79
    ld c, a                                       ; $7b86: $4f
    jr nc, jr_0d7_7bdf                            ; $7b87: $30 $56

    jr nz, jr_0d7_7bf2                            ; $7b89: $20 $67

    jr nz, jr_0d7_7b8d                            ; $7b8b: $20 $00

jr_0d7_7b8d:
    ld b, e                                       ; $7b8d: $43
    ld d, h                                       ; $7b8e: $54
    nop                                           ; $7b8f: $00
    ld [de], a                                    ; $7b90: $12
    dec c                                         ; $7b91: $0d
    ld h, $19                                     ; $7b92: $26 $19
    ld c, c                                       ; $7b94: $49
    nop                                           ; $7b95: $00
    scf                                           ; $7b96: $37
    ld b, c                                       ; $7b97: $41
    ccf                                           ; $7b98: $3f
    ld [hl], $c1                                  ; $7b99: $36 $c1
    sbc h                                         ; $7b9b: $9c
    db $e3                                        ; $7b9c: $e3
    sub d                                         ; $7b9d: $92
    nop                                           ; $7b9e: $00
    rst $28                                       ; $7b9f: $ef
    ld l, b                                       ; $7ba0: $68
    rst $30                                       ; $7ba1: $f7
    jp z, Jump_0d7_62f7                           ; $7ba2: $ca $f7 $62

    rst $38                                       ; $7ba5: $ff
    sub l                                         ; $7ba6: $95
    nop                                           ; $7ba7: $00
    ld a, a                                       ; $7ba8: $7f
    xor $1f                                       ; $7ba9: $ee $1f
    ld l, e                                       ; $7bab: $6b
    rra                                           ; $7bac: $1f
    ld b, c                                       ; $7bad: $41
    ccf                                           ; $7bae: $3f
    adc e                                         ; $7baf: $8b
    nop                                           ; $7bb0: $00
    ccf                                           ; $7bb1: $3f
    sub b                                         ; $7bb2: $90
    ld a, a                                       ; $7bb3: $7f
    ld b, d                                       ; $7bb4: $42
    rst $38                                       ; $7bb5: $ff
    ret z                                         ; $7bb6: $c8

    rst $30                                       ; $7bb7: $f7
    ld [hl-], a                                   ; $7bb8: $32
    nop                                           ; $7bb9: $00
    push hl                                       ; $7bba: $e5
    adc l                                         ; $7bbb: $8d
    ldh a, [rP1]                                  ; $7bbc: $f0 $00
    add b                                         ; $7bbe: $80
    add b                                         ; $7bbf: $80
    ldh [rNR41], a                                ; $7bc0: $e0 $20
    nop                                           ; $7bc2: $00
    ldh a, [$60]                                  ; $7bc3: $f0 $60
    ld hl, sp-$70                                 ; $7bc5: $f8 $90
    ld a, b                                       ; $7bc7: $78
    ld h, b                                       ; $7bc8: $60
    sbc b                                         ; $7bc9: $98
    jr nc, jr_0d7_7bcc                            ; $7bca: $30 $00

jr_0d7_7bcc:
    adc $a6                                       ; $7bcc: $ce $a6
    rst $18                                       ; $7bce: $df
    inc c                                         ; $7bcf: $0c
    rst $18                                       ; $7bd0: $df
    sub c                                         ; $7bd1: $91
    adc $0e                                       ; $7bd2: $ce $0e
    nop                                           ; $7bd4: $00
    ldh a, [$60]                                  ; $7bd5: $f0 $60
    db $fc                                        ; $7bd7: $fc
    push de                                       ; $7bd8: $d5
    cp $01                                        ; $7bd9: $fe $01
    cp $1a                                        ; $7bdb: $fe $1a
    nop                                           ; $7bdd: $00
    db $e4                                        ; $7bde: $e4

jr_0d7_7bdf:
    db $fc                                        ; $7bdf: $fc
    nop                                           ; $7be0: $00
    xor d                                         ; $7be1: $aa
    ld a, a                                       ; $7be2: $7f
    sbc a                                         ; $7be3: $9f
    ld a, a                                       ; $7be4: $7f
    ld b, [hl]                                    ; $7be5: $46
    ld [$793f], sp                                ; $7be6: $08 $3f $79
    ld b, $44                                     ; $7be9: $06 $44
    add [hl]                                      ; $7beb: $86
    and b                                         ; $7bec: $a0
    jp z, Jump_000_14f1                           ; $7bed: $ca $f1 $14

jr_0d7_7bf0:
    nop                                           ; $7bf0: $00
    db $e3                                        ; $7bf1: $e3

jr_0d7_7bf2:
    push de                                       ; $7bf2: $d5
    inc hl                                        ; $7bf3: $23
    inc h                                         ; $7bf4: $24
    inc bc                                        ; $7bf5: $03
    nop                                           ; $7bf6: $00
    inc bc                                        ; $7bf7: $03
    inc bc                                        ; $7bf8: $03
    add d                                         ; $7bf9: $82
    and [hl]                                      ; $7bfa: $a6
    sub b                                         ; $7bfb: $90
    db $10                                        ; $7bfc: $10
    db $ec                                        ; $7bfd: $ec
    ld l, l                                       ; $7bfe: $6d
    sbc [hl]                                      ; $7bff: $9e
    ld d, $1c                                     ; $7c00: $16 $1c
    ld bc, $0862                                  ; $7c02: $01 $62 $08
    sbc h                                         ; $7c05: $9c
    sub h                                         ; $7c06: $94
    ld [$c808], sp                                ; $7c07: $08 $08 $c8
    adc b                                         ; $7c0a: $88
    rlca                                          ; $7c0b: $07
    ld [bc], a                                    ; $7c0c: $02
    rra                                           ; $7c0d: $1f
    nop                                           ; $7c0e: $00
    jr z, jr_0d7_7c30                             ; $7c0f: $28 $1f

    inc bc                                        ; $7c11: $03
    ld a, a                                       ; $7c12: $7f
    ld b, b                                       ; $7c13: $40
    ccf                                           ; $7c14: $3f
    add [hl]                                      ; $7c15: $86
    ld a, a                                       ; $7c16: $7f
    ld b, b                                       ; $7c17: $40
    add b                                         ; $7c18: $80
    ld [bc], a                                    ; $7c19: $02
    nop                                           ; $7c1a: $00
    ld e, b                                       ; $7c1b: $58
    daa                                           ; $7c1c: $27

jr_0d7_7c1d:
    ld c, a                                       ; $7c1d: $4f
    nop                                           ; $7c1e: $00
    ld b, $00                                     ; $7c1f: $06 $00
    ld b, b                                       ; $7c21: $40
    rlca                                          ; $7c22: $07
    ld [bc], a                                    ; $7c23: $02
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    rrca                                          ; $7c26: $0f
    ld b, $3f                                     ; $7c27: $06 $3f
    ld d, b                                       ; $7c29: $50
    ccf                                           ; $7c2a: $3f
    nop                                           ; $7c2b: $00
    jr nc, jr_0d7_7c2e                            ; $7c2c: $30 $00

jr_0d7_7c2e:
    jr c, jr_0d7_7bf0                             ; $7c2e: $38 $c0

jr_0d7_7c30:
    sbc b                                         ; $7c30: $98
    ldh [$d0], a                                  ; $7c31: $e0 $d0
    rst $28                                       ; $7c33: $ef
    nop                                           ; $7c34: $00
    ld h, [hl]                                    ; $7c35: $66
    rst $38                                       ; $7c36: $ff
    ld a, l                                       ; $7c37: $7d
    rst $38                                       ; $7c38: $ff
    ret c                                         ; $7c39: $d8

    rst $38                                       ; $7c3a: $ff
    ld [hl], $f9                                  ; $7c3b: $36 $f9
    nop                                           ; $7c3d: $00
    pop bc                                        ; $7c3e: $c1
    rst $38                                       ; $7c3f: $ff
    ld d, [hl]                                    ; $7c40: $56
    rst $38                                       ; $7c41: $ff
    ld sp, $18ff                                  ; $7c42: $31 $ff $18
    rst $38                                       ; $7c45: $ff
    nop                                           ; $7c46: $00
    add $39                                       ; $7c47: $c6 $39
    xor b                                         ; $7c49: $a8
    stop                                          ; $7c4a: $10 $00
    sbc $88                                       ; $7c4c: $de $88
    ld a, a                                       ; $7c4e: $7f
    add b                                         ; $7c4f: $80
    ret nz                                        ; $7c50: $c0

    ld [$e010], sp                                ; $7c51: $08 $10 $e0
    add b                                         ; $7c54: $80
    ldh a, [$c8]                                  ; $7c55: $f0 $c8
    ldh a, [$a8]                                  ; $7c57: $f0 $a8
    nop                                           ; $7c59: $00
    ldh a, [$50]                                  ; $7c5a: $f0 $50
    ldh [$c0], a                                  ; $7c5c: $e0 $c0
    ldh [rP1], a                                  ; $7c5e: $e0 $00
    ldh [$e0], a                                  ; $7c60: $e0 $e0
    nop                                           ; $7c62: $00

Jump_0d7_7c63:
    nop                                           ; $7c63: $00
    sub d                                         ; $7c64: $92
    ld a, h                                       ; $7c65: $7c
    ld c, h                                       ; $7c66: $4c
    rst $38                                       ; $7c67: $ff
    halt                                          ; $7c68: $76
    rst $08                                       ; $7c69: $cf
    adc d                                         ; $7c6a: $8a
    nop                                           ; $7c6b: $00
    rst $38                                       ; $7c6c: $ff
    ld l, l                                       ; $7c6d: $6d
    cp $88                                        ; $7c6e: $fe $88
    or $00                                        ; $7c70: $f6 $00
    nop                                           ; $7c72: $00
    add b                                         ; $7c73: $80
    nop                                           ; $7c74: $00
    ld a, a                                       ; $7c75: $7f
    adc b                                         ; $7c76: $88
    ld a, a                                       ; $7c77: $7f
    ld b, c                                       ; $7c78: $41
    ld a, $20                                     ; $7c79: $3e $20
    rra                                           ; $7c7b: $1f
    inc e                                         ; $7c7c: $1c
    nop                                           ; $7c7d: $00
    inc bc                                        ; $7c7e: $03
    nop                                           ; $7c7f: $00
    ld [bc], a                                    ; $7c80: $02
    nop                                           ; $7c81: $00
    jr c, jr_0d7_7cd7                             ; $7c82: $38 $53

    inc a                                         ; $7c84: $3c
    adc c                                         ; $7c85: $89
    ld bc, $997e                                  ; $7c86: $01 $7e $99

jr_0d7_7c89:
    ld a, [hl]                                    ; $7c89: $7e
    ld b, d                                       ; $7c8a: $42
    inc a                                         ; $7c8b: $3c
    ld b, h                                       ; $7c8c: $44
    jr c, jr_0d7_7c1d                             ; $7c8d: $38 $8e

    jr jr_0d7_7c91                                ; $7c8f: $18 $00

jr_0d7_7c91:
    dec b                                         ; $7c91: $05
    rst $38                                       ; $7c92: $ff
    jp c, Jump_0d7_42ff                           ; $7c93: $da $ff $42

    cp a                                          ; $7c96: $bf
    xor l                                         ; $7c97: $ad
    ld a, a                                       ; $7c98: $7f
    nop                                           ; $7c99: $00
    sub a                                         ; $7c9a: $97
    ld a, a                                       ; $7c9b: $7f
    ld b, d                                       ; $7c9c: $42
    ccf                                           ; $7c9d: $3f
    ld b, c                                       ; $7c9e: $41
    ccf                                           ; $7c9f: $3f
    ld [$011f], a                                 ; $7ca0: $ea $1f $01
    ldh [$1f], a                                  ; $7ca3: $e0 $1f
    ld [hl], b                                    ; $7ca5: $70
    rlca                                          ; $7ca6: $07
    ld a, [hl-]                                   ; $7ca7: $3a
    ld bc, $841f                                  ; $7ca8: $01 $1f $84
    nop                                           ; $7cab: $00
    add b                                         ; $7cac: $80
    adc l                                         ; $7cad: $8d
    ld e, c                                       ; $7cae: $59
    ld [bc], a                                    ; $7caf: $02
    db $e4                                        ; $7cb0: $e4
    inc h                                         ; $7cb1: $24
    ret nz                                        ; $7cb2: $c0

    sub b                                         ; $7cb3: $90
    ldh [$c0], a                                  ; $7cb4: $e0 $c0
    nop                                           ; $7cb6: $00
    db $fc                                        ; $7cb7: $fc
    sbc b                                         ; $7cb8: $98
    cp $51                                        ; $7cb9: $fe $51
    cp $2d                                        ; $7cbb: $fe $2d
    cp $99                                        ; $7cbd: $fe $99
    nop                                           ; $7cbf: $00
    ld a, [hl]                                    ; $7cc0: $7e
    ld [hl+], a                                   ; $7cc1: $22
    ld a, h                                       ; $7cc2: $7c
    ld b, b                                       ; $7cc3: $40
    jr c, jr_0d7_7cfe                             ; $7cc4: $38 $38

    nop                                           ; $7cc6: $00
    jr nz, jr_0d7_7c89                            ; $7cc7: $20 $c0

    cp [hl]                                       ; $7cc9: $be
    ld b, c                                       ; $7cca: $41
    and l                                         ; $7ccb: $a5
    sbc c                                         ; $7ccc: $99
    sub d                                         ; $7ccd: $92
    nop                                           ; $7cce: $00
    inc c                                         ; $7ccf: $0c
    nop                                           ; $7cd0: $00
    ld e, $00                                     ; $7cd1: $1e $00
    inc [hl]                                      ; $7cd3: $34
    nop                                           ; $7cd4: $00
    ld c, h                                       ; $7cd5: $4c
    nop                                           ; $7cd6: $00

jr_0d7_7cd7:
    ld h, h                                       ; $7cd7: $64
    nop                                           ; $7cd8: $00
    ld a, [hl]                                    ; $7cd9: $7e
    nop                                           ; $7cda: $00
    ld b, $00                                     ; $7cdb: $06 $00
    or $09                                        ; $7cdd: $f6 $09
    ld hl, sp+$05                                 ; $7cdf: $f8 $05
    or $f1                                        ; $7ce1: $f6 $f1
    rst $30                                       ; $7ce3: $f7
    ld sp, hl                                     ; $7ce4: $f9
    rst $30                                       ; $7ce5: $f7
    nop                                           ; $7ce6: $00
    cp $08                                        ; $7ce7: $fe $08
    ld b, $fc                                     ; $7ce9: $06 $fc
    ld b, $fe                                     ; $7ceb: $06 $fe
    ld [$f60c], sp                                ; $7ced: $08 $0c $f6
    add hl, bc                                    ; $7cf0: $09
    ld hl, sp+$05                                 ; $7cf1: $f8 $05
    di                                            ; $7cf3: $f3
    db $ed                                        ; $7cf4: $ed
    ld hl, sp-$0b                                 ; $7cf5: $f8 $f5
    ld hl, sp-$09                                 ; $7cf7: $f8 $f7
    di                                            ; $7cf9: $f3
    rlca                                          ; $7cfa: $07
    ld a, [$030f]                                 ; $7cfb: $fa $0f $03

jr_0d7_7cfe:
    db $ed                                        ; $7cfe: $ed
    inc bc                                        ; $7cff: $03
    or $03                                        ; $7d00: $f6 $03
    inc bc                                        ; $7d02: $03
    add hl, bc                                    ; $7d03: $09
    inc e                                         ; $7d04: $1c
    or $09                                        ; $7d05: $f6 $09
    ld hl, sp+$05                                 ; $7d07: $f8 $05
    rst $30                                       ; $7d09: $f7
    jp hl                                         ; $7d0a: $e9


    rlca                                          ; $7d0b: $07
    jp hl                                         ; $7d0c: $e9


    inc b                                         ; $7d0d: $04
    pop af                                        ; $7d0e: $f1
    cp $f9                                        ; $7d0f: $fe $f9
    ld c, $f9                                     ; $7d11: $0e $f9
    dec b                                         ; $7d13: $05
    ld bc, $09f9                                  ; $7d14: $01 $f9 $09
    add hl, bc                                    ; $7d17: $09
    add hl, bc                                    ; $7d18: $09
    rst $38                                       ; $7d19: $ff
    ld de, $2e09                                  ; $7d1a: $11 $09 $2e
    or $09                                        ; $7d1d: $f6 $09
    ld hl, sp+$05                                 ; $7d1f: $f8 $05
    cp $e8                                        ; $7d21: $fe $e8
    db $fd                                        ; $7d23: $fd
    ldh a, [$03]                                  ; $7d24: $f0 $03
    push af                                       ; $7d26: $f5
    db $fd                                        ; $7d27: $fd
    ld [$1305], sp                                ; $7d28: $08 $05 $13
    dec c                                         ; $7d2b: $0d
    add sp, $0d                                   ; $7d2c: $e8 $0d
    db $f4                                        ; $7d2e: $f4
    dec c                                         ; $7d2f: $0d
    rst $30                                       ; $7d30: $f7
    dec c                                         ; $7d31: $0d
    rlca                                          ; $7d32: $07
    ld a, [bc]                                    ; $7d33: $0a
    ld b, b                                       ; $7d34: $40
    or $09                                        ; $7d35: $f6 $09
    ld hl, sp+$05                                 ; $7d37: $f8 $05
    ld [bc], a                                    ; $7d39: $02
    db $eb                                        ; $7d3a: $eb
    inc c                                         ; $7d3b: $0c
    di                                            ; $7d3c: $f3
    add hl, bc                                    ; $7d3d: $09
    rst $30                                       ; $7d3e: $f7
    ld [bc], a                                    ; $7d3f: $02
    ld [$1001], sp                                ; $7d40: $08 $01 $10
    dec c                                         ; $7d43: $0d
    ld de, $eb11                                  ; $7d44: $11 $11 $eb
    ld de, $11f4                                  ; $7d47: $11 $f4 $11
    ld b, $11                                     ; $7d4a: $06 $11
    rlca                                          ; $7d4c: $07
    rlca                                          ; $7d4d: $07
    ld d, h                                       ; $7d4e: $54
    or $09                                        ; $7d4f: $f6 $09
    ld hl, sp+$05                                 ; $7d51: $f8 $05
    rlca                                          ; $7d53: $07
    jp hl                                         ; $7d54: $e9


    ld c, $f5                                     ; $7d55: $0e $f5
    rlca                                          ; $7d57: $07
    ld [$1310], sp                                ; $7d58: $08 $10 $13
    rla                                           ; $7d5b: $17
    jp hl                                         ; $7d5c: $e9


    rla                                           ; $7d5d: $17
    or $17                                        ; $7d5e: $f6 $17
    ld b, $20                                     ; $7d60: $06 $20
    ld b, $62                                     ; $7d62: $06 $62
    ld bc, $0100                                  ; $7d64: $01 $00 $01
    ld [bc], a                                    ; $7d67: $02
    ld [bc], a                                    ; $7d68: $02
    rlca                                          ; $7d69: $07
    rlca                                          ; $7d6a: $07
    inc bc                                        ; $7d6b: $03
    nop                                           ; $7d6c: $00
    inc bc                                        ; $7d6d: $03
    ld b, b                                       ; $7d6e: $40
    nop                                           ; $7d6f: $00
    ld bc, $2020                                  ; $7d70: $01 $20 $20
    ld b, b                                       ; $7d73: $40
    ld d, b                                       ; $7d74: $50
    ldh a, [$f0]                                  ; $7d75: $f0 $f0
    ld h, b                                       ; $7d77: $60
    ld [hl+], a                                   ; $7d78: $22
    nop                                           ; $7d79: $00
    ld h, b                                       ; $7d7a: $60
    db $10                                        ; $7d7b: $10
    jr z, jr_0d7_7cfe                             ; $7d7c: $28 $80

    add b                                         ; $7d7e: $80
    add b                                         ; $7d7f: $80
    dec de                                        ; $7d80: $1b
    jr nz, jr_0d7_7d84                            ; $7d81: $20 $01

    dec b                                         ; $7d83: $05

jr_0d7_7d84:
    nop                                           ; $7d84: $00
    inc bc                                        ; $7d85: $03
    ld bc, $4120                                  ; $7d86: $01 $20 $41
    ld e, $10                                     ; $7d89: $1e $10
    jr nz, jr_0d7_7db9                            ; $7d8b: $20 $2c

    jr nz, jr_0d7_7d8f                            ; $7d8d: $20 $00

jr_0d7_7d8f:
    db $10                                        ; $7d8f: $10
    ld [hl-], a                                   ; $7d90: $32
    ld e, $08                                     ; $7d91: $1e $08

jr_0d7_7d93:
    inc b                                         ; $7d93: $04
    inc b                                         ; $7d94: $04
    ld e, $1e                                     ; $7d95: $1e $1e
    db $10                                        ; $7d97: $10
    inc c                                         ; $7d98: $0c
    nop                                           ; $7d99: $00
    inc c                                         ; $7d9a: $0c
    dec d                                         ; $7d9b: $15
    nop                                           ; $7d9c: $00
    ld [hl], b                                    ; $7d9d: $70
    ld [hl], b                                    ; $7d9e: $70
    ld b, b                                       ; $7d9f: $40
    ld b, $04                                     ; $7da0: $06 $04
    ld b, b                                       ; $7da2: $40
    ld a, [bc]                                    ; $7da3: $0a
    rlca                                          ; $7da4: $07
    rlca                                          ; $7da5: $07
    inc b                                         ; $7da6: $04
    ld c, h                                       ; $7da7: $4c
    jr jr_0d7_7db2                                ; $7da8: $18 $08

    inc b                                         ; $7daa: $04

jr_0d7_7dab:
    nop                                           ; $7dab: $00
    ld d, $1e                                     ; $7dac: $16 $1e
    ld e, $2c                                     ; $7dae: $1e $2c
    ld a, [bc]                                    ; $7db0: $0a
    inc b                                         ; $7db1: $04

jr_0d7_7db2:
    inc b                                         ; $7db2: $04
    rra                                           ; $7db3: $1f
    ld [hl], e                                    ; $7db4: $73
    rra                                           ; $7db5: $1f
    jr nz, jr_0d7_7db8                            ; $7db6: $20 $00

jr_0d7_7db8:
    ld h, b                                       ; $7db8: $60

jr_0d7_7db9:
    jr z, jr_0d7_7dc3                             ; $7db9: $28 $08

    ld a, b                                       ; $7dbb: $78
    ldh a, [$61]                                  ; $7dbc: $f0 $61
    inc e                                         ; $7dbe: $1c
    cp b                                          ; $7dbf: $b8
    sub [hl]                                      ; $7dc0: $96
    db $10                                        ; $7dc1: $10
    ret nz                                        ; $7dc2: $c0

jr_0d7_7dc3:
    sbc h                                         ; $7dc3: $9c
    jr nc, jr_0d7_7e0a                            ; $7dc4: $30 $44

    adc b                                         ; $7dc6: $88
    db $10                                        ; $7dc7: $10
    jr nz, jr_0d7_7df2                            ; $7dc8: $20 $28

    ld a, b                                       ; $7dca: $78
    ld [hl], b                                    ; $7dcb: $70
    jr c, jr_0d7_7e0a                             ; $7dcc: $38 $3c

    jr nz, jr_0d7_7de0                            ; $7dce: $20 $10

    ld h, b                                       ; $7dd0: $60
    adc b                                         ; $7dd1: $88
    call z, $e008                                 ; $7dd2: $cc $08 $e0
    jr nz, jr_0d7_7ded                            ; $7dd5: $20 $16

    ld h, b                                       ; $7dd7: $60
    ldh a, [$60]                                  ; $7dd8: $f0 $60
    ld hl, $4020                                  ; $7dda: $21 $20 $40
    ld a, [c]                                     ; $7ddd: $f2
    jr jr_0d7_7de2                                ; $7dde: $18 $02

jr_0d7_7de0:
    nop                                           ; $7de0: $00
    inc bc                                        ; $7de1: $03

jr_0d7_7de2:
    inc bc                                        ; $7de2: $03
    ld h, c                                       ; $7de3: $61
    ret z                                         ; $7de4: $c8

    nop                                           ; $7de5: $00
    ld [bc], a                                    ; $7de6: $02
    inc b                                         ; $7de7: $04
    dec b                                         ; $7de8: $05
    rrca                                          ; $7de9: $0f
    rrca                                          ; $7dea: $0f
    ld b, $00                                     ; $7deb: $06 $00

jr_0d7_7ded:
    ld b, $80                                     ; $7ded: $06 $80
    ret nz                                        ; $7def: $c0

    adc b                                         ; $7df0: $88
    ld h, b                                       ; $7df1: $60

jr_0d7_7df2:
    nop                                           ; $7df2: $00
    and b                                         ; $7df3: $a0
    ld [hl], b                                    ; $7df4: $70
    ld b, $08                                     ; $7df5: $06 $08
    dec bc                                        ; $7df7: $0b
    di                                            ; $7df8: $f3
    ldh [$d0], a                                  ; $7df9: $e0 $d0
    ld c, h                                       ; $7dfb: $4c
    ld c, c                                       ; $7dfc: $49
    ld [$68f8], sp                                ; $7dfd: $08 $f8 $68
    ld de, $1306                                  ; $7e00: $11 $06 $13
    ld d, d                                       ; $7e03: $52
    add hl, bc                                    ; $7e04: $09
    sub c                                         ; $7e05: $91
    ld hl, $4ec0                                  ; $7e06: $21 $c0 $4e
    add hl, hl                                    ; $7e09: $29

jr_0d7_7e0a:
    and b                                         ; $7e0a: $a0
    add hl, bc                                    ; $7e0b: $09
    jr @+$22                                      ; $7e0c: $18 $20

    inc l                                         ; $7e0e: $2c
    ld a, h                                       ; $7e0f: $7c
    ld a, b                                       ; $7e10: $78
    jr nc, jr_0d7_7d93                            ; $7e11: $30 $80

    db $ec                                        ; $7e13: $ec
    ld e, b                                       ; $7e14: $58
    jr nz, @+$12                                  ; $7e15: $20 $10

    jr nz, jr_0d7_7e31                            ; $7e17: $20 $18

    jr nc, @+$1e                                  ; $7e19: $30 $1c

    inc e                                         ; $7e1b: $1c
    jr nz, @+$10                                  ; $7e1c: $20 $0e

    ld c, $c0                                     ; $7e1e: $0e $c0
    or b                                          ; $7e20: $b0
    ld a, [bc]                                    ; $7e21: $0a
    inc b                                         ; $7e22: $04
    ld b, $1c                                     ; $7e23: $06 $1c
    inc a                                         ; $7e25: $3c
    jr nz, @+$3a                                  ; $7e26: $20 $38

    jr c, jr_0d7_7dab                             ; $7e28: $38 $81

    and c                                         ; $7e2a: $a1
    jr nz, jr_0d7_7e3d                            ; $7e2b: $20 $10

    jr z, jr_0d7_7e3f                             ; $7e2d: $28 $10

    jr nc, jr_0d7_7e51                            ; $7e2f: $30 $20

jr_0d7_7e31:
    inc e                                         ; $7e31: $1c
    ld e, $40                                     ; $7e32: $1e $40
    ld [hl], b                                    ; $7e34: $70
    ld [bc], a                                    ; $7e35: $02
    ld bc, $0103                                  ; $7e36: $01 $03 $01
    ld bc, $c6c1                                  ; $7e39: $01 $c1 $c6
    add hl, bc                                    ; $7e3c: $09

jr_0d7_7e3d:
    jr nz, jr_0d7_7e3f                            ; $7e3d: $20 $00

jr_0d7_7e3f:
    jr @+$72                                      ; $7e3f: $18 $70

    ldh a, [$e0]                                  ; $7e41: $f0 $e0
    ldh [$a5], a                                  ; $7e43: $e0 $a5
    ret                                           ; $7e45: $c9


    inc bc                                        ; $7e46: $03
    add b                                         ; $7e47: $80
    nop                                           ; $7e48: $00
    ret nz                                        ; $7e49: $c0

    ldh [$f0], a                                  ; $7e4a: $e0 $f0
    ld [hl], b                                    ; $7e4c: $70
    add hl, hl                                    ; $7e4d: $29
    ld a, [hl+]                                   ; $7e4e: $2a
    adc $58                                       ; $7e4f: $ce $58

jr_0d7_7e51:
    ret nz                                        ; $7e51: $c0

    ld [bc], a                                    ; $7e52: $02
    db $10                                        ; $7e53: $10
    sbc d                                         ; $7e54: $9a
    ld [hl], c                                    ; $7e55: $71
    inc e                                         ; $7e56: $1c
    jr nc, jr_0d7_7e77                            ; $7e57: $30 $1e

    dec e                                         ; $7e59: $1d
    rrca                                          ; $7e5a: $0f
    rlca                                          ; $7e5b: $07
    add c                                         ; $7e5c: $81
    ld d, [hl]                                    ; $7e5d: $56
    ld bc, $0e01                                  ; $7e5e: $01 $01 $0e
    dec hl                                        ; $7e61: $2b
    ld a, $3e                                     ; $7e62: $3e $3e
    inc e                                         ; $7e64: $1c
    ld d, h                                       ; $7e65: $54
    sbc b                                         ; $7e66: $98
    rlca                                          ; $7e67: $07
    add b                                         ; $7e68: $80
    ldh [$e0], a                                  ; $7e69: $e0 $e0
    ld [hl], b                                    ; $7e6b: $70

jr_0d7_7e6c:
    ld [hl], b                                    ; $7e6c: $70
    ld l, l                                       ; $7e6d: $6d
    ld a, b                                       ; $7e6e: $78
    sub d                                         ; $7e6f: $92
    ld [hl-], a                                   ; $7e70: $32
    nop                                           ; $7e71: $00
    ld [de], a                                    ; $7e72: $12
    nop                                           ; $7e73: $00
    ld [$0c10], sp                                ; $7e74: $08 $10 $0c

jr_0d7_7e77:
    jr jr_0d7_7e87                                ; $7e77: $18 $0e

    ld c, $07                                     ; $7e79: $0e $07
    rlca                                          ; $7e7b: $07
    ret nc                                        ; $7e7c: $d0

    ld c, [hl]                                    ; $7e7d: $4e
    xor c                                         ; $7e7e: $a9
    ld b, b                                       ; $7e7f: $40
    ld [bc], a                                    ; $7e80: $02
    rlca                                          ; $7e81: $07
    ld e, $a0                                     ; $7e82: $1e $a0
    add b                                         ; $7e84: $80
    ld [hl], b                                    ; $7e85: $70
    ret nz                                        ; $7e86: $c0

jr_0d7_7e87:
    ld a, b                                       ; $7e87: $78
    rlca                                          ; $7e88: $07
    ld b, b                                       ; $7e89: $40
    add b                                         ; $7e8a: $80
    ld b, b                                       ; $7e8b: $40
    add b                                         ; $7e8c: $80
    ret nz                                        ; $7e8d: $c0

    ld d, d                                       ; $7e8e: $52
    ld d, b                                       ; $7e8f: $50
    adc l                                         ; $7e90: $8d
    ld e, c                                       ; $7e91: $59
    ld h, b                                       ; $7e92: $60
    ld l, b                                       ; $7e93: $68
    ld l, [hl]                                    ; $7e94: $6e
    ld [$0112], sp                                ; $7e95: $08 $12 $01
    db $10                                        ; $7e98: $10
    add hl, bc                                    ; $7e99: $09
    ret nz                                        ; $7e9a: $c0

    inc b                                         ; $7e9b: $04
    dec hl                                        ; $7e9c: $2b
    ld a, [hl]                                    ; $7e9d: $7e
    pop bc                                        ; $7e9e: $c1
    call c, $0108                                 ; $7e9f: $dc $08 $01
    ld bc, $0502                                  ; $7ea2: $01 $02 $05
    ld [bc], a                                    ; $7ea5: $02
    inc bc                                        ; $7ea6: $03
    ld c, $1e                                     ; $7ea7: $0e $1e
    inc e                                         ; $7ea9: $1c
    db $e3                                        ; $7eaa: $e3
    adc b                                         ; $7eab: $88
    add a                                         ; $7eac: $87
    ld [hl], h                                    ; $7ead: $74
    dec de                                        ; $7eae: $1b
    halt                                          ; $7eaf: $76
    ld a, $1e                                     ; $7eb0: $3e $1e
    jr jr_0d7_7eb6                                ; $7eb2: $18 $02

    db $d3                                        ; $7eb4: $d3
    sbc [hl]                                      ; $7eb5: $9e

jr_0d7_7eb6:
    ld l, b                                       ; $7eb6: $68
    adc c                                         ; $7eb7: $89
    inc bc                                        ; $7eb8: $03
    ld h, d                                       ; $7eb9: $62
    dec b                                         ; $7eba: $05
    call nc, $4062                                ; $7ebb: $d4 $62 $40
    ld e, d                                       ; $7ebe: $5a
    inc bc                                        ; $7ebf: $03
    ld b, $06                                     ; $7ec0: $06 $06
    ld [hl], $32                                  ; $7ec2: $36 $32
    rra                                           ; $7ec4: $1f
    add b                                         ; $7ec5: $80
    add hl, de                                    ; $7ec6: $19
    ld l, d                                       ; $7ec7: $6a
    ld [$180c], sp                                ; $7ec8: $08 $0c $18
    inc c                                         ; $7ecb: $0c
    jr c, @+$7a                                   ; $7ecc: $38 $78

    ldh a, [$c2]                                  ; $7ece: $f0 $c2
    ld e, b                                       ; $7ed0: $58
    add hl, hl                                    ; $7ed1: $29
    rst $38                                       ; $7ed2: $ff

jr_0d7_7ed3:
    nop                                           ; $7ed3: $00
    ld h, b                                       ; $7ed4: $60
    ret nz                                        ; $7ed5: $c0

    ld [hl], b                                    ; $7ed6: $70
    ld [hl], b                                    ; $7ed7: $70
    jr nz, jr_0d7_7e6c                            ; $7ed8: $20 $92

    ld [$100c], sp                                ; $7eda: $08 $0c $10
    add hl, hl                                    ; $7edd: $29
    db $10                                        ; $7ede: $10
    ld bc, $1206                                  ; $7edf: $01 $06 $12
    db $e3                                        ; $7ee2: $e3
    add hl, bc                                    ; $7ee3: $09
    ld b, b                                       ; $7ee4: $40
    add b                                         ; $7ee5: $80
    sub d                                         ; $7ee6: $92
    sub b                                         ; $7ee7: $90
    ld a, c                                       ; $7ee8: $79
    inc c                                         ; $7ee9: $0c

jr_0d7_7eea:
    nop                                           ; $7eea: $00
    ldh [rNR23], a                                ; $7eeb: $e0 $18
    ld c, $0c                                     ; $7eed: $0e $0c
    pop hl                                        ; $7eef: $e1
    xor e                                         ; $7ef0: $ab
    ld [bc], a                                    ; $7ef1: $02
    inc bc                                        ; $7ef2: $03
    ld bc, $0305                                  ; $7ef3: $01 $05 $03
    rlca                                          ; $7ef6: $07
    ld c, $08                                     ; $7ef7: $0e $08
    ld b, b                                       ; $7ef9: $40
    add e                                         ; $7efa: $83
    ld a, [hl]                                    ; $7efb: $7e
    add hl, bc                                    ; $7efc: $09
    jr nc, @+$78                                  ; $7efd: $30 $76

    ld a, $de                                     ; $7eff: $3e $de
    ld [$5a39], sp                                ; $7f01: $08 $39 $5a
    ld [$0804], sp                                ; $7f04: $08 $04 $08
    ld b, $7b                                     ; $7f07: $06 $7b
    inc c                                         ; $7f09: $0c
    sub h                                         ; $7f0a: $94
    inc b                                         ; $7f0b: $04
    sub e                                         ; $7f0c: $93
    inc h                                         ; $7f0d: $24
    add b                                         ; $7f0e: $80
    jr nz, jr_0d7_7f51                            ; $7f0f: $20 $40

    cp h                                          ; $7f11: $bc
    add hl, de                                    ; $7f12: $19
    sbc [hl]                                      ; $7f13: $9e
    ld [$847b], a                                 ; $7f14: $ea $7b $84
    ld c, $0c                                     ; $7f17: $0e $0c
    jr jr_0d7_7f2f                                ; $7f19: $18 $14

    ld c, $aa                                     ; $7f1b: $0e $aa
    inc b                                         ; $7f1d: $04
    ld h, d                                       ; $7f1e: $62
    dec de                                        ; $7f1f: $1b
    call c, $8073                                 ; $7f20: $dc $73 $80
    inc bc                                        ; $7f23: $03
    ld b, b                                       ; $7f24: $40
    and b                                         ; $7f25: $a0
    ld b, b                                       ; $7f26: $40
    ret nc                                        ; $7f27: $d0

    ld h, b                                       ; $7f28: $60
    ld a, b                                       ; $7f29: $78
    inc [hl]                                      ; $7f2a: $34
    inc hl                                        ; $7f2b: $23
    add b                                         ; $7f2c: $80
    ret c                                         ; $7f2d: $d8

    inc bc                                        ; $7f2e: $03

jr_0d7_7f2f:
    ld bc, $0702                                  ; $7f2f: $01 $02 $07
    ld [bc], a                                    ; $7f32: $02
    dec bc                                        ; $7f33: $0b
    ld b, $e0                                     ; $7f34: $06 $e0
    sbc c                                         ; $7f36: $99
    ld e, h                                       ; $7f37: $5c
    add hl, bc                                    ; $7f38: $09
    add c                                         ; $7f39: $81
    and b                                         ; $7f3a: $a0
    ld h, d                                       ; $7f3b: $62
    inc c                                         ; $7f3c: $0c
    inc c                                         ; $7f3d: $0c
    jr @+$2e                                      ; $7f3e: $18 $2c

    jr jr_0d7_7fba                                ; $7f40: $18 $78

    sub $42                                       ; $7f42: $d6 $42
    ld a, a                                       ; $7f44: $7f
    jr jr_0d7_7ed3                                ; $7f45: $18 $8c

    ld d, b                                       ; $7f47: $50
    ld e, b                                       ; $7f48: $58
    ld c, b                                       ; $7f49: $48
    jr c, jr_0d7_7f66                             ; $7f4a: $38 $1a

    ld b, b                                       ; $7f4c: $40
    ld [$a9bc], a                                 ; $7f4d: $ea $bc $a9
    ld h, h                                       ; $7f50: $64

jr_0d7_7f51:
    db $e4                                        ; $7f51: $e4
    halt                                          ; $7f52: $76
    inc sp                                        ; $7f53: $33
    ret nz                                        ; $7f54: $c0

    jr c, jr_0d7_7eea                             ; $7f55: $38 $93

    and [hl]                                      ; $7f57: $a6
    ld b, b                                       ; $7f58: $40
    jr nz, jr_0d7_7f5b                            ; $7f59: $20 $00

jr_0d7_7f5b:
    ld b, $00                                     ; $7f5b: $06 $00
    stop                                          ; $7f5d: $10 $00
    jr jr_0d7_7f61                                ; $7f5f: $18 $00

jr_0d7_7f61:
    ld [bc], a                                    ; $7f61: $02
    nop                                           ; $7f62: $00
    db $fc                                        ; $7f63: $fc
    inc bc                                        ; $7f64: $03
    db $f4                                        ; $7f65: $f4

jr_0d7_7f66:
    nop                                           ; $7f66: $00
    rst $30                                       ; $7f67: $f7
    ld hl, sp-$09                                 ; $7f68: $f8 $f7
    rst $38                                       ; $7f6a: $ff
    ld bc, $fc04                                  ; $7f6b: $01 $04 $fc
    inc bc                                        ; $7f6e: $03
    db $f4                                        ; $7f6f: $f4
    nop                                           ; $7f70: $00
    db $f4                                        ; $7f71: $f4
    db $fc                                        ; $7f72: $fc
    ld bc, $fc06                                  ; $7f73: $01 $06 $fc
    inc bc                                        ; $7f76: $03
    db $f4                                        ; $7f77: $f4
    nop                                           ; $7f78: $00
    ld hl, sp-$05                                 ; $7f79: $f8 $fb
    add b                                         ; $7f7b: $80
    nop                                           ; $7f7c: $00
    ld c, h                                       ; $7f7d: $4c
    nop                                           ; $7f7e: $00
    ld b, b                                       ; $7f7f: $40
    nop                                           ; $7f80: $00
    ld bc, $1c00                                  ; $7f81: $01 $00 $1c
    nop                                           ; $7f84: $00
    ld [hl+], a                                   ; $7f85: $22
    inc e                                         ; $7f86: $1c
    add hl, hl                                    ; $7f87: $29
    ld d, $00                                     ; $7f88: $16 $00
    dec b                                         ; $7f8a: $05
    ld [bc], a                                    ; $7f8b: $02
    inc [hl]                                      ; $7f8c: $34
    inc bc                                        ; $7f8d: $03
    call z, $8133                                 ; $7f8e: $cc $33 $81
    ld e, [hl]                                    ; $7f91: $5e
    inc [hl]                                      ; $7f92: $34
    adc c                                         ; $7f93: $89
    ld d, $14                                     ; $7f94: $16 $14
    ld [$2804], sp                                ; $7f96: $08 $04 $28
    ld [$0002], sp                                ; $7f99: $08 $02 $00
    jr jr_0d7_7f9e                                ; $7f9c: $18 $00

jr_0d7_7f9e:
    nop                                           ; $7f9e: $00
    inc d                                         ; $7f9f: $14
    ld [$0a34], sp                                ; $7fa0: $08 $34 $0a
    jr nc, jr_0d7_7fb1                            ; $7fa3: $30 $0c

    jr nz, @+$5f                                  ; $7fa5: $20 $5d

    ld [bc], a                                    ; $7fa7: $02
    ld l, e                                       ; $7fa8: $6b
    inc d                                         ; $7fa9: $14
    inc d                                         ; $7faa: $14
    ld l, b                                       ; $7fab: $68
    dec b                                         ; $7fac: $05
    ld a, b                                       ; $7fad: $78
    jr nz, @+$5a                                  ; $7fae: $20 $58

    inc d                                         ; $7fb0: $14

jr_0d7_7fb1:
    jr nz, @+$0a                                  ; $7fb1: $20 $08

    inc b                                         ; $7fb3: $04
    ld [bc], a                                    ; $7fb4: $02
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    inc b                                         ; $7fb7: $04
    ld h, $08                                     ; $7fb8: $26 $08

jr_0d7_7fba:
    ld b, $00                                     ; $7fba: $06 $00
    jr z, @+$26                                   ; $7fbc: $28 $24

    ld a, [de]                                    ; $7fbe: $1a
    nop                                           ; $7fbf: $00
    nop                                           ; $7fc0: $00
    add e                                         ; $7fc1: $83
    ld c, h                                       ; $7fc2: $4c
    adc h                                         ; $7fc3: $8c
    inc b                                         ; $7fc4: $04
    ld [de], a                                    ; $7fc5: $12
    ld b, $89                                     ; $7fc6: $06 $89
    add l                                         ; $7fc8: $85
    ld c, d                                       ; $7fc9: $4a
    ld b, [hl]                                    ; $7fca: $46
    jr z, jr_0d7_7fd1                             ; $7fcb: $28 $04

    nop                                           ; $7fcd: $00
    db $10                                        ; $7fce: $10
    ld a, [bc]                                    ; $7fcf: $0a
    inc b                                         ; $7fd0: $04

jr_0d7_7fd1:
    ld [bc], a                                    ; $7fd1: $02
    ld [bc], a                                    ; $7fd2: $02
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    ld [bc], a                                    ; $7fd5: $02
    inc de                                        ; $7fd6: $13
    inc b                                         ; $7fd7: $04
    jr nc, jr_0d7_7fdd                            ; $7fd8: $30 $03

    inc d                                         ; $7fda: $14
    ld e, h                                       ; $7fdb: $5c
    ld c, b                                       ; $7fdc: $48

jr_0d7_7fdd:
    ld a, h                                       ; $7fdd: $7c
    db $08                                        ; $7fde: $08

    db $0a, $00, $02, $00, $01, $00

    db $fc                                        ; $7fe5: $fc
    inc bc                                        ; $7fe6: $03
    db $fc                                        ; $7fe7: $fc
    inc bc                                        ; $7fe8: $03

    db $ff, $fd, $20, $00, $0e, $00, $00, $ff, $ff, $ff, $81, $7f, $43, $3e, $26, $04
    db $1c, $1c, $08, $08, $00, $01, $80
